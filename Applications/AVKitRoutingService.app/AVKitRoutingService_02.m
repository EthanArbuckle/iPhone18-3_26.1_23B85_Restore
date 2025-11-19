uint64_t sub_100037028(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100037070(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100037108()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100037184()
{
  result = qword_100083B80;
  if (!qword_100083B80)
  {
    sub_100008218(&qword_100083B88, &qword_100062040);
    sub_100037260(&qword_100083B90, &qword_100083B98, &qword_100062048, sub_100037230);
    sub_100037330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B80);
  }

  return result;
}

uint64_t sub_100037260(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008218(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000372D8()
{
  result = qword_100083BB0;
  if (!qword_100083BB0)
  {
    sub_100008218(&qword_100083BB8, &qword_100062058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BB0);
  }

  return result;
}

unint64_t sub_100037330()
{
  result = qword_100083BC0;
  if (!qword_100083BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BC0);
  }

  return result;
}

uint64_t sub_100037388(uint64_t a1, int a2)
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

uint64_t sub_1000373D0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for InputPickerContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InputPickerContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100037598@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000375A4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000375D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100037658()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000376C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100037744(void *a1)
{
  v2 = sub_100003B30(&qword_100083BD8, &qword_100062240);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v36 - v5;
  v7 = sub_100003B30(&qword_100083BE0, &qword_100062248);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v36 - v11;
  v13 = sub_100003B30(&qword_100083BE8, &qword_100062250);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v36 - v21;
  v23 = [a1 modelID];
  if (!v23)
  {
    goto LABEL_4;
  }

  v37 = v12;
  v39 = v7;
  v40 = v8;
  v24 = v23;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100003B30(&qword_100083BF0, &qword_100062258);
  Regex.init(_regexString:version:)();
  String.subscript.getter();

  sub_1000391A8();
  v38 = v22;
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  v25 = *(v14 + 8);
  v25(v19, v13);

  v27 = v39;
  v26 = v40;
  if ((*(v40 + 48))(v6, 1, v39) == 1)
  {
    v25(v38, v13);
    sub_10003920C(v6);
LABEL_4:
    v28 = 0;
    LOBYTE(v29) = 1;
    return v28 | ((v29 & 1) << 32);
  }

  (*(v26 + 32))(v37, v6, v27);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v31 = v41;
  v32 = v42;
  v33 = v44;
  if (!((v42 ^ v41) >> 14))
  {
    (*(v40 + 8))(v37, v27);
    v25(v38, v13);

    goto LABEL_4;
  }

  v34 = v43;
  v35 = sub_100038830(v41, v42, v43, v44, 10);
  if ((v35 & 0x10000000000) != 0)
  {
    v35 = sub_100037E34(v31, v32, v34, v33, 10);
  }

  (*(v40 + 8))(v37, v27);
  v25(v38, v13);

  v29 = (v35 & &_mh_execute_header) >> 32;
  v28 = v35;
  if ((v35 & &_mh_execute_header) != 0)
  {
    v28 = 0;
  }

  return v28 | ((v29 & 1) << 32);
}

uint64_t sub_100037C00()
{
  v1 = v0[2];
  v2 = v0[3];
  v6 = *v0;
  v7 = v0[1];

  v3._countAndFlagsBits = 45;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);
  return v6;
}

Swift::Int sub_100037C74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100037CE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100037D2C()
{
  v1 = 0x7070412D6E49;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 17219;
  }
}

unint64_t sub_100037D7C()
{
  result = qword_100083BC8;
  if (!qword_100083BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BC8);
  }

  return result;
}

unint64_t sub_100037DD4()
{
  result = qword_100083BD0;
  if (!qword_100083BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BD0);
  }

  return result;
}

unsigned __int8 *sub_100037E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_100039274();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000383BC();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000383BC()
{
  v0 = String.subscript.getter();
  v4 = sub_10003843C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10003843C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10005349C(v9, 0);
  v12 = sub_100038594(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_100038594(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000387B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000387B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000387B4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100038830(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100038AD0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

void *sub_1000388F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 availableInputDevices];
  sub_1000392C8();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 deviceID];
      if (v12)
      {
        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (String.init<A>(_:)() == a2 && v14 == a3)
        {

          return v10;
        }

        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {

          return v10;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

uint64_t sub_100038AD0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000387B4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000387B4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000387B4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_100038F3C(void *a1)
{
  v2 = sub_100037744(a1);
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v2;
    if (sub_1000261B4(v2))
    {
      v4 = [objc_opt_self() productInfoWithProductID:v3];
      v5 = [v4 sfSymbolNameMain];
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v7;
      }
    }
  }

  v9 = [a1 deviceType];
  if (!v9)
  {
    return 0x73647562726165;
  }

  v10 = 0x6F68706F7263696DLL;
  if (v9 == 1)
  {
    v10 = 0x6E692E656E696CLL;
  }

  if (v9 == 3)
  {
    return 0x6F632E656C626163;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_100039078@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 deviceID];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v20 = v6;
    v21 = v8;
    v9 = String.init<A>(_:)();
  }

  else
  {
    v20 = a1;
    v9 = String.init<A>(describing:)();
  }

  v11 = v9;
  v12 = v10;
  v13 = [a1 deviceName];
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = String.init<A>(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  result = sub_100038F3C(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = result;
  a2[5] = v19;
  return result;
}

unint64_t sub_1000391A8()
{
  result = qword_100083BF8;
  if (!qword_100083BF8)
  {
    sub_100008218(&qword_100083BE8, &qword_100062250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BF8);
  }

  return result;
}

uint64_t sub_10003920C(uint64_t a1)
{
  v2 = sub_100003B30(&qword_100083BD8, &qword_100062240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100039274()
{
  result = qword_100083C00;
  if (!qword_100083C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C00);
  }

  return result;
}

unint64_t sub_1000392C8()
{
  result = qword_1000838B8;
  if (!qword_1000838B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000838B8);
  }

  return result;
}

id sub_100039314()
{
  v0 = type metadata accessor for Logger();
  sub_100039378(v0, qword_100086758);
  sub_1000080BC(v0, qword_100086758);
  result = sub_10005AA5C();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

uint64_t *sub_100039378(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000393DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100039424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003948C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_100003B78(v4);
}

unint64_t sub_100039508(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100003B78(*a1);
  return sub_1000021B8(v2);
}

uint64_t sub_10003953C()
{
  result = static Color.clear.getter();
  qword_100083C08 = result;
  return result;
}

uint64_t sub_10003955C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  swift_getKeyPath();
  v19 = v18;
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v18 + 40);

  v7 = *(v6 + 16);

  v8 = sub_100003B30(&qword_100083C18, &qword_100062348);
  v10 = v8;
  v11 = *(v8 - 8);
  v12 = v11;
  if (!v7)
  {
    return (*(v11 + 56))(a3, 1, 1, v8);
  }

  v13 = *(v11 + 64);
  __chkstk_darwin(v8, v9);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039714(a1, a2);
  (*(v12 + 32))(a3, v15, v10);
  return (*(v12 + 56))(a3, 0, 1, v10);
}

uint64_t sub_100039714(void *a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083C20, &qword_100062350);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = (v18 - v7);
  *v8 = static Alignment.center.getter();
  v8[1] = v9;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = v8 + *(sub_100003B30(&qword_100083C28, &qword_100062358) + 44);
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100003B30(&qword_100083C30, &qword_100062360);
  sub_1000399B4(a1, a2, &v10[*(v11 + 44)]);

  v12 = static Edge.Set.all.getter();
  v13 = v8 + *(v4 + 36);
  *v13 = v12;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  v19 = a1;
  v20 = a2;
  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  v14 = v18[1];
  swift_getKeyPath();
  v19 = v14;
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = v14[4];
  sub_100003B78(v15);

  v19 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_10003B534();
  sub_100027918();

  View.onChange<A>(of:initial:_:)();

  sub_100003C9C(v15);
  return sub_100008B68(v8, &qword_100083C20, &qword_100062350);
}

uint64_t sub_1000399B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v59 = a1;
  v60 = a3;
  type metadata accessor for MainActor();
  v61 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_10005D95C(v4);

  HIDWORD(v4) = static String._unconditionallyBridgeFromObjectiveC(_:)() >> 32;
  v8 = v7;

  HIDWORD(v68) = HIDWORD(v4);
  v69 = v8;
  sub_10003B5D4();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  LOBYTE(v6) = v12;
  LODWORD(v68) = static HierarchicalShapeStyle.secondary.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  sub_10003B628(v9, v11, v6 & 1);

  static Font.footnote.getter();
  v56 = Text.font(_:)();
  v55 = v18;
  LOBYTE(v11) = v19;
  v57 = v20;

  sub_10003B628(v13, v15, v17 & 1);

  v54 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v53 = v11 & 1;
  LOBYTE(v68) = v11 & 1;
  LOBYTE(v64) = 0;
  v29 = sub_100003B30(&qword_100083C58, &qword_100062398);
  v58 = v52;
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  v33 = __chkstk_darwin(v29, v32);
  v34 = v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[1] = v52;
  v36 = __chkstk_darwin(v33, v35);
  v52[-2] = v59;
  v52[-1] = a2;
  __chkstk_darwin(v36, v37);
  v52[-2] = v38;
  v52[-1] = a2;
  sub_100003B30(&qword_100083C60, &qword_1000623A0);
  sub_100003B30(&qword_100083C68, &qword_1000623A8);
  sub_10003B648();
  v39 = sub_100008218(&qword_100083CB0, &qword_1000623C8);
  v40 = sub_10003B7DC();
  v68 = v39;
  v69 = v40;
  swift_getOpaqueTypeConformance2();
  Menu.init(content:label:)();
  v41 = sub_100003B30(&qword_100083D10, &qword_1000623F8);
  v59 = v52;
  v34[*(v41 + 36)] = 0;
  v34[*(v30 + 44)] = 0;
  __chkstk_darwin(v41, v42);
  sub_10003B9BC(v34, v34);
  v43 = v56;
  *&v64 = v56;
  v44 = v55;
  *(&v64 + 1) = v55;
  LOBYTE(v31) = v53;
  LOBYTE(v65) = v53;
  *(&v65 + 1) = *v63;
  DWORD1(v65) = *&v63[3];
  v45 = v57;
  *(&v65 + 1) = v57;
  LOBYTE(v30) = v54;
  LOBYTE(v66) = v54;
  *(&v66 + 1) = *v62;
  DWORD1(v66) = *&v62[3];
  *(&v66 + 1) = v22;
  *v67 = v24;
  *&v67[8] = v26;
  *&v67[16] = v28;
  v67[24] = 0;
  v46 = v64;
  v47 = v65;
  v48 = v60;
  *(v60 + 57) = *&v67[9];
  v49 = *v67;
  v48[2] = v66;
  v48[3] = v49;
  *v48 = v46;
  v48[1] = v47;
  v50 = sub_100003B30(&qword_100083D18, &qword_100062400);
  sub_10003B9BC(v34, v48 + *(v50 + 48));
  sub_100008AF8(&v64, &v68, &qword_100083D20, &qword_100062408);
  sub_100008B68(v34, &qword_100083C58, &qword_100062398);
  sub_100008B68(v34, &qword_100083C58, &qword_100062398);
  v68 = v43;
  v69 = v44;
  v70 = v31;
  *v71 = *v63;
  *&v71[3] = *&v63[3];
  v72 = v45;
  v73 = v30;
  *v74 = *v62;
  *&v74[3] = *&v62[3];
  v75 = v22;
  v76 = v24;
  v77 = v26;
  v78 = v28;
  v79 = 0;
  sub_100008B68(&v68, &qword_100083D20, &qword_100062408);
}

uint64_t sub_100039F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  type metadata accessor for MainActor();
  v41 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_100003B30(&qword_100083CB0, &qword_1000623C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v39 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_10005D95C(v10);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v49 = v13;
  v50 = v15;
  *&v44 = a1;
  *(&v44 + 1) = a2;
  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.projectedValue.getter();
  v16 = v46;
  v17 = v47;
  v18 = v48;
  swift_getKeyPath();
  v46 = v16;
  v47 = v17;
  v48 = v18;
  sub_100003B30(&qword_100083D28, &qword_100062440);
  Binding.subscript.getter();

  v39 = v44;
  v19 = v45;

  v42 = v39;
  v43 = v19;
  __chkstk_darwin(v20, v21);
  sub_100003B30(&qword_100083D30, &qword_100062448);
  sub_10003BA3C();
  sub_10003BA90();
  sub_10003B5D4();
  Picker<>.init<A>(_:selection:content:)();
  LOBYTE(v19) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v9[*(sub_100003B30(&qword_100083CD8, &qword_1000623D8) + 36)];
  *v30 = v19;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Alignment.center.getter();
  v33 = v32;
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = v31;
  v47 = v33;
  sub_100003B30(&qword_100083D50, &unk_100062458);
  sub_100009034(&qword_100083D58, &qword_100083D50, &unk_100062458);
  v34 = AnyView.init<A>(_:)();
  *&v9[*(sub_100003B30(&qword_100083CC8, &qword_1000623D0) + 36)] = v34;
  if (qword_1000831F8 != -1)
  {
    swift_once();
  }

  v35 = qword_100083C08;
  v36 = static Edge.Set.all.getter();
  v37 = &v9[*(v5 + 36)];
  *v37 = v35;
  v37[8] = v36;
  sub_10003B7DC();

  View.labels(_:)();
  sub_100008B68(v9, &qword_100083CB0, &qword_1000623C8);
}

uint64_t sub_10003A418(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v7 + 40);

  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_100003B30(&qword_100083D60, &qword_100062480);
  sub_100003B30(&qword_100083D68, &qword_100062488);
  sub_10003BBC8();
  sub_10003BA3C();
  sub_100008218(&qword_100083208, &qword_100062450);
  sub_100009034(&qword_100083D48, &qword_100083208, &qword_100062450);
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
}

uint64_t sub_10003A66C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_100003B30(&qword_100083208, &qword_100062450);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v18 - v13;
  __chkstk_darwin(v12, v15);
  *(&v18 - 4) = v7;
  *(&v18 - 3) = a2;
  *(&v18 - 2) = a3;
  sub_100003B30(&qword_100083D88, &qword_100062498);
  sub_10003BCBC();
  Button.init(action:label:)();
  (*(v9 + 32))(a4, v14, v8);
  v16 = a4 + *(sub_100003B30(&qword_100083210, "J=") + 36);
  *v16 = v7;
  *(v16 + 8) = 1;
  sub_100003B78(v7);
}

uint64_t sub_10003A874()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_10003A904@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_100003B30(&qword_100083D88, &qword_100062498);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v69 = &v59 - v12;
  v70 = v8;
  v71 = a4;
  if (a1 >= 3)
  {
    v20 = *(a1 + 16);
    v21 = sub_100003B30(&qword_100083DB0, &unk_1000624A8);
    v66 = &v59;
    v62 = v21;
    v65 = *(v21 - 8);
    v22 = *(v65 + 64);
    __chkstk_darwin(v21, v23);
    v64 = v24;
    v25 = (&v59 - v24);
    sub_100003B78(v20);
    v73 = sub_100027530();
    v74 = v26;
    v67 = v20;
    sub_10003B5D4();
    v68 = v25;
    Label<>.init<A>(_:systemImage:)();
    v73 = a2;
    v74 = a3;
    sub_100003B30(&qword_100083C10, &qword_100062318);
    State.wrappedValue.getter();
    v27 = v72;
    swift_getKeyPath();
    v73 = v27;
    sub_10003B498();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v20) = *(v27 + 24);

    if (v20 == 1)
    {
      v73 = sub_100027530();
      v74 = v28;
      v29 = Text.init<A>(_:)();
      v31 = v30;
      v34 = v33;
      v35 = v32 & 1;
      sub_10003BE38(v29, v33, v32 & 1);
      v36 = v31;
    }

    else
    {
      v29 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    v60 = sub_100003B30(&qword_100083DA0, &qword_1000624A0);
    v63 = &v59;
    v37 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v39 = __chkstk_darwin(v60, v38);
    v41 = &v59 - v40;
    v61 = &v59;
    __chkstk_darwin(v39, v42);
    v43 = v65;
    v44 = (&v59 - v64);
    v45 = *(v65 + 16);
    v46 = v62;
    v45(&v59 - v64, v68, v62);
    v45(v41, v44, v46);
    v47 = &v41[*(sub_100003B30(&qword_100083DC0, &qword_1000624E8) + 48)];
    v59 = v41;
    *v47 = v29;
    v47[1] = v34;
    v47[2] = v35;
    v47[3] = v36;
    sub_10003BDF4(v29, v34, v35, v36);
    sub_10003BE48(v29, v34, v35, v36);
    v65 = *(v43 + 8);
    (v65)(v44, v46);
    v48 = sub_100003B30(&qword_100083DB8, &qword_1000624B8);
    v64 = &v59;
    v49 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v48, v50);
    sub_100008AF8(v41, &v59 - v51, &qword_100083DA0, &qword_1000624A0);
    swift_storeEnumTagMultiPayload();
    sub_100009034(&qword_100083D98, &qword_100083DA0, &qword_1000624A0);
    sub_100009034(&qword_100083DA8, &qword_100083DB0, &unk_1000624A8);
    v52 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_10003BE48(v29, v34, v35, v36);
    sub_100003C9C(v67);
    sub_100008B68(v59, &qword_100083DA0, &qword_1000624A0);
    v57 = v52;
    (v65)(v68, v46);
  }

  else
  {
    v13 = sub_100003B30(&qword_100083DB0, &unk_1000624A8);
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    __chkstk_darwin(v13, v16);
    v18 = &v59 - v17;
    v73 = sub_100027530();
    v74 = v19;
    sub_10003B5D4();
    Label<>.init<A>(_:systemImage:)();
    v53 = sub_100003B30(&qword_100083DB8, &qword_1000624B8);
    v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v53, v55);
    (*(v14 + 16))(&v59 - v56, v18, v13);
    swift_storeEnumTagMultiPayload();
    sub_100003B30(&qword_100083DA0, &qword_1000624A0);
    sub_100009034(&qword_100083D98, &qword_100083DA0, &qword_1000624A0);
    sub_100009034(&qword_100083DA8, &qword_100083DB0, &unk_1000624A8);
    v57 = v69;
    _ConditionalContent<>.init(storage:)();
    (*(v14 + 8))(v18, v13);
  }

  sub_10003BD7C(v57, v71);
}

uint64_t sub_10003B108@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003B498();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v13 + 32);
  sub_100003B78(v2);

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x8000000100068C30;
      v4 = 0xD000000000000012;
    }

    else if (v2 == 2)
    {
      v3 = 0x8000000100068C50;
      v4 = 0xD000000000000019;
    }

    else
    {
      sub_100003C9C(v2);
      v3 = 0xE800000000000000;
      v4 = 0x6D726F6665766177;
    }
  }

  else
  {
    v3 = 0xEA0000000000656ELL;
    v4 = 0x6F68706F7263696DLL;
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v13 + 32);
  sub_100003B78(v5);

  v6 = sub_100027530();
  v8 = v7;
  sub_100003C9C(v5);
  v9 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v11 = static HierarchicalShapeStyle.secondary.getter();

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0xD000000000000017;
  *(a1 + 24) = 0x8000000100068C10;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = KeyPath;
  *(a1 + 72) = v9;
  *(a1 + 80) = v11;
  return result;
}

uint64_t sub_10003B3AC(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083C10, &qword_100062318);
  State.wrappedValue.getter();
  sub_100002E80(v2);
}

unint64_t sub_10003B498()
{
  result = qword_100083370;
  if (!qword_100083370)
  {
    type metadata accessor for InputPickerMicrophoneModesManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083370);
  }

  return result;
}

unint64_t sub_10003B4F4(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100003B78(*a1);
  return sub_1000021B8(v2);
}

uint64_t sub_10003B52C(uint64_t a1, unint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10003B3AC(a1, a2);
}

unint64_t sub_10003B534()
{
  result = qword_100083C38;
  if (!qword_100083C38)
  {
    sub_100008218(&qword_100083C20, &qword_100062350);
    sub_100009034(&qword_100083C40, &qword_100083C48, &qword_100062390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C38);
  }

  return result;
}

unint64_t sub_10003B5D4()
{
  result = qword_100083C50;
  if (!qword_100083C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C50);
  }

  return result;
}

uint64_t sub_10003B628(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10003B640@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10003B108(a1);
}

unint64_t sub_10003B648()
{
  result = qword_100083C70;
  if (!qword_100083C70)
  {
    sub_100008218(&qword_100083C60, &qword_1000623A0);
    sub_10003B6E8();
    sub_100009034(&qword_100083CA0, &qword_100083CA8, &qword_1000623C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C70);
  }

  return result;
}

unint64_t sub_10003B6E8()
{
  result = qword_100083C78;
  if (!qword_100083C78)
  {
    sub_100008218(&qword_100083C80, &unk_1000623B0);
    sub_10003B788();
    sub_100009034(&qword_100083C90, &qword_100083C98, &unk_100062AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C78);
  }

  return result;
}

unint64_t sub_10003B788()
{
  result = qword_100083C88;
  if (!qword_100083C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C88);
  }

  return result;
}

unint64_t sub_10003B7DC()
{
  result = qword_100083CB8;
  if (!qword_100083CB8)
  {
    sub_100008218(&qword_100083CB0, &qword_1000623C8);
    sub_10003B87C();
    sub_100009034(&qword_100083D00, &qword_100083D08, &qword_1000623F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083CB8);
  }

  return result;
}

unint64_t sub_10003B87C()
{
  result = qword_100083CC0;
  if (!qword_100083CC0)
  {
    sub_100008218(&qword_100083CC8, &qword_1000623D0);
    sub_10003B91C();
    sub_100009034(&qword_100083CF0, &qword_100083CF8, &qword_1000623E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083CC0);
  }

  return result;
}

unint64_t sub_10003B91C()
{
  result = qword_100083CD0;
  if (!qword_100083CD0)
  {
    sub_100008218(&qword_100083CD8, &qword_1000623D8);
    sub_100009034(&qword_100083CE0, &qword_100083CE8, &qword_1000623E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083CD0);
  }

  return result;
}

uint64_t sub_10003B9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083C58, &qword_100062398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003BA3C()
{
  result = qword_100083D38;
  if (!qword_100083D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D38);
  }

  return result;
}

unint64_t sub_10003BA90()
{
  result = qword_100083D40;
  if (!qword_100083D40)
  {
    sub_100008218(&qword_100083D30, &qword_100062448);
    sub_100008218(&qword_100083208, &qword_100062450);
    sub_100009034(&qword_100083D48, &qword_100083208, &qword_100062450);
    sub_10003BA3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D40);
  }

  return result;
}

uint64_t sub_10003BB80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003BBC8()
{
  result = qword_100083D70;
  if (!qword_100083D70)
  {
    sub_100008218(&qword_100083D60, &qword_100062480);
    sub_10003BC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D70);
  }

  return result;
}

unint64_t sub_10003BC4C()
{
  result = qword_100083D78;
  if (!qword_100083D78)
  {
    sub_100008218(&qword_100083D80, &qword_100062490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D78);
  }

  return result;
}

unint64_t sub_10003BCBC()
{
  result = qword_100083D90;
  if (!qword_100083D90)
  {
    sub_100008218(&qword_100083D88, &qword_100062498);
    sub_100009034(&qword_100083D98, &qword_100083DA0, &qword_1000624A0);
    sub_100009034(&qword_100083DA8, &qword_100083DB0, &unk_1000624A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D90);
  }

  return result;
}

uint64_t sub_10003BD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083D88, &qword_100062498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BDF4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10003BE38(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10003BE38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10003BE48(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10003B628(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10003BE90()
{
  result = qword_100083DC8;
  if (!qword_100083DC8)
  {
    sub_100008218(&qword_100083DD0, &unk_1000624F0);
    sub_100008218(&qword_100083C20, &qword_100062350);
    sub_10003B534();
    sub_100027918();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083DC8);
  }

  return result;
}

void sub_10003BF94(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1;
  v5 = static HorizontalAlignment.leading.getter();
  sub_10003CDD0(&v20);
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v15 = v5;
  LOBYTE(v16) = 1;
  *(&v16 + 1) = v6;
  *&v17 = v7;
  BYTE8(v17) = v8;
  *&v18 = v9;
  *(&v18 + 1) = KeyPath;
  *(a2 + 24) = v16;
  v12 = v18;
  *(a2 + 40) = v17;
  *(a2 + 56) = v12;
  v19 = v10;
  v20 = v5;
  v14[72] = 1;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  v21 = 0;
  v22 = 1;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = KeyPath;
  v28 = v10;
  v13 = v4;
  sub_100008AF8(&v15, v14, &qword_100083E50, &qword_100062790);
  sub_100008B68(&v20, &qword_100083E50, &qword_100062790);
}

double sub_10003C124@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static VerticalAlignment.center.getter();
  v17 = 1;
  sub_10003BF94(v3, &v11);
  v20 = v13;
  v21 = v14;
  v22[0] = v15[0];
  *(v22 + 9) = *(v15 + 9);
  v18 = v11;
  v19 = v12;
  *(v24 + 9) = *(v15 + 9);
  v23[2] = v13;
  v23[3] = v14;
  v24[0] = v15[0];
  v23[0] = v11;
  v23[1] = v12;
  sub_100008AF8(&v18, &v10, &qword_100083E58, &qword_100062798);
  sub_100008B68(v23, &qword_100083E58, &qword_100062798);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22[0];
  *&v16[80] = *(v22 + 9);
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v5;
  v6 = *&v16[80];
  *(a1 + 81) = *&v16[64];
  *(a1 + 97) = v6;
  result = *&v16[16];
  v8 = *v16;
  *(a1 + 33) = *&v16[16];
  v9 = v17;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_10003C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  type metadata accessor for MainActor();
  v72 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_100003B30(&qword_100083DE0, &qword_100062648);
  v66 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v64 - v5;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100003B30(&qword_100083DE8, &qword_100062650);
  sub_10003CA00(&v6[*(v7 + 44)]);
  v71 = *(a1 + 152);
  v69 = static Color.primary.getter();
  v68 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v79) = 0;
  v16 = sub_100003B30(&qword_100083DF0, &qword_100062658);
  v70 = &v64;
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v73 = &v64 - v19;
  v20 = *(a1 + 64);
  swift_getKeyPath();
  v79 = v20;
  sub_10003D1DC();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v20[81];

  v22 = sub_100003B30(&qword_100083DF8, &qword_100062688);
  v24 = v22;
  v25 = *(v22 - 8);
  v26 = v25;
  if (v21 == 1)
  {
    v65 = &v64;
    v27 = *(v25 + 64);
    __chkstk_darwin(v22, v23);
    v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);

    v30 = static MainActor.shared.getter();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = a1;

    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = &protocol witness table for MainActor;
    v33[4] = a1;
    Binding.init(get:set:)();
    *v75 = v79;
    *&v75[8] = v80;
    v74 = xmmword_100062500;
    sub_10003D250();
    Slider<>.init<A>(value:in:onEditingChanged:)();
    v34 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v36 = &v29[*(sub_100003B30(&qword_100083E18, &qword_1000626D0) + 36)];
    *v36 = KeyPath;
    v36[1] = v34;
    LOBYTE(v34) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v37 = &v29[*(v24 + 36)];
    *v37 = v34;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    v42 = v73;
    sub_10003D2FC(v29, v73);
    v43 = (*(v26 + 56))(v42, 0, 1, v24);
  }

  else
  {
    v43 = (*(v25 + 56))(v73, 1, 1, v22);
  }

  v65 = &v64;
  __chkstk_darwin(v43, v44);
  v46 = &v64 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100008AF8(v6, v46, &qword_100083DE0, &qword_100062648);
  v66 = &v64;
  __chkstk_darwin(v47, v48);
  v49 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v73;
  sub_100008AF8(v73, v49, &qword_100083DF0, &qword_100062658);
  v51 = v67;
  sub_100008AF8(v46, v67, &qword_100083DE0, &qword_100062648);
  v52 = sub_100003B30(&qword_100083E00, &qword_100062690);
  v53 = (v51 + *(v52 + 48));
  v54 = v71;
  *v75 = v71;
  v64 = xmmword_100062510;
  *&v75[8] = xmmword_100062510;
  v55 = v51;
  *&v75[24] = 0x4016000000000000;
  v56 = v69;
  *&v76 = v69;
  *(&v76 + 1) = 19;
  v57 = v6;
  v58 = v68;
  LOBYTE(v77) = v68;
  *(&v77 + 1) = v91[0];
  DWORD1(v77) = *(v91 + 3);
  *(&v77 + 1) = v9;
  *v78 = v11;
  *&v78[8] = v13;
  *&v78[16] = v15;
  v78[24] = 0;
  v59 = *&v75[16];
  *v53 = *v75;
  v53[1] = v59;
  v60 = v76;
  v61 = v77;
  v62 = *v78;
  *(v53 + 73) = *&v78[9];
  v53[3] = v61;
  v53[4] = v62;
  v53[2] = v60;
  sub_100008AF8(v49, v55 + *(v52 + 64), &qword_100083DF0, &qword_100062658);
  sub_100008AF8(v75, &v79, &qword_100083E08, &qword_100062698);
  sub_100008B68(v50, &qword_100083DF0, &qword_100062658);
  sub_100008B68(v57, &qword_100083DE0, &qword_100062648);
  sub_100008B68(v49, &qword_100083DF0, &qword_100062658);
  v79 = v54;
  v80 = v64;
  v81 = 0x4016000000000000;
  v82 = v56;
  v83 = 19;
  v84 = v58;
  *v85 = v91[0];
  *&v85[3] = *(v91 + 3);
  v86 = v9;
  v87 = v11;
  v88 = v13;
  v89 = v15;
  v90 = 0;
  sub_100008B68(&v79, &qword_100083E08, &qword_100062698);
  sub_100008B68(v46, &qword_100083DE0, &qword_100062648);
}

uint64_t sub_10003CA00@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  type metadata accessor for MainActor();
  v33 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = sub_100003B30(&qword_100083E20, &qword_100062700);
  v31 = &v27;
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1, v4);
  v5 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Image.init(systemName:)();
  v7 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v39 = v6;
  v40 = KeyPath;
  v41 = v7;
  static Font.Weight.medium.getter();
  sub_100003B30(&qword_100083E28, &unk_100062738);
  sub_10003D37C();
  View.fontWeight(_:)();

  v9 = static Edge.Set.all.getter();
  v10 = &v5[*(sub_100003B30(&qword_100083E38, &qword_100062748) + 36)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  v11 = &v5[*(v2 + 44)];
  static Material.selected.getter();
  *&v11[*(sub_100003B30(&qword_100083E40, &qword_100062750) + 56)] = 256;
  v29 = static HorizontalAlignment.leading.getter();
  sub_10003CDD0(&v39);
  v12 = v39;
  v13 = v40;
  v14 = v41;
  v15 = v42;
  v16 = static Color.primary.getter();
  v28 = swift_getKeyPath();
  v30 = &v27;
  LOBYTE(v39) = 1;
  LOBYTE(v34) = v14;
  __chkstk_darwin(v28, v17);
  sub_100008AF8(v5, v5, &qword_100083E20, &qword_100062700);
  v18 = v32;
  sub_100008AF8(v5, v32, &qword_100083E20, &qword_100062700);
  v19 = sub_100003B30(&qword_100083E48, &qword_100062788);
  v20 = v18 + *(v19 + 48);
  v21 = v29;
  v34 = v29;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = v12;
  *&v36 = v13;
  BYTE8(v36) = v14;
  v22 = v28;
  *&v37 = v15;
  *(&v37 + 1) = v28;
  v38 = v16;
  *(v20 + 64) = v16;
  v23 = v35;
  *v20 = v34;
  *(v20 + 16) = v23;
  v24 = v37;
  *(v20 + 32) = v36;
  *(v20 + 48) = v24;
  v25 = v18 + *(v19 + 64);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_100008AF8(&v34, &v39, &qword_100083E50, &qword_100062790);
  sub_100008B68(v5, &qword_100083E20, &qword_100062700);
  v39 = v21;
  v40 = 0;
  LOBYTE(v41) = 1;
  v42 = v12;
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v22;
  v47 = v16;
  sub_100008B68(&v39, &qword_100083E50, &qword_100062790);
  sub_100008B68(v5, &qword_100083E20, &qword_100062700);
}

uint64_t sub_10003CDD0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_10005D95C(v2);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10003B5D4();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  LOBYTE(v4) = v8;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10003B628(v5, v7, v4 & 1);

  static Font.Weight.medium.getter();
  v14 = Text.fontWeight(_:)();
  v16 = v15;
  LOBYTE(v4) = v17;
  v19 = v18;
  sub_10003B628(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_10003CFC8@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 64);
  swift_getKeyPath();
  sub_10003D1DC();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 88);

  *a2 = v5;
  return result;
}

uint64_t sub_10003D0CC(double *a1)
{
  v1 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10002F164(v1);
}

uint64_t sub_10003D17C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100003B30(&qword_100083DD8, &qword_100062640);
  return sub_10003C288(v3, a1 + *(v4 + 44));
}

unint64_t sub_10003D1DC()
{
  result = qword_100083B20;
  if (!qword_100083B20)
  {
    type metadata accessor for RoutingControllerInputPickerViewModel.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B20);
  }

  return result;
}

uint64_t sub_10003D238@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10003CFC8(v1[4], a1);
}

uint64_t sub_10003D244(double *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10003D0CC(a1);
}

unint64_t sub_10003D250()
{
  result = qword_100083E10;
  if (!qword_100083E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083E10);
  }

  return result;
}

uint64_t sub_10003D2A4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003D2D0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.accentColor.setter();
}

uint64_t sub_10003D2FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083DF8, &qword_100062688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003D37C()
{
  result = qword_100083E30;
  if (!qword_100083E30)
  {
    sub_100008218(&qword_100083E28, &unk_100062738);
    sub_100009034(&qword_100083548, &qword_100083550, &qword_100061480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083E30);
  }

  return result;
}

__n128 sub_10003D4A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003D4C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_10003D508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003D578(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  if (a1[6])
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_10003D5CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003D668()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher._combine(_:)(*(v0 + 48));
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10003D6F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10003D78C(uint64_t *a1@<X8>)
{
  if (*(v1 + 48))
  {
    v3 = 0x79537341656D6173;
    v4 = 0xED00002E6D657473;
  }

  else
  {
    v3 = 0x6F697463656C6573;
    v4 = 0xEA00000000002E6ELL;
  }

  v5 = v3;
  v6 = v4;
  String.append(_:)(*v1);
  *a1 = v5;
  a1[1] = v6;
}

unint64_t sub_10003D814()
{
  result = qword_100083E80;
  if (!qword_100083E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083E80);
  }

  return result;
}

uint64_t sub_10003D868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 48))
  {
    v12 = *v0;
    v3 = 0x79537341656D6173;
    v4 = 0xED00002E6D657473;
  }

  else
  {
    v12 = *v0;
    v3 = 0x6F697463656C6573;
    v4 = 0xEA00000000002E6ELL;
  }

  v10 = v3;
  v11 = v4;
  v9 = *v0;
  sub_100025FCC(&v12, &v8);
  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  String.append(_:)(v6);
  String.append(_:)(v9);

  return v10;
}

__n128 sub_10003D944(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003D958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10003D9A0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10003DA1C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(sub_100003B30(&qword_100083E88, &qword_1000629C8) + 44));
  *v4 = static Alignment.center.getter();
  v4[1] = v5;
  v6 = sub_100003B30(&qword_100083E90, &unk_1000629D0);
  sub_10003DBD8(v1, v4 + *(v6 + 44));

  static Alignment.center.getter();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083D50, &unk_100062458);
  sub_100009034(&qword_100083D58, &qword_100083D50, &unk_100062458);
  v7 = AnyView.init<A>(_:)();
  result = sub_100003B30(&qword_100083E98, &qword_1000629E0);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_10003DBD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v56 = a2;
  type metadata accessor for MainActor();
  v55 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_100003B30(&qword_100083EA0, &qword_1000629E8);
  v54 = v51;
  v3 = v2 - 8;
  v4 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2, v5);
  v7 = v51 - v6;
  v8 = sub_100003B30(&qword_100083EA8, &qword_1000629F0);
  v53 = v51;
  v9 = v8 - 8;
  v10 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8, v11);
  v13 = v51 - v12;
  v14 = sub_100003B30(&qword_100083EB0, &qword_1000629F8);
  v51[1] = v51;
  v15 = v14 - 8;
  v16 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14, v17);
  v19 = v51 - v18;
  v20 = sub_100003B30(&qword_100083EB8, &qword_100062A00);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20 - 8, v22);
  v24 = v51 - v23;
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = sub_100003B30(&qword_100083EC0, &qword_100062A08);
  sub_10003DFB4(v52, &v24[*(v25 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100008A90(v24, v19, &qword_100083EB8, &qword_100062A00);
  v26 = &v19[*(v15 + 44)];
  v27 = v62;
  *(v26 + 4) = v61;
  *(v26 + 5) = v27;
  *(v26 + 6) = v63;
  v28 = v58;
  *v26 = v57;
  *(v26 + 1) = v28;
  v29 = v60;
  *(v26 + 2) = v59;
  *(v26 + 3) = v29;
  v30 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100008A90(v19, v13, &qword_100083EB0, &qword_1000629F8);
  v39 = &v13[*(v9 + 44)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_100008A90(v13, v7, &qword_100083EA8, &qword_1000629F0);
  v49 = &v7[*(v3 + 44)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_100008A90(v7, v56, &qword_100083EA0, &qword_1000629E8);
}

uint64_t sub_10003DFB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  type metadata accessor for MainActor();
  v90 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v89 = v76;
  v84 = sub_100003B30(&qword_100083EC8, &qword_100062A10);
  v3 = *(*(v84 - 1) + 64);
  v5 = __chkstk_darwin(v84, v4);
  v91 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v76;
  v85 = v6;
  __chkstk_darwin(v5, v7);
  v83 = v76 - v8;
  v9 = sub_100003B30(&qword_100083ED0, &qword_100062A18);
  v86 = v76;
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  __chkstk_darwin(v9, v11);
  v79 = v76 - v12;
  v80 = a1;
  if (a1[1])
  {
    v13 = *a1;
    v14 = a1[1];
  }

  v78 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = v105;
  v16 = v106;
  v17 = v107;
  v18 = v108;
  v20 = v109;
  v19 = v110;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v104 = v16;
  v103 = v18;
  v21 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v23 = static Font.title3.getter();
  v24 = swift_getKeyPath();
  *&v95 = v78;
  *(&v95 + 1) = v15;
  LOBYTE(v96[0]) = v16;
  *(&v96[0] + 1) = v17;
  LOBYTE(v96[1]) = v18;
  *(&v96[1] + 1) = v20;
  *&v96[2] = v19;
  *(&v97 + 1) = KeyPath;
  *&v98 = v21;
  *(&v98 + 1) = v24;
  v99 = v23;
  static Font.Weight.medium.getter();
  sub_100003B30(&qword_100083ED8, &qword_100062A80);
  sub_10003F028(&qword_100083EE0, &qword_100083ED8, &qword_100062A80, sub_10003EE20);
  v25 = v79;
  View.fontWeight(_:)();
  v100[10] = v97;
  v100[11] = v98;
  v101 = v99;
  v100[6] = v96[5];
  v100[7] = v96[6];
  v100[8] = v96[7];
  v100[9] = v96[8];
  v100[2] = v96[1];
  v100[3] = v96[2];
  v100[4] = v96[3];
  v100[5] = v96[4];
  v100[0] = v95;
  v100[1] = v96[0];
  sub_100008B68(v100, &qword_100083ED8, &qword_100062A80);
  LOBYTE(v19) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v83;
  (*(v81 + 32))(v83, v25, v82);
  v35 = v34 + *(v84 + 9);
  *v35 = v19;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  sub_100008A90(v34, v91, &qword_100083EC8, &qword_100062A10);
  v83 = static HorizontalAlignment.leading.getter();
  LOBYTE(v95) = 1;
  v36 = v80;
  sub_10003E900(v80, v102);
  *&v94[7] = v102[0];
  *&v94[23] = v102[1];
  *&v94[39] = v102[2];
  *&v94[55] = v102[3];
  LODWORD(v81) = v95;
  LODWORD(v82) = static HierarchicalShapeStyle.primary.getter();
  v37 = sub_100003B30(&qword_100083F18, &qword_100062AB0);
  v84 = v76;
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8, v39);
  v41 = (v76 - v40);
  if (v36[3])
  {
    v42 = v36[2];
    v78 = sub_100003B30(&qword_100083F20, &qword_100062AB8);
    v79 = v76;
    v43 = *(v78 - 8);
    v44 = *(v43 + 64);
    __chkstk_darwin(v78, v45);
    v77 = v76 - v46;

    v47 = Image.init(systemName:)();
    v76[2] = v47;
    v48 = static Color.primary.getter();
    v76[1] = v48;
    v49 = swift_getKeyPath();
    v50 = static Font.body.getter();
    v80 = v41;
    v51 = v50;
    v52 = swift_getKeyPath();
    *&v95 = v47;
    *(&v95 + 1) = v49;
    *&v96[0] = v48;
    *(&v96[0] + 1) = v52;
    *&v96[1] = v51;
    static Font.Weight.medium.getter();
    sub_100003B30(&qword_100083F38, &qword_100062AD0);
    sub_10003F028(&qword_100083F40, &qword_100083F38, &qword_100062AD0, sub_10003F0C0);
    v53 = v77;
    View.fontWeight(_:)();
    v41 = v80;

    v54 = v78;
    (*(v43 + 32))(v41, v53, v78);
    v55 = (*(v43 + 56))(v41, 0, 1, v54);
  }

  else
  {
    v57 = sub_100003B30(&qword_100083F20, &qword_100062AB8);
    v55 = (*(*(v57 - 8) + 56))(v41, 1, 1, v57);
  }

  v80 = v76;
  __chkstk_darwin(v55, v56);
  v59 = v76 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100008AF8(v91, v59, &qword_100083EC8, &qword_100062A10);
  v85 = v76;
  __chkstk_darwin(v60, v61);
  v62 = v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008AF8(v41, v62, &qword_100083F18, &qword_100062AB0);
  v63 = v87;
  sub_100008AF8(v59, v87, &qword_100083EC8, &qword_100062A10);
  v64 = sub_100003B30(&qword_100083F28, &qword_100062AC0);
  v65 = (v63 + v64[12]);
  v66 = v41;
  v67 = v83;
  v92[0] = v83;
  v92[1] = 0;
  v68 = v81;
  LOBYTE(v93[0]) = v81;
  *(v93 + 1) = *v94;
  *(&v93[1] + 1) = *&v94[16];
  *(&v93[2] + 1) = *&v94[32];
  *(&v93[3] + 1) = *&v94[48];
  *&v93[4] = *&v94[63];
  v69 = v82;
  DWORD2(v93[4]) = v82;
  v70 = v93[0];
  *v65 = v83;
  v65[1] = v70;
  v71 = v93[1];
  v72 = v93[2];
  v73 = v93[3];
  *(v65 + 76) = *(&v93[3] + 12);
  v65[3] = v72;
  v65[4] = v73;
  v65[2] = v71;
  v74 = v63 + v64[16];
  *v74 = 0;
  *(v74 + 8) = 1;
  sub_100008AF8(v62, v63 + v64[20], &qword_100083F18, &qword_100062AB0);
  sub_10003EFB8(v92, &v95);
  sub_100008B68(v66, &qword_100083F18, &qword_100062AB0);
  sub_100008B68(v91, &qword_100083EC8, &qword_100062A10);
  sub_100008B68(v62, &qword_100083F18, &qword_100062AB0);
  v95 = v67;
  LOBYTE(v96[0]) = v68;
  *(&v96[1] + 1) = *&v94[16];
  *(&v96[2] + 1) = *&v94[32];
  *(&v96[3] + 1) = *&v94[48];
  *&v96[4] = *&v94[63];
  *(v96 + 1) = *v94;
  DWORD2(v96[4]) = v69;
  sub_100008B68(&v95, &qword_100083F30, &qword_100062AC8);
  sub_100008B68(v59, &qword_100083EC8, &qword_100062A10);
}

uint64_t sub_10003E900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = a1[4];
  v52 = a1[5];
  sub_10003B5D4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.body.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10003B628(v3, v5, v7 & 1);

  static Font.Weight.regular.getter();
  v13 = Text.fontWeight(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10003B628(v8, v10, v12 & 1);

  if (a1[7])
  {
    v51 = a1[6];
    v53 = a1[7];

    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    static Font.caption2.getter();
    v25 = Text.font(_:)();
    v46 = v17;
    v27 = v26;
    v48 = v19;
    v29 = v28;

    sub_10003B628(v20, v22, v24 & 1);

    static Font.Weight.regular.getter();
    v30 = Text.fontWeight(_:)();
    v32 = v31;
    v47 = v15;
    v34 = v33;
    v35 = v27;
    v17 = v46;
    sub_10003B628(v25, v35, v29 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v34 & 1;
    v15 = v47;
    sub_10003B628(v30, v32, v43);

    v44 = v40 & 1;
    v19 = v48;
    sub_10003BE38(v36, v38, v44);
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v44 = 0;
    v42 = 0;
  }

  sub_10003BE38(v13, v15, v17 & 1);

  sub_10003BDF4(v36, v38, v44, v42);
  sub_10003BE48(v36, v38, v44, v42);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = v36;
  *(a2 + 40) = v38;
  *(a2 + 48) = v44;
  *(a2 + 56) = v42;
  sub_10003BE48(v36, v38, v44, v42);
  sub_10003B628(v13, v15, v17 & 1);
}

uint64_t sub_10003EC84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_10003DA1C(a1);
}

uint64_t sub_10003ECC0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003ECEC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10003ED18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003ED44@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003ED70(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10003ED9C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10003EDC8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003EDF4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_10003EE20()
{
  result = qword_100083EE8;
  if (!qword_100083EE8)
  {
    sub_100008218(&qword_100083EF0, &qword_100062A88);
    sub_10003EEC0();
    sub_100009034(&qword_100083C90, &qword_100083C98, &unk_100062AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083EE8);
  }

  return result;
}

unint64_t sub_10003EEC0()
{
  result = qword_100083EF8;
  if (!qword_100083EF8)
  {
    sub_100008218(&qword_100083F00, &qword_100062A90);
    sub_10003EF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083EF8);
  }

  return result;
}

unint64_t sub_10003EF40()
{
  result = qword_100083F08;
  if (!qword_100083F08)
  {
    sub_100008218(&qword_100083F10, &qword_100062A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083F08);
  }

  return result;
}

uint64_t sub_10003EFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083F30, &qword_100062AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F028(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008218(a2, a3);
    a4();
    sub_100009034(&qword_100083548, &qword_100083550, &qword_100061480);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003F0C0()
{
  result = qword_100083F48;
  if (!qword_100083F48)
  {
    sub_100008218(&qword_100083F50, &qword_100062AD8);
    sub_100009034(&qword_100083C90, &qword_100083C98, &unk_100062AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083F48);
  }

  return result;
}

unint64_t sub_10003F164()
{
  result = qword_100083F58;
  if (!qword_100083F58)
  {
    sub_100008218(&qword_100083E98, &qword_1000629E0);
    sub_100009034(&qword_100083F60, &qword_100083F68, &unk_100062AE0);
    sub_100009034(&qword_100083CF0, &qword_100083CF8, &qword_1000623E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083F58);
  }

  return result;
}

uint64_t sub_10003F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100008AF8(a3, v28 - v12, &qword_1000838E0, &qword_100061C70);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;
      sub_100008398(0, &qword_100083600, AVInputContext_ptr);

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100008398(0, &qword_100083600, AVInputContext_ptr);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10003F514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100008AF8(a3, v28 - v12, &qword_1000838E0, &qword_100061C70);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;
      sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10003F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100008AF8(a3, v28 - v12, &qword_1000838E0, &qword_100061C70);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10003FAC4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v133) = a3;
  v155 = sub_100003B30(&qword_100084118, &qword_100062D30);
  v153 = *(v155 - 8);
  v6 = *(v153 + 64);
  __chkstk_darwin(v155, v7);
  v152 = (&v118 - v8);
  v156 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  v154 = *(v156 - 8);
  v9 = *(v154 + 64);
  __chkstk_darwin(v156, v10);
  v151 = &v118 - v11;
  v149 = sub_100003B30(&qword_100084120, &qword_100062D38);
  v147 = *(v149 - 8);
  v12 = *(v147 + 64);
  __chkstk_darwin(v149, v13);
  v146 = (&v118 - v14);
  v150 = sub_100003B30(&qword_100083B38, &qword_100061D10);
  v148 = *(v150 - 8);
  v15 = *(v148 + 64);
  __chkstk_darwin(v150, v16);
  v145 = &v118 - v17;
  v142 = sub_100003B30(&qword_100084128, &qword_100062D40);
  v141 = *(v142 - 8);
  v18 = *(v141 + 64);
  __chkstk_darwin(v142, v19);
  v139 = (&v118 - v20);
  v144 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  v143 = *(v144 - 8);
  v21 = *(v143 + 64);
  __chkstk_darwin(v144, v22);
  v140 = &v118 - v23;
  v137 = sub_100003B30(&qword_100084130, &qword_100062D48);
  v134 = *(v137 - 8);
  v24 = *(v134 + 64);
  __chkstk_darwin(v137, v25);
  v132 = (&v118 - v26);
  v138 = sub_100003B30(&qword_100083B48, &qword_100061F50);
  v135 = *(v138 - 8);
  v27 = *(v135 + 64);
  __chkstk_darwin(v138, v28);
  v131 = &v118 - v29;
  v30 = sub_100003B30(&qword_100084138, &qword_100062D50);
  v31 = *(*(v30 - 8) + 64);
  v33 = __chkstk_darwin(v30 - 8, v32);
  v124 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v35);
  v159 = &v118 - v36;
  v37 = sub_100003B30(&qword_100084140, &qword_100062D58);
  v38 = *(*(v37 - 8) + 64);
  v40 = __chkstk_darwin(v37 - 8, v39);
  v128 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v44 = &v118 - v43;
  v157 = &v118 - v43;
  v45 = sub_100003B30(&qword_100084148, &qword_100062D60);
  v46 = *(*(v45 - 8) + 64);
  v48 = __chkstk_darwin(v45 - 8, v47);
  v129 = &v118 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48, v50);
  v158 = &v118 - v51;
  v52 = sub_100003B30(&qword_100084150, &qword_100062D68);
  v53 = *(*(v52 - 8) + 64);
  v55 = __chkstk_darwin(v52 - 8, v54);
  v136 = &v118 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v57);
  v59 = &v118 - v58;
  v60 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8, v62);
  v64 = &v118 - v63;
  *(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering) = 0;
  sub_100003B30(&qword_100084158, &qword_100062D70);
  v65 = swift_allocObject();

  static TaskPriority.userInitiated.getter();
  v66 = type metadata accessor for TaskPriority();
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v120 = v66;
  v119 = v68;
  v118 = v67 + 56;
  (v68)(v64, 0, 1);
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = sub_100047860;
  v69[5] = 0;
  v70 = sub_10003F224(0, 0, v64, &unk_100062D80, v69);
  v121 = v64;
  sub_100008B68(v64, &qword_1000838E0, &qword_100061C70);
  *(v65 + 16) = v70;
  v164[3] = &type metadata for MXAVInputContextFactory;
  v164[4] = &off_100079F00;
  v164[0] = v65;
  type metadata accessor for AVRoutingInputController();
  v71 = swift_allocObject();
  v72 = sub_100026B24(v164, &type metadata for MXAVInputContextFactory);
  v73 = value witness table for Builtin.NativeObject[8];
  __chkstk_darwin(v72, v72);
  v75 = (&v118 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75);
  v77 = *v75;
  v122 = a2;
  v78 = sub_100047DA8(v133, a1, a2, v77, v71);
  sub_100004B28(v164);
  *(v3 + 16) = v78;
  v79 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  v80 = *(v79 - 8);
  v81 = *(v80 + 56);
  v130 = v59;
  v81(v59, 1, 1, v79);
  v82 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v85 = v158;
  v133 = v82;
  v84(v158, 1, 1);
  v86 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  v125 = *(v86 - 8);
  v87 = *(v125 + 56);
  v126 = v86;
  v87(v44, 1, 1);
  v88 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  v127 = *(v88 - 8);
  v89 = *(v127 + 56);
  v90 = v159;
  v123 = v88;
  v89(v159, 1, 1);
  v91 = v132;
  *v132 = 1;
  v92 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v134 + 104))(v91, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v137);
  v163 = v59;
  v93 = v131;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v135 + 32))(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneStream, v93, v138);
  v94 = v139;
  *v139 = 1;
  (*(v141 + 104))(v94, v92, v142);
  v162 = v85;
  sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  v95 = v140;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v143 + 32))(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesStream, v95, v144);
  v96 = v146;
  *v146 = 1;
  (*(v147 + 104))(v96, v92, v149);
  v161 = v157;
  v97 = v145;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v148 + 32))(v3 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainStream, v97, v150);
  v98 = v152;
  *v152 = 1;
  (*(v153 + 104))(v98, v92, v155);
  v160 = v90;
  v99 = v151;
  v100 = v3;
  v101 = v136;
  AsyncStream.init(_:bufferingPolicy:_:)();
  v102 = v99;
  v103 = v130;
  (*(v154 + 32))(v100 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainStream, v102, v156);
  sub_100008AF8(v103, v101, &qword_100084150, &qword_100062D68);
  result = (*(v80 + 48))(v101, 1, v79);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v80 + 32))(v100 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation, v101, v79);
  v105 = v158;
  v106 = v129;
  sub_100008AF8(v158, v129, &qword_100084148, &qword_100062D60);
  v107 = v133;
  result = (*(v83 + 48))(v106, 1, v133);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  (*(v83 + 32))(v100 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation, v106, v107);
  v108 = v157;
  v109 = v128;
  sub_100008AF8(v157, v128, &qword_100084140, &qword_100062D58);
  v110 = v125;
  v111 = v126;
  result = (*(v125 + 48))(v109, 1, v126);
  v112 = v127;
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v110 + 32))(v100 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainContinuation, v109, v111);
  v113 = v124;
  sub_100008AF8(v159, v124, &qword_100084138, &qword_100062D50);
  v114 = v123;
  result = (*(v112 + 48))(v113, 1, v123);
  if (result != 1)
  {

    (*(v112 + 32))(v100 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainContinuation, v113, v114);
    *(*(v100 + 16) + 40) = &off_10007ADE8;
    swift_unknownObjectWeakAssign();
    v115 = v121;
    v119(v121, 1, 1, v120);
    v116 = swift_allocObject();
    swift_weakInit();
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = 0;
    v117[4] = v116;
    sub_100053D74(0, 0, v115, &unk_100062D88, v117);

    sub_100008B68(v159, &qword_100084138, &qword_100062D50);
    sub_100008B68(v108, &qword_100084140, &qword_100062D58);
    sub_100008B68(v105, &qword_100084148, &qword_100062D60);
    sub_100008B68(v103, &qword_100084150, &qword_100062D68);
    return v100;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100040B9C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084150, &qword_100062D68);
  v4 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_100040CD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084148, &qword_100062D60);
  v4 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_100040E0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084140, &qword_100062D58);
  v4 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_100040F44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008B68(a2, &qword_100084138, &qword_100062D50);
  v4 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_10004107C()
{
  v1[2] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_100041170, v6, v5);
}

uint64_t sub_100041198()
{
  v1 = v0[5];
  v2 = *(v0[9] + 16);
  v3 = swift_allocObject();
  v0[10] = v3;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1000412C0;
  v5 = v0[5];

  return (sub_100045698)(0x7475706E49746567, 0xEE0029286E696147, v5, &unk_100062C10, v3);
}

uint64_t sub_1000412C0(float a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v11 = *v1;
  *(*v1 + 96) = a1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);

  return _swift_task_switch(sub_100041460, v9, v8);
}

uint64_t sub_100041460()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4.n128_u32[0] = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_1000414CC(float a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  type metadata accessor for MainActor();
  *(v2 + 24) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_100041568, v4, v3);
}

uint64_t sub_100041590()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 48) + 16);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1000416D0;

  return sub_100055C14(0xD000000000000010, 0x8000000100068EC0, 10000000000000000, 0, &unk_100062DF8, v4);
}

uint64_t sub_1000416D0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 40);
  v6 = *(v1 + 32);

  return _swift_task_switch(sub_100041830, v6, v5);
}

uint64_t sub_100041830()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041890()
{
  v1[2] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_100041984, v6, v5);
}

uint64_t sub_1000419AC()
{
  v1 = v0[5];
  v2 = *(v0[9] + 16);
  v3 = swift_allocObject();
  v0[10] = v3;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100041ACC;
  v5 = v0[5];

  return sub_100045E90(0xD000000000000014, 0x8000000100068A90, v5, &unk_100062C80, v3);
}

uint64_t sub_100041ACC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v11 = *v1;
  *(*v1 + 96) = a1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);

  return _swift_task_switch(sub_100041C74, v9, v8);
}

uint64_t sub_100041C74()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_100041CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100041D78, v6, v5);
}

uint64_t sub_100041D78()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100041E0C;

  return sub_100009AE8();
}

uint64_t sub_100041E0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_100049BF0, v4, v3);
}

uint64_t sub_100041F2C()
{
  v1 = v0;
  v2 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v50 = &v43 - v5;
  v6 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v43 - v10;
  v12 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v43 - v16;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000080BC(v18, qword_100086758);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[deinit] MicrophoneManager start deinit", v21, 2u);
  }

  v48 = v12;
  v49 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation;
  (*(v13 + 16))(v17, v1 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation, v12);
  AsyncStream.Continuation.finish()();
  v47 = *(v13 + 8);
  v47(v17, v12);
  v46 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation;
  (*(v7 + 16))(v11, v1 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation, v6);
  AsyncStream.Continuation.finish()();
  v45 = *(v7 + 8);
  v45(v11, v6);
  v22 = *(v1 + 16);
  *(v22 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v23 = type metadata accessor for TaskPriority();
  v24 = *(*(v23 - 8) + 56);
  v44 = v6;
  v25 = v50;
  v24(v50, 1, 1, v23);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;

  sub_100053D74(0, 0, v25, &unk_100062BA0, v27);

  v24(v25, 1, 1, v23);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v22;

  sub_10003F804(0, 0, v25, &unk_100062BB0, v28);

  sub_100008B68(v25, &qword_1000838E0, &qword_100061C70);
  v29 = *(v1 + 16);

  v47((v1 + v49), v48);
  v45((v1 + v46), v44);
  v30 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainContinuation;
  v31 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  (*(*(v31 - 8) + 8))(v1 + v30, v31);
  v32 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainContinuation;
  v33 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  (*(*(v33 - 8) + 8))(v1 + v32, v33);
  v34 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneStream;
  v35 = sub_100003B30(&qword_100083B48, &qword_100061F50);
  (*(*(v35 - 8) + 8))(v1 + v34, v35);
  v36 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesStream;
  v37 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  (*(*(v37 - 8) + 8))(v1 + v36, v37);
  v38 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainStream;
  v39 = sub_100003B30(&qword_100083B38, &qword_100061D10);
  (*(*(v39 - 8) + 8))(v1 + v38, v39);
  v40 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainStream;
  v41 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  (*(*(v41 - 8) + 8))(v1 + v40, v41);
  return v1;
}

uint64_t sub_100042594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for TaskPriority();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100042654, 0, 0);
}

uint64_t sub_100042654()
{
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000080BC(v1, qword_100086758);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[deinit] MicrophoneManager doing the cancelling of observations", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[2];

  v0[6] = *(v6 + 16);
  v0[7] = swift_allocObject();
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100042830;
  v8 = v0[5];

  return (sub_100043604)();
}

uint64_t sub_100042830()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1000429A4, 0, 0);
}

uint64_t sub_1000429A4()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100042A34;
  v2 = *(v0 + 48);

  return sub_100056ABC();
}

uint64_t sub_100042A34()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100042B44()
{
  sub_100041F2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MicrophoneManager()
{
  result = qword_100083FC0;
  if (!qword_100083FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042BF0()
{
  sub_100042FB4(319, &qword_100083FD0, &type metadata for InputPickerMicrophone, &type metadata accessor for AsyncStream.Continuation);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_100042F48(319, &qword_100083FD8, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_100042FB4(319, &qword_100083FE8, &type metadata for Float, &type metadata accessor for AsyncStream.Continuation);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_100042FB4(319, &qword_100083FF0, &type metadata for Bool, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_100042FB4(319, &qword_100083FF8, &type metadata for InputPickerMicrophone, &type metadata accessor for AsyncStream);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_100042F48(319, &qword_100084000, &type metadata accessor for AsyncStream);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_100042FB4(319, &qword_100084008, &type metadata for Float, &type metadata accessor for AsyncStream);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_100042FB4(319, &unk_100084010, &type metadata for Bool, &type metadata accessor for AsyncStream);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100042F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100008218(&qword_100083FE0, &qword_1000637B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100042FB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100043004(uint64_t a1, char a2)
{
  v4 = sub_100003B30(&qword_1000840D8, &qword_100062B78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v17[-v8];
  v10 = sub_100003B30(&qword_1000840E0, &unk_100062B80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v17[-v14];
  (*(v5 + 16))(v9, v2 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainContinuation, v4);
  v17[15] = a2;
  AsyncStream.Continuation.yield(_:)();
  (*(v5 + 8))(v9, v4);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000431B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000431EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100009340(a1, v4, v5, v6);
}

uint64_t sub_1000432A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014310;

  return sub_100042594(a1, v4, v5, v6);
}

uint64_t sub_100043354(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v4 = async function pointer to Task.result.getter[1];
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_100043410;

  return Task.result.getter(v2 + 16, a2, &type metadata for InputPickerMicrophone, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100043410()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10004350C, 0, 0);
}

uint64_t sub_10004350C()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v2[3] = &type metadata for InputPickerMicrophone;
    v9 = swift_allocObject();
    *v2 = v9;
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v5;
    v9[6] = v3;
    v9[7] = v4;

    sub_100049338(v8, v7, v6, v5, v3, v4, 0);
  }

  *(*(v0 + 72) + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100043604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v8 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000436AC, v6, 0);
}

uint64_t sub_1000436AC()
{
  v34 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];
    v5 = *(v1 + 112);

    v6 = sub_100057800(v4, v3);
    if (v7)
    {
      sub_100026C30(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v8 = v0[21];
        v0[32] = v8;
        v9 = async function pointer to Task<>.value.getter[1];

        v10 = swift_task_alloc();
        v0[33] = v10;
        *v10 = v0;
        v10[1] = sub_100043C5C;
        v11 = v0[22];
        v12 = &type metadata for () + 8;
        v13 = v8;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v14 = v0[29];
  v15 = v0[27];
  v29 = v0[26];
  v30 = v0[28];
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[23];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v31, v18, v16);
  swift_endAccess();
  v19 = type metadata accessor for TaskPriority();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, v17, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v29;
  v22[5] = v15;

  v23 = sub_100054078(0, 0, v14, &unk_100061870, v22);
  v0[30] = v23;
  *(&v32 + 1) = sub_100003B30(&qword_100083908, &unk_100061880);
  v33 = &off_10007BC78;
  *&v31 = v23;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v31, v18, v16);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = v18;
  v25[7] = v16;

  sub_100054078(0, 0, v14, &unk_100062BF0, v25);

  v26 = async function pointer to Task<>.value.getter[1];
  v27 = swift_task_alloc();
  v0[31] = v27;
  *v27 = v0;
  v27[1] = sub_100043AE0;
  v11 = v0[22];
  v12 = &type metadata for () + 8;
  v13 = v23;
LABEL_8:

  return Task<>.value.getter(v11, v13, v12);
}

uint64_t sub_100043AE0()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_100043BF0, v2, 0);
}

uint64_t sub_100043BF0()
{
  v1 = v0[30];

  v2 = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100043C5C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return _swift_task_switch(sub_100043D88, v3, 0);
}

uint64_t sub_100043D88()
{
  v1 = v0[32];

  sub_100004B28(v0 + 2);
  v2 = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100043DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_100043EA0, v6, 0);
}

uint64_t sub_100043EA0()
{
  v34 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];
    v5 = *(v1 + 112);

    v6 = sub_100057800(v4, v3);
    if (v7)
    {
      sub_100026C30(*(v2 + 56) + 40 * v6, (v0 + 8));

      sub_100026C30((v0 + 8), (v0 + 13));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_1000840F8, &qword_100062CA0);
      if (swift_dynamicCast())
      {
        v8 = v0[27];
        v0[38] = v8;
        v9 = async function pointer to Task<>.value.getter[1];

        v10 = swift_task_alloc();
        v0[39] = v10;
        v11 = sub_100003B30(&qword_100083928, &qword_100061950);
        *v10 = v0;
        v10[1] = sub_10004448C;
        v12 = v0 + 2;
        v13 = v8;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 8);
    }

    else
    {
    }
  }

  v14 = v0[35];
  v15 = v0[33];
  v29 = v0[32];
  v30 = v0[34];
  v16 = v0[30];
  v17 = v0[31];
  v18 = v0[29];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v31, v18, v16);
  swift_endAccess();
  v19 = type metadata accessor for TaskPriority();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, v17, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v29;
  v22[5] = v15;

  v23 = sub_100054368(0, 0, v14, &unk_100062C98, v22);
  v0[36] = v23;
  *(&v32 + 1) = sub_100003B30(&qword_1000840F8, &qword_100062CA0);
  v33 = &off_10007BC78;
  *&v31 = v23;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v31, v18, v16);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = v18;
  v25[7] = v16;

  sub_100054078(0, 0, v14, &unk_100062CB0, v25);

  v26 = async function pointer to Task<>.value.getter[1];
  v27 = swift_task_alloc();
  v0[37] = v27;
  v11 = sub_100003B30(&qword_100083928, &qword_100061950);
  *v27 = v0;
  v27[1] = sub_1000442EC;
  v12 = v0 + 2;
  v13 = v23;
LABEL_8:

  return Task<>.value.getter(v12, v13, v11);
}

uint64_t sub_1000442EC()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return _swift_task_switch(sub_1000443FC, v2, 0);
}

uint64_t sub_1000443FC()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004448C()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return _swift_task_switch(sub_1000445B8, v3, 0);
}

uint64_t sub_1000445B8()
{
  v1 = *(v0 + 304);

  sub_100004B28((v0 + 64));
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004464C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000446F4, v6, 0);
}

uint64_t sub_1000446F4()
{
  v33 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];
    v5 = *(v1 + 112);

    v6 = sub_100057800(v4, v3);
    if (v7)
    {
      sub_100026C30(*(v2 + 56) + 40 * v6, (v0 + 8));

      sub_100026C30((v0 + 8), (v0 + 13));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100084108, &qword_100062CE0);
      if (swift_dynamicCast())
      {
        v8 = v0[27];
        v0[38] = v8;
        v9 = async function pointer to Task<>.value.getter[1];

        v10 = swift_task_alloc();
        v0[39] = v10;
        *v10 = v0;
        v10[1] = sub_100044CC0;
        v11 = v0 + 2;
        v12 = v8;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 8);
    }

    else
    {
    }
  }

  v13 = v0[35];
  v14 = v0[33];
  v28 = v0[32];
  v29 = v0[34];
  v15 = v0[30];
  v16 = v0[31];
  v17 = v0[29];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v30, v17, v15);
  swift_endAccess();
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, v16, v18);
  v20 = *(v19 + 56);
  v20(v13, 0, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v28;
  v21[5] = v14;

  v22 = sub_10005466C(0, 0, v13, &unk_100062CD8, v21);
  v0[36] = v22;
  *(&v31 + 1) = sub_100003B30(&qword_100084108, &qword_100062CE0);
  v32 = &off_10007BC78;
  *&v30 = v22;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v30, v17, v15);
  swift_endAccess();
  v20(v13, 1, 1, v18);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = v17;
  v24[7] = v15;

  sub_100054078(0, 0, v13, &unk_100062CF0, v24);

  v25 = async function pointer to Task<>.value.getter[1];
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_100044B20;
  v11 = v0 + 2;
  v12 = v22;
LABEL_8:

  return Task<>.value.getter(v11, v12, &type metadata for InputPickerMicrophone);
}

uint64_t sub_100044B20()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return _swift_task_switch(sub_100044C30, v2, 0);
}

uint64_t sub_100044C30()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100044CC0()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return _swift_task_switch(sub_100044DEC, v3, 0);
}

uint64_t sub_100044DEC()
{
  v1 = *(v0 + 304);

  sub_100004B28((v0 + 64));
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100044E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v7 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_100044F24, v5, 0);
}

uint64_t sub_100044F24()
{
  v34 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];
    v5 = *(v1 + 112);

    v6 = sub_100057800(v4, v3);
    if (v7)
    {
      sub_100026C30(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100084110, &qword_100062D18);
      if (swift_dynamicCast())
      {
        v8 = v0[22];
        v0[32] = v8;
        v9 = async function pointer to Task<>.value.getter[1];

        v10 = swift_task_alloc();
        v0[33] = v10;
        v11 = sub_100003B30(&qword_100083FE0, &qword_1000637B0);
        *v10 = v0;
        v10[1] = sub_1000454F4;
        v12 = v0 + 21;
        v13 = v8;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v14 = v0[29];
  v15 = v0[27];
  v29 = v0[26];
  v30 = v0[28];
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[23];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v31, v18, v16);
  swift_endAccess();
  v19 = type metadata accessor for TaskPriority();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, v17, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v29;
  v22[5] = v15;

  v23 = sub_100054954(0, 0, v14, &unk_100062D10, v22);
  v0[30] = v23;
  *(&v32 + 1) = sub_100003B30(&qword_100084110, &qword_100062D18);
  v33 = &off_10007BC78;
  *&v31 = v23;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v31, v18, v16);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = v18;
  v25[7] = v16;

  sub_100054078(0, 0, v14, &unk_100062D28, v25);

  v26 = async function pointer to Task<>.value.getter[1];
  v27 = swift_task_alloc();
  v0[31] = v27;
  v11 = sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  *v27 = v0;
  v27[1] = sub_100045370;
  v12 = v0 + 21;
  v13 = v23;
LABEL_8:

  return Task<>.value.getter(v12, v13, v11);
}

uint64_t sub_100045370()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_100045480, v2, 0);
}

uint64_t sub_100045480()
{
  v1 = v0[30];

  v2 = v0[29];
  v3 = v0[21];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1000454F4()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return _swift_task_switch(sub_100045620, v3, 0);
}

uint64_t sub_100045620()
{
  v1 = v0[32];

  sub_100004B28(v0 + 2);
  v2 = v0[29];
  v3 = v0[21];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100045698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_10004573C, v5, 0);
}

uint64_t sub_10004573C()
{
  v33 = v0;
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = *(v1 + 112);

    v6 = sub_100057800(v4, v3);
    if (v7)
    {
      sub_100026C30(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_1000840E8, &qword_100062C30);
      if (swift_dynamicCast())
      {
        v8 = v0[21];
        v0[31] = v8;
        v9 = async function pointer to Task<>.value.getter[1];

        v10 = swift_task_alloc();
        v0[32] = v10;
        *v10 = v0;
        v10[1] = sub_100045CEC;
        v11 = v0 + 33;
        v12 = v8;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v13 = v0[28];
  v14 = v0[26];
  v28 = v0[25];
  v29 = v0[27];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[22];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v30, v17, v15);
  swift_endAccess();
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, v16, v18);
  v20 = *(v19 + 56);
  v20(v13, 0, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v28;
  v21[5] = v14;

  v22 = sub_100054C58(0, 0, v13, &unk_100062C28, v21);
  v0[29] = v22;
  *(&v31 + 1) = sub_100003B30(&qword_1000840E8, &qword_100062C30);
  v32 = &off_10007BC78;
  *&v30 = v22;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v30, v17, v15);
  swift_endAccess();
  v20(v13, 1, 1, v18);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = v17;
  v24[7] = v15;

  sub_100054078(0, 0, v13, &unk_100062C40, v24);

  v25 = async function pointer to Task<>.value.getter[1];
  v26 = swift_task_alloc();
  v0[30] = v26;
  *v26 = v0;
  v26[1] = sub_100045B68;
  v11 = v0 + 33;
  v12 = v22;
LABEL_8:

  return Task<>.value.getter(v11, v12, &type metadata for Float);
}

uint64_t sub_100045B68()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_100045C78, v2, 0);
}

uint64_t sub_100045C78()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 224);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);
  v5.n128_u32[0] = v3;

  return v4(v5);
}

uint64_t sub_100045CEC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return _swift_task_switch(sub_100045E18, v3, 0);
}

uint64_t sub_100045E18()
{
  v1 = *(v0 + 248);

  sub_100004B28((v0 + 16));
  v2 = *(v0 + 224);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);
  v5.n128_u32[0] = v3;

  return v4(v5);
}

uint64_t sub_100045E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_100045F34, v5, 0);
}

uint64_t sub_100045F34()
{
  v33 = v0;
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = *(v1 + 112);

    v6 = sub_100057800(v4, v3);
    if (v7)
    {
      sub_100026C30(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 7));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_1000840F0, &qword_100062C60);
      if (swift_dynamicCast())
      {
        v8 = v0[21];
        v0[31] = v8;
        v9 = async function pointer to Task<>.value.getter[1];

        v10 = swift_task_alloc();
        v0[32] = v10;
        *v10 = v0;
        v10[1] = sub_1000464E4;
        v11 = v0 + 33;
        v12 = v8;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v13 = v0[28];
  v14 = v0[26];
  v28 = v0[25];
  v29 = v0[27];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[22];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  swift_beginAccess();

  sub_1000555D8(&v30, v17, v15);
  swift_endAccess();
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, v16, v18);
  v20 = *(v19 + 56);
  v20(v13, 0, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v28;
  v21[5] = v14;

  v22 = sub_100054F40(0, 0, v13, &unk_100062C58, v21);
  v0[29] = v22;
  *(&v31 + 1) = sub_100003B30(&qword_1000840F0, &qword_100062C60);
  v32 = &off_10007BC78;
  *&v30 = v22;
  swift_beginAccess();
  swift_retain_n();

  sub_1000555D8(&v30, v17, v15);
  swift_endAccess();
  v20(v13, 1, 1, v18);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = v17;
  v24[7] = v15;

  sub_100054078(0, 0, v13, &unk_100062C70, v24);

  v25 = async function pointer to Task<>.value.getter[1];
  v26 = swift_task_alloc();
  v0[30] = v26;
  *v26 = v0;
  v26[1] = sub_100046360;
  v11 = v0 + 33;
  v12 = v22;
LABEL_8:

  return Task<>.value.getter(v11, v12, &type metadata for Bool);
}

uint64_t sub_100046360()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_100046470, v2, 0);
}

uint64_t sub_100046470()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 224);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000464E4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return _swift_task_switch(sub_100046610, v3, 0);
}

uint64_t sub_100046610()
{
  v1 = *(v0 + 248);

  sub_100004B28((v0 + 16));
  v2 = *(v0 + 224);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100046688(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100014310;

  return v9(a1);
}

uint64_t sub_100046780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v7[16] = v10;
  *v10 = v7;
  v10[1] = sub_100046844;

  return Task.result.getter(v7 + 18, a4, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100046844()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_100046940, 0, 0);
}

uint64_t sub_100046940()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100049BEC, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1000469F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[25] = a5;
  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v7[28] = v10;
  v11 = sub_100003B30(&qword_100083928, &qword_100061950);
  v7[29] = v11;
  *v10 = v7;
  v10[1] = sub_100046ACC;

  return Task.result.getter(v7 + 2, a4, v11, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100046ACC()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_100046BC8, 0, 0);
}

uint64_t sub_100046BC8()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    *(v0 + 136) = *(v0 + 232);
    v4 = swift_allocObject();
    *(v0 + 112) = v4;
    v5 = *(v0 + 32);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 32) = v5;
    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  v6 = *(v0 + 200);
  *(v0 + 144) = v1;
  sub_100008B68(v0 + 112, &qword_100084100, &qword_100062CC0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100046CE0, Strong, 0);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100046CE0()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  swift_beginAccess();
  sub_100057B90(v3, v2, (v0 + 9));
  sub_100008B68((v0 + 9), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100046D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[18] = a5;
  v9 = swift_task_alloc();
  v7[21] = v9;
  *v9 = v7;
  v9[1] = sub_100046E3C;

  return sub_100043354((v7 + 7), a4);
}

uint64_t sub_100046E3C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v4 = *v0;

  sub_100008B68(v1 + 56, &qword_100084100, &qword_100062CC0);

  return _swift_task_switch(sub_100046F50, 0, 0);
}

uint64_t sub_100046F50()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100047008, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100047008()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  swift_beginAccess();
  sub_100057B90(v3, v2, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000470C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[20] = a5;
  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v7[23] = v10;
  v11 = sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  v7[24] = v11;
  *v10 = v7;
  v10[1] = sub_100047194;

  return Task.result.getter(v7 + 18, a4, v11, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100047194()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_100047290, 0, 0);
}

uint64_t sub_100047290()
{
  v1 = *(v0 + 152);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 56) = v2;
  }

  v3 = *(v0 + 160);
  *(v0 + 88) = v1;
  sub_100008B68(v0 + 56, &qword_100084100, &qword_100062CC0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10004737C, Strong, 0);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10004737C()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  swift_beginAccess();
  sub_100057B90(v3, v2, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100047434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v7[16] = v10;
  *v10 = v7;
  v10[1] = sub_100046844;

  return Task.result.getter(v7 + 18, a4, &type metadata for Float, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000474F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v7[16] = v10;
  *v10 = v7;
  v10[1] = sub_1000475B4;

  return Task.result.getter(v7 + 18, a4, &type metadata for Bool, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000475B4()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1000476B0, 0, 0);
}

uint64_t sub_1000476B0()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100047768, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100047768()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  swift_beginAccess();
  sub_100057B90(v3, v2, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

id sub_100047820@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(AVInputDeviceDiscoverySession) initWithDeviceFeatures:1];
  *a1 = result;
  return result;
}

id sub_100047860@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(AVInputContext) init];
  *a1 = result;
  return result;
}

uint64_t sub_10004789C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10000FCFC(a1, v1);
}

uint64_t sub_100047938(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100019C04(a1, v1);
}

uint64_t sub_1000479D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return _swift_task_switch(sub_1000479F8, 0, 0);
}

uint64_t sub_1000479F8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();
  *v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100047A6C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_100047B60;

  return v6(v2 + 16);
}

uint64_t sub_100047B60()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100047C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return _swift_task_switch(sub_100049BE4, 0, 0);
}

uint64_t sub_100047CB4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_100049BE8;

  return v6(v2 + 16);
}

uint64_t sub_100047DA8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v29 = a3;
  HIDWORD(v27) = a1;
  v7 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v27 - v10;
  v30[3] = &type metadata for MXAVInputContextFactory;
  v30[4] = &off_100079F00;
  v30[0] = a4;
  type metadata accessor for AVInputPickerTaskRegistry();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = sub_100053868(_swiftEmptyArrayStorage);
  *(a5 + 16) = v12;
  *(a5 + 40) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AVRoutingInputController.ViewModelState();
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0;
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 304) = 0;
  *(v13 + 272) = 0u;
  *(v13 + 288) = 0u;
  *(v13 + 240) = 0u;
  *(v13 + 256) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 224) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 192) = 0u;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 104) = v13;
  sub_100003B30(&qword_100084160, &qword_100062D90);
  v14 = swift_allocObject();
  static TaskPriority.userInitiated.getter();
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 0, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = sub_100049B9C;
  v17[5] = 0;
  v18 = sub_10003F514(0, 0, v11, &unk_100062DA0, v17);
  sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  *(v14 + 16) = v18;
  *(a5 + 128) = v14;
  v19 = swift_allocObject();
  static TaskPriority.userInitiated.getter();
  v16(v11, 0, 1, v15);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = sub_100049B9C;
  v20[5] = 0;
  v21 = sub_10003F514(0, 0, v11, &unk_100062DA8, v20);
  sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  *(v19 + 16) = v21;
  *(a5 + 136) = v19;
  *(a5 + 24) = BYTE4(v27);
  v22 = *(a5 + 120);
  v23 = v29;
  *(a5 + 112) = v28;
  *(a5 + 120) = v23;

  sub_100026C30(v30, a5 + 144);
  v16(v11, 1, 1, v15);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  sub_100054078(0, 0, v11, &unk_100062DB0, v25);

  sub_100004B28(v30);
  return a5;
}

uint64_t sub_100048140(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 72) = v6;
  *v6 = v4;
  v6[1] = sub_100048234;

  return v8(v4 + 16);
}

uint64_t sub_100048234()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_100048330, 0, 0);
}

uint64_t sub_100048330()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_100048358(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 64) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 72) = v6;
  *v6 = v4;
  v6[1] = sub_10004844C;

  return v8(v4 + 16);
}

uint64_t sub_10004844C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_100048548, 0, 0);
}

uint64_t sub_100048548()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100048570(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_100048664;

  return v8(v4 + 16);
}

uint64_t sub_100048664()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_1000092D8, 0, 0);
}

uint64_t sub_100048760(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100048854;

  return v8(v4 + 32);
}

uint64_t sub_100048854()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100048950, 0, 0);
}

uint64_t sub_100048970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100048760(a1, v4, v5, v7);
}

uint64_t sub_100048A3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_100047434(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100048B10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100048C04;

  return v8(v4 + 32);
}

uint64_t sub_100048C04()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100048D00, 0, 0);
}

uint64_t sub_100048D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100048B10(a1, v4, v5, v7);
}

uint64_t sub_100048DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_1000474F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100048EC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10001A664(a1, v1);
}

uint64_t sub_100048F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100048140(a1, v4, v5, v7);
}

uint64_t sub_100049030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_1000469F8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100049104()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[7];
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100049150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100048358(a1, v4, v5, v7);
}

uint64_t sub_10004921C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_100046D98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000492F0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100049338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100049388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100048570(a1, v4, v5, v7);
}

uint64_t sub_100049454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_1000470C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100049528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_1000479D4(a1, v4, v5, v7, v6);
}

uint64_t sub_100049618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100009340(a1, v4, v5, v6);
}

uint64_t sub_1000496CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100047C90(a1, v4, v5, v7, v6);
}

uint64_t sub_100049798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100009E9C(a1, v4, v5, v6);
}

uint64_t sub_10004984C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049884(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100047CB4(a1, v5);
}

uint64_t sub_10004993C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100047A6C(a1, v5);
}

uint64_t sub_1000499F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014310;

  return sub_100047A6C(a1, v5);
}

uint64_t sub_100049AAC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100049AE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_100019F74(v2, v3);
}

__n128 sub_100049BF4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v89 = sub_100003B30(&qword_100084170, &qword_100062F58);
  v88 = *(v89 - 8);
  v3 = *(v88 + 64);
  __chkstk_darwin(v89, v4);
  v86 = &v75 - v5;
  v87 = sub_100003B30(&qword_100084178, &qword_100062F60);
  v6 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87, v7);
  v84 = &v75 - v8;
  v83 = sub_100003B30(&qword_100084180, &qword_100062F68);
  v85 = *(v83 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v83, v10);
  v81 = &v75 - v11;
  v80 = sub_100003B30(&qword_100084188, &qword_100062F70);
  v82 = *(v80 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v80, v13);
  v15 = &v75 - v14;
  v78 = sub_100003B30(&qword_100084190, &qword_100062F78);
  v79 = *(v78 - 8);
  v16 = *(v79 + 64);
  __chkstk_darwin(v78, v17);
  v77 = &v75 - v18;
  v19 = sub_100003B30(&qword_100084198, &qword_100062F80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v75 - v22;
  v91 = v2;
  sub_100003B30(&qword_1000841A0, &qword_100062F88);
  sub_10004C004();
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v25 = &v23[*(v19 + 36)];
  *v25 = KeyPath;
  *(v25 + 1) = 0xC036000000000000;
  v25[16] = 0;
  v26 = sub_10004C324();
  View.scrollContentBackground(_:)();
  sub_100008B68(v23, &qword_100084198, &qword_100062F80);
  v27 = sub_100003B30(&qword_100084220, &qword_100062FF0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8, v29);
  v76 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v75 - v76;
  static ScrollEdgeEffectStyle.hard.getter();
  v31 = type metadata accessor for ScrollEdgeEffectStyle();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 0, 1, v31);
  static Edge.Set.top.getter();
  *&v92[0] = v19;
  *(&v92[0] + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v15;
  v35 = v78;
  v36 = v77;
  View.scrollEdgeEffectStyle(_:for:)();
  sub_100008B68(v30, &qword_100084220, &qword_100062FF0);
  v37 = v35;
  v38 = (*(v79 + 8))(v36, v35);
  __chkstk_darwin(v38, v39);
  v40 = &v75 - v76;
  static ScrollEdgeEffectStyle.soft.getter();
  v32(v40, 0, 1, v31);
  static Edge.Set.bottom.getter();
  *&v92[0] = v37;
  *(&v92[0] + 1) = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v81;
  v43 = v80;
  View.scrollEdgeEffectStyle(_:for:)();
  sub_100008B68(v40, &qword_100084220, &qword_100062FF0);
  v44 = v43;
  (*(v82 + 8))(v34, v43);
  v45 = type metadata accessor for InsetListStyle();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45, v48);
  v50 = &v75 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  InsetListStyle.init()();
  *&v92[0] = v44;
  *(&v92[0] + 1) = v41;
  v51 = v86;
  swift_getOpaqueTypeConformance2();
  v52 = v84;
  v53 = v83;
  View.listStyle<A>(_:)();
  (*(v46 + 8))(v50, v45);
  (*(v85 + 8))(v42, v53);
  v54 = swift_allocObject();
  v55 = *(v2 + 48);
  *(v54 + 48) = *(v2 + 32);
  *(v54 + 64) = v55;
  *(v54 + 80) = *(v2 + 64);
  *(v54 + 96) = *(v2 + 80);
  v56 = *(v2 + 16);
  *(v54 + 16) = *v2;
  *(v54 + 32) = v56;
  v57 = (v52 + *(sub_100003B30(&qword_100084228, &qword_100062FF8) + 36));
  *v57 = sub_10004C3F4;
  v57[1] = v54;
  v58 = swift_allocObject();
  v59 = *(v2 + 48);
  *(v58 + 48) = *(v2 + 32);
  *(v58 + 64) = v59;
  *(v58 + 80) = *(v2 + 64);
  *(v58 + 96) = *(v2 + 80);
  v60 = *(v2 + 16);
  *(v58 + 16) = *v2;
  *(v58 + 32) = v60;
  v61 = (v52 + *(sub_100003B30(&qword_100084230, &qword_100063000) + 36));
  *v61 = sub_10004C3FC;
  v61[1] = v58;
  *(v52 + *(v87 + 36)) = 0;
  v62 = swift_allocObject();
  v63 = *(v2 + 48);
  *(v62 + 48) = *(v2 + 32);
  *(v62 + 64) = v63;
  *(v62 + 80) = *(v2 + 64);
  v64 = *(v2 + 72);
  *(v62 + 96) = *(v2 + 80);
  v65 = *(v2 + 16);
  *(v62 + 16) = *v2;
  *(v62 + 32) = v65;
  v66 = *(v2 + 64);
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = v64;
  v68 = *(v2 + 48);
  *(v67 + 64) = *(v2 + 32);
  *(v67 + 80) = v68;
  *(v67 + 96) = *(v2 + 64);
  *(v67 + 112) = *(v2 + 80);
  v69 = *(v2 + 16);
  *(v67 + 32) = *v2;
  *(v67 + 48) = v69;
  sub_10004C494(v2, v92);
  sub_10004C494(v2, v92);
  sub_10004C494(v2, v92);
  sub_10004C494(v2, v92);
  sub_100034860(v66);
  sub_10004C4CC();
  sub_10004C7AC();
  View.onScrollGeometryChange<A>(for:of:action:)();

  sub_100008B68(v52, &qword_100084178, &qword_100062F60);
  v92[0] = *(v2 + 16);
  sub_100003B30(&qword_100084168, &qword_100062E30);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v70 = v90;
  (*(v88 + 32))(v90, v51, v89);
  v71 = v70 + *(sub_100003B30(&qword_100084278, &qword_100063018) + 36);
  v72 = v92[5];
  *(v71 + 64) = v92[4];
  *(v71 + 80) = v72;
  *(v71 + 96) = v92[6];
  v73 = v92[1];
  *v71 = v92[0];
  *(v71 + 16) = v73;
  result = v92[3];
  *(v71 + 32) = v92[2];
  *(v71 + 48) = result;
  return result;
}

uint64_t sub_10004A650(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(*(a1 + 80) + 64);
  swift_getKeyPath();
  v8[0] = v2;
  sub_10003D1DC();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 24);

  v8[11] = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_10004C494(a1, v8);
  sub_100003B30(&qword_1000842F8, &qword_1000630A0);
  sub_100003B30(&qword_1000841B8, &qword_100062F90);
  sub_100009034(&qword_100084300, &qword_1000842F8, &qword_1000630A0);
  sub_10004CB38();
  sub_10004C07C();
  ForEach<>.init(_:id:content:)();
}

uint64_t sub_10004A860@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = sub_100003B30(&qword_100084310, &qword_1000630A8);
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  __chkstk_darwin(v5, v7);
  v61 = &v53 - v8;
  v9 = a1[1];
  v83 = *a1;
  v84 = v9;
  v85 = a1[2];
  v86 = *(a1 + 48);
  v10 = *(a1 + 2);
  v54 = *(a1 + 3);
  type metadata accessor for MainActor();
  v72 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v70 = sub_100003B30(&qword_1000841B8, &qword_100062F90);
  v71 = &v53;
  v11 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70, v12);
  v69 = &v53 - v13;
  v67 = sub_100003B30(&qword_100084318, &qword_1000630B0);
  v68 = &v53;
  v66 = *(v67 - 8);
  v14 = *(v66 + 64);
  __chkstk_darwin(v67, v15);
  v62 = &v53 - v16;
  v17 = sub_100003B30(&qword_1000841C0, &qword_100062F98);
  v65 = &v53;
  v59 = v17;
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17, v19);
  v58 = &v53 - v20;
  v21 = sub_100003B30(&qword_1000841D8, &qword_100062FA0);
  v60 = &v53;
  v57 = v21;
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21, v23);
  v25 = &v53 - v24;
  v26 = *(&v85 + 1);
  v55 = v85;

  v56 = *(a2 + 80);
  v27 = sub_100031368(&v83);
  if (v86)
  {
    v28 = v10;
    v29 = String._bridgeToObjectiveC()();
    v30 = String._bridgeToObjectiveC()();
    v31 = sub_10005D95C(v29);

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = v54;
  }

  else
  {
    v28 = 0;
    v35 = 0;
    v34 = *(&v84 + 1);
    v32 = v84;
  }

  v36 = 0xE90000000000006BLL;
  if ((v27 & 1) == 0)
  {
    v36 = 0;
  }

  *&v76 = v55;
  *(&v76 + 1) = v26;
  v37 = 0x72616D6B63656863;
  if ((v27 & 1) == 0)
  {
    v37 = 0;
  }

  *&v77 = v37;
  *(&v77 + 1) = v36;
  *&v78 = v32;
  *(&v78 + 1) = v34;
  *&v79 = v28;
  *(&v79 + 1) = v35;
  static VerticalEdge.Set.all.getter();
  sub_10003B788();
  v38 = v61;
  View.listRowSeparator(_:edges:)();
  v75[0] = v76;
  v75[1] = v77;
  v75[2] = v78;
  v75[3] = v79;
  sub_10004CB8C(v75);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v63 + 32))(v25, v38, v64);
  v39 = &v25[*(v57 + 36)];
  v40 = v81;
  *(v39 + 4) = v80;
  *(v39 + 5) = v40;
  *(v39 + 6) = v82;
  v41 = v77;
  *v39 = v76;
  *(v39 + 1) = v41;
  v42 = v79;
  *(v39 + 2) = v78;
  *(v39 + 3) = v42;
  v43 = sub_100031368(&v83);
  v44 = v58;
  sub_100008A90(v25, v58, &qword_1000841D8, &qword_100062FA0);
  *(v44 + *(v59 + 36)) = v43 & 1;
  v45 = swift_allocObject();
  v46 = *(a2 + 48);
  *(v45 + 48) = *(a2 + 32);
  *(v45 + 64) = v46;
  *(v45 + 80) = *(a2 + 64);
  v47 = *(a2 + 16);
  *(v45 + 16) = *a2;
  *(v45 + 32) = v47;
  v48 = v84;
  *(v45 + 136) = v85;
  v49 = v83;
  *(v45 + 120) = v48;
  *(v45 + 96) = *(a2 + 80);
  *(v45 + 152) = v86;
  *(v45 + 104) = v49;
  sub_10004C494(a2, v74);
  sub_1000355E0(&v83, v74);
  sub_10004C14C();
  v50 = v62;
  View.onTapGesture(count:perform:)();

  sub_100008B68(v44, &qword_1000841C0, &qword_100062F98);
  v51 = v69;
  (*(v66 + 32))(v69, v50, v67);
  *(v51 + *(v70 + 36)) = 256;
  sub_100008A90(v51, v73, &qword_1000841B8, &qword_100062F90);
}

uint64_t sub_10004AEA8(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v9 = a2[1];
  v3 = *(a2 + 4);
  v4 = *(a2 + 5);
  v5 = *(a2 + 48);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + 80);
  v10[0] = v8;
  v10[1] = v9;
  v11 = v3;
  v12 = v4;
  v13 = v5 & 1;
  sub_100030234(v10);
}

double sub_10004AF8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004B0E0(a1, v18);
  v4 = static Alignment.center.getter();
  v6 = v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = *(a1 + 80);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  sub_10004C494(a1, &v17);

  v10 = v18[7];
  v11 = v18[8];
  v12 = v18[5];
  *(a2 + 96) = v18[6];
  *(a2 + 112) = v10;
  *(a2 + 128) = v11;
  v13 = v18[3];
  v14 = v18[4];
  *(a2 + 32) = v18[2];
  *(a2 + 48) = v13;
  *(a2 + 144) = v19;
  *(a2 + 64) = v14;
  *(a2 + 80) = v12;
  result = *v18;
  v16 = v18[1];
  *a2 = v18[0];
  *(a2 + 16) = v16;
  *(a2 + 152) = sub_10004C874;
  *(a2 + 160) = v7;
  *(a2 + 168) = v4;
  *(a2 + 176) = v6;
  return result;
}

double sub_10004B0E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() shared];
  v5 = [v4 inputPickerGainControlEnabled];

  if (v5)
  {
    v6 = *(a1 + 80);
    v7 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(v59) = 0;

    v25 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v79) = 0;
    *&v69 = v6;
    BYTE8(v69) = v7;
    *&v70 = v9;
    *(&v70 + 1) = v11;
    *&v71 = v13;
    *(&v71 + 1) = v15;
    LOBYTE(v72) = 0;
    BYTE8(v72) = v16;
    *&v73 = v18;
    *(&v73 + 1) = v20;
    *&v74 = v22;
    *(&v74 + 1) = v24;
    LOBYTE(v75) = 0;
    BYTE8(v75) = v25;
    *&v76 = v26;
    *(&v76 + 1) = v27;
    *&v77 = v28;
    *(&v77 + 1) = v29;
    LOBYTE(v78) = 0;
    sub_10004CAB4(&v69);
  }

  else
  {
    v30 = *(*(a1 + 80) + 152);
    v31 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    LOBYTE(v59) = 0;
    v49 = v30;
    v50 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v79) = 0;
    *&v69 = v49;
    BYTE8(v69) = v31;
    *&v70 = v33;
    *(&v70 + 1) = v35;
    *&v71 = v37;
    *(&v71 + 1) = v39;
    LOBYTE(v72) = 0;
    BYTE8(v72) = v40;
    *&v73 = v42;
    *(&v73 + 1) = v44;
    *&v74 = v46;
    *(&v74 + 1) = v48;
    LOBYTE(v75) = 0;
    BYTE8(v75) = v50;
    *&v76 = v51;
    *(&v76 + 1) = v52;
    *&v77 = v53;
    *(&v77 + 1) = v54;
    LOBYTE(v78) = 0;
    sub_10004C8C8(&v69);
  }

  v85 = v75;
  v86 = v76;
  v87 = v77;
  v88 = v78;
  v81 = v71;
  v82 = v72;
  v83 = v73;
  v84 = v74;
  v79 = v69;
  v80 = v70;
  sub_100003B30(&qword_100084288, &qword_100063028);
  sub_100003B30(&qword_100084290, &qword_100063030);
  sub_10004C904(&qword_100084298, &qword_100084288, &qword_100063028, sub_10004C8D4);
  sub_10004C904(&qword_1000842C8, &qword_100084290, &qword_100063030, sub_10004CA00);
  _ConditionalContent<>.init(storage:)();

  v87 = v67;
  v81 = v61;
  v82 = v62;
  v83 = v63;
  v84 = v64;
  v79 = v59;
  v80 = v60;
  *(a2 + 96) = v65;
  *(a2 + 112) = v66;
  *(a2 + 128) = v87;
  *(a2 + 144) = v68;
  v55 = v82;
  *(a2 + 32) = v81;
  *(a2 + 48) = v55;
  v56 = v84;
  *(a2 + 64) = v83;
  *(a2 + 80) = v56;
  result = *&v79;
  v58 = v80;
  *a2 = v79;
  *(a2 + 16) = v58;
  return result;
}

uint64_t sub_10004B47C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  v7 = type metadata accessor for InputPickerMicrophoneModesManager();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v19[11] = sub_100001F10(v5, v6);
  State.init(wrappedValue:)();
  v10 = v19[0];
  v11 = v19[1];
  v12 = static Alignment.center.getter();
  v14 = v13;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = swift_allocObject();
  v16 = *(a1 + 48);
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(a1 + 64);
  *(v15 + 96) = *(a1 + 80);
  v17 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  sub_10004C494(a1, v19);

  *a2 = v10;
  a2[1] = v11;
  a2[2] = sub_10004C820;
  a2[3] = v15;
  a2[4] = v12;
  a2[5] = v14;
  return result;
}

uint64_t sub_10004B5E8@<X0>(uint64_t *a1@<X1>, double *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ScrollGeometry.contentSize.getter();
  v5 = v4;
  v21 = *(a1 + 2);
  sub_100003B30(&qword_100084168, &qword_100062E30);
  State.wrappedValue.getter();
  v6 = v20;
  v21 = *(a1 + 3);
  State.wrappedValue.getter();
  v7 = v20;
  v8 = *a1;
  *&v21 = *a1;
  BYTE8(v21) = *(a1 + 8);
  if (BYTE8(v21) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v11 = type metadata accessor for EnvironmentValues();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11, v14);
    v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100008B68(&v21, &qword_100084280, &qword_100063020);
    (*(v12 + 8))(v16, v11);

    LOBYTE(v8) = LOBYTE(v20);
  }

  v17 = v5 + v6 + v7;
  if (v17 <= 310.0)
  {
    v17 = 310.0;
  }

  v18 = 520.0;
  if (v8)
  {
    v18 = 650.0;
  }

  if (v18 < v17)
  {
    v17 = v18;
  }

  *a2 = v17;
  return result;
}

uint64_t sub_10004B87C(uint64_t a1, double *a2, uint64_t (*a3)(uint64_t, double, double))
{
  v4 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    isCurrentExecutor = a3(isCurrentExecutor, 320.0, v4);
  }

  __chkstk_darwin(isCurrentExecutor, v6);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10004B9AC(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 16);
  sub_100003B30(&qword_100084168, &qword_100062E30);
  State.wrappedValue.setter();
}

double sub_10004BA8C@<D0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 10);
  v3 = *v1;
  v4 = v1[1];
  *&result = sub_100049BF4(a1).n128_u64[0];
  return result;
}

void *sub_10004BAE0(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = v6;
  if (v5 != 0.0 || v6 != 0.0)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_10004BB68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = static Color.clear.getter();
  GeometryProxy.size.getter();
  v8 = v7;
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = sub_10004CDA8;
  a3[4] = v11;
  return result;
}

uint64_t sub_10004BC70(double *a1, void (*a2)(uint64_t, double, double))
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor, v3, v4);
}

uint64_t sub_10004BD34@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_10004CDA0;
  a1[1] = v5;
}

uint64_t sub_10004BDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_100003B30(&qword_100084168, &qword_100062E30);
  result = State.wrappedValue.setter();
  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  *(a4 + 80) = a1;
  return result;
}

uint64_t sub_10004BED4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityLargeContentViewerEnabled.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_10004BF10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10004BF34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004BF7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004C004()
{
  result = qword_1000841A8;
  if (!qword_1000841A8)
  {
    sub_100008218(&qword_1000841A0, &qword_100062F88);
    sub_10004C07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841A8);
  }

  return result;
}

unint64_t sub_10004C07C()
{
  result = qword_1000841B0;
  if (!qword_1000841B0)
  {
    sub_100008218(&qword_1000841B8, &qword_100062F90);
    sub_100008218(&qword_1000841C0, &qword_100062F98);
    sub_10004C14C();
    swift_getOpaqueTypeConformance2();
    sub_100009034(&qword_1000841E8, &qword_1000841F0, &qword_100062FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841B0);
  }

  return result;
}

unint64_t sub_10004C14C()
{
  result = qword_1000841C8;
  if (!qword_1000841C8)
  {
    sub_100008218(&qword_1000841C0, &qword_100062F98);
    sub_10004C1CC();
    sub_10004C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841C8);
  }

  return result;
}

unint64_t sub_10004C1CC()
{
  result = qword_1000841D0;
  if (!qword_1000841D0)
  {
    sub_100008218(&qword_1000841D8, &qword_100062FA0);
    sub_10003B788();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841D0);
  }

  return result;
}

unint64_t sub_10004C26C()
{
  result = qword_1000841E0;
  if (!qword_1000841E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841E0);
  }

  return result;
}

uint64_t sub_10004C2C0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10004C2F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.listRowSpacing.setter();
}

unint64_t sub_10004C324()
{
  result = qword_1000841F8;
  if (!qword_1000841F8)
  {
    sub_100008218(&qword_100084198, &qword_100062F80);
    sub_100009034(&qword_100084200, &qword_100084208, &qword_100062FE0);
    sub_100009034(&qword_100084210, &qword_100084218, &qword_100062FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000841F8);
  }

  return result;
}

uint64_t sub_10004C3E8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10004C40C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_10004C3E8(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  if (*(v0 + 96))
  {
    v5 = *(v0 + 104);
  }

  v6 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_10004C4CC()
{
  result = qword_100084238;
  if (!qword_100084238)
  {
    sub_100008218(&qword_100084178, &qword_100062F60);
    sub_10004C56C();
    sub_100009034(&qword_1000841E8, &qword_1000841F0, &qword_100062FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084238);
  }

  return result;
}

unint64_t sub_10004C56C()
{
  result = qword_100084240;
  if (!qword_100084240)
  {
    sub_100008218(&qword_100084230, &qword_100063000);
    sub_10004C618();
    sub_100009034(&qword_100084260, &qword_100084268, &qword_100063010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084240);
  }

  return result;
}

unint64_t sub_10004C618()
{
  result = qword_100084248;
  if (!qword_100084248)
  {
    sub_100008218(&qword_100084228, &qword_100062FF8);
    sub_100008218(&qword_100084180, &qword_100062F68);
    type metadata accessor for InsetListStyle();
    sub_100008218(&qword_100084188, &qword_100062F70);
    sub_100008218(&qword_100084190, &qword_100062F78);
    sub_100008218(&qword_100084198, &qword_100062F80);
    sub_10004C324();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100009034(&qword_100084250, &qword_100084258, &qword_100063008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084248);
  }

  return result;
}

unint64_t sub_10004C7AC()
{
  result = qword_100084270;
  if (!qword_100084270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084270);
  }

  return result;
}

uint64_t sub_10004C820()
{
  v2 = *(v0 + 64);
  sub_100003B30(&qword_100084168, &qword_100062E30);
  return State.wrappedValue.setter();
}

uint64_t sub_10004C874()
{
  v2 = *(v0 + 48);
  sub_100003B30(&qword_100084168, &qword_100062E30);
  return State.wrappedValue.setter();
}

uint64_t sub_10004C904(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008218(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004C9AC()
{
  result = qword_1000842C0;
  if (!qword_1000842C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000842C0);
  }

  return result;
}

unint64_t sub_10004CA60()
{
  result = qword_1000842F0;
  if (!qword_1000842F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000842F0);
  }

  return result;
}

uint64_t sub_10004CAC4()
{
  sub_10004C3E8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  if (*(v0 + 80))
  {
    v4 = *(v0 + 88);
  }

  v5 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_10004CB38()
{
  result = qword_100084308;
  if (!qword_100084308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084308);
  }

  return result;
}

uint64_t sub_10004CBE0()
{
  sub_10004C3E8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  if (*(v0 + 80))
  {
    v4 = *(v0 + 88);
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  sub_100034234();

  return _swift_deallocObject(v0, 153, 7);
}

unint64_t sub_10004CC80()
{
  result = qword_100084320;
  if (!qword_100084320)
  {
    sub_100008218(&qword_100084278, &qword_100063018);
    sub_100008218(&qword_100084178, &qword_100062F60);
    sub_10004C4CC();
    sub_10004C7AC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084320);
  }

  return result;
}

uint64_t sub_10004CD68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004CE3C()
{
  static Color.gray.getter();
  v0 = Color.opacity(_:)();

  qword_100084338 = v0;
  return result;
}

uint64_t sub_10004CE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for Material._GlassVariant();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - v12;
  static Material._GlassVariant.regular.getter();
  Material._GlassVariant.excludingShadow()();
  v14 = *(v5 + 8);
  v14(v13, v4);
  v15 = a2 + *(sub_100003B30(&qword_100084348, &qword_100063230) + 36);
  static Material._glass(_:)();
  v14(v10, v4);
  v16 = sub_100003B30(qword_100084368, &qword_100063238);
  v17 = (v15 + *(v16 + 52));
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(&v17->i8[v18], v19, v20);
  *v17 = vdupq_n_s64(0x4046800000000000uLL);
  *(v15 + *(v16 + 56)) = 256;
  v21 = sub_100003B30(&qword_100084340, &qword_100063228);
  (*(*(v21 - 8) + 16))(a2, a1, v21);
}

uint64_t sub_10004D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a2 + *(sub_100003B30(&qword_100084348, &qword_100063230) + 36);
  static Material.ultraThin.getter();
  v5 = sub_100003B30(qword_100084368, &qword_100063238);
  v6 = (v4 + *(v5 + 52));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6->i8[v7], v8, v9);
  *v6 = vdupq_n_s64(0x4046800000000000uLL);
  *(v4 + *(v5 + 56)) = 256;
  v10 = sub_100003B30(&qword_100084340, &qword_100063228);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
}

uint64_t sub_10004D2FC()
{
  Solarium.init()();
  sub_100003B30(&qword_100084340, &qword_100063228);
  sub_100003B30(&qword_100084348, &qword_100063230);
  sub_100009034(&qword_100084350, &qword_100084340, &qword_100063228);
  sub_10004D3F4();
  return View.staticIf<A, B, C>(_:then:else:)();
}

unint64_t sub_10004D3F4()
{
  result = qword_100084358;
  if (!qword_100084358)
  {
    sub_100008218(&qword_100084348, &qword_100063230);
    sub_100009034(&qword_100084350, &qword_100084340, &qword_100063228);
    sub_100009034(&qword_100084360, qword_100084368, &qword_100063238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084358);
  }

  return result;
}

uint64_t sub_10004D4B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10004D514()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for _InputPickerBackgroundItemViewModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _InputPickerBackgroundItemViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10004D6D0()
{
  sub_100008218(&qword_100084340, &qword_100063228);
  sub_100008218(&qword_100084348, &qword_100063230);
  sub_100009034(&qword_100084350, &qword_100084340, &qword_100063228);
  sub_10004D3F4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004D7D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a3;
  type metadata accessor for MainActor();
  v50[2] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_100003B30(&qword_100084478, &qword_100063440);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v50 - v8;
  if (a2)
  {
    v10 = sub_100003B30(&qword_100084480, &qword_100063448);
    v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = __chkstk_darwin(v10, v12);
    v15 = v50 - v14;
    v16 = v50 + *(v13 + 36) - v14;
    static Material.selected.getter();
    v17 = sub_100003B30(qword_100084368, &qword_100063238);
    v18 = &v16[*(v17 + 52)];
    v19 = *(type metadata accessor for RoundedRectangle() + 20);
    v20 = enum case for RoundedCornerStyle.continuous(_:);
    v21 = type metadata accessor for RoundedCornerStyle();
    (*(*(v21 - 8) + 104))(&v18->i8[v19], v20, v21);
    *v18 = vdupq_n_s64(0x4046800000000000uLL);
    *&v16[*(v17 + 56)] = 256;
    v22 = sub_100003B30(&qword_100084470, &qword_100063438);
    (*(*(v22 - 8) + 16))(v15, a1, v22);
    v23 = sub_100003B30(&qword_1000844E0, &qword_100063480);
    v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v23, v25);
    sub_100008AF8(v15, v50 - v26, &qword_100084480, &qword_100063448);
    swift_storeEnumTagMultiPayload();
    sub_100003B30(&qword_1000844A8, &qword_100063450);
    sub_10004F72C();
    sub_10004F7EC();
    _ConditionalContent<>.init(storage:)();
    sub_100008B68(v15, &qword_100084480, &qword_100063448);
  }

  else
  {
    v27 = sub_100003B30(&qword_1000844A8, &qword_100063450);
    v50[1] = v50;
    v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v27, v29);
    v31 = v50 - v30;
    if (qword_100083200 != -1)
    {
      swift_once();
    }

    v32 = qword_100084338;
    v33 = &v31[*(v27 + 36)];
    v34 = v33 + *(sub_100003B30(&qword_1000844C0, &qword_100063460) + 36);
    static Material.ultraThin.getter();
    v35 = static Edge.Set.all.getter();
    v34[*(sub_100003B30(&qword_1000844C8, &qword_100063468) + 36)] = v35;
    *v33 = v32;
    v36 = (v33 + *(sub_100003B30(&qword_1000844D0, &qword_100063470) + 36));
    v37 = *(type metadata accessor for RoundedRectangle() + 20);
    v38 = enum case for RoundedCornerStyle.continuous(_:);
    v39 = type metadata accessor for RoundedCornerStyle();
    (*(*(v39 - 8) + 104))(&v36->i8[v37], v38, v39);
    *v36 = vdupq_n_s64(0x4046800000000000uLL);
    *(v36->i16 + *(sub_100003B30(&qword_1000844D8, &qword_100063478) + 36)) = 256;

    v40 = static Alignment.center.getter();
    v42 = v41;
    v43 = (v33 + *(sub_100003B30(&qword_1000844B8, &qword_100063458) + 36));
    *v43 = v40;
    v43[1] = v42;
    v44 = sub_100003B30(&qword_100084470, &qword_100063438);
    (*(*(v44 - 8) + 16))(v31, a1, v44);
    v45 = sub_100003B30(&qword_1000844E0, &qword_100063480);
    v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v45, v47);
    sub_100008AF8(v31, v50 - v48, &qword_1000844A8, &qword_100063450);
    swift_storeEnumTagMultiPayload();
    sub_100003B30(&qword_100084480, &qword_100063448);
    sub_10004F72C();
    sub_10004F7EC();
    _ConditionalContent<>.init(storage:)();
    sub_100008B68(v31, &qword_1000844A8, &qword_100063450);
  }

  sub_10004F8AC(v9, v51);
}

uint64_t sub_10004DDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a2 + *(sub_100003B30(&qword_100084480, &qword_100063448) + 36);
  static Material.ultraThin.getter();
  v5 = sub_100003B30(qword_100084368, &qword_100063238);
  v6 = (v4 + *(v5 + 52));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6->i8[v7], v8, v9);
  *v6 = vdupq_n_s64(0x4046800000000000uLL);
  *(v4 + *(v5 + 56)) = 256;
  v10 = sub_100003B30(&qword_100084470, &qword_100063438);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
}

uint64_t sub_10004DF94()
{
  v1 = *v0;
  Solarium.init()();
  sub_100003B30(&qword_100084470, &qword_100063438);
  sub_100003B30(&qword_100084478, &qword_100063440);
  sub_100003B30(&qword_100084480, &qword_100063448);
  sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438);
  sub_10004F6AC();
  sub_10004F72C();
  return View.staticIf<A, B, C>(_:then:else:)();
}

uint64_t sub_10004E0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v34 = a6;
  type metadata accessor for MainActor();
  v35 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TopPocketModifier();
  swift_getWitnessTable();
  v8 = type metadata accessor for _ViewModifier_Content();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v8;
  v37 = OpaqueTypeMetadata2;
  v38 = WitnessTable;
  v39 = OpaqueTypeConformance2;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &v28;
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v28 - v20;
  v28 = &v28;
  __chkstk_darwin(v19, v22);
  *(&v28 - 4) = a4;
  *(&v28 - 3) = a5;
  static HorizontalAlignment.center.getter();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v27 = OpaqueTypeConformance2;
  v26 = WitnessTable;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  v23 = v12[2];
  v23(v17, v21, v11);
  v24 = v12[1];
  v24(v21, v11);
  v23(v34, v17, v11);
  v24(v17, v11);
}

uint64_t sub_10004E3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v26[2] = a2;
  v26[3] = a1;
  v27 = a5;
  type metadata accessor for MainActor();
  v28 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TopPocketModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v26[0] = type metadata accessor for _InsetViewModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = __chkstk_darwin(v7, v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = v26;
  v15 = __chkstk_darwin(v11, v14);
  v17 = v26 - v16;
  __chkstk_darwin(v15, v18);
  v26[-4] = a3;
  v26[-3] = a4;
  static HorizontalAlignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v24 = WitnessTable;
  v25 = a4;
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v20 = swift_getWitnessTable();
  v29 = WitnessTable;
  v30 = v20;
  swift_getWitnessTable();
  v21 = v8[2];
  v21(v13, v17, v7);
  v22 = v8[1];
  v22(v17, v7);
  v21(v27, v13, v7);
  v22(v13, v7);
}

uint64_t sub_10004E744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9)
{
  v33 = a7;
  v30 = a3;
  v29 = a2;
  v32 = a1;
  v34 = a8;
  v31 = a9;
  a6(255, a4, a5);
  swift_getWitnessTable();
  v11 = type metadata accessor for _ViewModifier_Content();
  swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for _InsetViewModifier();
  v13 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = WitnessTable;
  v52 = swift_getWitnessTable();
  v43 = v11;
  v44 = &type metadata for Solarium;
  v45 = OpaqueTypeMetadata2;
  v46 = v13;
  v47 = WitnessTable;
  v48 = &protocol witness table for Solarium;
  v49 = OpaqueTypeConformance2;
  v50 = swift_getWitnessTable();
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v18 = __chkstk_darwin(v14, v17);
  v20 = &OpaqueTypeMetadata2 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &OpaqueTypeMetadata2 - v22;
  Solarium.init()();
  v39 = a4;
  v40 = a5;
  v41 = v29;
  v42 = v30;
  v35 = a4;
  v36 = a5;
  v37 = v29;
  v38 = v30;
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  View.staticIf<A, B, C>(_:then:else:)();
  v24 = v15[2];
  v24(v20, v23, v14);
  v25 = v15[1];
  v25(v23, v14);
  v24(v34, v20, v14);
  return (v25)(v20, v14);
}

uint64_t sub_10004EADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v34 = a6;
  type metadata accessor for MainActor();
  v35 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BottomPocketModifier();
  swift_getWitnessTable();
  v8 = type metadata accessor for _ViewModifier_Content();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v8;
  v37 = OpaqueTypeMetadata2;
  v38 = WitnessTable;
  v39 = OpaqueTypeConformance2;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &v28;
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v28 - v20;
  v28 = &v28;
  __chkstk_darwin(v19, v22);
  *(&v28 - 4) = a4;
  *(&v28 - 3) = a5;
  static HorizontalAlignment.center.getter();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v27 = OpaqueTypeConformance2;
  v26 = WitnessTable;
  View.safeAreaBar<A>(edge:alignment:spacing:content:)();
  v23 = v12[2];
  v23(v17, v21, v11);
  v24 = v12[1];
  v24(v21, v11);
  v23(v34, v17, v11);
  v24(v17, v11);
}

uint64_t sub_10004EE00@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, char *a5@<X8>)
{
  v33 = a4;
  v37 = a5;
  v36 = *(a3 - 8);
  v6 = *(v36 + 64);
  __chkstk_darwin(a1, a2);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9;
  v38 = v9;
  v39 = v11;
  v35 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = v13[8];
  v16 = __chkstk_darwin(OpaqueTypeMetadata2, v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v32 - v20;
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
  v23 = type metadata accessor for BarMagicPocketStyle();
  v33 = &v32;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static BarMagicPocketStyle.automatic.getter();
  View.scrollPocketTag_v1(style:)();
  (*(v24 + 8))(v28, v23);
  (*(v36 + 8))(v8, v10);
  v29 = v13[2];
  v29(v21, v18, OpaqueTypeMetadata2);
  v30 = v13[1];
  v30(v18, OpaqueTypeMetadata2);
  v29(v37, v21, OpaqueTypeMetadata2);
  v30(v21, OpaqueTypeMetadata2);
}

uint64_t sub_10004F128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v26[2] = a2;
  v26[3] = a1;
  v27 = a5;
  type metadata accessor for MainActor();
  v28 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BottomPocketModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v26[0] = type metadata accessor for _InsetViewModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v11 = __chkstk_darwin(v7, v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = v26;
  v15 = __chkstk_darwin(v11, v14);
  v17 = v26 - v16;
  __chkstk_darwin(v15, v18);
  v26[-4] = a3;
  v26[-3] = a4;
  static HorizontalAlignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v24 = WitnessTable;
  v25 = a4;
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v20 = swift_getWitnessTable();
  v29 = WitnessTable;
  v30 = v20;
  swift_getWitnessTable();
  v21 = v8[2];
  v21(v13, v17, v7);
  v22 = v8[1];
  v22(v17, v7);
  v21(v27, v13, v7);
  v22(v13, v7);
}

uint64_t sub_10004F40C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v20[1] = a4;
  v8 = *(a3 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(a1, a2);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v20 - v14;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
  v17 = v8[2];
  v17(v15, v12, a3);
  v18 = v8[1];
  v18(v12, a3);
  v17(a5, v15, a3);
  v18(v15, a3);
}

unint64_t sub_10004F6AC()
{
  result = qword_100084490;
  if (!qword_100084490)
  {
    sub_100008218(&qword_100084478, &qword_100063440);
    sub_10004F72C();
    sub_10004F7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084490);
  }

  return result;
}

unint64_t sub_10004F72C()
{
  result = qword_100084498;
  if (!qword_100084498)
  {
    sub_100008218(&qword_100084480, &qword_100063448);
    sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438);
    sub_100009034(&qword_100084360, qword_100084368, &qword_100063238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084498);
  }

  return result;
}

unint64_t sub_10004F7EC()
{
  result = qword_1000844A0;
  if (!qword_1000844A0)
  {
    sub_100008218(&qword_1000844A8, &qword_100063450);
    sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438);
    sub_100009034(&qword_1000844B0, &qword_1000844B8, &qword_100063458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000844A0);
  }

  return result;
}

uint64_t sub_10004F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100084478, &qword_100063440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FA0C()
{
  sub_100008218(&qword_100084470, &qword_100063438);
  sub_100008218(&qword_100084478, &qword_100063440);
  sub_100008218(&qword_100084480, &qword_100063448);
  sub_100009034(&qword_100084488, &qword_100084470, &qword_100063438);
  sub_10004F6AC();
  sub_10004F72C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004FB48(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _InsetViewModifier();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004FCF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10004FD48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100052B14();
  }

  return result;
}

uint64_t sub_10004FEF4()
{
  v1 = v0;
  *(v0 + 16) = [objc_opt_self() auxiliarySession];
  p_ivars = &RSHostingActionClientToHost__metaData.ivars;
  *(v0 + 24) = [objc_allocWithZone(AVAudioEngine) init];
  *(v0 + 32) = [objc_allocWithZone(AVAudioSession) initSessionForIndependentInputRoute];
  *(v0 + 40) = [objc_allocWithZone(AVAudioEngine) init];
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(NSOperationQueue) init];
  *(v0 + 72) = 0xD00000000000001ALL;
  *(v0 + 80) = 0x8000000100069230;
  sub_100053604();
  [*(v0 + 64) setMaxConcurrentOperationCount:1];
  v3 = *(v0 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 64);

  v6 = String._bridgeToObjectiveC()();

  [v5 setName:v6];

  sub_100003B30(&qword_1000846B0, &unk_100063530);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100060AF0;
  v8 = AVSystemController_RecordingStateDidChangeNotification;
  *(v7 + 32) = AVSystemController_RecordingStateDidChangeNotification;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 sharedInstance];
  v12 = &unk_100083000;
  if (v11)
  {
    type metadata accessor for Name(0);
    v13 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock = 0;
    v15 = [v13 setAttribute:isa forKey:AVSystemController_SubscribeToNotificationsAttribute error:&aBlock];

    if ((v15 & 1) == 0)
    {
      v51 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_14;
    }

    v71 = v11;
    v16 = aBlock;
  }

  else
  {
    v71 = 0;
  }

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  v19 = *(v1 + 64);
  v20 = swift_allocObject();
  swift_weakInit();
  v76 = sub_100053B9C;
  v77 = v20;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10005094C;
  v75 = &unk_10007B7E8;
  v21 = _Block_copy(&aBlock);
  v22 = v19;

  v23 = [v18 addObserverForName:v10 object:0 queue:v22 usingBlock:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();

  v24 = [v17 defaultCenter];
  v25 = *(v1 + 24);
  v26 = *(v1 + 64);
  v27 = swift_allocObject();
  swift_weakInit();
  v76 = sub_100053BA4;
  v77 = v27;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10005094C;
  v75 = &unk_10007B810;
  v28 = _Block_copy(&aBlock);
  v29 = v25;
  v30 = v26;

  v31 = [v24 addObserverForName:AVAudioEngineConfigurationChangeNotification object:v29 queue:v30 usingBlock:v28];
  _Block_release(v28);
  swift_unknownObjectRelease();

  v32 = [v17 defaultCenter];
  v33 = *(v1 + 40);
  v34 = *(v1 + 64);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v33;
  v37 = v34;

  v76 = sub_100053BE4;
  v77 = v35;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_10005094C;
  v75 = &unk_10007B838;
  v38 = _Block_copy(&aBlock);

  v39 = [v32 addObserverForName:AVAudioEngineConfigurationChangeNotification object:v36 queue:v37 usingBlock:v38];
  _Block_release(v38);
  swift_unknownObjectRelease();

  v40 = *(v1 + 16);
  aBlock = 0;
  v41 = [v40 setCategory:AVAudioSessionCategoryPlayAndRecord mode:AVAudioSessionModeDefault options:45 error:&aBlock];
  v42 = aBlock;
  if (v41)
  {
    v43 = *(v1 + 16);
    aBlock = 0;
    v44 = v42;
    v45 = [v43 preferDecoupledIO:1 error:&aBlock];
    v46 = aBlock;
    v12 = &unk_100083000;
    if (v45)
    {
      v47 = *(v1 + 32);
      aBlock = 0;
      v48 = v46;
      p_ivars = &RSHostingActionClientToHost__metaData.ivars;
      if ([v47 setCategory:AVAudioSessionCategoryRecord mode:AVAudioSessionModeDefault options:5 error:&aBlock])
      {
        v49 = aBlock;

        goto LABEL_19;
      }

      v53 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v52 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      p_ivars = (&RSHostingActionClientToHost__metaData + 48);
    }
  }

  else
  {
    v50 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    p_ivars = (&RSHostingActionClientToHost__metaData + 48);
    v12 = &unk_100083000;
  }

  v13 = v71;
LABEL_14:

  if (v12[62] != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_1000080BC(v54, qword_100086758);
  swift_errorRetain();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    swift_errorRetain();
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 4) = v59;
    *v58 = v59;
    _os_log_impl(&_mh_execute_header, v55, v56, "Metering: Could not subscribe to AVSystemController notifications: %@", v57, 0xCu);
    sub_100008B68(v58, &qword_1000838D8, &unk_1000617C0);
  }

  else
  {
  }

LABEL_19:
  v60 = [objc_allocWithZone(AVAudioSessionRouteControl) p_ivars[44]];
  [v60 setRouteControlOptions:1];
  v61 = *(v1 + 32);
  aBlock = 0;
  if ([v61 setPreferredRouteControlConfig:v60 error:&aBlock])
  {
    v62 = aBlock;
  }

  else
  {
    v63 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v12[62] != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000080BC(v64, qword_100086758);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      swift_errorRetain();
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v69;
      *v68 = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "Metering: Failed to set independent route on shadowing audio session. Error = %@", v67, 0xCu);
      sub_100008B68(v68, &qword_1000838D8, &unk_1000617C0);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_1000508EC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100050DC0(a1);
  }

  return result;
}