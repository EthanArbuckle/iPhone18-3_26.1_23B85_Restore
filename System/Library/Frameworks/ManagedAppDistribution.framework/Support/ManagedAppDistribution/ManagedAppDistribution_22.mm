uint64_t sub_10035712C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v3 = a3;
  v4 = *(a1 + 88);
  v69 = v4;
  if (!v4)
  {
    v20 = 0;
    v10 = 0;
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v13 = 0;
    goto LABEL_68;
  }

  v52 = a3;
  v68 = *v65;
  v55 = v68;
  v59 = v4;
  v5 = *(v4 + 16);
  v54 = *(&v68 + 1);

  sub_100222DF8(&v68, v66);
  sub_100005934(&v69, v66, &qword_100781070);
  v6 = sub_10020A7AC(v65, v66);
  if (!v5)
  {
LABEL_14:
    sub_10023215C(&v68);
    sub_1000032A8(&v69, &qword_100781070);
    v20 = 0;
    v10 = 0;
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v13 = 0;
    goto LABEL_67;
  }

  v7 = 0;
  v8 = (v59 + 80);
  while (1)
  {
    v9 = *(v8 - 6);
    v10 = *(v8 - 5);
    v11 = *(v8 - 3);
    v64 = *(v8 - 4);
    v62 = v11;
    v12 = *(v8 - 1);
    v61 = *(v8 - 2);
    v60 = v12;
    v13 = *v8;
    v14 = *(v65 + 2);
    v15 = v9;
    *&v66[0] = v9;
    *(&v66[0] + 1) = v10;
    __chkstk_darwin(v6);
    v46 = v66;

    v63 = v14;
    result = sub_10020A1BC(sub_1001F7FFC, v45, v14);
    if (result)
    {
      if (!v13)
      {
        break;
      }

      v17 = *(v65 + 7);
      v18 = v17 < v64;
      if (v17 != v64 || (v19 = *(v65 + 8), v18 = v19 < v62, v19 != v62))
      {
        if (!v18)
        {
          break;
        }

        goto LABEL_6;
      }

      if (*(v65 + 9) >= v61)
      {
        break;
      }
    }

LABEL_6:

    ++v7;
    v8 += 7;

    if (v5 == v7)
    {
      goto LABEL_14;
    }
  }

  if (v5 - 1 != v7)
  {
    v25 = v7 + 1;
    v26 = v59 + 80;
    v27 = v55;
    v28 = v54;
    v47 = v59 + 80;
LABEL_17:
    v50 = v13;
    v48 = v15;
    v49 = v10;
    v30 = v15 == v27 && v10 == v28;
    v51 = v30;
    v31 = (v26 + 56 * v25);
    v32 = v25;
    if (v25 >= v5)
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return result;
    }

    while (1)
    {
      if (__OFADD__(v32, 1))
      {
        goto LABEL_72;
      }

      v59 = v32 + 1;
      v33 = v5;
      v20 = *(v31 - 6);
      v10 = *(v31 - 5);
      v34 = *(v31 - 3);
      v58 = *(v31 - 4);
      v57 = v34;
      v35 = *(v31 - 1);
      v56 = *(v31 - 2);
      v13 = *v31;
      *&v66[0] = v20;
      *(&v66[0] + 1) = v10;
      __chkstk_darwin(result);
      v46 = v66;

      if ((sub_10020A1BC(sub_1001F80EC, v45, v63) & 1) == 0)
      {

        v5 = v33;
        goto LABEL_55;
      }

      v53 = v35;
      v5 = v33;
      if (v13)
      {
        v36 = *(v65 + 7);
        v37 = v36 < v58;
        if (v36 == v58 && (v38 = *(v65 + 8), v37 = v38 < v57, v38 == v57))
        {
          if (*(v65 + 9) < v56)
          {
            goto LABEL_54;
          }
        }

        else if (v37)
        {
          goto LABEL_54;
        }
      }

      if (v20 == v55 && v10 == v54)
      {
        if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v27 = v55;
          v20 = v55;
          goto LABEL_64;
        }

LABEL_45:
        if (!v13 || !v50)
        {
          goto LABEL_61;
        }

        if (v64 == v58)
        {
          if (v62 == v57)
          {
            if (v61 < v56)
            {
              v58 = v64;
              v42 = v62;
              v43 = &v71;
LABEL_60:
              *(v43 - 32) = v42;
LABEL_61:

              v27 = v55;
              v28 = v54;
              v26 = v47;
              v22 = v56;
              v21 = v57;
LABEL_62:
              v60 = v53;
              v61 = v22;
              v62 = v21;
              v64 = v58;
              v15 = v20;
              v25 = v59;
              if (v59 != v5)
              {
                goto LABEL_17;
              }

              goto LABEL_66;
            }
          }

          else if (v62 < v57)
          {
            v42 = v64;
            v43 = v72;
            goto LABEL_60;
          }
        }

        else if (v64 < v58)
        {
          goto LABEL_61;
        }

        goto LABEL_54;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (v51)
      {
        v5 = v33;
        if (v39)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v40 = v39;
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v5 = v33;
        if (v40)
        {
          if ((v41 & 1) == 0)
          {
            v27 = v55;
LABEL_64:
            v26 = v47;
            v22 = v56;
            v21 = v57;

            v28 = v54;
            goto LABEL_62;
          }

          goto LABEL_45;
        }

        if ((v41 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

LABEL_54:

LABEL_55:

      if (v59 == v5)
      {
        v20 = v48;
        v10 = v49;
        v58 = v64;
        v21 = v62;
        v22 = v61;
        v53 = v60;
        v13 = v50;
        goto LABEL_66;
      }

      ++v32;
      v31 += 7;
      if (v32 >= v5)
      {
        goto LABEL_71;
      }
    }
  }

  v20 = v15;
  v58 = v64;
  v21 = v62;
  v22 = v61;
  v53 = v60;
LABEL_66:
  sub_10023215C(&v68);
  sub_1000032A8(&v69, &qword_100781070);
  v23 = v58;
  v24 = v53;
LABEL_67:
  sub_10020A92C(v65);
  sub_10023215C(&v68);
  v3 = v52;
LABEL_68:
  v70[0] = v20;
  v70[1] = v10;
  v70[2] = v23;
  v70[3] = v21;
  v71 = v22;
  v72[0] = v24;
  v72[1] = v13;
  sub_100357974(0, v70, v66);
  sub_100271104(v20, v10);
  if (v67)
  {
    URL.init(string:)();
    return sub_1000032A8(v66, &qword_100781068);
  }

  else
  {
    v44 = type metadata accessor for URL();
    return (*(*(v44 - 8) + 56))(v3, 1, 1, v44);
  }
}

uint64_t sub_100357974@<X0>(int a1@<W0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v64 = a1;
  v52 = a3;
  v57 = a2;
  v55 = *(a2 + 8);
  if (v55)
  {
    v54 = *v57;
    result = type metadata accessor for EnterpriseApp();
    v66 = *(v53 + *(result + 36));
    if (v66)
    {
      v56 = *(v66 + 16);
      if (v56)
      {
        v4 = 0;
        v5 = 0xEF6567616D692D65;
        v6 = 0xED00006567616D69;
        v7 = 0x2D79616C70736964;
        v8 = (v66 + 32);
        v65 = 0x80000001006C2F90;
        do
        {
          if (v4 >= *(v66 + 16))
          {
            goto LABEL_92;
          }

          v13 = v8[1];
          v71 = *v8;
          v72 = v13;
          v14 = v8[2];
          v15 = v8[3];
          v16 = v8[5];
          v75 = v8[4];
          v76 = v16;
          v73 = v14;
          v74 = v15;
          if (v72 <= 1u)
          {
            if (v72)
            {
              v17 = 0xD000000000000016;
            }

            else
            {
              v17 = 0x7A69732D6C6C7566;
            }

            if (v72)
            {
              v18 = 0x80000001006C2F70;
            }

            else
            {
              v18 = 0xEF6567616D692D65;
            }
          }

          else if (v72 == 2)
          {
            v17 = 0xD000000000000013;
            v18 = v65;
          }

          else
          {
            if (v72 == 3)
            {
              v17 = 0xD000000000000010;
            }

            else
            {
              v17 = 0x2D79616C70736964;
            }

            if (v72 == 3)
            {
              v18 = 0x80000001006C2FB0;
            }

            else
            {
              v18 = 0xED00006567616D69;
            }
          }

          ++v4;
          v19 = 0xD000000000000013;
          if (v64 == 3)
          {
            v7 = 0xD000000000000010;
            v6 = 0x80000001006C2FB0;
          }

          if (v64 != 2)
          {
            v19 = v7;
          }

          v20 = v65;
          if (v64 != 2)
          {
            v20 = v6;
          }

          v21 = 0xD000000000000016;
          if (v64)
          {
            v5 = 0x80000001006C2F70;
          }

          else
          {
            v21 = 0x7A69732D6C6C7566;
          }

          if (v64 <= 1u)
          {
            v22 = v21;
          }

          else
          {
            v22 = v19;
          }

          if (v64 <= 1u)
          {
            v23 = v5;
          }

          else
          {
            v23 = v20;
          }

          if (v17 == v22 && v18 == v23)
          {
            sub_100355378(&v71, v67);
          }

          else
          {
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100355378(&v71, v67);

            if ((v24 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v63 = v71;
          v62 = v72;
          v61 = v73;
          v60 = v74;
          v59 = v75;
          v58 = v76;
          v70 = *(v57 + 48);
          if (*(&v76 + 1))
          {
            v9 = *(&v76 + 1);
          }

          else
          {
            v9 = _swiftEmptyArrayStorage;
          }

          v67[0] = v54;
          v67[1] = v55;
          v10 = *(v57 + 32);
          v68 = *(v57 + 16);
          v69 = v10;
          __chkstk_darwin(*(&v76 + 1));
          v51[2] = v11;

          v12 = sub_10020A33C(sub_10035A0D8, v51, v9);

          if (v12)
          {
LABEL_89:
            v44 = v63;
            v45 = v62;
            v46 = v61;
            v47 = v60;
            v48 = v59;
            v49 = v58;
            goto LABEL_90;
          }

LABEL_10:
          result = sub_100350510(&v71);
          v8 += 6;
          v5 = 0xEF6567616D692D65;
          v6 = 0xED00006567616D69;
          v7 = 0x2D79616C70736964;
        }

        while (v56 != v4);
      }
    }
  }

  result = type metadata accessor for EnterpriseApp();
  v25 = *(v53 + *(result + 32));
  v56 = *(v25 + 16);
  if (v56)
  {
    v26 = 0;
    v27 = 0x2D79616C70736964;
    v28 = (v25 + 32);
    v57 = 0x80000001006C2F90;
    while (v26 < *(v25 + 16))
    {
      v29 = v28[1];
      v71 = *v28;
      v72 = v29;
      v30 = v28[2];
      v31 = v28[3];
      v32 = v28[5];
      v75 = v28[4];
      v76 = v32;
      v73 = v30;
      v74 = v31;
      if (v72 <= 1u)
      {
        if (v72)
        {
          v33 = 0xD000000000000016;
        }

        else
        {
          v33 = 0x7A69732D6C6C7566;
        }

        if (v72)
        {
          v34 = 0x80000001006C2F70;
        }

        else
        {
          v34 = 0xEF6567616D692D65;
        }
      }

      else if (v72 == 2)
      {
        v33 = 0xD000000000000013;
        v34 = v57;
      }

      else
      {
        if (v72 == 3)
        {
          v33 = 0xD000000000000010;
        }

        else
        {
          v33 = v27;
        }

        if (v72 == 3)
        {
          v34 = 0x80000001006C2FB0;
        }

        else
        {
          v34 = 0xED00006567616D69;
        }
      }

      ++v26;
      v35 = 0xD000000000000013;
      if (v64 == 3)
      {
        v36 = 0xD000000000000010;
      }

      else
      {
        v36 = v27;
      }

      if (v64 == 3)
      {
        v37 = 0x80000001006C2FB0;
      }

      else
      {
        v37 = 0xED00006567616D69;
      }

      if (v64 != 2)
      {
        v35 = v36;
      }

      v38 = v57;
      if (v64 != 2)
      {
        v38 = v37;
      }

      v39 = 0xD000000000000016;
      if (v64)
      {
        v40 = 0x80000001006C2F70;
      }

      else
      {
        v39 = 0x7A69732D6C6C7566;
        v40 = 0xEF6567616D692D65;
      }

      if (v64 <= 1u)
      {
        v41 = v39;
      }

      else
      {
        v41 = v35;
      }

      if (v64 <= 1u)
      {
        v42 = v40;
      }

      else
      {
        v42 = v38;
      }

      v63 = v71;
      v62 = v72;
      v61 = v73;
      v60 = v74;
      v59 = v75;
      v58 = v76;
      if (v33 == v41 && v34 == v42)
      {
        sub_100355378(&v71, v67);

        goto LABEL_89;
      }

      v43 = v27;
      v65 = v42;
      LODWORD(v66) = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100355378(&v71, v67);

      if (v66)
      {
        goto LABEL_89;
      }

      result = sub_100350510(&v71);
      v28 += 6;
      v27 = v43;
      if (v56 == v26)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
  }

  else
  {
LABEL_87:
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
LABEL_90:
    v50 = v52;
    *v52 = v44;
    v50[1] = v45;
    v50[2] = v46;
    v50[3] = v47;
    v50[4] = v48;
    v50[5] = v49;
  }

  return result;
}

Swift::Int sub_100357FF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100358100()
{
  String.hash(into:)();
}

Swift::Int sub_1003581F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003582F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10035B808(*a1);
  *a2 = result;
  return result;
}

void sub_100358328(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6567616D692D65;
  v4 = 0x7A69732D6C6C7566;
  v5 = 0x80000001006C2F90;
  v6 = 0xD000000000000013;
  v7 = 0x80000001006C2FB0;
  v8 = 0x2D79616C70736964;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xED00006567616D69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001006C2F70;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10035844C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69737265762D736FLL;
  }

  else
  {
    v3 = 0x656369766564;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x69737265762D736FLL;
  }

  else
  {
    v5 = 0x656369766564;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003584F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100358578()
{
  String.hash(into:)();
}

Swift::Int sub_1003585E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100358668@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100759050, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003586C8(uint64_t *a1@<X8>)
{
  v2 = 0x656369766564;
  if (*v1)
  {
    v2 = 0x69737265762D736FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100358708()
{
  if (*v0)
  {
    return 0x69737265762D736FLL;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_100358744@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100759050, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1003587A8(uint64_t a1)
{
  v2 = sub_10035CCA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003587E4(uint64_t a1)
{
  v2 = sub_10035CCA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100358820@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10035B854(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100358870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10035A148(v5, v7) & 1;
}

uint64_t sub_1003588CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[6];
  if (v3)
  {
    v4 = v0[5];
    v7 = 14897;
    String.append(_:)(*&v1);
    v5._countAndFlagsBits = 47;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v1 = v4;
    v2 = v3;
  }

  else
  {
    v7 = 14896;
  }

  String.append(_:)(*&v1);
  return v7;
}

uint64_t sub_100358954(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4449656C646E7562;
    v7 = 7107189;
    v8 = 3499117;
    if (a1 != 3)
    {
      v8 = 1932878957;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1684957547;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x732D363532616873;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 0x49746E6169726176;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x657A69732D35646DLL;
    v4 = 0x363532616873;
    if (a1 != 6)
    {
      v4 = 0x73363532616873;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100358A9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100358954(*a1);
  v5 = v4;
  if (v3 == sub_100358954(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100358B24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100358954(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100358B88()
{
  sub_100358954(*v0);
  String.hash(into:)();
}

Swift::Int sub_100358BDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100358954(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100358C3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10035BA9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100358C6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100358954(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100358CB4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10035BA9C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100358CE8(uint64_t a1)
{
  v2 = sub_10035CCF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100358D24(uint64_t a1)
{
  v2 = sub_10035CCF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100358D60@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10035BAE8(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100358E90()
{
  String.hash(into:)();
}

unint64_t sub_100358F90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10035C5B8(*a1);
  *a2 = result;
  return result;
}

void sub_100358FC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F69737265;
  v4 = 0x762D656C646E7562;
  v5 = 0xE400000000000000;
  v6 = 1684957547;
  v7 = 0xE800000000000000;
  v8 = 0x656C746974627573;
  if (v2 != 4)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001006C3070;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001006C3040;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100359088()
{
  v1 = *v0;
  v2 = 0x762D656C646E7562;
  v3 = 1684957547;
  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
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

unint64_t sub_10035914C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10035C5B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100359174(uint64_t a1)
{
  v2 = sub_10035D05C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003591B0(uint64_t a1)
{
  v2 = sub_10035D05C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1003591EC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10035C604(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100359254()
{
  String.hash(into:)();
}

unint64_t sub_100359358@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10035C980(*a1);
  *a2 = result;
  return result;
}

void sub_100359388(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x617461646174656DLL;
  v5 = 0x80000001006C30C0;
  v6 = 0xE600000000000000;
  v7 = 0x737465737361;
  if (v2 != 4)
  {
    v7 = 0x2D64656E6E696874;
    v6 = 0xEE00737465737361;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0xD000000000000014;
  if (v2 == 1)
  {
    v9 = 0x6D726F6674616C70;
  }

  else
  {
    v8 = 0x80000001006C30A0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_100359454()
{
  v1 = *v0;
  v2 = 0x617461646174656DLL;
  v3 = 0x737465737361;
  if (v1 != 4)
  {
    v3 = 0x2D64656E6E696874;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 1)
  {
    v4 = 0x6D726F6674616C70;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_10035951C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10035C980(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100359544(uint64_t a1)
{
  v2 = sub_10035CF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100359580(uint64_t a1)
{
  v2 = sub_10035CF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003595BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1001F0C48(&qword_1007811C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = type metadata accessor for EnterpriseApp();
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v23 = a1;
  sub_100006D8C(a1, v11);
  sub_10035CF30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(v23);
  }

  v12 = v5;
  v13 = v22;
  v31 = 0;
  sub_10035CFB4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v28;
  *(v10 + 2) = v27;
  *(v10 + 3) = v15;
  *(v10 + 8) = v29;
  v16 = v26;
  *v10 = v25;
  *(v10 + 1) = v16;
  LOBYTE(v24) = 2;
  v10[v8[6]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v24) = 3;
  v10[v8[7]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_1001F0C48(&unk_100781110);
  v30 = 4;
  sub_10035CDE4(&qword_1007811E0, &unk_100781110, &unk_1006A3268, sub_10035D008);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v10[v8[8]] = v24;
  v30 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v10[v8[9]] = v24;
  LOBYTE(v24) = 1;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v18)
  {
    sub_100359A58(v17, v18, &v10[v8[5]]);
    (*(v12 + 8))(v7, v4);
  }

  else
  {
    (*(v12 + 8))(v7, v4);
    v19 = v8[5];
    v20 = type metadata accessor for Platform();
    (*(*(v20 - 8) + 56))(&v10[v19], 1, 1, v20);
  }

  sub_10035B220(v10, v13);
  sub_10000710C(v23);
  return sub_10035B284(v10);
}

uint64_t sub_100359A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Platform();
  v13 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD00000000000001BLL && 0x80000001006C6270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static Platform.iOS.getter();
LABEL_5:
    (*(v13 + 32))(a3, v8, v6);
    return (*(v13 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 0xD000000000000019 && 0x80000001006C6290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static Platform.macOS.getter();
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000001CLL && 0x80000001006C62B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static Platform.tvOS.getter();
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000001ALL && 0x80000001006C62D0 == a2)
  {

LABEL_18:
    static Platform.watchOS.getter();
    goto LABEL_5;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_18;
  }

  v11 = *(v13 + 56);

  return v11(a3, 1, 1, v6);
}

Swift::Int sub_100359D14()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100359D8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100359DE4@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_100359E60@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100759398, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100359EB8(uint64_t a1)
{
  v2 = sub_10035CB50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100359EF4(uint64_t a1)
{
  v2 = sub_10035CB50();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100359F30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10035C9CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100359F5C(void *a1, void *a2)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[6];
  v8 = a2[2];
  v14[0] = *a1;
  v14[1] = v3;
  v13[2] = v14;
  if (sub_10020A1BC(sub_1001F80EC, v13, v8))
  {
    if (!v7)
    {
      return 1;
    }

    v9 = a2[7];
    v10 = v9 < v5;
    if (v9 == v5 && (v11 = a2[8], v10 = v11 < v4, v11 == v4))
    {
      if (a2[9] >= v6)
      {
        return 1;
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10035A010@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  *(a3 + 16) = *(a1 + 1);
  *(a3 + 32) = v4;
  v5 = a2[3];
  *(a3 + 88) = a2[2];
  *(a3 + 104) = v5;
  v6 = a2[5];
  *(a3 + 120) = a2[4];
  *(a3 + 136) = v6;
  v7 = a2[1];
  *(a3 + 56) = *a2;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[6];
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 48) = v10;
  *(a3 + 72) = v7;

  return sub_100355378(a2, &v12);
}

uint64_t type metadata accessor for EnterpriseApp()
{
  result = qword_1007810E8;
  if (!qword_1007810E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10035A0D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  return sub_10035A148(v6, v8) & 1;
}

uint64_t sub_10035A148(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = a2[6];
    if (a1[6])
    {
      if (v7 && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4])
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10035A1F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10035A244()
{

  return _swift_deallocObject(v0, 127, 7);
}

uint64_t sub_10035A29C()
{

  if (*(v0 + 56) != 1)
  {
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10035A2FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10035A314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = *(type metadata accessor for EnterpriseApp() - 8);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_10035A518, 0, 0);
}

uint64_t sub_10035A518()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v16 = v0[5];
  v17 = v0[18];
  v8 = *(v6 + 16);
  v8(v4, v0[4], v7);
  v8(v5, v4, v7);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.httpBody.setter();
  v9 = *(v6 + 8);
  v0[22] = v9;
  v0[23] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v7);
  (*(v3 + 16))(v1, v2, v17);
  v10.value._countAndFlagsBits = sub_10051E4A4(*(v16 + 24));
  v11._countAndFlagsBits = 0x6567412D72657355;
  v11._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v10, v11);

  URLRequest.timeoutInterval.setter();
  URLRequest.cachePolicy.setter();
  URLRequest.httpShouldHandleCookies.setter();
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_10035A6E0;
  v13 = v0[20];
  v14 = v0[6];

  return sub_10051E728(v13, v14);
}

uint64_t sub_10035A6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = a3;
  v5[28] = v3;

  if (v3)
  {
    v6 = sub_10035B0B0;
  }

  else
  {
    v6 = sub_10035A7F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10035A7F8()
{
  v75 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(*(v0 + 152) + 8);
  v4(*(v0 + 160), v3);
  v4(v2, v3);
  if ([v1 statusCode] != 200)
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);
    v20 = *(v0 + 48);
    type metadata accessor for InternalError();
    sub_10035CC58(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v19, v17);

LABEL_7:
    (*(v0 + 176))(*(v0 + 32), *(v0 + 112));

    v22 = *(v0 + 8);

    return v22();
  }

  v5 = *(v0 + 224);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10035B1CC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v5)
  {

    static Logger.ddm.getter();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Enterprise manifest invalid: Decoding request failed: %{public}@", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v13 = *(v0 + 200);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 72);
    v70 = *(v0 + 48);

    (*(v15 + 8))(v14, v16);
    type metadata accessor for InternalError();
    sub_10035CC58(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v13, v11);

    goto LABEL_7;
  }

  v24 = *(v0 + 16);
  v25 = *(v24 + 16);
  v26 = _swiftEmptyArrayStorage;
  v68 = v25;
  v69 = v24;
  if (v25)
  {
    v27 = *(v0 + 56);
    v71 = *(v0 + 64);
    v74 = _swiftEmptyArrayStorage;

    sub_100526304(0, v25, 0);
    v26 = _swiftEmptyArrayStorage;
    v28 = v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v29 = *(v27 + 72);
    do
    {
      v30 = *(v0 + 64);
      sub_10035B220(v28, v30);
      v31 = *v30;
      v32 = *(v71 + 8);

      sub_10035B284(v30);
      v74 = v26;
      v34 = v26[2];
      v33 = v26[3];
      if (v34 >= v33 >> 1)
      {
        sub_100526304((v33 > 1), v34 + 1, 1);
        v26 = v74;
      }

      v26[2] = v34 + 1;
      v35 = &v26[2 * v34];
      v35[4] = v31;
      v35[5] = v32;
      v28 += v29;
      --v25;
    }

    while (v25);
  }

  v36 = *(v0 + 48);
  static Logger.ddm.getter();

  v37 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 104);
  v42 = *(v0 + 72);
  v43 = *(v0 + 80);
  if (v40)
  {
    v72 = *(v0 + 104);
    v44 = *(v0 + 48);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v74 = v47;
    *v45 = 138412802;
    *(v45 + 4) = v44;
    *v46 = v44;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v26[2];
    v48 = v44;

    *(v45 + 22) = 2080;
    *(v0 + 24) = v26;
    sub_1001F0C48(&unk_10077FB40);
    v67 = v42;
    sub_1001F766C();
    v49 = BidirectionalCollection<>.joined(separator:)();
    v51 = v50;

    v52 = sub_1002346CC(v49, v51, &v74);

    *(v45 + 24) = v52;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Enterprise manifest loaded with %ld app(s): (%s", v45, 0x20u);
    sub_1000032A8(v46, &qword_10077F920);

    sub_10000710C(v47);

    v53 = *(v43 + 8);
    v53(v72, v67);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v53 = *(v43 + 8);
    v53(v41, v42);
  }

  if (v68 != 1)
  {

    static Logger.ddm.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Enterprise manifest invalid: Expected only one app", v61, 2u);
    }

    v62 = *(v0 + 208);
    v63 = *(v0 + 216);
    v64 = *(v0 + 200);
    v65 = *(v0 + 96);
    v66 = *(v0 + 72);
    v73 = *(v0 + 48);

    v53(v65, v66);
    type metadata accessor for InternalError();
    sub_10035CC58(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v64, v62);

    goto LABEL_7;
  }

  v54 = *(v0 + 208);
  v55 = *(v0 + 216);
  v56 = *(v0 + 200);
  v57 = *(v0 + 48);
  (*(v0 + 176))(*(v0 + 32), *(v0 + 112));

  sub_100007158(v56, v54);

  v58 = *(v0 + 8);

  return v58(v69);
}

uint64_t sub_10035B0B0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 152) + 8);
  v4(*(v0 + 160), v2);
  v4(v1, v2);

  (*(v0 + 176))(*(v0 + 32), *(v0 + 112));

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_10035B1CC()
{
  result = qword_100781080;
  if (!qword_100781080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781080);
  }

  return result;
}

uint64_t sub_10035B220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035B284(uint64_t a1)
{
  v2 = type metadata accessor for EnterpriseApp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10035B2F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10035B30C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10035B354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10035B3B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10035B3D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10035B3F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10035B438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10035B4C8()
{
  sub_100355560();
  if (v0 <= 0x3F)
  {
    sub_10035B5D4(319, &qword_1007810F8, &type metadata for Bool, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10035B5D4(319, &qword_100781100, &type metadata for EnterpriseAsset, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10035B624();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10035B5D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10035B624()
{
  if (!qword_100781108)
  {
    sub_1001F76D0(&unk_100781110);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100781108);
    }
  }
}

uint64_t sub_10035B688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10035B6D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10035B730(uint64_t a1)
{
  *(a1 + 8) = sub_10035B760();
  result = sub_10035B7B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10035B760()
{
  result = qword_100781150;
  if (!qword_100781150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781150);
  }

  return result;
}

unint64_t sub_10035B7B4()
{
  result = qword_100781158;
  if (!qword_100781158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781158);
  }

  return result;
}

unint64_t sub_10035B808(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100758FB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10035B854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100781188);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10035CCA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v22 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v13 = v9;
  v22 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v15)
  {
    sub_10051BCFC(v14, v15, v20);
    v18 = v20[1];
    v19 = v20[0];
    v16 = v21;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v16 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  sub_10000710C(a1);

  *a2 = v13;
  *(a2 + 8) = v12;
  v17 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v17;
  *(a2 + 48) = v16;
  return result;
}

unint64_t sub_10035BA9C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007590A0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10035BAE8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100781198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v62 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10035CCF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v82[0]) = 0;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v75 = v10;
  LOBYTE(v76) = 1;
  sub_10035CD48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = LOBYTE(v82[0]);
  LOBYTE(v82[0]) = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v74 = v15;
  v71 = v14;
  LOBYTE(v82[0]) = 8;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if ((v17 & 1) == 0)
  {
    *&v72 = v16;
    v70 = v13;
    sub_1001F0C48(&unk_10077FB40);
    LOBYTE(v76) = 7;
    sub_10035CEB4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v94 = 0;
    if (v82[0])
    {
      v63 = v12;
      v25 = *(v82[0] + 16);
      v73 = v82[0];

      result = v73;
      v26 = v73 + 40;
      *(&v72 + 1) = -v25;
      v27 = -1;
      do
      {
        if (*(&v72 + 1) + v27 == -1)
        {
          v30 = 0;
          v12 = v63;
          v24 = 2;
          goto LABEL_22;
        }

        if (++v27 >= *(result + 16))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          return result;
        }

        v28 = v26 + 16;

        v29 = String.count.getter();

        v26 = v28;
        result = v73;
      }

      while (v29 == 64);
      v12 = v63;
LABEL_13:

      v24 = 0;
      v30 = 1;
      v31 = 0;
      v73 = 0;
      goto LABEL_23;
    }

    v13 = v70;
  }

  LOBYTE(v82[0]) = 6;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v19)
  {
    v70 = v13;
    v94 = 0;
    v20 = v18;
    v21 = v19;

    *&v72 = v20;
    v22 = String.count.getter();
    *(&v72 + 1) = v21;

    if (v22 == 64)
    {
      v23 = 1;
      v69 = 2;
      v24 = 0;
      v73 = 0;
      goto LABEL_24;
    }

    v31 = 0;
    v73 = 0;
    v24 = 0;
LABEL_20:
    v30 = 1;
LABEL_23:

    *&v72 = 0;
    v69 = v24;
    *(&v72 + 1) = v30;
    v24 = v31;
    v23 = 0;
    goto LABEL_24;
  }

  LOBYTE(v82[0]) = 5;
  *&v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v13;
  if ((v32 & 1) == 0)
  {
    sub_1001F0C48(&unk_10077FB40);
    LOBYTE(v76) = 4;
    sub_10035CEB4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v94 = 0;
    v73 = v82[0];
    if (v82[0])
    {
      v51 = *(v73 + 16);

      v52 = result + 40;
      v69 = -v51;
      v53 = -1;
      while (v69 + v53 != -1)
      {
        if (++v53 >= *(result + 16))
        {
          goto LABEL_53;
        }

        v54 = v52 + 16;

        *(&v72 + 1) = String.count.getter();

        v52 = v54;
        result = v73;
        if (*(&v72 + 1) != 32)
        {
          goto LABEL_13;
        }
      }

      v24 = 0;
      v30 = 0;
LABEL_22:
      v31 = v72;
      goto LABEL_23;
    }

    v2 = v94;
  }

  LOBYTE(v82[0]) = 3;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = v2;
  *&v72 = v33;
  *(&v72 + 1) = v34;
  if (v34)
  {

    v35 = String.count.getter();

    v24 = 0;
    v23 = 1;
    if (v35 == 32)
    {
      v69 = 0;
      v73 = 0;
      goto LABEL_24;
    }

    v31 = 0;
    v73 = 0;
    goto LABEL_20;
  }

  v69 = 0;
  *&v72 = 0;
  v24 = 0;
  v23 = 0;
  v73 = 0;
  *(&v72 + 1) = 1;
LABEL_24:
  sub_1001F0C48(&qword_1007811B0);
  LOBYTE(v76) = 9;
  sub_10035CDE4(&qword_1007811B8, &qword_1007811B0, &unk_1006A3418, sub_10035CE60);
  v36 = v94;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = v36;
  if (v36)
  {
LABEL_25:
    (*(v6 + 8))(v8, v5);
    v37 = v69;
    sub_10000710C(a1);

    sub_10035CD9C(v37, v72, *(&v72 + 1));
  }

  if (v82[0])
  {
    if (*(v82[0] + 16))
    {
      v38 = v82[0];
      (*(v6 + 8))(v8, v5);
      v39 = v38;
      goto LABEL_47;
    }
  }

  sub_1001F0C48(&unk_10077FB40);
  LOBYTE(v76) = 10;
  sub_10035CEB4();
  v40 = v94;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = v40;
  if (v40)
  {
    goto LABEL_25;
  }

  if (v82[0])
  {
    v63 = v12;
    v41 = *(v82[0] + 16);
    v42 = v82[0];
    if (v41)
    {
      v82[0] = _swiftEmptyArrayStorage;
      v68 = v41;
      sub_1005268A0(0, v41, 0);
      v43 = v82[0];
      v62[1] = v42;
      v44 = (v42 + 40);
      do
      {
        v45 = *v44;
        v65 = *(v44 - 1);
        v82[0] = v43;
        v46 = *(v43 + 16);
        v64 = *(v43 + 24);
        v67 = v46 + 1;
        v66 = v45;

        v47 = v64;
        v48 = v46;
        if (v46 >= v64 >> 1)
        {
          v64 = v46;
          sub_1005268A0((v47 > 1), v67, 1);
          v48 = v64;
          v43 = v82[0];
        }

        *(v43 + 16) = v67;
        v49 = v43 + 56 * v48;
        v50 = v66;
        *(v49 + 32) = v65;
        *(v49 + 40) = v50;
        *(v49 + 48) = 0u;
        *(v49 + 64) = 0u;
        *(v49 + 80) = 0;
        v44 += 2;
        --v68;
      }

      while (v68);
      (*(v6 + 8))(v8, v5);

      v39 = v43;
    }

    else
    {
      (*(v6 + 8))(v8, v5);

      v39 = 0;
    }

    v12 = v63;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v39 = 0;
  }

LABEL_47:
  v55 = v75;
  *&v76 = v75;
  *(&v76 + 1) = v12;
  LOBYTE(v77) = v70;
  *(&v77 + 1) = v93[0];
  DWORD1(v77) = *(v93 + 3);
  *(&v77 + 1) = v69;
  v78 = v72;
  *&v79 = v24;
  *(&v79 + 1) = v23;
  v56 = v71;
  *&v80 = v73;
  *(&v80 + 1) = v71;
  v57 = v74;
  *&v81 = v74;
  *(&v81 + 1) = v39;
  v58 = v39;
  sub_100355378(&v76, v82);
  sub_10000710C(a1);
  v82[0] = v55;
  v82[1] = v12;
  v83 = v70;
  *v84 = v93[0];
  *&v84[3] = *(v93 + 3);
  v85 = v69;
  v86 = v72;
  v87 = v24;
  v88 = v23;
  v89 = v73;
  v90 = v56;
  v91 = v57;
  v92 = v58;
  result = sub_100350510(v82);
  v59 = v79;
  a2[2] = v78;
  a2[3] = v59;
  v60 = v81;
  a2[4] = v80;
  a2[5] = v60;
  v61 = v77;
  *a2 = v76;
  a2[1] = v61;
  return result;
}

unint64_t sub_10035C5B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007591C8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10035C604@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_1007811F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10035D05C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v33[0]) = 1;
  *&v27 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v27 + 1) = v13;
  LOBYTE(v33[0]) = 2;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v33[0]) = 3;
  sub_10035D0B0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v33[0]) = 4;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v14;
  v41 = 5;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  *&v28 = v12;
  *(&v28 + 1) = v11;
  v19 = v27;
  v29 = v27;
  LOBYTE(v30) = v40;
  *(&v30 + 1) = v15;
  *&v31 = v18;
  v20 = v26;
  *(&v31 + 1) = v25;
  v32 = v26;
  sub_10035D104(&v28, v33);
  sub_10000710C(a1);
  v33[0] = v12;
  v33[1] = v11;
  v34 = __PAIR128__(*(&v27 + 1), v19);
  v35 = v40;
  v36 = v15;
  v37 = v18;
  v38 = v25;
  v39 = v20;
  result = sub_10035CF84(v33);
  v22 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v22;
  *(a2 + 64) = v32;
  v23 = v29;
  *a2 = v28;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_10035C980(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759278, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

void *sub_10035C9CC(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781160);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_10035CB50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_1001F0C48(&qword_100781170);
    sub_10035CBA4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000710C(a1);
  }

  return v7;
}

unint64_t sub_10035CB50()
{
  result = qword_100781168;
  if (!qword_100781168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781168);
  }

  return result;
}

unint64_t sub_10035CBA4()
{
  result = qword_100781178;
  if (!qword_100781178)
  {
    sub_1001F76D0(&qword_100781170);
    sub_10035CC58(&qword_100781180, type metadata accessor for EnterpriseApp);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781178);
  }

  return result;
}

uint64_t sub_10035CC58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10035CCA0()
{
  result = qword_100781190;
  if (!qword_100781190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781190);
  }

  return result;
}

unint64_t sub_10035CCF4()
{
  result = qword_1007811A0;
  if (!qword_1007811A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007811A0);
  }

  return result;
}

unint64_t sub_10035CD48()
{
  result = qword_1007811A8;
  if (!qword_1007811A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007811A8);
  }

  return result;
}

uint64_t sub_10035CD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10035CDE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10035CE60()
{
  result = qword_1007811C0;
  if (!qword_1007811C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007811C0);
  }

  return result;
}

unint64_t sub_10035CEB4()
{
  result = qword_100780CA8;
  if (!qword_100780CA8)
  {
    sub_1001F76D0(&unk_10077FB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CA8);
  }

  return result;
}

unint64_t sub_10035CF30()
{
  result = qword_1007811D0;
  if (!qword_1007811D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007811D0);
  }

  return result;
}

unint64_t sub_10035CFB4()
{
  result = qword_1007811D8;
  if (!qword_1007811D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007811D8);
  }

  return result;
}

unint64_t sub_10035D008()
{
  result = qword_1007811E8;
  if (!qword_1007811E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007811E8);
  }

  return result;
}

unint64_t sub_10035D05C()
{
  result = qword_1007811F8;
  if (!qword_1007811F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007811F8);
  }

  return result;
}

unint64_t sub_10035D0B0()
{
  result = qword_100781200;
  if (!qword_100781200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationBag.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationBag.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnterpriseAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnterpriseAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10035D430()
{
  result = qword_100781208;
  if (!qword_100781208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781208);
  }

  return result;
}

unint64_t sub_10035D488()
{
  result = qword_100781210;
  if (!qword_100781210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781210);
  }

  return result;
}

unint64_t sub_10035D4E0()
{
  result = qword_100781218;
  if (!qword_100781218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781218);
  }

  return result;
}

unint64_t sub_10035D538()
{
  result = qword_100781220;
  if (!qword_100781220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781220);
  }

  return result;
}

unint64_t sub_10035D590()
{
  result = qword_100781228;
  if (!qword_100781228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781228);
  }

  return result;
}

unint64_t sub_10035D5E8()
{
  result = qword_100781230;
  if (!qword_100781230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781230);
  }

  return result;
}

unint64_t sub_10035D640()
{
  result = qword_100781238;
  if (!qword_100781238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781238);
  }

  return result;
}

unint64_t sub_10035D698()
{
  result = qword_100781240;
  if (!qword_100781240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781240);
  }

  return result;
}

unint64_t sub_10035D6F0()
{
  result = qword_100781248;
  if (!qword_100781248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781248);
  }

  return result;
}

unint64_t sub_10035D748()
{
  result = qword_100781250;
  if (!qword_100781250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781250);
  }

  return result;
}

unint64_t sub_10035D7A0()
{
  result = qword_100781258;
  if (!qword_100781258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781258);
  }

  return result;
}

unint64_t sub_10035D7F8()
{
  result = qword_100781260;
  if (!qword_100781260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781260);
  }

  return result;
}

unint64_t sub_10035D850()
{
  result = qword_100781268;
  if (!qword_100781268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781268);
  }

  return result;
}

unint64_t sub_10035D8A8()
{
  result = qword_100781270;
  if (!qword_100781270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781270);
  }

  return result;
}

unint64_t sub_10035D900()
{
  result = qword_100781278;
  if (!qword_100781278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781278);
  }

  return result;
}

unint64_t sub_10035D958()
{
  result = qword_100781280;
  if (!qword_100781280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781280);
  }

  return result;
}

unint64_t sub_10035D9B0()
{
  result = qword_100781288;
  if (!qword_100781288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781288);
  }

  return result;
}

unint64_t sub_10035DA04()
{
  result = qword_100781290;
  if (!qword_100781290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781290);
  }

  return result;
}

unint64_t sub_10035DA58()
{
  result = qword_100781298;
  if (!qword_100781298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781298);
  }

  return result;
}

uint64_t type metadata accessor for IPA_InstallTask()
{
  result = qword_100781300;
  if (!qword_100781300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035DB34()
{
  type metadata accessor for LogKey();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppInstall();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppPackage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ManagedAppDeclarationStore();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ManagedAppDeclarationStatusStore();
          if (v4 <= 0x3F)
          {
            sub_1000033B8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10035DC18(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a2;
  v29 = a6;
  v11 = sub_1001F0C48(&unk_100780AB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for AppInstall();
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IPA_InstallTask();
  __chkstk_darwin(v17);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a4;
  v20 = a1;
  sub_1003A85C8(v20, v16);
  if (v6)
  {
    sub_10000710C(a5);

    sub_10000710C(a3);
  }

  else
  {
    v21 = a5;
    v22 = v29;
    sub_100361FB4(v16, v19 + v17[5], type metadata accessor for AppInstall);
    v23 = [v20 persistentID];
    v24 = sub_1005AFEA0(v30, v23);
    if (v24)
    {
      sub_1003A84AC(v24, v13);
      v25 = type metadata accessor for AppPackage();
      (*(*(v25 - 8) + 56))(v13, 0, 1, v25);

      sub_10000710C(v21);
      sub_100361FB4(v13, v19 + v17[6], type metadata accessor for AppPackage);
      *(v19 + v17[7]) = *(*sub_100006D8C(a3, a3[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
      *(v19 + v17[8]) = *(*sub_100006D8C(a3, a3[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
      v26 = sub_100006D8C(a3, a3[3]);
      sub_100005934(*v26 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_licenseStorage, v19 + v17[9], &qword_1007812A0);
      sub_100361DC4(v19, v22);

      sub_10000710C(a3);
      sub_100361E44(v19, type metadata accessor for IPA_InstallTask);
    }

    else
    {
      v27 = type metadata accessor for AppPackage();
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
      __break(1u);
    }
  }
}

uint64_t sub_10035DF80(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_1001F0C48(&unk_1007809E0);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for DDMDeclaration(0);
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for IPA_InstallTask();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_10035E248, 0, 0);
}

uint64_t sub_10035E248()
{
  v116 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 120);
  static Logger.install.getter();
  sub_100361DC4(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *v6;
    sub_100361E44(v6, type metadata accessor for IPA_InstallTask);
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Beginning installation phase", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920);
  }

  else
  {

    sub_100361E44(v6, type metadata accessor for IPA_InstallTask);
  }

  v10 = *(v0 + 312);
  v11 = *(v0 + 256);
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  v15 = *(v0 + 160);
  v16 = *(v0 + 120);
  v17 = *(*(v0 + 264) + 8);
  *(v0 + 320) = v17;
  v17(v10, v11);
  v18 = v16 + *(v12 + 20);
  v19 = type metadata accessor for AppInstall();
  sub_100005934(v18 + v19[14], v15, &unk_100780A00);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_1000032A8(*(v0 + 160), &unk_100780A00);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_36;
  }

  v20 = *(v0 + 184);
  (*(*(v0 + 176) + 32))(v20, *(v0 + 160), *(v0 + 168));
  v21 = sub_1005F8634(v20);
  *(v0 + 328) = v21;
  if (!v21)
  {
LABEL_14:
    v29 = *(v0 + 232);
    v30 = *(v0 + 120);
    static Logger.install.getter();
    sub_100361DC4(v30, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 232);
    v112 = v12;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = *v34;
      sub_100361E44(v34, type metadata accessor for IPA_InstallTask);
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Coordinator is missing - checking if application is installed", v35, 0xCu);
      sub_1000032A8(v36, &qword_10077F920);
    }

    else
    {

      sub_100361E44(v34, type metadata accessor for IPA_InstallTask);
    }

    v17(*(v0 + 296), *(v0 + 256));
    sub_100006190(0, &qword_100784500);
    v38 = sub_10060BC54(*(v18 + v19[10]), *(v18 + v19[10] + 8), 0, 0, 0);
    v110 = v19;
    if (v38)
    {
      if (*(v18 + 64) == 1)
      {
      }

      else
      {
        v113 = v17;
        v39 = *(v18 + 56);
        v108 = v38;
        v40 = [v38 iTunesMetadata];
        v41 = [v40 versionIdentifier];

        v42 = *(v0 + 120);
        if (v39 == v41)
        {
          v43 = *(v0 + 224);
          static Logger.install.getter();
          sub_100361DC4(v42, v43);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          v46 = os_log_type_enabled(v44, v45);
          v47 = *(v0 + 288);
          v48 = *(v0 + 256);
          v49 = *(v0 + 224);
          v51 = *(v0 + 176);
          v50 = *(v0 + 184);
          v52 = *(v0 + 168);
          if (v46)
          {
            v111 = *(v0 + 288);
            v53 = swift_slowAlloc();
            v107 = v50;
            v54 = swift_slowAlloc();
            v104 = v48;
            v55 = swift_slowAlloc();
            v115 = v55;
            *v53 = 138412546;
            v102 = v52;
            v56 = *v49;
            sub_100361E44(v49, type metadata accessor for IPA_InstallTask);
            *(v53 + 4) = v56;
            *v54 = v56;
            *(v53 + 12) = 2080;
            *(v0 + 88) = v39;
            v57 = dispatch thunk of CustomStringConvertible.description.getter();
            v59 = sub_1002346CC(v57, v58, &v115);

            *(v53 + 14) = v59;
            _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Expected application appears to be installed with version: %s, proceeding to postamble", v53, 0x16u);
            sub_1000032A8(v54, &qword_10077F920);

            sub_10000710C(v55);

            v113(v111, v104);
            (*(v51 + 8))(v107, v102);
          }

          else
          {

            sub_100361E44(v49, type metadata accessor for IPA_InstallTask);
            v113(v47, v48);
            (*(v51 + 8))(v50, v52);
          }

          **(v0 + 112) = 3;
          type metadata accessor for AppInstallTaskResult();
          swift_storeEnumTagMultiPayload();

          v79 = *(v0 + 8);
          goto LABEL_37;
        }

        v61 = *(v0 + 216);
        static Logger.install.getter();
        sub_100361DC4(v42, v61);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 280);
        v66 = *(v0 + 256);
        v67 = *(v0 + 216);
        if (v64)
        {
          v68 = swift_slowAlloc();
          v105 = v65;
          v69 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *v68 = 138412802;
          v103 = v66;
          v70 = *v67;
          sub_100361E44(v67, type metadata accessor for IPA_InstallTask);
          *(v68 + 4) = v70;
          *v69 = v70;
          *(v68 + 12) = 2080;
          *(v0 + 72) = v39;
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = sub_1002346CC(v71, v72, &v115);

          *(v68 + 14) = v73;
          *(v68 + 22) = 2080;
          *(v0 + 80) = v41;
          v74 = dispatch thunk of CustomStringConvertible.description.getter();
          v76 = sub_1002346CC(v74, v75, &v115);

          *(v68 + 24) = v76;
          _os_log_impl(&_mh_execute_header, v62, v63, "[%@] Expected application with version: %s not installed. Installed version is: %s", v68, 0x20u);
          sub_1000032A8(v69, &qword_10077F920);

          swift_arrayDestroy();

          v77 = v105;
          v78 = v103;
        }

        else
        {

          sub_100361E44(v67, type metadata accessor for IPA_InstallTask);
          v77 = v65;
          v78 = v66;
        }

        v17 = v113;
        v113(v77, v78);
      }
    }

    v81 = *(v0 + 200);
    v80 = *(v0 + 208);
    v82 = *(v0 + 120);
    static Logger.install.getter();
    sub_100361DC4(v82, v80);
    sub_100361DC4(v82, v81);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 272);
    v87 = *(v0 + 256);
    v89 = *(v0 + 200);
    v88 = *(v0 + 208);
    if (v85)
    {
      v109 = *(v0 + 256);
      v90 = swift_slowAlloc();
      v114 = v17;
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v115 = v92;
      *v90 = 138412546;
      v106 = v86;
      v93 = *v88;
      sub_100361E44(v88, type metadata accessor for IPA_InstallTask);
      *(v90 + 4) = v93;
      *v91 = v93;
      *(v90 + 12) = 2082;
      v94 = (v89 + v110[10] + *(v112 + 20));
      v95 = *v94;
      v96 = v94[1];

      sub_100361E44(v89, type metadata accessor for IPA_InstallTask);
      v97 = sub_1002346CC(v95, v96, &v115);

      *(v90 + 14) = v97;
      sub_1000032A8(v91, &qword_10077F920);

      sub_10000710C(v92);

      v114(v106, v109);
    }

    else
    {

      sub_100361E44(v89, type metadata accessor for IPA_InstallTask);
      sub_100361E44(v88, type metadata accessor for IPA_InstallTask);
      v17(v86, v87);
    }

    v99 = *(v0 + 176);
    v98 = *(v0 + 184);
    v100 = *(v0 + 168);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    (*(v99 + 16))(v101, v98, v100);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v99 + 8))(v98, v100);
LABEL_36:

    v79 = *(v0 + 8);
LABEL_37:

    return v79();
  }

  v22 = v21;
  *(v0 + 96) = &OBJC_PROTOCOL___IXCoordinatorWithInstallOptions;
  v23 = swift_dynamicCastObjCProtocolConditional();
  *(v0 + 336) = v23;
  if (!v23)
  {

    goto LABEL_14;
  }

  v24 = (v18 + v19[15]);
  *(v0 + 344) = *v24;
  v25 = v24[1];
  *(v0 + 352) = v25;
  if (v25 && (v26 = *(v18 + v19[29]), *(v0 + 456) = v26, v26 != 2))
  {
    v60 = *(*(v0 + 120) + *(*(v0 + 192) + 28));
    *(v0 + 360) = v60;

    return _swift_task_switch(sub_10035F0F8, v60, 0);
  }

  else
  {
    v27 = swift_task_alloc();
    *(v0 + 392) = v27;
    *v27 = v0;
    v27[1] = sub_10035F8C0;

    return sub_100360A44();
  }
}

uint64_t sub_10035F0F8()
{
  v1 = v0;
  v3 = v0 + 44;
  v2 = v0[44];
  v4 = v1[43];
  v5 = *(v3[1] + 112);
  v6 = swift_task_alloc();
  v1[46] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v1[47] = v7;
  *v7 = v1;
  v7[1] = sub_10035F210;
  v8 = v1[16];

  return sub_1003B0094(v8, sub_10030124C, v6, v5);
}

uint64_t sub_10035F210()
{

  if (v0)
  {

    v1 = sub_10035F598;
  }

  else
  {

    v1 = sub_10035F384;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10035F384()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  (*(*(v0 + 144) + 56))(v3, 0, 1, *(v0 + 136));
  sub_100361FB4(v3, v2, type metadata accessor for DDMDeclaration);
  if (v1)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      sub_100361E44(*(v0 + 152), type metadata accessor for DDMDeclaration);
      v5 = swift_task_alloc();
      *(v0 + 392) = v5;
      *v5 = v0;
      v5[1] = sub_10035F8C0;

      return sub_100360A44();
    }
  }

  else
  {
  }

  v7 = *(v0 + 120);
  v8 = *(v7 + *(*(v0 + 192) + 32));
  v9 = *v7;
  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *v10 = v0;
  v10[1] = sub_10035F690;
  v11 = *(v0 + 152);

  return sub_1003E4794(v11, v8, v9);
}

uint64_t sub_10035F598()
{
  v1 = v0[16];
  (*(v0[18] + 56))(v1, 1, 1, v0[17]);
  sub_1000032A8(v1, &unk_1007809E0);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_10035F8C0;

  return sub_100360A44();
}

uint64_t sub_10035F690(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    *(v6 + 440) = a2;
    *(v6 + 448) = a1;
    v7 = sub_100360548;
  }

  else
  {
    v7 = sub_10035F7E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10035F7E8()
{
  sub_100361E44(*(v0 + 152), type metadata accessor for DDMDeclaration);
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = sub_10035F8C0;

  return sub_100360A44();
}

uint64_t sub_10035F8C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_10036071C;
  }

  else
  {
    v4 = sub_10035FA00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10035FA00()
{
  v1 = *(v0 + 120);
  v2 = *(*(v0 + 192) + 24);
  v3 = v1 + *(type metadata accessor for AppPackage() + 44) + v2;
  if (((*(v3 + 95) << 48) & 0xC0000000000000) == 0x40000000000000)
  {
    v5 = *(v3 + 96);
    v4 = *(v3 + 104);
    v6 = *(v3 + 88);
    v7 = *(v3 + 72);
    *(v0 + 16) = *(v3 + 56);
    *(v0 + 32) = v7;
    *(v0 + 48) = v6 & 1;
    *(v0 + 56) = v5;
    *(v0 + 64) = v4;
    v8 = swift_task_alloc();
    *(v0 + 416) = v8;
    *(v8 + 16) = v0 + 16;
    *(v8 + 24) = v1;
    v9 = swift_task_alloc();
    *(v0 + 424) = v9;
    *v9 = v0;
    v9[1] = sub_10035FF88;

    return sub_10052FC18(v9, sub_100361E28, v8);
  }

  else
  {
    v11 = *(v0 + 240);
    static Logger.install.getter();
    sub_100361DC4(v1, v11);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 240);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = *v15;
      sub_100361E44(v15, type metadata accessor for IPA_InstallTask);
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%@] Setting install options", v16, 0xCu);
      sub_1000032A8(v17, &qword_10077F920);
    }

    else
    {

      sub_100361E44(v15, type metadata accessor for IPA_InstallTask);
    }

    v19 = *(v0 + 400);
    v20 = *(v0 + 336);
    (*(v0 + 320))(*(v0 + 304), *(v0 + 256));
    *(v0 + 104) = 0;
    v21 = [v20 setInstallOptions:v19 error:v0 + 104];
    v22 = *(v0 + 104);
    v23 = *(v0 + 400);
    v24 = *(v0 + 328);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 168);
    if (v21)
    {
      v28 = v22;

      (*(v26 + 8))(v25, v27);
      type metadata accessor for AppInstallScheduler.ParkReason(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AppInstallTaskResult();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v30 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v26 + 8))(v25, v27);
    }

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_10035FF88()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1003608AC;
  }

  else
  {
    v2 = sub_1003600E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003600E8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 120);
  static Logger.install.getter();
  sub_100361DC4(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 240);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *v6;
    sub_100361E44(v6, type metadata accessor for IPA_InstallTask);
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Setting install options", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920);
  }

  else
  {

    sub_100361E44(v6, type metadata accessor for IPA_InstallTask);
  }

  v10 = *(v0 + 400);
  v11 = *(v0 + 336);
  (*(v0 + 320))(*(v0 + 304), *(v0 + 256));
  *(v0 + 104) = 0;
  v12 = [v11 setInstallOptions:v10 error:v0 + 104];
  v13 = *(v0 + 104);
  v14 = *(v0 + 400);
  v15 = *(v0 + 328);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 168);
  if (v12)
  {
    v19 = v13;

    (*(v17 + 8))(v16, v18);
    type metadata accessor for AppInstallScheduler.ParkReason(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AppInstallTaskResult();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100360548()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[41];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[19];
  sub_100270870();
  swift_allocError();
  *v8 = v1;
  v8[1] = v2;

  sub_100361E44(v7, type metadata accessor for DDMDeclaration);
  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10036071C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003608AC()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100360A44()
{
  v1[12] = v0;
  v1[13] = type metadata accessor for IPA_InstallTask();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100360B78, 0, 0);
}

uint64_t sub_100360B78()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = [objc_allocWithZone(MIInstallOptions) init];
  *(v0 + 160) = v3;
  [v3 setInstallTargetType:1];
  v4 = v1 + *(v2 + 20);
  v5 = type metadata accessor for AppInstall();
  v6 = v4 + v5[39];
  v7 = *(v6 + 8);
  v8 = *(v0 + 96);
  if (v7 >> 60 == 15)
  {
    v9 = *(v0 + 112);
    static Logger.install.getter();
    sub_100361DC4(v8, v9);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v16 = *(v0 + 112);
    if (v12)
    {
      v43 = *(v0 + 144);
      v17 = swift_slowAlloc();
      v45 = v3;
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v42 = v15;
      v19 = v4;
      v20 = *v16;
      sub_100361E44(v16, type metadata accessor for IPA_InstallTask);
      *(v17 + 4) = v20;
      *v18 = v20;
      v4 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] No requestor audit token data available", v17, 0xCu);
      sub_1000032A8(v18, &qword_10077F920);
      v3 = v45;

      (*(v14 + 8))(v43, v42);
    }

    else
    {

      sub_100361E44(v16, type metadata accessor for IPA_InstallTask);
      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v21 = *v6;
    v22 = *(v0 + 120);
    sub_10020ABFC(*v6, *(v6 + 8));
    static Logger.install.getter();
    sub_100361DC4(v8, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 120);
    if (v25)
    {
      v46 = v3;
      v27 = swift_slowAlloc();
      v44 = v4;
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = *v26;
      sub_100361E44(v26, type metadata accessor for IPA_InstallTask);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Setting requestor audit token data", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
      v4 = v44;

      v3 = v46;
    }

    else
    {

      sub_100361E44(v26, type metadata accessor for IPA_InstallTask);
    }

    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)isa getBytes:v0 + 200 length:32];

    [v3 setInstallationRequestorAuditToken:v0 + 200];
    sub_1001CEE68(v21, v7);
  }

  v31 = *(v4 + v5[37]);
  if (v31 == 1)
  {
    [v3 setSystemAppInstall:1];
  }

  v32 = *(v4 + v5[38]);
  *(v0 + 168) = v32;
  if (v32)
  {
    v33 = (v4 + v5[32]);
    v35 = *v33;
    v34 = v33[1];
    v36 = v32;
    *(v0 + 176) = [objc_opt_self() ams_sharedAccountStore];
    v37 = swift_task_alloc();
    *(v0 + 184) = v37;
    *v37 = v0;
    v37[1] = sub_1003611A0;

    return sub_100621B5C(v35, v34);
  }

  else if (((v31 - 2) & 0xFD) != 0)
  {

    v39 = *(v0 + 8);
    v40 = *(v0 + 160);

    return v39(v40);
  }

  else
  {
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1003611A0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 176);
  if (v1)
  {

    a1 = 0;
  }

  *(v5 + 192) = a1;

  return _swift_task_switch(sub_100361308, 0, 0);
}

uint64_t sub_100361308()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[12];
  [v3 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006190(0, &qword_1007813E0);
  swift_dynamicCast();
  v5 = v0[10];
  sub_100361A38(v5, v4, v1, v2);

  [v5 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v6 = v0[11];
  [v2 setITunesMetadata:v6];

  v7 = v0[1];
  v8 = v0[20];

  return v7(v8);
}

void sub_1003614BC(void **a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v42 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for URL();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + *(type metadata accessor for IPA_InstallTask() + 20);
  v11 = (v10 + *(type metadata accessor for AppInstall() + 40));
  v12 = *v11;
  v13 = v11[1];
  v14 = *a1;
  v49 = sub_1001F0C48(&qword_1007813C0);
  v50 = sub_100361EA4();
  LOWORD(v47) = 1;
  v38 = v12;
  *(&v47 + 1) = v12;
  v48 = v13;
  sub_1001F0C48(&qword_1007813D0);
  inited = swift_initStackObject();
  v41 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_100236238(&v47, inited + 32);
  sub_1001F0C48(&qword_1007813D8);
  v16 = swift_initStackObject();
  *(v16 + 16) = v41;
  *(v16 + 32) = inited;
  v39 = v13;

  v17 = sub_1005AEA84(v16);
  swift_setDeallocating();
  sub_1000032A8(v16 + 32, &qword_10077FA00);
  *&v41 = v14;
  v18 = sub_100513920(0, 0, v17, sub_1005138AC, 0, v14);

  if (v18)
  {
    sub_100512350(v18);
  }

  type metadata accessor for LicenseStorageDatabaseTransaction(0);
  v19 = v45;
  v37 = *v45;
  *&v47 = v37;
  *&v47 = dispatch thunk of CustomStringConvertible.description.getter();
  *(&v47 + 1) = v20;
  v21 = v42;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v42);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v7, v21);

  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  URL.path(percentEncoded:)(1);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 fileExistsAtPath:v24];

  if (v25)
  {
    v26 = [v22 defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    *&v47 = 0;
    v30 = [v26 removeItemAtURL:v28 error:&v47];

    if (!v30)
    {
      v36 = v47;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_11;
    }

    v31 = v47;
    v19 = v45;
  }

  v32 = v40;
  Data.write(to:options:)();
  if (v32)
  {
LABEL_11:
    (*(v43 + 8))(v9, v44);
    return;
  }

  (*(v43 + 8))(v9, v44);
  v33 = v19[5];
  v34 = v19[6];
  v46[0] = 0;
  v46[1] = v33;
  v46[2] = v34;
  v46[3] = v38;
  v46[4] = v39;
  v46[5] = v37;

  v35 = v41;
}

void sub_100361A38(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for IPA_InstallTask();
  v9 = a2 + *(v8 + 20);
  if (*(v9 + *(type metadata accessor for AppInstall() + 60) + 8))
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [a1 setManagementDeclarationIdentifier:v10];

  v11 = a2 + *(v8 + 24);
  v12 = type metadata accessor for AppPackage();
  if (*(v11 + *(v12 + 80) + 8))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [a1 setVariantID:v13];

  if (a3)
  {
    v14 = a3;
    v15 = [v14 username];
    [a1 setAppleID:v15];

    v16 = [v14 ams_DSID];
    [a1 setDSPersonID:v16];

    v17 = [v14 ams_altDSID];
    [a1 setAltDSID:v17];
  }

  v18 = (v11 + *(v12 + 44));
  v19 = v18[1];
  v32 = *v18;
  v33 = v19;
  v20 = v18[3];
  v34 = v18[2];
  v35 = v20;
  v21 = v18[5];
  v36 = v18[4];
  v37 = v21;
  v38 = v18[6];
  v22 = v33;
  v23 = *(&v36 + 1);
  if (*(&v21 + 1) >> 62)
  {
    if (*(&v21 + 1) >> 62 == 1)
    {
      sub_10020ABFC(v33, *(&v33 + 1));

      sub_10020ABFC(*(&v36 + 1), v37);

      sub_100007158(*(&v36 + 1), v37);

      isa = Data._bridgeToObjectiveC()().super.isa;
      [a4 setSinfData:isa];

      [a4 setSinfDataType:1];
      sub_100007158(v33, *(&v33 + 1));
    }
  }

  else if (*(&v36 + 1) >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v25 = a4;
    v26 = *(&v32 + 1);
    v29 = v34;
    v30 = v32;
    v27 = v36;
    sub_100361F08(&v32, v31);
    sub_1001DFECC(v27, v23);
    v28 = Data._bridgeToObjectiveC()().super.isa;
    sub_1001CEE68(v27, v23);
    [v25 setSinfData:v28];

    sub_10020ABFC(v27, v23);
    sub_100361F64(v30, v26, v22, *(&v22 + 1), v29);
    sub_10061B3A0(v27, v23, 1);
    sub_1001CEE68(v27, v23);
    sub_1001CEE68(v27, v23);
  }
}

uint64_t sub_100361DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPA_InstallTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100361E44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100361EA4()
{
  result = qword_1007813C8;
  if (!qword_1007813C8)
  {
    sub_1001F76D0(&qword_1007813C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007813C8);
  }

  return result;
}

uint64_t sub_100361F64(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_100007158(result, a2);
  }

  return result;
}

uint64_t sub_100361FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_10036201C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100362038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100362080(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1003620E0()
{
  Hasher._combine(_:)(*v0 & 1);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 16) & 1);
  Hasher._combine(_:)(*(v0 + 17) & 1);
  String.hash(into:)();
  if (*(v0 + 48))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 56) & 1);
}

Swift::Int sub_100362180()
{
  Hasher.init(_seed:)();
  sub_1003620E0();
  return Hasher._finalize()();
}

Swift::Int sub_1003621C4()
{
  Hasher.init(_seed:)();
  sub_1003620E0();
  return Hasher._finalize()();
}

uint64_t sub_100362200(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_100364AEC(v5, v7) & 1;
}

unint64_t sub_100362260()
{
  result = qword_1007813E8;
  if (!qword_1007813E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007813E8);
  }

  return result;
}

uint64_t sub_1003622B4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = sub_100009530(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100009530((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v6;
  v7 = &v3[16 * v5];
  *(v7 + 4) = v2;
  *(v7 + 5) = v1;
  v8 = *(v0 + 48);
  if (v8)
  {
    v9 = *(v0 + 40);
    v10 = *(v3 + 3);

    if ((v5 + 2) > (v10 >> 1))
    {
      v3 = sub_100009530((v10 > 1), v5 + 2, 1, v3);
    }

    *(v3 + 2) = v5 + 2;
    v11 = &v3[16 * v6];
    *(v11 + 4) = v9;
    *(v11 + 5) = v8;
  }

  if (*v0)
  {
    v12 = *(v0 + 8);
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *(v3 + 2);
    v13 = *(v3 + 3);
    if (v14 >= v13 >> 1)
    {
      v3 = sub_100009530((v13 > 1), v14 + 1, 1, v3);
    }

    *(v3 + 2) = v14 + 1;
    v15 = &v3[16 * v14];
    *(v15 + 4) = 0x7265776F70;
    *(v15 + 5) = 0xE500000000000000;
    v12 = *(v0 + 8);
    if (v12)
    {
LABEL_9:
      if ((v12 & 2) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  if (v17 >= v16 >> 1)
  {
    v3 = sub_100009530((v16 > 1), v17 + 1, 1, v3);
  }

  *(v3 + 2) = v17 + 1;
  v18 = &v3[16 * v17];
  *(v18 + 4) = 0x69662D6977;
  *(v18 + 5) = 0xE500000000000000;
  if ((v12 & 2) != 0)
  {
LABEL_10:
    if ((v12 & 4) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_18:
  v20 = *(v3 + 2);
  v19 = *(v3 + 3);
  if (v20 >= v19 >> 1)
  {
    v3 = sub_100009530((v19 > 1), v20 + 1, 1, v3);
  }

  *(v3 + 2) = v20 + 1;
  v21 = &v3[16 * v20];
  *(v21 + 4) = 0x7461642D68676968;
  *(v21 + 5) = 0xE900000000000061;
  if ((v12 & 4) == 0)
  {
LABEL_21:
    v23 = *(v3 + 2);
    v22 = *(v3 + 3);
    if (v23 >= v22 >> 1)
    {
      v3 = sub_100009530((v22 > 1), v23 + 1, 1, v3);
    }

    *(v3 + 2) = v23 + 1;
    v24 = &v3[16 * v23];
    *(v24 + 4) = 0x736E657078656E69;
    *(v24 + 5) = 0xEB00000000657669;
  }

LABEL_24:
  sub_1001F0C48(&unk_10077FB40);
  sub_1001F766C();
  v25 = BidirectionalCollection<>.joined(separator:)();

  return v25;
}

char *sub_100362568(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_1007813F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100362688(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100362838(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_1007814A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003629D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100362AE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781548);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100362C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_1007814B0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100362DC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F0C48(&qword_100781440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_100781448);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100362F5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F0C48(&qword_10077E988);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_100784360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003631D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781588);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100363388(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1001F0C48(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1003634A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003635C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&unk_100784380);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003636FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003637F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003638F8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1001F0C48(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_100363A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100363B80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1001F0C48(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_100363CF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1001F0C48(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_100363E28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100363F78(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100781578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003640F8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F0C48(&qword_1007815D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_1007815D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003642B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_100787080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003643F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_1001F0C48(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_100364564(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001F0C48(a5);
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

size_t sub_100364788(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001F0C48(a5);
  v14 = *(sub_1001F0C48(a7) - 8);
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
  v19 = *(sub_1001F0C48(a7) - 8);
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

void *sub_100364970(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001F0C48(&qword_100784460);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1003649F4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001F0C48(&qword_100781488);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_100364A78(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001F0C48(&qword_100781508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100364AEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || ((a1[16] ^ a2[16]) & 1) != 0 || ((a1[17] ^ a2[17]))
  {
    return 0;
  }

  if (*(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4))
  {
    v3 = a1;
    v4 = a2;
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v7 = *(a1 + 6);
  v8 = *(a2 + 6);
  if (v7)
  {
    if (v8)
    {
      if (*(a1 + 5) == *(a2 + 5) && v7 == v8)
      {
        goto LABEL_14;
      }

      v9 = a1;
      v10 = a2;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v10;
      v12 = v11;
      a1 = v9;
      if (v12)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  if (v8)
  {
    goto LABEL_16;
  }

LABEL_14:
  v13 = a1[56] ^ a2[56] ^ 1;
  return v13 & 1;
}

uint64_t sub_100364C2C()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (!v1)
  {
    return 0xD000000000000022;
  }

  return result;
}

uint64_t sub_100364C94()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (!v1)
  {
    return 0xD000000000000016;
  }

  return result;
}

uint64_t sub_100364CF4()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100364D34()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (v1)
  {
    return 100;
  }

  return result;
}

uint64_t sub_100364D78()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (!v1)
  {
    return 0xD000000000000016;
  }

  return result;
}

unint64_t sub_100364E74()
{
  v0 = dispatch thunk of Bag.subscript.getter();
  if (v0)
  {
    v1 = sub_100364F10(v0);

    return v1;
  }

  else
  {

    return sub_100528D4C(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100364F10(uint64_t a1)
{
  v74 = type metadata accessor for AnyValue();
  v2 = *(v74 - 8);
  __chkstk_darwin(v74);
  v62 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1001F0C48(&qword_100781610);
  v4 = __chkstk_darwin(v70);
  v58[0] = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v71 = v58 - v7;
  __chkstk_darwin(v6);
  v69 = v58 - v8;
  v59 = &_swiftEmptyDictionarySingleton;
  v75 = &_swiftEmptyDictionarySingleton;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v72 = a1;
  v73 = v2 + 16;
  v63 = (v2 + 8);

  v15 = 0;
  v67 = v13;
  for (i = v9; ; v9 = i)
  {
    v16 = v15;
    if (!v12)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v15 = v16;
LABEL_10:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v15 << 6);
      v19 = (*(v72 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v2 + 72);
      v23 = v2;
      v24 = *(v2 + 16);
      v25 = v69;
      v24(&v69[*(v70 + 48)], *(v72 + 56) + v22 * v18, v74);
      *v25 = v21;
      v25[1] = v20;
      v26 = v71;
      sub_100365628(v25, v71);

      v27 = AnyValue.array.getter();
      if (v27)
      {
        break;
      }

      result = sub_100365698(v26);
      v16 = v15;
      v2 = v23;
      v13 = v67;
      v9 = i;
      if (!v12)
      {
LABEL_7:
        while (1)
        {
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v15 >= v13)
          {

            return v59;
          }

          v12 = *(v9 + 8 * v15);
          ++v16;
          if (v12)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    v61 = v22;
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v66 = _swiftEmptyArrayStorage;
      v60 = v23;
      do
      {
        v31 = v62;
        v32 = v74;
        v24(v62, v29, v74);
        v65 = AnyValue.string.getter();
        v34 = v33;
        (*v63)(v31, v32);
        v64 = v34;
        if (v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_100009530(0, *(v66 + 2) + 1, 1, v66);
          }

          v2 = v60;
          v36 = *(v66 + 2);
          v35 = *(v66 + 3);
          v30 = v61;
          if (v36 >= v35 >> 1)
          {
            v41 = sub_100009530((v35 > 1), v36 + 1, 1, v66);
            v30 = v61;
            v66 = v41;
          }

          v38 = v65;
          v37 = v66;
          *(v66 + 2) = v36 + 1;
          v39 = &v37[16 * v36];
          v40 = v64;
          *(v39 + 4) = v38;
          *(v39 + 5) = v40;
        }

        else
        {
          v2 = v60;
          v30 = v61;
        }

        v29 += v30;
        --v28;
      }

      while (v28);
    }

    else
    {
      v66 = _swiftEmptyArrayStorage;
      v2 = v23;
    }

    sub_100365628(v71, v58[0]);
    v42 = v59[2];
    if (v59[3] <= v42)
    {
      sub_1005BA8E4(v42 + 1, 1);
    }

    v43 = v75;
    v44 = *v58[0];
    v45 = *(v58[0] + 8);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v46 = (v43 + 8);
    v59 = v43;
    v47 = -1 << *(v43 + 32);
    v48 = result & ~v47;
    v49 = v48 >> 6;
    if (((-1 << v48) & ~v43[(v48 >> 6) + 8]) == 0)
    {
      break;
    }

    v50 = __clz(__rbit64((-1 << v48) & ~v43[(v48 >> 6) + 8])) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    v55 = *(v70 + 48);
    *&v46[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
    v56 = v59;
    v57 = (v59[6] + 16 * v50);
    *v57 = v44;
    v57[1] = v45;
    *(v56[7] + 8 * v50) = v66;
    ++v56[2];
    result = (*v63)(v58[0] + v55, v74);
    v13 = v67;
  }

  v51 = 0;
  v52 = (63 - v47) >> 6;
  while (++v49 != v52 || (v51 & 1) == 0)
  {
    v53 = v49 == v52;
    if (v49 == v52)
    {
      v49 = 0;
    }

    v51 |= v53;
    v54 = *&v46[8 * v49];
    if (v54 != -1)
    {
      v50 = __clz(__rbit64(~v54)) + (v49 << 6);
      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1003654A8()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (!v1)
  {
    return 0xD000000000000016;
  }

  return result;
}

uint64_t sub_100365508()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (!v1)
  {
    return 0xD000000000000016;
  }

  return result;
}

uint64_t sub_100365568()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (!v1)
  {
    return 0xD000000000000016;
  }

  return result;
}

uint64_t sub_1003655C8()
{
  result = dispatch thunk of Bag.subscript.getter();
  if (!v1)
  {
    return 0xD000000000000016;
  }

  return result;
}

uint64_t sub_100365628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100781610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100365698(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100781610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100365700(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v216 = a6;
  v193 = a5;
  v187 = a4;
  v214 = a3;
  v8 = type metadata accessor for AppInstallRequestType();
  v212 = *(v8 - 8);
  v213 = v8;
  v9 = __chkstk_darwin(v8);
  v207 = v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v211 = v178 - v11;
  v12 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v12 - 8);
  v189 = v178 - v13;
  v191 = type metadata accessor for AppInstallationEvent();
  v190 = *(v191 - 8);
  v14 = __chkstk_darwin(v191);
  v186 = v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v15;
  __chkstk_darwin(v14);
  v188 = v178 - v16;
  v197 = type metadata accessor for AppInstallationEligibility();
  v208 = *(v197 - 8);
  v17 = __chkstk_darwin(v197);
  v194 = v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v198 = v178 - v19;
  v196 = type metadata accessor for Date();
  v195 = *(v196 - 8);
  v20 = __chkstk_darwin(v196);
  v192 = v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v199 = v178 - v22;
  v23 = sub_1001F0C48(&qword_1007816C8);
  v205 = *(v23 - 8);
  v206 = v23;
  __chkstk_darwin(v23);
  v204 = v178 - v24;
  v209 = type metadata accessor for Locale();
  v201 = *(v209 - 8);
  __chkstk_darwin(v209);
  v200 = v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001F0C48(&qword_1007816D0);
  v202 = *(v26 - 8);
  v203 = v26;
  __chkstk_darwin(v26);
  v210 = v178 - v27;
  v28 = sub_1001F0C48(&qword_1007816D8);
  __chkstk_darwin(v28 - 8);
  v30 = v178 - v29;
  v31 = type metadata accessor for AppInstallType();
  v215 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v34 = v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = v178 - v35;
  v37 = sub_1001F0C48(&qword_1007816E0);
  v38 = __chkstk_darwin(v37 - 8);
  v40 = v178 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = v178 - v41;
  v43 = objc_allocWithZone(LSApplicationRecord);

  v44 = sub_10049E57C(a1, a2, 0);
  v180 = v30;
  v179 = v34;
  v178[1] = a1;
  v178[2] = a2;
  v181 = v36;
  v182 = v31;
  v183 = v42;
  v45 = v44;
  v46 = [v44 isPlaceholder];
  v184 = v45;
  if (v46)
  {
    if (qword_10077E508 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1002710CC(v47, qword_100781618);
    v48 = v216;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%@] Skipping app install event due to app not being installed", v51, 0xCu);
      sub_1000032A8(v52, &qword_10077F920);
    }

    return 0;
  }

  v54 = v183;
  v55 = v214;
  sub_1003671F8(v214, v183);
  v56 = v215;
  v57 = v182;
  (v215[7])(v54, 0, 1, v182);
  sub_1003679C8(v54, v40);
  if ((*(v56 + 48))(v40, 1, v57) == 1)
  {
    sub_1000032A8(v40, &qword_1007816E0);
    if (qword_10077E508 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1002710CC(v58, qword_100781618);
    v59 = v211;
    v60 = v212;
    v61 = *(v212 + 16);
    v62 = v213;
    v61(v211, v55, v213);
    v63 = v216;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v215 = v67;
      v216 = swift_slowAlloc();
      v217 = v216;
      *v66 = 138412546;
      *(v66 + 4) = v63;
      *v67 = v63;
      *(v66 + 12) = 2082;
      v61(v207, v59, v62);
      v68 = v63;
      v69 = String.init<A>(describing:)();
      v71 = v70;
      (*(v60 + 8))(v59, v62);
      v72 = sub_1002346CC(v69, v71, &v217);

      *(v66 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%@] Skipping unsupported installType: %{public}s)", v66, 0x16u);
      sub_1000032A8(v215, &qword_10077F920);

      sub_10000710C(v216);
    }

    else
    {

      (*(v60 + 8))(v59, v62);
    }

    goto LABEL_39;
  }

  v73 = v181;
  (*(v56 + 32))(v181, v40, v57);
  v74 = sub_100367A38();
  v75 = v74;
  if (!v74)
  {
    v79 = 0;
    v78 = 1;
LABEL_20:
    if (qword_10077E508 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_1002710CC(v92, qword_100781618);
    v93 = v216;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = v75;
      v99 = swift_slowAlloc();
      v219 = v99;
      *v96 = 138412546;
      *(v96 + 4) = v93;
      *v97 = v93;
      *(v96 + 12) = 2080;
      v217 = v79;
      v218 = v78;
      v100 = v93;
      sub_1001F0C48(&qword_1007816E8);
      v101 = String.init<A>(describing:)();
      v103 = v73;
      v104 = sub_1002346CC(v101, v102, &v219);

      *(v96 + 14) = v104;
      _os_log_impl(&_mh_execute_header, v94, v95, "[%@] Skipping because we could not determine the storefront for accountID: %s", v96, 0x16u);
      sub_1000032A8(v97, &qword_10077F920);

      sub_10000710C(v99);

      (v215[1])(v103, v182);
    }

    else
    {

      (v215[1])(v73, v182);
    }

    goto LABEL_39;
  }

  v76 = [v74 ams_DSID];
  v77 = v76;
  v78 = v76 == 0;
  if (v76)
  {
    v79 = [v76 longLongValue];
  }

  else
  {
    v79 = 0;
  }

  v80 = v209;
  v81 = v210;
  v82 = [v75 ams_storefront];
  if (!v82)
  {
    goto LABEL_20;
  }

  v214 = v75;
  v211 = v79;
  v83 = v82;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = v200;
  Locale.init(identifier:)();
  static RegexComponent<>.localizedInteger(locale:)();
  (*(v201 + 8))(v84, v80);
  String.subscript.getter();
  v212 = v86;
  v213 = v85;

  sub_100367C44();
  v87 = v204;
  v88 = v81;
  v89 = v203;
  dispatch thunk of RegexComponent.regex.getter();
  v90 = v180;
  v91 = v206;
  Regex.firstMatch(in:)();
  v207 = v77;

  (*(v205 + 8))(v87, v91);
  (*(v202 + 8))(v88, v89);
  v105 = v208;
  v106 = v90;
  v107 = sub_1001F0C48(&qword_1007816F8);
  v108 = *(v107 - 8);
  v109 = (*(v108 + 48))(v90, 1, v107);
  v110 = v181;
  v111 = v214;
  if (v109 == 1)
  {
    sub_1000032A8(v90, &qword_1007816D8);
    if (qword_10077E508 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    sub_1002710CC(v112, qword_100781618);
    v113 = v216;
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v116 = 138412290;
      *(v116 + 4) = v113;
      *v117 = v113;
      v118 = v113;
      _os_log_impl(&_mh_execute_header, v114, v115, "[%@] Skipping because we could not determine the storefront as a number", v116, 0xCu);
      sub_1000032A8(v117, &qword_10077F920);
    }

LABEL_38:
    (*(v56 + 8))(v110, v182);
LABEL_39:
    sub_1000032A8(v183, &qword_1007816E0);
    return 0;
  }

  v119 = v105;
  Regex.Match.output.getter();
  v120 = v217;
  (*(v108 + 8))(v106, v107);
  v121 = v184;
  v122 = [v184 iTunesMetadata];
  v123 = [v122 storeItemIdentifier];

  if (!v123)
  {
    if (qword_10077E508 == -1)
    {
LABEL_35:
      v129 = type metadata accessor for Logger();
      sub_1002710CC(v129, qword_100781618);
      v130 = v216;
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412290;
        *(v133 + 4) = v130;
        *v134 = v130;
        v135 = v130;
        _os_log_impl(&_mh_execute_header, v131, v132, "[%@] Skipping because we could not determine the appleItemID", v133, 0xCu);
        sub_1000032A8(v134, &qword_10077F920);
      }

      goto LABEL_38;
    }

LABEL_74:
    swift_once();
    goto LABEL_35;
  }

  v124 = [v121 iTunesMetadata];
  v125 = [v124 storeItemIdentifier];

  v126 = [v121 iTunesMetadata];
  v127 = [v126 sourceApp];

  v210 = v120;
  if (v127)
  {
    v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v206 = v128;
  }

  else
  {
    v206 = 0x80000001006C41E0;
    v209 = 0xD000000000000021;
  }

  v137 = [v184 iTunesMetadata];
  v138 = [v137 distributorInfo];

  v139 = [v138 distributorID];
  if (v139)
  {
    v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v142 = v141;
  }

  else
  {
    v140 = 0;
    v142 = 0;
  }

  v143 = [v184 bundleIdentifier];
  if (v143)
  {
    v144 = v143;
    v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v147 = v146;

    if (v142)
    {
      if (v147)
      {
        if (v140 == v145 && v142 == v147)
        {
        }

        else
        {
          v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v148 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_56;
      }

LABEL_54:

      goto LABEL_58;
    }

    if (v147)
    {
      goto LABEL_54;
    }
  }

  else if (v142)
  {
    goto LABEL_54;
  }

LABEL_56:
  v149 = [v184 iTunesMetadata];
  v150 = [v149 distributorInfo];

  v151 = [v150 domain];
  if (v151)
  {
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_59;
  }

LABEL_58:
  v56 = 0;
LABEL_59:
  v152 = v197;
  v212 = 0x6E776F6E6B6E55;
  v153 = v184;
  v154 = [v184 isBeta];
  v155 = [v153 iTunesMetadata];
  v156 = v155;
  v157 = &selRef_betaVersionIdentifier;
  LODWORD(v205) = v154;
  if (!v154)
  {
    v157 = &selRef_versionIdentifier;
  }

  v213 = [v155 *v157];

  static Date.now.getter();
  v158 = [objc_opt_self() productVersion];
  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v203 = v160;
  v204 = v159;

  v161 = MobileGestalt_get_current_device();
  if (!v161)
  {
    v110 = v125;
    v202 = 0xE700000000000000;
    goto LABEL_69;
  }

  v162 = v161;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  v110 = v125;
  if (deviceClassNumber == 3)
  {
    v202 = 0xE400000000000000;
    v164 = 1684099177;
    goto LABEL_67;
  }

  if (deviceClassNumber == 1)
  {
    v202 = 0xE600000000000000;
    v164 = 0x656E6F685069;
LABEL_67:
    v212 = v164;
    goto LABEL_69;
  }

  v202 = 0xE700000000000000;
LABEL_69:
  v217 = v210;
  dispatch thunk of CustomStringConvertible.description.getter();
  v165 = v198;
  AppInstallationEligibility.init(accountID:storefront:eligible:)();
  (*(v119 + 16))(v194, v165, v152);
  if (v213 < 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  (*(v195 + 16))(v192, v199, v196);
  v166 = v215;
  v56 = v179;
  (v215[2])(v179, v181, v182);
  v167 = v191;
  if ((v110 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v168 = v188;
  AppInstallationEvent.init(bundleID:eligibility:externalVersionID:installDate:installType:isBeta:itemID:osVersion:platform:source:token:webDomain:)();
  v169 = type metadata accessor for TaskPriority();
  v170 = v189;
  (*(*(v169 - 8) + 56))(v189, 1, 1, v169);
  v171 = v190;
  v172 = v186;
  (*(v190 + 16))(v186, v168, v167);
  v173 = v167;
  v174 = (*(v171 + 80) + 40) & ~*(v171 + 80);
  v175 = swift_allocObject();
  *(v175 + 2) = 0;
  *(v175 + 3) = 0;
  v176 = v216;
  *(v175 + 4) = v216;
  (*(v171 + 32))(&v175[v174], v172, v173);
  v177 = v176;
  sub_100494DB4(0, 0, v170, &unk_1006A4040, v175);

  (*(v171 + 8))(v168, v173);
  (*(v208 + 8))(v198, v197);
  (*(v195 + 8))(v199, v196);
  (*(v166 + 8))(v181, v182);
  sub_1000032A8(v183, &qword_1007816E0);
  return 1;
}

uint64_t sub_1003671F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppInstallRequestType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
    v9 = &enum case for AppInstallType.autoDownload(_:);
LABEL_19:
    v10 = *v9;
    v11 = type metadata accessor for AppInstallType();
    return (*(*(v11 - 8) + 104))(a2, v10, v11);
  }

  if (v8 == enum case for AppInstallRequestType.install(_:))
  {
    v9 = &enum case for AppInstallType.buy(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.automaticUpdate(_:))
  {
    v9 = &enum case for AppInstallType.updateAutomatic(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.update(_:))
  {
    v9 = &enum case for AppInstallType.storeUpdate(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.promotion(_:))
  {
    v9 = &enum case for AppInstallType.promotion(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.restore(_:))
  {
    v9 = &enum case for AppInstallType.restore(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.deviceVPP(_:))
  {
    v9 = &enum case for AppInstallType.deviceManagedInstall(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.deviceVPPUpdate(_:))
  {
    goto LABEL_16;
  }

  if (v8 == enum case for AppInstallRequestType.userVPP(_:))
  {
    v9 = &enum case for AppInstallType.userManagedInstall(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
LABEL_16:
    v9 = &enum case for AppInstallType.deviceManagedUpdate(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.upp(_:))
  {
    v9 = &enum case for AppInstallType.upp(_:);
    goto LABEL_19;
  }

  if (v8 == enum case for AppInstallRequestType.restoreUpdate(_:))
  {
    v9 = &enum case for AppInstallType.restoreUpdate(_:);
    goto LABEL_19;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003674E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100367504, 0, 0);
}

uint64_t sub_100367504()
{
  if (qword_10077E508 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[4] = sub_1002710CC(v2, qword_100781618);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Sending app install event", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920);
  }

  type metadata accessor for AppInstallationMetricsClient();
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1003676D0;
  v11 = v0[3];

  return static AppInstallationMetricsClient.addInstall(_:)(v11);
}

uint64_t sub_1003676D0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100367800, 0, 0);
  }
}

uint64_t sub_100367800()
{
  v1 = *(v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Sent app install event", v5, 0xCu);
    sub_1000032A8(v6, &qword_10077F920);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100367960()
{
  v0 = type metadata accessor for Logger();
  sub_100367DEC(v0, qword_100781618);
  sub_1002710CC(v0, qword_100781618);
  static Logger.madSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003679C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_1007816E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100367A38()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 accounts];

  if (v1)
  {
    sub_100367DA0();
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  return 0;
}

unint64_t sub_100367C44()
{
  result = qword_1007816F0;
  if (!qword_1007816F0)
  {
    sub_1001F76D0(&qword_1007816D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007816F0);
  }

  return result;
}

uint64_t sub_100367CA8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppInstallationEvent() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_1003674E4(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100367DA0()
{
  result = qword_100781700;
  if (!qword_100781700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100781700);
  }

  return result;
}

uint64_t *sub_100367DEC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100367E50()
{
  v1 = *v0;
  switch(*(v0 + 64))
  {
    case 1:
      return 0x1000000000000094;
    case 2:
      return 0x1000000000000075;
    case 3:
    case 4:
      return 0x1000000000000073;
    case 5:
      return 0x100000000000006BLL;
    case 6:
      return 0x100000000000001ELL;
    case 7:
      return 0x100000000000003ELL;
    case 8:
      return 0x100000000000003ALL;
    case 9:
      return 0x100000000000001DLL;
    case 0xA:
      return 0x1000000000000039;
    case 0xB:
      return 0x100000000000002ELL;
    case 0xC:
      return 0x10000000000000C8;
    case 0xD:
    case 0xE:
      return 0x1000000000000027;
    case 0xF:
      return 0x10000000000000BBLL;
    case 0x10:
      return 0xD000000000000041;
    case 0x11:
      v3 = 42;
      return v3 | 0xD000000000000011;
    case 0x12:
      v3 = 10;
      return v3 | 0xD000000000000011;
    case 0x13:
      return 0xD00000000000001CLL;
    case 0x14:
    case 0x18:
    case 0x1D:
      return 0x1000000000000061;
    case 0x15:
      return 0x100000000000001BLL;
    case 0x16:
      return 0xD000000000000019;
    case 0x17:
      v3 = 38;
      return v3 | 0xD000000000000011;
    case 0x19:
      return 0x1000000000000070;
    case 0x1A:
      return 0x10000000000000AELL;
    case 0x1B:
      return 0x1000000000000053;
    case 0x1C:
      return 0x10000000000000A6;
    case 0x1E:
      return 0xD00000000000001ALL;
    case 0x1F:
      return 0x100000000000008ALL;
    case 0x20:
      return 0x1000000000000097;
    case 0x21:
      return 0x1000000000000059;
    case 0x22:
      goto LABEL_7;
    case 0x23:
      return 0x1000000000000054;
    case 0x24:
      return 0x100000000000008DLL;
    case 0x25:
      return 0x1000000000000085;
    case 0x26:
      return 0x1000000000000033;
    case 0x27:
      return 0x1000000000000027;
    case 0x28:
      return 0x100000000000002DLL;
    case 0x29:
      v4 = v0[5];
      v5 = v0[1];
      v6 = v0[6] | v0[7];
      v7 = v0[4] | v0[3] | v0[2];
      if (!(v6 | v1 | v4 | v7 | v5))
      {
        return 19279;
      }

      v8 = v6 | v4 | v7 | v5;
      if (v1 == 1 && !v8)
      {
        return 0x776F4E20746F4ELL;
      }

      if (v1 == 2 && !v8)
      {
        return 0x6F4D206E7261654CLL;
      }

      if (v1 == 3 && !v8)
      {
        return 0x6DA0C26E7261654CLL;
      }

      if (v1 == 4 && !v8)
      {
        return 0x65756E69746E6F43;
      }

      if (v1 == 5 && !v8)
      {
        return 0x776F6C6C41;
      }

      if (v1 == 6 && !v8)
      {
        return 0x65726F6E6749;
      }

      if (v1 == 7 && !v8)
      {
        return 0x6C65636E6143;
      }

      if (v1 == 8 && !v8)
      {
        return 0x65766C6F736552;
      }

      if (v1 == 9 && !v8)
      {
        return 0x73676E6974746553;
      }

      if (v1 == 10 && !v8)
      {
        return 0x7373696D736944;
      }

      if (v1 == 11 && !v8)
      {
        return 0x65736F6C43;
      }

      if (v1 == 12 && !v8)
      {
        return 0x69737365636F7250;
      }

      if (v1 == 13 && !v8)
      {
        return 0x65766F72707041;
      }

      if (v1 == 14 && !v8)
      {
        return 0x6465766F72707041;
      }

      if (v1 == 15 && !v8)
      {
        return 0x656E696C636544;
      }

      if (v1 == 16 && !v8)
      {
        return 0x64656E696C636544;
      }

      if (v1 == 17 && !v8)
      {
        return 0xD000000000000010;
      }

      if (v1 == 18 && !v8)
      {
        return 0xD00000000000001DLL;
      }

      if (v1 == 19 && !v8)
      {
        return 0xD000000000000015;
      }

      if (v1 == 20 && !v8)
      {
        return 0x2070704120656874;
      }

      if (v1 == 21 && !v8)
      {
        return 0xD000000000000015;
      }

      if (v1 == 22 && !v8)
      {
        return 0xD00000000000002DLL;
      }

      if (v1 == 23 && !v8)
      {
        return 0xD00000000000002CLL;
      }

      if (v1 == 24 && !v8)
      {
LABEL_7:
        v3 = 36;
        return v3 | 0xD000000000000011;
      }

      if (v1 == 25 && !v8)
      {
        return 0xD000000000000034;
      }

      if (v1 == 26 && !v8)
      {
        return 0xD000000000000023;
      }

      if (v1 == 27 && !v8)
      {
        return 0xD000000000000010;
      }

      if (v1 == 28 && !v8)
      {
        return 0xD00000000000005ALL;
      }

      result = 0x7461442072756F59;
      if (v1 == 29 && !v8)
      {
        return result;
      }

      if (v1 == 30 && !v8)
      {
        return 0xD000000000000062;
      }

      if (v1 == 31 && !v8)
      {
        return 0xD000000000000014;
      }

      if (v1 == 32 && !v8)
      {
        return 0xD000000000000090;
      }

      if (v1 == 33 && !v8)
      {
        return 0xD000000000000010;
      }

      if (v1 == 34 && !v8)
      {
        return 0xD000000000000068;
      }

      if (v1 == 35 && !v8)
      {
        return 0xD000000000000066;
      }

      if (v1 == 36 && !v8)
      {
        return result;
      }

      if (v1 == 37 && !v8)
      {
        return 0xD00000000000005ALL;
      }

      if (v1 == 38 && !v8)
      {
        return 0xD000000000000014;
      }

      if (v1 == 39 && !v8)
      {
        return 0xD000000000000090;
      }

      if (v1 == 40 && !v8)
      {
        return 0x654420776F6C6C41;
      }

      if (v1 == 41 && !v8)
      {
        return 0x6150207265746E45;
      }

      if (v1 == 42 && !v8)
      {
        return 0xD000000000000032;
      }

      if (v1 == 43 && !v8)
      {
        return 0x4449206863756F54;
      }

      if (v1 == 44 && !v8)
      {
        return 0xD000000000000025;
      }

      if (v1 == 45 && !v8)
      {
        return 0xD00000000000001ALL;
      }

      if (v1 == 46 && !v8)
      {
        return 0x1000000000000048;
      }

      if (v1 == 47 && !v8)
      {
        return 0x1000000000000046;
      }

      result = 0xD000000000000011;
      if (v1 == 48 && !v8)
      {
        return 0xD000000000000012;
      }

      if (v1 == 49 && !v8)
      {
        return 0x1000000000000056;
      }

      if (v1 == 50 && !v8)
      {
        return 0x1000000000000054;
      }

      if (v1 == 51 && !v8)
      {
        return 0xD000000000000012;
      }

      if (v1 == 52 && !v8)
      {
        return 0x1000000000000040;
      }

      if (v1 == 53 && !v8)
      {
        return 0x100000000000003ELL;
      }

      if (v1 == 54 && !v8)
      {
        return 0x1000000000000056;
      }

      if (v1 == 55 && !v8)
      {
        return 0x1000000000000054;
      }

      if (v1 == 56 && !v8)
      {
        return 0x412065766F6D6552;
      }

      if (v1 == 57 && !v8)
      {
        return 0xD000000000000015;
      }

      if (v1 == 58 && !v8)
      {
        return 0xD000000000000044;
      }

      if (v1 == 59 && !v8)
      {
        return 0xD00000000000004ELL;
      }

      if (v1 != 60 || v8)
      {
        if (v1 == 61 && !v8)
        {
          return 0xD000000000000024;
        }

        if (v1 == 62 && !v8)
        {
          return 0xD000000000000031;
        }

        if (v1 == 63 && !v8)
        {
          return 0xD000000000000029;
        }

        if (v1 == 64 && !v8)
        {
          return 0xD000000000000027;
        }

        if (v1 == 65 && !v8)
        {
          return 0xD000000000000013;
        }

        if (v1 == 66 && !v8)
        {
          return 0xD00000000000001BLL;
        }

        if (v1 == 67 && !v8)
        {
          return 0xD000000000000015;
        }

        if (v1 == 68 && !v8)
        {
          return 0x100000000000004FLL;
        }

        if (v1 == 69 && !v8)
        {
          return 0xD000000000000049;
        }

        if (v1 == 70 && !v8)
        {
          return 0xD000000000000026;
        }

        if (v1 != 71 || v8)
        {
          if (v1 == 72 && !v8)
          {
            return 0xD00000000000004FLL;
          }

          if (v1 != 73 || v8)
          {
            if (v1 == 74 && !v8)
            {
              return 0xD000000000000096;
            }

            if (v1 != 75 || v8)
            {
              if (v1 == 76 && !v8)
              {
                return 0xD000000000000062;
              }

              if (v1 == 77 && !v8)
              {
                return 0xD00000000000002DLL;
              }

              if (v1 != 78 || v8)
              {
                if (v1 == 79 && !v8)
                {
                  return 0xD00000000000002DLL;
                }

                if (v1 != 80 || v8)
                {
                  if (v1 == 81 && !v8)
                  {
                    return 0xD000000000000034;
                  }

                  if (v1 == 82 && !v8)
                  {
                    return 0x1000000000000028;
                  }

                  if (v1 == 83 && !v8)
                  {
                    return 0xD000000000000014;
                  }

                  if (v1 == 84 && !v8)
                  {
                    return 0xD000000000000098;
                  }

                  if (v1 == 85 && !v8)
                  {
                    return 0x206C6C6174736E49;
                  }
                }
              }

              return 0xD000000000000017;
            }
          }
        }
      }

      return result;
    default:
      return 0x1000000000000096;
  }
}

unint64_t sub_100368EFC()
{
  v1 = *v0;
  result = 0xD000000000000029;
  switch(*(v0 + 64))
  {
    case 1:
    case 0xB:
      return 0xD00000000000002ELL;
    case 2:
    case 0x15:
    case 0x17:
      return 0xD00000000000003DLL;
    case 3:
      return 0xD000000000000042;
    case 4:
    case 0xE:
    case 0x28:
      return 0xD000000000000032;
    case 5:
    case 0x11:
    case 0x12:
      return 0xD000000000000039;
    case 6:
      return 0xD000000000000028;
    case 7:
      return 0xD00000000000002ALL;
    case 8:
    case 0xF:
      return 0xD000000000000031;
    case 9:
      return 0xD000000000000027;
    case 0xC:
      return 0xD00000000000002DLL;
    case 0xD:
      return 0xD00000000000003ALL;
    case 0x10:
    case 0x14:
    case 0x25:
      return 0xD000000000000040;
    case 0x13:
      return 0xD000000000000037;
    case 0x16:
    case 0x19:
    case 0x1F:
      return 0xD00000000000003BLL;
    case 0x18:
      return 0xD000000000000030;
    case 0x1A:
      return 0xD000000000000036;
    case 0x1B:
      return 0xD00000000000003FLL;
    case 0x1C:
      return 0xD00000000000003ELL;
    case 0x1D:
      return 0xD000000000000045;
    case 0x1E:
      return 0xD00000000000003CLL;
    case 0x20:
    case 0x22:
      return 0xD000000000000047;
    case 0x21:
      return 0xD000000000000048;
    case 0x23:
    case 0x26:
      return 0xD000000000000035;
    case 0x24:
      return 0xD000000000000038;
    case 0x29:
      v3 = v0[5];
      v4 = v0[1];
      v5 = v0[6] | v0[7];
      v6 = v0[4] | v0[3] | v0[2];
      if (!(v5 | v1 | v3 | v6 | v4))
      {
        return 0xD000000000000020;
      }

      v7 = v5 | v3 | v6 | v4;
      result = 0xD000000000000024;
      if (v1 == 1 && !v7)
      {
        return result;
      }

      v8 = 0xD000000000000027;
      if (v1 == 2 && !v7)
      {
        return v8;
      }

      if (v1 == 3 && !v7)
      {
        return 0xD000000000000038;
      }

      v9 = 0xD000000000000026;
      if (v1 == 4 && !v7)
      {
        return v9;
      }

      v10 = 0xD000000000000023;
      if (v1 == 5 && !v7)
      {
        return v10;
      }

      if (v1 == 6 && !v7 || v1 == 7 && !v7)
      {
        return result;
      }

      v11 = 0xD000000000000025;
      if (v1 == 8 && !v7)
      {
        return v11;
      }

      if (v1 == 9 && !v7)
      {
        return v9;
      }

      if (v1 == 10 && !v7)
      {
        return v11;
      }

      if (v1 == 11 && !v7)
      {
        return v10;
      }

      if (v1 == 12 && !v7)
      {
        return 0xD000000000000028;
      }

      if (v1 == 13 && !v7)
      {
        return v11;
      }

      if (v1 == 14 && !v7)
      {
        return v9;
      }

      if (v1 == 15 && !v7)
      {
        return v11;
      }

      if (v1 == 16 && !v7)
      {
        return v9;
      }

      if (v1 == 17 && !v7)
      {
        return v8;
      }

      v10 = 0xD00000000000002FLL;
      if (v1 == 18 && !v7)
      {
        return v10;
      }

      v12 = 0xD000000000000030;
      if (v1 == 19 && !v7)
      {
        return v12;
      }

      v9 = 0xD000000000000033;
      if (v1 == 20 && !v7)
      {
        return v9;
      }

      v8 = 0xD000000000000031;
      if (v1 == 21 && !v7)
      {
        return v8;
      }

      if (v1 == 22 && !v7)
      {
        return 0xD00000000000003FLL;
      }

      if (v1 == 23 && !v7)
      {
        return 0xD00000000000003ELL;
      }

      if (v1 == 24 && !v7)
      {
        return 0xD000000000000047;
      }

      if (v1 == 25 && !v7)
      {
        return 0xD000000000000046;
      }

      if (v1 == 26 && !v7)
      {
        return 0xD000000000000036;
      }

      if (v1 == 27 && !v7)
      {
        return 0xD00000000000003ELL;
      }

      if (v1 == 28 && !v7)
      {
        return 0xD00000000000003DLL;
      }

      if (v1 == 29 && !v7)
      {
        return 0xD000000000000037;
      }

      if (v1 == 30 && !v7)
      {
        return 0xD000000000000036;
      }

      if (v1 == 31 && !v7)
      {
        return 0xD000000000000042;
      }

      if (v1 == 32 && !v7)
      {
        return 0xD000000000000041;
      }

      if (v1 == 33 && !v7)
      {
        return 0xD000000000000042;
      }

      if (v1 == 34 && !v7)
      {
        return 0xD000000000000041;
      }

      if (v1 == 35 && !v7)
      {
        return 0xD000000000000046;
      }

      if (v1 == 36 && !v7)
      {
        return 0xD00000000000003BLL;
      }

      if (v1 == 37 && !v7)
      {
        return 0xD00000000000003ALL;
      }

      if (v1 == 38 && !v7)
      {
        return 0xD000000000000046;
      }

      if (v1 == 39 && !v7)
      {
        return 0xD000000000000045;
      }

      if (v1 == 40 && !v7)
      {
        return 0xD00000000000003BLL;
      }

      if (v1 == 41 && !v7)
      {
        return v11;
      }

      if (v1 == 42 && !v7)
      {
        return v12;
      }

      if (v1 == 43 && !v7)
      {
        return result;
      }

      if (v1 == 44 && !v7)
      {
        return v10;
      }

      if (v1 == 45 && !v7)
      {
        return v9;
      }

      if (v1 == 46 && !v7)
      {
        return 0xD000000000000035;
      }

      if (v1 == 47 && !v7)
      {
        return 0xD00000000000003ALL;
      }

      result = 0xD00000000000002BLL;
      if (v1 == 48 && !v7)
      {
        return result;
      }

      v11 = 0xD00000000000002DLL;
      if (v1 == 49 && !v7)
      {
        return v11;
      }

      v12 = 0xD000000000000032;
      if (v1 == 50 && !v7)
      {
        return v12;
      }

      if (v1 == 51 && !v7)
      {
        return result;
      }

      if (v1 == 52 && !v7)
      {
        return v11;
      }

      if (v1 == 53 && !v7)
      {
        return v12;
      }

      if (v1 == 54 && !v7)
      {
        return 0xD00000000000003CLL;
      }

      if (v1 == 55 && !v7)
      {
        return 0xD000000000000041;
      }

      if (v1 == 56 && !v7)
      {
        return 0xD00000000000003FLL;
      }

      if (v1 == 57 && !v7)
      {
        return v10;
      }

      if (v1 == 58 && !v7)
      {
        return v8;
      }

      if (v1 == 59 && !v7)
      {
        return 0xD000000000000035;
      }

      if (v1 == 60 && !v7)
      {
        return 0xD00000000000002CLL;
      }

      result = 0xD00000000000002ELL;
      if (v1 == 61 && !v7)
      {
        return result;
      }

      if (v1 == 62 && !v7)
      {
        return 0xD00000000000003DLL;
      }

      if (v1 == 63 && !v7)
      {
        return 0xD000000000000035;
      }

      if (v1 == 64 && !v7)
      {
        return 0xD00000000000003ALL;
      }

      if (v1 == 65 && !v7)
      {
        return result;
      }

      if (v1 == 66 && !v7)
      {
        return 0xD000000000000036;
      }

      if (v1 == 67 && !v7)
      {
        return v9;
      }

      if (v1 == 68 && !v7)
      {
        return 0xD000000000000035;
      }

      if (v1 == 69 && !v7)
      {
        return 0xD000000000000037;
      }

      if (v1 == 70 && !v7)
      {
        return 0xD000000000000044;
      }

      if (v1 == 71 && !v7)
      {
        return v8;
      }

      if (v1 == 72 && !v7)
      {
        return 0xD000000000000037;
      }

      if (v1 == 73 && !v7)
      {
        return 0xD00000000000003DLL;
      }

      if (v1 == 74 && !v7)
      {
        return 0xD000000000000037;
      }

      if (v1 == 75 && !v7)
      {
        return 0xD00000000000003BLL;
      }

      if (v1 == 76 && !v7)
      {
        return 0xD00000000000003ALL;
      }

      if (v1 == 77 && !v7)
      {
        return 0xD00000000000003CLL;
      }

      if (v1 == 78 && !v7)
      {
        return 0xD000000000000043;
      }

      result = 0xD000000000000044;
      if ((v1 != 79 || v7) && (v1 != 80 || v7))
      {
        if (v1 == 81 && !v7)
        {
          return 0xD000000000000045;
        }

        if (v1 != 82 || v7)
        {
          if (v1 == 83 && !v7)
          {
            return 0xD000000000000040;
          }

          if (v1 == 84 && !v7)
          {
            return 0xD00000000000003FLL;
          }

          if (v1 == 85 && v7 == 0)
          {
            return 0xD00000000000002DLL;
          }

          else
          {
            return 0xD000000000000035;
          }
        }

        else
        {
          return 0xD000000000000049;
        }
      }

      return result;
    default:
      return result;
  }
}

unint64_t sub_100369B74()
{
  v1 = 0;
  v3 = *v0;
  v2 = *(v0 + 8);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  switch(*(v0 + 64))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      *(v10 + 32) = 1701667182;
      v12 = v10 + 32;
      v13 = 0xE400000000000000;
      goto LABEL_24;
    case 4:
      sub_1001F0C48(&qword_10077E988);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1006A4050;
      *(v24 + 32) = 0x656D614E707061;
      *(v24 + 40) = 0xE700000000000000;
      *(v24 + 48) = v3;
      *(v24 + 56) = v2;
      *(v24 + 64) = 0x7562697274736964;
      *(v24 + 72) = 0xEB00000000726F74;
      *(v24 + 80) = v5;
      *(v24 + 88) = v4;
      strcpy((v24 + 96), "newDistributor");
      *(v24 + 111) = -18;
      *(v24 + 112) = v7;
      *(v24 + 120) = v6;

      v1 = sub_1005288C8(v24);
      swift_setDeallocating();
      sub_1001F0C48(&qword_100784360);
      goto LABEL_18;
    case 5:
      sub_1001F0C48(&qword_10077E988);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_10069F6E0;
      *(v25 + 32) = 0x656D614E707061;
      *(v25 + 40) = 0xE700000000000000;
      *(v25 + 48) = v3;
      *(v25 + 56) = v2;
      *(v25 + 64) = 0x727473694477656ELL;
      v27 = 0xEE00726F74756269;
      goto LABEL_16;
    case 0xB:
    case 0xD:
    case 0xE:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      *(v10 + 32) = 0x65706F6C65766564;
      v12 = v10 + 32;
      v13 = 0xED0000656D614E72;
      goto LABEL_24;
    case 0xF:
      sub_1001F0C48(&qword_10077E988);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10069F230;
      *(v28 + 32) = 0x656D614E707061;
      *(v28 + 40) = 0xE700000000000000;
      *(v28 + 48) = v3;
      *(v28 + 56) = v2;
      *(v28 + 64) = 0x6E69616D6F64;
      *(v28 + 72) = 0xE600000000000000;
      *(v28 + 80) = v5;
      *(v28 + 88) = v4;
      strcpy((v28 + 96), "developerName");
      *(v28 + 110) = -4864;
      *(v28 + 112) = v7;
      *(v28 + 120) = v6;
      strcpy((v28 + 128), "learnMoreLink");
      *(v28 + 142) = -4864;
      *(v28 + 144) = v8;
      *(v28 + 152) = v9;

      v1 = sub_1005288C8(v28);
      swift_setDeallocating();
      sub_1001F0C48(&qword_100784360);
      goto LABEL_18;
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x1C:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      *(v10 + 32) = 0x6C7074656B72616DLL;
      v12 = v10 + 32;
      v14 = 1315267425;
      goto LABEL_4;
    case 0x14:
      sub_1001F0C48(&qword_10077E988);
      v25 = swift_allocObject();
      v26 = v25;
      *(v25 + 16) = xmmword_10069F6E0;
      *(v25 + 32) = 0x656D614E707061;
      *(v25 + 40) = 0xE700000000000000;
      *(v25 + 48) = v3;
      *(v25 + 56) = v2;
      *(v25 + 64) = 0x6C7074656B72616DLL;
      v27 = 0xEF656D614E656361;
LABEL_16:
      *(v25 + 72) = v27;
      *(v25 + 80) = v5;
      *(v25 + 88) = v4;

      v1 = sub_1005288C8(v26);
      swift_setDeallocating();
      sub_1001F0C48(&qword_100784360);
LABEL_18:
      swift_arrayDestroy();
      goto LABEL_25;
    case 0x16:
    case 0x18:
    case 0x19:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      *(v10 + 32) = 0x656D614E707061;
      v12 = v10 + 32;
      v13 = 0xE700000000000000;
      goto LABEL_24;
    case 0x17:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      *(v10 + 32) = 0x7562697274736964;
      v12 = v10 + 32;
      v14 = 1316122484;
LABEL_4:
      v13 = v14 | 0xEF656D6100000000;
      goto LABEL_24;
    case 0x1A:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      v23 = 0x65706F6C65766564;
      goto LABEL_23;
    case 0x1B:
    case 0x1D:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      *(v10 + 32) = 0x656372756F73;
      v12 = v10 + 32;
      v13 = 0xE600000000000000;
      goto LABEL_24;
    case 0x1E:
      sub_1001F0C48(&qword_10077E988);
      v10 = swift_allocObject();
      v11 = v10;
      *(v10 + 16) = xmmword_10069E680;
      v23 = 0x6F74736575716572;
LABEL_23:
      *(v10 + 32) = v23;
      v12 = v10 + 32;
      v13 = 0xE900000000000072;
LABEL_24:
      *(v10 + 40) = v13;
      *(v10 + 48) = v3;
      *(v10 + 56) = v2;
      sub_10036A700(v0, v36);
      v1 = sub_1005288C8(v11);
      swift_setDeallocating();
      sub_10036A738(v12);
LABEL_25:
      swift_deallocClassInstance();
      return v1;
    case 0x1F:
      sub_1001F0C48(&qword_10077E988);
      inited = swift_initStackObject();
      v34 = v2;
      v35 = inited;
      *(inited + 16) = xmmword_10069F230;
      *(inited + 32) = 0x6F74736575716572;
      *(inited + 40) = 0xE900000000000072;
      *(inited + 48) = v3;
      *(inited + 56) = v34;
      *(inited + 64) = 0x656D614E707061;
      *(inited + 72) = 0xE700000000000000;
      *(inited + 80) = v5;
      *(inited + 88) = v4;
      *(inited + 96) = 0x656372756F73;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 112) = v7;
      *(inited + 120) = v6;
      *(inited + 128) = 0x676E69746172;
      *(inited + 136) = 0xE600000000000000;
      *(inited + 144) = v8;
      *(inited + 152) = v9;

      v1 = sub_1005288C8(v35);
      swift_setDeallocating();
      sub_1001F0C48(&qword_100784360);
      goto LABEL_34;
    case 0x20:
      sub_1001F0C48(&qword_10077E988);
      v30 = swift_initStackObject();
      v31 = v30;
      *(v30 + 16) = xmmword_1006A4050;
      *(v30 + 32) = 0x6F74736575716572;
      *(v30 + 40) = 0xE900000000000072;
      *(v30 + 48) = v3;
      *(v30 + 56) = v2;
      strcpy((v30 + 64), "developerName");
      *(v30 + 78) = -4864;
      *(v30 + 80) = v5;
      v32 = 0x676E69746172;
      goto LABEL_33;
    case 0x21:
      sub_1001F0C48(&qword_10077E988);
      v19 = swift_initStackObject();
      v20 = v19;
      *(v19 + 16) = xmmword_10069F6E0;
      *(v19 + 32) = 0x6F74736575716572;
      *(v19 + 40) = 0xE900000000000072;
      *(v19 + 48) = v3;
      *(v19 + 56) = v2;
      *(v19 + 64) = 0x656372756F73;
      v21 = 0xE600000000000000;
      goto LABEL_30;
    case 0x22:
      sub_1001F0C48(&qword_10077E988);
      v15 = swift_initStackObject();
      v16 = v15;
      *(v15 + 16) = xmmword_10069E680;
      *(v15 + 32) = 0x676E69746172;
      v17 = v15 + 32;
      v18 = 0xE600000000000000;
      goto LABEL_20;
    case 0x23:
      sub_1001F0C48(&qword_10077E988);
      v30 = swift_initStackObject();
      v31 = v30;
      *(v30 + 16) = xmmword_1006A4050;
      *(v30 + 32) = 0x6F74736575716572;
      *(v30 + 40) = 0xE900000000000072;
      *(v30 + 48) = v3;
      *(v30 + 56) = v2;
      *(v30 + 64) = 0x656D614E707061;
      *(v30 + 72) = 0xE700000000000000;
      *(v30 + 80) = v5;
      v32 = 0x656372756F73;
LABEL_33:
      *(v30 + 88) = v4;
      *(v30 + 96) = v32;
      *(v30 + 104) = 0xE600000000000000;
      *(v30 + 112) = v7;
      *(v30 + 120) = v6;

      v1 = sub_1005288C8(v31);
      swift_setDeallocating();
      sub_1001F0C48(&qword_100784360);
      goto LABEL_34;
    case 0x24:
      sub_1001F0C48(&qword_10077E988);
      v19 = swift_initStackObject();
      v20 = v19;
      *(v19 + 16) = xmmword_10069F6E0;
      *(v19 + 32) = 0x676E69746172;
      *(v19 + 40) = 0xE600000000000000;
      *(v19 + 48) = v3;
      *(v19 + 56) = v2;
      *(v19 + 64) = 0x65706F6C65766564;
      v21 = 0xE900000000000072;
      goto LABEL_30;
    case 0x25:
      sub_1001F0C48(&qword_10077E988);
      v19 = swift_initStackObject();
      v20 = v19;
      *(v19 + 16) = xmmword_10069F6E0;
      *(v19 + 32) = 0x676E69746172;
      v22 = 0xE600000000000000;
      goto LABEL_29;
    case 0x26:
      sub_1001F0C48(&qword_10077E988);
      v19 = swift_initStackObject();
      v20 = v19;
      *(v19 + 16) = xmmword_10069F6E0;
      *(v19 + 32) = 0x656D614E707061;
      v22 = 0xE700000000000000;
LABEL_29:
      *(v19 + 40) = v22;
      *(v19 + 48) = v3;
      *(v19 + 56) = v2;
      *(v19 + 64) = 0x6C7074656B72616DLL;
      v21 = 0xEF656D614E656361;
LABEL_30:
      *(v19 + 72) = v21;
      *(v19 + 80) = v5;
      *(v19 + 88) = v4;

      v1 = sub_1005288C8(v20);
      swift_setDeallocating();
      sub_1001F0C48(&qword_100784360);
LABEL_34:
      swift_arrayDestroy();
      break;
    case 0x27:
    case 0x28:
      sub_1001F0C48(&qword_10077E988);
      v15 = swift_initStackObject();
      v16 = v15;
      *(v15 + 16) = xmmword_10069E680;
      *(v15 + 32) = 0x656D614E707061;
      v17 = v15 + 32;
      v18 = 0xE700000000000000;
LABEL_20:
      *(v15 + 40) = v18;
      *(v15 + 48) = v3;
      *(v15 + 56) = v2;
      sub_10036A700(v0, v36);
      v1 = sub_1005288C8(v16);
      swift_setDeallocating();
      sub_10036A738(v17);
      break;
    default:
      return v1;
  }

  return v1;
}