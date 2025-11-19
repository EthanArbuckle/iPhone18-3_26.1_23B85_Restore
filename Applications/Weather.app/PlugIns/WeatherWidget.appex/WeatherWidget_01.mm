uint64_t sub_1000175A8(uint64_t a1)
{
  v4 = v1;
  v6 = sub_100002A10(&qword_10012F898, &qword_1000EFFD0);
  sub_1000090D4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_100019AE8();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  sub_100019B78();
  sub_100018EE8();
  sub_100019B58();
  v33 = *v4;
  sub_100018F3C();
  sub_100019A80();
  sub_1000EC594();
  if (!v2)
  {
    v34 = v4[1];
    sub_100018F90();
    sub_100019A80();
    sub_1000EC554();
    v14 = type metadata accessor for EventViewModel(0);
    v15 = v14[6];
    sub_1000E8604();
    sub_1000199D8();
    sub_100018FE4(v16, v17);
    sub_100019A28();
    sub_1000EC554();
    v18 = v14[7];
    sub_100019A28();
    sub_1000EC554();
    v19 = v14[8];
    sub_100019A28();
    sub_1000EC594();
    v20 = &v4[v14[9]];
    v21 = *v20;
    v22 = v20[1];
    sub_100019A68(5);
    sub_1000EC564();
    v23 = &v4[v14[10]];
    v24 = *v23;
    v25 = v23[1];
    sub_100019A68(6);
    sub_1000EC564();
    v26 = &v4[v14[11]];
    v27 = *v26;
    v28 = v26[1];
    sub_100019A68(7);
    sub_1000EC544();
    v35 = *&v4[v14[12]];
    sub_100002A10(&qword_10012F788, &qword_1000EFCC8);
    sub_1000190D4(&qword_10012F8B8, &qword_10012F8C0);
    sub_100019ACC();
    sub_100019A80();
    sub_1000EC554();
    v29 = v14[13];
    sub_1000E8F24();
    sub_100019A10();
    sub_100018FE4(v30, v31);
    sub_100019ACC();
    sub_100019A80();
    sub_1000EC554();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1000178EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_100002A10(&qword_10012F6F8, &qword_1000EFCB0);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  v71 = &v68 - v8;
  v9 = sub_1000E8604();
  v10 = sub_1000090D4(v9);
  v74 = v11;
  v75 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100006A10();
  v16 = v15 - v14;
  v17 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v18 = sub_100009210(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_1000091AC();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  v73 = sub_100002A10(&qword_10012F8D0, &qword_1000EFFD8);
  sub_1000090D4(v73);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_100009204();
  __chkstk_darwin(v31);
  v33 = &v68 - v32;
  v78 = type metadata accessor for EventViewModel(0);
  v34 = sub_1000069E4(v78);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_100006A10();
  v76 = a1;
  v77 = (v38 - v37);
  v40 = a1[3];
  v39 = a1[4];
  sub_100019B78();
  sub_100018EE8();
  v72 = v33;
  sub_1000EC694();
  if (!v2)
  {
    v41 = v26;
    v69 = v16;
    v80 = 0;
    sub_10001902C();
    sub_1000EC514();
    v47 = v77;
    *v77 = v79;
    v80 = 1;
    sub_100019080();
    sub_1000EC4D4();
    v47[1] = v79;
    LOBYTE(v79) = 2;
    sub_1000199D8();
    sub_100018FE4(v48, v49);
    v50 = v75;
    sub_1000EC4D4();
    sub_100019170(v41, &v47[v78[6]], &qword_10012F048, &qword_1000EEF30);
    LOBYTE(v79) = 3;
    sub_1000EC4D4();
    sub_100019170(v23, &v47[v78[7]], &qword_10012F048, &qword_1000EEF30);
    LOBYTE(v79) = 4;
    v51 = v69;
    sub_1000EC514();
    v52 = v78;
    (*(v74 + 32))(&v47[v78[8]], v51, v50);
    LOBYTE(v79) = 5;
    v53 = sub_1000EC4E4();
    v54 = &v47[v52[9]];
    *v54 = v53;
    v54[1] = v55;
    sub_100019B24(6);
    v56 = sub_1000EC4E4();
    v57 = &v47[v52[10]];
    *v57 = v56;
    v57[1] = v58;
    sub_100019B24(7);
    v59 = sub_1000EC4C4();
    v60 = &v47[v52[11]];
    *v60 = v59;
    v60[1] = v61;
    sub_100002A10(&qword_10012F788, &qword_1000EFCC8);
    v80 = 8;
    sub_1000190D4(&qword_10012F8E8, &qword_10012F8F0);
    sub_1000EC4D4();
    *&v47[v52[12]] = v79;
    sub_1000E8F24();
    LOBYTE(v79) = 9;
    sub_100019A10();
    sub_100018FE4(v62, v63);
    sub_1000EC4D4();
    (*(v28 + 8))(v72, v73);
    v64 = v77;
    sub_100019170(v71, &v77[v78[13]], &qword_10012F6F8, &qword_1000EFCB0);
    sub_10001936C(v64, v70, type metadata accessor for EventViewModel);
    sub_100009068(v76);
    v65 = sub_100019AC0();
    return sub_1000193C8(v65, v66);
  }

  sub_100019A44();
  v42 = v77;
  v43 = v78;
  result = sub_100009068(v76);
  if (!v40)
  {
    if (!v28)
    {
      goto LABEL_10;
    }

LABEL_5:
    v44 = *&v42[v43[9] + 8];

    if (v39)
    {
      goto LABEL_11;
    }

LABEL_6:
    if (!a1)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = (*(v74 + 8))(&v42[v43[8]], v75);
  if (v28)
  {
    goto LABEL_5;
  }

LABEL_10:
  if (!v39)
  {
    goto LABEL_6;
  }

LABEL_11:
  v46 = *&v42[v43[10] + 8];

  if (a1)
  {
LABEL_7:
    v45 = *&v42[v43[11] + 8];
  }

  return result;
}

uint64_t sub_100018104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D655474726F6873 && a2 == 0xED00006574616C70;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x706D6554676E6F6CLL && a2 == 0xEC0000006574616CLL;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E5564696C6176 && a2 == 0xEA00000000006C69)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

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

uint64_t sub_100018274(char a1)
{
  result = 0x6D655474726F6873;
  switch(a1)
  {
    case 1:
      result = 0x706D6554676E6F6CLL;
      break;
    case 2:
      result = 0x6574656D61726170;
      break;
    case 3:
      result = 0x746E5564696C6176;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100018328(void *a1, void *a2)
{
  v5 = sub_1000E8604();
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100006A10();
  v13 = v12 - v11;
  v14 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v14);
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  sub_100019AE8();
  v18 = sub_100002A10(&qword_10012F910, &qword_1000F19F0);
  sub_1000069E4(v18);
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = *a1 == *a2 && a1[1] == a2[1];
  if (!v24 && (sub_1000EC5D4() & 1) == 0)
  {
    return 0;
  }

  v25 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v25 && (sub_1000EC5D4() & 1) == 0)
  {
    return 0;
  }

  v26 = a2[4];
  if (a1[4])
  {
    if (!v26)
    {
      return 0;
    }

    v27 = a2[4];

    sub_10004A9BC();
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v45 = v8;
  v30 = *(type metadata accessor for TemplateDescriptions(0) + 28);
  v31 = *(v18 + 48);
  sub_100019210(a1 + v30, v23, &qword_10012F048, &qword_1000EEF30);
  sub_100019210(a2 + v30, &v23[v31], &qword_10012F048, &qword_1000EEF30);
  sub_1000199F0(v23);
  if (v24)
  {
    sub_1000199F0(&v23[v31]);
    if (v24)
    {
      sub_100008E48(v23, &qword_10012F048, &qword_1000EEF30);
      return 1;
    }

    goto LABEL_24;
  }

  sub_100019210(v23, v2, &qword_10012F048, &qword_1000EEF30);
  sub_1000199F0(&v23[v31]);
  if (v32)
  {
    v33 = *(v45 + 8);
    v34 = sub_100019B38();
    v35(v34);
LABEL_24:
    sub_100008E48(v23, &qword_10012F910, &qword_1000F19F0);
    return 0;
  }

  v37 = v45;
  (*(v45 + 32))(v13, &v23[v31], v5);
  sub_1000199D8();
  sub_100018FE4(v38, v39);
  v40 = sub_1000EBE24();
  v41 = *(v37 + 8);
  v42 = sub_100019AC0();
  v41(v42);
  v43 = sub_100019B38();
  v41(v43);
  sub_100008E48(v23, &qword_10012F048, &qword_1000EEF30);
  return (v40 & 1) != 0;
}

uint64_t sub_10001865C(uint64_t a1)
{
  v4 = v1;
  v6 = sub_100002A10(&qword_10012F940, &qword_1000EFFF8);
  sub_1000090D4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_100019AE8();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  sub_100019B78();
  sub_10001925C();
  sub_100019B58();
  v14 = *v4;
  v15 = v4[1];
  sub_100019B18();
  sub_1000EC564();
  if (!v2)
  {
    v16 = v4[2];
    v17 = v4[3];
    sub_100019B18();
    sub_1000EC564();
    v22 = v4[4];
    sub_100002A10(&unk_10012F850, &qword_1000EFCE8);
    sub_100019420();
    sub_100019ACC();
    sub_100019B18();
    sub_1000EC554();
    v18 = *(type metadata accessor for TemplateDescriptions(0) + 28);
    sub_1000E8604();
    sub_1000199D8();
    sub_100018FE4(v19, v20);
    sub_100019ACC();
    sub_100019B18();
    sub_1000EC554();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_100018834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_100002A10(&qword_10012F928, &qword_1000EFFF0);
  v11 = sub_1000090D4(v10);
  v36 = v12;
  v37 = v11;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v16 = type metadata accessor for TemplateDescriptions(0);
  v17 = sub_1000069E4(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100006A10();
  v22 = (v21 - v20);
  v23 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_10001925C();
  sub_1000EC694();
  if (v2)
  {
    return sub_100009068(a1);
  }

  v34 = v16;
  v42 = 0;
  *v22 = sub_1000EC4E4();
  v22[1] = v24;
  v41 = 1;
  v22[2] = sub_1000EC4E4();
  v22[3] = v25;
  sub_100002A10(&unk_10012F850, &qword_1000EFCE8);
  v40 = 2;
  sub_1000192B0();
  sub_100019B44();
  v33 = 0;
  sub_1000EC4D4();
  v22[4] = v38;
  sub_1000E8604();
  v39 = 3;
  sub_1000199D8();
  sub_100018FE4(v26, v27);
  sub_100019B44();
  sub_1000EC4D4();
  v28 = sub_100019A58();
  v29(v28);
  sub_100019170(v9, v22 + *(v34 + 28), &qword_10012F048, &qword_1000EEF30);
  sub_10001936C(v22, v35, type metadata accessor for TemplateDescriptions);
  sub_100009068(a1);
  v30 = sub_100019B38();
  return sub_1000193C8(v30, v31);
}

unint64_t sub_100018BC8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100016850(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100018CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100016860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100018CE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100016B94();
  *a1 = result;
  return result;
}

uint64_t sub_100018D08(uint64_t a1)
{
  v2 = sub_100018EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018D44(uint64_t a1)
{
  v2 = sub_100018EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100018DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100018104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100018DE4(uint64_t a1)
{
  v2 = sub_10001925C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100018E20(uint64_t a1)
{
  v2 = sub_10001925C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100018E94()
{
  result = qword_10012F890;
  if (!qword_10012F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F890);
  }

  return result;
}

unint64_t sub_100018EE8()
{
  result = qword_10012F8A0;
  if (!qword_10012F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8A0);
  }

  return result;
}

unint64_t sub_100018F3C()
{
  result = qword_10012F8A8;
  if (!qword_10012F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8A8);
  }

  return result;
}

unint64_t sub_100018F90()
{
  result = qword_10012F8B0;
  if (!qword_10012F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8B0);
  }

  return result;
}

uint64_t sub_100018FE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001902C()
{
  result = qword_10012F8D8;
  if (!qword_10012F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8D8);
  }

  return result;
}

unint64_t sub_100019080()
{
  result = qword_10012F8E0;
  if (!qword_10012F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F8E0);
  }

  return result;
}

uint64_t sub_1000190D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(&qword_10012F788, &qword_1000EFCC8);
    sub_100018FE4(a2, type metadata accessor for TemplateDescriptions);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4(v5);
  v7 = *(v6 + 32);
  v8 = sub_100019AC0();
  v9(v8);
  return v4;
}

unint64_t sub_1000191BC()
{
  result = qword_10012F900;
  if (!qword_10012F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F900);
  }

  return result;
}

uint64_t sub_100019210(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100006A38(a1, a2, a3, a4);
  sub_1000069E4(v5);
  v7 = *(v6 + 16);
  v8 = sub_100019AC0();
  v9(v8);
  return v4;
}

unint64_t sub_10001925C()
{
  result = qword_10012F930;
  if (!qword_10012F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F930);
  }

  return result;
}

unint64_t sub_1000192B0()
{
  result = qword_10012F938;
  if (!qword_10012F938)
  {
    sub_100002ABC(&unk_10012F850, &qword_1000EFCE8);
    sub_100018FE4(&qword_10012F3D0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F938);
  }

  return result;
}

uint64_t sub_10001936C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 16);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_1000193C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_100019420()
{
  result = qword_10012F948;
  if (!qword_10012F948)
  {
    sub_100002ABC(&unk_10012F850, &qword_1000EFCE8);
    sub_100018FE4(&qword_10012F3F8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F948);
  }

  return result;
}

unint64_t sub_1000194DC()
{
  result = qword_10012F950;
  if (!qword_10012F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F950);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemplateDescriptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000195FCLL);
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

uint64_t getEnumTagSinglePayload for EventViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EventViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x100019788);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000197C4()
{
  result = qword_10012F958;
  if (!qword_10012F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F958);
  }

  return result;
}

unint64_t sub_10001981C()
{
  result = qword_10012F960;
  if (!qword_10012F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F960);
  }

  return result;
}

unint64_t sub_100019874()
{
  result = qword_10012F968;
  if (!qword_10012F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F968);
  }

  return result;
}

unint64_t sub_1000198CC()
{
  result = qword_10012F970;
  if (!qword_10012F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F970);
  }

  return result;
}

unint64_t sub_100019924()
{
  result = qword_10012F978;
  if (!qword_10012F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F978);
  }

  return result;
}

unint64_t sub_10001997C()
{
  result = qword_10012F980;
  if (!qword_10012F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F980);
  }

  return result;
}

uint64_t sub_100019AD8()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

uint64_t sub_100019B04@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_100019B58()
{

  return sub_1000EC6A4();
}

uint64_t sub_100019BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v9 = a1 + *(a3 + 20);

    return sub_100005B30(v9, a2, v8);
  }
}

uint64_t sub_100019C54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v8 = v5 + *(a4 + 20);

    return sub_1000028A0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ErrorView()
{
  result = qword_10012F9E0;
  if (!qword_10012F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019D2C()
{
  sub_100019DA8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100019DA8()
{
  if (!qword_10012EE20)
  {
    sub_1000EA3A4();
    v0 = sub_1000E9F94();
    if (!v1)
    {
      atomic_store(v0, &qword_10012EE20);
    }
  }
}

uint64_t sub_100019E1C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v62 = sub_1000EA3A4();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v62);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v53 - v6;
  v7 = (sub_100002A10(&qword_10012FA18, &qword_1000F0288) - 8);
  v8 = *(*v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = sub_100002A10(&qword_10012FA20, &qword_1000F0290);
  v13 = *(v12 - 8);
  v59 = v12 - 8;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v56 = &v53 - v16;
  v17 = sub_100002A10(&qword_10012FA28, &qword_1000F0298);
  v18 = *(v17 - 8);
  v58 = v17 - 8;
  v19 = *(v18 + 64);
  sub_100009204();
  __chkstk_darwin(v20);
  v55 = &v53 - v21;
  v61 = sub_100002A10(&qword_10012FA30, &qword_1000F02A0);
  sub_1000069E4(v61);
  v23 = *(v22 + 64);
  sub_100009204();
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  v27 = sub_1000EA554();
  v54 = v1;
  sub_10001A32C(v1, v65);
  memcpy(v66, v65, sizeof(v66));
  memcpy(v67, v65, sizeof(v67));
  sub_10001A4E4(v66, __dst);
  sub_100008E48(v67, &qword_10012FA38, &qword_1000F02A8);
  memcpy(v64 + 7, v66, 0x50uLL);
  v28 = *(v1 + 64);
  KeyPath = swift_getKeyPath();
  LOBYTE(v65[0]) = v27;
  memcpy(v65 + 1, v64, 0x57uLL);
  v65[11] = KeyPath;
  v65[12] = v28;

  sub_1000EA664();
  sub_100002A10(&qword_10012FA40, &qword_1000F02E0);
  sub_10001A55C();
  sub_1000EA874();
  memcpy(__dst, v65, 0x68uLL);
  sub_100008E48(__dst, &qword_10012FA40, &qword_1000F02E0);
  v30 = sub_1000EA9C4();
  v31 = swift_getKeyPath();
  v32 = &v11[v7[11]];
  *v32 = v31;
  v32[1] = v30;
  v33 = type metadata accessor for ErrorView();
  v34 = v54 + *(v33 + 20);
  v35 = v57;
  sub_10003E504(v33, v36, v37, v38, v39, v40, v41, v42, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64[0]);
  v43 = v60;
  v44 = v62;
  (*(v2 + 104))(v60, enum case for ColorSchemeContrast.increased(_:), v62);
  LOBYTE(v34) = sub_1000EA394();
  v45 = *(v2 + 8);
  v45(v43, v44);
  v45(v35, v44);
  if (v34)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.6;
  }

  v47 = v56;
  sub_10001A650(v11, v56, &qword_10012FA18, &qword_1000F0288);
  *(v47 + *(v59 + 44)) = v46;
  v48 = swift_getKeyPath();
  v49 = v47;
  v50 = v55;
  sub_10001A650(v49, v55, &qword_10012FA20, &qword_1000F0290);
  v51 = v50 + *(v58 + 44);
  *v51 = v48;
  *(v51 + 8) = 1;
  sub_1000EABC4();
  sub_1000EA0A4();
  sub_10001A650(v50, v26, &qword_10012FA28, &qword_1000F0298);
  memcpy(&v26[*(v61 + 36)], v65, 0x70uLL);
  sub_10001A6B0();
  sub_1000EA834();
  return sub_10001A974(v26);
}

uint64_t sub_10001A32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(a1 + 8);
  v16 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v17 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v7)
  {
    v14 = *(a1 + 72);
    KeyPath = swift_getKeyPath();
    v9 = v6 & 1;
    sub_10000673C(v4, v5, v6 & 1);

    v10 = KeyPath;

    v11 = v4;
    v12 = v5;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v14 = 0;
  }

  sub_10001A9D4(v4, v5, v6, v7);
  sub_10000673C(v16, v15, v3);

  sub_10000673C(v16, v15, v3);

  sub_10001AA18(v11, v12, v9, v7);
  sub_10001AA68(v11, v12, v9, v7);
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v3;
  *(a2 + 24) = v17;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v9;
  *(a2 + 56) = v7;
  *(a2 + 64) = v10;
  *(a2 + 72) = v14;
  sub_10001AA68(v11, v12, v9, v7);
  sub_1000058EC(v16, v15, v3);
}

uint64_t sub_10001A4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012FA38, &qword_1000F02A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001A55C()
{
  result = qword_10012FA48;
  if (!qword_10012FA48)
  {
    sub_100002ABC(&qword_10012FA40, &qword_1000F02E0);
    sub_100006988(&qword_10012FA50, &qword_10012FA58, &qword_1000F02E8);
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA48);
  }

  return result;
}

uint64_t sub_10001A650(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A10(a3, a4);
  sub_1000069E4(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_10001A6B0()
{
  result = qword_10012FA70;
  if (!qword_10012FA70)
  {
    sub_100002ABC(&qword_10012FA30, &qword_1000F02A0);
    sub_10001A73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA70);
  }

  return result;
}

unint64_t sub_10001A73C()
{
  result = qword_10012FA78;
  if (!qword_10012FA78)
  {
    sub_100002ABC(&qword_10012FA28, &qword_1000F0298);
    sub_10001A7F4();
    sub_100006988(&qword_10012FAA0, &qword_10012FAA8, &qword_1000F20D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA78);
  }

  return result;
}

unint64_t sub_10001A7F4()
{
  result = qword_10012FA80;
  if (!qword_10012FA80)
  {
    sub_100002ABC(&qword_10012FA20, &qword_1000F0290);
    sub_10001A880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA80);
  }

  return result;
}

unint64_t sub_10001A880()
{
  result = qword_10012FA88;
  if (!qword_10012FA88)
  {
    sub_100002ABC(&qword_10012FA18, &qword_1000F0288);
    sub_100002ABC(&qword_10012FA40, &qword_1000F02E0);
    sub_10001A55C();
    swift_getOpaqueTypeConformance2();
    sub_100006988(&qword_10012FA90, &qword_10012FA98, &unk_1000F2ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FA88);
  }

  return result;
}

uint64_t sub_10001A974(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012FA30, &qword_1000F02A0);
  sub_1000069E4(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10001A9D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000673C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001AA18(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000673C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001AA68(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000058EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001AAB8@<X0>(void *a1@<X8>)
{
  result = sub_1000EA174();
  *a1 = v3;
  return result;
}

uint64_t sub_10001AAE4@<X0>(void *a1@<X8>)
{
  result = sub_1000EA174();
  *a1 = v3;
  return result;
}

uint64_t sub_10001AB60()
{
  sub_100002ABC(&qword_10012FA30, &qword_1000F02A0);
  sub_10001A6B0();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_10001ABC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10001ABD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10001AC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001AC6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EB2B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherDataViewModel();
  v9 = sub_1000069E4(v8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = type metadata accessor for ForecastEntry.Model(0);
  v18 = sub_1000069E4(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v23 + 28), v22, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001B014(v22, v16);
    sub_10000DA34(v16, v14, type metadata accessor for WeatherDataViewModel);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v29 = *(v4 + 32);
      v29(v7, v14, v3);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v30 = sub_1000E9F64();
      sub_100008CB8(v30, qword_100145C10);
      v31 = sub_1000E9F44();
      v32 = sub_1000EC1B4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Making Sunrise/Sunset widget view model entry from aggregate weather", v33, 2u);
      }

      sub_10001B078(v16);
      v29(a1, v7, v3);
      v28 = 0;
    }

    else
    {
      sub_10001B078(v14);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v24 = sub_1000E9F64();
      sub_100008CB8(v24, qword_100145C10);
      v25 = sub_1000E9F44();
      v26 = sub_1000EC194();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Expected sunriseSunset but got aggregate or instant", v27, 2u);
      }

      sub_10001B078(v16);
      v28 = 1;
    }
  }

  else if (*v22)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  return sub_1000028A0(a1, v28, 2, v3);
}

uint64_t sub_10001B014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B078(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001B0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100002A10(&qword_10012FAB0, &qword_1000F0468);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v47 - v11;
  v13 = sub_100002A10(&qword_10012FAB8, &qword_1000F0470);
  v49 = sub_1000090D4(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v19 = sub_100002A10(&qword_10012FAC0, &qword_1000F0478);
  v51 = sub_1000090D4(v19);
  v52 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v54 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for RainContentView();
  sub_10001B7D8(&qword_10012FAC8, type metadata accessor for RainContentView);
  sub_10001B7D8(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_10001B820();
  sub_1000EA474();
  sub_1000058EC(v24, v26, a1 & 1);

  (*(v8 + 8))(v12, v5);
  sub_1000EA354();
  v29 = sub_100015CA8();
  v31 = v30;
  LOBYTE(v12) = v32;
  v54 = v5;
  v55 = v28;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v48;
  v34 = v49;
  sub_1000EA444();
  sub_1000058EC(v29, v31, v12 & 1);

  (*(v50 + 8))(v18, v34);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v36 = sub_1000EBC44();
  sub_1000090D4(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F03E0;
  v43 = v42 + v41;
  v44 = *(v38 + 104);
  v44(v43, enum case for WidgetFamily.accessoryCircular(_:), v36);
  v44(v43 + v40, enum case for WidgetFamily.accessoryInline(_:), v36);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1000EA454();

  return (*(v52 + 8))(v35, v45);
}

uint64_t sub_10001B610@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RainContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001B68C()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.RainComplication(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_10001B7A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001B68C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001B7D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001B820()
{
  result = qword_10012FAD8;
  if (!qword_10012FAD8)
  {
    sub_100002ABC(&qword_10012FAB0, &qword_1000F0468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FAD8);
  }

  return result;
}

uint64_t sub_10001B888()
{
  sub_100002ABC(&qword_10012FAC0, &qword_1000F0478);
  sub_100002ABC(&qword_10012FAB8, &qword_1000F0470);
  sub_100002ABC(&qword_10012FAB0, &qword_1000F0468);
  sub_10001B820();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001B960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_10001BA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for RainContentView()
{
  result = qword_10012FB38;
  if (!qword_10012FB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001BB34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  sub_10001D3D8(v2, &v20 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC44();
    sub_1000069E4(v15);
    return (*(v16 + 32))(a1, v14);
  }

  else
  {
    v18 = *v14;
    sub_1000EC1A4();
    v19 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001BD14@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v86 = sub_100002A10(&qword_10012FB70, &qword_1000F0520);
  v1 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v87 = &v65 - v2;
  v92 = sub_100002A10(&qword_10012FB78, &qword_1000F0528);
  v3 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v88 = &v65 - v4;
  v84 = type metadata accessor for RainInlineContentView();
  v5 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100002A10(&qword_10012FB80, &qword_1000F0530);
  v7 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v82 = &v65 - v8;
  v80 = sub_100002A10(&qword_10012FB88, &qword_1000F0538);
  v9 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v68 = &v65 - v10;
  v83 = sub_100002A10(&qword_10012FB90, &qword_1000F0540);
  v11 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v85 = &v65 - v12;
  v89 = sub_100002A10(&qword_10012FB98, &qword_1000F0548);
  v13 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v91 = &v65 - v14;
  v77 = sub_100002A10(&qword_10012FBA0, &qword_1000F0550);
  v15 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v78 = &v65 - v16;
  v90 = sub_100002A10(&qword_10012FBA8, &qword_1000F0558);
  v17 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v81 = &v65 - v18;
  v76 = type metadata accessor for RainCircularContentView();
  v19 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v67 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100002A10(&qword_10012FBB0, &qword_1000F0560);
  v21 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v70 = &v65 - v22;
  v73 = sub_100002A10(&qword_10012FBB8, &qword_1000F0568);
  v23 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v25 = &v65 - v24;
  v26 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v65 - v31;
  v33 = sub_1000EB504();
  v75 = *(v33 - 8);
  v34 = *(v75 + 64);
  v35 = __chkstk_darwin(v33);
  v37 = &v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v65 - v38;
  v72 = sub_100002A10(&qword_10012FBC8, &qword_1000F0570);
  v40 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v74 = &v65 - v41;
  v42 = sub_1000EBC44();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v65 = &v65 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = &v65 - v47;
  sub_10001BB34(&v65 - v47);
  v66 = v43;
  v49 = (*(v43 + 88))(v48, v42);
  if (v49 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    sub_10001CC70(2, v32);
    if (sub_100005B30(v32, 1, v33) == 1)
    {
      sub_10001CDC8(v32);
      sub_10004CD84(v25);
      sub_10000EBC4(v25, v70, &qword_10012FBB8, &qword_1000F0568);
      swift_storeEnumTagMultiPayload();
      sub_10001D094(&qword_10012FC00, type metadata accessor for RainCircularContentView);
      sub_10001D0DC();
      v50 = v74;
      sub_1000EA4A4();
      sub_100008E48(v25, &qword_10012FBB8, &qword_1000F0568);
    }

    else
    {
      v53 = v75;
      (*(v75 + 32))(v39, v32, v33);
      v54 = v67;
      (*(v53 + 16))(v67, v39, v33);
      sub_10001D2BC(v54, v70, type metadata accessor for RainCircularContentView);
      swift_storeEnumTagMultiPayload();
      sub_10001D094(&qword_10012FC00, type metadata accessor for RainCircularContentView);
      sub_10001D0DC();
      v50 = v74;
      sub_1000EA4A4();
      sub_10001D380(v54, type metadata accessor for RainCircularContentView);
      (*(v53 + 8))(v39, v33);
    }

    v55 = &qword_10012FBC8;
    v56 = &qword_1000F0570;
    sub_10000EBC4(v50, v78, &qword_10012FBC8, &qword_1000F0570);
    swift_storeEnumTagMultiPayload();
    sub_10001CFD8();
    v57 = v81;
    sub_1000EA4A4();
    sub_10000EBC4(v57, v91, &qword_10012FBA8, &qword_1000F0558);
    swift_storeEnumTagMultiPayload();
    sub_10001D238(&qword_10012FBF0, &qword_10012FBA8, &qword_1000F0558, sub_10001CFD8);
    sub_10001D238(&qword_10012FC20, &qword_10012FB78, &qword_1000F0528, sub_10001CF1C);
    sub_1000EA4A4();
    sub_100008E48(v57, &qword_10012FBA8, &qword_1000F0558);
    v58 = v50;
    return sub_100008E48(v58, v55, v56);
  }

  if (v49 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1000EC3E4(57);
    v96._countAndFlagsBits = 0xD000000000000021;
    v96._object = 0x80000001000FB1A0;
    sub_1000EBF44(v96);
    v63 = v65;
    sub_10001BB34(v65);
    sub_10001D094(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v97._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v97);

    (*(v66 + 8))(v63, v42);
    v98._object = 0x80000001000FB510;
    v98._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v98);
  }

  else
  {
    v51 = v85;
    if (v49 == enum case for WidgetFamily.accessoryInline(_:))
    {
      sub_10001CC70(0, v30);
      if (sub_100005B30(v30, 1, v33) == 1)
      {
        sub_10001CDC8(v30);
        v52 = v68;
        sub_10009CB58(v68);
        sub_10000EBC4(v52, v82, &qword_10012FB88, &qword_1000F0538);
        swift_storeEnumTagMultiPayload();
        sub_10001D094(&qword_10012FBD0, type metadata accessor for RainInlineContentView);
        sub_10001CE30();
        sub_1000EA4A4();
        sub_100008E48(v52, &qword_10012FB88, &qword_1000F0538);
      }

      else
      {
        v59 = v75;
        (*(v75 + 32))(v37, v30, v33);
        v60 = v69;
        (*(v59 + 16))(v69, v37, v33);
        sub_10001D2BC(v60, v82, type metadata accessor for RainInlineContentView);
        swift_storeEnumTagMultiPayload();
        sub_10001D094(&qword_10012FBD0, type metadata accessor for RainInlineContentView);
        sub_10001CE30();
        sub_1000EA4A4();
        sub_10001D380(v60, type metadata accessor for RainInlineContentView);
        (*(v59 + 8))(v37, v33);
      }

      v55 = &qword_10012FB90;
      v56 = &qword_1000F0540;
      sub_10000EBC4(v51, v87, &qword_10012FB90, &qword_1000F0540);
      swift_storeEnumTagMultiPayload();
      sub_10001CF1C();
      v61 = v88;
      sub_1000EA4A4();
      sub_10000EBC4(v61, v91, &qword_10012FB78, &qword_1000F0528);
      swift_storeEnumTagMultiPayload();
      sub_10001D238(&qword_10012FBF0, &qword_10012FBA8, &qword_1000F0558, sub_10001CFD8);
      sub_10001D238(&qword_10012FC20, &qword_10012FB78, &qword_1000F0528, sub_10001CF1C);
      sub_1000EA4A4();
      sub_100008E48(v61, &qword_10012FB78, &qword_1000F0528);
      v58 = v51;
      return sub_100008E48(v58, v55, v56);
    }

    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1000EC3E4(58);
    v99._countAndFlagsBits = 0xD000000000000022;
    v99._object = 0x80000001000FB150;
    sub_1000EBF44(v99);
    v64 = v65;
    sub_10001BB34(v65);
    sub_10001D094(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v100._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v100);

    (*(v66 + 8))(v64, v42);
    v101._object = 0x80000001000FB510;
    v101._countAndFlagsBits = 0xD000000000000016;
    sub_1000EBF44(v101);
  }

  result = sub_1000EC464();
  __break(1u);
  return result;
}

uint64_t sub_10001CC70@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AggregateWeatherViewModel(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RainComplicationDataStatus();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + *(type metadata accessor for RainContentView() + 20);
  sub_100040E28(v12);
  if (sub_100005B30(v12, 2, v5))
  {
    v14 = 1;
  }

  else
  {
    sub_10001D31C(v12, v8);
    sub_100076750(v8, a1, a2);
    sub_10001D380(v8, type metadata accessor for AggregateWeatherViewModel);
    v14 = 0;
  }

  v15 = sub_1000EB504();
  return sub_1000028A0(a2, v14, 1, v15);
}

uint64_t sub_10001CDC8(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012FBC0, &unk_1000F6860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001CE30()
{
  result = qword_10012FBD8;
  if (!qword_10012FBD8)
  {
    sub_100002ABC(&qword_10012FB88, &qword_1000F0538);
    swift_getOpaqueTypeConformance2();
    sub_10001D094(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBD8);
  }

  return result;
}

unint64_t sub_10001CF1C()
{
  result = qword_10012FBE8;
  if (!qword_10012FBE8)
  {
    sub_100002ABC(&qword_10012FB90, &qword_1000F0540);
    sub_10001D094(&qword_10012FBD0, type metadata accessor for RainInlineContentView);
    sub_10001CE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBE8);
  }

  return result;
}

unint64_t sub_10001CFD8()
{
  result = qword_10012FBF8;
  if (!qword_10012FBF8)
  {
    sub_100002ABC(&qword_10012FBC8, &qword_1000F0570);
    sub_10001D094(&qword_10012FC00, type metadata accessor for RainCircularContentView);
    sub_10001D0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBF8);
  }

  return result;
}

uint64_t sub_10001D094(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001D0DC()
{
  result = qword_10012FC08;
  if (!qword_10012FC08)
  {
    sub_100002ABC(&qword_10012FBB8, &qword_1000F0568);
    sub_100002ABC(&qword_10012FC10, &qword_1000F2060);
    sub_10001D1D4();
    swift_getOpaqueTypeConformance2();
    sub_10001D094(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC08);
  }

  return result;
}

unint64_t sub_10001D1D4()
{
  result = qword_10012FC18;
  if (!qword_10012FC18)
  {
    sub_100002ABC(&qword_10012FC10, &qword_1000F2060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC18);
  }

  return result;
}

uint64_t sub_10001D238(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001D31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001D3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D44C()
{
  result = qword_10012FC28;
  if (!qword_10012FC28)
  {
    sub_100002ABC(&qword_10012FC30, &qword_1000F0578);
    sub_10001D4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC28);
  }

  return result;
}

unint64_t sub_10001D4D0()
{
  result = qword_10012FC38;
  if (!qword_10012FC38)
  {
    sub_100002ABC(&qword_10012FC40, &unk_1000F0580);
    sub_10001D238(&qword_10012FBF0, &qword_10012FBA8, &qword_1000F0558, sub_10001CFD8);
    sub_10001D238(&qword_10012FC20, &qword_10012FB78, &qword_1000F0528, sub_10001CF1C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FC38);
  }

  return result;
}

uint64_t sub_10001D5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DataDenseViewAttributes();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1000EB504();
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_10001D6C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DataDenseViewAttributes();
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1000EB504();
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

void sub_10001D7CC()
{
  type metadata accessor for DataDenseViewAttributes();
  if (v0 <= 0x3F)
  {
    sub_1000EB504();
    if (v1 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001D8A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000EA2C4();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  v11 = sub_1000069E4(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v22 - v14);
  v16 = *(type metadata accessor for DataDenseTableView(0) + 24);
  sub_100025FE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1000EA3A4();
    sub_100026C1C(v17);
    return (*(v18 + 32))(a1, v15);
  }

  else
  {
    v20 = *v15;
    sub_1000EC1A4();
    v21 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v2);
  }
}

uint64_t sub_10001DA88@<X0>(_BYTE *a1@<X8>)
{
  v31 = a1;
  v1 = sub_1000EA3A4();
  v2 = sub_1000090D4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  sub_100002A10(&qword_10012FCE0, &qword_1000F05F8);
  inited = swift_initStackObject();
  v30 = xmmword_1000F03E0;
  *(inited + 16) = xmmword_1000F03E0;
  v13 = sub_1000EA534();
  *(inited + 32) = v13;
  v14 = sub_1000EA554();
  *(inited + 33) = v14;
  v15 = sub_1000EA544();
  sub_1000EA544();
  if (sub_1000EA544() != v13)
  {
    v15 = sub_1000EA544();
  }

  sub_1000EA544();
  if (sub_1000EA544() != v14)
  {
    v15 = sub_1000EA544();
  }

  sub_10001D8A0(v11);
  v29 = v4;
  v16 = *(v4 + 88);
  v17 = v16(v11, v1);
  v18 = enum case for ColorSchemeContrast.standard(_:);
  if (v17 != enum case for ColorSchemeContrast.standard(_:))
  {
    if (v17 == enum case for ColorSchemeContrast.increased(_:))
    {
      v19 = sub_1000EA554();
      v15 = sub_1000EA544();
      sub_1000EA544();
      if (sub_1000EA544() != v19)
      {
        v15 = sub_1000EA544();
      }
    }

    else
    {
      (*(v29 + 8))(v11, v1);
    }
  }

  *v31 = v15;
  v20 = swift_initStackObject();
  *(v20 + 16) = v30;
  v21 = sub_1000EA534();
  *(v20 + 32) = v21;
  v22 = sub_1000EA554();
  *(v20 + 33) = v22;
  v23 = sub_1000EA544();
  sub_1000EA544();
  if (sub_1000EA544() != v21)
  {
    v23 = sub_1000EA544();
  }

  sub_1000EA544();
  if (sub_1000EA544() != v22)
  {
    v23 = sub_1000EA544();
  }

  sub_10001D8A0(v9);
  v24 = v16(v9, v1);
  if (v24 != v18)
  {
    if (v24 == enum case for ColorSchemeContrast.increased(_:))
    {
      v25 = sub_1000EA554();
      v23 = sub_1000EA544();
      sub_1000EA544();
      if (sub_1000EA544() != v25)
      {
        v23 = sub_1000EA544();
      }
    }

    else
    {
      (*(v29 + 8))(v9, v1);
    }
  }

  v26 = sub_100002A10(&qword_10012FCE8, &qword_1000F0600);
  return sub_10001DE00(v23, &v31[*(v26 + 44)]);
}

uint64_t sub_10001DE00@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v59) = a1;
  v65 = a2;
  v64 = sub_100002A10(&qword_10012FCF0, &qword_1000F0608);
  v2 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v58 = &v56 - v3;
  v61 = sub_100002A10(&qword_10012FCF8, &qword_1000F0610);
  v4 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v63 = &v56 - v5;
  v62 = sub_100002A10(&qword_10012FD00, &qword_1000F0618);
  v6 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v8 = &v56 - v7;
  v9 = sub_100002A10(&qword_10012FD08, &qword_1000F0620);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = sub_100002A10(&qword_10012FD10, &qword_1000F0628);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v56 - v21;
  v23 = sub_100002A10(&qword_10012FD18, &qword_1000F0630);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v56 - v28;
  v30 = sub_100002A10(&qword_10012FD20, &qword_1000F0638);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v56 - v35;
  v37 = sub_1000EA534();
  sub_1000EA544();
  if (sub_1000EA544() == v37)
  {
    *v36 = sub_1000EA3C4();
    *(v36 + 1) = 0;
    v36[16] = 0;
    v38 = sub_100002A10(&qword_10012FD50, &qword_1000F0658);
    v39 = v60;
    sub_100020794(v60, &v36[*(v38 + 44)]);
    *v29 = sub_1000EA3C4();
    *(v29 + 1) = 0;
    v29[16] = 0;
    v40 = sub_100002A10(&qword_10012FD58, &qword_1000F0660);
    sub_1000210D8(v39, &v29[*(v40 + 44)]);
    *v22 = sub_1000EA3D4();
    *(v22 + 1) = 0;
    v22[16] = 0;
    v41 = sub_100002A10(&qword_10012FD28, &qword_1000F0640);
    sub_100021A3C(v39, &v22[*(v41 + 44)]);
    *v15 = sub_1000EA3D4();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v42 = sub_100002A10(&qword_10012FD30, &qword_1000F0648);
    sub_100021ECC(v39, &v15[*(v42 + 44)]);
    sub_100025FE0();
    v56 = v34;
    sub_100025FE0();
    v57 = v36;
    v58 = v22;
    sub_100025FE0();
    v60 = v15;
    sub_100025FE0();
    sub_100025FE0();
    v43 = sub_100002A10(&qword_10012FD60, &qword_1000F0668);
    v44 = v43[12];
    v59 = v29;
    sub_100025FE0();
    v45 = v43[16];
    sub_100025FE0();
    v46 = v43[20];
    sub_100025FE0();
    sub_100008E48(v13, &qword_10012FD08, &qword_1000F0620);
    sub_100008E48(v20, &qword_10012FD10, &qword_1000F0628);
    sub_100008E48(v27, &qword_10012FD18, &qword_1000F0630);
    sub_100008E48(v56, &qword_10012FD20, &qword_1000F0638);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_10012FD40, &qword_10012FD00, &qword_1000F0618);
    sub_100006988(&qword_10012FD48, &qword_10012FCF0, &qword_1000F0608);
    sub_1000EA4A4();
    sub_100008E48(v8, &qword_10012FD00, &qword_1000F0618);
    sub_100008E48(v60, &qword_10012FD08, &qword_1000F0620);
    sub_100008E48(v58, &qword_10012FD10, &qword_1000F0628);
    sub_100008E48(v59, &qword_10012FD18, &qword_1000F0630);
    v47 = v57;
    v48 = &qword_10012FD20;
    v49 = &qword_1000F0638;
  }

  else
  {
    *v22 = sub_1000EA3D4();
    *(v22 + 1) = 0;
    v22[16] = 0;
    v50 = sub_100002A10(&qword_10012FD28, &qword_1000F0640);
    v51 = v60;
    sub_100021A3C(v60, &v22[*(v50 + 44)]);
    *v15 = sub_1000EA3D4();
    *(v15 + 1) = 0;
    v15[16] = 0;
    v52 = sub_100002A10(&qword_10012FD30, &qword_1000F0648);
    sub_100021ECC(v51, &v15[*(v52 + 44)]);
    sub_100025FE0();
    sub_100025FE0();
    v53 = v58;
    sub_100025FE0();
    v54 = *(sub_100002A10(&qword_10012FD38, &qword_1000F0650) + 48);
    sub_100025FE0();
    sub_100008E48(v13, &qword_10012FD08, &qword_1000F0620);
    sub_100008E48(v20, &qword_10012FD10, &qword_1000F0628);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_10012FD40, &qword_10012FD00, &qword_1000F0618);
    sub_100006988(&qword_10012FD48, &qword_10012FCF0, &qword_1000F0608);
    sub_1000EA4A4();
    sub_100008E48(v53, &qword_10012FCF0, &qword_1000F0608);
    sub_100008E48(v15, &qword_10012FD08, &qword_1000F0620);
    v47 = v22;
    v48 = &qword_10012FD10;
    v49 = &qword_1000F0628;
  }

  return sub_100008E48(v47, v48, v49);
}

uint64_t sub_10001E658()
{
  v0 = sub_1000EAD74();
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  __chkstk_darwin(v0);
  v49 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44 = &v40 - v5;
  v43 = sub_1000EC184();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v43);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EC174();
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  v15 = *(v14 - 8);
  v45 = v14;
  v46 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v41 = &v40 - v17;
  v18 = sub_1000E9134();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000EB674();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB934();
  sub_1000EB624();
  (*(v24 + 8))(v27, v23);
  sub_1000E9114();
  (*(v19 + 8))(v22, v18);
  v28 = v43;
  (*(v6 + 104))(v9, enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:), v43);
  v29 = sub_1000E86A4();
  v30 = v44;
  sub_1000028A0(v44, 1, 1, v29);
  sub_1000EC0D4();
  v31 = v42;
  sub_1000EAD14();

  sub_100008E48(v30, &qword_10012FD68, &unk_1000F5370);
  (*(v6 + 8))(v9, v28);
  v32 = v49;
  v33 = v50;
  v34 = v51;
  (*(v50 + 104))(v49, enum case for WeatherFormatPlaceholder.none(_:), v51);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000221F8(&qword_10012FD78, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
  v35 = v45;
  v36 = v47;
  v37 = v41;
  v38 = sub_1000E8304();

  (*(v33 + 8))(v32, v34);
  (*(v48 + 8))(v31, v36);
  (*(v46 + 8))(v37, v35);
  return v38;
}

uint64_t sub_10001EBD4()
{
  v0 = sub_1000EAD74();
  v52 = *(v0 - 8);
  v53 = v0;
  v1 = *(v52 + 64);
  __chkstk_darwin(v0);
  v51 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = (&v43 - v5);
  v6 = sub_1000EC184();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000EC174();
  v54 = *(v48 - 8);
  v10 = *(v54 + 64);
  v11 = __chkstk_darwin(v48);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v43 = &v43 - v18;
  v19 = sub_1000E9134();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000EB674();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB934();
  sub_1000EB624();
  (*(v25 + 8))(v28, v24);
  sub_1000E9114();
  (*(v20 + 8))(v23, v19);
  v30 = v44;
  v29 = v45;
  (*(v44 + 104))(v9, enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:), v45);
  v31 = sub_1000E86A4();
  v32 = v47;
  sub_1000028A0(v47, 1, 1, v31);
  sub_1000EC0D4();
  sub_1000EAD14();

  sub_100008E48(v32, &qword_10012FD68, &unk_1000F5370);
  (*(v30 + 8))(v9, v29);
  v33 = v46;
  sub_1000EC164();
  v34 = *(v54 + 8);
  v54 += 8;
  v47 = v34;
  v35 = v48;
  (v34)(v14, v48);
  v36 = v51;
  v37 = v52;
  v38 = v53;
  (*(v52 + 104))(v51, enum case for WeatherFormatPlaceholder.none(_:), v53);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000221F8(&qword_10012FD78, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
  v39 = v49;
  v40 = v43;
  v41 = sub_1000E8304();

  (*(v37 + 8))(v36, v38);
  (v47)(v33, v35);
  (*(v50 + 8))(v40, v39);
  return v41;
}

uint64_t sub_10001F198()
{
  v0 = sub_1000EAD74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EC224();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_1000EB674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB934();
  sub_1000EB5F4();
  (*(v15 + 8))(v18, v14);
  sub_1000EAD24();
  v19 = v0;
  (*(v1 + 104))(v4, enum case for WeatherFormatPlaceholder.none(_:), v0);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000221F8(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v20 = v10;
  v21 = v26;
  v22 = sub_1000E8304();

  (*(v1 + 8))(v4, v19);
  (*(v27 + 8))(v9, v21);
  (*(v25 + 8))(v13, v20);
  return v22;
}

uint64_t sub_10001F500(char a1, char a2)
{
  v4 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_1000EB674();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EB584();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v18 = qword_100145E00;
      v28._countAndFlagsBits = 0x80000001000FB770;
      v19._countAndFlagsBits = 1684957527;
      v19._object = 0xE400000000000000;
      v23.value._countAndFlagsBits = 0;
      v23.value._object = 0;
      v24.super.isa = v18;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      goto LABEL_25;
    case 2:
      sub_1000EB934();
      sub_1000EB594();
      (*(v9 + 8))(v12, v8);
      if (sub_100005B30(v7, 1, v13) == 1)
      {
        sub_100008E48(v7, &qword_10012FD80, &unk_1000F06B8);
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v20 = qword_100145E00;
        v28._countAndFlagsBits = 0x80000001000FB730;
        v30._countAndFlagsBits = 0x79746964696D7548;
        v30._object = 0xE800000000000000;
        v31.value._countAndFlagsBits = 0;
        v31.value._object = 0;
        v21.super.isa = v20;
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        v22 = sub_1000E8464(v30, v31, v21, v32, v28);
      }

      else
      {
        (*(v14 + 32))(v17, v7, v13);
        v22 = sub_1000EB574();
        (*(v14 + 8))(v17, v13);
      }

      return v22;
    case 3:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v18 = qword_100145E00;
      v28._countAndFlagsBits = 0x80000001000FB6E0;
      v19._countAndFlagsBits = 4806229;
      v19._object = 0xE300000000000000;
      goto LABEL_24;
    case 4:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v18 = qword_100145E00;
      v28._countAndFlagsBits = 0x80000001000FB690;
      v19._countAndFlagsBits = 0x694C20736C656546;
      v19._object = 0xEA0000000000656BLL;
      goto LABEL_24;
    default:
      if (a2)
      {
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v18 = qword_100145E00;
        v28._countAndFlagsBits = 0x80000001000FB820;
        v19._countAndFlagsBits = 0x706963657250;
        v19._object = 0xE600000000000000;
      }

      else
      {
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v18 = qword_100145E00;
        v28._countAndFlagsBits = 0x80000001000FB7B0;
        v19._countAndFlagsBits = 0x7469706963657250;
        v19._object = 0xED00006E6F697461;
      }

LABEL_24:
      v23.value._countAndFlagsBits = 0;
      v23.value._object = 0;
      v24.super.isa = v18;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
LABEL_25:
      v27 = sub_1000E8464(v19, v23, v24, v25, v28);

      return v27;
  }
}

uint64_t sub_10001FA8C(char a1)
{
  v2 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_1000EB674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000EB584();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v16 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FB610;
      v17._countAndFlagsBits = 1684957527;
      v17._object = 0xE400000000000000;
      v21.value._countAndFlagsBits = 0;
      v21.value._object = 0;
      v22.super.isa = v16;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      goto LABEL_19;
    case 2:
      sub_1000EB934();
      sub_1000EB594();
      (*(v7 + 8))(v10, v6);
      if (sub_100005B30(v5, 1, v11) == 1)
      {
        sub_100008E48(v5, &qword_10012FD80, &unk_1000F06B8);
        if (qword_10012EBF8 != -1)
        {
          swift_once();
        }

        v18 = qword_100145E00;
        v26._countAndFlagsBits = 0x80000001000FB5D0;
        v28._countAndFlagsBits = 0x79746964696D7548;
        v28._object = 0xE800000000000000;
        v29.value._countAndFlagsBits = 0;
        v29.value._object = 0;
        v19.super.isa = v18;
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        v20 = sub_1000E8464(v28, v29, v19, v30, v26);
      }

      else
      {
        (*(v12 + 32))(v15, v5, v11);
        v20 = sub_1000EB574();
        (*(v12 + 8))(v15, v11);
      }

      return v20;
    case 3:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v16 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FB580;
      v17._countAndFlagsBits = 0x7865646E49205655;
      v17._object = 0xE800000000000000;
      goto LABEL_15;
    case 4:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v16 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FB530;
      v17._countAndFlagsBits = 0x694C20736C656546;
      v17._object = 0xEA0000000000656BLL;
      goto LABEL_15;
    default:
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v16 = qword_100145E00;
      v26._countAndFlagsBits = 0x80000001000FB650;
      v17._countAndFlagsBits = 0x7469706963657250;
      v17._object = 0xED00006E6F697461;
LABEL_15:
      v21.value._countAndFlagsBits = 0;
      v21.value._object = 0;
      v22.super.isa = v16;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
LABEL_19:
      v24 = sub_1000E8464(v17, v21, v22, v23, v26);

      return v24;
  }
}

uint64_t sub_10001FFBC(char a1)
{
  v2 = sub_1000E9184();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  __chkstk_darwin(v2);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - v7;
  v8 = sub_1000EB674();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_1000EB584();
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000E83F4();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v21 = sub_1000E8444();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
      return sub_10001E658();
    case 2:
      sub_1000EB934();
      v28 = v41;
      sub_1000EB594();
      v29 = v46;
      v30 = *(v45 + 8);
      v30(v14, v46);
      if (sub_100005B30(v28, 1, v15) == 1)
      {
        sub_100008E48(v28, &qword_10012FD80, &unk_1000F06B8);
        sub_1000EB934();
        sub_1000EB644();
        v30(v12, v29);
        return sub_1000EC094(1);
      }

      else
      {
        v39 = v40;
        (*(v40 + 32))(v18, v28, v15);
        v37 = sub_10002058C();
        (*(v39 + 8))(v18, v15);
      }

      return v37;
    case 3:
      sub_1000EB934();
      v31 = v42;
      sub_1000EB634();
      v32 = v46;
      v45 = *(v45 + 8);
      (v45)(v12, v46);
      v33 = sub_1000E9164();
      v34 = v44;
      v35 = *(v43 + 8);
      v35(v31, v44);
      v48 = v33;
      sub_1000221A4();
      v48 = sub_1000EC3B4();
      v49 = v36;
      v50._countAndFlagsBits = 32;
      v50._object = 0xE100000000000000;
      sub_1000EBF44(v50);
      sub_1000EB934();
      sub_1000EB634();
      (v45)(v12, v32);
      sub_1000E9174();
      v35(v31, v34);
      v51._countAndFlagsBits = sub_1000E9144();
      sub_1000EBF44(v51);

      return v48;
    case 4:
      return sub_10001F198();
    default:
      v26 = v47 + *(type metadata accessor for DataDenseTableView(0) + 20);
      sub_1000EB4A4();
      sub_1000E83E4();
      (*(v22 + 8))(v25, v21);
      sub_1000221F8(&qword_10012FD90, &type metadata accessor for AttributedString.CharacterView);
      return sub_1000EBF64();
  }
}

uint64_t sub_10002058C()
{
  v0 = sub_1000EB544();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000EB554();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for CurrentObservationViewModel.AirQuality.Value.number(_:))
  {
    (*(v1 + 96))(v4, v0);
    v8[1] = *v4;
    sub_1000221A4();
    return sub_1000EC3B4();
  }

  else if (v5 == enum case for CurrentObservationViewModel.AirQuality.Value.category(_:))
  {
    (*(v1 + 96))(v4, v0);
    result = *v4;
    v7 = v4[1];
  }

  else
  {
    result = sub_1000EC5C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000206E4(unsigned __int8 a1)
{
  if (a1 - 2 >= 3)
  {
    if (a1)
    {

      return sub_10001EBD4();
    }

    else
    {
      v3 = v1 + *(type metadata accessor for DataDenseTableView(0) + 20);
      sub_1000EB4E4();
      return sub_1000EBF74();
    }
  }

  else
  {

    return sub_10001FFBC(a1);
  }
}

uint64_t sub_100020794@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v153 = a2;
  v166 = type metadata accessor for RowView(0);
  v3 = *(*(v166 - 8) + 64);
  v4 = __chkstk_darwin(v166);
  v157 = (&v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v156 = (&v138 - v7);
  v8 = __chkstk_darwin(v6);
  v155 = (&v138 - v9);
  v10 = __chkstk_darwin(v8);
  v154 = (&v138 - v11);
  v12 = __chkstk_darwin(v10);
  v147 = (&v138 - v13);
  v14 = __chkstk_darwin(v12);
  v152 = &v138 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = (&v138 - v17);
  v19 = __chkstk_darwin(v16);
  v161 = &v138 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v138 - v22);
  v24 = __chkstk_darwin(v21);
  v160 = &v138 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = (&v138 - v27);
  __chkstk_darwin(v26);
  v159 = &v138 - v29;
  v30 = [objc_opt_self() mainScreen];
  [v30 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v148 = v191;
  v149 = v193;
  v150 = v196;
  v151 = v195;
  v190 = 1;
  v188 = v192;
  v186 = v194;
  v158 = (a1 + *(type metadata accessor for DataDenseViewAttributes() + 20));
  v31 = *v158;
  v32 = sub_10001F500(*v158, 1);
  v145 = v33;
  v146 = v32;
  v34 = sub_10001FA8C(v31);
  v143 = v35;
  v144 = v34;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (!v31)
  {
    v40 = type metadata accessor for DataDenseTableView(0);
    v41 = a1 + *(v40 + 20);
    v38 = sub_1000EB4C4();
    v39 = v42;
    v43 = a1 + *(v40 + 20);
    v36 = sub_1000EB4F4();
  }

  v141 = v37;
  v142 = v36;
  v44 = sub_10001FFBC(v31);
  v139 = v45;
  v140 = v44;
  v138 = sub_1000206E4(v31);
  v47 = v46;
  v48 = v39;
  v49 = v38;
  v50 = v166;
  v51 = *(v166 + 40);
  v52 = sub_1000EBA54();
  v53 = *(v52 - 8);
  v164 = *(v53 + 16);
  v165 = v52;
  v163 = v53 + 16;
  v164(v28 + v51, a1);
  *(v28 + *(v50 + 44)) = swift_getKeyPath();
  v162 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  v54 = v145;
  *v28 = v146;
  v28[1] = v54;
  v55 = v143;
  v28[2] = v144;
  v28[3] = v55;
  v28[4] = v49;
  v28[5] = v48;
  v56 = v141;
  v28[6] = v142;
  v28[7] = v56;
  v57 = v139;
  v28[8] = v140;
  v28[9] = v57;
  v28[10] = v138;
  v28[11] = v47;
  sub_100025658();
  v58 = v158[1];
  v59 = sub_10001F500(v158[1], 1);
  v145 = v60;
  v146 = v59;
  v61 = sub_10001FA8C(v58);
  v143 = v62;
  v144 = v61;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  if (!v58)
  {
    v67 = type metadata accessor for DataDenseTableView(0);
    v68 = a1 + *(v67 + 20);
    v65 = sub_1000EB4C4();
    v66 = v69;
    v70 = a1 + *(v67 + 20);
    v63 = sub_1000EB4F4();
  }

  v141 = v64;
  v142 = v63;
  v140 = sub_10001FFBC(v58);
  v72 = v71;
  v73 = sub_1000206E4(v58);
  v75 = v74;
  v76 = v66;
  v77 = v166;
  (v164)(v23 + *(v166 + 40), a1, v165);
  *(v23 + *(v77 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v78 = v145;
  *v23 = v146;
  v23[1] = v78;
  v79 = v143;
  v23[2] = v144;
  v23[3] = v79;
  v23[4] = v65;
  v23[5] = v76;
  v80 = v141;
  v23[6] = v142;
  v23[7] = v80;
  v23[8] = v140;
  v23[9] = v72;
  v23[10] = v73;
  v23[11] = v75;
  sub_100025658();
  v81 = v158;
  v82 = v158[2];
  v83 = sub_10001F500(v158[2], 1);
  v145 = v84;
  v146 = v83;
  v85 = sub_10001FA8C(v82);
  v143 = v86;
  v144 = v85;
  if (v82)
  {
    v140 = 0;
    v141 = 0;
    v87 = 0;
    v142 = 0;
  }

  else
  {
    v88 = type metadata accessor for DataDenseTableView(0);
    v89 = a1 + *(v88 + 20);
    v90 = sub_1000EB4C4();
    v141 = v91;
    v142 = v90;
    v92 = a1 + *(v88 + 20);
    v140 = sub_1000EB4F4();
    v87 = v93;
  }

  v94 = sub_10001FFBC(v82);
  v96 = v95;
  v97 = sub_1000206E4(v82);
  v99 = v98;
  v100 = v166;
  (v164)(v18 + *(v166 + 40), a1, v165);
  *(v18 + *(v100 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v101 = v145;
  *v18 = v146;
  v18[1] = v101;
  v102 = v143;
  v18[2] = v144;
  v18[3] = v102;
  v103 = v141;
  v18[4] = v142;
  v18[5] = v103;
  v18[6] = v140;
  v18[7] = v87;
  v18[8] = v94;
  v18[9] = v96;
  v18[10] = v97;
  v18[11] = v99;
  sub_100025658();
  v104 = v81[3];
  v158 = sub_10001F500(v81[3], 1);
  v146 = v105;
  v106 = sub_10001FA8C(v104);
  v144 = v107;
  v145 = v106;
  if (v104)
  {
    v108 = 0;
    v109 = 0;
    v142 = 0;
    v143 = 0;
  }

  else
  {
    v110 = type metadata accessor for DataDenseTableView(0);
    v111 = a1 + *(v110 + 20);
    v112 = sub_1000EB4C4();
    v142 = v113;
    v143 = v112;
    v114 = a1 + *(v110 + 20);
    v108 = sub_1000EB4F4();
    v109 = v115;
  }

  v116 = sub_10001FFBC(v104);
  v118 = v117;
  v119 = sub_1000206E4(v104);
  v121 = v120;
  v122 = v166;
  v123 = v147;
  (v164)(v147 + *(v166 + 40), a1, v165);
  *(v123 + *(v122 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v125 = v145;
  v124 = v146;
  *v123 = v158;
  v123[1] = v124;
  v127 = v143;
  v126 = v144;
  v123[2] = v125;
  v123[3] = v126;
  v128 = v142;
  v123[4] = v127;
  v123[5] = v128;
  v123[6] = v108;
  v123[7] = v109;
  v123[8] = v116;
  v123[9] = v118;
  v123[10] = v119;
  v123[11] = v121;
  v129 = v152;
  sub_100025658();
  v173 = 0;
  v174 = v190;
  *v175 = *v189;
  *&v175[3] = *&v189[3];
  v176 = v148;
  v177 = v188;
  *v178 = *v187;
  *&v178[3] = *&v187[3];
  v179 = v149;
  v180 = v186;
  *v181 = *v185;
  *&v181[3] = *&v185[3];
  v182 = v151;
  v183 = v150;
  v184[0] = &v173;
  v130 = v159;
  v131 = v154;
  sub_1000256AC();
  v171 = 0;
  v172 = 0;
  v184[1] = v131;
  v184[2] = &v171;
  v132 = v160;
  v133 = v155;
  sub_1000256AC();
  v169 = 0;
  v170 = 0;
  v184[3] = v133;
  v184[4] = &v169;
  v134 = v161;
  v135 = v156;
  sub_1000256AC();
  v167 = 0;
  v168 = 0;
  v184[5] = v135;
  v184[6] = &v167;
  v136 = v157;
  sub_1000256AC();
  v184[7] = v136;
  sub_10003365C(v184, v153);
  sub_100025700(v129, type metadata accessor for RowView);
  sub_100025700(v134, type metadata accessor for RowView);
  sub_100025700(v132, type metadata accessor for RowView);
  sub_100025700(v130, type metadata accessor for RowView);
  sub_100025700(v136, type metadata accessor for RowView);
  sub_100025700(v135, type metadata accessor for RowView);
  sub_100025700(v133, type metadata accessor for RowView);
  return sub_100025700(v131, type metadata accessor for RowView);
}

uint64_t sub_1000210D8@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v118 = a2;
  v3 = type metadata accessor for RowView(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v121 = (&v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v120 = (&v102 - v8);
  v9 = __chkstk_darwin(v7);
  v119 = (&v102 - v10);
  v11 = __chkstk_darwin(v9);
  v13 = (&v102 - v12);
  v14 = __chkstk_darwin(v11);
  v117 = &v102 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = (&v102 - v17);
  v19 = __chkstk_darwin(v16);
  v126 = &v102 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v102 - v22);
  __chkstk_darwin(v21);
  v125 = &v102 - v24;
  v25 = [objc_opt_self() mainScreen];
  [v25 bounds];

  sub_1000EABC4();
  sub_1000E9FC4();
  v112 = v149;
  v113 = v151;
  v115 = v153;
  v114 = v154;
  v148 = 1;
  v146 = v150;
  v144 = v152;
  v124 = (a1 + *(type metadata accessor for DataDenseViewAttributes() + 20));
  v26 = v124[4];
  v116 = sub_10001F500(v124[4], 1);
  v111 = v27;
  v109 = sub_10001FA8C(v26);
  v108 = v28;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (!v26)
  {
    v33 = type metadata accessor for DataDenseTableView(0);
    v34 = a1 + *(v33 + 20);
    v31 = sub_1000EB4C4();
    v32 = v35;
    v36 = a1 + *(v33 + 20);
    v29 = sub_1000EB4F4();
  }

  v106 = v30;
  v107 = v29;
  v105 = sub_10001FFBC(v26);
  v104 = v37;
  v103 = sub_1000206E4(v26);
  v39 = v38;
  v40 = v32;
  v41 = v31;
  v42 = v3;
  v43 = *(v3 + 40);
  v44 = sub_1000EBA54();
  v45 = *(v44 - 8);
  v110 = *(v45 + 16);
  v123 = v45 + 16;
  v110(v23 + v43, a1, v44);
  *(v23 + *(v42 + 44)) = swift_getKeyPath();
  v122 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  v46 = v111;
  *v23 = v116;
  v23[1] = v46;
  v47 = v108;
  v23[2] = v109;
  v23[3] = v47;
  v23[4] = v41;
  v23[5] = v40;
  v48 = v106;
  v23[6] = v107;
  v23[7] = v48;
  v49 = v104;
  v23[8] = v105;
  v23[9] = v49;
  v23[10] = v103;
  v23[11] = v39;
  sub_100025658();
  v50 = v124[5];
  v106 = sub_10001F500(v124[5], 1);
  v109 = v51;
  v108 = sub_10001FA8C(v50);
  v107 = v52;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (!v50)
  {
    v57 = type metadata accessor for DataDenseTableView(0);
    v58 = a1 + *(v57 + 20);
    v55 = sub_1000EB4C4();
    v56 = v59;
    v60 = a1 + *(v57 + 20);
    v53 = sub_1000EB4F4();
  }

  v104 = v54;
  v105 = v53;
  v61 = sub_10001FFBC(v50);
  v103 = v62;
  v63 = sub_1000206E4(v50);
  v65 = v64;
  v66 = v18 + *(v42 + 40);
  v111 = v44;
  v67 = v44;
  v68 = v110;
  v110(v66, a1, v67);
  KeyPath = swift_getKeyPath();
  v116 = v42;
  *(v18 + *(v42 + 44)) = KeyPath;
  swift_storeEnumTagMultiPayload();
  v70 = v109;
  *v18 = v106;
  v18[1] = v70;
  v71 = v107;
  v18[2] = v108;
  v18[3] = v71;
  v18[4] = v55;
  v18[5] = v56;
  v72 = v104;
  v18[6] = v105;
  v18[7] = v72;
  v73 = v103;
  v18[8] = v61;
  v18[9] = v73;
  v18[10] = v63;
  v18[11] = v65;
  sub_100025658();
  v74 = v124[6];
  v124 = sub_10001F500(v124[6], 1);
  v109 = v75;
  v108 = sub_10001FA8C(v74);
  v107 = v76;
  v77 = v68;
  if (v74)
  {
    v78 = 0;
    v79 = 0;
    v106 = 0;
    v105 = 0;
  }

  else
  {
    v80 = type metadata accessor for DataDenseTableView(0);
    v81 = a1 + *(v80 + 20);
    v106 = sub_1000EB4C4();
    v105 = v82;
    v83 = a1 + *(v80 + 20);
    v78 = sub_1000EB4F4();
    v79 = v84;
  }

  v85 = sub_10001FFBC(v74);
  v87 = v86;
  v88 = sub_1000206E4(v74);
  v90 = v89;
  v91 = v116;
  v77(v13 + *(v116 + 40), a1, v111);
  *(v13 + *(v91 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v92 = v109;
  *v13 = v124;
  v13[1] = v92;
  v93 = v107;
  v13[2] = v108;
  v13[3] = v93;
  v94 = v105;
  v13[4] = v106;
  v13[5] = v94;
  v13[6] = v78;
  v13[7] = v79;
  v13[8] = v85;
  v13[9] = v87;
  v13[10] = v88;
  v13[11] = v90;
  v95 = v117;
  sub_100025658();
  v131 = 0;
  v132 = v148;
  *v133 = *v147;
  *&v133[3] = *&v147[3];
  v134 = v112;
  v135 = v146;
  *v136 = *v145;
  *&v136[3] = *&v145[3];
  v137 = v113;
  v138 = v144;
  *v139 = *v143;
  *&v139[3] = *&v143[3];
  v140 = v115;
  v141 = v114;
  v142[0] = &v131;
  v96 = v125;
  v97 = v119;
  sub_1000256AC();
  v129 = 0;
  v130 = 0;
  v142[1] = v97;
  v142[2] = &v129;
  v98 = v126;
  v99 = v120;
  sub_1000256AC();
  v127 = 0;
  v128 = 0;
  v142[3] = v99;
  v142[4] = &v127;
  v100 = v121;
  sub_1000256AC();
  v142[5] = v100;
  sub_1000336E8(v142, v118);
  sub_100025700(v95, type metadata accessor for RowView);
  sub_100025700(v98, type metadata accessor for RowView);
  sub_100025700(v96, type metadata accessor for RowView);
  sub_100025700(v100, type metadata accessor for RowView);
  sub_100025700(v99, type metadata accessor for RowView);
  return sub_100025700(v97, type metadata accessor for RowView);
}

uint64_t sub_100021A3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v86 = a2;
  v88 = type metadata accessor for ColumnView(0);
  v3 = *(*(v88 - 8) + 64);
  v4 = __chkstk_darwin(v88);
  v87 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v85 = &v71 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = (&v71 - v9);
  v11 = __chkstk_darwin(v8);
  v84 = &v71 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v71 - v14);
  __chkstk_darwin(v13);
  v17 = &v71 - v16;
  v82 = a1 + *(type metadata accessor for DataDenseViewAttributes() + 20);
  v18 = *(v82 + 7);
  v19 = sub_10001F500(*(v82 + 7), 0);
  v76 = v20;
  v77 = v19;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (!v18)
  {
    v25 = v17;
    v26 = type metadata accessor for DataDenseTableView(0);
    v27 = a1 + *(v26 + 20);
    v23 = sub_1000EB4C4();
    v24 = v28;
    v29 = *(v26 + 20);
    v17 = v25;
    v21 = sub_1000EB4F4();
  }

  v74 = v22;
  v75 = v21;
  v83 = v17;
  v30 = sub_10001FFBC(v18);
  v72 = v31;
  v73 = v30;
  v32 = sub_1000206E4(v18);
  v34 = v33;
  v35 = v88;
  v36 = *(v88 + 36);
  v37 = sub_1000EBA54();
  v38 = *(v37 - 8);
  v80 = *(v38 + 16);
  v81 = v37;
  v79 = v38 + 16;
  v80(v15 + v36, a1);
  *(v15 + *(v35 + 40)) = swift_getKeyPath();
  v78 = sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v39 = v76;
  *v15 = v77;
  v15[1] = v39;
  v15[2] = v23;
  v15[3] = v24;
  v40 = v74;
  v15[4] = v75;
  v15[5] = v40;
  v41 = v72;
  v15[6] = v73;
  v15[7] = v41;
  v15[8] = v32;
  v15[9] = v34;
  sub_100025658();
  v42 = *(v82 + 8);
  v82 = sub_10001F500(*(v82 + 8), 0);
  v77 = v43;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (!v42)
  {
    v48 = type metadata accessor for DataDenseTableView(0);
    v49 = a1 + *(v48 + 20);
    v46 = sub_1000EB4C4();
    v47 = v50;
    v51 = a1 + *(v48 + 20);
    v44 = sub_1000EB4F4();
    v45 = v52;
  }

  v76 = v44;
  v53 = sub_10001FFBC(v42);
  v55 = v54;
  v56 = sub_1000206E4(v42);
  v58 = v57;
  v59 = v88;
  (v80)(v10 + *(v88 + 36), a1, v81);
  *(v10 + *(v59 + 40)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v60 = v76;
  v61 = v77;
  *v10 = v82;
  v10[1] = v61;
  v10[2] = v46;
  v10[3] = v47;
  v10[4] = v60;
  v10[5] = v45;
  v10[6] = v53;
  v10[7] = v55;
  v10[8] = v56;
  v10[9] = v58;
  v62 = v84;
  sub_100025658();
  v63 = v83;
  v64 = v85;
  sub_1000256AC();
  v65 = v87;
  sub_1000256AC();
  v66 = v86;
  *v86 = 0x4000000000000000;
  *(v66 + 8) = 0;
  v67 = sub_100002A10(&qword_10012FDA0, &qword_1000F0708);
  v68 = *(v67 + 48);
  sub_1000256AC();
  v69 = *(v67 + 64);
  sub_1000256AC();
  sub_100025700(v62, type metadata accessor for ColumnView);
  sub_100025700(v63, type metadata accessor for ColumnView);
  sub_100025700(v65, type metadata accessor for ColumnView);
  return sub_100025700(v64, type metadata accessor for ColumnView);
}

uint64_t sub_100021ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for ColumnView(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - v8;
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = a1 + *(type metadata accessor for DataDenseViewAttributes() + 20);
  v13 = *(v12 + 9);
  v14 = sub_10001F500(*(v12 + 9), 0);
  v42 = v15;
  v43 = v14;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v13)
  {
    v20 = type metadata accessor for DataDenseTableView(0);
    v21 = a1 + *(v20 + 20);
    v18 = sub_1000EB4C4();
    v19 = v22;
    v23 = a1 + *(v20 + 20);
    v16 = sub_1000EB4F4();
  }

  v40 = v17;
  v41 = v16;
  v39 = sub_10001FFBC(v13);
  v25 = v24;
  v26 = sub_1000206E4(v13);
  v28 = v27;
  v29 = v18;
  v30 = *(v3 + 36);
  v31 = sub_1000EBA54();
  (*(*(v31 - 8) + 16))(&v9[v30], a1, v31);
  *&v9[*(v3 + 40)] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v32 = v42;
  *v9 = v43;
  *(v9 + 1) = v32;
  *(v9 + 2) = v29;
  *(v9 + 3) = v19;
  v33 = v40;
  *(v9 + 4) = v41;
  *(v9 + 5) = v33;
  *(v9 + 6) = v39;
  *(v9 + 7) = v25;
  *(v9 + 8) = v26;
  *(v9 + 9) = v28;
  sub_100025658();
  v34 = v44;
  sub_1000256AC();
  v35 = v45;
  *v45 = 0;
  *(v35 + 8) = 0;
  v36 = *(sub_100002A10(&qword_10012FD98, &qword_1000F0700) + 48);
  sub_1000256AC();
  sub_100025700(v11, type metadata accessor for ColumnView);
  return sub_100025700(v34, type metadata accessor for ColumnView);
}

unint64_t sub_1000221A4()
{
  result = qword_10012FD88;
  if (!qword_10012FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FD88);
  }

  return result;
}

uint64_t sub_1000221F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000EA2C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v16 - v9);
  v11 = *(type metadata accessor for RowView(0) + 44);
  sub_100025FE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1000EA694();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_1000EC1A4();
    v15 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100022448@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v41 = sub_1000EA4E4();
  v40 = *(v41 - 8);
  v3 = *(v40 + 64);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000EA694();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012FF98, &qword_1000F0838);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v35 = sub_100002A10(&qword_10012FFA0, &qword_1000F0840);
  v13 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v15 = &v34 - v14;
  v38 = sub_100002A10(&qword_10012FFA8, &qword_1000F0848);
  v36 = *(v38 - 8);
  v16 = *(v36 + 64);
  __chkstk_darwin(v38);
  v18 = &v34 - v17;
  v37 = sub_100002A10(&qword_10012FFB0, &qword_1000F0850);
  v19 = *(*(v37 - 8) + 64);
  v20 = __chkstk_darwin(v37);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v34 - v23;
  *v12 = sub_1000EA2E4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v25 = sub_100002A10(&qword_10012FFB8, &qword_1000F0858);
  sub_100022A00(v1, &v12[*(v25 + 44)]);
  v26 = v1 + *(type metadata accessor for RowView(0) + 40);
  sub_1000EBA44();
  sub_100022240(v8);
  sub_1000EA594();

  (*(v5 + 8))(v8, v34);
  sub_1000EABC4();
  sub_1000EA0A4();
  sub_100025EB8(v12, v15);
  v27 = v35;
  memcpy(&v15[*(v35 + 36)], __src, 0x70uLL);
  v28 = v39;
  sub_1000EA4C4();
  v29 = sub_100025F28();
  sub_1000EA914();
  (*(v40 + 8))(v28, v41);
  sub_100008E48(v15, &qword_10012FFA0, &qword_1000F0840);
  v30 = v2[3];
  v45 = v2[2];
  v46 = v30;
  v43 = v27;
  v44 = v29;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v31 = v38;
  sub_1000EA8D4();
  (*(v36 + 8))(v18, v31);
  v32 = v2[11];
  v45 = v2[10];
  v46 = v32;
  sub_1000EA064();
  sub_100008E48(v22, &qword_10012FFB0, &qword_1000F0850);
  sub_1000EA084();
  return sub_100008E48(v24, &qword_10012FFB0, &qword_1000F0850);
}

uint64_t sub_100022A00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for ValueTextView(0);
  v4 = *(v3 - 8);
  v48 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v53 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for ConditionTextView(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = *a1;
  v52 = a1[1];
  v18 = v52;
  v19 = *(type metadata accessor for RowView(0) + 40);
  v46 = v19;
  v20 = *(v11 + 28);
  v21 = sub_1000EBA54();
  v22 = *(*(v21 - 8) + 16);
  v22(&v16[v20], a1 + v19, v21);
  v47 = v16;
  *v16 = v17;
  *(v16 + 1) = v18;
  v23 = a1[8];
  v24 = a1[9];
  v25 = a1[11];
  v44 = a1[10];
  v45 = v23;
  v26 = a1[4];
  v27 = a1[5];
  v49 = v24;
  v50 = v27;
  v28 = a1[7];
  v42 = a1[6];
  v43 = v26;
  v29 = v48;
  v22(&v9[*(v48 + 40)], a1 + v46, v21);
  v30 = v44;
  *v9 = v45;
  *(v9 + 1) = v24;
  *(v9 + 2) = v30;
  *(v9 + 3) = v25;
  v31 = v42;
  *(v9 + 4) = v43;
  *(v9 + 5) = v27;
  *(v9 + 6) = v31;
  *(v9 + 7) = v28;
  v32 = *(v29 + 44);
  *&v9[v32] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v33 = v47;
  v34 = v51;
  sub_1000256AC();
  v35 = v53;
  sub_1000256AC();
  v36 = v54;
  sub_1000256AC();
  v37 = sub_100002A10(&qword_10012FFD0, &unk_1000F0860);
  v38 = v36 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = *(v37 + 64);
  sub_1000256AC();

  sub_100025700(v9, type metadata accessor for ValueTextView);
  sub_100025700(v33, type metadata accessor for ConditionTextView);
  sub_100025700(v35, type metadata accessor for ValueTextView);
  return sub_100025700(v34, type metadata accessor for ConditionTextView);
}

uint64_t sub_100022D40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000EA2C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v16 - v9);
  v11 = *(type metadata accessor for ColumnView(0) + 40);
  sub_100025FE0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1000EA3A4();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_1000EC1A4();
    v15 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100022F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v46 = sub_1000EA4E4();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v46);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_10012FF18, &qword_1000F07D8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_100002A10(&qword_10012FF20, &qword_1000F07E0);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v48 = sub_100002A10(&qword_10012FF28, &qword_1000F07E8);
  v15 = *(*(v48 - 8) + 64);
  v16 = __chkstk_darwin(v48);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v47 = &v44 - v19;
  *v10 = sub_1000EA3D4();
  *(v10 + 1) = 0xBFF0000000000000;
  v10[16] = 0;
  v20 = sub_100002A10(&qword_10012FF30, &qword_1000F07F0);
  sub_100023474(v2, &v10[*(v20 + 44)]);
  sub_1000EA4C4();
  v21 = sub_100006988(&qword_10012FF38, &qword_10012FF18, &qword_1000F07D8);
  sub_1000EA914();
  (*(v3 + 8))(v6, v46);
  sub_100008E48(v10, &qword_10012FF18, &qword_1000F07D8);
  v22 = *(v2 + 8);
  v52 = *v2;
  v53 = v22;
  v50 = v7;
  v51 = v21;
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v46 = v18;
  v23 = v45;
  sub_1000EA8D4();
  (*(v44 + 8))(v14, v23);
  sub_100002A10(&qword_10012FF40, &qword_1000F07F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F03E0;
  v25 = *(v2 + 40);
  *(inited + 32) = *(v2 + 32);
  *(inited + 40) = v25;
  v26 = *(v2 + 72);
  *(inited + 48) = *(v2 + 64);
  *(inited + 56) = v26;

  v27 = 0;
  v28 = &_swiftEmptyArrayStorage;
LABEL_2:
  v29 = (inited + 40 + 16 * v27);
  while (++v27 != 3)
  {
    v30 = v29 + 2;
    v31 = *v29;
    v29 += 2;
    if (v31)
    {
      v32 = *(v30 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = v28[2];
        sub_100030F78();
        v28 = v36;
      }

      v33 = v28[2];
      if (v33 >= v28[3] >> 1)
      {
        sub_100030F78();
        v28 = v37;
      }

      v28[2] = v33 + 1;
      v34 = &v28[2 * v33];
      *(v34 + 4) = v32;
      *(v34 + 5) = v31;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_100025D10();
  v52 = v28;
  sub_100002A10(&qword_10012FF48, &qword_1000F0800);
  sub_100006988(&qword_10012FF50, &qword_10012FF48, &qword_1000F0800);
  v38 = sub_1000EBDF4();
  v40 = v39;

  v52 = v38;
  v53 = v40;
  v41 = v47;
  v42 = v46;
  sub_1000EA064();

  sub_100008E48(v42, &qword_10012FF28, &qword_1000F07E8);
  sub_1000EA084();
  return sub_100008E48(v41, &qword_10012FF28, &qword_1000F07E8);
}

uint64_t sub_100023474@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = type metadata accessor for CombinedTextView(0);
  v3 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100002A10(&qword_10012FF58, &qword_1000F0810);
  v5 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v7 = &v46 - v6;
  v8 = sub_100002A10(&qword_10012FF60, &qword_1000F0818);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v57 = sub_100002A10(&qword_10012FF68, &qword_1000F0820);
  v12 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v14 = &v46 - v13;
  v15 = sub_100002A10(&qword_10012FF70, &qword_1000F0828);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v19 = sub_1000EA3A4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022D40(v23);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == enum case for ColorSchemeContrast.standard(_:))
  {
    sub_100023B68(v18);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828);
    sub_1000221F8(&qword_10012FF88, type metadata accessor for CombinedTextView);
    sub_1000EA4A4();
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100025D90();
    sub_1000EA4A4();
    sub_100008E48(v14, &qword_10012FF68, &qword_1000F0820);
    return sub_100008E48(v18, &qword_10012FF70, &qword_1000F0828);
  }

  else
  {
    v51 = v8;
    v52 = v11;
    v50 = v14;
    v26 = v56;
    v53 = v7;
    v54 = v15;
    if (v24 == enum case for ColorSchemeContrast.increased(_:))
    {
      v27 = *a1;
      v28 = *(a1 + 1);
      v29 = *(a1 + 7);
      v48 = *(a1 + 6);
      v49 = v27;
      v30 = *(a1 + 8);
      v31 = *(a1 + 9);
      v46 = v28;
      v47 = v30;
      v32 = *(type metadata accessor for ColumnView(0) + 36);
      v33 = v26;
      v34 = v26[7];
      v35 = sub_1000EBA54();
      v36 = v55;
      (*(*(v35 - 8) + 16))(&v55[v34], &a1[v32], v35);
      v37 = *(a1 + 2);
      v38 = *(a1 + 3);
      v40 = *(a1 + 4);
      v39 = *(a1 + 5);
      *(v36 + v33[10]) = swift_getKeyPath();
      sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
      swift_storeEnumTagMultiPayload();
      v41 = v48;
      v42 = v46;
      *v36 = v49;
      v36[1] = v42;
      v36[2] = v41;
      v36[3] = v29;
      v36[4] = v47;
      v36[5] = v31;
      v43 = (v36 + v33[8]);
      *v43 = v37;
      v43[1] = v38;
      v44 = (v36 + v33[9]);
      *v44 = v40;
      v44[1] = v39;
      sub_1000256AC();
      swift_storeEnumTagMultiPayload();
      sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828);
      sub_1000221F8(&qword_10012FF88, type metadata accessor for CombinedTextView);

      v45 = v50;
      sub_1000EA4A4();
      sub_100025FE0();
      swift_storeEnumTagMultiPayload();
      sub_100025D90();
      sub_1000EA4A4();
      sub_100008E48(v45, &qword_10012FF68, &qword_1000F0820);
      return sub_100025700(v36, type metadata accessor for CombinedTextView);
    }

    else
    {
      sub_100023B68(v18);
      sub_100025FE0();
      swift_storeEnumTagMultiPayload();
      sub_100025D90();
      sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828);
      sub_1000EA4A4();
      sub_100008E48(v18, &qword_10012FF70, &qword_1000F0828);
      return (*(v20 + 8))(v23, v19);
    }
  }
}

uint64_t sub_100023B68@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for ValueTextView(0);
  v3 = *(v2 - 8);
  v44 = v2 - 8;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = type metadata accessor for ConditionTextView(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9);
  v47 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v17 = *v1;
  v48 = v1[1];
  v16 = v48;
  v18 = *(type metadata accessor for ColumnView(0) + 36);
  v42 = v18;
  v19 = *(v10 + 28);
  v20 = sub_1000EBA54();
  v21 = *(*(v20 - 8) + 16);
  v21(&v15[v19], v1 + v18, v20);
  v43 = v15;
  *v15 = v17;
  *(v15 + 1) = v16;
  v22 = v1[6];
  v23 = v1[7];
  v24 = v1[9];
  v40 = v1[8];
  v41 = v22;
  v25 = v1[2];
  v26 = v1[3];
  v45 = v23;
  v46 = v26;
  v27 = v1[5];
  v38 = v1[4];
  v39 = v25;
  v28 = v44;
  v21(&v8[*(v44 + 40)], v1 + v42, v20);
  v29 = v40;
  *v8 = v41;
  *(v8 + 1) = v23;
  *(v8 + 2) = v29;
  *(v8 + 3) = v24;
  v30 = v38;
  *(v8 + 4) = v39;
  *(v8 + 5) = v26;
  *(v8 + 6) = v30;
  *(v8 + 7) = v27;
  v31 = *(v28 + 44);
  *&v8[v31] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v32 = v43;
  v33 = v47;
  sub_1000256AC();
  v34 = v49;
  sub_1000256AC();
  sub_1000256AC();
  v35 = *(sub_100002A10(&qword_10012FF90, &qword_1000F0830) + 48);
  sub_1000256AC();

  sub_100025700(v8, type metadata accessor for ValueTextView);
  sub_100025700(v32, type metadata accessor for ConditionTextView);
  sub_100025700(v34, type metadata accessor for ValueTextView);
  return sub_100025700(v33, type metadata accessor for ConditionTextView);
}

uint64_t sub_100023E94@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v104 = sub_100002A10(&qword_1001301C0, &qword_1000F09A0);
  v2 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v106 = &v83 - v3;
  v88 = sub_1000EA4E4();
  v87 = *(v88 - 8);
  v4 = *(v87 + 64);
  __chkstk_darwin(v88);
  v85 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100002A10(&qword_1001301C8, &qword_1000F09A8);
  v6 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v84 = (&v83 - v7);
  v105 = sub_100002A10(&qword_1001301D0, &qword_1000F09B0);
  v89 = *(v105 - 8);
  v8 = *(v89 + 64);
  __chkstk_darwin(v105);
  v86 = &v83 - v9;
  v10 = sub_100002A10(&qword_1001301D8, &qword_1000F09B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v103 = &v83 - v12;
  v95 = sub_1000EA3A4();
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  v14 = __chkstk_darwin(v95);
  v93 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v83 - v16;
  v17 = sub_100002A10(&qword_1001301E0, &qword_1000F09C0);
  v98 = *(v17 - 8);
  v99 = v17;
  v18 = *(v98 + 64);
  __chkstk_darwin(v17);
  v97 = &v83 - v19;
  v100 = sub_100002A10(&qword_1001301E8, &qword_1000F09C8);
  v20 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v101 = &v83 - v21;
  v22 = v1;
  v23 = *v1;
  v24 = v1[1];
  v90 = v22;
  v110 = v23;
  v111 = v24;
  v25 = sub_100005898();

  v96 = v25;
  v26 = sub_1000EA814();
  v28 = v27;
  v30 = v29;
  sub_1000EA9C4();
  v31 = sub_1000EA784();
  v33 = v32;
  v35 = v34;

  sub_1000058EC(v26, v28, v30 & 1);

  v36 = type metadata accessor for ValueTextView(0);
  v83 = *(v36 + 32);
  sub_1000EBA44();
  v37 = sub_1000EA7D4();
  v39 = v38;
  v41 = v40;

  sub_1000058EC(v31, v33, v35 & 1);

  v42 = sub_1000EA794();
  v44 = v43;
  HIDWORD(v91) = v45;
  v47 = v46;
  sub_1000058EC(v37, v39, v41 & 1);

  v49 = *(v36 + 36);
  v50 = v90;
  v51 = v92;
  sub_10003E504(v48, v52, v53, v54, v55, v56, v57, v58, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  v59 = v94;
  v60 = v93;
  v61 = v95;
  (*(v94 + 104))(v93, enum case for ColorSchemeContrast.increased(_:), v95);
  LOBYTE(v26) = sub_1000EA394();
  v62 = *(v59 + 8);
  v62(v60, v61);
  v62(v51, v61);
  v63 = 1.0;
  if ((v26 & 1) == 0)
  {
    sub_1000EB9F4();
  }

  v110 = v42;
  v111 = v44;
  v64 = BYTE4(v91) & 1;
  v112 = BYTE4(v91) & 1;
  v113 = v47;
  v114 = v63;
  sub_1000EA664();
  v65 = sub_100002A10(&qword_1001301F0, &qword_1000F09D0);
  v66 = sub_1000268B8();
  v67 = v97;
  sub_1000EA874();
  sub_1000058EC(v42, v44, v64);

  v68 = v50[3];
  v110 = v50[2];
  v111 = v68;
  v108 = v65;
  v109 = v66;
  swift_getOpaqueTypeConformance2();
  v69 = v101;
  v70 = v99;
  sub_1000EA8D4();
  (*(v98 + 8))(v67, v70);
  if (v50[5])
  {
    v71 = v50[4];
    v72 = sub_1000EA2E4();
    v73 = v84;
    *v84 = v72;
    v73[1] = 0x4010000000000000;
    *(v73 + 16) = 0;
    v74 = sub_100002A10(&qword_100130210, &qword_1000F09D8);
    sub_1000247CC(v50, v69, v73 + *(v74 + 44));
    v75 = v85;
    sub_1000EA4C4();
    v76 = sub_100006988(&qword_100130200, &qword_1001301C8, &qword_1000F09A8);
    v77 = v86;
    v78 = v102;
    sub_1000EA914();
    (*(v87 + 8))(v75, v88);
    sub_100008E48(v73, &qword_1001301C8, &qword_1000F09A8);
    v79 = v89;
    v80 = v105;
    (*(v89 + 16))(v106, v77, v105);
    swift_storeEnumTagMultiPayload();
    v110 = v78;
    v111 = v76;
    swift_getOpaqueTypeConformance2();
    sub_100026998();
    sub_1000EA4A4();
    (*(v79 + 8))(v77, v80);
  }

  else
  {
    sub_10002693C();
    swift_storeEnumTagMultiPayload();
    v81 = sub_100006988(&qword_100130200, &qword_1001301C8, &qword_1000F09A8);
    v110 = v102;
    v111 = v81;
    swift_getOpaqueTypeConformance2();
    sub_100026998();
    sub_1000EA4A4();
  }

  sub_100026A90();
  return sub_100008E48(v69, &qword_1001301E8, &qword_1000F09C8);
}

uint64_t sub_1000247CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v84 = a2;
  v86 = a3;
  v4 = sub_100002A10(&qword_1001301E8, &qword_1000F09C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v85 = &v70 - v6;
  v7 = sub_1000EA3A4();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  v9 = __chkstk_darwin(v7);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v70 - v11;
  v12 = sub_100002A10(&qword_1001301E0, &qword_1000F09C0);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  __chkstk_darwin(v12);
  v77 = &v70 - v14;
  v15 = sub_100002A10(&qword_100130218, &qword_1000F09E0);
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  v17 = __chkstk_darwin(v15);
  v81 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v78 = &v70 - v19;

  sub_1000EAA24();
  v20 = sub_1000EA824();
  v22 = v21;
  v24 = v23;
  sub_1000EA9C4();
  v25 = sub_1000EA784();
  v27 = v26;
  v29 = v28;

  sub_1000058EC(v20, v22, v24 & 1);

  v71 = type metadata accessor for ValueTextView(0);
  v70 = *(v71 + 32);
  sub_1000EBA44();
  v30 = sub_1000EA7D4();
  v32 = v31;
  v34 = v33;

  sub_1000058EC(v25, v27, v29 & 1);

  v35 = sub_1000EA794();
  v37 = v36;
  HIDWORD(v72) = v38;
  v40 = v39;
  sub_1000058EC(v30, v32, v34 & 1);

  v42 = a1 + *(v71 + 36);
  v43 = v73;
  sub_10003E504(v41, v44, v45, v46, v47, v48, v49, v50, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  v52 = v74;
  v51 = v75;
  v53 = v76;
  (*(v75 + 104))(v74, enum case for ColorSchemeContrast.increased(_:), v76);
  LOBYTE(v42) = sub_1000EA394();
  v54 = *(v51 + 8);
  v54(v52, v53);
  v54(v43, v53);
  v55 = 1.0;
  if ((v42 & 1) == 0)
  {
    sub_1000EB9F4();
  }

  v87 = v35;
  v88 = v37;
  v56 = BYTE4(v72) & 1;
  v89 = BYTE4(v72) & 1;
  v90 = v40;
  v91 = v55;
  sub_1000EA664();
  v57 = sub_100002A10(&qword_1001301F0, &qword_1000F09D0);
  v58 = sub_1000268B8();
  v59 = v77;
  sub_1000EA874();
  sub_1000058EC(v35, v37, v56);

  v87 = v57;
  v88 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v78;
  v61 = v80;
  sub_1000EA834();
  (*(v79 + 8))(v59, v61);
  v63 = v81;
  v62 = v82;
  v64 = *(v82 + 16);
  v65 = v83;
  v64(v81, v60, v83);
  v66 = v85;
  sub_10002693C();
  v64(v86, v63, v65);
  v67 = *(sub_100002A10(&qword_100130220, &qword_1000F09E8) + 48);
  sub_10002693C();
  v68 = *(v62 + 8);
  v68(v60, v65);
  sub_100008E48(v66, &qword_1001301E8, &qword_1000F09C8);
  return (v68)(v63, v65);
}

uint64_t sub_100024D9C@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000EA6A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v41 = *v1;
  v42 = v7;
  sub_100005898();

  v8 = sub_1000EA814();
  v10 = v9;
  v12 = v11;
  sub_1000EA9C4();
  v13 = sub_1000EA784();
  v38 = v14;
  v39 = v13;
  v16 = v15;
  v37 = v17;

  sub_1000058EC(v8, v10, v12 & 1);

  v18 = v1 + *(type metadata accessor for ConditionTextView(0) + 20);
  sub_1000EBA44();
  (*(v3 + 104))(v6, enum case for Font.Leading.tight(_:), v2);
  sub_1000EA6D4();

  (*(v3 + 8))(v6, v2);
  v20 = v38;
  v19 = v39;
  v21 = sub_1000EA7D4();
  v23 = v22;
  LOBYTE(v6) = v24;

  sub_1000058EC(v19, v20, v16 & 1);

  v25 = sub_1000EA794();
  v27 = v26;
  LOBYTE(v19) = v28;
  sub_1000058EC(v21, v23, v6 & 1);

  sub_1000EA664();
  v29 = sub_1000EA714();
  v31 = v30;
  LOBYTE(v6) = v32;
  v34 = v33;
  sub_1000058EC(v25, v27, v19 & 1);

  v36 = v40;
  *v40 = v29;
  v36[1] = v31;
  *(v36 + 16) = v6 & 1;
  v36[3] = v34;
  return result;
}

uint64_t sub_10002503C@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v2 = sub_1000EA6A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000252B0();
  v9 = v8;
  v11 = v10;
  sub_1000EA9C4();
  v12 = sub_1000EA784();
  v39 = v13;
  v40 = v12;
  v15 = v14;
  v38 = v16;

  sub_1000058EC(v7, v9, v11 & 1);

  v17 = v1 + *(type metadata accessor for CombinedTextView(0) + 28);
  sub_1000EBA44();
  (*(v3 + 104))(v6, enum case for Font.Leading.tight(_:), v2);
  sub_1000EA6D4();

  (*(v3 + 8))(v6, v2);
  v19 = v39;
  v18 = v40;
  v20 = sub_1000EA7D4();
  v22 = v21;
  v24 = v23;

  sub_1000058EC(v18, v19, v15 & 1);

  v25 = sub_1000EA794();
  v27 = v26;
  LOBYTE(v18) = v28;
  sub_1000058EC(v20, v22, v24 & 1);

  sub_1000EA664();
  v29 = sub_1000EA714();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1000058EC(v25, v27, v18 & 1);

  v37 = v41;
  *v41 = v29;
  v37[1] = v31;
  *(v37 + 16) = v33 & 1;
  v37[3] = v35;
  return result;
}

uint64_t sub_1000252B0()
{
  sub_100002A10(&unk_100130560, &qword_1000F0998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F03E0;
  v51 = *v0;
  v53 = v0[1];
  sub_100005898();

  *(inited + 32) = sub_1000EA814();
  *(inited + 40) = v2;
  *(inited + 48) = v3 & 1;
  *(inited + 56) = v4;
  if (qword_10012EBF8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v5 = qword_100145E00;
  v47._countAndFlagsBits = 0x80000001000FB8A0;
  v55._countAndFlagsBits = 8250;
  v55._object = 0xE200000000000000;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v6.super.isa = v5;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_1000E8464(v55, v56, v6, v57, v47);

  *(inited + 64) = sub_1000EA814();
  *(inited + 72) = v7;
  *(inited + 80) = v8 & 1;
  *(inited + 88) = v9;
  v10 = (v0 + *(type metadata accessor for CombinedTextView(0) + 32));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];

    sub_1000EAA24();
    v13 = sub_1000EA824();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_10003104C();
    inited = v20;
    *(v20 + 16) = 3;
    *(v20 + 96) = v13;
    *(v20 + 104) = v15;
    *(v20 + 112) = v17 & 1;
    *(v20 + 120) = v19;
  }

  v52 = v0[2];
  v54 = v0[3];

  v21 = sub_1000EA814();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *(inited + 16);
  v49 = v28 + 1;
  if (v28 >= *(inited + 24) >> 1)
  {
    sub_10003104C();
    inited = v46;
  }

  v29 = 0;
  v30 = 0;
  v0 = 0;
  *(inited + 16) = v49;
  v31 = inited + 32 * v28;
  *(v31 + 32) = v21;
  *(v31 + 40) = v23;
  *(v31 + 48) = v25 & 1;
  *(v31 + 56) = v27;
  v32 = (inited + 56);
  v33 = 0xE000000000000000;
  v48 = inited;
  while (v49 != v29)
  {
    if (v29 >= *(inited + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v50 = v29 + 1;
    v34 = *v32;
    v35 = *(v32 - 8);
    v37 = *(v32 - 3);
    v36 = *(v32 - 2);
    sub_10000673C(v37, v36, v35);

    v38 = sub_1000EA7B4();
    v39 = v30;
    v30 = v38;
    v40 = v33;
    v33 = v41;
    v42 = v0;
    v0 = v43;
    sub_1000058EC(v39, v40, v42 & 1);

    v44 = v36;
    inited = v48;
    sub_1000058EC(v37, v44, v35);

    v29 = v50;
    v32 += 4;
  }

  return v30;
}

uint64_t sub_100025658()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_100026C1C(v2);
  v4 = *(v3 + 32);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_1000256AC()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_100026C1C(v2);
  v4 = *(v3 + 16);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_100025700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002576C()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  v4 = sub_100026C64();
  sub_100006A04(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 36);
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v6 = *(v1 + 40);
  }

  v7 = sub_100019AF8(v6);

  return sub_100005B30(v7, v8, v9);
}

void sub_10002582C()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    v3 = sub_100026C80();
    sub_100006A04(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 36);
    }

    else
    {
      sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v5 = *(v0 + 40);
    }

    v6 = sub_100026C44(v5);

    sub_1000028A0(v6, v7, v8, v9);
  }
}

void sub_1000258D8()
{
  sub_1000259A4();
  if (v0 <= 0x3F)
  {
    sub_1000EBA54();
    if (v1 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000259A4()
{
  if (!qword_10012F778)
  {
    v0 = sub_1000EC364();
    if (!v1)
    {
      atomic_store(v0, &qword_10012F778);
    }
  }
}

uint64_t sub_100025A08()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  v4 = sub_100026C64();
  sub_100006A04(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 40);
  }

  else
  {
    sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    v6 = *(v1 + 44);
  }

  v7 = sub_100019AF8(v6);

  return sub_100005B30(v7, v8, v9);
}

void sub_100025AC8()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    v3 = sub_100026C80();
    sub_100006A04(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 40);
    }

    else
    {
      sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v5 = *(v0 + 44);
    }

    v6 = sub_100026C44(v5);

    sub_1000028A0(v6, v7, v8, v9);
  }
}

void sub_100025B74()
{
  sub_1000259A4();
  if (v0 <= 0x3F)
  {
    sub_1000EBA54();
    if (v1 <= 0x3F)
    {
      sub_100025C40(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100025C40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100025D10()
{
  v1 = *(v0 + 16);
  sub_100002A10(&qword_100130540, &qword_1000F0808);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100025D90()
{
  result = qword_10012FF78;
  if (!qword_10012FF78)
  {
    sub_100002ABC(&qword_10012FF68, &qword_1000F0820);
    sub_100006988(&qword_10012FF80, &qword_10012FF70, &qword_1000F0828);
    sub_1000221F8(&qword_10012FF88, type metadata accessor for CombinedTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FF78);
  }

  return result;
}

uint64_t sub_100025EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012FF98, &qword_1000F0838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100025F28()
{
  result = qword_10012FFC0;
  if (!qword_10012FFC0)
  {
    sub_100002ABC(&qword_10012FFA0, &qword_1000F0840);
    sub_100006988(&qword_10012FFC8, &qword_10012FF98, &qword_1000F0838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FFC0);
  }

  return result;
}

uint64_t sub_100025FE0()
{
  sub_100026C9C();
  v3 = sub_100002A10(v1, v2);
  sub_100026C1C(v3);
  v5 = *(v4 + 16);
  v6 = sub_100019AC0();
  v7(v6);
  return v0;
}

uint64_t sub_100026048()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  v4 = sub_100026C64();
  sub_100006A04(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v6 = *(v1 + 40);
  }

  v7 = sub_100019AF8(v6);

  return sub_100005B30(v7, v8, v9);
}

void sub_100026108()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    v3 = sub_100026C80();
    sub_100006A04(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v5 = *(v0 + 40);
    }

    v6 = sub_100026C44(v5);

    sub_1000028A0(v6, v7, v8, v9);
  }
}

void sub_1000261B4()
{
  sub_1000EBA54();
  if (v0 <= 0x3F)
  {
    sub_1000259A4();
    if (v1 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100026298()
{
  sub_100026C54();
  if (v2)
  {
    return sub_100026C04();
  }

  v4 = sub_100026C64();
  sub_100006A04(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 32);
  }

  else
  {
    sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v6 = *(v1 + 36);
  }

  v7 = sub_100019AF8(v6);

  return sub_100005B30(v7, v8, v9);
}

void sub_100026358()
{
  sub_100026C30();
  if (v2)
  {
    sub_100026CA8();
  }

  else
  {
    v3 = sub_100026C80();
    sub_100006A04(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 32);
    }

    else
    {
      sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v5 = *(v0 + 36);
    }

    v6 = sub_100026C44(v5);

    sub_1000028A0(v6, v7, v8, v9);
  }
}

void sub_100026404()
{
  sub_1000259A4();
  if (v0 <= 0x3F)
  {
    sub_1000EBA54();
    if (v1 <= 0x3F)
    {
      sub_100025C40(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000264E0()
{
  sub_100026C54();
  if (v1)
  {
    return sub_100026C04();
  }

  sub_100026C64();
  v3 = sub_100019AF8(*(v0 + 20));

  return sub_100005B30(v3, v4, v5);
}

void sub_100026554()
{
  sub_100026C30();
  if (v1)
  {
    sub_100026CA8();
  }

  else
  {
    v2 = v0;
    sub_1000EBA54();
    v3 = sub_100026C44(*(v2 + 20));

    sub_1000028A0(v3, v4, v5, v6);
  }
}

uint64_t sub_1000265BC()
{
  result = sub_1000EBA54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002663C()
{
  result = qword_1001301B0;
  if (!qword_1001301B0)
  {
    sub_100002ABC(&qword_10012FF28, &qword_1000F07E8);
    sub_100002ABC(&qword_10012FF18, &qword_1000F07D8);
    sub_100006988(&qword_10012FF38, &qword_10012FF18, &qword_1000F07D8);
    swift_getOpaqueTypeConformance2();
    sub_1000221F8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001301B0);
  }

  return result;
}

unint64_t sub_10002676C()
{
  result = qword_1001301B8;
  if (!qword_1001301B8)
  {
    sub_100002ABC(&qword_10012FFB0, &qword_1000F0850);
    sub_100002ABC(&qword_10012FFA0, &qword_1000F0840);
    sub_100025F28();
    swift_getOpaqueTypeConformance2();
    sub_1000221F8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001301B8);
  }

  return result;
}

unint64_t sub_1000268B8()
{
  result = qword_1001301F8;
  if (!qword_1001301F8)
  {
    sub_100002ABC(&qword_1001301F0, &qword_1000F09D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001301F8);
  }

  return result;
}

uint64_t sub_10002693C()
{
  sub_100026C9C();
  v1 = sub_100002A10(&qword_1001301E8, &qword_1000F09C8);
  sub_100026C1C(v1);
  v3 = *(v2 + 16);
  v4 = sub_100019AC0();
  v5(v4);
  return v0;
}

unint64_t sub_100026998()
{
  result = qword_100130208;
  if (!qword_100130208)
  {
    sub_100002ABC(&qword_1001301E8, &qword_1000F09C8);
    sub_100002ABC(&qword_1001301F0, &qword_1000F09D0);
    sub_1000268B8();
    swift_getOpaqueTypeConformance2();
    sub_1000221F8(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130208);
  }

  return result;
}

uint64_t sub_100026A90()
{
  sub_100026C9C();
  v1 = sub_100002A10(&qword_1001301D8, &qword_1000F09B8);
  sub_100026C1C(v1);
  v3 = *(v2 + 32);
  v4 = sub_100019AC0();
  v5(v4);
  return v0;
}

unint64_t sub_100026AFC()
{
  result = qword_100130228;
  if (!qword_100130228)
  {
    sub_100002ABC(&qword_1001301D8, &qword_1000F09B8);
    sub_100002ABC(&qword_1001301C8, &qword_1000F09A8);
    sub_100006988(&qword_100130200, &qword_1001301C8, &qword_1000F09A8);
    swift_getOpaqueTypeConformance2();
    sub_100026998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130228);
  }

  return result;
}

uint64_t sub_100026C04()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100026C64()
{

  return sub_1000EBA54();
}

uint64_t sub_100026C80()
{

  return sub_1000EBA54();
}

uint64_t sub_100026CB4(uint64_t a1, char *a2, char a3, char a4)
{
  v35 = a2;
  v38 = a1;
  v8 = sub_100002A10(&qword_100130308, &qword_1000F0A38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v40 = &v35 - v10;
  v11 = sub_1000EA3B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v36 = &v35 - v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v37 = sub_1000EBC44();
  v39 = *(v37 - 8);
  (*(v39 + 16))(v4 + v21, a1, v37);
  *(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetDisplaySize) = a3;
  v22 = *(v12 + 16);
  v23 = v35;
  v22(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory, v35, v11);
  *(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_showsWidgetBackground) = a4;
  v24 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  if (a3)
  {
    v24 = &enum case for ContentSizeCategory.accessibilityMedium(_:);
  }

  (*(v12 + 104))(v20, *v24, v11);
  v25 = (v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_maxSupportedSizeCategory);
  (*(v12 + 32))(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_maxSupportedSizeCategory, v20, v11);
  v22(v16, v25, v11);
  sub_1000CD388();
  v27 = v26;
  v28 = *(v12 + 8);
  v28(v16, v11);
  if (v27)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  v30 = v36;
  v22(v36, v29, v11);
  v31 = v40;
  v22(v40, v30, v11);
  sub_1000028A0(v31, 0, 1, v11);
  v32 = sub_1000EC304();
  v33 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v32];

  v28(v23, v11);
  (*(v39 + 8))(v38, v37);
  v28(v30, v11);
  *(v4 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_traitCollection) = v33;
  return v4;
}

uint64_t sub_100027034()
{
  v1 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_widgetFamily;
  v2 = sub_1000EBC44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_sizeCategory;
  v4 = sub_1000EA3B4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC13WeatherWidget21ViewAttributesFactory_maxSupportedSizeCategory, v4);

  return v0;
}

uint64_t sub_100027114()
{
  sub_100027034();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ViewAttributesFactory()
{
  result = qword_100130258;
  if (!qword_100130258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000271C0()
{
  result = sub_1000EBC44();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1000EA3B4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000272C0()
{
  result = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager);
  if (result)
  {
    return [result _limitsPrecision];
  }

  __break(1u);
  return result;
}

id sub_1000272F4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue];
  objc_allocWithZone(CLLocationManager);
  v3 = v2;
  v4 = a1;
  result = sub_100030880(0xD000000000000011, 0x80000001000FBC10, a1, v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager;
  v7 = *&v4[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager];
  *&v4[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager] = result;
  v8 = result;

  [v8 setDistanceFilter:500.0];
  result = *&v4[v6];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result setDesiredAccuracy:kCLLocationAccuracyKilometer];
}

void sub_1000273E4(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  sub_100009210(v7);
  v9 = *(v8 + 64);
  sub_100009204();
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  if (sub_1000275C4(a1))
  {
    if (sub_100028DF8())
    {
      sub_1000326DC();

      sub_10002907C(v13, v14, v15);
    }

    else
    {
      sub_1000EC084();
      sub_10000D52C();
      sub_1000028A0(v22, v23, v24, v25);
      sub_100032770();
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v3;
      v26[5] = a2;
      v26[6] = a3;
      v27 = v3;

      sub_100028B14(0, 0, v12, &unk_1000F0C80, v26);
    }
  }

  else
  {
    v16 = [a1 location];
    if (v16 && (v17 = v16, v29 = [v16 geolocation], v17, v29))
    {
      sub_100029434(v29, a2, a3);
      v18 = v29;
    }

    else
    {
      sub_1000326DC();

      sub_100029A34(v19, v20, v21);
    }
  }
}

uint64_t sub_1000275C4(void *a1)
{
  v2 = [a1 location];
  if (!v2)
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v11 = sub_1000E9F64();
    sub_100008CB8(v11, qword_100145BC8);
    v12 = a1;
    v3 = sub_1000E9F44();
    v13 = sub_1000EC1B4();

    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      type metadata accessor for WeatherIntent();
      v16 = v12;
      v17 = sub_1000EBEF4();
      v19 = sub_1000E2E18(v17, v18, &v28);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v3, v13, "Treating nil location as current location on intent: %{private,mask.hash}s", v14, 0x16u);
      sub_100009068(v15);
    }

    goto LABEL_23;
  }

  v3 = v2;
  v4 = sub_1000E3C24(v3);
  v6 = v5;
  v7 = sub_1000E9974();
  if (!v6)
  {

    goto LABEL_14;
  }

  if (v4 != v7 || v6 != v8)
  {
    v10 = sub_1000EC5D4();

    if (v10)
    {
LABEL_23:

      return 1;
    }

LABEL_14:
    v20 = sub_100031DF4(v3, &selRef_identifier);
    v22 = v21;
    v23 = sub_1000E9964();
    if (!v22)
    {

      return 0;
    }

    if (v20 != v23 || v22 != v24)
    {
      v26 = sub_1000EC5D4();

      return v26 & 1;
    }

    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_100027868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_100002A10(&qword_100130440, &qword_1000F0BE0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v8 = sub_1000E9A84();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100027970, 0, 0);
}

uint64_t sub_100027970()
{
  v1 = v0[2];
  sub_100031CF8(0, &qword_100130448, NSUserDefaults_ptr);
  v2 = sub_1000EC1C4();
  v3 = *(v1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_didReceiveLocationAuthorization);
  v4 = *(v1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_didReceiveLocationAuthorization + 8);
  v5 = sub_1000EBE64();
  v6 = [v2 BOOLForKey:v5];

  if (v6)
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C();
    }

    v7 = sub_1000E9F64();
    sub_1000326C4(v7, qword_100145BC8);
    v8 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_1000091BC();
      sub_1000091E0(v10);
      sub_10003270C(&_mh_execute_header, v8, v5, "No authorization - returning permission denied");
      sub_100009118();
    }

    v11 = v0[7];
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    sub_10000D52C();
    sub_1000028A0(v15, v16, v17, v11);
    v14(v13, 4);
    sub_100032054(v13, &qword_100130440, &qword_1000F0BE0);
    v18 = v0[9];
    v19 = v0[5];
    v20 = v0[6];

    sub_1000324E4();

    return v21();
  }

  else
  {
    swift_task_alloc();
    sub_1000325BC();
    v0[10] = v23;
    *v23 = v24;
    v23[1] = sub_100027B88;
    v25 = v0[6];
    v26 = v0[2];

    return sub_100027EFC();
  }
}

uint64_t sub_100027B88()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  sub_1000326AC();

  return _swift_task_switch();
}

uint64_t sub_100027C70()
{
  sub_1000327A8();
  v2 = v0[6];
  v1 = v0[7];
  if (sub_100005B30(v2, 1, v1) == 1)
  {
    sub_100032054(v2, &qword_100130440, &qword_1000F0BE0);
    if (qword_10012EB20 != -1)
    {
      sub_10003244C();
    }

    v3 = sub_1000E9F64();
    sub_1000326C4(v3, qword_100145BC8);
    v4 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_1000091BC();
      sub_1000091E0(v6);
      sub_10003270C(&_mh_execute_header, v4, v1, "No authorization - returning permission denied");
      sub_100009118();
    }

    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[3];

    sub_10000D52C();
    sub_1000028A0(v11, v12, v13, v7);
    v10(v9, 4);
    sub_100032054(v9, &qword_100130440, &qword_1000F0BE0);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v2, v1);
    if (qword_10012EB20 != -1)
    {
      sub_10003244C();
    }

    v14 = sub_1000E9F64();
    sub_1000326C4(v14, qword_100145BC8);
    v15 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_1000091BC();
      sub_1000091E0(v17);
      sub_10003270C(&_mh_execute_header, v15, v1, "No authorization - returning default location");
      sub_100009118();
    }

    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];
    v21 = v0[4];
    v22 = v0[5];
    v23 = v0[3];

    v24 = *(v19 + 16);
    sub_10003266C();
    v25();
    sub_10000D554();
    sub_1000028A0(v26, v27, v28, v20);
    v23(v22, 3);
    sub_100032054(v22, &qword_100130440, &qword_1000F0BE0);
    v29 = *(v19 + 8);
    v30 = sub_100032730();
    v31(v30);
  }

  v32 = v0[9];
  v33 = v0[5];
  v34 = v0[6];

  sub_1000324E4();

  return v35();
}

uint64_t sub_100027EFC()
{
  sub_100032530();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v3);
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v6 = sub_1000E9A84();
  v1[6] = v6;
  sub_100032590(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1000326AC();

  return _swift_task_switch();
}

uint64_t sub_100027FF8()
{
  sub_100032604();
  if (qword_10012EB20 != -1)
  {
    sub_10003244C();
  }

  v1 = sub_1000E9F64();
  v0[11] = sub_100008CB8(v1, qword_100145BC8);
  v2 = sub_1000E9F44();
  sub_1000EC1B4();
  sub_100032584();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1000091BC();
    sub_1000091E0(v4);
    sub_100032574();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100009118();
  }

  sub_1000E9264();
  v10 = sub_1000E92D4();

  v11 = v0[4];
  if (v10)
  {
    sub_1000324F0((v11 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_defaultLocationManager));
    v12 = async function pointer to dispatch thunk of DefaultLocationManagerType.defaultLocation.getter[1];
    swift_task_alloc();
    sub_1000325BC();
    v0[16] = v13;
    *v13 = v14;
    v13[1] = sub_1000289BC;
    v15 = v0[3];
    sub_10003266C();

    return dispatch thunk of DefaultLocationManagerType.defaultLocation.getter();
  }

  else
  {
    sub_1000324F0((v11 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_savedLocationsReader));
    v16 = async function pointer to dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()[1];
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_1000281C8;
    v18 = sub_100032730();

    return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v18);
  }
}

uint64_t sub_1000281C8()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  sub_1000326AC();

  return _swift_task_switch();
}

uint64_t sub_1000282B8()
{
  v64 = v0;
  v1 = v0[13];
  if (!v1)
  {
    v19 = v0[11];
    v20 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_1000091BC();
      sub_1000091E0(v22);
      sub_100032574();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      sub_100009118();
    }

    v28 = v0[4];

    sub_1000324F0((v28 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_defaultLocationManager));
    v29 = async function pointer to dispatch thunk of DefaultLocationManagerType.defaultLocation.getter[1];
    swift_task_alloc();
    sub_1000325BC();
    v0[15] = v16;
    *v16 = v30;
    v18 = sub_100028864;
    goto LABEL_9;
  }

  v0[2] = v1;
  v3 = v0[5];
  v2 = v0[6];
  sub_100002A10(&qword_100130518, &qword_1000F0CA8);
  sub_100031CA4(&qword_100130520, &qword_100130518, &qword_1000F0CA8);
  sub_1000EBF94();

  v4 = sub_100005B30(v3, 1, v2);
  v5 = v0[11];
  if (v4 == 1)
  {
    sub_100032054(v0[5], &qword_100130440, &qword_1000F0BE0);
    v6 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_1000091BC();
      sub_1000091E0(v8);
      sub_100032574();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_100009118();
    }

    v14 = v0[4];

    sub_1000324F0((v14 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_defaultLocationManager));
    v15 = async function pointer to dispatch thunk of DefaultLocationManagerType.defaultLocation.getter[1];
    swift_task_alloc();
    sub_1000325BC();
    v0[14] = v16;
    *v16 = v17;
    v18 = sub_10002870C;
LABEL_9:
    v16[1] = v18;
    v31 = v0[3];
    sub_10003266C();

    return dispatch thunk of DefaultLocationManagerType.defaultLocation.getter();
  }

  v33 = v0[9];
  v32 = v0[10];
  v34 = v0[6];
  v35 = v0[7];
  v36 = *(v35 + 32);
  v36(v32, v0[5], v34);
  v37 = *(v35 + 16);
  v37(v33, v32, v34);
  v38 = sub_1000E9F44();
  sub_1000EC1B4();
  sub_100032584();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[9];
  if (v40)
  {
    v61 = v32;
    v42 = v0[7];
    v43 = v0[8];
    v62 = v36;
    v44 = v0[6];
    v45 = sub_1000327F4();
    v60 = sub_10000923C();
    v63 = v60;
    sub_10003247C(7.2225e-34);
    v46 = sub_10003277C();
    (v37)(v46);
    v47 = sub_1000EBEF4();
    v49 = v48;
    v50 = v44;
    v36 = v62;
    (*(v42 + 8))(v41, v50);
    v51 = sub_1000E2E18(v47, v49, &v63);

    *(v45 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v38, v61, "Computed a default location. Locations=%{private,mask.hash}s", v45, 0x16u);
    sub_100009068(v60);
    sub_100009194();
    sub_100009118();
  }

  else
  {
    v52 = v0[6];
    v53 = v0[7];

    (*(v53 + 8))(v41, v52);
  }

  v54 = v0[6];
  v36(v0[3], v0[10], v54);
  sub_10000D554();
  sub_1000028A0(v55, v56, v57, v54);
  sub_10003273C();

  sub_1000324E4();

  return v58();
}

uint64_t sub_10002870C()
{
  sub_100032604();
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];
  v8 = v1[5];

  sub_1000326FC();

  return v9();
}

uint64_t sub_100028864()
{
  sub_100032604();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];
  v8 = v1[5];

  sub_1000326FC();

  return v9();
}

uint64_t sub_1000289BC()
{
  sub_100032604();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];
  v8 = v1[5];

  sub_1000326FC();

  return v9();
}

uint64_t sub_100028B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100031FF0(a3, v26 - v11, &qword_100130510, &qword_1000F0C70);
  v13 = sub_1000EC084();
  v14 = sub_100005B30(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100032054(v12, &qword_100130510, &qword_1000F0C70);
  }

  else
  {
    sub_1000EC074();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000EC064();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000EBF04() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100032054(a3, &qword_100130510, &qword_1000F0C70);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100032054(a3, &qword_100130510, &qword_1000F0C70);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100028DF8()
{
  if (qword_10012EB20 != -1)
  {
    sub_10003244C();
  }

  v1 = sub_1000E9F64();
  sub_1000326C4(v1, qword_100145BC8);
  v2 = sub_1000E9F44();
  v3 = sub_1000EC1B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1000091BC();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "About to retrieve our location permissions from CoreLocation", v4, 2u);
    sub_100009194();
  }

  v5 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager;
  v6 = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager);
  if (!v6)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    JUMPOUT(0x100029068);
  }

  switch([v6 _authorizationStatus])
  {
    case 0u:
      v7 = sub_1000E9F44();
      v8 = sub_1000EC1B4();
      if (!sub_1000325C8(v8))
      {
        goto LABEL_26;
      }

      v9 = sub_1000091BC();
      sub_100032610(v9);
      v12 = "Location Permissions - notDetermined";
      goto LABEL_24;
    case 1u:
      v7 = sub_1000E9F44();
      v26 = sub_1000EC1B4();
      if (!sub_1000325C8(v26))
      {
        goto LABEL_26;
      }

      v27 = sub_1000091BC();
      sub_100032610(v27);
      v12 = "Location Permissions - restricted";
      goto LABEL_24;
    case 2u:
      v7 = sub_1000E9F44();
      v21 = sub_1000EC1B4();
      if (!sub_1000325C8(v21))
      {
        goto LABEL_26;
      }

      v22 = sub_1000091BC();
      sub_100032610(v22);
      v12 = "Location Permissions - denied";
      goto LABEL_24;
    case 3u:
      v7 = sub_1000E9F44();
      v23 = sub_1000EC1B4();
      if (!sub_1000325C8(v23))
      {
        goto LABEL_21;
      }

      v24 = sub_1000091BC();
      sub_100032610(v24);
      v20 = "Location Permissions - always";
      goto LABEL_17;
    case 4u:
      v13 = *(v0 + v5);
      if (!v13)
      {
        goto LABEL_30;
      }

      v14 = [v13 isAuthorizedForWidgetUpdates];
      v7 = sub_1000E9F44();
      v15 = sub_1000EC1B4();
      v16 = sub_1000325C8(v15);
      if (v14)
      {
        if (!v16)
        {
LABEL_21:
          v25 = 1;
          goto LABEL_27;
        }

        v17 = sub_1000091BC();
        sub_100032610(v17);
        v20 = "Location Permissions - whenInUse";
LABEL_17:
        sub_1000327D4(&_mh_execute_header, v18, v19, v20);
        v25 = 1;
        goto LABEL_25;
      }

      if (v16)
      {
        v28 = sub_1000091BC();
        sub_100032610(v28);
        v12 = "Location Permissions - whenInUse for app only";
LABEL_24:
        sub_1000327D4(&_mh_execute_header, v10, v11, v12);
        v25 = 0;
LABEL_25:
        sub_100009194();
        goto LABEL_27;
      }

LABEL_26:
      v25 = 0;
LABEL_27:

      return v25;
    default:
      return 0;
  }
}

uint64_t sub_10002907C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v30 = a2;
  v31 = a1;
  v33 = sub_1000E8604();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E9F64();
  sub_100008CB8(v9, qword_100145BC8);
  v10 = sub_1000E9F44();
  v11 = sub_1000EC1B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "About to handle current location update request", v12, 2u);
  }

  sub_100031CF8(0, &qword_100130448, NSUserDefaults_ptr);
  v13 = sub_1000EC1C4();
  v14 = *(v4 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_didReceiveLocationAuthorization);
  v15 = *(v4 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_didReceiveLocationAuthorization + 8);
  v16 = sub_1000EBE64();
  v17 = [v13 BOOLForKey:v16];

  if ((v17 & 1) == 0)
  {
    v18 = sub_1000E9F44();
    v19 = sub_1000EC1B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "First time being location authorized - setting key", v20, 2u);
    }

    v21 = sub_1000EC1C4();
    v34 = 1;
    sub_1000EC1E4();
  }

  v22 = sub_1000E9F44();
  v23 = sub_1000EC1B4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting request to fetch location from CoreLocation", v24, 2u);
  }

  sub_1000E85B4();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v27 = v30;
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  *(v26 + 32) = v32;
  *(v26 + 40) = v31 & 1;

  sub_10002B6B0(sub_10003094C, v26);

  (*(v5 + 8))(v8, v33);
}

void sub_100029434(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v59 - v8);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v10 = sub_1000E9F64();
  sub_100008CB8(v10, qword_100145BC8);
  v11 = a1;
  v12 = sub_1000E9F44();
  v13 = sub_1000EC1B4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v59 = a3;
    v60 = v9;
    v16 = a2;
    v17 = v15;
    v62[0] = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v63 = v11;
    sub_100031CF8(0, &qword_100130528, CLPlacemark_ptr);
    v18 = v11;
    v19 = sub_1000EBEF4();
    v21 = sub_1000E2E18(v19, v20, v62);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "About to handle old intent. placeMark=%{private,mask.hash}s", v14, 0x16u);
    sub_100009068(v17);
    a2 = v16;
    a3 = v59;
    v9 = v60;
  }

  v22 = [v11 location];
  if (v22 && (v23 = v22, [v22 coordinate], v25 = v24, v27 = v26, v23, v28 = sub_100031DF4(v11, &selRef_name), v29))
  {
    v30 = v28;
    v31 = v29;
    v32 = sub_1000E9F44();
    v33 = sub_1000EC1B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v62[0] = v25;
      v62[1] = v27;
      type metadata accessor for CLLocationCoordinate2D(0);
      v35 = sub_1000EBEF4();
      v37 = v31;
      v38 = v30;
      v39 = a3;
      v40 = a2;
      v41 = sub_1000E2E18(v35, v36, &v63);

      *(v34 + 14) = v41;
      a2 = v40;
      a3 = v39;
      v30 = v38;
      v31 = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Got a coordinate. Now performing a reverse geocode. coordinate=%{private,mask.hash}s", v34, 0x16u);
      sub_100009068(v60);
    }

    v42 = *(v61 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager + 32);
    sub_100008DA8((v61 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager), *(v61 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager + 24));
    sub_1000E95A4();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v44[2] = v11;
    v44[3] = v43;
    v44[4] = a2;
    v44[5] = a3;
    v45 = v11;

    v46 = sub_1000E9C44();
    sub_1000E9C64();

    v47 = swift_allocObject();
    v47[2] = v30;
    v47[3] = v31;
    v47[4] = a2;
    v47[5] = a3;

    v48 = sub_1000E9C44();
    sub_1000E9C84();
  }

  else
  {
    v49 = v11;
    v50 = sub_1000E9F44();
    v51 = sub_1000EC194();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v52 = 141558275;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      v63 = v49;
      sub_100031CF8(0, &qword_100130528, CLPlacemark_ptr);
      v54 = v49;
      v55 = sub_1000EBEF4();
      v57 = sub_1000E2E18(v55, v56, v62);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Can't parse placemark from intent: %{private,mask.hash}s", v52, 0x16u);
      sub_100009068(v53);
    }

    v58 = sub_1000E9A84();
    sub_1000028A0(v9, 1, 1, v58);
    a2(v9, 0);
    sub_100032054(v9, &qword_100130440, &qword_1000F0BE0);
  }
}

void sub_100029A34(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v52 - v8;
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v10 = sub_1000E9F64();
  sub_100008CB8(v10, qword_100145BC8);
  v11 = a1;
  v12 = sub_1000E9F44();
  v13 = sub_1000EC1B4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v53 = v9;
    v16 = a3;
    v17 = a2;
    v18 = v15;
    v55 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v57 = v11;
    type metadata accessor for WeatherIntent();
    v19 = v11;
    v20 = sub_1000EBEF4();
    v22 = sub_1000E2E18(v20, v21, &v55);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "About to handle new intent: %{private,mask.hash}s", v14, 0x16u);
    sub_100009068(v18);
    a2 = v17;
    a3 = v16;
    v9 = v53;
  }

  v23 = [v11 location];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 displayString];

    v26 = sub_1000EBE84();
    v28 = v27;

    v29 = sub_1000E9F44();
    v30 = sub_1000EC1B4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v28;
      v57 = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v55 = v26;

      v33 = sub_1000EBEF4();
      v35 = sub_1000E2E18(v33, v34, &v57);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Got a name from the intent. Now performing a local search. name=%{private,mask.hash}s", v31, 0x16u);
      sub_100009068(v32);
    }

    v36 = *sub_100008DA8((v54 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_localSearchManager), *(v54 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_localSearchManager + 24));
    LocalSearchRequestManager.performLocalSearch(with:)(v26, v28);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = a2;
    v38[4] = a3;

    v39 = sub_1000E9C44();
    sub_1000E9C64();

    v40 = swift_allocObject();
    v40[2] = v26;
    v40[3] = v28;
    v40[4] = a2;
    v40[5] = a3;

    v41 = sub_1000E9C44();
    sub_1000E9C84();
  }

  else
  {
    v42 = v11;
    v43 = sub_1000E9F44();
    v44 = sub_1000EC194();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v55 = sub_1000E3C94(v42);
      v56 = v47;
      sub_100002A10(&qword_100130540, &qword_1000F0808);
      v48 = sub_1000EBEF4();
      v50 = sub_1000E2E18(v48, v49, &v57);

      *(v45 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Aborting: no display string on intent. intent.identifier=%{private,mask.hash}s", v45, 0x16u);
      sub_100009068(v46);
    }

    v51 = sub_1000E9A84();
    sub_1000028A0(v9, 1, 1, v51);
    a2(v9, 0);
    sub_100032054(v9, &qword_100130440, &qword_1000F0BE0);
  }
}

void sub_100029FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v34);
  v36 = *(v35 + 64);
  sub_100009204();
  __chkstk_darwin(v37);
  v39 = &a9 - v38;
  sub_100032770();
  v40 = swift_allocObject();
  v40[2] = v31;
  v40[3] = v29;
  v40[4] = v27;
  v40[5] = v25;
  v40[6] = v23;

  if (sub_100028DF8())
  {
    sub_10002907C(v33 & 1, sub_100031988, v40);
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C();
    }

    v41 = sub_1000E9F64();
    sub_1000326C4(v41, qword_100145BC8);
    v42 = sub_1000E9F44();
    v43 = sub_1000EC1B4();
    if (sub_1000091EC(v43))
    {
      v44 = sub_1000091BC();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "No authorization - returning permission denied", v44, 2u);
      sub_100009194();
    }

    sub_1000E9A84();
    sub_10000D52C();
    sub_1000028A0(v45, v46, v47, v48);
    sub_1000DBA40();
    sub_100032054(v39, &qword_100130440, &qword_1000F0BE0);
  }

  sub_100006A20();
}

uint64_t sub_10002A1F4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  sub_100019AE8();
  if (sub_100028DF8())
  {
    sub_1000326DC();

    return sub_10002907C(v8, v9, v10);
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C();
    }

    v12 = sub_1000E9F64();
    sub_1000326C4(v12, qword_100145BC8);
    v13 = sub_1000E9F44();
    v14 = sub_1000EC1B4();
    if (sub_1000091EC(v14))
    {
      v15 = sub_1000091BC();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No authorization - returning permission denied", v15, 2u);
      sub_100009194();
    }

    sub_1000E9A84();
    sub_10000D52C();
    sub_1000028A0(v16, v17, v18, v19);
    a2(v2, 4);
    return sub_100032054(v2, &qword_100130440, &qword_1000F0BE0);
  }
}

id sub_10002A3AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002A54C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, char a6)
{
  v51 = a4;
  v52 = a5;
  v9 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v51 - v11;
  v13 = sub_1000E8784();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_1000EAC94();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((a2 & 0x100) != 0)
  {
    v53 = a1;
    sub_100031734();
    swift_willThrowTypedImpl();
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v40 = sub_1000E9F64();
    sub_100008CB8(v40, qword_100145BC8);
    v41 = sub_1000E9F44();
    v42 = sub_1000EC194();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Error fetching the current location from CoreLocation. Returning location=nil", v43, 2u);
    }

    v44 = sub_1000E9A84();
    sub_1000028A0(v18, 1, 1, v44);
    v51(v18, 0);

    goto LABEL_19;
  }

  sub_100031894(a1, a2, 0);
  if ((a6 & 1) == 0)
  {
    [a1 coordinate];
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v45 = sub_1000E9F64();
    sub_100008CB8(v45, qword_100145BC8);
    v46 = sub_1000E9F44();
    v47 = sub_1000EC1B4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Got a location from CoreLocation. shouldReverseGeocode=false. Returning a nameless location with current timezone.", v48, 2u);
    }

    sub_1000E9964();
    sub_1000E8774();
    v49 = sub_1000E8604();
    sub_1000028A0(v12, 1, 1, v49);
    sub_1000E9A14();
    v50 = sub_1000E9A84();
    sub_1000028A0(v18, 0, 1, v50);
    v51(v18, a2);
    sub_1000309CC(a1, a2, 0);

    sub_1000309CC(a1, a2, 0);
LABEL_19:
    sub_100032054(v18, &qword_100130440, &qword_1000F0BE0);
    return;
  }

  v26 = qword_10012EB20;
  v27 = a1;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = sub_1000E9F64();
  sub_100008CB8(v28, qword_100145BC8);
  v29 = sub_1000E9F44();
  v30 = sub_1000EC1B4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Got a location from CoreLocation. shouldReverseGeocode=true, so about to reverse geocode", v31, 2u);
  }

  v32 = *&v25[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager + 32];
  sub_100008DA8(&v25[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager], *&v25[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_geocodeManager + 24]);
  [v27 coordinate];
  sub_1000EAC84();
  sub_1000E95B4();
  (*(v20 + 8))(v23, v19);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v36 = v51;
  v35 = v52;
  *(v34 + 16) = v33;
  *(v34 + 24) = v36;
  *(v34 + 32) = v35;
  *(v34 + 40) = a2;

  v37 = sub_1000E9C44();
  sub_1000E9C64();

  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  *(v38 + 25) = 0;
  *(v38 + 32) = v27;
  *(v38 + 40) = v36;
  *(v38 + 48) = v35;
  *(v38 + 56) = a2;
  sub_100031894(a1, a2, 0);
  sub_100031894(a1, a2, 0);

  v39 = sub_1000E9C44();
  sub_1000E9C84();

  sub_1000309CC(a1, a2, 0);
  sub_1000309CC(a1, a2, 0);
}

uint64_t sub_10002AC78(char *a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, unsigned int a5)
{
  v64 = a5;
  v65 = a4;
  v66 = a3;
  v60 = a1;
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v63 = &v55 - v8;
  v9 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v59 = (&v55 - v11);
  v12 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55 - v14;
  v16 = sub_1000E99A4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002A10(&qword_1001304D0, &unk_1000F0C30);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v55 - v23;
  v67 = sub_1000E9A84();
  v62 = *(v67 - 8);
  v25 = *(v62 + 64);
  v26 = __chkstk_darwin(v67);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v61 = &v55 - v30;
  __chkstk_darwin(v29);
  v32 = &v55 - v31;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v56 = v28;
    v57 = result;
    v58 = v5;
    sub_1000E99C4();
    sub_1000E9964();
    sub_1000E9994();

    (*(v17 + 8))(v20, v16);
    sub_1000028A0(v24, 0, 1, v16);
    v34 = sub_1000E8784();
    sub_1000028A0(v15, 1, 1, v34);
    v35 = sub_1000E8604();
    v36 = v59;
    sub_1000028A0(v59, 1, 1, v35);
    sub_1000E9A54();
    sub_100032054(v36, &qword_10012F048, &qword_1000EEF30);
    sub_100032054(v15, &qword_1001304C8, &qword_1000F3D70);
    sub_100032054(v24, &qword_1001304D0, &unk_1000F0C30);
    v37 = v32;
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v38 = sub_1000E9F64();
    sub_100008CB8(v38, qword_100145BC8);
    v39 = v61;
    v40 = v62;
    v41 = *(v62 + 16);
    v42 = v67;
    v41(v61, v37, v67);
    v43 = sub_1000E9F44();
    v44 = sub_1000EC1B4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v37;
      v68 = v59;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v41(v56, v39, v42);
      v46 = sub_1000EBEF4();
      v47 = v39;
      v48 = v46;
      v50 = v49;
      v62 = *(v40 + 8);
      (v62)(v47, v67);
      v51 = sub_1000E2E18(v48, v50, &v68);
      v42 = v67;

      *(v45 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "Successfully performed a reverse geocode. location=%{private,mask.hash}s. Overriding location.identifier to current", v45, 0x16u);
      sub_100009068(v59);
      v37 = v60;
    }

    else
    {

      v62 = *(v40 + 8);
      (v62)(v39, v42);
    }

    v52 = v57;
    v53 = *&v57[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 32];
    sub_100008DA8(&v57[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager], *&v57[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24]);
    sub_1000E98B4();
    v54 = v63;
    v41(v63, v37, v42);
    sub_1000028A0(v54, 0, 1, v42);
    v66(v54, v64);

    sub_100032054(v54, &qword_100130440, &qword_1000F0BE0);
    return (v62)(v37, v42);
  }

  return result;
}

uint64_t sub_10002B314(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6, unsigned int a7)
{
  v37 = a7;
  v36 = a4;
  v11 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v34 - v13;
  v15 = sub_1000E8784();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v34 - v19;
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v21 = sub_1000E9F64();
  sub_100008CB8(v21, qword_100145BC8);
  sub_100031894(a2, a3, BYTE1(a3) & 1);
  v22 = sub_1000E9F44();
  v23 = sub_1000EC194();
  sub_1000309CC(a2, a3, BYTE1(a3) & 1);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35 = a5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v34[1] = a6;
    v27 = v26;
    v40 = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v38 = a2;
    v39 = a3 & 0x1FF;
    sub_100031894(a2, a3, BYTE1(a3) & 1);
    sub_100002A10(&qword_1001304C0, &unk_1000F0C20);
    v28 = sub_1000EBEF4();
    v30 = sub_1000E2E18(v28, v29, &v40);

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error performing a reverse geocode. location=%{private,mask.hash}s. Returning a nameless location with current timezone.", v25, 0x16u);
    sub_100009068(v27);

    a5 = v35;
  }

  [v36 coordinate];
  sub_1000E9964();
  sub_1000E8774();
  v31 = sub_1000E8604();
  sub_1000028A0(v14, 1, 1, v31);
  sub_1000E9A14();
  v32 = sub_1000E9A84();
  sub_1000028A0(v20, 0, 1, v32);
  a5(v20, v37);
  return sub_100032054(v20, &qword_100130440, &qword_1000F0BE0);
}

void sub_10002B6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000EAC54();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EAC94();
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v14 = sub_1000E9F64();
  sub_100008CB8(v14, qword_100145BC8);
  v15 = sub_1000E9F44();
  v16 = sub_1000EC1B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "About to request location updates from CoreLocation", v17, 2u);
  }

  v18 = *&v3[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager];
  if (v18)
  {
    v19 = *&v3[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue];
    v20 = swift_allocObject();
    v20[2] = v3;
    v20[3] = v18;
    v20[4] = a1;
    v20[5] = a2;
    aBlock[4] = sub_1000309A8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032434;
    aBlock[3] = &unk_100125DB8;
    v21 = _Block_copy(aBlock);
    v22 = v18;
    v23 = v3;

    sub_1000EAC64();
    v27 = &_swiftEmptyArrayStorage;
    sub_1000316E4(&qword_100130450, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002A10(&qword_100130458, &qword_1000F0BE8);
    sub_100031CA4(&qword_100130460, &qword_100130458, &qword_1000F0BE8);
    sub_1000EC3C4();
    sub_1000EC264();
    _Block_release(v21);

    (*(v26 + 8))(v9, v6);
    (*(v24 + 8))(v13, v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002BA58(void (*a1)(char *, char *, uint64_t), void *a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v99 = a5;
  v97 = a3;
  v98 = a4;
  v93 = a1;
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v90 = &v85 - v8;
  v9 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v92 = &v85 - v11;
  v12 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v85 - v14;
  v16 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v85 - v18;
  v20 = sub_1000E99A4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002A10(&qword_1001304D0, &unk_1000F0C30);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v85 - v27;
  v95 = sub_1000E9A84();
  v101 = *(v95 - 8);
  v29 = *(v101 + 64);
  v30 = __chkstk_darwin(v95);
  v100 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v96 = &v85 - v33;
  v34 = __chkstk_darwin(v32);
  v94 = &v85 - v35;
  v91 = v36;
  __chkstk_darwin(v34);
  v38 = &v85 - v37;
  sub_1000E99C4();
  sub_100031DF4(a2, &selRef_name);
  sub_1000E9994();
  v39 = v38;

  (*(v21 + 8))(v24, v20);
  sub_1000028A0(v28, 0, 1, v20);
  v40 = sub_1000E8784();
  sub_1000028A0(v19, 1, 1, v40);
  v41 = sub_1000E8604();
  sub_1000028A0(v15, 1, 1, v41);
  sub_1000E9A54();
  sub_100032054(v15, &qword_10012F048, &qword_1000EEF30);
  sub_100032054(v19, &qword_1001304C8, &qword_1000F3D70);
  sub_100032054(v28, &qword_1001304D0, &unk_1000F0C30);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v42 = sub_1000E9F64();
  v43 = sub_100008CB8(v42, qword_100145BC8);
  v44 = v101;
  v45 = *(v101 + 16);
  v47 = v94;
  v46 = v95;
  v45(v94, v38, v95);
  v48 = v96;
  v45(v96, v39, v46);
  v89 = v43;
  v49 = sub_1000E9F44();
  v50 = sub_1000EC1B4();
  v51 = os_log_type_enabled(v49, v50);
  v93 = v45;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v86 = v50;
    v53 = v44;
    v54 = v52;
    v87 = swift_slowAlloc();
    v104 = v87;
    *v54 = 141558787;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v85 = v49;
    v45(v100, v47, v46);
    v55 = sub_1000EBEF4();
    v88 = v39;
    v57 = v56;
    v58 = *(v53 + 8);
    v58(v47, v46);
    v59 = sub_1000E2E18(v55, v57, &v104);

    *(v54 + 14) = v59;
    *(v54 + 22) = 2160;
    *(v54 + 24) = 1752392040;
    *(v54 + 32) = 2081;
    v102 = sub_1000E9A44();
    v103 = v60;
    v61 = sub_1000EBEF4();
    v63 = v62;
    v96 = v58;
    v58(v48, v46);
    v64 = sub_1000E2E18(v61, v63, &v104);
    v39 = v88;

    *(v54 + 34) = v64;
    v65 = v85;
    _os_log_impl(&_mh_execute_header, v85, v86, "Successfully performed a reverse geocode. location=%{private,mask.hash}s, name=%{private,mask.hash}s", v54, 0x2Au);
    swift_arrayDestroy();

    v66 = v101;
  }

  else
  {

    v67 = *(v44 + 8);
    v67(v48, v46);
    v96 = v67;
    v67(v47, v46);
    v66 = v44;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    v70 = sub_1000EC084();
    v71 = v92;
    sub_1000028A0(v92, 1, 1, v70);
    v72 = v100;
    v93(v100, v39, v46);
    v73 = v39;
    v74 = (*(v66 + 80) + 40) & ~*(v66 + 80);
    v75 = (v91 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 2) = 0;
    *(v76 + 3) = 0;
    *(v76 + 4) = v69;
    (*(v66 + 32))(&v76[v74], v72, v46);
    v77 = &v76[v75];
    v78 = v99;
    *v77 = v98;
    *(v77 + 1) = v78;
    v79 = v69;
    v39 = v73;

    sub_100028B14(0, 0, v71, &unk_1000F0CB8, v76);
  }

  else
  {
    v80 = sub_1000E9F44();
    v81 = sub_1000EC194();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "WidgetLocationManager.Self deallocated", v82, 2u);
    }

    v83 = v90;
    sub_1000028A0(v90, 1, 1, v46);
    v98(v83, 0);
    sub_100032054(v83, &qword_100130440, &qword_1000F0BE0);
  }

  return (v96)(v39, v46);
}

uint64_t sub_10002C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = *(*(sub_100002A10(&qword_100130440, &qword_1000F0BE0) - 8) + 64) + 15;
  v7[5] = swift_task_alloc();
  v10 = sub_1000E9A84();
  v7[6] = v10;
  v11 = *(v10 - 8);
  v7[7] = v11;
  v12 = *(v11 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[10] = v13;
  v14 = swift_task_alloc();
  v7[11] = v14;
  *v14 = v7;
  v14[1] = sub_10002C4C4;

  return sub_10002C5C0(v13, a5);
}

uint64_t sub_10002C4C4()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_10003246C();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_1000326AC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10002C5C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_100002A10(&qword_100130530, &qword_1000F0CC8) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1000E9A84();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = sub_100002A10(&qword_100130538, &unk_1000F0CD0);
  v3[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10002C734, 0, 0);
}

uint64_t sub_10002C734()
{
  sub_100032604();
  sub_1000324F0((v2[4] + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_savedLocationFinder));
  v3 = async function pointer to dispatch thunk of SavedLocationFinderType.find(by:)[1];
  swift_task_alloc();
  sub_1000325BC();
  v2[16] = v4;
  *v4 = v5;
  v4[1] = sub_10002C7EC;
  v6 = v2[15];
  v7 = v2[3];

  return dispatch thunk of SavedLocationFinderType.find(by:)(v6, v7, v0, v1);
}

uint64_t sub_10002C7EC()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_10003246C();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_1000326AC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10002C8E8()
{
  v76 = v0;
  if (qword_10012EB20 != -1)
  {
    sub_10003244C();
  }

  v2 = v0 + 3;
  v1 = v0[3];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = sub_1000E9F64();
  sub_100008CB8(v8, qword_100145BC8);
  v9 = sub_100032730();
  sub_100031FF0(v9, v10, v11, v12);
  v13 = *(v7 + 16);
  v13(v5, v1, v6);
  v14 = sub_1000E9F44();
  v15 = sub_1000EC1B4();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[14];
  v74 = v13;
  if (v16)
  {
    log = v14;
    v18 = v0[13];
    v19 = v0[11];
    v69 = v0[9];
    v70 = v0[10];
    v20 = v0[6];
    v71 = v0[7];
    v72 = v15;
    v21 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    sub_10003247C(7.2227e-34);
    sub_100031FF0(v17, v18, &qword_100130538, &unk_1000F0CD0);
    v22 = sub_1000EBEF4();
    v24 = v23;
    sub_100032054(v17, &qword_100130538, &unk_1000F0CD0);
    v25 = sub_1000E2E18(v22, v24, &v75);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2081;
    v13(v69, v70, v20);
    sub_1000EBEF4();
    (*(v71 + 8))(v70, v20);
    v26 = sub_10003277C();
    v29 = sub_1000E2E18(v26, v27, v28);

    *(v21 + 34) = v29;
    _os_log_impl(&_mh_execute_header, log, v72, "WidgetLocationManager found matched location =%{private,mask.hash}s, for input location=%{private,mask.hash}s", v21, 0x2Au);
    swift_arrayDestroy();
    sub_100009194();
    sub_100009118();
  }

  else
  {
    v30 = v0[10];
    v31 = v0[6];
    v32 = v0[7];

    v33 = *(v32 + 8);
    v34 = sub_100032730();
    v35(v34);
    sub_100032054(v17, &qword_100130538, &unk_1000F0CD0);
  }

  v36 = v0[12];
  sub_100031FF0(v0[15], v36, &qword_100130538, &unk_1000F0CD0);
  v37 = sub_1000E93E4();
  if (sub_100005B30(v36, 1, v37) == 1)
  {
    v38 = v0[15];
    v39 = v0[12];
    sub_10003266C();
    sub_100032054(v40, v41, v42);
    sub_10003266C();
LABEL_10:
    sub_100032054(v43, v44, v45);
    v53 = v74;
    goto LABEL_12;
  }

  v46 = v0[12];
  v47 = v0[5];
  sub_1000E93D4();
  sub_1000326A0(v37);
  (*(v48 + 8))(v46, v37);
  v49 = sub_1000E9614();
  v50 = sub_100005B30(v47, 1, v49);
  v51 = v0[15];
  if (v50 == 1)
  {
    v52 = v0[5];
    sub_100032054(v0[15], &qword_100130538, &unk_1000F0CD0);
    v44 = &unk_100130530;
    v45 = &unk_1000F0CC8;
    v43 = v52;
    goto LABEL_10;
  }

  v2 = v0 + 8;
  v54 = v0[8];
  v55 = v0[7];
  v56 = v0[5];
  sub_1000E9604();
  sub_100032054(v51, &qword_100130538, &unk_1000F0CD0);
  sub_1000326A0(v49);
  (*(v57 + 8))(v56, v49);
  v53 = *(v55 + 32);
LABEL_12:
  v58 = *v2;
  v59 = v0[14];
  v60 = v0[15];
  v62 = v0[12];
  v61 = v0[13];
  v64 = v0[9];
  v63 = v0[10];
  v65 = v0[8];
  v66 = v0[5];
  v53(v0[2], v58, v0[6]);

  sub_1000324E4();

  return v67();
}

uint64_t sub_10002CDB8()
{
  sub_1000327A8();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[5];

  sub_1000324E4();
  v10 = v0[17];

  return v9();
}

uint64_t sub_10002CE74(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v74 = a4;
  v72 = a2;
  v73 = a3;
  v5 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v65 = &v59 - v7;
  v8 = sub_100002A10(&qword_100130510, &qword_1000F0C70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v71 = &v59 - v10;
  v11 = sub_1000E9A84();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v76 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v59 - v17;
  v68 = v19;
  __chkstk_darwin(v16);
  v21 = &v59 - v20;
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v22 = sub_1000E9F64();
  v23 = sub_100008CB8(v22, qword_100145BC8);
  v24 = v12[2];
  v24(v21, a1, v11);
  v70 = a1;
  v24(v18, a1, v11);
  v25 = sub_1000E9F44();
  v26 = sub_1000EC1B4();
  v27 = os_log_type_enabled(v25, v26);
  v69 = v12;
  v67 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v60 = v18;
    v29 = v28;
    v63 = swift_slowAlloc();
    v75[0] = v63;
    *v29 = 141558787;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    v64 = v23;
    v62 = v26;
    v30 = v76;
    v24(v76, v21, v11);
    v31 = sub_1000EBEF4();
    v61 = v25;
    v33 = v32;
    v66 = v12 + 2;
    v34 = v12[1];
    v34(v21, v11);
    v35 = sub_1000E2E18(v31, v33, v75);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2160;
    *(v29 + 24) = 1752392040;
    *(v29 + 32) = 2081;
    v36 = v60;
    v24(v30, v60, v11);
    v37 = sub_1000EBEF4();
    v39 = v38;
    v34(v36, v11);
    v40 = sub_1000E2E18(v37, v39, v75);

    *(v29 + 34) = v40;
    v41 = v61;
    _os_log_impl(&_mh_execute_header, v61, v62, "Successfully performed a local search. location=%{private,mask.hash}s, name=%{private,mask.hash}s", v29, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v42 = v12[1];
    v42(v18, v11);
    v42(v21, v11);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v45 = sub_1000EC084();
    v46 = v71;
    sub_1000028A0(v71, 1, 1, v45);
    v47 = v76;
    v67(v76, v70, v11);
    v48 = v69;
    v49 = (*(v69 + 80) + 40) & ~*(v69 + 80);
    v50 = (v68 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 2) = 0;
    *(v51 + 3) = 0;
    *(v51 + 4) = v44;
    (v48[4])(&v51[v49], v47, v11);
    v52 = &v51[v50];
    v53 = v74;
    *v52 = v73;
    *(v52 + 1) = v53;

    sub_100028B14(0, 0, v46, &unk_1000F0CE8, v51);
  }

  else
  {
    v55 = sub_1000E9F44();
    v56 = sub_1000EC194();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "WidgetLocationManager.Self deallocated", v57, 2u);
    }

    v58 = v65;
    sub_1000028A0(v65, 1, 1, v11);
    v73(v58, 0);
    return sub_100032054(v58, &qword_100130440, &qword_1000F0BE0);
  }
}

uint64_t sub_10002D47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = *(*(sub_100002A10(&qword_100130440, &qword_1000F0BE0) - 8) + 64) + 15;
  v7[5] = swift_task_alloc();
  v10 = sub_1000E9A84();
  v7[6] = v10;
  v11 = *(v10 - 8);
  v7[7] = v11;
  v12 = *(v11 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[10] = v13;
  v14 = swift_task_alloc();
  v7[11] = v14;
  *v14 = v7;
  v14[1] = sub_10002D5DC;

  return sub_10002C5C0(v13, a5);
}

uint64_t sub_10002D5DC()
{
  sub_100032530();
  sub_1000325B0();
  sub_1000324B8();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  sub_10003246C();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_1000326AC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10002D6D8()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v7 = *(v3 + 16);
  sub_10003266C();
  v8();
  sub_10000D554();
  sub_1000028A0(v9, v10, v11, v2);
  v6(v5, 1);
  sub_100032054(v5, &qword_100130440, &qword_1000F0BE0);
  v12 = *(v3 + 8);
  v13 = sub_100032730();
  v14(v13);
  sub_10003273C();

  sub_1000324E4();

  return v15();
}

uint64_t sub_10002D7D0()
{
  v39 = v0;
  if (qword_10012EB20 != -1)
  {
    sub_10003244C();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1000E9F64();
  sub_100008CB8(v5, qword_100145BC8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1000E9F44();
  sub_1000EC194();
  sub_100032584();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = sub_1000327F4();
    v36 = sub_10000923C();
    v38 = v36;
    sub_10003247C(7.2225e-34);
    v6(v12, v10, v13);
    v15 = sub_1000EBEF4();
    v37 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1000E2E18(v15, v17, &v38);
    v6 = v37;

    *(v14 + 14) = v18;
    sub_100032574();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_100009068(v36);
    sub_100009194();
    sub_100009118();
  }

  else
  {
    v24 = v0[6];
    v25 = v0[7];

    (*(v25 + 8))(v10, v24);
  }

  v26 = v0[12];
  v27 = v0[5];
  v28 = v0[6];
  v30 = v0[3];
  v29 = v0[4];
  v6(v27, v0[2], v28);
  sub_10000D554();
  sub_1000028A0(v31, v32, v33, v28);
  v30(v27, 1);

  sub_100032054(v27, &qword_100130440, &qword_1000F0BE0);
  sub_10003273C();

  sub_1000324E4();

  return v34();
}

void sub_10002DA38()
{
  sub_100006A58();
  v2 = v1;
  v4 = v3;
  v5 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  if (qword_10012EB20 != -1)
  {
    sub_10003244C();
  }

  v9 = sub_1000E9F64();
  sub_1000326C4(v9, qword_100145BC8);

  v10 = sub_1000E9F44();
  v11 = sub_1000EC194();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1000327F4();
    v13 = sub_10000923C();
    v21 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;

    v14 = sub_1000EBEF4();
    v16 = sub_1000E2E18(v14, v15, &v21);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, v2, v12, 0x16u);
    sub_100009068(v13);
    sub_100009194();
    sub_100009194();
  }

  sub_1000E9A84();
  sub_10000D52C();
  sub_1000028A0(v17, v18, v19, v20);
  v4(v0, 0);
  sub_100032054(v0, &qword_100130440, &qword_1000F0BE0);
  sub_100006A20();
}

void sub_10002DC0C(uint64_t a1, void *a2, void (*a3)(id, void), uint64_t a4)
{
  if (sub_100028DF8())
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E9F64();
    sub_100008CB8(v8, qword_100145BC8);
    v9 = sub_1000E9F44();
    v10 = sub_1000EC1B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "location permissions granted, we can safely start listening to location updates from CoreLocation.", v11, 2u);
    }

    v12 = *(a1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_lock);
    sub_1000E9AE4();
    v13 = *(a1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer);
    v14 = sub_1000E9F44();
    v15 = sub_1000EC1B4();
    v16 = os_log_type_enabled(v14, v15);
    if (v13)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "We are already listening to location updates from CoreLocation.", v17, 2u);
      }
    }

    else
    {
      if (v16)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Starting listening to location updates from CoreLocation.", v26, 2u);
      }

      [a2 startUpdatingLocation];
      sub_10002DFC0();
    }

    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v28 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_completionQueue;
    swift_beginAccess();

    sub_100030C44();
    v29 = *(*(a1 + v28) + 16);
    sub_100030CA0(v29);
    v30 = *(a1 + v28);
    *(v30 + 16) = v29 + 1;
    v31 = v30 + 16 * v29;
    *(v31 + 32) = sub_100030A10;
    *(v31 + 40) = v27;
    *(a1 + v28) = v30;
    swift_endAccess();
    sub_1000E9AF4();
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v18 = sub_1000E9F64();
    sub_100008CB8(v18, qword_100145BC8);
    v19 = sub_1000E9F44();
    v20 = sub_1000EC1B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "location permissions NOT granted, attempting to return a cachedLocation.", v21, 2u);
    }

    v22 = sub_10002E6DC(2);
    v24 = v23;
    v25 = (v23 >> 8) & 1;
    a3(v22, v23 | (v25 << 8));

    sub_1000309CC(v22, v24, v25);
  }
}

uint64_t sub_10002DFC0()
{
  v1 = sub_1000EAC54();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  __chkstk_darwin(v1);
  v53 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000EAC94();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  __chkstk_darwin(v4);
  v52 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EAC44();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v9 = __chkstk_darwin(v7);
  v51 = (v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v12 = (v47 - v11);
  v48 = sub_1000EACB4();
  v59 = *(v48 - 8);
  v13 = *(v59 + 64);
  v14 = __chkstk_darwin(v48);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v47 - v17;
  v19 = sub_1000EC284();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100031CF8(0, &qword_100130478, OS_dispatch_source_ptr);
  v47[1] = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000316E4(&qword_100130480, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100002A10(&qword_100130488, &qword_1000F0C00);
  sub_100031CA4(&qword_100130490, &qword_100130488, &qword_1000F0C00);
  sub_1000EC3C4();
  v58 = sub_1000EC294();
  (*(v20 + 8))(v23, v19);
  swift_getObjectType();
  sub_1000EACA4();
  *v12 = 10;
  v24 = v49;
  v25 = v50;
  (*(v49 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v50);
  v26 = v18;
  sub_1000EACD4();
  v27 = *(v24 + 8);
  v27(v12, v25);
  v28 = *(v59 + 8);
  v59 += 8;
  v29 = v16;
  v30 = v48;
  v28(v29, v48);
  sub_10002F568(v12);
  v31 = v51;
  sub_10002F5DC(v51);
  sub_1000EC324();
  v27(v31, v25);
  v27(v12, v25);
  v28(v26, v30);
  v32 = swift_allocObject();
  v33 = v47[2];
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10003172C;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032434;
  aBlock[3] = &unk_100125E08;
  v34 = _Block_copy(aBlock);

  v35 = v52;
  sub_1000EAC64();
  v36 = v53;
  sub_10002F864();
  v37 = v36;
  v38 = v58;
  sub_1000EC2A4();
  v39 = v34;
  v40 = v38;
  _Block_release(v39);
  (*(v56 + 8))(v37, v57);
  (*(v54 + 8))(v35, v55);

  sub_1000EC2C4();
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v41 = sub_1000E9F64();
  sub_100008CB8(v41, qword_100145BC8);
  v42 = sub_1000E9F44();
  v43 = sub_1000EC1B4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Timer: starting current location fetch timer", v44, 2u);
  }

  v45 = *(v33 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer);
  *(v33 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer) = v40;
  return swift_unknownObjectRelease();
}

id sub_10002E6DC(uint64_t a1)
{
  v2 = v1;
  v39[0] = a1;
  v3 = sub_100002A10(&qword_1001304A8, &unk_1000F0C10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - v5;
  v7 = sub_1000E9724();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB20 != -1)
  {
    swift_once();
  }

  v12 = sub_1000E9F64();
  sub_100008CB8(v12, qword_100145BC8);
  v13 = sub_1000E9F44();
  v14 = sub_1000EC1B4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "About to retrieve our last cachedLocation", v15, 2u);
  }

  v16 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager;
  result = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager);
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  [result _authorizationStatus];
  if (sub_1000EC2D4())
  {
    result = *(v2 + v16);
    if (result)
    {
      if ([result isAuthorizedForWidgetUpdates])
      {
        v18 = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 32);
        sub_100008DA8((v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
        sub_1000E98A4();
        if (sub_100005B30(v6, 1, v7) != 1)
        {
          (*(v8 + 32))(v11, v6, v7);
          v30 = sub_10002F330();
          v31 = sub_1000E9F44();
          v32 = sub_1000EC1B4();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v39[1] = v30;
            v40 = v34;
            *v33 = 141558275;
            *(v33 + 4) = 1752392040;
            *(v33 + 12) = 2081;
            sub_100031CF8(0, &unk_1001304B0, CLLocation_ptr);
            v35 = v30;
            v36 = sub_1000EBEF4();
            v38 = sub_1000E2E18(v36, v37, &v40);

            *(v33 + 14) = v38;
            _os_log_impl(&_mh_execute_header, v31, v32, "Successfully retrieved a previous cachedLocation. location=%{private,mask.hash}s", v33, 0x16u);
            sub_100009068(v34);
          }

          (*(v8 + 8))(v11, v7);
          return v30;
        }

        sub_100032054(v6, &qword_1001304A8, &unk_1000F0C10);
        v19 = sub_1000E9F44();
        v20 = sub_1000EC1B4();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Aborting cachedLocation: no previous location data available", v21, 2u);
        }

        return LOBYTE(v39[0]);
      }

      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_13:
  v23 = sub_1000E9F44();
  v24 = sub_1000EC1B4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Aborting cachedLocation: we are no longer authorized.", v25, 2u);
  }

  if (sub_1000EC2F4())
  {
    goto LABEL_18;
  }

  result = *(v2 + v16);
  if (result)
  {
    if ([result isAuthorizedForWidgetUpdates])
    {
      return LOBYTE(v39[0]);
    }

LABEL_18:
    v26 = sub_1000E9F44();
    v27 = sub_1000EC1B4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Previous location authorization revoked. Clearing cache.", v28, 2u);
    }

    v29 = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 32);
    sub_100008DA8((v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
    sub_1000E98D4();
    return LOBYTE(v39[0]);
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_10002EC64(void *a1, int a2)
{
  v5 = v2;
  v8 = sub_1000EACC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v5[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue];
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = sub_1000EACE4();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(v12, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    LOBYTE(v44[0]) = a1;
    sub_100031734();
    swift_willThrowTypedImpl();
    v15 = 0;
    v3 = 0xEC0000006C756673;
    v4 = 0x7365636375736E75;
  }

  else
  {
    v17 = a1;
    v3 = 0xEA00000000006C75;
    v4 = 0x6673736563637573;
    v15 = a1;
  }

  v41 = a2;
  if (qword_10012EB20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v18 = sub_1000E9F64();
    sub_100008CB8(v18, qword_100145BC8);
    v19 = v15;

    v20 = sub_1000E9F44();
    v21 = sub_1000EC1B4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = a1;
      v23 = v22;
      v44[0] = swift_slowAlloc();
      *v23 = 136446723;
      *(v23 + 4) = sub_1000E2E18(v4, v3, v44);
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2081;
      v42 = v15;
      v24 = v19;
      sub_100002A10(&qword_1001304A0, &qword_1000F0C08);
      v25 = sub_1000EBEF4();
      v27 = sub_1000E2E18(v25, v26, v44);

      *(v23 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "CoreLocation fetch was %{public}s ...now stopping listening to location updates. location=%{private,mask.hash}s", v23, 0x20u);
      swift_arrayDestroy();

      a1 = v40;
    }

    v5[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationIsUpdating] = 0;
    v28 = *&v5[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationManager];
    if (!v28)
    {
      break;
    }

    v29 = v28;

    [v29 stopUpdatingLocation];

    v30 = *&v5[OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_lock];
    sub_1000E9AE4();
    sub_10002F15C();
    v31 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_completionQueue;
    swift_beginAccess();
    v3 = *&v5[v31];
    *&v5[v31] = &_swiftEmptyArrayStorage;
    sub_1000E9AF4();
    v5 = sub_10002F2A4(a1, v41 & 1, v5);
    v15 = v32;

    v33 = sub_1000E9F44();
    v34 = sub_1000EC1B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = *(v3 + 16);

      _os_log_impl(&_mh_execute_header, v33, v34, "locationUpdate: completed returning (%ld) requests", v35, 0xCu);
    }

    else
    {
    }

    v36 = 0;
    v4 = *(v3 + 16);
    for (i = (v3 + 40); ; i += 2)
    {
      if (v4 == v36)
      {

        sub_1000309CC(v5, v15, BYTE1(v15) & 1);

        return;
      }

      if (v36 >= *(v3 + 16))
      {
        break;
      }

      ++v36;
      a1 = *(i - 1);
      v38 = *i;
      v42 = v5;
      v43 = v15 & 0x1FF;

      (a1)(&v42);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  __break(1u);
}

void sub_10002F15C()
{
  v1 = OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer;
  if (*(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer))
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_timer);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1000EC2B4();
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E9F64();
    sub_100008CB8(v4, qword_100145BC8);
    v5 = sub_1000E9F44();
    v6 = sub_1000EC1B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Timer: stopped successfully before expiration", v7, 2u);
    }

    swift_unknownObjectRelease();

    v8 = *(v2 + v1);
    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

id sub_10002F2A4(uint64_t a1, char a2, uint64_t a3)
{
  v3 = a1;
  if (a2)
  {
    return sub_10002E6DC(a1);
  }

  v4 = *(a3 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 32);
  sub_100008DA8((a3 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(a3 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
  v5 = v3;
  sub_1000E98C4();
  return v3;
}

uint64_t sub_10002F330()
{
  v0 = sub_1000E9A84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E9704();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9714();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v1 + 32))(v4, v8, v0);
  v9 = sub_1000E9954();
  (*(v1 + 8))(v4, v0);
  return v9;
}

uint64_t sub_10002F494(uint64_t a1)
{
  v2 = sub_1000E9554();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000E99E4();
}

uint64_t sub_10002F568@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = sub_1000EAC44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10002F5DC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = sub_1000EAC44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_10002F654()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E9F64();
    sub_100008CB8(v2, qword_100145BC8);
    v3 = sub_1000E9F44();
    v4 = sub_1000EC1B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Timer: timed out while attempting to fetch the current location", v5, 2u);
    }

    sub_10002EC64(0, 1);
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E9F64();
    sub_100008CB8(v6, qword_100145BC8);
    v1 = sub_1000E9F44();
    v7 = sub_1000EC194();
    if (os_log_type_enabled(v1, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v1, v7, "Timer: we were deallocated before the timer timed out", v8, 2u);
    }
  }
}

uint64_t sub_10002F820(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10002F864()
{
  sub_1000EAC54();
  sub_1000316E4(&qword_100130450, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002A10(&qword_100130458, &qword_1000F0BE8);
  sub_100031CA4(&qword_100130460, &qword_100130458, &qword_1000F0BE8);
  return sub_1000EC3C4();
}

void sub_10002F93C()
{
  sub_100006A58();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1000E9704();
  v8 = sub_100009210(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100006A10();
  v13 = v12 - v11;
  v14 = sub_100002A10(&qword_1001304A8, &unk_1000F0C10);
  sub_100009210(v14);
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  sub_100019AE8();
  v18 = sub_1000EACC4();
  v19 = sub_1000090D4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100006A10();
  v26 = v25 - v24;
  v27 = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  *(v25 - v24) = v27;
  (*(v21 + 104))(v25 - v24, enum case for DispatchPredicate.onQueue(_:), v18);
  v28 = v27;
  LOBYTE(v27) = sub_1000EACE4();
  v30 = *(v21 + 8);
  v29 = v21 + 8;
  v30(v26, v18);
  if ((v27 & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_10003244C();
    goto LABEL_22;
  }

  *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationIsUpdating) = 1;
  if (sub_100030A44(v4))
  {
    v31 = [v6 _limitsPrecision];
    v32 = *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 32);
    sub_100008DA8((v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager), *(v2 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationCacheManager + 24));
    sub_1000E98A4();
    v33 = sub_1000E9724();
    v61[0] = v2;
    if (sub_100005B30(v1, 1, v33) == 1)
    {
      sub_100032054(v1, &qword_1001304A8, &unk_1000F0C10);
      v1 = 0;
    }

    else
    {
      sub_1000E9714();
      sub_1000326A0(v33);
      (*(v37 + 8))(v1, v33);
      v1 = sub_1000E96F4();
      sub_1000323C4(v13);
    }

    v62 = v4;
    v38 = sub_100030A44(v4);
    v39 = v38;
    do
    {
      v40 = v39;
      if (!v39)
      {
        break;
      }

      --v39;
      if (__OFSUB__(v40, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v41 = sub_1000EC3F4();
      }

      else
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v39 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v41 = *(v4 + 32 + 8 * v39);
      }

      v42 = v41;
      v43 = sub_1000EC154(v31, v1);
    }

    while (!v43);
    __chkstk_darwin(v38);
    v61[-2] = &v62;
    v45 = sub_100031D9C(sub_1000323A4, &v61[-4], v39, v44);
    if (v45)
    {
      v4 = v45;
      if (qword_10012EB20 != -1)
      {
        goto LABEL_35;
      }

LABEL_22:
      v46 = sub_1000E9F64();
      sub_1000326C4(v46, qword_100145BC8);
      v47 = v4;
      v48 = sub_1000E9F44();
      v49 = sub_1000EC1B4();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = sub_1000327F4();
        v51 = sub_10000923C();
        v62 = v51;
        *v50 = 141558275;
        *(v50 + 4) = 1752392040;
        *(v50 + 12) = 2081;
        v61[1] = v47;
        sub_100031CF8(0, &unk_1001304B0, CLLocation_ptr);
        v52 = v47;
        v53 = sub_1000EBEF4();
        v55 = sub_1000E2E18(v53, v54, &v62);

        *(v50 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "locationUpdate: completed successfully. location=%{private,mask.hash}s)", v50, 0x16u);
        sub_100009068(v51);
        sub_100009194();
        sub_100009194();
      }

      v56 = v47;
      sub_10002EC64(v4, 0);

      goto LABEL_30;
    }

    if (qword_10012EB20 != -1)
    {
      sub_10003244C();
    }

    v57 = sub_1000E9F64();
    sub_1000326C4(v57, qword_100145BC8);
    v58 = sub_1000E9F44();
    v59 = sub_1000EC1B4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = sub_1000091BC();
      sub_1000091E0(v60);
      sub_10003270C(&_mh_execute_header, v58, v59, "locationUpdate: locationManager did update locations but it's invalid or not accurate enough");
      sub_100009118();
    }
  }

  else
  {
    if (qword_10012EB20 != -1)
    {
      sub_10003244C();
    }

    v34 = sub_1000E9F64();
    sub_1000326C4(v34, qword_100145BC8);
    v1 = sub_1000E9F44();
    sub_1000EC1B4();
    sub_100032584();
    if (os_log_type_enabled(&v1->value.super, v35))
    {
      v36 = sub_1000091BC();
      sub_100032610(v36);
      _os_log_impl(&_mh_execute_header, &v1->value.super, v29, "locationUpdate: locationManager did update locations but location list is empty", v6, 2u);
      sub_100009194();
    }
  }

LABEL_30:

  sub_100006A20();
}

void sub_10002FF70()
{
  v1 = sub_1000EACC4();
  v2 = sub_1000090D4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100006A10();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  *(v8 - v7) = v10;
  (*(v4 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v1);
  v11 = v10;
  LOBYTE(v10) = sub_1000EACE4();
  (*(v4 + 8))(v9, v1);
  if (v10)
  {
    if (qword_10012EB20 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10003244C();
LABEL_3:
  v12 = sub_1000E9F64();
  sub_1000326C4(v12, qword_100145BC8);
  swift_errorRetain();
  v13 = sub_1000E9F44();
  v14 = sub_1000EC1B4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = sub_10000923C();
    v20 = v16;
    *v15 = 136380675;
    swift_errorRetain();
    sub_100002A10(&qword_100130548, &qword_1000F0CF0);
    v17 = sub_1000EBEF4();
    v19 = sub_1000E2E18(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "locationUpdate: locationManager didFailWithError: %{private}s ... letting CoreLocation keep trying", v15, 0xCu);
    sub_100009068(v16);
    sub_100009194();
    sub_100009194();
  }
}

void sub_1000301F4()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v4 = sub_1000EACC4();
  v5 = sub_1000090D4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100006A10();
  v12 = v11 - v10;
  v13 = *(v1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationQueue);
  *(v11 - v10) = v13;
  (*(v7 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v4);
  v14 = v13;
  v15 = sub_1000EACE4();
  v17 = *(v7 + 8);
  v16 = v7 + 8;
  v17(v12, v4);
  if (v15)
  {
    [v3 authorizationStatus];
    v15 = [v3 _limitsPrecision];
    v16 = [v3 isAuthorizedForWidgetUpdates];
    if (qword_10012EB20 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10003244C();
LABEL_3:
  v18 = sub_1000E9F64();
  sub_100008CB8(v18, qword_100145BC8);
  v19 = sub_1000E9F44();
  v20 = sub_1000EC1B4();
  if (sub_1000091EC(v20))
  {
    v21 = swift_slowAlloc();
    v38 = sub_10000923C();
    v39 = v38;
    *v21 = 136446722;
    v22 = sub_1000EC2E4();
    v24 = v1;
    v25 = v3;
    v26 = v16;
    v27 = v15;
    v28 = sub_1000E2E18(v22, v23, &v39);

    *(v21 + 4) = v28;
    *(v21 + 12) = 1024;
    *(v21 + 14) = v27;
    *(v21 + 18) = 1024;
    *(v21 + 20) = v26;
    v3 = v25;
    v1 = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "locationUpdate: locationManager didChangeAuthorization. Received new states: authorizationState:%{public}s, limitsPrecision: %{BOOL}d, isAuthorizedForWidgetUpdates=%{BOOL}d", v21, 0x18u);
    sub_100009068(v38);
    sub_100009194();
    sub_100009194();
  }

  if (sub_100028DF8())
  {
    v29 = *(v1 + OBJC_IVAR____TtC13WeatherWidget21WidgetLocationManager_locationIsUpdating);
    v30 = sub_1000E9F44();
    v31 = sub_1000EC1B4();
    v32 = sub_1000091EC(v31);
    if (v29)
    {
      if (v32)
      {
        v33 = sub_1000091BC();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "locationUpdate: not starting listening to location updates: location is already updating", v33, 2u);
        sub_100009194();
      }
    }

    else
    {
      if (v32)
      {
        v37 = sub_1000091BC();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "locationUpdate: starting listening to location updates", v37, 2u);
        sub_100009194();
      }

      [v3 startUpdatingLocation];
    }
  }

  else
  {
    v34 = sub_1000E9F44();
    v35 = sub_1000EC1B4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_1000091BC();
      sub_1000091E0(v36);
      sub_10003270C(&_mh_execute_header, v34, v35, "locationUpdate: not starting listening to location updates: we don't have location permissions");
      sub_100009118();
    }
  }

  sub_100006A20();
}

_BYTE *storeEnumTagSinglePayload for FailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030694);
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

_BYTE *storeEnumTagSinglePayload for LocationState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100030798);
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

unint64_t sub_1000307D4()
{
  result = qword_100130430;
  if (!qword_100130430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130430);
  }

  return result;
}

unint64_t sub_10003082C()
{
  result = qword_100130438;
  if (!qword_100130438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130438);
  }

  return result;
}

id sub_100030880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1000EBE64();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundleIdentifier:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_10003090C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030968()
{
  v1 = *(v0 + 40);

  v2 = sub_1000326EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000309B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000309CC(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_1000309D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100030A1C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100030A44(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

uint64_t sub_100030A68(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100030B60;

  return v7(a1);
}

uint64_t sub_100030B60()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  sub_1000324E4();

  return v5();
}

void sub_100030C44()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_100031208();
    *v0 = v4;
  }
}

void sub_100030CA0(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_100031208();
    *v1 = v2;
  }
}

void sub_100030CF0()
{
  sub_1000326B8();
  if (v3)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100002A10(&qword_10012F128, &qword_1000EEF38);
    v9 = sub_100032758();
    j__malloc_size(v9);
    sub_10003253C();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_100030DC4()
{
  sub_1000325A0();
  if (v3)
  {
    sub_100032564();
    if (v5 != v6)
    {
      sub_1000327C8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000315C4(*(v0 + 16), v4, &qword_1001304F0, &qword_1000F0C50, type metadata accessor for EventViewModel);
  v7 = sub_100032724();
  v8 = type metadata accessor for EventViewModel(v7);
  sub_100006A04(v8);
  v10 = *(v9 + 80);
  sub_10003279C();
  if (v1)
  {
    sub_100032678(type metadata accessor for EventViewModel, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

void sub_100030EA4()
{
  sub_1000326B8();
  if (v5)
  {
    sub_1000324A8();
    if (v7 != v8)
    {
      sub_100032694();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100032510(v6);
  if (v3)
  {
    sub_100002A10(&qword_100130500, &qword_1000F0C60);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_100030F78()
{
  sub_1000326B8();
  if (v5)
  {
    sub_1000324A8();
    if (v7 != v8)
    {
      sub_100032694();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100032510(v6);
  if (v3)
  {
    sub_100002A10(&qword_100130558, &qword_1000F0D00);
    v9 = sub_100032758();
    j__malloc_size(v9);
    sub_10003253C();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10003104C()
{
  sub_1000326B8();
  if (v5)
  {
    sub_1000324A8();
    if (v7 != v8)
    {
      sub_100032694();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100032510(v6);
  if (v3)
  {
    sub_100002A10(&unk_100130560, &qword_1000F0998);
    v9 = sub_100032758();
    j__malloc_size(v9);
    sub_1000327B4();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}