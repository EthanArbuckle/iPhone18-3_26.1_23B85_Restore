uint64_t sub_1000AD338()
{
  v0 = sub_1000AD3A4();
  v4 = sub_1000AD3D8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000AD3D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1001AE0EC(v9, 0);
  v12 = sub_1000AD538(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000AD538(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_10009A610(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_10009A610(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000AD748(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_1000AD824(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1000AD824(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_10009A610(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_10009A610(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_10009A610(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_1000ADC80()
{
  result = qword_1002DB068;
  if (!qword_1002DB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB068);
  }

  return result;
}

void sub_1000ADD38()
{
  sub_1000A1F0C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000A1EBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000ADE54()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000ADF10()
{
  sub_1000ADF68();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1000ADF68()
{
  if (!qword_1002DB248)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DB248);
    }
  }
}

uint64_t sub_1000ADFB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496B736174 && a2 == 0xE600000000000000)
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

uint64_t sub_1000AE07C(char a1)
{
  if (a1)
  {
    return 0x44496B736174;
  }

  else
  {
    return 0x636E79537478656ELL;
  }
}

uint64_t sub_1000AE0B4(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TSDataSyncConfigSchedule(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000AE134(void *a1)
{
  v4 = v1;
  v6 = sub_100099DF4(&qword_1002DB298, &qword_100231A58);
  v7 = sub_100003724(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1000051B0();
  v12 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1000AEDEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_1000049FC();
  sub_1000AEDA4(v13, v14);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = (v4 + *(type metadata accessor for TSDataSyncConfigSchedule(0) + 20));
    v17 = *v15;
    v18 = v15[1];
    sub_1000AEE94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v3, v6);
}

uint64_t sub_1000AE2E8()
{
  type metadata accessor for Date();
  sub_1000049FC();
  sub_1000AEDA4(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v0 + *(type metadata accessor for TSDataSyncConfigSchedule(0) + 20));
  v4 = *v3;
  v5 = v3[1];

  return String.hash(into:)();
}

Swift::Int sub_1000AE378()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000049FC();
  sub_1000AEDA4(v1, v2);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v0 + *(type metadata accessor for TSDataSyncConfigSchedule(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000AE40C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = type metadata accessor for Date();
  v5 = sub_100003724(v29);
  v27 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  sub_1000051B0();
  v9 = sub_100099DF4(&qword_1002DB280, &qword_100231A50);
  v28 = sub_100003724(v9);
  v11 = *(v10 + 64);
  __chkstk_darwin(v28);
  v12 = type metadata accessor for TSDataSyncConfigSchedule(0);
  v13 = sub_10000307C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000306C();
  v18 = v17 - v16;
  v19 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1000AEDEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  LOBYTE(v30) = 0;
  sub_1000049FC();
  sub_1000AEDA4(v20, v21);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 32))(v18, v3, v29);
  sub_1000AEE40();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = sub_1000037A0();
  v23(v22);
  v24 = (v18 + *(v12 + 20));
  *v24 = v30;
  v24[1] = v31;
  sub_1000AEEE8(v18, a2, type metadata accessor for TSDataSyncConfigSchedule);
  sub_100004118(a1);
  return sub_1000AEFB0(v18, type metadata accessor for TSDataSyncConfigSchedule);
}

uint64_t sub_1000AE724(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = sub_100003724(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v13 = v12 - v11;
  v14 = type metadata accessor for TSDataSyncConfigScheduleAction(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_10000306C();
  sub_1000051B0();
  v16 = sub_100099DF4(&qword_1002DB2A8, &qword_100231A60);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v21 = *(v20 + 56);
  sub_1000AEEE8(a1, &v27 - v18, type metadata accessor for TSDataSyncConfigScheduleAction);
  sub_1000AEEE8(a2, &v19[v21], type metadata accessor for TSDataSyncConfigScheduleAction);
  sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  sub_1000075D8(v19);
  if (!v24)
  {
    sub_1000065A0();
    sub_1000AEEE8(v19, v2, v23);
    sub_1000075D8(&v19[v21]);
    if (!v24)
    {
      (*(v8 + 32))(v13, &v19[v21], v5);
      v22 = static Date.== infix(_:_:)();
      v25 = *(v8 + 8);
      v25(v13, v5);
      v25(v2, v5);
      sub_100007B44();
      return v22 & 1;
    }

    (*(v8 + 8))(v2, v5);
LABEL_9:
    sub_1000AEF48(v19);
    v22 = 0;
    return v22 & 1;
  }

  sub_1000075D8(&v19[v21]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_100007B44();
  v22 = 1;
  return v22 & 1;
}

void sub_1000AE970()
{
  v2 = type metadata accessor for Date();
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = type metadata accessor for TSDataSyncConfigScheduleAction(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10000306C();
  sub_1000051B0();
  sub_1000065A0();
  sub_1000AEEE8(v0, v1, v13);
  v14 = sub_100099DF4(&qword_1002DB1C0, &unk_100231900);
  if (sub_100004DFC(v1, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v10, v1, v2);
    Hasher._combine(_:)(1uLL);
    sub_1000049FC();
    sub_1000AEDA4(v15, v16);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v10, v2);
  }
}

Swift::Int sub_1000AEB04()
{
  Hasher.init(_seed:)();
  sub_1000AE970();
  return Hasher._finalize()();
}

uint64_t sub_1000AEB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ADFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000AEB74(uint64_t a1)
{
  v2 = sub_1000AEDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AEBB0(uint64_t a1)
{
  v2 = sub_1000AEDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000AEBF4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000AEDA4(&qword_1002DAC90, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000AECD4()
{
  Hasher.init(_seed:)();
  sub_1000AE970();
  return Hasher._finalize()();
}

uint64_t sub_1000AEDA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AEDEC()
{
  result = qword_1002DB288;
  if (!qword_1002DB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB288);
  }

  return result;
}

unint64_t sub_1000AEE40()
{
  result = qword_1002DB290;
  if (!qword_1002DB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB290);
  }

  return result;
}

unint64_t sub_1000AEE94()
{
  result = qword_1002DB2A0;
  if (!qword_1002DB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB2A0);
  }

  return result;
}

uint64_t sub_1000AEEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000307C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000AEF48(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DB2A8, &qword_100231A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AEFB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncConfigSchedule.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000AF0E8()
{
  result = qword_1002DB2B0;
  if (!qword_1002DB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB2B0);
  }

  return result;
}

unint64_t sub_1000AF140()
{
  result = qword_1002DB2B8;
  if (!qword_1002DB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB2B8);
  }

  return result;
}

unint64_t sub_1000AF198()
{
  result = qword_1002DB2C0;
  if (!qword_1002DB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB2C0);
  }

  return result;
}

void sub_1000AF1EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v261 = a4;
  v270 = a3;
  v263 = a2;
  v248 = a5;
  v8 = type metadata accessor for TSDataSyncDeviceState(0);
  v9 = sub_10000307C(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000308C();
  sub_1000B31C8();
  __chkstk_darwin(v12);
  sub_10000DE68();
  __chkstk_darwin(v13);
  sub_100002DD0();
  v257 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v258 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  sub_100002DD0();
  v246 = v18;
  sub_100005238();
  __chkstk_darwin(v19);
  sub_10000D478();
  v247 = v20;
  v21 = sub_100099DF4(&qword_1002DB2E8, &qword_100231B98);
  v22 = sub_1000030B8(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v244 - v25;
  v27 = type metadata accessor for HTTPHelpers.Errors();
  v28 = sub_100003724(v27);
  v271 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_10000308C();
  v268 = v32 - v33;
  sub_100005238();
  __chkstk_darwin(v34);
  sub_10000D478();
  v36 = v35;
  v37 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v38 = sub_1000030B8(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_10000308C();
  v269 = (v41 - v42);
  sub_100005238();
  __chkstk_darwin(v43);
  v267 = v8[6];
  v262 = &v244 - v44;
  sub_10003D178(v263 + v267, &v244 - v44, &qword_1002DA970, &qword_1002318B0);
  *&v295[0] = a1;
  v259 = a1;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if (swift_dynamicCast())
  {
    sub_100004E24(v262, &qword_1002DA970, &qword_1002318B0);
    sub_10000B7B0();
    sub_100002728(v45, v46, v47, v27);
    v48 = v271;
    v49 = *(v271 + 32);
    v49(v36, v26, v27);
    v50 = v268;
    v49(v268, v36, v27);
    if ((*(v48 + 88))(v50, v27) == enum case for HTTPHelpers.Errors.httpStatus429(_:))
    {
      (*(v271 + 96))(v50, v27);
      v51 = type metadata accessor for Date();
      sub_10000307C(v51);
      v53 = v262;
      (*(v52 + 32))(v262, v50, v51);
      sub_10000B7B0();
      sub_100002728(v54, v55, v56, v51);
      v57 = v263;
    }

    else
    {
      v53 = v262;
      v57 = v263;
      sub_10003D178(v263 + v267, v262, &qword_1002DA970, &qword_1002318B0);
      (*(v271 + 8))(v50, v27);
    }
  }

  else
  {
    sub_100007B78();
    sub_100002728(v58, v59, v60, v27);
    sub_100004E24(v26, &qword_1002DB2E8, &qword_100231B98);
    v53 = v262;
    v57 = v263;
  }

  v61 = v261;
  v265 = *(v57 + v8[17]);

  if (static HTTPHelpers.isAuthError(error:)())
  {
    v62 = type metadata accessor for Date();
    sub_10000307C(v62);
    v64 = v269;
    (*(v63 + 16))(v269, v61, v62);
    sub_10000B7B0();
    sub_100002728(v65, v66, v67, v62);
    v245 = sub_1000B1018(v265, v270, v64);
    sub_100004E24(v64, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
  }

  v68 = v57[1];
  v267 = *v57;
  v270 = v57[2];
  v271 = v68;
  v256 = v8[6];
  sub_10003D178(v53, v6 + v256, &qword_1002DA970, &qword_1002318B0);
  v69 = v8[7];
  v266 = type metadata accessor for Date();
  sub_10000307C(v266);
  v71 = *(v70 + 16);
  v268 = v70 + 16;
  v269 = v71;
  (v71)(v6 + v69, v57 + v69);
  v253 = v8[8];
  sub_10003D178(v57 + v253, v6 + v253, &qword_1002DA970, &qword_1002318B0);
  v252 = v8[9];
  sub_10003D178(v57 + v252, v6 + v252, &qword_1002DA970, &qword_1002318B0);
  v72 = v8[11];
  v260 = *(v57 + v8[10]);
  v73 = v260;
  v74 = *(v57 + v72);
  v75 = v8[13];
  v264 = *(v57 + v8[12]);
  v76 = v264;
  v77 = *(v57 + v75);
  v78 = v8[14];
  v251 = v8[15];
  v79 = *(v57 + v78);
  sub_10003D178(v57 + v251, v6 + v251, &qword_1002DA970, &qword_1002318B0);
  sub_10003D178(v57 + v8[16], v6 + v8[16], &qword_1002DA970, &qword_1002318B0);
  v80 = (v57 + v8[18]);
  v81 = v80[1];
  v82 = v80[3];
  v273 = v80[2];
  v83 = v273;
  v274 = v82;
  v84 = *v80;
  v85 = v80[1];
  v86 = v270;
  v87 = v271;
  *v6 = v267;
  v6[1] = v87;
  v6[2] = v86;
  *(v6 + v8[10]) = v73;
  *(v6 + v8[11]) = v74;
  *(v6 + v8[12]) = v76;
  *(v6 + v8[13]) = v77;
  *(v6 + v8[14]) = v79;
  v88 = *v80;
  v272[0] = v84;
  v272[1] = v85;
  v89 = v265;
  *(v6 + v8[17]) = v265;
  v90 = (v6 + v8[18]);
  *v90 = v88;
  v90[1] = v81;
  v91 = v80[3];
  v90[2] = v83;
  v90[3] = v91;
  v254 = v8[6];
  v92 = sub_100005260();
  sub_10003D178(v92, v93, v94, &qword_1002318B0);
  v255 = v8[7];
  (v269)(v255 + v5, v261, v266);
  v95 = v8[8];
  v96 = sub_100005260();
  sub_10003D178(v96, v97, v98, &qword_1002318B0);
  v253 = v8[9];
  v99 = sub_100005260();
  sub_10003D178(v99, v100, v101, &qword_1002318B0);
  v252 = v8[15];
  v102 = sub_100005260();
  sub_10003D178(v102, v103, v104, &qword_1002318B0);
  v251 = v8[16];
  sub_10000AF34();
  sub_10003D178(v105, v106, v107, v108);
  v109 = v90[1];
  v275 = *v90;
  v276 = v109;
  v110 = v90[3];
  v277 = v90[2];
  v278 = v110;
  v111 = v270;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v112 = v267;
  swift_bridgeObjectRetain_n();
  sub_10003D178(v272, v295, &qword_1002DB2E0, &unk_10023F030);
  sub_10003D178(&v275, v295, &qword_1002DB2E0, &unk_10023F030);
  sub_100007EDC();
  v261 = v113;
  sub_1000B310C(v6, v114);
  v115 = v271;
  *v5 = v112;
  v5[1] = v115;
  v5[2] = v111;
  v116 = v260;
  *(v5 + v8[10]) = v260;
  *(v5 + v8[11]) = v74;
  v117 = v264;
  *(v5 + v8[12]) = v264;
  sub_1000B31D8();
  *(v5 + v118) = v89;
  v119 = (v5 + v8[18]);
  v120 = v276;
  *v119 = v275;
  v119[1] = v120;
  v121 = v278;
  v119[2] = v277;
  v119[3] = v121;
  v256 = v8[8];
  v122 = v257;
  sub_100007B78();
  v123 = v266;
  sub_100002728(v124, v125, v126, v266);
  v249 = v8[6];
  sub_10003D178(v5 + v254, v122 + v249, &qword_1002DA970, &qword_1002318B0);
  v250 = v8[7];
  (v269)(v122 + v250, v255 + v5, v123);
  sub_10003D178(v5 + v253, v122 + v8[9], &qword_1002DA970, &qword_1002318B0);
  v254 = v8[15];
  sub_100005C38(v252);
  v255 = v8[16];
  sub_100005C38(v251);
  v127 = v119[1];
  v279 = *v119;
  v280 = v127;
  v128 = v119[3];
  v281 = v119[2];
  v282 = v128;
  v129 = v265;

  v130 = v267;

  v131 = v270;

  sub_10003D178(&v279, v295, &qword_1002DB2E0, &unk_10023F030);
  sub_1000B310C(v5, v261);
  v132 = v130;
  v133 = v271;
  *v122 = v130;
  v122[1] = v133;
  v122[2] = v131;
  *(v122 + v8[10]) = v116;
  *(v122 + v8[11]) = v74;
  *(v122 + v8[12]) = v117;
  *(v122 + v8[13]) = v77;
  *(v122 + v8[14]) = v79;
  *(v122 + v8[17]) = v129;
  v134 = (v122 + v8[18]);
  v135 = v280;
  *v134 = v279;
  v134[1] = v135;
  v136 = v282;
  v134[2] = v281;
  v134[3] = v136;
  v137 = v258;
  v251 = v258 + v8[9];
  sub_100007B78();
  sub_100002728(v138, v139, v140, v123);
  v253 = v137 + v8[6];
  sub_10003D178(v122 + v249, v253, &qword_1002DA970, &qword_1002318B0);
  v252 = v137 + v8[7];
  v269();
  v250 = v137 + v8[8];
  sub_10003D178(v122 + v256, v250, &qword_1002DA970, &qword_1002318B0);
  v256 = v137 + v8[15];
  sub_10003D178(v122 + v254, v256, &qword_1002DA970, &qword_1002318B0);
  v141 = v255 + v122;
  v255 = (v137 + v8[16]);
  sub_10003D178(v141, v255, &qword_1002DA970, &qword_1002318B0);
  v142 = v134[1];
  v283 = *v134;
  v284 = v142;
  v143 = v134[3];
  v285 = v134[2];
  v286 = v143;

  v144 = v270;

  sub_10003D178(&v283, v295, &qword_1002DB2E0, &unk_10023F030);
  sub_1000B310C(v122, v261);
  v145 = v271;
  *v137 = v132;
  v137[1] = v145;
  v137[2] = v144;
  *(v137 + v8[10]) = v260;
  *(v137 + v8[11]) = v74;
  *(v137 + v8[12]) = v264;
  sub_100013F94();
  *(v137 + v146) = v129;
  v147 = (v137 + v8[18]);
  v148 = v284;
  *v147 = v283;
  v147[1] = v148;
  v149 = v286;
  v147[2] = v285;
  v147[3] = v149;
  v151 = v150 + 1;
  if (v150 == -1)
  {
    __break(1u);
  }

  else
  {
    v257 = v8[6];
    v152 = v246;
    sub_100007B6C();
    v249 = v151;
    sub_10003D178(v153, v154, v155, v156);
    v260 = v8[7];
    (v269)(v152 + v260, v252, v266);
    v254 = v8[8];
    sub_100007B6C();
    sub_10003D178(v157, v158, v159, v160);
    v253 = v8[9];
    sub_100007B6C();
    sub_10003D178(v161, v162, v163, v164);
    v252 = v8[15];
    sub_100007B6C();
    sub_10003D178(v165, v166, v167, v168);
    v251 = v8[16];
    sub_100007B6C();
    sub_10003D178(v169, v170, v171, v172);
    v173 = v147[1];
    v287 = *v147;
    v288 = v173;
    v174 = v147[3];
    v289 = v147[2];
    v290 = v174;
    v175 = v267;

    v176 = v270;

    sub_10003D178(&v287, v295, &qword_1002DB2E0, &unk_10023F030);
    v255 = type metadata accessor for TSDataSyncDeviceState;
    sub_1000B310C(v137, type metadata accessor for TSDataSyncDeviceState);
    v177 = v271;
    *v152 = v175;
    v152[1] = v177;
    v152[2] = v176;
    *(v152 + v8[10]) = v151;
    *(v152 + v8[11]) = v74;
    *(v152 + v8[12]) = v264;
    sub_1000B31D8();
    *(v152 + v178) = v179;
    v180 = (v152 + v8[18]);
    v181 = v288;
    *v180 = v287;
    v180[1] = v181;
    v182 = v290;
    v180[2] = v289;
    v180[3] = v182;
    v261 = v8[6];
    v183 = v247;
    sub_100007B6C();
    sub_10003D178(v184, v185, v186, v187);
    v265 = v8[7];
    (v269)(v183 + v265, v152 + v260, v266);
    v260 = v8[8];
    sub_100007B6C();
    sub_10003D178(v188, v189, v190, v191);
    v258 = v8[9];
    sub_100007B6C();
    sub_10003D178(v192, v193, v194, v195);
    v257 = v8[15];
    sub_100007B6C();
    sub_10003D178(v196, v197, v198, v199);
    v256 = v8[16];
    sub_100007B6C();
    sub_10003D178(v200, v201, v202, v203);
    v204 = v180[1];
    v291 = *v180;
    v292 = v204;
    v205 = v180[3];
    v293 = v180[2];
    v294 = v205;
    v206 = v267;

    sub_10003D178(&v291, v295, &qword_1002DB2E0, &unk_10023F030);
    sub_1000B310C(v152, type metadata accessor for TSDataSyncDeviceState);
    v207 = v271;
    *v183 = v206;
    v183[1] = v207;
    v183[2] = v176;
    v208 = v249;
    *(v183 + v8[10]) = v249;
    *(v183 + v8[11]) = v74;
    v209 = v264;
    *(v183 + v8[12]) = v264;
    sub_100013F94();
    v210 = v245;
    *(v183 + v211) = v245;
    v212 = (v183 + v8[18]);
    v213 = v292;
    *v212 = v291;
    v212[1] = v213;
    v214 = v294;
    v212[2] = v293;
    v212[3] = v214;

    sub_1000B1590(v259, v263, v295);
    sub_100004E24(v262, &qword_1002DA970, &qword_1002318B0);
    v215 = v8[6];
    v216 = v248;
    sub_100007B6C();
    sub_10003D178(v217, v218, v219, v220);
    (v269)(v216 + v8[7], v183 + v265, v266);
    v221 = v8[8];
    sub_100007B6C();
    sub_10003D178(v222, v223, v224, v225);
    v226 = v8[9];
    sub_100007B6C();
    sub_10003D178(v227, v228, v229, v230);
    v231 = v8[15];
    sub_100007B6C();
    sub_10003D178(v232, v233, v234, v235);
    v236 = v8[16];
    sub_100007B6C();
    sub_10003D178(v237, v238, v239, v240);
    sub_1000B310C(v183, v255);
    *v216 = v267;
    v216[1] = v207;
    v216[2] = v270;
    *(v216 + v8[10]) = v208;
    *(v216 + v8[11]) = v74;
    *(v216 + v8[12]) = v209;
    *(v216 + v8[13]) = v77;
    *(v216 + v8[14]) = v79;
    *(v216 + v8[17]) = v210;
    v241 = (v216 + v8[18]);
    v242 = v295[1];
    *v241 = v295[0];
    v241[1] = v242;
    v243 = v295[3];
    v241[2] = v295[2];
    v241[3] = v243;
  }
}

uint64_t sub_1000B0098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v257 = a1;
  v258 = a3;
  v256 = a2;
  v248 = a4;
  v6 = type metadata accessor for TSDataSyncDeviceState(0);
  v7 = sub_10000307C(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000308C();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  sub_100002DD0();
  v246 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v247 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  v19 = v224 - v18;
  __chkstk_darwin(v20);
  v22 = v224 - v21;
  __chkstk_darwin(v23);
  sub_10000DE68();
  __chkstk_darwin(v24);
  sub_1000B31C8();
  __chkstk_darwin(v25);
  v27 = v224 - v26;
  __chkstk_darwin(v28);
  v30 = v224 - v29;
  v255 = type metadata accessor for TSDataSyncServerConfigModel(0);
  v31 = sub_10000307C(v255);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_10000306C();
  v259 = (v35 - v34);
  v36 = v260;
  result = sub_1000B1B70(v257);
  if (!v36)
  {
    v231 = v19;
    v232 = v22;
    v233 = v4;
    v234 = v5;
    v235 = v27;
    v243 = v30;
    v244 = 0;
    v38 = v256;
    sub_1000B1590(0, v256, v299);
    v39 = v259;
    v40 = (v259 + *(v255 + 44));
    v41 = v40[1];
    v242 = *v40;
    v42 = v301;
    v43 = v303;
    v239 = v302;
    v240 = v300;
    v236 = v305;
    v237 = v304;

    v241 = v41;

    v238 = v43;

    result = sub_1000B2E50(v299);
    v44 = 0;
    v298 = v42;
    v260 = *v39;
    if (!*(v260 + 16) && (v45 = *(v38 + v6[10]), v44 = v45 + 1, v45 == -1))
    {
      __break(1u);
    }

    else
    {
      v245 = v44;
      v46 = *(v38 + 16);
      v251 = *(v38 + 8);
      v252 = v46;
      v230 = v6[6];
      sub_10000AF34();
      v47 = v38;
      sub_10003D178(v48, v49, v50, v51);
      v52 = v6[7];
      v257 = type metadata accessor for Date();
      sub_10000307C(v257);
      v254 = *(v53 + 16);
      v258 = v53 + 16;
      v229 = v52;
      v254(&v12[v52], v38 + v52);
      v228 = v6[8];
      sub_10000AF34();
      sub_10003D178(v54, v55, v56, v57);
      v227 = v6[9];
      sub_10000AF34();
      sub_10003D178(v58, v59, v60, v61);
      v62 = v6[11];
      v63 = *(v38 + v6[10]);
      v249 = v63;
      v64 = *(v47 + v62);
      v65 = v6[13];
      v253 = *(v47 + v6[12]);
      v66 = v253;
      v67 = *(v47 + v65);
      v68 = v6[14];
      v226 = v6[15];
      v69 = *(v47 + v68);
      sub_10000AF34();
      sub_10003D178(v70, v71, v72, v73);
      sub_10003D178(v47 + v6[16], &v12[v6[16]], &qword_1002DA970, &qword_1002318B0);
      v74 = v6[17];
      v75 = (v47 + v6[18]);
      v76 = v75[1];
      v77 = v75[3];
      v264 = v75[2];
      v78 = v264;
      v265 = v77;
      v79 = v75[1];
      v262 = *v75;
      v80 = v262;
      v263 = v79;
      v81 = *(v47 + v74);
      v82 = v251;
      *v12 = v260;
      *(v12 + 1) = v82;
      *(v12 + 2) = v252;
      *&v12[v6[10]] = v63;
      *&v12[v6[11]] = v64;
      *&v12[v6[12]] = v66;
      *&v12[v6[13]] = v67;
      *&v12[v6[14]] = v69;
      *&v12[v6[17]] = v81;
      v83 = v81;
      v84 = &v12[v6[18]];
      *v84 = v80;
      v84[1] = v76;
      v85 = v75[3];
      v84[2] = v78;
      v84[3] = v85;
      v86 = v259[2];
      v250 = v259[1];
      v251 = v86;
      v87 = v6[6];
      v88 = v246;
      sub_1000037B4();
      sub_10003D178(v89, v90, v91, v92);
      v230 = v6[7];
      (v254)(v88 + v230, &v12[v229], v257);
      v229 = v6[8];
      sub_1000037B4();
      sub_10003D178(v93, v94, v95, v96);
      v228 = v6[9];
      sub_1000037B4();
      sub_10003D178(v97, v98, v99, v100);
      v227 = v6[15];
      sub_1000037B4();
      sub_10003D178(v101, v102, v103, v104);
      v226 = v6[16];
      sub_1000037B4();
      sub_10003D178(v105, v106, v107, v108);
      v109 = v84[1];
      v266 = *v84;
      v267 = v109;
      v110 = v84[3];
      v268 = v84[2];
      v269 = v110;

      v111 = v260;
      swift_bridgeObjectRetain_n();
      v112 = v83;
      v256 = v83;
      swift_bridgeObjectRetain_n();
      sub_100007B6C();
      sub_10003D178(v113, v114, v115, v116);
      v117 = v251;

      sub_100007B6C();
      sub_10003D178(v118, v119, v120, v121);
      sub_100007EDC();
      v252 = v122;
      sub_1000B310C(v12, v123);
      v124 = v250;
      *v88 = v111;
      v88[1] = v124;
      v88[2] = v117;
      *(v88 + v6[10]) = v249;
      *(v88 + v6[11]) = v64;
      *(v88 + v6[12]) = v253;
      *(v88 + v6[13]) = v67;
      *(v88 + v6[14]) = v69;
      *(v88 + v6[17]) = v112;
      v125 = (v88 + v6[18]);
      v126 = v267;
      *v125 = v266;
      v125[1] = v126;
      v127 = v269;
      v125[2] = v268;
      v125[3] = v127;
      v128 = *(v255 + 24);
      v225 = v6[6];
      v129 = v247;
      sub_10003D178(v259 + v128, v247 + v225, &qword_1002DA970, &qword_1002318B0);
      (v254)(v129 + v6[7], v88 + v230, v257);
      v230 = v6[8];
      sub_1000075F8(v229);
      v224[1] = v6[9];
      sub_1000075F8(v228);
      v228 = v6[15];
      sub_1000075F8(v227);
      v227 = v6[16];
      sub_1000075F8(v226);
      v130 = v125[1];
      v270 = *v125;
      v271 = v130;
      v131 = v125[3];
      v272 = v125[2];
      v273 = v131;
      v132 = v251;
      swift_bridgeObjectRetain_n();
      v133 = v260;

      sub_10003D178(&v270, &v294, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v88, v252);
      *v129 = v133;
      v129[1] = v124;
      v129[2] = v132;
      v134 = v132;
      sub_1000B31FC(v6[10]);
      *(v129 + v135) = v253;
      sub_10000EDA8();
      v137 = (v129 + v136);
      v138 = v271;
      *v137 = v270;
      v137[1] = v138;
      v139 = v273;
      v137[2] = v272;
      v137[3] = v139;
      v140 = *(v255 + 28);
      v246 = v6[6];
      v141 = v231;
      sub_10003D178(v129 + v225, &v231[v246], &qword_1002DA970, &qword_1002318B0);
      v229 = v6[7];
      v142 = v259 + v140;
      v143 = v254;
      (v254)(&v141[v229], v142, v257);
      sub_10000BF7C(v6[8]);
      v226 = v6[9];
      sub_10000BF7C(v226);
      v225 = v6[15];
      sub_10000BF7C(v225);
      v228 = v6[16];
      sub_10000BF7C(v228);
      v144 = v137[1];
      v274 = *v137;
      v275 = v144;
      v145 = v137[3];
      v276 = v137[2];
      v277 = v145;
      v146 = v260;

      v147 = v256;

      sub_10003D178(&v274, &v294, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v129, v252);
      v148 = v250;
      *v141 = v146;
      *(v141 + 1) = v148;
      *(v141 + 2) = v134;
      sub_100007204();
      *&v141[v149] = v147;
      v150 = &v141[v6[18]];
      v151 = v275;
      *v150 = v274;
      v150[1] = v151;
      v152 = v277;
      v150[2] = v276;
      v150[3] = v152;
      v153 = *(v255 + 32);
      v230 = v6[6];
      v154 = v232;
      sub_10003D178(&v141[v246], &v232[v230], &qword_1002DA970, &qword_1002318B0);
      v246 = v6[7];
      v143(&v154[v246], &v141[v229], v257);
      v229 = v6[8];
      sub_10003D178(v259 + v153, &v154[v229], &qword_1002DA970, &qword_1002318B0);
      sub_100008D34(v6[9]);
      v227 = v6[15];
      sub_100008D34(v227);
      v226 = v6[16];
      sub_100008D34(v226);
      v155 = v150[1];
      v278 = *v150;
      v279 = v155;
      v156 = v150[3];
      v280 = v150[2];
      v281 = v156;
      v157 = v260;

      v158 = v256;

      v159 = v251;

      sub_10003D178(&v278, &v294, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v141, v252);
      v161 = v249;
      v160 = v250;
      *v154 = v157;
      *(v154 + 1) = v160;
      *(v154 + 2) = v159;
      *&v154[v6[10]] = v161;
      sub_10000A4A4();
      *&v154[v162] = v158;
      v163 = &v154[v6[18]];
      v164 = v279;
      *v163 = v278;
      v163[1] = v164;
      v165 = v281;
      v163[2] = v280;
      v163[3] = v165;
      v247 = v6[9];
      v166 = v233;
      sub_100007B78();
      v167 = v257;
      sub_100002728(v168, v169, v170, v257);
      v225 = v6[6];
      sub_10003D178(&v154[v230], &v166[v225], &qword_1002DA970, &qword_1002318B0);
      v231 = v6[7];
      v171 = v254;
      (v254)(&v231[v166], &v154[v246], v167);
      v230 = v6[8];
      sub_10003D178(&v154[v229], &v166[v230], &qword_1002DA970, &qword_1002318B0);
      v229 = v6[15];
      sub_100010D2C(v229);
      v228 = v6[16];
      sub_100010D2C(v228);
      v172 = v163[1];
      v282 = *v163;
      v283 = v172;
      v173 = v163[3];
      v284 = v163[2];
      v285 = v173;
      v174 = v260;

      v175 = v256;

      v176 = v251;

      sub_10003D178(&v282, &v294, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v154, v252);
      v177 = v250;
      *v166 = v174;
      *(v166 + 1) = v177;
      *(v166 + 2) = v176;
      v178 = v176;
      sub_100007204();
      *&v166[v179] = v175;
      v180 = &v166[v6[18]];
      v181 = v283;
      *v180 = v282;
      v180[1] = v181;
      v182 = v285;
      v180[2] = v284;
      v180[3] = v182;
      v246 = v6[6];
      v183 = v234;
      sub_10003D178(&v166[v225], v234 + v246, &qword_1002DA970, &qword_1002318B0);
      v249 = v6[7];
      v171(&v183[v249], &v231[v166], v257);
      v232 = v6[8];
      sub_100013C08(v232);
      v231 = v6[9];
      sub_10003D178(&v166[v247], &v231[v183], &qword_1002DA970, &qword_1002318B0);
      v230 = v6[15];
      sub_100013C08(v230);
      v229 = v6[16];
      sub_100013C08(v229);
      v184 = v180[1];
      v286 = *v180;
      v287 = v184;
      v185 = v180[3];
      v288 = v180[2];
      v289 = v185;
      v186 = v260;

      v187 = v256;

      sub_10003D178(&v286, &v294, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v166, v252);
      v188 = v250;
      *v183 = v186;
      *(v183 + 1) = v188;
      *(v183 + 2) = v178;
      v189 = v245;
      *&v183[v6[10]] = v245;
      sub_10000A4A4();
      *&v183[v190] = v187;
      v191 = &v183[v6[18]];
      v192 = v287;
      *v191 = v286;
      v191[1] = v192;
      v193 = v289;
      v191[2] = v288;
      v191[3] = v193;
      v194 = *(v259 + *(v255 + 36));
      v233 = v6[6];
      v195 = v235;
      sub_10003D178(&v183[v246], &v233[v235], &qword_1002DA970, &qword_1002318B0);
      v247 = v6[7];
      (v254)(v195 + v247, &v183[v249], v257);
      v249 = v6[8];
      sub_10000AA6C(v249);
      v246 = v6[9];
      sub_10000AA6C(v246);
      v232 = v6[15];
      sub_10000AA6C(v232);
      v231 = v6[16];
      sub_10000AA6C(v231);
      v196 = v191[1];
      v290 = *v191;
      v291 = v196;
      v197 = v191[3];
      v292 = v191[2];
      v293 = v197;
      v198 = v260;

      v199 = v256;

      v200 = v251;

      sub_10003D178(&v290, &v294, &qword_1002DB2E0, &unk_10023F030);
      v201 = v183;
      v202 = v252;
      sub_1000B310C(v201, v252);
      *v195 = v198;
      v195[1] = v188;
      v195[2] = v200;
      *(v195 + v6[10]) = v189;
      *(v195 + v6[11]) = v194;
      *(v195 + v6[12]) = v253;
      *(v195 + v6[13]) = v67;
      *(v195 + v6[14]) = v69;
      *(v195 + v6[17]) = v199;
      v203 = (v195 + v6[18]);
      v204 = v291;
      *v203 = v290;
      v203[1] = v204;
      v205 = v293;
      v203[2] = v292;
      v203[3] = v205;
      v230 = *(v259 + *(v255 + 40));
      v253 = v6[6];
      v206 = v243;
      sub_10003D178(&v233[v195], v243 + v253, &qword_1002DA970, &qword_1002318B0);
      v255 = v6[7];
      (v254)(v206 + v255, v195 + v247, v257);
      v247 = v6[8];
      sub_100003B58(v247);
      v249 = v6[9];
      sub_100003B58(v249);
      v246 = v6[15];
      sub_100003B58(v246);
      v234 = v6[16];
      sub_100003B58(v234);
      v207 = v203[1];
      v294 = *v203;
      v295 = v207;
      v208 = v203[3];
      v296 = v203[2];
      v297 = v208;
      v209 = v260;

      v210 = v251;

      sub_10003D178(&v294, &v261, &qword_1002DB2E0, &unk_10023F030);
      sub_1000B310C(v195, v202);
      *v206 = v209;
      v211 = v250;
      v206[1] = v250;
      v206[2] = v210;
      v212 = v245;
      sub_1000B31FC(v6[10]);
      v213 = v230;
      *(v206 + v214) = v230;
      sub_10000EDA8();
      v216 = (v206 + v215);
      v217 = v295;
      *v216 = v294;
      v216[1] = v217;
      v218 = v297;
      v216[2] = v296;
      v216[3] = v218;
      LODWORD(v235) = v298;
      v219 = v248;
      sub_10003D178(v206 + v253, v248 + v6[6], &qword_1002DA970, &qword_1002318B0);
      (v254)(v219 + v6[7], v206 + v255, v257);
      sub_100008260(v6[8]);
      sub_100008260(v6[9]);
      sub_100008260(v6[15]);
      sub_100008260(v6[16]);
      sub_1000B310C(v206, v252);
      *v219 = v260;
      v219[1] = v211;
      v219[2] = v251;
      *(v219 + v6[10]) = v212;
      *(v219 + v6[11]) = v194;
      *(v219 + v6[12]) = v213;
      *(v219 + v6[13]) = v67;
      *(v219 + v6[14]) = v69;
      *(v219 + v6[17]) = v256;
      v220 = v219 + v6[18];
      v221 = v241;
      *v220 = v242;
      *(v220 + 1) = v221;
      *(v220 + 2) = v240;
      v220[24] = v235;
      v222 = v238;
      *(v220 + 4) = v239;
      *(v220 + 5) = v222;
      v223 = v236;
      *(v220 + 6) = v237;
      *(v220 + 7) = v223;
      return sub_1000B310C(v259, type metadata accessor for TSDataSyncServerConfigModel);
    }
  }

  return result;
}

uint64_t sub_1000B1018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v6 = type metadata accessor for Date();
  v7 = sub_100003724(v6);
  v69 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000308C();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  v17 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v18 = sub_1000030B8(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000308C();
  sub_1000B31C8();
  __chkstk_darwin(v21);
  sub_100002DD0();
  v68 = v22;
  sub_100005238();
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  v26 = type metadata accessor for AccountIdentity();
  v27 = sub_100003724(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_10000306C();
  v34 = v33 - v32;
  if (a1)
  {
    (*(v29 + 16))(v34, a2, v26);
    sub_10003D178(v70, v25, &qword_1002DA970, &qword_1002318B0);
    v35 = v6;
    if (sub_100004DFC(v25, 1, v6) == 1)
    {

      sub_100004E24(v25, &qword_1002DA970, &qword_1002318B0);
      v36 = sub_10000DA08();
      if (v37)
      {
        v38 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = a1;
        v40 = *(a1 + 24);
        sub_100099DF4(&qword_1002DB2D8, &qword_100231B90);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v40);
        a1 = v71;
        v41 = *(v29 + 8);
        v41(*(v71 + 48) + *(v29 + 72) * v38, v26);
        v42 = v68;
        (*(v69 + 32))(v68, *(a1 + 56) + *(v69 + 72) * v38, v35);
        sub_1000030C4();
        sub_10000DA94(v43, v44);
        sub_1000B31F0();
        _NativeDictionary._delete(at:)();
        sub_10000B7B0();
        sub_100002728(v45, v46, v47, v35);
      }

      else
      {
        v42 = v68;
        sub_100007B78();
        sub_100002728(v64, v65, v66, v6);
        v41 = *(v29 + 8);
      }

      v41(v34, v26);
      sub_100004E24(v42, &qword_1002DA970, &qword_1002318B0);
    }

    else
    {
      (*(v69 + 32))(v16, v25, v6);

      v49 = swift_isUniquelyReferenced_nonNull_native();
      sub_10014F748(v16, v34, v49, v50, v51, v52, v53, v54, v68, v69, v70, a1);
      a1 = v71;
      (*(v29 + 8))(v34, v26);
    }
  }

  else
  {
    v48 = a2;
    sub_10003D178(v70, v3, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v3, 1, v6) == 1)
    {
      sub_100004E24(v3, &qword_1002DA970, &qword_1002318B0);
      return 0;
    }

    else
    {
      v55 = v69;
      (*(v69 + 32))(v13, v3, v6);
      sub_100099DF4(&qword_1002DB2C8, &qword_100231B80);
      v56 = (sub_100099DF4(&qword_1002DB2D0, &qword_100231B88) - 8);
      v57 = *(*v56 + 72);
      v58 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_10022E400;
      v60 = v59 + v58;
      v61 = v56[14];
      (*(v29 + 16))(v60, v48, v26);
      (*(v55 + 16))(v60 + v61, v13, v6);
      sub_1000030C4();
      sub_10000DA94(v62, v63);
      a1 = Dictionary.init(dictionaryLiteral:)();
      (*(v55 + 8))(v13, v6);
    }
  }

  return a1;
}

void sub_1000B1590(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    *&v30 = a1;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    if (swift_dynamicCast())
    {
      v5 = v26[0];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = (a2 + *(type metadata accessor for TSDataSyncDeviceState(0) + 72));
  v7 = v6[1];
  v30 = *v6;
  v31 = v7;
  v8 = v6[3];
  v32 = v6[2];
  v33 = v8;
  v9 = *(&v30 + 1);
  if (*(&v30 + 1) == 1)
  {
    v10 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0uLL;
    v13 = 1;
    v14 = 0uLL;
  }

  else
  {
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v14 = v33;
    v13 = BYTE8(v31);
  }

  v26[0] = v10;
  v26[1] = v9;
  v26[2] = v11;
  v27 = v13 & 1;
  v28 = v12;
  v29 = v14;
  sub_10003D178(&v30, v25, &qword_1002DB2E0, &unk_10023F030);
  if (v5)
  {
    v15 = [v5 code];

    sub_1000B2E50(v26);
    v16 = [v5 domain];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = v5;
  }

  else
  {

    sub_1000B2E50(v26);
    v20 = 0;
    v17 = 0;
    v19 = 0;
    v15 = 0;
  }

  v21 = v5 == 0;
  v22 = static HTTPHelpers.statusCodeString(error:)();
  v24 = v23;

  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = v15;
  *(a3 + 24) = v21;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  *(a3 + 48) = v22;
  *(a3 + 56) = v24;
}

double sub_1000B1778@<D0>(char *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for TSDataSyncDeviceState(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v11 = (v10 - v9);
  v92 = *a1;
  v94 = *(a1 + 1);
  v93 = *(a1 + 2);
  v91 = v7[8];
  sub_1000037B4();
  sub_10003D178(v12, v13, v14, v15);
  v16 = v7[9];
  v88 = type metadata accessor for Date();
  sub_10000307C(v88);
  v87 = *(v17 + 16);
  v89 = v16;
  v87(&v11[v16], &a1[v16]);
  v86 = v7[10];
  sub_1000037B4();
  sub_10003D178(v18, v19, v20, v21);
  v85 = v7[11];
  sub_1000037B4();
  sub_10003D178(v22, v23, v24, v25);
  v26 = *&a1[v7[12]];
  v90 = v26;
  v27 = *&a1[v7[13]];
  v28 = *&a1[v7[14]];
  v29 = *&a1[v7[15]];
  v30 = v7[17];
  sub_1000037B4();
  sub_10003D178(v31, v32, v33, v34);
  v35 = v7[18];
  sub_1000037B4();
  sub_10003D178(v36, v37, v38, v39);
  v40 = *&a1[v7[19]];
  v41 = &a1[v7[20]];
  v42 = *(v41 + 1);
  v43 = *(v41 + 2);
  v44 = *v41;
  *v11 = v92;
  *(v11 + 1) = v94;
  *(v11 + 2) = v93;
  *&v11[v7[12]] = v26;
  *&v11[v7[13]] = v27;
  *&v11[v7[14]] = v28;
  *&v11[v7[15]] = v29;
  *&v11[v7[16]] = a3;
  v45 = *v41;
  v46 = v40;
  *&v11[v7[19]] = v40;
  v47 = &v11[v7[20]];
  *v47 = v45;
  *(v47 + 1) = v42;
  v48 = *(v41 + 3);
  *(v47 + 2) = v43;
  *(v47 + 3) = v48;
  v49 = v7[8];
  sub_1000037B4();
  sub_10003D178(v50, v51, v52, v53);
  (v87)(a2 + v7[9], &v11[v89], v88);
  v54 = v7[10];
  sub_1000037B4();
  sub_10003D178(v55, v56, v57, v58);
  v59 = v7[11];
  sub_1000037B4();
  sub_10003D178(v60, v61, v62, v63);
  v64 = v7[17];
  sub_1000037B4();
  sub_10003D178(v65, v66, v67, v68);
  v69 = v7[18];
  sub_1000037B4();
  sub_10003D178(v70, v71, v72, v73);
  v95 = *v47;
  v96 = *(v47 + 1);
  v97 = *(v47 + 2);
  v98 = *(v47 + 3);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1000037B4();
  sub_10003D178(v74, v75, v76, v77);
  sub_1000037B4();
  sub_10003D178(v78, v79, v80, v81);
  sub_100007EDC();
  sub_1000B310C(v11, v82);
  *a2 = v92;
  a2[1] = v94;
  a2[2] = v93;
  *(a2 + v7[12]) = v90;
  *(a2 + v7[13]) = v27;
  *(a2 + v7[14]) = v28;
  *(a2 + v7[15]) = v27;
  *(a2 + v7[16]) = a3;
  *(a2 + v7[19]) = v46;
  v83 = (a2 + v7[20]);
  *v83 = v95;
  v83[1] = v96;
  result = *&v97;
  v83[2] = v97;
  v83[3] = v98;
  return result;
}

uint64_t sub_1000B1B70(uint64_t a1)
{
  v226 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v4 = sub_100003724(v226);
  v220 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v8);
  sub_10000D478();
  sub_10000A1C0(v9);
  v10 = sub_100099DF4(&qword_1002DB300, &qword_100231BA0);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  sub_10000DE68();
  __chkstk_darwin(v14);
  sub_10000D478();
  sub_10000A1C0(v15);
  v16 = sub_100099DF4(&qword_1002DB308, &qword_100231BA8);
  v17 = sub_100003724(v16);
  v240 = v18;
  v241 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v21);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v22);
  sub_100002DD0();
  v249 = v23;
  sub_100005238();
  __chkstk_darwin(v24);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v25);
  sub_10000D478();
  sub_10000A1C0(v26);
  v238 = sub_100099DF4(&qword_1002DB310, &qword_100231BB0);
  v27 = sub_10000307C(v238);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10000308C();
  sub_10000690C();
  __chkstk_darwin(v30);
  v32 = (&v206 - v31);
  v33 = sub_100099DF4(&qword_1002DB318, &qword_10023F230);
  v34 = sub_1000030B8(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_10000A1C0(&v206 - v37);
  v38 = type metadata accessor for URL();
  v39 = sub_100003724(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  sub_10000306C();
  sub_10000A1C0(v45 - v44);
  v47 = *(a1 + 40);
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  v250 = v46;
  v239 = v32;
  if (v48)
  {
    Data.init(base64Encoded:options:)();
    if (v49 >> 60 == 15)
    {
      sub_1000B2EE8();
      swift_allocError();
      *v50 = 1;
      *(v50 + 8) = 0;
      return swift_willThrow();
    }

    sub_10000CF90();
    v54 = objc_opt_self();
    sub_1000B31F0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v56 = [v54 decompressedDataWithGzippedData:isa];

    if (!v56)
    {
      sub_1000B2EE8();
      swift_allocError();
      *v138 = 2;
      *(v138 + 8) = 1;
      swift_willThrow();
      v139 = sub_1000B31F0();
      return sub_10009A7A0(v139, v140);
    }

    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v57;
    v58 = sub_1000B31F0();
    sub_10009A7A0(v58, v59);

    v32 = v239;
  }

  else
  {
    sub_10000CF90();
    v52 = 0;
    v53 = 0xC000000000000000;
  }

  v60 = type metadata accessor for JSONDecoder();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000B2F3C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000D170(v52, v53);

  v211 = v1;
  if (v1)
  {
    return result;
  }

  v212 = v2;
  v63 = v253;
  v64 = v255;
  v207 = v254;
  sub_1000B2F90();
  v65 = Dictionary.init(dictionaryLiteral:)();
  v215 = *(v64 + 16);
  v214 = v64 + 32;
  v230 = (v41 + 32);
  v232 = (v41 + 16);
  v213 = v41 + 8;
  v217 = v64;

  v66 = 0;
  v67 = v216;
  while (1)
  {
    if (v66 == v215)
    {
      sub_1000B3210();

      v141 = v65 + 64;
      v142 = 1 << *(v65 + 32);
      v143 = -1;
      if (v142 < 64)
      {
        v143 = ~(-1 << v142);
      }

      v144 = v143 & *(v65 + 64);
      v145 = (v142 + 63) >> 6;

      v146 = 0;
      v147 = _swiftEmptyArrayStorage;
      v242 = v145;
      for (i = v65 + 64; ; v141 = i)
      {
        v251 = v147;
        if (v144)
        {
          v148 = v146;
          goto LABEL_49;
        }

        do
        {
          v148 = v146 + 1;
          if (__OFADD__(v146, 1))
          {
            goto LABEL_64;
          }

          if (v148 >= v145)
          {
            sub_100099DF4(&qword_1002DB348, &unk_100231BC0);
            v159 = v212;
            sub_100007B78();
            sub_100002728(v178, v179, v180, v181);
            v144 = 0;
            goto LABEL_50;
          }

          v144 = *(v141 + 8 * v148);
          ++v146;
        }

        while (!v144);
        v146 = v148;
LABEL_49:
        v149 = __clz(__rbit64(v144));
        v144 &= v144 - 1;
        v150 = v149 | (v148 << 6);
        v151 = *(v65 + 56);
        v152 = *(v65 + 48) + 40 * v150;
        v153 = *(v152 + 8);
        v249 = *v152;
        LODWORD(v248) = *(v152 + 16);
        v154 = *(v152 + 24);
        v155 = *(v152 + 32);
        v156 = v218;
        sub_10003D178(v151 + *(v240 + 72) * v150, v218, &qword_1002DB308, &qword_100231BA8);
        v157 = sub_100099DF4(&qword_1002DB348, &unk_100231BC0);
        v158 = *(v157 + 48);
        v159 = v212;
        *v212 = v249;
        v159[1] = v153;
        *(v159 + 16) = v248;
        v159[3] = v154;
        v159[4] = v155;
        sub_100012CF4(v156, v159 + v158, &qword_1002DB308, &qword_100231BA8);
        sub_10000B7B0();
        sub_100002728(v160, v161, v162, v157);

LABEL_50:
        v163 = v159;
        v164 = v221;
        sub_100012CF4(v163, v221, &qword_1002DB300, &qword_100231BA0);
        v165 = sub_100099DF4(&qword_1002DB348, &unk_100231BC0);
        if (sub_100004DFC(v164, 1, v165) == 1)
        {

          v251 = sub_1000B2BEC(v251);
          v188 = v209;
          v189 = *v209;
          v249 = v209[1];
          v250 = v189;
          v190 = type metadata accessor for TSDataSyncConfigServerResponse(0);
          v191 = *(v190 + 24);
          v192 = type metadata accessor for TSDataSyncServerConfigModel(0);
          v193 = v210;
          sub_10003D178(v188 + v191, v210 + v192[6], &qword_1002DA970, &qword_1002318B0);
          v194 = v192[7];
          v195 = type metadata accessor for Date();
          sub_10000307C(v195);
          v197 = *(v196 + 16);
          v197(v193 + v194, v208, v195);
          v197(v193 + v192[8], v188 + *(v190 + 28), v195);
          sub_10000B7B0();
          sub_100002728(v198, v199, v200, v195);
          v201 = v249;

          sub_1000B3210();

          v203 = v188[2];
          v202 = v188[3];

          v204 = v250;
          *v193 = v251;
          v193[1] = v204;
          v193[2] = v201;
          *(v193 + v192[9]) = v63;
          *(v193 + v192[10]) = v207;
          v205 = (v193 + v192[11]);
          *v205 = v203;
          v205[1] = v202;
          return result;
        }

        v166 = *v164;
        v248 = *(v164 + 8);
        v249 = v166;
        LODWORD(v247) = *(v164 + 16);
        v167 = *(v164 + 24);
        v245 = *(v164 + 32);
        v246 = v167;
        v168 = (v164 + *(v165 + 48));
        v244 = *v168;
        v169 = *(v241 + 48);
        v170 = *v230;
        v171 = v219;
        v172 = v250;
        (*v230)(v219 + v169, &v168[v169], v250);
        v173 = v224;
        v170(v224 + *(v226 + 20), (v171 + v169), v172);
        v174 = v248;
        *v173 = v249;
        *(v173 + 8) = v174;
        *(v173 + 16) = v247;
        v175 = v245;
        *(v173 + 24) = v246;
        *(v173 + 32) = v175;
        *(v173 + *(v226 + 24)) = v244;
        sub_1000B30A8(v173, v225);
        v147 = v251;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013BD10(0, v147[2] + 1, 1, v147);
          v147 = v182;
        }

        v145 = v242;
        v177 = v147[2];
        v176 = v147[3];
        if (v177 >= v176 >> 1)
        {
          sub_10013BD10(v176 > 1, v177 + 1, 1, v147);
          v147 = v183;
        }

        sub_1000B310C(v224, type metadata accessor for TSDataSyncDatasetGroupConfig);
        v147[2] = v177 + 1;
        sub_1000B3164(v225, v147 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v177);
      }
    }

    if (v66 >= *(v217 + 16))
    {
      goto LABEL_65;
    }

    v222 = v66;
    v68 = (v214 + 40 * v66);
    v69 = v68[1];
    v236 = *v68;
    v70 = v68[2];
    v71 = v68[3];
    v72 = v68[4];
    swift_bridgeObjectRetain_n();
    i = v69;

    URL.init(string:encodingInvalidCharacters:)();
    v223 = v71;

    v73 = v250;
    if (sub_100004DFC(v67, 1, v250) == 1)
    {
      sub_1000B3210();
      swift_bridgeObjectRelease_n();
      sub_100004E24(v67, &qword_1002DB318, &qword_10023F230);
LABEL_59:
      sub_1000B2FE4();
      swift_allocError();
      v186 = v223;
      *v187 = v70;
      v187[1] = v186;
      v187[2] = 1;
      swift_willThrow();
    }

    v229 = *v230;
    v229(v237, v67, v73);
    URL.scheme.getter();
    if (!v74)
    {
      sub_1000B3210();
      swift_bridgeObjectRelease_n();
      v184 = sub_10000B7BC();
      v185(v184);
      goto LABEL_59;
    }

    v75 = *(v72 + 16);
    if (v75)
    {
      break;
    }

LABEL_38:
    v135 = v222 + 1;
    swift_bridgeObjectRelease_n();
    v136 = sub_10000B7BC();
    v137(v136);
    v66 = v135;
  }

  v251 = 0;
  v234 = v75 - 1;
  v76 = (v72 + 56);
  v235 = v72;
  while (v251 < v75)
  {
    v77 = *(v76 - 2);
    v246 = *(v76 - 3);
    LODWORD(v248) = *(v76 + 16);
    v78 = v76[3];
    v79 = v76[4];
    v80 = v76[7];
    v244 = v76[6];
    LODWORD(v81) = *(v76 + 40);
    v82 = *v76;
    v83 = v76[1];
    v84 = *(v76 - 8);
    *&v256 = v236;
    *(&v256 + 1) = i;
    LOBYTE(v257) = v84;
    *(&v257 + 1) = v82;
    v258 = v83;
    v85 = *(v65 + 16);

    v242 = v83;

    v247 = v77;

    v245 = v80;

    if (v85 && (sub_10014EB48(), (v86 & 1) != 0))
    {
      sub_10000B324();
      v90 = v228;
      sub_10003D178(v88 + v89 * v87, v228, &qword_1002DB308, &qword_100231BA8);
      v91 = *(v241 + 48);
      v92 = *(v238 + 48);
      v93 = v227;
      *v227 = *v90;
      v94 = v90 + v91;
      v231 = v81;
      v81 = v65;
      v95 = v238;
      v96 = v250;
      v229(v93 + v92, v94, v250);
      sub_10000B7B0();
      v97 = v96;
      v98 = v95;
      v65 = v81;
      LOBYTE(v81) = v231;
      sub_100002728(v99, v100, v101, v97);
      v32 = v239;
      sub_100012CF4(v93, v239, &qword_1002DB310, &qword_100231BB0);
    }

    else
    {
      v98 = v238;
      v102 = *(v238 + 48);
      *v32 = _swiftEmptyArrayStorage;
      sub_100007B78();
      sub_100002728(v103, v104, v105, v250);
    }

    v106 = *v32;
    sub_100004E24(v32 + *(v98 + 48), &qword_1002DB318, &qword_10023F230);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v106 + 16);
      sub_10013BD4C();
      v106 = v133;
    }

    v107 = *(v106 + 16);
    if (v107 >= *(v106 + 24) >> 1)
    {
      sub_10013BD4C();
      v106 = v134;
    }

    *(v106 + 16) = v107 + 1;
    v108 = v106 + (v107 << 6);
    v109 = v247;
    *(v108 + 32) = v246;
    *(v108 + 40) = v109;
    v110 = v245;
    *(v108 + 48) = v244;
    *(v108 + 56) = v110;
    *(v108 + 64) = v248;
    LODWORD(v110) = *&v252[3];
    *(v108 + 65) = *v252;
    *(v108 + 68) = v110;
    *(v108 + 72) = v78;
    *(v108 + 80) = v79;
    *(v108 + 88) = v81;
    v111 = *(v241 + 48);
    v112 = v233;
    *v233 = v106;
    (*v232)(v112 + v111, v237, v250);
    sub_100012CF4(v112, v249, &qword_1002DB308, &qword_100231BA8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v253 = v65;
    v114 = sub_10014EB48();
    v116 = *(v65 + 16);
    v117 = (v115 & 1) == 0;
    v118 = v116 + v117;
    if (__OFADD__(v116, v117))
    {
      goto LABEL_62;
    }

    v119 = v114;
    v120 = v115;
    sub_100099DF4(&qword_1002DB340, &qword_100231BB8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v118))
    {
      v121 = sub_10014EB48();
      v32 = v239;
      if ((v120 & 1) != (v122 & 1))
      {
        goto LABEL_66;
      }

      v119 = v121;
      if (v120)
      {
LABEL_33:

        v65 = v253;
        sub_10000B324();
        sub_1000B3038(v249, v130 + v131 * v119);
        goto LABEL_34;
      }
    }

    else
    {
      v32 = v239;
      if (v120)
      {
        goto LABEL_33;
      }
    }

    v65 = v253;
    *(v253 + 8 * (v119 >> 6) + 64) |= 1 << v119;
    v123 = *(v65 + 48) + 40 * v119;
    v124 = v257;
    *v123 = v256;
    *(v123 + 16) = v124;
    *(v123 + 32) = v258;
    sub_10000B324();
    sub_100012CF4(v249, v125 + v126 * v119, &qword_1002DB308, &qword_100231BA8);
    v127 = *(v65 + 16);
    v128 = __OFADD__(v127, 1);
    v129 = v127 + 1;
    if (v128)
    {
      goto LABEL_63;
    }

    *(v65 + 16) = v129;
LABEL_34:
    if (v234 == v251)
    {

      v67 = v216;
      goto LABEL_38;
    }

    v75 = *(v235 + 16);
    v76 += 11;
    ++v251;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000B2BEC(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10000DA94(&qword_1002DA9E8, type metadata accessor for TSDataSyncDatasetGroupConfig);
  v11 = Set.init(minimumCapacity:)();
  v18 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1000B30A8(v13, v6);
      sub_1000EA5DC(v9, v6);
      sub_1000B310C(v9, type metadata accessor for TSDataSyncDatasetGroupConfig);
      v13 += v14;
      --v12;
    }

    while (v12);

    return v18;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

uint64_t sub_1000B2D90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_1000EAA70(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000B2EA4()
{
  result = qword_1002DB2F8;
  if (!qword_1002DB2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DB2F8);
  }

  return result;
}

unint64_t sub_1000B2EE8()
{
  result = qword_1002DB320;
  if (!qword_1002DB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB320);
  }

  return result;
}

unint64_t sub_1000B2F3C()
{
  result = qword_1002DB328;
  if (!qword_1002DB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB328);
  }

  return result;
}

unint64_t sub_1000B2F90()
{
  result = qword_1002DB330;
  if (!qword_1002DB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB330);
  }

  return result;
}

unint64_t sub_1000B2FE4()
{
  result = qword_1002DB338;
  if (!qword_1002DB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB338);
  }

  return result;
}

uint64_t sub_1000B3038(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB308, &qword_100231BA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B30A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B310C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000B3164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000B31D8()
{
  *(v1 + v0[13]) = v2;
  *(v1 + v0[14]) = v3;
  v4 = v0[17];
}

void sub_1000B31FC(uint64_t a1@<X8>)
{
  *(v3 + a1) = v2;
  *(v3 + *(v1 + 44)) = v4;
  v5 = *(v1 + 48);
}

uint64_t sub_1000B3274()
{
  sub_1000A1E28();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000B3634(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1000A1F0C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        v7 = type metadata accessor for Date();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1000B3414();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_1000B3634(319, &unk_1002DB3C8, &type metadata for TSDataSyncDeviceMetricsFields, &type metadata accessor for Optional);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1000B3414()
{
  if (!qword_1002DB3B8)
  {
    sub_10009A468(&qword_1002DB3C0, &qword_100231C08);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DB3B8);
    }
  }
}

__n128 sub_1000B3478(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B348C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B34E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1000B357C()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1000B3634(319, &unk_1002DB498, &type metadata for TSDataSyncDatasetConfig, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B3634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_1000B3684(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000B36A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1000B36E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000B38E4()
{
  v0 = sub_100005BE8();
  sub_10000C5E8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B39A0()
{
  v0 = sub_100005BE8();
  sub_10000C5E8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B3A48(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100005BE8();
  a2(a1);
  sub_10000A1CC();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3A98(char a1)
{
  sub_100005BE8();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B3AF0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_100005BE8();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B3B38()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3BF4()
{
  sub_1000BB0CC();
  sub_10000DE78();
  sub_1000050AC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3C5C()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3CE8()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3D4C()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3DF8()
{
  sub_1000BB0CC();
  sub_10000DE78();
  sub_1000050AC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3E60()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3ECC()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3F5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B400C()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B4084()
{
  v0 = sub_1000BB0CC();
  sub_1000050AC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B4100()
{
  sub_1000BB0CC();
  sub_10000DE78();
  sub_1000050AC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B4180()
{
  v0 = Hasher.init(_seed:)();
  sub_10000C5E8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B41CC()
{
  v0 = Hasher.init(_seed:)();
  sub_10000C5E8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B429C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4318(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B435C()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B4438()
{
  sub_1000BB0CC();
  sub_10000BC50();

  return Hasher._finalize()();
}

Swift::Int sub_1000B44C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_10000A1CC();

  return Hasher._finalize()();
}

uint64_t sub_1000B4518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736769666E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000100272550 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000100272570 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000100272590 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000100272610 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001002725B0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001002725D0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001FLL && 0x8000000100272630 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x72657474696ALL && a2 == 0xE600000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x8000000100272650 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000015 && 0x8000000100272670 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x8000000100272690 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x467363697274656DLL && a2 == 0xED000073646C6569)
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

unint64_t sub_1000B49A0(char a1)
{
  result = 0x736769666E6F63;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x4274736575716572;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0x72657474696ALL;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x467363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1000B4B58(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for Date();
  v6 = sub_100003724(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v139 = v12 - v11;
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_10000308C();
  v134 = v15 - v16;
  sub_100005238();
  __chkstk_darwin(v17);
  sub_100002DD0();
  v136 = v18;
  sub_100005238();
  __chkstk_darwin(v19);
  sub_100002DD0();
  v138 = v20;
  sub_100005238();
  __chkstk_darwin(v21);
  v23 = &v129 - v22;
  __chkstk_darwin(v24);
  v26 = &v129 - v25;
  v140 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v27 = sub_10000307C(v140);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10000308C();
  v135 = v30 - v31;
  sub_100005238();
  __chkstk_darwin(v32);
  sub_100002DD0();
  v137 = v33;
  sub_100005238();
  __chkstk_darwin(v34);
  v36 = &v129 - v35;
  __chkstk_darwin(v37);
  sub_100002DF4();
  __chkstk_darwin(v38);
  v40 = &v129 - v39;
  sub_1000B95B4(*a1, *a2);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  v42 = a1[2];
  v43 = a2[2];
  if (v42)
  {
    if (!v43)
    {
      return 0;
    }

    v44 = a1[1] == a2[1] && v42 == v43;
    if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v131 = v8;
  v45 = type metadata accessor for TSDataSyncDeviceState(0);
  v132 = v5;
  v133 = a2;
  v46 = *(v45 + 24);
  sub_1000BB13C();
  v129 = a1;
  v130 = v47;
  sub_1000B9E6C();
  v48 = v132;
  sub_1000B9E6C();
  sub_100007AFC(v40);
  if (v44)
  {
    sub_100007AFC(a2 + v40);
    if (v44)
    {
      sub_100004E24(v40, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_22;
    }

LABEL_19:
    v51 = &qword_1002DACF0;
    v52 = &qword_100232140;
    v53 = v40;
LABEL_20:
    sub_100004E24(v53, v51, v52);
    return 0;
  }

  sub_1000B9E6C();
  sub_100007AFC(a2 + v40);
  if (v49)
  {
    sub_10000F3B4();
    v50(v26, v48);
    goto LABEL_19;
  }

  v54 = v131;
  (*(v131 + 32))(v139, a2 + v40, v48);
  sub_100004A14();
  sub_1000B8EA0(v55, v56);
  v57 = v48;
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v54 + 8);
  v59(v139, v57);
  v59(v26, v57);
  sub_100004E24(v40, &qword_1002DA970, &qword_1002318B0);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v61 = v129;
  v60 = v130;
  v62 = v130[7];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v63 = v60[8];
  sub_1000BB13C();
  sub_100010D4C();
  v64 = v133;
  sub_100010D4C();
  sub_10000A7B8(v2);
  if (v44)
  {
    sub_100007AFC(v60 + v2);
    if (v44)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_1000B9E6C();
  sub_100007AFC(v60 + v2);
  if (v65)
  {
    sub_10000F3B4();
    v66(v23, &qword_1002318B0);
LABEL_31:
    v51 = &qword_1002DACF0;
    v52 = &qword_100232140;
    v53 = v2;
    goto LABEL_20;
  }

  v67 = v131;
  v68 = *(v131 + 32);
  v69 = sub_1000BB0BC();
  v70(v69);
  sub_100004A14();
  sub_1000B8EA0(v71, v72);
  v73 = sub_1000BB0E4();
  v74 = *(v67 + 8);
  v60 = (v67 + 8);
  v75 = v64;
  v64 = v133;
  v74(v75, &qword_1002318B0);
  v74(v23, &qword_1002318B0);
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v76 = v130[9];
  sub_1000BB13C();
  sub_100010D4C();
  sub_100010D4C();
  if (sub_100004DFC(v36, 1, &qword_1002318B0) == 1)
  {
    sub_100007AFC(v60 + v36);
    if (!v44)
    {
      goto LABEL_40;
    }

    sub_100004E24(v36, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
    v77 = v138;
    sub_1000B9E6C();
    sub_100007AFC(v60 + v36);
    if (v44)
    {
      sub_10000F3B4();
      v78(v77, &qword_1002318B0);
LABEL_40:
      v51 = &qword_1002DACF0;
      v52 = &qword_100232140;
      v53 = v36;
      goto LABEL_20;
    }

    sub_10000DB3C();
    v79 = sub_1000BB0BC();
    v80(v79);
    sub_100004A14();
    sub_1000B8EA0(v81, v82);
    sub_1000BB0E4();
    v83 = sub_1000BB148();
    qword_1002318B0(v83, v76);
    qword_1002318B0(v77, v76);
    sub_100004E24(v36, &qword_1002DA970, &qword_1002318B0);
    if ((&qword_1002DA970 & 1) == 0)
    {
      return 0;
    }
  }

  v84 = v130;
  if (*(v61 + v130[10]) != *(v64 + v130[10]))
  {
    return 0;
  }

  sub_1000BB11C(v130[11]);
  if (!v44)
  {
    return 0;
  }

  if (*(v61 + v84[12]) != *(v64 + v84[12]))
  {
    return 0;
  }

  sub_1000BB11C(v84[13]);
  if (!v44)
  {
    return 0;
  }

  sub_1000BB11C(v84[14]);
  if (!v44)
  {
    return 0;
  }

  v85 = v84[15];
  sub_1000BB13C();
  v86 = v137;
  sub_100010D4C();
  sub_100010D4C();
  sub_10000A7B8(v86);
  if (v44)
  {
    sub_100007AFC(v60 + v86);
    if (v44)
    {
      sub_100004E24(v86, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_60;
    }

LABEL_58:
    v51 = &qword_1002DACF0;
    v52 = &qword_100232140;
    v53 = v86;
    goto LABEL_20;
  }

  v87 = v136;
  sub_1000B9E6C();
  sub_100007AFC(v60 + v86);
  if (v88)
  {
    sub_10000F3B4();
    v89(v87, &qword_1002318B0);
    goto LABEL_58;
  }

  sub_10000DB3C();
  v90 = sub_1000BB0BC();
  v91(v90);
  sub_100004A14();
  sub_1000B8EA0(v92, v93);
  sub_1000BB0E4();
  v94 = sub_1000BB148();
  qword_1002318B0(v94, v85);
  qword_1002318B0(v87, v85);
  sub_100004E24(v137, &qword_1002DA970, &qword_1002318B0);
  if ((&qword_1002DA970 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v95 = v84[16];
  sub_1000BB13C();
  v96 = v135;
  sub_100010D4C();
  sub_100010D4C();
  sub_10000A7B8(v96);
  if (v44)
  {
    sub_100007AFC(v60 + v96);
    if (v44)
    {
      sub_100004E24(v96, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_70;
    }

LABEL_68:
    v51 = &qword_1002DACF0;
    v52 = &qword_100232140;
    v53 = v96;
    goto LABEL_20;
  }

  v97 = v134;
  sub_1000B9E6C();
  sub_100007AFC(v60 + v96);
  if (v98)
  {
    sub_10000F3B4();
    v99(v97, &qword_1002318B0);
    goto LABEL_68;
  }

  sub_10000DB3C();
  v100 = sub_1000BB0BC();
  v101(v100);
  sub_100004A14();
  sub_1000B8EA0(v102, v103);
  v104 = sub_1000BB0E4();
  v105 = *(v95 + 8);
  v105(v86, &qword_1002318B0);
  v105(v97, &qword_1002318B0);
  sub_100004E24(v96, &qword_1002DA970, &qword_1002318B0);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  v106 = v130[17];
  v107 = *(v133 + v106);
  if (*(v129 + v106))
  {
    if (!v107)
    {
      return 0;
    }

    v108 = *(v133 + v106);

    sub_1001139C4();
    v110 = v109;

    if ((v110 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v112 = v130[18];
  v113 = (v129 + v112);
  v114 = *(v129 + v112 + 16);
  v155 = *(v129 + v112);
  v156 = v114;
  v115 = *(v129 + v112 + 16);
  v116 = *(v129 + v112 + 48);
  v157 = *(v129 + v112 + 32);
  v158 = v116;
  v117 = (v133 + v112);
  v118 = v117[1];
  v159 = *v117;
  v160 = v118;
  v119 = v117[3];
  v161 = v117[2];
  v162 = v119;
  v120 = v155;
  v152 = v115;
  v153 = v157;
  v154 = v113[3];
  if (*(&v155 + 1) == 1)
  {
    if (*(&v159 + 1) == 1)
    {
      *&v146[0] = v155;
      *(&v146[0] + 1) = 1;
      sub_100008A50(v113);
      sub_1000BB100();
      sub_1000BB100();
      sub_100004E24(v146, &qword_1002DB2E0, &unk_10023F030);
      return 1;
    }

LABEL_80:
    v146[0] = v155;
    sub_100008A50(v113);
    v147 = v122;
    v148 = v121;
    v124 = v123[2];
    v149 = v123[1];
    v150 = v124;
    v151 = v123[3];
    sub_1000BB100();
    sub_1000BB100();
    v51 = &unk_1002DB540;
    v52 = &unk_100232148;
    v53 = v146;
    goto LABEL_20;
  }

  if (*(&v159 + 1) == 1)
  {
    goto LABEL_80;
  }

  v141 = v159;
  v125 = v117[2];
  v142 = v117[1];
  v143 = v125;
  v144 = v117[3];
  v146[2] = v125;
  v146[3] = v144;
  v146[0] = v159;
  v146[1] = v142;
  v126 = v113[1];
  v127 = v113[2];
  v166 = v113[3];
  v165 = v127;
  v164 = v126;
  v163 = v155;
  v128 = sub_1000B66FC();
  sub_100010D4C();
  sub_100010D4C();
  sub_100004E24(&v141, &qword_1002DB2E0, &unk_10023F030);
  v145[0] = v120;
  v145[1] = v152;
  v145[2] = v153;
  v145[3] = v154;
  sub_100004E24(v145, &qword_1002DB2E0, &unk_10023F030);
  return v128;
}

void sub_1000B5760()
{
  sub_100004868();
  v2 = v0;
  v3 = sub_100099DF4(&qword_1002DB520, &unk_100232130);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  sub_100002810();
  sub_1000B9AFC();
  sub_10000A484();
  *&v34 = *v0;
  LOBYTE(v30) = 0;
  sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
  sub_1000B9C90(&qword_1002DACD8, &qword_1002DACE0);
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    (*(v5 + 8))(v10, v3);
  }

  else
  {
    v11 = v0[1];
    v12 = v0[2];
    LOBYTE(v34) = 1;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = type metadata accessor for TSDataSyncDeviceState(0);
    v14 = v13[6];
    LOBYTE(v34) = 2;
    type metadata accessor for Date();
    sub_100004A14();
    sub_1000B8EA0(v15, v16);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000065B8(v13[7]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000065B8(v13[8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000065B8(v13[9]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v2 + v13[10]);
    LOBYTE(v34) = 6;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v2 + v13[11]);
    LOBYTE(v34) = 7;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v2 + v13[12]);
    LOBYTE(v34) = 8;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v2 + v13[13]);
    LOBYTE(v34) = 9;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v2 + v13[14]);
    LOBYTE(v34) = 10;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000065B8(v13[15]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000065B8(v13[16]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39 = *(v2 + v13[17]);
    v38 = 13;
    sub_100099DF4(&qword_1002DB3C0, &qword_100231C08);
    sub_1000B9D2C();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = (v2 + v13[18]);
    v23 = v22[1];
    v34 = *v22;
    v35 = v23;
    v24 = v22[3];
    v26 = *v22;
    v25 = v22[1];
    v36 = v22[2];
    v37 = v24;
    v30 = v26;
    v31 = v25;
    v27 = v22[3];
    v32 = v22[2];
    v33 = v27;
    v29 = 14;
    sub_1000B9E6C();
    sub_1000B9E18();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    sub_100004E24(v28, &qword_1002DB2E0, &unk_10023F030);
    (*(v5 + 8))(v10, v3);
  }

  sub_100005074();
}

void sub_1000B5BC0()
{
  sub_100004868();
  v3 = v2;
  v74 = v4;
  v5 = type metadata accessor for Date();
  v6 = sub_100003724(v5);
  v79 = v7;
  v80 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000306C();
  v82 = v11 - v10;
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_10000308C();
  v75 = v14 - v15;
  sub_100005238();
  __chkstk_darwin(v16);
  v18 = &v72 - v17;
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  __chkstk_darwin(v22);
  sub_100002DF4();
  __chkstk_darwin(v23);
  v25 = &v72 - v24;
  v78 = sub_100099DF4(&qword_1002DB4F8, &unk_100232120);
  sub_100003724(v78);
  v76 = v26;
  v28 = *(v27 + 64);
  sub_100003774();
  __chkstk_darwin(v29);
  v31 = &v72 - v30;
  v83 = type metadata accessor for TSDataSyncDeviceState(0);
  v32 = sub_10000307C(v83);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_10000306C();
  v84 = (v36 - v35);
  v38 = v3[3];
  v37 = v3[4];
  v81 = v3;
  sub_10000C4FC(v3, v38);
  sub_1000B9AFC();
  v77 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    v40 = 0;
    LODWORD(v54) = 0;
    v41 = 0;
    v42 = 0;
    v82 = v0;
    sub_100004118(v81);
    v43 = v84;
    v47 = 0;
    v48 = 0;
    v59 = 0;
  }

  else
  {
    v39 = v82;
    v73 = v18;
    sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
    sub_1000B9C90(&qword_1002DACB8, &qword_1002DACC0);
    sub_100002990();
    v40 = v78;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v84;
    *v84 = v85;
    sub_10000B9BC(1);
    *(v50 + 1) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v50 + 2) = v51;
    LOBYTE(v85) = 2;
    sub_100004A14();
    sub_1000B8EA0(v52, v53);
    v54 = v80;
    sub_10000B334();
    v72 = v55;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v25, &v50[v83[6]]);
    sub_100013DB8(3);
    sub_10000B334();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v79 + 32))(&v50[v83[7]], v39, v54);
    sub_100013DB8(4);
    sub_10000B334();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v1, &v50[v83[8]]);
    sub_100013DB8(5);
    sub_10000B334();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v21, &v50[v83[9]]);
    sub_10000B9BC(6);
    *&v50[v83[10]] = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000B9BC(7);
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v84[v83[11]] = v56;
    sub_10000B9BC(8);
    *&v84[v83[12]] = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000B9BC(9);
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v84[v83[13]] = v57;
    sub_10000AF40(10);
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v84[v83[14]] = v58;
    sub_100013DB8(11);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v59 = 1;
    v82 = 0;
    sub_1000A99D8(v73, &v84[v83[15]]);
    sub_100013DB8(12);
    v60 = v82;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v82 = v60;
    if (v60)
    {
      v61 = sub_1000BB12C();
      v62(v61);
      v48 = 0;
      v47 = 0;
    }

    else
    {
      sub_1000A99D8(v75, &v84[v83[16]]);
      sub_100099DF4(&qword_1002DB3C0, &qword_100231C08);
      sub_1000B9B50();
      sub_100002990();
      v63 = v82;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v82 = v63;
      if (v63)
      {
        v64 = sub_1000BB12C();
        v65(v64);
        v47 = 0;
        v48 = 1;
      }

      else
      {
        *&v84[v83[17]] = v85;
        sub_1000B9C3C();
        v66 = v82;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v67 = (v76 + 8);
        v82 = v66;
        if (!v66)
        {
          (*v67)(v77, v78);
          v68 = v84;
          v69 = &v84[v83[18]];
          v70 = v86;
          *v69 = v85;
          *(v69 + 1) = v70;
          v71 = v88;
          *(v69 + 2) = v87;
          *(v69 + 3) = v71;
          sub_1000B9EC8();
          sub_100004118(v81);
          sub_1000B9F24(v68, type metadata accessor for TSDataSyncDeviceState);
          goto LABEL_21;
        }

        (*v67)(v77, v78);
        v48 = 1;
        v47 = 1;
      }
    }

    sub_100004118(v81);
    sub_10000EDC8();
    v41 = 1;
    v42 = 1;
    v43 = v84;
    v44 = *v84;

    if (v21)
    {
      v45 = *(v43 + 2);

      if ((v40 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  if (!v40)
  {
LABEL_6:
    v46 = v83;
    if (v54)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v46 = v83;
  sub_100004E24(&v43[v83[6]], &qword_1002DA970, &qword_1002318B0);
  if (v54)
  {
LABEL_7:
    (*(v79 + 8))(&v43[v46[7]], v80);
    if ((v41 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!v41)
  {
LABEL_8:
    if (v42)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_100004E24(&v43[v46[8]], &qword_1002DA970, &qword_1002318B0);
  if (v42)
  {
LABEL_9:
    sub_100004E24(&v43[v46[9]], &qword_1002DA970, &qword_1002318B0);
    if ((v59 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v59)
  {
LABEL_10:
    if (v48)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_100004E24(&v43[v46[15]], &qword_1002DA970, &qword_1002318B0);
  if (v48)
  {
LABEL_11:
    sub_100004E24(&v43[v46[16]], &qword_1002DA970, &qword_1002318B0);
    if ((v47 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (v47)
  {
LABEL_20:
    v49 = *&v43[v46[17]];
  }

LABEL_21:
  sub_100005074();
}

uint64_t sub_1000B64E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001002725F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746544726F727265 && a2 == 0xEC000000736C6961)
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

unint64_t sub_1000B6660(char a1)
{
  result = 0x646F43726F727265;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6D6F44726F727265;
      break;
    case 3:
      result = 0x746544726F727265;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

BOOL sub_1000B66FC()
{
  sub_100002FBC();
  v3 = *(v2 + 8);
  v4 = *(v0 + 8);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!*(v0 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 16) != *(v0 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(v1 + 40);
  v8 = *(v0 + 40);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v1 + 32) == *(v0 + 32) && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v1 + 56);
  v11 = *(v0 + 56);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v1 + 48) == *(v0 + 48) && v10 == v11;
    return v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v11;
}

void sub_1000B67F4()
{
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DB558, &qword_100232158);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000B9F7C();
  sub_10000A484();
  v6 = *v1;
  v7 = v1[1];
  sub_100003B48();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = *(v1 + 24);
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v1[4];
    v11 = v1[5];
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v1[6];
    v13 = v1[7];
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v14 = sub_10000EF58();
  v15(v14);
  sub_1000048A0();
}

void sub_1000B6948()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DB548, &qword_100232150);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  sub_1000B9F7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    sub_10000D484();
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    sub_10000AF40(1);
    sub_10000D484();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v17 & 1;
    sub_10000AF40(2);
    sub_10000D484();
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v18;
    sub_10000D484();
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = *(v7 + 8);
    v28 = v19;
    v22 = v21;
    v20(v12, v5);
    v32[0] = v14;
    v32[1] = v16;
    v23 = v29;
    v32[2] = v30;
    v33 = v43;
    v24 = v31;
    v34 = v29;
    v35 = v31;
    *&v36 = v28;
    *(&v36 + 1) = v22;
    sub_1000B9FD0(v32, v37);
    sub_100004118(v2);
    v37[0] = v14;
    v37[1] = v16;
    v37[2] = v30;
    v38 = v43;
    v39 = v23;
    v40 = v24;
    v41 = v28;
    v42 = v22;
    sub_1000B2E50(v37);
    v25 = sub_1000BB160();
    v26 = v36;
    *(v4 + 32) = v25;
    *(v4 + 48) = v26;
  }

  sub_100005074();
}

uint64_t sub_1000B6BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B4518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B6BF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B4998();
  *a1 = result;
  return result;
}

uint64_t sub_1000B6C20(uint64_t a1)
{
  v2 = sub_1000B9AFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6C5C(uint64_t a1)
{
  v2 = sub_1000B9AFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B6CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B64E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B6CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B6658();
  *a1 = result;
  return result;
}

uint64_t sub_1000B6D24(uint64_t a1)
{
  v2 = sub_1000B9F7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6D60(uint64_t a1)
{
  v2 = sub_1000B9F7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B6D9C@<D0>(_OWORD *a1@<X8>)
{
  sub_1000B6948();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

BOOL sub_1000B6DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1000B6E50(uint64_t a1)
{
  v2 = sub_1000BAB40();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000B6E8C(uint64_t a1)
{
  v2 = sub_1000BAB40();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000B6EE4(uint64_t a1)
{
  v2 = sub_1000BB008();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1000B6F20(uint64_t a1)
{
  v2 = sub_1000BB008();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000B6F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F536469 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F446469 && a2 == 0xE800000000000000)
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

uint64_t sub_1000B7084(char a1)
{
  if (!a1)
  {
    return 0x63617073656D616ELL;
  }

  if (a1 == 1)
  {
    return 0x656372756F536469;
  }

  return 0x6E69616D6F446469;
}

uint64_t sub_1000B70E0(uint64_t *a1)
{
  v4 = sub_10000B7D8(a1) == *v1 && v3 == *(v1 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100152BEC(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000B716C()
{
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DB600, &qword_100232190);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000BA388();
  sub_10000A484();
  v6 = *v1;
  v7 = v1[1];
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v12 = *(v1 + 16);
    sub_1000BA430();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = v1[3];
    v9 = v1[4];
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v10 = sub_10000EF58();
  v11(v10);
  sub_1000048A0();
}

uint64_t sub_1000B72B8()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  *(v0 + 16);
  String.hash(into:)();

  v3 = v0[3];
  v4 = v0[4];

  return String.hash(into:)();
}

Swift::Int sub_1000B7360()
{
  sub_100005BE8();
  sub_1000B72B8();
  return Hasher._finalize()();
}

void sub_1000B7398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, unsigned __int8 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_100099DF4(&qword_1002DB5E8, &qword_100232188);
  sub_100003724(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  sub_100003774();
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  v39 = v28[4];
  sub_10000C4FC(v28, v28[3]);
  sub_1000BA388();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100004118(v28);
  }

  else
  {
    a14 = 0;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v41;
    a12 = 1;
    sub_1000BA3DC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    a10 = a13;
    a11 = 2;
    v43 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = v38;
    v46 = v45;
    (*(v33 + 8))(v44, v31);
    sub_100004118(v28);
    *v30 = v40;
    *(v30 + 8) = v42;
    *(v30 + 16) = a10;
    *(v30 + 24) = v43;
    *(v30 + 32) = v46;
  }

  sub_100005074();
}

uint64_t sub_1000B75A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C525561746164 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001002726B0 == a2)
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

uint64_t sub_1000B76C4(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x4C525561746164;
  }

  return 0xD000000000000015;
}

uint64_t sub_1000B7724(uint64_t *a1)
{
  v3 = sub_10000B7D8(a1);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = v3 == *v1 && v4 == *(v1 + 8);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152BEC(v5, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = v6 == v9 && v7 == v10;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v14 = *(v13 + 20);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v13 + 24);
  v16 = *(v2 + v15);
  v17 = *(v1 + v15);

  return sub_100143328(v16, v17);
}

void sub_1000B7818()
{
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DB598, &qword_100232170);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000BA008();
  sub_10000A484();
  v12 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 16);
  v16 = v1[3];
  v17 = v1[4];
  sub_1000BA104();
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v6 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
    v7 = *(v6 + 20);
    type metadata accessor for URL();
    sub_100007EF4();
    sub_1000B8EA0(v8, v9);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v1 + *(v6 + 24));
    sub_100099DF4(&qword_1002DB580, &qword_100232168);
    sub_1000BA158(&qword_1002DB5B0, sub_1000BA1D0);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v10 = sub_10000EF58();
  v11(v10);
  sub_1000048A0();
}

void sub_1000B7A24(uint64_t a1)
{
  v2 = v1;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 4);
  sub_1000B72B8();
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v5 = *(v4 + 20);
  type metadata accessor for URL();
  sub_100007EF4();
  sub_1000B8EA0(v6, v7);
  dispatch thunk of Hashable.hash(into:)();
  v8 = *(v2 + *(v4 + 24));

  sub_10011404C(a1, v8);
}

Swift::Int sub_1000B7AE8()
{
  v1 = v0;
  sub_100005BE8();
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v11 = *(v0 + 4);
  sub_1000B72B8();
  v3 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v4 = *(v3 + 20);
  type metadata accessor for URL();
  sub_100007EF4();
  sub_1000B8EA0(v5, v6);
  dispatch thunk of Hashable.hash(into:)();
  sub_10011404C(v8, *(v1 + *(v3 + 24)));
  return Hasher._finalize()();
}

void sub_1000B7BA4()
{
  sub_100004868();
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = sub_100003724(v3);
  v26 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v10 = v9 - v8;
  v27 = sub_100099DF4(&qword_1002DB560, &qword_100232160);
  sub_100003724(v27);
  v12 = *(v11 + 64);
  sub_100003774();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v15 = sub_10000307C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000306C();
  v20 = v19 - v18;
  v21 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  sub_1000BA008();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_1000BA05C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v20 = v28;
    *(v20 + 8) = v29;
    *(v20 + 16) = v30;
    *(v20 + 24) = v31;
    *(v20 + 32) = v32;
    LOBYTE(v28) = 1;
    sub_100007EF4();
    sub_1000B8EA0(v22, v23);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v26 + 32))(v20 + *(v14 + 20), v10, v3);
    sub_100099DF4(&qword_1002DB580, &qword_100232168);
    sub_1000BA158(&qword_1002DB588, sub_1000BA0B0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = sub_100008D54();
    v25(v24);
    *(v20 + *(v14 + 24)) = v28;
    sub_1000B9EC8();
    sub_100004118(0);
    sub_1000B9F24(v20, type metadata accessor for TSDataSyncDatasetGroupConfig);
  }

  sub_100005074();
}

uint64_t sub_1000B7F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E74657361746164 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F4D636E7973 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C756465686373 && a2 == 0xED00004354557349)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

Swift::Int sub_1000B813C(unsigned __int8 a1)
{
  sub_100005BE8();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000B817C(char a1)
{
  result = 0x4E74657361746164;
  switch(a1)
  {
    case 1:
      result = 0x797469726F697270;
      break;
    case 2:
      result = 0x65646F4D636E7973;
      break;
    case 3:
    case 4:
      result = 0x656C756465686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B821C(uint64_t *a1)
{
  v4 = sub_10000B7D8(a1) == *v1 && v3 == *(v1 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v6 = *(v1 + 32);
  v7 = sub_1000B9204(*(v2 + 32));
  v9 = v8;
  if (v7 == sub_1000B9204(v6) && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
LABEL_24:
      v14 = 0;
      return v14 & 1;
    }
  }

  v13 = *(v2 + 40) == *(v1 + 40) && *(v2 + 48) == *(v1 + 48);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = *(v2 + 56) ^ *(v1 + 56) ^ 1;
  return v14 & 1;
}

void sub_1000B8334()
{
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DB5D8, &qword_100232180);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100002810();
  sub_1000BA224();
  sub_10000A484();
  v6 = *v1;
  v7 = v1[1];
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v1 + 32);
    sub_1000BA334();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v1[5];
    v11 = v1[6];
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v1 + 56);
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v13 = sub_10000EF58();
  v14(v13);
  sub_1000048A0();
}

void sub_1000B84C4()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  sub_1000B9204(*(v0 + 32));
  String.hash(into:)();

  v5 = v0[5];
  v6 = v0[6];
  String.hash(into:)();
  Hasher._combine(_:)(v0[7] & 1);
}

Swift::Int sub_1000B8544()
{
  sub_100005BE8();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  sub_1000B9204(*(v0 + 32));
  sub_10000A1CC();

  v5 = v0[5];
  v6 = v0[6];
  String.hash(into:)();
  Hasher._combine(_:)(v0[7] & 1);
  return Hasher._finalize()();
}

void sub_1000B85BC()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DB5C0, &qword_100232178);
  sub_100003724(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  sub_1000BA224();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v26[0]) = 0;
    sub_1000BB0AC();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v11;
    sub_10000AF40(1);
    sub_1000BB0AC();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v13;
    v19 = v12;
    LOBYTE(v23[0]) = 2;
    sub_1000BA278();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000AF40(3);
    sub_1000BB0AC();
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v14;
    sub_1000BB0AC();
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = sub_100005270();
    v17(v16);
    v23[0] = v10;
    v23[1] = v22;
    v23[2] = v19;
    v23[3] = v21;
    v24 = 0;
    *v25 = v18;
    *&v25[8] = v20;
    v25[16] = v15 & 1;
    sub_1000BA2CC(v23, v26);
    sub_100004118(v2);
    v26[0] = v10;
    v26[1] = v22;
    v26[2] = v19;
    v26[3] = v21;
    v27 = 0;
    v28 = v18;
    v29 = v20;
    v30 = v15 & 1;
    sub_1000BA304(v26);
    *(v4 + 32) = sub_1000BB160();
    *(v4 + 41) = *&v25[1];
  }

  sub_100005074();
}

unint64_t sub_1000B8894(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3560, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B88E0(char a1)
{
  if (!a1)
  {
    return 1684632420;
  }

  if (a1 == 1)
  {
    return 0x444972657375;
  }

  return 0x4449746E65696C63;
}

uint64_t sub_1000B8950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B6F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B707C();
  *a1 = result;
  return result;
}

uint64_t sub_1000B89A0(uint64_t a1)
{
  v2 = sub_1000BA388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B89DC(uint64_t a1)
{
  v2 = sub_1000BA388();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000B8A20()
{
  Hasher.init(_seed:)();
  sub_1000B72B8();
  return Hasher._finalize()();
}

unint64_t sub_1000B8AC4()
{
  result = qword_1002DB4D0;
  if (!qword_1002DB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB4D0);
  }

  return result;
}

uint64_t sub_1000B8B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B75A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8B48(uint64_t a1)
{
  v2 = sub_1000BA008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B8B84(uint64_t a1)
{
  v2 = sub_1000BA008();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000B8BC8()
{
  Hasher.init(_seed:)();
  sub_1000B7A24(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B8C38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1000B8C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B7F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B8134();
  *a1 = result;
  return result;
}

uint64_t sub_1000B8CDC(uint64_t a1)
{
  v2 = sub_1000BA224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B8D18(uint64_t a1)
{
  v2 = sub_1000BA224();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000B8D5C()
{
  Hasher.init(_seed:)();
  sub_1000B84C4();
  return Hasher._finalize()();
}

double sub_1000B8D98@<D0>(_OWORD *a1@<X8>)
{
  sub_1000B85BC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = *v6;
    result = *&v6[9];
    *(a1 + 41) = *&v6[9];
  }

  return result;
}

unint64_t sub_1000B8E04()
{
  result = qword_1002DB4D8;
  if (!qword_1002DB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB4D8);
  }

  return result;
}

uint64_t sub_1000B8EA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B8EF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B8894(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B8F24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B88E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B901C()
{
  result = qword_1002DB4E8;
  if (!qword_1002DB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB4E8);
  }

  return result;
}

unint64_t sub_1000B9070()
{
  result = qword_1002DB4F0;
  if (!qword_1002DB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB4F0);
  }

  return result;
}

uint64_t sub_1000B90C4()
{
  v0 = String.lowercased()();
  v1 = v0._countAndFlagsBits == 1684632420 && v0._object == 0xE400000000000000;
  if (v1 || (sub_100004EE8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v3 = v0._countAndFlagsBits == 0x646972657375 && v0._object == 0xE600000000000000;
    if (v3 || (sub_100004EE8() & 1) != 0)
    {

      return 1;
    }

    else if (v0._countAndFlagsBits == 0x6469746E65696C63 && v0._object == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v5 = sub_100004EE8();

      if (v5)
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

unint64_t sub_1000B91B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B35C8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000B9204(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B9300@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B91B8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000B9330@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B9204(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B940C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1000B95B4(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v4 = sub_100003724(v65);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000308C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_100002DD0();
  v63 = v11;
  sub_100005238();
  __chkstk_darwin(v12);
  v15 = &v54 - v14;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v16 = 0;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v70 = a2 + 56;
  v60 = a1 + 56;
  v59 = v21;
  if (!v20)
  {
    goto LABEL_8;
  }

  do
  {
    v54 = (v20 - 1) & v20;
LABEL_13:
    v55 = v16;
    v58 = a1;
    v24 = *(a1 + 48);
    v57 = v13;
    v69 = *(v13 + 72);
    sub_1000044EC();
    sub_1000B9EC8();
    v56 = v15;
    v25 = v63;
    sub_1000B3164(v15, v63);
    v26 = *(a2 + 40);
    Hasher.init(_seed:)();
    v27 = *(v25 + 16);
    v72 = *v25;
    v73 = v27;
    v74 = *(v25 + 32);
    sub_1000B72B8();
    v28 = v65;
    v29 = *(v65 + 20);
    type metadata accessor for URL();
    sub_100007EF4();
    sub_1000B8EA0(&qword_1002DAC98, v30);
    v62 = v29;
    dispatch thunk of Hashable.hash(into:)();
    v61 = *(v25 + *(v28 + 24));
    sub_10011404C(v71, v61);
    v31 = Hasher._finalize()();
    v32 = -1 << *(a2 + 32);
    v33 = v31 & ~v32;
    if (((*(v70 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
LABEL_57:
      sub_1000BB094();
      sub_1000B9F24(v63, v53);
      return;
    }

    v68 = ~v32;
    v34 = v73;
    v35 = v72;
    v66 = v74;
    v67 = *(&v73 + 1);
    v64 = v73;
    while (1)
    {
      v36 = *(a2 + 48);
      sub_1000044EC();
      sub_1000B9EC8();
      v37 = *(v9 + 16);
      v38 = *(v9 + 24);
      v39 = *(v9 + 32);
      v40 = *v9 == v35 && *(v9 + 8) == *(&v35 + 1);
      if (!v40 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_52;
      }

      v41 = a2;
      v42 = 0x4449746E65696C63;
      if (v37 == 1)
      {
        v42 = 0x444972657375;
      }

      v43 = 0xE600000000000000;
      if (v37 != 1)
      {
        v43 = 0xE800000000000000;
      }

      v44 = v37 ? v42 : 1684632420;
      v45 = v37 ? v43 : 0xE400000000000000;
      if (v34)
      {
        v46 = v34 == 1 ? 0x444972657375 : 0x4449746E65696C63;
        v47 = v34 == 1 ? 0xE600000000000000 : 0xE800000000000000;
      }

      else
      {
        v47 = 0xE400000000000000;
        v46 = 1684632420;
      }

      if (v44 == v46 && v45 == v47)
      {
        break;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v41;
      v34 = v64;
      if (v49)
      {
        goto LABEL_45;
      }

LABEL_52:
      sub_1000BB094();
      sub_1000B9F24(v9, v52);
      v33 = (v33 + 1) & v68;
      if (((*(v70 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    a2 = v41;
    v34 = v64;
LABEL_45:
    v50 = v38 == v67 && v39 == v66;
    if (!v50 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_52;
    }

    v51 = v9 + *(v65 + 20);
    if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_100143328(*(v9 + *(v65 + 24)), v61) & 1) == 0)
    {
      goto LABEL_52;
    }

    sub_1000B9F24(v9, type metadata accessor for TSDataSyncDatasetGroupConfig);
    sub_1000B9F24(v63, type metadata accessor for TSDataSyncDatasetGroupConfig);
    a1 = v58;
    v13 = v57;
    v15 = v56;
    v16 = v55;
    v17 = v60;
    v21 = v59;
    v20 = v54;
  }

  while (v54);
LABEL_8:
  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return;
    }

    v23 = *(v17 + 8 * v16);
    ++v22;
    if (v23)
    {
      v54 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_1000B9AFC()
{
  result = qword_1002DB500;
  if (!qword_1002DB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB500);
  }

  return result;
}

unint64_t sub_1000B9B50()
{
  result = qword_1002DB508;
  if (!qword_1002DB508)
  {
    sub_10009A468(&qword_1002DB3C0, &qword_100231C08);
    sub_1000B8EA0(&qword_1002DB510, &type metadata accessor for AccountIdentity);
    sub_1000B8EA0(&qword_1002DACC8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB508);
  }

  return result;
}

unint64_t sub_1000B9C3C()
{
  result = qword_1002DB518;
  if (!qword_1002DB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB518);
  }

  return result;
}

uint64_t sub_1000B9C90(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DACB0, &qword_10022FB98);
    sub_1000B8EA0(a2, type metadata accessor for TSDataSyncDatasetGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B9D2C()
{
  result = qword_1002DB528;
  if (!qword_1002DB528)
  {
    sub_10009A468(&qword_1002DB3C0, &qword_100231C08);
    sub_1000B8EA0(&qword_1002DB530, &type metadata accessor for AccountIdentity);
    sub_1000B8EA0(&qword_1002DACE8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB528);
  }

  return result;
}

unint64_t sub_1000B9E18()
{
  result = qword_1002DB538;
  if (!qword_1002DB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB538);
  }

  return result;
}

uint64_t sub_1000B9E6C()
{
  sub_100002FBC();
  v4 = sub_100099DF4(v2, v3);
  sub_10000307C(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000B9EC8()
{
  sub_100002FBC();
  v3 = v2(0);
  sub_10000307C(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000B9F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1000B9F7C()
{
  result = qword_1002DB550;
  if (!qword_1002DB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB550);
  }

  return result;
}

unint64_t sub_1000BA008()
{
  result = qword_1002DB568;
  if (!qword_1002DB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB568);
  }

  return result;
}

unint64_t sub_1000BA05C()
{
  result = qword_1002DB570;
  if (!qword_1002DB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB570);
  }

  return result;
}

unint64_t sub_1000BA0B0()
{
  result = qword_1002DB590;
  if (!qword_1002DB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB590);
  }

  return result;
}

unint64_t sub_1000BA104()
{
  result = qword_1002DB5A0;
  if (!qword_1002DB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB5A0);
  }

  return result;
}

uint64_t sub_1000BA158(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DB580, &qword_100232168);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BA1D0()
{
  result = qword_1002DB5B8;
  if (!qword_1002DB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB5B8);
  }

  return result;
}

unint64_t sub_1000BA224()
{
  result = qword_1002DB5C8;
  if (!qword_1002DB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB5C8);
  }

  return result;
}

unint64_t sub_1000BA278()
{
  result = qword_1002DB5D0;
  if (!qword_1002DB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB5D0);
  }

  return result;
}

unint64_t sub_1000BA334()
{
  result = qword_1002DB5E0;
  if (!qword_1002DB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB5E0);
  }

  return result;
}

unint64_t sub_1000BA388()
{
  result = qword_1002DB5F0;
  if (!qword_1002DB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB5F0);
  }

  return result;
}

unint64_t sub_1000BA3DC()
{
  result = qword_1002DB5F8;
  if (!qword_1002DB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB5F8);
  }

  return result;
}

unint64_t sub_1000BA430()
{
  result = qword_1002DB608;
  if (!qword_1002DB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB608);
  }

  return result;
}

uint64_t sub_1000BA484(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000BA4C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1000BA534(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TSDataSyncDeviceMetricsFields.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TSDataSyncDeviceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDeviceState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1000BA850(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000BA930()
{
  result = qword_1002DB610;
  if (!qword_1002DB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB610);
  }

  return result;
}

unint64_t sub_1000BA988()
{
  result = qword_1002DB618;
  if (!qword_1002DB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB618);
  }

  return result;
}

unint64_t sub_1000BA9E0()
{
  result = qword_1002DB620;
  if (!qword_1002DB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB620);
  }

  return result;
}

unint64_t sub_1000BAA38()
{
  result = qword_1002DB628;
  if (!qword_1002DB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB628);
  }

  return result;
}

unint64_t sub_1000BAA90()
{
  result = qword_1002DB630;
  if (!qword_1002DB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB630);
  }

  return result;
}

unint64_t sub_1000BAAE8()
{
  result = qword_1002DB638;
  if (!qword_1002DB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB638);
  }

  return result;
}

unint64_t sub_1000BAB40()
{
  result = qword_1002DB640;
  if (!qword_1002DB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB640);
  }

  return result;
}

unint64_t sub_1000BAB98()
{
  result = qword_1002DB648;
  if (!qword_1002DB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB648);
  }

  return result;
}

unint64_t sub_1000BABF0()
{
  result = qword_1002DB650;
  if (!qword_1002DB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB650);
  }

  return result;
}

unint64_t sub_1000BAC48()
{
  result = qword_1002DB658;
  if (!qword_1002DB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB658);
  }

  return result;
}

unint64_t sub_1000BACA0()
{
  result = qword_1002DB660;
  if (!qword_1002DB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB660);
  }

  return result;
}

unint64_t sub_1000BACF8()
{
  result = qword_1002DB668;
  if (!qword_1002DB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB668);
  }

  return result;
}

unint64_t sub_1000BAD50()
{
  result = qword_1002DB670;
  if (!qword_1002DB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB670);
  }

  return result;
}

unint64_t sub_1000BADA8()
{
  result = qword_1002DB678;
  if (!qword_1002DB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB678);
  }

  return result;
}

unint64_t sub_1000BAE00()
{
  result = qword_1002DB680;
  if (!qword_1002DB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB680);
  }

  return result;
}

unint64_t sub_1000BAE58()
{
  result = qword_1002DB688;
  if (!qword_1002DB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB688);
  }

  return result;
}

unint64_t sub_1000BAEB0()
{
  result = qword_1002DB690;
  if (!qword_1002DB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB690);
  }

  return result;
}

unint64_t sub_1000BAF08()
{
  result = qword_1002DB698;
  if (!qword_1002DB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB698);
  }

  return result;
}

unint64_t sub_1000BAF60()
{
  result = qword_1002DB6A0;
  if (!qword_1002DB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB6A0);
  }

  return result;
}

unint64_t sub_1000BAFB4()
{
  result = qword_1002DB6A8;
  if (!qword_1002DB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB6A8);
  }

  return result;
}

unint64_t sub_1000BB008()
{
  result = qword_1002DB6B0;
  if (!qword_1002DB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB6B0);
  }

  return result;
}

uint64_t sub_1000BB0CC()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000BB0E4()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000BB100()
{

  return sub_1000B9E6C();
}

double sub_1000BB11C@<D0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_1000BB12C()
{
  result = *(v0 - 216);
  v2 = *(*(v0 - 224) + 8);
  v3 = *(v0 - 208);
  return result;
}

__n128 sub_1000BB160()
{
  v2 = *(v1 - 200);
  *v0 = *(v1 - 216);
  v0[1] = v2;
  return *(v1 - 184);
}

uint64_t sub_1000BB174@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for TSDataSyncConfigStoreCore() + 20);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 16))(a1, v2 + v13, v14);
  sub_100007F0C();
  v15 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v16 = *(v7 + 104);
  v16(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_1000BBBB0();
  sub_1000065DC();
  v17 = *(v7 + 8);
  v17(v12, v4);
  v16(v12, v15, v4);
  sub_1000065DC();
  return (v17)(v12, v4);
}

uint64_t sub_1000BB314()
{
  v2 = type metadata accessor for URL();
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = v0[4];
  sub_10000C4FC(v0, v0[3]);
  sub_1000BB174(v10);
  v12 = dispatch thunk of FileStore.contents(at:)();
  if (v1)
  {
    return (*(v5 + 8))(v10, v2);
  }

  v15 = v12;
  v16 = v13;
  (*(v5 + 8))(v10, v2);
  v17 = type metadata accessor for PropertyListDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000BBC04(&qword_1002DB6C8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10000D170(v15, v16);
}

uint64_t sub_1000BB4C0()
{
  v1 = type metadata accessor for FileStoreProtectionType();
  v2 = sub_100003724(v1);
  v54 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = sub_100003724(v9);
  v55 = v11;
  v56 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v16 = v15 - v14;
  v59 = type metadata accessor for URL();
  v17 = sub_100003724(v59);
  v58 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  v26 = type metadata accessor for PropertyListEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000BBC04(&qword_1002DB6C0);
  v29 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v31 = v30;

  if (!v0)
  {
    v52 = v29;
    v53 = v31;
    v49 = v22;
    v50 = v8;
    v48 = v1;
    v33 = v57;
    v34 = *(v57 + 3);
    v51 = *(v57 + 4);
    sub_10000C4FC(v57, v34);
    v35 = type metadata accessor for TSDataSyncConfigStoreCore();
    v36 = v58;
    (*(v58 + 16))(v25, &v33[*(v35 + 20)], v59);
    sub_100007F0C();
    v37 = v55;
    v38 = v56;
    (*(v55 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v56);
    sub_1000BBBB0();
    URL.append<A>(component:directoryHint:)();
    (*(v37 + 8))(v16, v38);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v39 = *(v36 + 8);
    v58 = v36 + 8;
    v56 = v39;
    v39(v25, v59);
    v40 = *(v57 + 3);
    v55 = *(v57 + 4);
    v51 = sub_10000C4FC(v57, v40);
    v41 = v49;
    sub_1000BB174(v49);
    v42 = v54;
    v43 = v50;
    v44 = v48;
    (*(v54 + 104))(v50, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v48);
    v46 = v52;
    v45 = v53;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_10000D170(v46, v45);
    (*(v42 + 8))(v43, v44);
    return v56(v41, v59);
  }

  return result;
}

uint64_t sub_1000BB8D0()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = sub_100003724(v1);
  v29 = v3;
  v30 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_10000306C();
  v28 = v7 - v6;
  v8 = type metadata accessor for URL();
  v9 = sub_100003724(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  v19 = *(v0 + 4);
  sub_10000C4FC(v0, *(v0 + 3));
  sub_1000BB174(v18);
  v20 = v31;
  dispatch thunk of FileStore.removeItem(at:)();
  if (v20)
  {
    return (*(v11 + 8))(v18, v8);
  }

  v31 = *(v11 + 8);
  v31(v18, v8);
  v22 = *(v0 + 3);
  v27[2] = *(v0 + 4);
  v27[1] = sub_10000C4FC(v0, v22);
  v23 = type metadata accessor for TSDataSyncConfigStoreCore();
  (*(v11 + 16))(v15, &v0[*(v23 + 20)], v8);
  sub_100007F0C();
  v24 = v28;
  v25 = v29;
  v26 = v30;
  (*(v29 + 104))(v28, enum case for URL.DirectoryHint.inferFromPath(_:), v30);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v25 + 8))(v24, v26);
  dispatch thunk of FileStore.removeItem(at:)();
  return (v31)(v15, v8);
}

uint64_t type metadata accessor for TSDataSyncConfigStoreCore()
{
  result = qword_1002DB728;
  if (!qword_1002DB728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000BBBB0()
{
  result = qword_1002DB6B8;
  if (!qword_1002DB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB6B8);
  }

  return result;
}

uint64_t sub_1000BBC04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TSDataSyncDeviceState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BBC70()
{
  result = sub_1000BBCF4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000BBCF4()
{
  result = qword_1002DB738;
  if (!qword_1002DB738)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002DB738);
  }

  return result;
}

uint64_t sub_1000BBD50(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000BBD90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BBDE0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v18[-v10 - 8];
  v12 = type metadata accessor for AccountDataState(0);
  sub_1000C6030(v12, qword_100310590);
  v13 = sub_1000C5FF8(v12, qword_100310590);
  sub_1000C6094(v18);
  static Date.distantPast.getter();
  sub_100002728(v11, 0, 1, v0);
  sub_100002728(v9, 1, 1, v0);
  static Date.distantPast.getter();
  sub_100002728(&v13[v12[9]], 1, 1, v0);
  sub_100002728(&v13[v12[11]], 1, 1, v0);
  v14 = v12[13];
  v15 = type metadata accessor for CachedServerDataSyncAttempt(0);
  sub_100002728(&v13[v14], 1, 1, v15);
  sub_100002728(&v13[v12[14]], 1, 1, v0);
  memcpy(v13, v18, 0x148uLL);
  sub_1000A99D8(v11, &v13[v12[5]]);
  sub_1000A99D8(v9, &v13[v12[6]]);
  result = (*(v1 + 32))(&v13[v12[7]], v4, v0);
  *&v13[v12[8]] = 3;
  *&v13[v12[10]] = 3;
  *&v13[v12[12]] = 0;
  return result;
}

void sub_1000BC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29, void *a30)
{
  sub_100004868();
  v32 = v30;
  v34 = v33;
  v36 = v35;
  v120 = v37;
  v121 = v38;
  v135 = v39;
  v41 = v40;
  v123 = v42;
  v122 = v43;
  v118 = type metadata accessor for FileStoreError();
  v44 = sub_100003724(v118);
  v115 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_1000030E4();
  sub_100008280(v48);
  v114 = type metadata accessor for URL();
  v49 = sub_100003724(v114);
  v113 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  sub_1000030E4();
  sub_100008280(v53);
  v119 = type metadata accessor for Log();
  v54 = sub_100003724(v119);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v57);
  sub_10000D478();
  v59 = sub_100008280(v58);
  v116 = type metadata accessor for AccountDataState(v59);
  v60 = sub_10000307C(v116);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  sub_10000306C();
  v65 = v64 - v63;
  v66 = type metadata accessor for AccountIdentity();
  v67 = sub_100003724(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  __chkstk_darwin(v67);
  sub_10000306C();
  v74 = (v73 - v72);
  swift_defaultActor_initialize();
  v75 = sub_10000C4FC(v41, v41[3]);
  v130 = v69;
  v76 = *(v69 + 16);
  v76(v74, v75, v66);
  v111 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  v131 = v66;
  v76(v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID, v74, v66);
  v77 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account;
  v132 = v41;
  sub_100007974(v41, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  v110 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics;
  sub_100007974(v135, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics);
  v78 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_store);
  *v78 = v36;
  v78[1] = v34;
  v79 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_requester);
  *v79 = v120;
  v79[1] = v121;
  v80 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_scheduler);
  *v80 = v122;
  v80[1] = v123;
  v81 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_notifier);
  *v81 = a21;
  v81[1] = a22;
  v82 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountFinder);
  *v82 = a23;
  v82[1] = a24;
  v83 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore);
  *v83 = a25;
  v83[1] = a26;
  v84 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_deviceInformation);
  *v84 = a27;
  v84[1] = a28;
  v127 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults;
  sub_100007974(a29, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults);
  v126 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_bag;
  *(v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_bag) = a30;
  v85 = *(v34 + 8);
  v86 = a30;
  v85(v74, v36, v34);
  if (!v31)
  {
    sub_1000084E4(v65, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v93 = type metadata accessor for LogInterpolation();
    sub_100003B78(v93);
    v95 = *(v94 + 72);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v134 = type metadata accessor for AccountDataAccessActor();
    v133[0] = v32;

    v96 = AMSLogKey();
    if (v96)
    {
      v97 = v96;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v105 = v131;
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v133);
    LogInterpolation.init(stringLiteral:)();
    v134 = v131;
    sub_100007914(v133);
    sub_1000C70AC();
    v107();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v133, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    goto LABEL_15;
  }

  v133[0] = v31;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v129 = v86;

    if (qword_1002DA590 != -1)
    {
      swift_once();
    }

    sub_1000C5FF8(v116, qword_100310590);
    sub_100007F24();
    sub_1000C6B44(v99, v32 + v98);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v100 = type metadata accessor for LogInterpolation();
    sub_100003B78(v100);
    v102 = *(v101 + 72);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v134 = type metadata accessor for AccountDataAccessActor();
    v133[0] = v32;

    v103 = AMSLogKey();
    if (v103)
    {
      v104 = v103;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000C726C();
    }

    else
    {
      sub_1000033C0();
    }

    sub_10000D40C();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v133);
    LogInterpolation.init(stringLiteral:)();
    v105 = v131;
    v134 = v131;
    sub_100007914(v133);
    sub_1000C70AC();
    v106();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v133, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

LABEL_15:
    sub_100004118(a29);
    sub_100004118(v135);
    v108 = sub_10003CD30();
    v109(v108, v119);
    (*(v130 + 8))(v74, v105);
    goto LABEL_16;
  }

  v128 = v77;
  v87 = (*(v115 + 88))(v117, v118);
  if (v87 != enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
  {
    (*(v115 + 8))(v117, v118);
    goto LABEL_8;
  }

  v125 = v87;

  (*(v115 + 96))(v117, v118);
  (*(v113 + 32))(v112, v117, v114);
  sub_1000C6B9C(&qword_1002DB900, &type metadata accessor for FileStoreError);
  swift_allocError();
  v89 = v88;
  v124 = *(sub_100099DF4(&qword_1002DB908, &unk_100232B00) + 48);
  (*(v113 + 16))(v89, v112, v114);
  *(v89 + v124) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
  (*(v115 + 104))(v89, v125, v118);
  swift_willThrow();
  (*(v113 + 8))(v112, v114);
  v90 = *(v130 + 8);
  v90(v74, v131);

  v90(v32 + v111, v131);
  sub_100004118((v32 + v128));
  sub_100004118((v32 + v110));
  sub_100004118((v32 + v127));

  type metadata accessor for AccountDataAccessActor();
  swift_defaultActor_destroy();

  sub_100004118(a29);
  sub_100004118(v135);
  v91 = *(*v32 + 48);
  v92 = *(*v32 + 52);
  sub_1000050CC();
  swift_deallocPartialClassInstance();
LABEL_16:
  sub_100004118(v132);
  sub_100005074();
}

uint64_t sub_1000BCB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 40) = a5;
  *(v7 + 16) = a4;
  return _swift_task_switch(sub_1000BCB3C, a4, 0);
}

void sub_1000BCBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100004868();
  a20 = v23;
  a21 = v24;
  v146 = v22;
  v152 = v25;
  v27 = v26;
  a11 = v28;
  v29 = type metadata accessor for LogInterpolation.StringInterpolation();
  v30 = sub_1000030B8(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_1000030E4();
  v34 = sub_100008280(v33);
  v153 = type metadata accessor for CachedServerDataSyncTaskSchedule(v34);
  v35 = sub_10000307C(v153);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_1000030E4();
  sub_100008280(v38);
  v163 = type metadata accessor for Log();
  v39 = sub_100003724(v163);
  v164 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v43);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v44);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v45);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v46);
  v48 = v144 - v47;
  v49 = type metadata accessor for AccountDataState(0);
  v50 = (v49 - 8);
  v51 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  sub_10000306C();
  v54 = v53 - v52;
  v55 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  v56 = sub_10000307C(v55);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  sub_10000306C();
  v61 = (v60 - v59);
  v62 = v21;
  v63 = (v21 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  v64 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  v65 = v62;
  v165 = v62;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  sub_1000C6B44(v65 + v64, v54);
  v66 = v27[1];
  v157 = *v27;
  v158 = v66;
  v67 = v27[3];
  v160 = v27[2];
  v162 = v67;
  v159 = v27[4];
  v144[3] = v27;
  v161 = v27[5];
  v68 = sub_10000C4FC(v63, v63[3]);
  v69 = sub_10000F2C8(v68);
  v71 = v70;
  v72 = sub_10000C4FC(v63, v63[3]);
  v73 = v55[5];
  v74 = type metadata accessor for AccountIdentity();
  sub_10000307C(v74);
  v76 = *(v75 + 16);
  v145 = v77;
  v144[7] = v76;
  v144[6] = v75 + 16;
  v76(v61 + v73, v72);
  v78 = v55[13];
  sub_1000C6E74(v50[7]);
  v79 = v55[14];
  sub_1000C6E74(v50[8]);
  v80 = v55[15];
  sub_1000C6E74(v50[11]);
  v81 = v55[16];
  sub_1000C6E74(v50[13]);
  v82 = *(v54 + v50[14]);
  sub_1000C68A8(v54 + v50[15], v61 + v55[18], &qword_1002DB940, &qword_100232B48);
  v83 = *(v54 + v50[10]);
  sub_100004A2C();
  sub_100010478();
  *v61 = v69;
  v61[1] = v71;
  v84 = v55[6];
  sub_100003E60();
  v85 = v55[7];
  sub_100003E60();
  v86 = v55[8];
  sub_100003E60();
  v87 = v55[9];
  sub_100003E60();
  *(v61 + v55[10]) = a11;
  v88 = v55[11];
  sub_100003E60();
  v89 = v55[12];
  sub_100003E60();
  *(v61 + v55[17]) = v82;
  *(v61 + v55[19]) = v90;
  v161 = v48;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v91 = type metadata accessor for LogInterpolation();
  sub_100003B78(v91);
  v93 = *(v92 + 72);
  sub_1000C724C();
  v96 = v94 & ~v95;
  v155 = 3 * v93;
  v158 = v95;
  v159 = v83;
  v97 = swift_allocObject();
  v151 = xmmword_1002329D0;
  *(v97 + 16) = xmmword_1002329D0;
  v157 = type metadata accessor for AccountDataAccessActor();
  v170 = v157;
  v169[0] = v165;

  v98 = AMSLogKey();
  if (v98)
  {
    v99 = v98;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v169);
  LogInterpolation.init(stringLiteral:)();
  v160 = 2 * v93;
  v170 = v55;
  v162 = v93;
  v100 = sub_100007914(v169);
  sub_1000C6B44(v61, v100);
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v169, &unk_1002DFC10, &qword_10022E6D0);
  v101 = v161;
  Log.default(_:)();

  v102 = *(v164 + 8);
  v164 += 8;
  v161 = v102;
  (v102)(v101, v163);
  v103 = v156;
  sub_10013A2DC(v61, v152, v156);
  static Log.accountsDataSync.getter();
  *(sub_10000D494() + 16) = v151;
  sub_10000C5F8();
  v104 = AMSLogKey();
  if (v104)
  {
    v105 = v104;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v169);
  sub_1000041A0(&a9);
  LogInterpolation.init(stringLiteral:)();
  v106 = v153;
  v170 = v153;
  v107 = sub_100007914(v169);
  sub_1000C6B44(v103, v107);
  sub_1000041A0(v174);
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v169, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  sub_100005280();
  v108();
  v109 = *(v106 + 20);
  type metadata accessor for Date();
  sub_1000C6B9C(&qword_1002DB968, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    Date.distance(to:)();
    sub_10013AB18(v171, v110);
    v111 = v171[0];
    v154 = v171[1];
    v112 = v171[2];
    v150 = v171[3];
    v113 = v171[4];
    v149 = v171[5];
    v114 = v172;
  }

  else
  {
    v154 = 0;
    v112 = 0;
    v150 = 0;
    v113 = 0;
    v149 = 0;
    v114 = 0;
    v111 = 2;
  }

  v147 = v114;
  v148 = v112;
  static Log.accountsDataSync.getter();
  *(sub_10000D494() + 16) = xmmword_1002329F0;
  sub_10000C5F8();
  v115 = AMSLogKey();
  v144[4] = v96;
  if (v115)
  {
    v116 = v115;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v169);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v117._countAndFlagsBits = 0x206E6F69746361;
  v117._object = 0xE700000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v117);
  v170 = &type metadata for CachedServerDataSyncScheduleAction;
  v118 = swift_allocObject();
  v169[0] = v118;
  v119 = v154;
  *(v118 + 16) = v111;
  *(v118 + 24) = v119;
  v120 = v148;
  v121 = v150;
  *(v118 + 32) = v148;
  *(v118 + 40) = v121;
  v122 = v149;
  *(v118 + 48) = v113;
  *(v118 + 56) = v122;
  v123 = v113;
  v124 = v147;
  *(v118 + 64) = v147;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v169, &unk_1002DFC10, &qword_10022E6D0);
  v125._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v125);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  sub_100005280();
  v126();
  if (v111 == 2)
  {
    static Log.accountsDataSync.getter();
    *(sub_10000D494() + 16) = v151;
    sub_10000C5F8();
    v127 = AMSLogKey();
    if (v127)
    {
      v128 = v127;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000C7334();

    sub_100004118(v169);
    sub_1000041A0(&a9);
    LogInterpolation.init(stringLiteral:)();
    v170 = v145;
    sub_100007914(v169);
    sub_1000C72AC();
    v133();
    sub_1000041A0(v174);
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v169, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    sub_100005280();
    v134();
    sub_1000BD95C();
  }

  else
  {
    v129 = v111 & 0xFF01;
    a10 = v120 & 1;
    v168 = v123 & 1;
    v167 = v124 & 1;
    static Log.accountsDataSync.getter();
    v130 = sub_10000D494();
    sub_1000C72F8(v130, xmmword_1002329E0);
    sub_10000C5F8();
    v131 = AMSLogKey();
    if (v131)
    {
      v132 = v131;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v135 = v156;
    sub_1000C7334();

    sub_100004118(v169);
    sub_1000041A0(&a9);
    LogInterpolation.init(stringLiteral:)();
    v166[3] = v145;
    sub_100007914(v166);
    v136 = v165;
    sub_1000C72AC();
    v137();
    sub_1000041A0(v174);
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v166, &unk_1002DFC10, &qword_10022E6D0);
    sub_1000041A0(v173);
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    sub_100005280();
    v138();
    v139 = *(v136 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_scheduler);
    v140 = *(v136 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_scheduler + 8);
    v141 = (v135 + *(v153 + 32));
    v142 = *v141;
    v143 = v141[1];
    v173[0] = v129;
    v173[1] = v154;
    v173[2] = v148 & 0xFF00 | a10;
    v173[3] = v150;
    v173[4] = v168;
    v173[5] = v149;
    v174[0] = v147 & 0x101FF00 | v167;
    (*(v140 + 8))(v135, v142, v143, v173);
  }

  sub_100006C84();
  sub_100010478();
  sub_100010478();
  sub_100005074();
}

void sub_1000BD95C()
{
  sub_100004868();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Log();
  v5 = sub_100003724(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1000030E4();
  v8 = *(v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_deviceInformation + 8);
  v9 = *(v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_deviceInformation);
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()() & 1) != 0 && (v10 = *(v1 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults + 32), sub_10000C4FC((v1 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults), *(v1 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults + 24)), v11 = dispatch thunk of AccountDataDefaults.autoSyncDisabledForAccountData.getter(), (v11) && (v3 & 1) == 0)
  {
    v21 = v11;
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v12 = type metadata accessor for LogInterpolation();
    sub_100003B78(v12);
    v14 = *(v13 + 72);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_100232A00;
    v23 = type metadata accessor for AccountDataAccessActor();
    v22[0] = v1;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v22);
    LogInterpolation.init(stringLiteral:)();
    v17 = type metadata accessor for AccountIdentity();
    v23 = v17;
    sub_100007914(v22);
    sub_10000B7EC(v17);
    (*(v18 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_1000C7074();
    LogInterpolation.init(stringLiteral:)();
    v23 = &type metadata for Bool;
    LOBYTE(v22[0]) = 1;
    static LogInterpolation.safe(_:)();
    sub_1000C7074();
    LogInterpolation.init(stringLiteral:)();
    v23 = &type metadata for Bool;
    LOBYTE(v22[0]) = v21 & 1;
    static LogInterpolation.safe(_:)();
    sub_1000C7074();
    LogInterpolation.init(stringLiteral:)();
    v23 = &type metadata for Bool;
    LOBYTE(v22[0]) = 0;
    static LogInterpolation.safe(_:)();
    sub_1000C7074();
    Log.default(_:)();

    v19 = sub_10003CD30();
    v20(v19);
  }

  else
  {
    sub_1000BDD00();
  }

  sub_100005074();
}

void sub_1000BDD00()
{
  sub_100004868();
  v282 = v1;
  v2 = v0;
  v274 = v4;
  v275 = v3;
  v273 = v5;
  v6 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v6);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100003018();
  v265 = v10;
  sub_100013FAC();
  v11 = type metadata accessor for MetricsEvent();
  v12 = sub_100003724(v11);
  v255 = v13;
  v256 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_1000030E4();
  v254 = v16;
  v17 = sub_100013FAC();
  v252 = type metadata accessor for AccountDataServerRequest(v17);
  v18 = sub_100003724(v252);
  v257 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1000C72C0();
  v258 = v23;
  v259 = v22;
  __chkstk_darwin(v24);
  sub_10000D478();
  v264 = v25;
  v26 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v26);
  v28 = *(v27 + 64);
  sub_100003774();
  __chkstk_darwin(v29);
  sub_100003018();
  v262 = v30;
  v31 = sub_100013FAC();
  v261 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(v31);
  v32 = sub_10000307C(v261);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_1000030E4();
  v268 = v35;
  sub_100013FAC();
  v284 = type metadata accessor for Date();
  v36 = sub_100003724(v284);
  v276 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_1000C72C0();
  v263 = v40;
  v253 = v41;
  __chkstk_darwin(v42);
  sub_10000D478();
  v266 = v43;
  v44 = sub_100013FAC();
  v45 = type metadata accessor for AccountDataState(v44);
  v46 = sub_10000307C(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_1000037D4();
  v251 = v49;
  sub_100005238();
  __chkstk_darwin(v50);
  sub_100002DD0();
  v260 = v51;
  sub_100005238();
  __chkstk_darwin(v52);
  sub_100002DD0();
  v277 = v53;
  sub_100005238();
  __chkstk_darwin(v54);
  sub_10000D478();
  v283 = v55;
  sub_100013FAC();
  v56 = type metadata accessor for LogInterpolation.StringInterpolation();
  v57 = sub_1000030B8(v56);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  sub_1000030E4();
  v272 = v60;
  sub_100013FAC();
  v281 = type metadata accessor for Log();
  v61 = sub_100003724(v281);
  v286 = v62;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_1000037D4();
  v250 = v65;
  sub_100005238();
  __chkstk_darwin(v66);
  sub_100002DD0();
  v267 = v67;
  sub_100005238();
  __chkstk_darwin(v68);
  sub_100002DD0();
  v278 = v69;
  sub_100005238();
  __chkstk_darwin(v70);
  sub_10000D478();
  v271 = v71;
  sub_100013FAC();
  v279 = type metadata accessor for AccountIdentity.DSID();
  v72 = sub_100003724(v279);
  v74 = v73;
  v76 = *(v75 + 64);
  __chkstk_darwin(v72);
  sub_10000306C();
  v79 = v78 - v77;
  v80 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v81 = sub_1000030B8(v80);
  v83 = *(v82 + 64);
  __chkstk_darwin(v81);
  sub_1000037D4();
  v270 = v84;
  sub_100005238();
  __chkstk_darwin(v85);
  sub_100002DD0();
  v269 = v86;
  sub_100005238();
  __chkstk_darwin(v87);
  v89 = &v237 - v88;
  __chkstk_darwin(v90);
  v92 = &v237 - v91;
  v93 = v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  v292 = v45;
  v94 = *(v45 + 56);
  v280 = v93;
  sub_1000C68A8(v93 + v94, v92, &qword_1002DA970, &qword_1002318B0);
  type metadata accessor for CachedServerDataService();
  v95 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  v285 = v2;
  AccountIdentity.dsid.getter();
  sub_100005DB0();
  (*(v74 + 8))(v79, v279);
  if (*(&v290 + 1))
  {
    sub_10000C4FC(&v289, *(&v290 + 1));
    sub_10009B8B0();
    sub_100004118(&v289);
  }

  else
  {
    sub_100004E24(&v289, &qword_1002DB958, &qword_100232B60);
    sub_100007B78();
    sub_100002728(v96, v97, v98, v284);
  }

  v99 = sub_100132328(v92, v89);
  sub_100004E24(v89, &qword_1002DA970, &qword_1002318B0);
  sub_100004E24(v92, &qword_1002DA970, &qword_1002318B0);
  v279 = v95;
  if (v99)
  {
    v100 = v271;
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v101 = type metadata accessor for LogInterpolation();
    sub_100003B78(v101);
    v103 = *(v102 + 72);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329E0;
    *(&v290 + 1) = type metadata accessor for AccountDataAccessActor();
    *&v289 = v285;

    v104 = AMSLogKey();
    v105 = v284;
    if (v104)
    {
      v106 = v104;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v289);
    LogInterpolation.init(stringLiteral:)();
    v119 = type metadata accessor for AccountIdentity();
    *(&v290 + 1) = v119;
    sub_100007914(&v289);
    sub_10000B7EC(v119);
    (*(v120 + 16))();
    sub_1000C71BC();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(&v289, &unk_1002DFC10, &qword_10022E6D0);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v121._countAndFlagsBits = 0xD000000000000015;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v121);
    v122 = v269;
    sub_1000C68A8(v280 + v292[14], v269, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v122, 1, v105) == 1)
    {
      sub_100004E24(v122, &qword_1002DA970, &qword_1002318B0);
      v289 = 0u;
      v290 = 0u;
    }

    else
    {
      *(&v290 + 1) = v105;
      v123 = sub_100007914(&v289);
      (*(v276 + 32))(v123, v122, v105);
    }

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v289, &unk_1002DFC10, &qword_10022E6D0);
    v124._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v124);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v286 + 8))(v100, v281);
  }

  else
  {
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v107 = type metadata accessor for LogInterpolation();
    sub_100003B78(v107);
    v109 = *(v108 + 72);
    sub_1000C724C();
    v112 = v110 & ~v111;
    v271 = v99;
    v272 = v113;
    v238 = 3 * v113;
    v249 = v111;
    v114 = swift_allocObject();
    v237 = xmmword_1002329D0;
    *(v114 + 16) = xmmword_1002329D0;
    v269 = v112;
    v248 = type metadata accessor for AccountDataAccessActor();
    *(&v290 + 1) = v248;
    v115 = v285;
    *&v289 = v285;

    v116 = AMSLogKey();
    v117 = v284;
    if (v116)
    {
      v118 = v116;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000C71BC();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v289);
    LogInterpolation.init(stringLiteral:)();
    v125 = type metadata accessor for AccountIdentity();
    *(&v290 + 1) = v125;
    sub_100007914(&v289);
    sub_10000B7EC(v125);
    v127 = v279;
    v240 = *(v126 + 16);
    v241 = v125;
    v239 = v126 + 16;
    v240();
    sub_1000C71BC();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(&v289, &unk_1002DFC10, &qword_10022E6D0);
    v128 = v278;
    Log.default(_:)();

    v129 = *(v286 + 8);
    v286 += 8;
    v247 = v129;
    v129(v128, v281);
    sub_100007F24();
    v130 = v277;
    sub_1000C6B44(v280, v277);
    v131 = v275[1];
    v242 = *v275;
    v243 = v131;
    v132 = v275[2];
    v133 = v275[3];
    v134 = v275[5];
    v244 = v275[4];
    v245 = v132;
    v246 = v134;
    v135 = v270;
    sub_1000C68A8(v130 + v292[9], v270, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v135, 1, v117) == 1)
    {
      v278 = v133;
      sub_100004E24(v135, &qword_1002DA970, &qword_1002318B0);
      v136 = *(v130 + v292[8]);
      v137 = v283;
      if (v136 == 3)
      {
        sub_1000C7234(&v289);
        if (sub_100013900(&v289) == 1 || v291 != 1)
        {
          sub_1000C7234(v288);
          v152 = sub_10000B7F8(v292[5]);
          sub_1000C68A8(v152, v153, v154, v155);
          v156 = sub_10000B7F8(v292[6]);
          sub_1000C68A8(v156, v157, v158, v159);
          v160 = sub_1000C6F40();
          v130(v160);
          v161 = sub_1000C7090();
          v130(v161);
          sub_100010960();
          sub_1000C7128();
          v137 = v283;
          sub_100007B78();
          sub_100002728(v162, v163, v164, v165);
          v166 = sub_10000B7F8(v292[14]);
          v145 = v292;
          sub_1000C68A8(v166, v167, v168, v169);
          memcpy(v137, v288, 0x148uLL);
          *&v137[v292[8]] = 3;
          *&v137[v292[10]] = v136;
        }

        else
        {
          sub_1000C7234(v288);
          v127 = &qword_1002DA970;
          sub_1000C68A8(v130 + v292[5], &v137[v292[5]], &qword_1002DA970, &qword_1002318B0);
          sub_1000C68A8(v130 + v292[6], &v137[v292[6]], &qword_1002DA970, &qword_1002318B0);
          v138 = sub_1000C6F40();
          v130(v138);
          v139 = sub_1000C7090();
          v130(v139);
          sub_100010960();
          sub_1000C7128();
          v137 = v283;
          sub_100007B78();
          sub_100002728(v140, v141, v142, v143);
          v144 = sub_10000B7F8(v292[14]);
          v145 = v292;
          sub_1000C68A8(v144, v146, v147, v148);
          memcpy(v137, v288, 0x148uLL);
          *&v137[v292[8]] = v136;
          *&v137[v292[10]] = 3;
        }

        *&v137[v145[12]] = v127;
        sub_1000C68A8(v288, &v287, &qword_1002DB920, &qword_100238870);
        v127 = v279;
      }

      else
      {
        v151 = *(v130 + v292[8]);
        sub_10013168C();
      }

      v133 = v278;
    }

    else
    {
      v149 = v276;
      v150 = v266;
      (*(v276 + 32))(v266, v135, v117);
      v137 = v283;
      sub_100130B68();
      (*(v149 + 8))(v150, v117);
    }

    sub_100004A2C();
    sub_100010478();
    v170 = v282;
    sub_1000C2798(v127 + v115, v137);
    if (v170)
    {
      sub_100004A2C();
      sub_100010478();
    }

    else
    {
      v278 = v133;
      v282 = 0;
      v171 = 2 * v272;
      static Log.accountsDataSync.getter();
      v172 = sub_1000C7354();
      sub_1000C72F8(v172, v237);
      *(&v290 + 1) = v248;
      *&v289 = v115;

      v173 = AMSLogKey();
      if (v173)
      {
        v174 = v173;
        v175 = v115;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v175 = v115;
      }

      sub_1000C71BC();
      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v289);
      sub_1000C71A4();
      LogInterpolation.init(stringLiteral:)();
      *(&v290 + 1) = v292;
      sub_100007914(&v289);
      sub_1000065FC();
      sub_1000C6B44(v283, v176);
      static LogInterpolation.sensitive(_:)();
      sub_100004E24(&v289, &unk_1002DFC10, &qword_10022E6D0);
      v177 = v267;
      Log.default(_:)();

      v247(v177, v281);
      v178 = (v175 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
      v179 = v260;
      sub_1000C6B44(v280, v260);
      v180 = sub_10000C4FC(v178, v178[3]);
      v277 = sub_10000F2C8(v180);
      v270 = v181;
      v182 = sub_10000C4FC(v178, v178[3]);
      v183 = v261;
      v184 = v268;
      (v240)(v268 + v261[5], v182, v241);
      v185 = v292[5];
      v186 = v183[13];
      v267 = v171;
      sub_1000C6E34(v185);
      v187 = v183[14];
      sub_1000C6E34(v292[6]);
      v188 = v183[15];
      sub_1000C6E34(v292[9]);
      v189 = v183[16];
      sub_1000C6E34(v292[11]);
      v190 = v292[13];
      v191 = *(v179 + v292[12]);
      v192 = v183[18];
      sub_100002854();
      sub_1000C68A8(v193, v194, v195, v196);
      v197 = *(v179 + v292[8]);
      sub_100004A2C();
      sub_100010478();
      v198 = v270;
      *v184 = v277;
      v184[1] = v198;
      v199 = v243;
      *(v184 + v183[6]) = v242;
      *(v184 + v183[7]) = v199;
      v200 = v244;
      *(v184 + v183[8]) = v245;
      *(v184 + v183[9]) = v200;
      *(v184 + v183[10]) = v273;
      *(v184 + v183[11]) = v246;
      *(v184 + v183[12]) = v278;
      *(v184 + v183[17]) = v191;
      *(v184 + v183[19]) = v197 != 3;
      v201 = v262;
      sub_100002854();
      sub_1000C68A8(v202, v203, v204, v205);
      v206 = type metadata accessor for CachedServerDataSyncAttempt(0);
      LODWORD(v184) = sub_100004DFC(v201, 1, v206);
      sub_100004E24(v201, &qword_1002DB940, &qword_100232B48);
      if (v184 == 1)
      {
        v207 = v285;
        v208 = *(v285 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore);
        (*(*(v285 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore + 8) + 8))(5);
        sub_100007F24();
        v209 = v251;
        sub_1000C6B44(v280, v251);
        v210 = *(v209 + v292[10]);
        v211 = v264;
        if (v210 == 3 || (sub_1000C7234(&v289), sub_100013900(&v289) == 1))
        {
          AccountIdentity.dsid.getter();
        }

        else
        {
          v216 = v290;
          AccountIdentity.dsid.getter();
          v217 = type metadata accessor for AccountDataServerRequest.Put(0);
          *(v211 + *(v217 + 20)) = v216;
          *(v211 + *(v217 + 24)) = v210;
        }

        swift_storeEnumTagMultiPayload();
        sub_100004A2C();
        sub_100010478();
        v218 = (v207 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics);
        v219 = v254;
        sub_100125960(v211);
        v220 = v218[4];
        sub_10000C4FC(v218, v218[3]);
        dispatch thunk of MetricsQueue.enqueue(event:)();
        (*(v255 + 8))(v219, v256);
        type metadata accessor for TaskPriority();
        sub_100007B78();
        sub_100002728(v221, v222, v223, v224);
        sub_100013DC4();
        v225 = v259;
        sub_1000C6B44(v211, v259);
        v226 = v276;
        (*(v276 + 16))(v263, v274, v284);
        sub_1000C6E1C();
        v229 = sub_1000C6B9C(v227, v228);
        v230 = (*(v257 + 80) + 40) & ~*(v257 + 80);
        v231 = (v258 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
        v232 = (*(v226 + 80) + v231 + 48) & ~*(v226 + 80);
        v233 = swift_allocObject();
        *(v233 + 2) = v207;
        *(v233 + 3) = v229;
        *(v233 + 4) = v207;
        sub_1000084E4(v225, &v233[v230]);
        v234 = &v233[v231];
        v235 = v275;
        v236 = *(v275 + 1);
        *v234 = *v275;
        *(v234 + 1) = v236;
        *(v234 + 2) = *(v235 + 2);
        (*(v226 + 32))(&v233[v232], v263, v284);
        swift_retain_n();
        sub_10013ABD4(0, 0, v265, &unk_100232B70, v233);

        sub_100010478();
        sub_100006C84();
        sub_100010478();
      }

      else
      {
        v212 = v250;
        static Log.accountsDataSync.getter();
        v213 = sub_1000C7354();
        sub_1000C72F8(v213, xmmword_1002329F0);
        *(&v290 + 1) = v248;
        *&v289 = v285;

        v214 = AMSLogKey();
        if (v214)
        {
          v215 = v214;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_1000C726C();
        }

        else
        {
          sub_1000033C0();
        }

        sub_10000D40C();
        static LogInterpolation.prefix(_:_:)();

        sub_100004118(&v289);
        sub_1000C71A4();
        LogInterpolation.init(stringLiteral:)();
        Log.default(_:)();

        v247(v212, v281);
        sub_100006C84();
        sub_100010478();
        sub_100004A2C();
      }

      sub_100010478();
    }
  }

  sub_100005074();
}

uint64_t sub_1000BF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000BF208;

  return sub_1000BF3B8();
}

uint64_t sub_1000BF208()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *v1;
  sub_100004504();
  *v6 = v5;
  *(v3 + 32) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_1000BF328, v7, 0);
  }

  else
  {
    sub_100002E08();

    return v8();
  }
}

uint64_t sub_1000BF328()
{
  sub_100004194();
  v1 = *(v0 + 16);
  sub_1001252AC(*(v0 + 32), (v1 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics));
  v2 = sub_1000C6DEC((v1 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore));
  v3(v2);

  sub_100002E08();

  return v4();
}

uint64_t sub_1000BF3B8()
{
  sub_100007F3C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Date();
  v1[4] = v3;
  sub_100003B78(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_100003FA8();
  v7 = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  v1[7] = sub_100003FA8();
  swift_task_alloc();
  sub_10000DEA0();
  v1[8] = v10;
  *v10 = v11;
  v10[1] = sub_1000BF4DC;

  return sub_1000BF8F4();
}

uint64_t sub_1000BF4DC()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 64);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000BF5D4()
{
  sub_100004194();
  v1 = v0[6];
  static Date.now.getter();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1000BF670;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];
  v6 = v0[3];

  return sub_1000BFFF8();
}

uint64_t sub_1000BF670()
{
  sub_10000DB4C();
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_1000BF874;
  }

  else
  {
    v9 = sub_1000BF7F4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000BF7F4()
{
  sub_100004194();
  v1 = *(v0 + 48);
  sub_100004E24(*(v0 + 56), &qword_1002DB948, &unk_100232B50);

  sub_100002E08();

  return v2();
}

uint64_t sub_1000BF874()
{
  sub_100004194();
  v1 = v0[6];
  sub_100004E24(v0[7], &qword_1002DB948, &unk_100232B50);

  sub_100002E08();
  v3 = v0[10];

  return v2();
}

uint64_t sub_1000BF8F4()
{
  sub_100004194();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  v1[22] = sub_100003FA8();
  v8 = type metadata accessor for Log();
  v1[23] = v8;
  sub_100003B78(v8);
  v1[24] = v9;
  v11 = *(v10 + 64);
  v1[25] = sub_1000C70D8();
  v1[26] = swift_task_alloc();
  v12 = sub_10000AA8C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000BF9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = *(v14 + 208);
  v16 = *(v14 + 168);
  static Log.accountsDataSync.getter();
  *(v14 + 216) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  *(v14 + 224) = *(v18 + 72);
  *(v14 + 264) = *(v19 + 80);
  sub_1000C71C8();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v20 = type metadata accessor for AccountDataAccessActor();
  *(v14 + 16) = v16;
  *(v14 + 232) = v20;
  *(v14 + 40) = v20;

  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v23 = *(v14 + 208);
  v24 = *(v14 + 192);
  v25 = *(v14 + 176);
  v49 = *(v14 + 184);
  v50 = *(v14 + 168);
  v26 = *(v14 + 152);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v14 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v27._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  *(v14 + 72) = type metadata accessor for AccountDataServerRequest(0);
  sub_100007914((v14 + 48));
  sub_100013DC4();
  sub_1000C6B44(v26, v28);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v14 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v29._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v30 = *(v24 + 8);
  *(v14 + 240) = v30;
  *(v14 + 248) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v23, v49);
  v31 = *(v50 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_requester);
  v32 = *(v50 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_bag);
  v51 = (*(v50 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_requester + 8) + 8);
  v52 = *v51 + **v51;
  v33 = (*v51)[1];
  swift_task_alloc();
  sub_10000DEA0();
  *(v14 + 256) = v34;
  *v34 = v35;
  v34[1] = sub_1000BFCEC;
  v36 = *(v14 + 152);
  v37 = *(v14 + 160);
  v38 = *(v14 + 144);
  sub_100003BBC();

  return v45(v39, v40, v41, v42, v43, v44, v45, v46, v49, v51, v52, a12, a13, a14);
}

uint64_t sub_1000BFCEC()
{
  sub_100004194();
  sub_1000030F8();
  v2 = *(v1 + 256);
  v3 = *(v1 + 168);
  v4 = *v0;
  sub_100004504();
  *v5 = v4;

  v6 = sub_10000AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000BFDE4()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 264);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 168);
  static Log.accountsDataSync.getter();
  v7 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v7 + 16) = xmmword_1002329D0;
  *(v0 + 104) = v1;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = *(v0 + 240);
  v20 = *(v0 + 248);
  v10 = *(v0 + 224);
  v11 = *(v0 + 200);
  v18 = *(v0 + 208);
  v12 = *(v0 + 184);
  v21 = *(v0 + 176);
  v13 = *(v0 + 144);
  v14 = v7 + ((*(v0 + 264) + 32) & ~*(v0 + 264));
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 80));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 136) = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  v15 = sub_100007914((v0 + 112));
  sub_1000C68A8(v13, v15, &qword_1002DB948, &unk_100232B50);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v0 + 112, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v19(v11, v12);

  sub_100002E08();

  return v16();
}

uint64_t sub_1000BFFF8()
{
  sub_100004194();
  v1[187] = v0;
  v1[186] = v2;
  v1[185] = v3;
  v1[184] = v4;
  v5 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v5);
  v7 = *(v6 + 64);
  v1[188] = sub_100003FA8();
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v8);
  v10 = *(v9 + 64);
  v1[189] = sub_1000C70D8();
  v1[190] = swift_task_alloc();
  v11 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  v1[191] = sub_1000C70D8();
  v1[192] = swift_task_alloc();
  v14 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  v1[193] = v14;
  sub_1000030B8(v14);
  v16 = *(v15 + 64);
  v1[194] = sub_100003FA8();
  v17 = type metadata accessor for Log();
  v1[195] = v17;
  sub_100003B78(v17);
  v1[196] = v18;
  v20 = *(v19 + 64);
  v1[197] = sub_1000C70D8();
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v21 = type metadata accessor for AccountDataServerResponse(0);
  v1[201] = v21;
  sub_1000030B8(v21);
  v23 = *(v22 + 64);
  v1[202] = sub_100003FA8();
  v24 = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  v1[203] = v24;
  sub_1000030B8(v24);
  v26 = *(v25 + 64);
  v1[204] = sub_100003FA8();
  v27 = type metadata accessor for AccountDataState(0);
  v1[205] = v27;
  sub_1000030B8(v27);
  v29 = *(v28 + 64);
  v1[206] = sub_1000C70D8();
  v1[207] = swift_task_alloc();
  v1[208] = swift_task_alloc();
  v1[209] = swift_task_alloc();
  v1[210] = swift_task_alloc();
  v30 = sub_10000AA8C();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_1000C0228()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1664);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1472);
  v6 = *(v0 + 1496) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_1000C6B44(v6, v1);
  v216 = v6;
  sub_1000C6B44(v6, v2);
  sub_1000C68A8(v5, v3, &qword_1002DB948, &unk_100232B50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1632);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 1672);
    v10 = *(v0 + 1664);
    v11 = *(v0 + 1488);
    v12 = *v8;
    sub_1001301C4();

    sub_100004A2C();
  }

  else
  {
    v13 = *(v0 + 1664);
    v14 = *(v0 + 1640);
    sub_1000084E4(v8, *(v0 + 1616));
    v15 = *(v13 + *(v14 + 40));
    v16 = *(v0 + 1672);
    v17 = *(v0 + 1664);
    if (v15 == 3)
    {
      v18 = *(v0 + 1640);
      v19 = *(v0 + 1616);
      v20 = *(v0 + 1608);
      v208 = v20;
      v213 = v15;
      memmove((v0 + 16), v19, 0x148uLL);
      PIScheduledRotationConfiguration.rotationInterval.getter(v0 + 16);
      v21 = v18[5];
      v210 = v14;
      v22 = *(v20 + 20);
      v23 = type metadata accessor for Date();
      sub_10000307C(v23);
      v25 = *(v24 + 32);
      v25(&v16[v21], &v19[v22], v23);
      sub_100002728(&v16[v21], 0, 1, v23);
      v26 = v18[6];
      sub_100007B78();
      sub_100002728(v27, v28, v29, v23);
      v25(&v16[v18[7]], &v19[*(v208 + 28)], v23);
      v30 = v18[9];
      LOWORD(v25) = *(v17 + v18[8]);
      sub_100007B78();
      sub_100002728(v31, v32, v33, v23);
      v34 = v18[11];
      sub_100007B78();
      sub_100002728(v35, v36, v37, v23);
      sub_1000C68A8(v17 + v18[13], &v16[v18[13]], &qword_1002DB940, &qword_100232B48);
      sub_100004A2C();
      sub_100010478();
      v38 = v18[14];
      sub_100007B78();
      sub_100002728(v39, v40, v41, v23);
      memcpy(v16, (v0 + 16), 0x148uLL);
      *&v16[v18[8]] = v25;
      *&v16[*(v210 + 40)] = v213;
      *&v16[v18[12]] = 0;
      goto LABEL_7;
    }

    v42 = *(v0 + 1616);
    v43 = *(v0 + 1672);
    v44 = *(v0 + 1664);
    sub_100130740();
    sub_100010478();
    sub_100004A2C();
  }

  sub_100010478();
LABEL_7:
  v45 = *(v0 + 1672);
  v46 = *(v0 + 1496);
  sub_10012540C(*(v0 + 1472), *(v0 + 1680), v45, (v46 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics), *(v0 + 1488));
  v47 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  *(v0 + 1688) = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  sub_1000C2798(v46 + v47, v45);
  v204 = v47;
  v48 = *(v0 + 1600);
  v49 = *(v0 + 1496);
  static Log.accountsDataSync.getter();
  v50 = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v51 = type metadata accessor for LogInterpolation();
  sub_100003B78(v51);
  v53 = *(v52 + 72);
  sub_1000C724C();
  v211 = v54;
  v182 = v55;
  v183 = v50;
  v175 = xmmword_1002329D0;
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v181 = type metadata accessor for AccountDataAccessActor();
  *(v0 + 1024) = v181;
  *(v0 + 1000) = v49;

  v56 = AMSLogKey();
  v206 = v46;
  if (v56)
  {
    v57 = v56;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v184 = *(v0 + 1656);
  v58 = *(v0 + 1640);
  v188 = *(v0 + 1672);
  v191 = *(v0 + 1600);
  v59 = *(v0 + 1568);
  v60 = *(v0 + 1552);
  v61 = *(v0 + 1544);
  v194 = *(v0 + 1560);
  v198 = *(v0 + 1496);
  v201 = *(v0 + 1488);
  v62 = *(v0 + 1480);
  sub_100008A64();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 1000));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 1056) = v58;
  sub_100007914((v0 + 1032));
  sub_1000065FC();
  sub_1000C6B44(v188, v63);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v0 + 1032, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v180 = *(v59 + 8);
  v180(v191, v194);
  v64 = (v198 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  sub_1000C6B44(v216, v184);
  v185 = *v62;
  v186 = v62[1];
  v189 = v62[4];
  v192 = v62[2];
  v195 = v62[5];
  v199 = v62[3];
  v65 = sub_10000C4FC(v64, v64[3]);
  v66 = sub_10000F2C8(v65);
  v68 = v67;
  v69 = sub_10000C4FC(v64, v64[3]);
  v70 = v61[5];
  v71 = type metadata accessor for AccountIdentity();
  sub_10000307C(v71);
  v178 = *(v72 + 16);
  v179 = v73;
  v177 = v72 + 16;
  (v178)(v60 + v70, v69);
  v74 = v61[13];
  sub_1000C6E54(v58[5]);
  v75 = v61[14];
  sub_1000C6E54(v58[6]);
  v76 = v61[15];
  sub_1000C6E54(v58[9]);
  v77 = v61[16];
  sub_1000C6E54(v58[11]);
  v78 = *(v184 + v58[12]);
  sub_1000C68A8(v184 + v58[13], v60 + v61[18], &qword_1002DB940, &qword_100232B48);
  v214 = v58;
  LODWORD(v69) = *(v184 + v58[8]);
  sub_100004A2C();
  sub_100010478();
  *v60 = v66;
  v60[1] = v68;
  *(v60 + v61[6]) = v185;
  *(v60 + v61[7]) = v186;
  *(v60 + v61[8]) = v192;
  *(v60 + v61[9]) = v189;
  *(v60 + v61[10]) = 8;
  *(v60 + v61[11]) = v195;
  *(v60 + v61[12]) = v199;
  *(v60 + v61[17]) = v78;
  *(v60 + v61[19]) = v69 != 3;
  v79 = sub_1000104CC(v60);
  if (v79 != 11)
  {
    v84 = v79;
    v187 = v78;
    v85 = *(v0 + 1592);
    v86 = *(v0 + 1496);
    static Log.accountsDataSync.getter();
    *(swift_allocObject() + 16) = xmmword_1002329E0;
    *(v0 + 1152) = v181;
    *(v0 + 1128) = v86;

    v87 = AMSLogKey();
    if (v87)
    {
      v88 = v87;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v93 = *(v0 + 1536);
    v94 = *(v0 + 1528);
    v196 = *(v0 + 1520);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 1128));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v95._countAndFlagsBits = 0xD00000000000001DLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v95);
    *(v0 + 1184) = &type metadata for CachedServerDataSyncTrigger;
    v190 = v84;
    *(v0 + 1160) = v84;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1000C7198();
    sub_100004E24(v96, v97, v98);
    v99._countAndFlagsBits = sub_10000BEA8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v99);
    LogInterpolation.init(stringInterpolation:)();
    *(v0 + 1216) = v179;
    v100 = sub_100007914((v0 + 1192));
    v178(v100, v206 + v204, v179);
    static LogInterpolation.traceableSensitive(_:)();
    sub_1000C7198();
    sub_100004E24(v101, v102, v103);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v104._countAndFlagsBits = 0xD000000000000010;
    v104._object = 0x8000000100272BC0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v104);
    v105 = *(v216 + v58[12]);
    *(v0 + 1248) = &type metadata for UInt;
    *(v0 + 1224) = v105;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1000C7198();
    sub_100004E24(v106, v107, v108);
    v109._countAndFlagsBits = sub_100002E14();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v109);
    sub_1000C68A8(v216 + v58[6], v196, &qword_1002DA970, &qword_1002318B0);
    v110 = type metadata accessor for Date();
    v111 = sub_100004DFC(v196, 1, v110);
    v112 = *(v0 + 1520);
    if (v111 == 1)
    {
      sub_100004E24(*(v0 + 1520), &qword_1002DA970, &qword_1002318B0);
      *(v0 + 1256) = 0u;
      *(v0 + 1272) = 0u;
    }

    else
    {
      *(v0 + 1280) = v110;
      sub_100007914((v0 + 1256));
      sub_10000B7EC(v110);
      (*(v113 + 32))();
    }

    v114 = *(v0 + 1528);
    v115 = *(v0 + 1504);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1256, &unk_1002DFC10, &qword_10022E6D0);
    v116._countAndFlagsBits = sub_1000C6F80();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v116);
    sub_1000C68A8(v216 + v58[13], v115, &qword_1002DB940, &qword_100232B48);
    v117 = type metadata accessor for CachedServerDataSyncAttempt(0);
    v118 = sub_100013DDC();
    v197 = v117;
    if (sub_100004DFC(v118, v119, v117) == 1)
    {
      sub_100004E24(*(v0 + 1504), &qword_1002DB940, &qword_100232B48);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = v117;
      sub_100007914((v0 + 1288));
      v120 = sub_100005C58();
      sub_1000084E4(v120, v121);
    }

    v122 = *(v0 + 1528);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1288, &unk_1002DFC10, &qword_10022E6D0);
    v123._countAndFlagsBits = sub_1000C6EE8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v123);
    v124 = *(v216 + v214[8]);
    if (v124 == 3)
    {
      v125 = 0;
      *(v0 + 1320) = 0;
      *(v0 + 1328) = 0;
      *(v0 + 1336) = 0;
    }

    else
    {
      *(v0 + 1320) = v124;
      v125 = &type metadata for AccountDataChange;
    }

    v126 = *(v0 + 1528);
    v127 = *(v0 + 1512);
    *(v0 + 1344) = v125;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1320, &unk_1002DFC10, &qword_10022E6D0);
    v128._countAndFlagsBits = sub_1000C6F9C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v128);
    sub_1000C68A8(v216 + v214[5], v127, &qword_1002DA970, &qword_1002318B0);
    v129 = sub_100013DDC();
    v131 = sub_100004DFC(v129, v130, v110);
    v132 = *(v0 + 1512);
    if (v131 == 1)
    {
      sub_100004E24(*(v0 + 1512), &qword_1002DA970, &qword_1002318B0);
      *(v0 + 1352) = 0u;
      *(v0 + 1368) = 0u;
    }

    else
    {
      *(v0 + 1376) = v110;
      sub_100007914((v0 + 1352));
      sub_10000B7EC(v110);
      (*(v133 + 32))();
    }

    v134 = *(v0 + 1656);
    v135 = *(v0 + 1648);
    v136 = *(v0 + 1640);
    v137 = *(v0 + 1592);
    v138 = *(v0 + 1560);
    v139 = *(v0 + 1528);
    v193 = *(v0 + 1496);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1352, &unk_1002DFC10, &qword_10022E6D0);
    v140._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v140);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v180(v137, v138);
    sub_100007F24();
    sub_1000C6B44(v216, v134);
    memcpy((v0 + 344), v134, 0x148uLL);
    sub_1000C6E94(v214[5]);
    sub_1000C6E94(v214[6]);
    (*(*(v110 - 8) + 16))(&v135[v136[7]], &v134[v136[7]], v110);
    LOWORD(v137) = *&v134[v214[8]];
    sub_1000C68A8(&v134[v214[9]], &v135[v214[9]], &qword_1002DA970, &qword_1002318B0);
    LOWORD(v138) = *&v134[v136[10]];
    sub_1000C6E94(v214[11]);
    v141 = v214[13];
    v142 = *&v134[v214[12]];
    sub_100007B78();
    sub_100002728(v143, v144, v145, v197);
    sub_1000C6E94(v136[14]);
    sub_1000C68A8(v0 + 344, v0 + 672, &qword_1002DB920, &qword_100238870);
    sub_100004A2C();
    sub_100010478();
    memcpy(v135, (v0 + 344), 0x148uLL);
    *&v135[v214[8]] = v137;
    *&v135[v136[10]] = v138;
    *&v135[v214[12]] = v142;
    sub_1000C2798(v206 + v204, v135);
    v146 = *(v0 + 1584);
    v147 = *(v0 + 1496);
    static Log.accountsDataSync.getter();
    v148 = swift_allocObject();
    sub_1000C72F8(v148, xmmword_1002329D0);
    *(v0 + 1408) = v181;
    *(v0 + 1384) = v147;

    v149 = AMSLogKey();
    if (v149)
    {
      v150 = v149;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v163 = *(v0 + 1648);
    v164 = *(v0 + 1640);
    v165 = *(v0 + 1584);
    v166 = *(v0 + 1560);
    v200 = *(v0 + 1488);
    v202 = *(v0 + 1496);
    v167 = *(v0 + 1480);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 1384));
    LogInterpolation.init(stringLiteral:)();
    *(v0 + 1440) = v164;
    sub_100007914((v0 + 1416));
    sub_100007F24();
    sub_1000C6B44(v163, v168);
    static LogInterpolation.sensitive(_:)();
    sub_100004E24(v0 + 1416, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    v180(v165, v166);
    sub_1000BCBCC(v190, v167, v200, v169, v170, v171, v172, v173, 3, 6u, 0, v176, v177, v178, v179, v180, v181, 2 * v211, v182, v183, v59 + 8);
    v174 = *(v0 + 1648);
    sub_100004A2C();
    sub_100010478();
    v78 = v187;
  }

  if (v78)
  {
    sub_100003F74();
    v203 = *(v0 + 1584);
    v205 = *(v0 + 1576);
    v80 = *(v0 + 1552);
    v207 = *(v0 + 1536);
    v209 = *(v0 + 1528);
    v212 = *(v0 + 1520);
    v215 = *(v0 + 1512);
    v217 = *(v0 + 1504);
    v81 = sub_1000C6DEC((*(v0 + 1496) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore));
    v82(v81);
    sub_100006C84();
    sub_100010478();
    sub_10000DE88();
    sub_100010478();
    sub_1000050CC();
    sub_100010478();

    sub_100002E08();

    return v83();
  }

  else
  {
    v89 = *(v0 + 1576);
    v90 = *(v0 + 1496);
    static Log.accountsDataSync.getter();
    *(swift_allocObject() + 16) = v175;
    *(v0 + 1088) = v181;
    *(v0 + 1064) = v90;

    v91 = AMSLogKey();
    if (v91)
    {
      v92 = v91;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v151 = *(v0 + 1640);
    v152 = *(v0 + 1576);
    v153 = *(v0 + 1560);
    v154 = *(v0 + 1496);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 1064));
    LogInterpolation.init(stringLiteral:)();
    *(v0 + 1120) = v151;
    sub_100007914((v0 + 1096));
    sub_100007F24();
    sub_1000C6B44(v216, v155);
    static LogInterpolation.sensitive(_:)();
    sub_100004E24(v0 + 1096, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    v180(v152, v153);
    v156 = sub_1000C7278((v154 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_notifier));
    v157(v156);
    swift_task_alloc();
    sub_10000DEA0();
    *(v0 + 1696) = v158;
    *v158 = v159;
    v158[1] = sub_1000C1558;
    v160 = *(v0 + 1672);
    v161 = *(v0 + 1496);

    return sub_1000C288C();
  }
}