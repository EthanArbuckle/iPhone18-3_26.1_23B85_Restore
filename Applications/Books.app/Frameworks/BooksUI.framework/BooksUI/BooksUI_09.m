uint64_t _s7BooksUI14CoverViewModelV0C9ImageInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v8 = *(a1 + 25);
  v9 = a1[4];
  v10 = a1[5];
  v31 = *(a1 + 48);
  v11 = *(a1 + 9);
  v50 = *(a1 + 7);
  v51 = v11;
  v52[0] = *(a1 + 11);
  *(v52 + 9) = *(a1 + 97);
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 2);
  v15 = *(a2 + 24);
  v16 = *(a2 + 25);
  v18 = a2[4];
  v17 = a2[5];
  v19 = *(a2 + 48);
  *(v55 + 9) = *(a2 + 97);
  v20 = *(a2 + 11);
  v21 = *(a2 + 7);
  v54 = *(a2 + 9);
  v55[0] = v20;
  v53 = v21;
  if (*&v4 == *&v12 && v5 == v13)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    if ((sub_264F10() & 1) == 0)
    {
      return v22 & 1;
    }
  }

  if (v6 == v14 && ((v7 ^ v15) & 1) == 0)
  {
    v23 = sub_2609D0();
    v25 = v24;
    if (v23 == sub_2609D0() && v25 == v26)
    {
    }

    else
    {
      v27 = sub_264F10();

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (!v10)
    {
      v22 = 0;
      if (v17)
      {
        return v22 & 1;
      }

      goto LABEL_20;
    }

    if (v17)
    {
      if (v9 == v18 && v10 == v17)
      {
        if (v31 != v19)
        {
          goto LABEL_16;
        }

LABEL_21:
        v28 = v50;
        v48 = v51;
        v49[0] = v52[0];
        *(v49 + 9) = *(v52 + 9);
        v29 = v53;
        v46 = v54;
        v47[0] = v55[0];
        *(v47 + 9) = *(v55 + 9);
        if (*(&v50 + 1))
        {
          v42 = v50;
          v43 = v51;
          v44[0] = v52[0];
          *(v44 + 9) = *(v52 + 9);
          v39 = v50;
          v40 = v51;
          v41[0] = v44[0];
          *(v41 + 9) = *(v52 + 9);
          if (*(&v53 + 1))
          {
            v37 = v54;
            v38[0] = v55[0];
            *(v38 + 9) = *(v55 + 9);
            v36 = v53;
            sub_8198(&v50, v34, &qword_31C388, &qword_2728F0);
            sub_8198(&v53, v34, &qword_31C388, &qword_2728F0);
            sub_8198(&v42, v34, &qword_31C388, &qword_2728F0);
            v22 = _s7BooksUI14CoverViewModelV17AccessibilityInfoV2eeoiySbAE_AEtFZ_0(&v39, &v36);
            v32[0] = v36;
            v32[1] = v37;
            v33[0] = v38[0];
            *(v33 + 9) = *(v38 + 9);
            sub_EA7C4(v32);
            v34[0] = v39;
            v34[1] = v40;
            v35[0] = v41[0];
            *(v35 + 9) = *(v41 + 9);
            sub_EA7C4(v34);
            v36 = v28;
            v37 = v48;
            v38[0] = v49[0];
            *(v38 + 9) = *(v49 + 9);
            sub_8E80(&v36, &qword_31C388, &qword_2728F0);
            return v22 & 1;
          }

          v36 = v42;
          v37 = v43;
          v38[0] = v44[0];
          *(v38 + 9) = *(v44 + 9);
          sub_8198(&v50, v34, &qword_31C388, &qword_2728F0);
          sub_8198(&v53, v34, &qword_31C388, &qword_2728F0);
          sub_8198(&v42, v34, &qword_31C388, &qword_2728F0);
          sub_EA7C4(&v36);
        }

        else
        {
          if (!*(&v53 + 1))
          {
            v42 = v50;
            v43 = v51;
            v44[0] = v52[0];
            *(v44 + 9) = *(v52 + 9);
            sub_8198(&v50, &v39, &qword_31C388, &qword_2728F0);
            sub_8198(&v53, &v39, &qword_31C388, &qword_2728F0);
            sub_8E80(&v42, &qword_31C388, &qword_2728F0);
            v22 = 1;
            return v22 & 1;
          }

          sub_8198(&v50, &v42, &qword_31C388, &qword_2728F0);
          sub_8198(&v53, &v42, &qword_31C388, &qword_2728F0);
        }

        v42 = v28;
        v43 = v48;
        v44[0] = v49[0];
        *(v44 + 9) = *(v49 + 9);
        v44[2] = v29;
        v44[3] = v46;
        v45[0] = v47[0];
        *(v45 + 9) = *(v47 + 9);
        sub_8E80(&v42, &qword_31D558, &unk_275620);
        v22 = 0;
        return v22 & 1;
      }

      v22 = 0;
      if ((sub_264F10() & 1) == 0)
      {
        return v22 & 1;
      }

LABEL_20:
      if ((v31 ^ v19))
      {
        return v22 & 1;
      }

      goto LABEL_21;
    }

LABEL_16:
    v22 = 0;
  }

  return v22 & 1;
}

unint64_t sub_EA5D4()
{
  result = qword_31D3B8;
  if (!qword_31D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3B8);
  }

  return result;
}

unint64_t sub_EA628()
{
  result = qword_31D3C0;
  if (!qword_31D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3C0);
  }

  return result;
}

unint64_t sub_EA67C()
{
  result = qword_31D3C8;
  if (!qword_31D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3C8);
  }

  return result;
}

unint64_t sub_EA738()
{
  result = qword_31D3D8;
  if (!qword_31D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D3D8);
  }

  return result;
}

unint64_t sub_EA7F4()
{
  result = qword_31D400;
  if (!qword_31D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D400);
  }

  return result;
}

unint64_t sub_EA848()
{
  result = qword_31D408;
  if (!qword_31D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D408);
  }

  return result;
}

unint64_t sub_EA89C()
{
  result = qword_31D410;
  if (!qword_31D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D410);
  }

  return result;
}

unint64_t sub_EA8F0()
{
  result = qword_31D418;
  if (!qword_31D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D418);
  }

  return result;
}

unint64_t sub_EA944()
{
  result = qword_31D420;
  if (!qword_31D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D420);
  }

  return result;
}

unint64_t sub_EA9C8()
{
  result = qword_31D430;
  if (!qword_31D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D430);
  }

  return result;
}

unint64_t sub_EAA1C()
{
  result = qword_31D438;
  if (!qword_31D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D438);
  }

  return result;
}

unint64_t sub_EAA70(uint64_t a1)
{
  result = sub_EA944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAA98(uint64_t a1)
{
  result = sub_EA67C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAAC0(uint64_t a1)
{
  result = sub_EAA1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAAE8(uint64_t a1)
{
  result = sub_EAB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_EAB10()
{
  result = qword_31D440;
  if (!qword_31D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D440);
  }

  return result;
}

__n128 sub_EAB74(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_EABA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_EABE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EAC70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 1;
  v3 = *(result + 112) | (a2 << 62);
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v2;
  *(result + 112) = v3;
  return result;
}

unint64_t sub_EAD20()
{
  result = qword_31D448;
  if (!qword_31D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D448);
  }

  return result;
}

unint64_t sub_EAD78()
{
  result = qword_31D450;
  if (!qword_31D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D450);
  }

  return result;
}

unint64_t sub_EADD0()
{
  result = qword_31D458;
  if (!qword_31D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D458);
  }

  return result;
}

unint64_t sub_EAE28()
{
  result = qword_31D460;
  if (!qword_31D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D460);
  }

  return result;
}

unint64_t sub_EAE80()
{
  result = qword_31D468;
  if (!qword_31D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D468);
  }

  return result;
}

unint64_t sub_EAED8()
{
  result = qword_31D470;
  if (!qword_31D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D470);
  }

  return result;
}

unint64_t sub_EAF30()
{
  result = qword_31D478;
  if (!qword_31D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D478);
  }

  return result;
}

unint64_t sub_EAF88()
{
  result = qword_31D480;
  if (!qword_31D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D480);
  }

  return result;
}

unint64_t sub_EAFE0()
{
  result = qword_31D488;
  if (!qword_31D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D488);
  }

  return result;
}

unint64_t sub_EB038()
{
  result = qword_31D490;
  if (!qword_31D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D490);
  }

  return result;
}

unint64_t sub_EB090()
{
  result = qword_31D498;
  if (!qword_31D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D498);
  }

  return result;
}

unint64_t sub_EB0E8()
{
  result = qword_31D4A0;
  if (!qword_31D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4A0);
  }

  return result;
}

unint64_t sub_EB140()
{
  result = qword_31D4A8;
  if (!qword_31D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4A8);
  }

  return result;
}

unint64_t sub_EB198()
{
  result = qword_31D4B0;
  if (!qword_31D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4B0);
  }

  return result;
}

unint64_t sub_EB1F0()
{
  result = qword_31D4B8;
  if (!qword_31D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4B8);
  }

  return result;
}

unint64_t sub_EB248()
{
  result = qword_31D4C0;
  if (!qword_31D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4C0);
  }

  return result;
}

unint64_t sub_EB2A0()
{
  result = qword_31D4C8;
  if (!qword_31D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4C8);
  }

  return result;
}

unint64_t sub_EB2F8()
{
  result = qword_31D4D0;
  if (!qword_31D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4D0);
  }

  return result;
}

unint64_t sub_EB350()
{
  result = qword_31D4D8;
  if (!qword_31D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4D8);
  }

  return result;
}

unint64_t sub_EB3A8()
{
  result = qword_31D4E0;
  if (!qword_31D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4E0);
  }

  return result;
}

unint64_t sub_EB400()
{
  result = qword_31D4E8;
  if (!qword_31D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D4E8);
  }

  return result;
}

uint64_t sub_EB454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C54527369 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C52557265766F63 && a2 == 0xEE00676E69727453 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002921C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_EB6B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365697265537369 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E736569726573 && a2 == 0xEA0000000000656DLL || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_EB86C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002921E0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEF6B6F6F42726564)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_EB998()
{
  v1 = v0[3];
  v2 = *(v0 + 32);
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  if ((v4 & 1) == 0)
  {
    sub_406D8(v1, v2);
  }

  sub_262510();
  sub_2EF0(&qword_31D578, &qword_275838);
  sub_EBC80(&qword_31D580, &qword_31D578, &qword_275838);
  return sub_262D10();
}

uint64_t sub_EBA8C()
{
  sub_406D8(*v0, *(v0 + 8));
  sub_262510();
  sub_2EF0(&qword_31D568, &unk_275828);
  sub_EBC80(&qword_31D570, &qword_31D568, &unk_275828);
  return sub_262D10();
}

uint64_t sub_EBB30()
{
  sub_6E2E0();
  sub_261CA0();
  if (v2 != 1)
  {
    return 0;
  }

  sub_E28F8();
  sub_261CA0();
  return v1;
}

uint64_t sub_EBBAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_EBBF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_EBC80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_EBD0C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_2F9C(a2, a3);
  sub_EBC80(a4, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t EmptyAction.init()()
{
  v0 = sub_263AF0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_263AC0();
  return sub_263880();
}

uint64_t Models.FlowBackAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_260620();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ClosureAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_260560();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260600();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_263AF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_263B20();
  sub_1688B4(&v27);
  (*(v12 + 8))(v15, v11);
  if (v27 == 34)
  {
    goto LABEL_2;
  }

  v26 = v27;
  v25 = 25;
  v17 = Metrics.ClickActionType.rawValue.getter();
  v19 = v18;
  if (v17 == Metrics.ClickActionType.rawValue.getter() && v19 == v20)
  {

LABEL_7:
    (*(v7 + 104))(v10, enum case for ClickData.TargetType.reload(_:), v6);
    (*(v24 + 104))(v5, enum case for LinkActionType.click(_:), v2);
    sub_260610();
    v16 = 0;
    goto LABEL_8;
  }

  v21 = sub_264F10();

  if (v21)
  {
    goto LABEL_7;
  }

LABEL_2:
  v16 = 1;
LABEL_8:
  v22 = sub_260620();
  return (*(*(v22 - 8) + 56))(a1, v16, 1, v22);
}

uint64_t CompoundAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2EF0(&qword_316B98, &unk_275840);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v43 = &v38 - v8;
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  result = sub_263BB0();
  v12 = result;
  v13 = result + 32;
  v44 = *(result + 16);
  if (v44)
  {
    v40 = v6;
    v41 = result;
    v42 = a1;
    v14 = 0;
    v15 = &qword_316A30;
    v16 = &qword_2697B0;
    v17 = &qword_316BA8;
    v18 = &qword_316B98;
    v39 = result + 32;
    do
    {
      sub_30CC(v13, v45);
      sub_2EF0(v15, v16);
      sub_2EF0(v17, &unk_275850);
      if (swift_dynamicCast())
      {
        v20 = v18;
        v21 = v15;
        v22 = v17;
        v23 = v16;
        v24 = *(&v47 + 1);
        v25 = v48;
        sub_2E18(&v46, *(&v47 + 1));
        v26 = *(v25 + 16);
        v27 = v24;
        v15 = v21;
        v18 = v20;
        v28 = v25;
        v16 = v23;
        v17 = v22;
        v26(v27, v28);
        sub_3080(&v46);
        v29 = sub_260620();
        if ((*(*(v29 - 8) + 48))(v10, 1, v29) != 1)
        {
          result = sub_8E80(v10, &qword_316B98, &unk_275840);
          goto LABEL_9;
        }
      }

      else
      {
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        sub_8E80(&v46, &qword_316BA0, &unk_268B90);
        v19 = sub_260620();
        (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
      }

      result = sub_8E80(v10, v18, &unk_275840);
      ++v14;
      v13 += 40;
    }

    while (v44 != v14);
    v14 = v44;
LABEL_9:
    v12 = v41;
    a1 = v42;
    v13 = v39;
    v6 = v40;
  }

  else
  {
    v14 = 0;
  }

  v30 = *(v12 + 16);
  if (v14 == v30)
  {
    v31 = sub_260620();
    (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
  }

  if (v14 >= v30)
  {
    __break(1u);
  }

  else
  {
    sub_30CC(v13 + 40 * v14, v45);
    sub_2EF0(&qword_316A30, &qword_2697B0);
    sub_2EF0(&qword_316BA8, &unk_275850);
    if (swift_dynamicCast())
    {
      v32 = *(&v47 + 1);
      v33 = v48;
      sub_2E18(&v46, *(&v47 + 1));
      v34 = v43;
      (*(v33 + 16))(v32, v33);
      sub_3080(&v46);
    }

    else
    {
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      sub_8E80(&v46, &qword_316BA0, &unk_268B90);
      v35 = sub_260620();
      v34 = v43;
      (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
    }

    sub_ECAC8(v34, v6);
    v36 = sub_260620();
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v6, 1, v36);
    if (result != 1)
    {
      (*(v37 + 32))(a1, v6, v36);
      sub_8E80(v34, &qword_316B98, &unk_275840);
      (*(v37 + 56))(a1, 0, 1, v36);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_EC698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_30CC(a1, v7);
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_2EF0(&qword_316BA8, &unk_275850);
  if (swift_dynamicCast())
  {
    v3 = *(&v9 + 1);
    v4 = v10;
    sub_2E18(&v8, *(&v9 + 1));
    (*(v4 + 16))(v3, v4);
    return sub_3080(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_8E80(&v8, &qword_316BA0, &unk_268B90);
    v6 = sub_260620();
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_EC7BC@<X0>(uint64_t a1@<X8>)
{
  sub_263BB0();
  sub_1A7174(a1);
}

uint64_t sub_EC8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_316B98, &unk_275840);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_ECAC8(a1, &v11 - v6);
  v8 = sub_260620();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_EC9BC()
{
  v1 = sub_2EF0(&qword_316B98, &unk_275840);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = *(*v0 + 16);
  if (v5)
  {
    v6 = 0;
    v8 = v0[1];
    v7 = v0[2];
    v9 = *v0 + 32;
    v10 = v0[3];
    v11 = v0[4];
    while (1)
    {
      v8(v9);
      v12 = v10(v4);
      sub_8E80(v4, &qword_316B98, &unk_275840);
      if (v12)
      {
        break;
      }

      ++v6;
      v9 += 40;
      if (v5 == v6)
      {
        return v5;
      }
    }

    return v6;
  }

  return v5;
}

uint64_t sub_ECAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316B98, &unk_275840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BooksToolbarIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_2637A0();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_263780();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2616D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CircularIconView();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *v1;
  *v18 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v20 = v15[5];
  *(v18 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v21 = v18 + v15[6];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v15[7];
  *(v18 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v23 = v15[8];
  *(v18 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v24 = v18 + v15[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v18 + v15[11];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  *(v18 + v15[10]) = v19;
  sub_2618B0();
  sub_ED1F0(&qword_31D588, type metadata accessor for CircularIconView);
  sub_ED1F0(&qword_31D590, &type metadata accessor for LiftHoverEffect);
  v26 = v31;
  sub_262AA0();
  (*(v11 + 8))(v14, v10);
  sub_ED194(v18);
  sub_263770();
  sub_263790();
  v27 = (v26 + *(sub_2EF0(&qword_31D598, &unk_275A60) + 36));
  v28 = *(sub_2EF0(&qword_31A140, &qword_26E3B8) + 28);
  sub_ED1F0(&qword_31A148, &type metadata accessor for ReplaceSymbolEffect);
  v29 = v32;
  sub_261890();
  (*(v33 + 8))(v5, v34);
  (*(v6 + 8))(v9, v29);
  result = swift_getKeyPath();
  *v27 = result;
  return result;
}

uint64_t sub_ED038@<X0>(_BYTE *a1@<X8>)
{
  sub_ED51C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_ED088(char *a1)
{
  v2 = *a1;
  sub_ED51C();
  return sub_261CC0();
}

uint64_t sub_ED0F0@<X0>(_BYTE *a1@<X8>)
{
  sub_ED51C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_ED140(char *a1)
{
  v2 = *a1;
  sub_ED51C();
  return sub_261CC0();
}

uint64_t sub_ED194(uint64_t a1)
{
  v2 = type metadata accessor for CircularIconView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED1F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_ED280(uint64_t a1)
{
  v2 = sub_2618A0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_261AD0();
}

unint64_t sub_ED37C()
{
  result = qword_31D5A0;
  if (!qword_31D5A0)
  {
    sub_2F9C(&qword_31D598, &unk_275A60);
    type metadata accessor for CircularIconView();
    sub_2616D0();
    sub_ED1F0(&qword_31D588, type metadata accessor for CircularIconView);
    sub_ED1F0(&qword_31D590, &type metadata accessor for LiftHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_ED4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D5A0);
  }

  return result;
}

unint64_t sub_ED4B8()
{
  result = qword_31D5A8;
  if (!qword_31D5A8)
  {
    sub_2F9C(&qword_31A140, &qword_26E3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D5A8);
  }

  return result;
}

unint64_t sub_ED51C()
{
  result = qword_31D5B0[0];
  if (!qword_31D5B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31D5B0);
  }

  return result;
}

uint64_t sub_ED570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 40) = 0;
  v6 = type metadata accessor for ListItemMetadataSharedWithYouView();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

uint64_t sub_ED60C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 36);
  v4 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  v6 = v5;
  sub_40D68(v12);
  v7 = type metadata accessor for HighlightAttributionViewLoader();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  HighlightAttributionViewLoader.init(id:provider:)(v4, v6, v12);
  result = sub_2631D0();
  v11 = v12[1];
  *a2 = v12[0];
  a2[1] = v11;
  return result;
}

uint64_t sub_ED6C8@<X0>(void *a1@<X8>)
{
  sub_2EF0(&qword_31A988, &qword_26FA70);
  sub_2631E0();
  swift_getKeyPath();
  sub_EDD48();
  sub_260380();

  v2 = *(v5 + 16);
  v3 = v2;

  *a1 = v2;
  a1[1] = v2 != 0;
  return result;
}

uint64_t sub_ED778@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_ED6C8(a1);
}

void sub_ED7A0(uint64_t a1)
{
  sub_EDC14();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_ED828(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 41) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 41) & ~v6);
      }

      v15 = *(a1 + 40);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_ED9AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 41) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 41] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[40] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[40] = -a2;
  }
}

void sub_EDC14()
{
  if (!qword_31D638)
  {
    sub_2F9C(&qword_31D640, qword_275B88);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_31D638);
    }
  }
}

unint64_t sub_EDCD0()
{
  result = qword_31D648;
  if (!qword_31D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D648);
  }

  return result;
}

unint64_t sub_EDD48()
{
  result = qword_31A990;
  if (!qword_31A990)
  {
    type metadata accessor for HighlightAttributionViewLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A990);
  }

  return result;
}

unint64_t sub_EDDA4()
{
  result = qword_31D650;
  if (!qword_31D650)
  {
    sub_2F9C(&qword_31D658, &unk_275CC0);
    sub_EDE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D650);
  }

  return result;
}

unint64_t sub_EDE28()
{
  result = qword_31D660[0];
  if (!qword_31D660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_31D660);
  }

  return result;
}

uint64_t SegmentedControlViewModel.init(pickerItems:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for SegmentedControlViewModel();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t sub_EDF90(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_2646F0();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_EE020(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_EE1A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t GridItemMetadataRecommendation.init(assetInfo:title:subtitle:titleLines:subtitleLines:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = sub_F7CC(a1, (a8 + 6));
  *a8 = a2;
  a8[1] = a3;
  a8[2] = a4;
  a8[3] = a5;
  a8[4] = a6;
  a8[5] = a7;
  return result;
}

uint64_t GridItemMetadataRecommendation.content(contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for GridItemMetadataRecommendationLockupView(0);
  sub_EE594(v4, a3 + v8[7]);
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a3 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v11 = (a3 + v8[8]);
  *v11 = a1;
  v11[1] = a2;
}

__n128 sub_EE5F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_EE618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_EE660(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_EE6C8()
{
  result = qword_31D730;
  if (!qword_31D730)
  {
    type metadata accessor for GridItemMetadataRecommendationLockupView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D730);
  }

  return result;
}

BOOL sub_EE720()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 57) != 1)
  {
    return 0;
  }

  v7 = *v0;
  if (*(v0 + 8) == 1)
  {
    v8 = *v0;
  }

  else
  {
    v10 = v4;

    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v6, v10);
    v8 = v12[15];
  }

  return v8 != 2;
}

double sub_EE888()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 0.0;
  if (*(v0 + 57) == 1)
  {
    v7 = *v0;
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    if (*(v0 + 8) != 1)
    {
      v12 = *v0;

      sub_264900();
      v13 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_3074(v7, 0);
      (*(v2 + 8))(v5, v1);
      result = 0.0;
      LOBYTE(v7) = v17[15];
    }

    if (v7 != 2)
    {
      if ((v9 & 1) == 0)
      {

        sub_264900();
        v14 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v8, 0);
        (*(v2 + 8))(v5, v1);
        LOBYTE(v8) = v17[14];
      }

      if (v11)
      {
        if ((v10 & 1) == 0)
        {
LABEL_9:
          result = 32.0;
          if (v7)
          {
            result = 16.0;
          }

          if ((v8 & 1) == 0)
          {
            return 40.0;
          }

          return result;
        }
      }

      else
      {

        sub_264900();
        v15 = sub_2624B0();
        sub_260D10();

        sub_261C80();
        swift_getAtKeyPath();
        sub_3074(v10, 0);
        (*(v2 + 8))(v5, v1);
        if (v17[13] != 1)
        {
          goto LABEL_9;
        }
      }

      v16 = sub_2634F0();
      result = 32.0;
      if (v16)
      {
        return 20.0;
      }
    }
  }

  return result;
}

uint64_t sub_EEB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v58 = a2;
  v48 = sub_261C90();
  v47 = *(v48 - 8);
  v3 = *(v47 + 64);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2620F0();
  v51 = *(v52 - 8);
  v5 = *(v51 + 64);
  __chkstk_darwin(v52);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2EF0(&qword_31D758, &qword_276200);
  v8 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v10 = &v46 - v9;
  v56 = sub_2EF0(&qword_31D760, &qword_276208);
  v55 = *(v56 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin(v56);
  v54 = &v46 - v12;
  v53 = sub_2EF0(&qword_31D768, &qword_276210);
  v13 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v57 = &v46 - v14;
  v15 = *v2;
  v16 = *(v2 + 8);
  v78 = v16;
  *v61 = *(v2 + 9);
  *&v61[3] = *(v2 + 12);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  v77 = v18;
  v19 = *(v2 + 58);
  v68 = *&v15;
  v69 = v16;
  *v70 = *(v2 + 9);
  *&v70[3] = *(v2 + 12);
  v71 = v17;
  v72 = v18;
  v73 = *(v2 + 25);
  v74 = *(v2 + 41);
  v75 = *(v2 + 57);
  v76 = v19;
  v20 = sub_EE720();
  v59 = v15;
  v60 = v16;
  v62 = v17;
  v63 = v18;
  v64 = *(v2 + 25);
  v65 = *(v2 + 41);
  v66 = *(v2 + 57);
  v67 = v19;
  v21 = sub_EE888();
  if (v19)
  {
    v22 = sub_262540();
  }

  else
  {
    v22 = sub_2624F0();
  }

  v23 = v22;
  sub_2610C0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_2EF0(&qword_31D770, &qword_276218);
  (*(*(v32 - 8) + 16))(v10, v50, v32);
  v33 = &v10[*(v49 + 36)];
  *v33 = v23;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  v34 = v54;
  if (v19)
  {
    sub_2624F0();
  }

  else
  {
    sub_262540();
  }

  sub_2620E0();
  sub_EFC0C();
  sub_262B30();
  (*(v51 + 8))(v7, v52);
  sub_EFCC4(v10);
  KeyPath = swift_getKeyPath();
  if (v20)
  {
    LOBYTE(v15) = 2;
  }

  else if (v78 != 1)
  {
    sub_39D6C(v15, 0);
    sub_264900();
    v36 = sub_2624B0();
    sub_260D10();

    v37 = v46;
    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v15, 0);
    (*(v47 + 8))(v37, v48);
    LOBYTE(v15) = LOBYTE(v68);
  }

  v38 = v57;
  (*(v55 + 32))(v57, v34, v56);
  v39 = v38 + *(v53 + 36);
  *v39 = KeyPath;
  *(v39 + 8) = v15;
  v40 = swift_getKeyPath();
  if (!v20)
  {
    if (v77 == 1)
    {
      v21 = *&v17;
    }

    else
    {

      sub_264900();
      v41 = sub_2624B0();
      sub_260D10();

      v42 = v46;
      sub_261C80();
      swift_getAtKeyPath();
      sub_3074(v17, 0);
      (*(v47 + 8))(v42, v48);
      v21 = v68;
    }
  }

  v43 = v58;
  sub_EFD2C(v38, v58);
  result = sub_2EF0(&qword_31D788, &qword_276220);
  v45 = (v43 + *(result + 36));
  *v45 = v40;
  *(v45 + 1) = v21;
  return result;
}

uint64_t sub_EF224@<X0>(_BYTE *a1@<X8>)
{
  sub_EFDF0();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_EF274(char *a1)
{
  v2 = *a1;
  sub_EFDF0();
  return sub_261CC0();
}

double EnvironmentValues.appliedPageMargin.getter()
{
  sub_EF2FC();
  sub_261CB0();
  return v1;
}

unint64_t sub_EF2FC()
{
  result = qword_31D738;
  if (!qword_31D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D738);
  }

  return result;
}

double sub_EF350@<D0>(double *a1@<X8>)
{
  sub_EF2FC();
  sub_261CB0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_EF3A0(uint64_t *a1)
{
  v2 = *a1;
  sub_EF2FC();
  return sub_261CC0();
}

uint64_t sub_EF3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_6EBA4();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.pageMaxContentWidth.getter()
{
  sub_EF494();
  sub_261CB0();
  return v1;
}

unint64_t sub_EF494()
{
  result = qword_31D740;
  if (!qword_31D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D740);
  }

  return result;
}

double EnvironmentValues.pageContentWidthWithinMargins.getter()
{
  sub_261930();
  v1 = v0;
  sub_EF494();
  sub_261CB0();
  if (v7 == 1)
  {
    *&v2 = COERCE_DOUBLE(sub_261950());
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = *&v2;
  }

  else
  {
    v4 = v6;
  }

  if (v4 < v1)
  {
    v1 = v4;
  }

LABEL_7:
  sub_EF2FC();
  sub_261CB0();
  return v1 - (v6 + v6);
}

uint64_t View.applyPageMargin(_:marginType:)(char a1, char *a2)
{
  v3 = *a2;
  *&v5 = swift_getKeyPath();
  BYTE8(v5) = 0;
  *&v6 = swift_getKeyPath();
  BYTE8(v6) = 0;
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  *&v7[16] = swift_getKeyPath();
  v7[24] = 0;
  v7[25] = a1;
  v7[26] = v3;
  sub_262E30();
  v8[0] = v5;
  v8[1] = v6;
  v9[0] = *v7;
  *(v9 + 11) = *&v7[11];
  return sub_EF908(v8);
}

uint64_t sub_EF694@<X0>(_BYTE *a1@<X8>)
{
  sub_EFDF0();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_EF6E4(char *a1)
{
  v2 = *a1;
  sub_EFDF0();
  return sub_261CC0();
}

double sub_EF730@<D0>(double *a1@<X8>)
{
  sub_EF2FC();
  sub_261CB0();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_EF780(uint64_t *a1)
{
  v2 = *a1;
  sub_EF2FC();
  return sub_261CC0();
}

uint64_t sub_EF7D0@<X0>(_BYTE *a1@<X8>)
{
  sub_EFD9C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_EF820@<X0>(_BYTE *a1@<X8>)
{
  sub_EFD9C();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_EF870(char *a1)
{
  v2 = *a1;
  sub_EFD9C();
  return sub_261CC0();
}

uint64_t sub_EF8BC(char *a1)
{
  v2 = *a1;
  sub_EFD9C();
  return sub_261CC0();
}

unint64_t sub_EF93C()
{
  result = qword_31D748;
  if (!qword_31D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D748);
  }

  return result;
}

uint64_t sub_EF990@<X0>(uint64_t a1@<X8>)
{
  sub_EF494();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_EF9E8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_EF494();
  return sub_261CC0();
}

uint64_t sub_EFA4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_261730();
  sub_EFAB0();
  return swift_getWitnessTable();
}

unint64_t sub_EFAB0()
{
  result = qword_31D750;
  if (!qword_31D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D750);
  }

  return result;
}

__n128 sub_EFB04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_EFB20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 59))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_EFB68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_EFC0C()
{
  result = qword_31D778;
  if (!qword_31D778)
  {
    sub_2F9C(&qword_31D758, &qword_276200);
    sub_8E38(&qword_31D780, &qword_31D770, &qword_276218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D778);
  }

  return result;
}

uint64_t sub_EFCC4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31D758, &qword_276200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EFD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31D768, &qword_276210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_EFD9C()
{
  result = qword_31D790;
  if (!qword_31D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D790);
  }

  return result;
}

unint64_t sub_EFDF0()
{
  result = qword_31D798;
  if (!qword_31D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D798);
  }

  return result;
}

unint64_t sub_EFE48()
{
  result = qword_31D7A0;
  if (!qword_31D7A0)
  {
    sub_2F9C(&qword_31D788, &qword_276220);
    sub_EFF00();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D7A0);
  }

  return result;
}

unint64_t sub_EFF00()
{
  result = qword_31D7A8;
  if (!qword_31D7A8)
  {
    sub_2F9C(&qword_31D768, &qword_276210);
    sub_2F9C(&qword_31D758, &qword_276200);
    sub_EFC0C();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31D7B0, &qword_31D7B8, &qword_276228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D7A8);
  }

  return result;
}

double PageMarginConfiguration.basicMargin(isCompact:isInModal:)(char a1, char a2)
{
  if (a2)
  {
    v3 = sub_2634F0();
    result = 32.0;
    if (v3)
    {
      return 20.0;
    }
  }

  else
  {
    result = 32.0;
    if (*v2)
    {
      result = 16.0;
    }

    if ((a1 & 1) == 0)
    {
      return 40.0;
    }
  }

  return result;
}

uint64_t EnvironmentValues.pageMarginConfiguration.getter()
{
  sub_EFDF0();

  return sub_261CB0();
}

uint64_t EnvironmentValues.pageMarginConfiguration.setter(char *a1)
{
  v2 = *a1;
  sub_EFDF0();
  return sub_261CC0();
}

uint64_t static PageMarginConfiguration.default.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_31D7C0;
  return result;
}

uint64_t static PageMarginConfiguration.default.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_31D7C0 = v1;
  return result;
}

uint64_t (*EnvironmentValues.pageMarginConfiguration.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_EFDF0();
  sub_261CB0();
  return sub_F0244;
}

uint64_t sub_F0244(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_261CC0();
}

uint64_t sub_F027C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_31D7C0;
  return result;
}

uint64_t sub_F02C8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_31D7C0 = v1;
  return result;
}

uint64_t View.animateIn()()
{
  swift_getKeyPath();
  sub_262A90();
}

uint64_t EnvironmentValues.isAnimatableIn.getter()
{
  sub_F0520();
  sub_261CB0();
  return v1;
}

uint64_t sub_F03E8@<X0>(_BYTE *a1@<X8>)
{
  sub_F0520();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_F0438@<X0>(_BYTE *a1@<X8>)
{
  sub_F0520();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_F0488(char *a1)
{
  v2 = *a1;
  sub_F0520();
  return sub_261CC0();
}

uint64_t sub_F04D4(char *a1)
{
  v2 = *a1;
  sub_F0520();
  return sub_261CC0();
}

unint64_t sub_F0520()
{
  result = qword_31D7C8;
  if (!qword_31D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D7C8);
  }

  return result;
}

uint64_t (*EnvironmentValues.isAnimatableIn.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_F0520();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_F0618;
}

uint64_t sub_F0618(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_261CC0();
}

uint64_t sub_F0650(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_3171D8, &qword_26B730);
  sub_261730();
  sub_F06C8();
  return swift_getWitnessTable();
}

unint64_t sub_F06C8()
{
  result = qword_3171E0;
  if (!qword_3171E0)
  {
    sub_2F9C(&qword_3171D8, &qword_26B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3171E0);
  }

  return result;
}

uint64_t sub_F073C@<X0>(_BYTE *a1@<X8>)
{
  sub_6E1E4();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_F078C(char *a1)
{
  v2 = *a1;
  sub_6E1E4();
  return sub_261CC0();
}

double sub_F07D8()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  v8 = *v0;

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_F0924()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 16);
  v7 = *(v0 + 24);
  if (*(v0 + 25) != 1)
  {
    v8 = *(v0 + 16);

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_F5DAC(v8, v7, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return result;
}

uint64_t sub_F0A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318148, &unk_26AEE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_F65FC(v2 + *(a1 + 60), &v18 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261690();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_264900();
    v17 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_F0C6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(a1 + 64);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    *a2 = v12;
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v12, 0);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

void ShelfCollage.columnWidth.getter(int *a1)
{
  v2 = v1;
  v4 = sub_261690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F0C6C(a1, &v19);
  v9 = (v1 + a1[21]);
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v18[0] = *v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;

  sub_F0A80(a1, v8);
  ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v18, v8);
  (*(v5 + 8))(v8, v4);

  v15 = v2 + a1[19];
  sub_260C10();
  v16 = a1[18];
  sub_260BE0();
  sub_260BF0();
  sub_F07D8();
}

__n128 ShelfCollage.init(_:padding:spacing:gridType:itemContent:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a4;
  v29 = a4[5];
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  *(a8 + 16) = swift_getKeyPath();
  *(a8 + 24) = 0;
  v15 = type metadata accessor for ShelfCollage();
  v16 = v15[14];
  *(a8 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v17 = v15[15];
  *(a8 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_318148, &unk_26AEE0);
  swift_storeEnumTagMultiPayload();
  v18 = a8 + v15[16];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  (*(*(a7 - 8) + 32))(a8 + v15[17], a1, a7);
  v19 = v15[18];
  v20 = sub_260C00();
  v21 = *(a4 + 3);
  v27 = v21;
  v28 = *(a4 + 1);
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  v22 = v15[19];
  v23 = sub_260C50();
  (*(*(v23 - 8) + 32))(a8 + v22, a3, v23);
  v24 = a8 + v15[21];
  *v24 = v14;
  result = v27;
  *(v24 + 8) = v28;
  *(v24 + 24) = v27;
  *(v24 + 40) = v29;
  v26 = (a8 + v15[20]);
  *v26 = a5;
  v26[1] = a6;
  return result;
}

uint64_t ShelfCollage.body.getter(uint64_t a1)
{
  ShelfCollage.columnWidth.getter(a1);
  v3 = v1 + *(a1 + 76);
  sub_260C10();
  sub_261E50();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v4 = *(a1 + 40);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  sub_2F9C(&qword_31D7D8, &qword_276470);
  v26 = v10;
  v27 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470);
  v28 = &protocol witness table for AnyHashable;
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468);
  sub_2614C0();
  v20 = v4;
  v18 = sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  *&v25 = OpaqueTypeMetadata2;
  *(&v25 + 1) = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v17 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  sub_261800();
  swift_getWitnessTable();
  sub_2632D0();
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v7 = sub_2632E0();
  v8 = swift_getWitnessTable();
  sub_1609C(&v12, v7, v8);

  v21 = v25;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  sub_1609C(&v21, v7, v8);
}

uint64_t sub_F161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32[1] = a6;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v11 = type metadata accessor for ShelfCollage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v32 - v14;
  (*(v12 + 16))(v32 - v14, a1, v11);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v15, v11);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  v18 = sub_2F9C(&qword_31D7D8, &qword_276470);
  v19 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470);
  v40 = v18;
  v41 = &type metadata for AnyHashable;
  v42 = a3;
  v43 = v19;
  v44 = &protocol witness table for AnyHashable;
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468);
  sub_2614C0();
  v20 = sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468);
  v39 = a5;
  WitnessTable = swift_getWitnessTable();
  v37 = v20;
  v38 = WitnessTable;
  swift_getWitnessTable();
  v22 = sub_261120();
  v23 = swift_getWitnessTable();
  v40 = v22;
  v41 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = v22;
  v41 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = OpaqueTypeMetadata2;
  v41 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v40 = OpaqueTypeMetadata2;
  v41 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v40 = v26;
  v41 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  v40 = v26;
  v41 = v27;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v33 = sub_2617F0();
  v34 = v28;
  v29 = sub_261800();
  v30 = swift_getWitnessTable();
  sub_1609C(&v33, v29, v30);

  v33 = v40;
  v34 = v41;
  sub_1609C(&v33, v29, v30);
}

uint64_t sub_F1A98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v79 = a5;
  v78 = a4;
  v77 = a3;
  v76 = a2;
  v80 = a1;
  v75 = a6;
  v74 = sub_262320();
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_261FF0();
  v70 = *(v71 - 8);
  v10 = *(v70 + 64);
  __chkstk_darwin(v71);
  v60 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  v12 = sub_2F9C(&qword_31D7D8, &qword_276470);
  v13 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470);
  v91 = v12;
  v92 = &type metadata for AnyHashable;
  v93 = a3;
  v94 = v13;
  v95 = &protocol witness table for AnyHashable;
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468);
  v14 = sub_2614C0();
  v15 = sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468);
  v90 = a5;
  WitnessTable = swift_getWitnessTable();
  v88 = v15;
  v89 = WitnessTable;
  v58[1] = v14;
  v58[0] = swift_getWitnessTable();
  v17 = sub_261120();
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  __chkstk_darwin(v17);
  v20 = v58 - v19;
  v21 = swift_getWitnessTable();
  v91 = v17;
  v92 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v26 = v58 - v25;
  v91 = v17;
  v92 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  v92 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  v62 = *(v28 - 8);
  v29 = *(v62 + 64);
  __chkstk_darwin(v28);
  v31 = v58 - v30;
  v91 = OpaqueTypeMetadata2;
  v92 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v61 = v28;
  v91 = v28;
  v92 = v32;
  v63 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v67 = *(v33 - 8);
  v34 = *(v67 + 64);
  __chkstk_darwin(v33);
  v64 = v58 - v35;
  v68 = v36;
  v37 = sub_261730();
  v69 = *(v37 - 8);
  v38 = *(v69 + 64);
  v39 = __chkstk_darwin(v37);
  v65 = v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v66 = v58 - v41;
  sub_2624C0();
  v81 = v76;
  v82 = v77;
  v83 = v78;
  v84 = v79;
  v85 = v80;
  sub_1D16D8();
  v42 = v60;
  sub_261FE0();
  sub_2624C0();
  sub_262C80();
  (*(v70 + 8))(v42, v71);
  v43 = v17;
  v44 = v31;
  (*(v59 + 8))(v20, v43);
  sub_262C40();
  (*(v23 + 8))(v26, OpaqueTypeMetadata2);
  v45 = v72;
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(OpaqueTypeMetadata2) = sub_2624E0();
  *(inited + 32) = OpaqueTypeMetadata2;
  v47 = sub_2624C0();
  *(inited + 33) = v47;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != OpaqueTypeMetadata2)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v47)
  {
    sub_2624D0();
  }

  v48 = v64;
  v49 = v61;
  v50 = v63;
  sub_262BA0();
  (*(v73 + 8))(v45, v74);
  (*(v62 + 8))(v44, v49);
  v91 = v76;
  v92 = v77;
  v93 = v78;
  v94 = v79;
  type metadata accessor for ShelfCollage();
  sub_F0924();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v91 = v49;
  v92 = v50;
  v57 = swift_getOpaqueTypeConformance2();
  v51 = v68;
  v52 = v65;
  sub_262DB0();
  (*(v67 + 8))(v48, v51);
  v86 = v57;
  v87 = &protocol witness table for _FlexFrameLayout;
  v53 = swift_getWitnessTable();
  v54 = v66;
  sub_1609C(v52, v37, v53);
  v55 = *(v69 + 8);
  v55(v52, v37);
  sub_1609C(v54, v37, v53);
  return (v55)(v54, v37);
}

uint64_t sub_F24B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v44 = a4;
  v43 = a2;
  v45 = a1;
  v49 = a6;
  v8 = type metadata accessor for CollageLayout();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  v13 = sub_2F9C(&qword_31D7D8, &qword_276470);
  v14 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470);
  v59 = v13;
  v60 = &type metadata for AnyHashable;
  v61 = a3;
  v62 = v14;
  v63 = &protocol witness table for AnyHashable;
  v47 = sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468);
  v15 = sub_2614C0();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  v17 = __chkstk_darwin(v15);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v46 = &v40 - v19;
  v20 = v43;
  v59 = v43;
  v60 = a3;
  v21 = v44;
  v61 = v44;
  v62 = a5;
  v22 = type metadata accessor for ShelfCollage();
  v23 = v22[18];
  v24 = sub_260C00();
  v25 = v45;
  (*(*(v24 - 8) + 16))(v12, v45 + v23, v24);
  v26 = v22[19];
  v27 = *(v9 + 28);
  v28 = sub_260C50();
  (*(*(v28 - 8) + 16))(&v12[v27], v25 + v26, v28);
  v29 = v25;
  ShelfCollage.columnWidth.getter(v22);
  *&v12[*(v9 + 32)] = v30;
  v31 = v41;
  v32 = sub_F28EC(v12, v20, a3, v21, v41);
  sub_F5E8C(v12);
  v51 = v20;
  v52 = a3;
  v53 = v21;
  v54 = v31;
  v55 = v29;
  v33 = v42;
  (v32)(sub_F5EE8, v50);

  v34 = sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468);
  v58 = v31;
  WitnessTable = swift_getWitnessTable();
  v56 = v34;
  v57 = WitnessTable;
  v36 = swift_getWitnessTable();
  v37 = v46;
  sub_1609C(v33, v15, v36);
  v38 = *(v48 + 8);
  v38(v33, v15);
  sub_1609C(v37, v15, v36);
  return (v38)(v37, v15);
}

uint64_t (*sub_F28EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = type metadata accessor for CollageLayout();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_F6314(a1, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  sub_F6490(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  return sub_F64F4;
}

uint64_t sub_F2A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CollageLayout();
  sub_2F9C(&qword_31D7D8, &qword_276470);
  sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470);
  v7 = sub_2633D0();
  v8 = sub_F65A4(&qword_31D978, type metadata accessor for CollageLayout);
  WitnessTable = swift_getWitnessTable();
  return sub_F2B5C(a1, a2, v6, v7, v8, WitnessTable, a3);
}

uint64_t sub_F2B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261290();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  (*(v13 + 16))(v16, v7, a3);
  sub_2612A0();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = v20[0];
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  return sub_2614D0();
}

uint64_t sub_F2D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v46 = a6;
  v38 = a3;
  v39 = a1;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v37[0] = a4;
  v8 = type metadata accessor for ShelfCollage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v37 - v11;
  v13 = sub_2EF0(&qword_31D7D8, &qword_276470);
  v43 = v13;
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v47 = v37 - v15;
  v42 = sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470);
  v49 = v13;
  v50 = &type metadata for AnyHashable;
  v51 = a3;
  v52 = v42;
  v53 = &protocol witness table for AnyHashable;
  v16 = sub_2633D0();
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  v18 = __chkstk_darwin(v16);
  v40 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v41 = v37 - v20;
  v21 = v39;
  v22 = v39 + *(v8 + 68);
  v23 = a2;
  v49 = sub_263850();
  sub_2EF0(&qword_31D968, &qword_2765F0);
  sub_8E38(&qword_31D970, &qword_31D968, &qword_2765F0);
  sub_260CC0();
  v37[1] = swift_getKeyPath();
  v24 = v21;
  v25 = v8;
  (*(v9 + 16))(v12, v24, v8);
  v26 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v27 = swift_allocObject();
  v28 = v38;
  *(v27 + 2) = v23;
  *(v27 + 3) = v28;
  v29 = v37[0];
  v30 = v45;
  *(v27 + 4) = v37[0];
  *(v27 + 5) = v30;
  (*(v9 + 32))(&v27[v26], v12, v25);
  v31 = swift_allocObject();
  v31[2] = v23;
  v31[3] = v28;
  v31[4] = v29;
  v31[5] = v30;
  v31[6] = sub_F61E8;
  v31[7] = v27;
  v32 = v40;
  sub_2633B0();
  v48 = v30;
  WitnessTable = swift_getWitnessTable();
  v34 = v41;
  sub_1609C(v32, v16, WitnessTable);
  v35 = *(v44 + 8);
  v35(v32, v16);
  sub_1609C(v34, v16, WitnessTable);
  return (v35)(v34, v16);
}

uint64_t sub_F3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v26 - v16;
  v26[0] = v18;
  v26[1] = v19;
  v26[2] = v20;
  v26[3] = v21;
  v22 = a3 + *(type metadata accessor for ShelfCollage() + 80);
  v23 = *(v22 + 8);
  (*v22)(a2);
  sub_1609C(v15, a5, a7);
  v24 = *(v11 + 8);
  v24(v15, a5);
  sub_1609C(v17, a5, a7);
  return (v24)(v17, a5);
}

char *sub_F3294(uint64_t (**a1)(char *, char *, uint64_t))
{
  v141 = a1;
  v1 = sub_2EF0(&qword_31D930, &qword_2765C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v125 = (&v118 - v4);
  v136 = sub_261490();
  v5 = *(v136 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v136);
  v120 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v138 = &v118 - v10;
  v11 = __chkstk_darwin(v9);
  v139 = &v118 - v12;
  __chkstk_darwin(v11);
  v126 = &v118 - v13;
  v14 = sub_2EF0(&qword_31D938, &qword_2765D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v131 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v118 - v18;
  v20 = sub_261570();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2EF0(&qword_31D940, &qword_2765D8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v118 - v27;
  v29 = sub_2EF0(&qword_31D948, &qword_2765E0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v33 = &v118 - v32;
  (*(v21 + 16))(v28, v141, v20);
  (*(v21 + 32))(v24, v28, v20);
  v34 = v20;
  sub_F65A4(&qword_31D950, &type metadata accessor for LayoutSubviews);
  sub_2645E0();
  v35 = *(v30 + 44);
  v36 = v33;
  v124 = v35;
  *&v33[v35] = 0;
  v37 = *(sub_2EF0(&qword_31D958, &qword_2765E8) + 36);
  v38 = v136;
  v39 = sub_F65A4(&qword_31D960, &type metadata accessor for LayoutSubviews);
  v137 = (v5 + 16);
  v141 = (v5 + 32);
  v134 = (v2 + 56);
  v135 = 0;
  v133 = (v2 + 48);
  v128 = v5;
  v132 = (v5 + 8);
  v40 = v19;
  v41 = v131;
  v42 = 0.0;
  v43 = 0.0;
  v123 = _swiftEmptyArrayStorage;
  v140 = _swiftEmptyArrayStorage;
  v129 = v39;
  v127 = v19;
  v130 = v37;
LABEL_2:
  v44 = v42;
LABEL_3:
  v45 = v1;
  while (1)
  {
    sub_264860();
    if (*(v36 + v37) == v143[0])
    {
      v46 = 1;
      v1 = v45;
      goto LABEL_8;
    }

    v47 = sub_2648A0();
    v48 = v126;
    (*v137)(v126);
    v47(v143, 0);
    sub_264870();
    v1 = v45;
    v49 = *(v45 + 48);
    v50 = v125;
    v51 = v135;
    *v125 = v135;
    result = (*v141)((v50 + v49), v48, v38);
    if (__OFADD__(v51, 1))
    {
      break;
    }

    v135 = v51 + 1;
    *(v36 + v124) = v51 + 1;
    sub_22148(v50, v41, &qword_31D930, &qword_2765C8);
    v46 = 0;
LABEL_8:
    (*v134)(v41, v46, 1, v1);
    sub_22148(v41, v40, &qword_31D938, &qword_2765D0);
    v53 = (*v133)(v40, 1, v1);
    v54 = v139;
    if (v53 == 1)
    {
      sub_F5D40(v36);
      v117 = v122 + *(type metadata accessor for CollageLayout() + 20);
      sub_260C10();
      sub_260BE0();
      sub_260BF0();

      return v123;
    }

    v55 = v36;
    v56 = v34;
    v57 = *v40;
    v58 = *v141;
    (*v141)(v139, &v40[*(v1 + 48)], v38);
    if (0xCCCCCCCCCCCCCCCDLL * v57 + 0x1999999999999999 <= 0x3333333333333332)
    {
      v67 = type metadata accessor for CollageLayout();
      v68 = *(v67 + 20);
      v69 = *(v122 + *(v67 + 24));
      sub_260C10();
      v70 = v69 + v69;
      LOBYTE(v143[0]) = 0;
      v142 = 1;
      sub_261470();
      v72 = v71;
      v42 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = sub_E91CC(0, *(v123 + 2) + 1, 1, v123);
      }

      v34 = v56;
      v75 = *(v123 + 2);
      v74 = *(v123 + 3);
      v36 = v55;
      if (v75 >= v74 >> 1)
      {
        v123 = sub_E91CC((v74 > 1), v75 + 1, 1, v123);
      }

      v37 = v130;
      v76 = v123;
      *(v123 + 2) = v75 + 1;
      v77 = &v76[32 * v75];
      *(v77 + 4) = v43;
      *(v77 + 5) = 0;
      *(v77 + 6) = v72;
      *(v77 + 7) = v42;
      v78 = COERCE_DOUBLE(sub_260C10());
      if (v79)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = v78;
      }

      *&v81 = COERCE_DOUBLE(sub_260C10());
      v83 = v82;
      v84 = v136;
      (*v132)(v54, v136);
      v85 = *&v81;
      v86 = (v83 & 1) == 0;
      v38 = v84;
      if (!v86)
      {
        v85 = 0.0;
      }

      v43 = v43 + v70 + v80 + v85;
      if (v44 > v42)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v59 = v54;
    v45 = v1;
    v60 = *v137;
    (*v137)(v138, v59, v38);
    v61 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_E91A4(0, v61[2] + 1, 1, v61);
    }

    v63 = v61[2];
    v62 = v61[3];
    if (v63 >= v62 >> 1)
    {
      v61 = sub_E91A4(v62 > 1, v63 + 1, 1, v61);
    }

    v61[2] = v63 + 1;
    v64 = *(v128 + 80);
    v140 = v61;
    v65 = v61 + ((v64 + 32) & ~v64);
    v66 = *(v128 + 72);
    v38 = v136;
    v58(&v65[v66 * v63], v138, v136);
    if (v63 == 1)
    {
      v119 = type metadata accessor for CollageLayout();
      v87 = *(v122 + *(v119 + 24));
      v88 = v120;
      (v60)(v120, v65, v38);
      LOBYTE(v143[0]) = 0;
      v142 = 1;
      v118 = v87;
      sub_261470();
      v90 = v89;
      v92 = v91;
      v121 = *v132;
      result = (v121)(v88, v38);
      if (v140[2] < 2uLL)
      {
        goto LABEL_50;
      }

      (v60)(v88, &v65[v66], v38);
      LOBYTE(v143[0]) = 0;
      v142 = 1;
      sub_261470();
      v94 = v93;
      v96 = v95;
      v121(v88, v38);
      v97 = *(v119 + 20);
      *&v98 = COERCE_DOUBLE(sub_260C40());
      if (v99)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = 0.0;
      }

      else
      {
        v101 = *&v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      }

      v1 = v45;
      v34 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v123 = sub_E91CC(0, *(v123 + 2) + 1, 1, v123);
      }

      v41 = v131;
      v40 = v127;
      v36 = v55;
      v103 = *(v123 + 2);
      v102 = *(v123 + 3);
      v104 = v102 >> 1;
      v105 = v103 + 1;
      v37 = v130;
      if (v102 >> 1 <= v103)
      {
        v123 = sub_E91CC((v102 > 1), v103 + 1, 1, v123);
        v102 = *(v123 + 3);
        v104 = v102 >> 1;
      }

      v106 = v123;
      *(v123 + 2) = v105;
      v107 = &v106[32 * v103];
      *(v107 + 4) = v43;
      *(v107 + 5) = -(v96 + v101);
      *(v107 + 6) = v90;
      *(v107 + 7) = v92;
      if (v104 < (v103 + 2))
      {
        v123 = sub_E91CC((v102 > 1), v103 + 2, 1, v123);
      }

      v108 = v123;
      *(v123 + 2) = v103 + 2;
      v109 = &v108[32 * v105];
      *(v109 + 4) = v43;
      *(v109 + 5) = 0;
      *(v109 + 6) = v94;
      *(v109 + 7) = v96;
      v110 = COERCE_DOUBLE(sub_260C10());
      if (v111)
      {
        v110 = 0.0;
      }

      v43 = v43 + v87 + v110;
      v112 = v92 + v96;
      v113 = COERCE_DOUBLE(sub_260C40());
      v115 = v112 + v113;
      if (v114)
      {
        v116 = v112;
      }

      else
      {
        v116 = v112 + v113;
      }

      if (v114)
      {
        v115 = v112 + 0.0;
      }

      if (v44 > v116)
      {
        v42 = v44;
      }

      else
      {
        v42 = v115;
      }

      v38 = v136;
      v121(v139, v136);

      v140 = _swiftEmptyArrayStorage;
      goto LABEL_2;
    }

    (*v132)(v139, v38);
    v41 = v131;
    v40 = v127;
    v34 = v56;
    v36 = v55;
    v37 = v130;
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

char *sub_F3F74@<X0>(uint64_t (**a1)(char *, char *, uint64_t)@<X0>, char **a2@<X8>)
{
  result = sub_F3294(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

char *sub_F3FA0(char **a1, uint64_t (**a2)(char *, char *, uint64_t))
{
  v4 = *a1;

  result = sub_F3294(a2);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

double sub_F3FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a6 + 8);
  v7 = *(a6 + 16);
  return result;
}

void (*sub_F40B0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

void sub_F4138(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_F4184@<X0>(void *a1@<X8>)
{
  result = sub_261930();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_F41B0@<X0>(void *a1@<X8>)
{
  result = sub_261930();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_F41DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_261950();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_F4234@<X0>(_BYTE *a1@<X8>)
{
  sub_6E1E4();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_F4284(char *a1)
{
  v2 = *a1;
  sub_6E1E4();
  return sub_261CC0();
}

uint64_t sub_F42E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_F432C(uint64_t a1)
{
  sub_60890(319, &qword_316308);
  if (v2 <= 0x3F)
  {
    sub_F4D48();
    if (v3 <= 0x3F)
    {
      sub_F4DAC(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v4 <= 0x3F)
      {
        sub_F4DAC(319, &qword_3198C8, &type metadata accessor for DynamicTypeSize);
        if (v5 <= 0x3F)
        {
          sub_60890(319, &qword_31D880);
          if (v6 <= 0x3F)
          {
            v7 = *(a1 + 16);
            swift_checkMetadataState();
            if (v8 <= 0x3F)
            {
              sub_260C00();
              if (v9 <= 0x3F)
              {
                sub_260C50();
                if (v10 <= 0x3F)
                {
                  sub_16D28();
                  if (v11 <= 0x3F)
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
  }
}

uint64_t sub_F44BC(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_261690() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v7 + ((v6 + 2) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v45 = *(a3 + 16);
  v46 = v8;
  v9 = *(v45 - 8);
  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v45 - 8);
  v12 = *(v9 + 84);
  v44 = sub_260C00();
  v13 = *(v44 - 8);
  v14 = *(v13 + 84);
  if (v12 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v12;
  }

  v16 = *(sub_260C50() - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v13 + 80);
  v21 = *(v16 + 80);
  if (v15 <= v17)
  {
    v22 = *(v16 + 84);
  }

  else
  {
    v22 = v15;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v6 | 7;
  v24 = v46 + 1;
  v25 = v10 + 8;
  v26 = *(v13 + 64) + v21;
  v27 = *(v16 + 64) + 7;
  if (v22 >= a2)
  {
    goto LABEL_37;
  }

  v28 = ((((v27 + ((v26 + ((v19 + v20 + ((v18 + ((v25 + ((v24 + v23 + ((v23 + 26) & ~v23)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18)) & ~v20)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  v29 = v28 & 0xFFFFFFF8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v30 = 2;
  }

  else
  {
    v30 = a2 - v22 + 1;
  }

  if (v30 >= 0x10000)
  {
    v31 = 4;
  }

  else
  {
    v31 = 2;
  }

  if (v30 < 0x100)
  {
    v31 = 1;
  }

  if (v30 >= 2)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      goto LABEL_37;
    }

    v33 = *(a1 + v28);
    if (!v33)
    {
      goto LABEL_37;
    }

LABEL_34:
    v35 = v33 - 1;
    if (v29)
    {
      v35 = 0;
      v36 = *a1;
    }

    else
    {
      v36 = 0;
    }

    return v22 + (v36 | v35) + 1;
  }

  if (v32 == 2)
  {
    v33 = *(a1 + v28);
    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v33 = *(a1 + v28);
    if (v33)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  v37 = (((v25 + (((((a1 & 0xFFFFFFFFFFFFFFF8) + v23 + 26) & ~v23) + v23 + v24) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18;
  if (v12 == v22)
  {
    v38 = *(v9 + 48);
    v39 = v12;
    v40 = v45;
LABEL_41:

    return v38(v37, v39, v40);
  }

  v37 = (v37 + v19 + v20) & ~v20;
  if (v14 == v22)
  {
    v38 = *(v13 + 48);
    v39 = v14;
    v40 = v44;
    goto LABEL_41;
  }

  v41 = (v26 + v37) & ~v21;
  if (v17 == v22)
  {
    v42 = *(v16 + 48);

    return v42(v41);
  }

  else
  {
    v43 = *((v27 + v41) & 0xFFFFFFFFFFFFFFF8);
    if (v43 >= 0xFFFFFFFF)
    {
      LODWORD(v43) = -1;
    }

    return (v43 + 1);
  }
}

void sub_F48CC(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_261690() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (((v7 + ((v6 + 2) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = ((v7 + ((v6 + 2) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
  }

  v35 = *(a4 + 16);
  v9 = *(v35 - 8);
  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v36 = *(v35 - 8);
  v11 = *(v9 + 84);
  v12 = *(sub_260C00() - 8);
  v13 = *(v12 + 84);
  if (v11 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v11;
  }

  v15 = *(sub_260C50() - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(v15 + 80);
  if (v14 <= v16)
  {
    v21 = *(v15 + 84);
  }

  else
  {
    v21 = v14;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = *(v12 + 64) + v20;
  v23 = *(v15 + 64) + 7;
  v24 = ((((v23 + ((v22 + ((v18 + v19 + ((v17 + ((v10 + 8 + ((v8 + 1 + (v6 | 7) + (((v6 | 7) + 26) & ~(v6 | 7))) & ~(v6 | 7))) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17)) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v21 >= a3)
  {
    v27 = 0;
  }

  else
  {
    if (((((v23 + ((v22 + ((v18 + v19 + ((v17 + ((v10 + 8 + ((v8 + 1 + (v6 | 7) + (((v6 | 7) + 26) & ~(v6 | 7))) & ~(v6 | 7))) & 0xFFFFFFF8) + 9) & ~v17)) & ~v19)) & ~v20)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v25 = a3 - v21 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }
  }

  if (a2 > v21)
  {
    if (((((v23 + ((v22 + ((v18 + v19 + ((v17 + ((v10 + 8 + ((v8 + 1 + (v6 | 7) + (((v6 | 7) + 26) & ~(v6 | 7))) & ~(v6 | 7))) & 0xFFFFFFF8) + 9) & ~v17)) & ~v19)) & ~v20)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v28 = a2 - v21;
    }

    else
    {
      v28 = 1;
    }

    if (v24)
    {
      v29 = ~v21 + a2;
      bzero(a1, v24);
      *a1 = v29;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        *(a1 + v24) = v28;
      }

      else
      {
        *(a1 + v24) = v28;
      }
    }

    else if (v27)
    {
      *(a1 + v24) = v28;
    }

    return;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (v27 == 2)
  {
    *(a1 + v24) = 0;
    goto LABEL_45;
  }

  *(a1 + v24) = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  v30 = (((v10 + 8 + (((((a1 & 0xFFFFFFFFFFFFFFF8) + (v6 | 7) + 26) & ~(v6 | 7)) + (v6 | 7) + v8 + 1) & ~(v6 | 7))) & 0xFFFFFFFFFFFFFFF8) + v17 + 9) & ~v17;
  if (v11 == v21)
  {
    v31 = *(v36 + 56);

LABEL_49:
    v31(v30);
    return;
  }

  v30 = (v30 + v18 + v19) & ~v19;
  if (v13 == v21)
  {
    v31 = *(v12 + 56);

    goto LABEL_49;
  }

  v32 = (v22 + v30) & ~v20;
  if (v16 == v21)
  {
    v33 = *(v15 + 56);

    v33(v32);
  }

  else
  {
    v34 = ((v23 + v32) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v34 = a2 & 0x7FFFFFFF;
      v34[1] = 0;
    }

    else
    {
      *v34 = a2 - 1;
    }
  }
}

void sub_F4D48()
{
  if (!qword_31D878)
  {
    sub_2F9C(&qword_319918, &qword_273BF0);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_31D878);
    }
  }
}

void sub_F4DAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_F4E00(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_2F9C(&qword_31D7D0, &qword_276468);
  sub_2F9C(&qword_31D7D8, &qword_276470);
  sub_8E38(&qword_31D7E0, &qword_31D7D8, &qword_276470);
  sub_2633D0();
  sub_8E38(&qword_31D7E8, &qword_31D7D0, &qword_276468);
  sub_2614C0();
  sub_8E38(qword_31D7F0, &qword_31D7D0, &qword_276468);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_261800();
  swift_getWitnessTable();
  sub_2632E0();
  return swift_getWitnessTable();
}

uint64_t sub_F5144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260C00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_260C50();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_F5248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260C00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_260C50();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for CollageLayout()
{
  result = qword_31D8E0;
  if (!qword_31D8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F5390()
{
  result = sub_260C00();
  if (v1 <= 0x3F)
  {
    result = sub_260C50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_F5420()
{
  result = qword_31D920;
  if (!qword_31D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D920);
  }

  return result;
}

uint64_t sub_F54BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v18 - v14;
  v13();
  sub_1609C(v12, a4, a6);
  v16 = *(v8 + 8);
  v16(v12, a4);
  sub_1609C(v15, a4, a6);
  return (v16)(v15, a4);
}

uint64_t sub_F55F0(uint64_t (**a1)(char *, char *, uint64_t), uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v66 = a2;
  v74 = a1;
  v10 = sub_2EF0(&qword_31D930, &qword_2765C8);
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v71 = &v58 - v12;
  v60 = sub_261490();
  v68 = *(v60 - 8);
  v13 = *(v68 + 64);
  v14 = __chkstk_darwin(v60);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v64 = &v58 - v17;
  v18 = sub_2EF0(&qword_31D938, &qword_2765D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v59 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = (&v58 - v22);
  v24 = sub_261570();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2EF0(&qword_31D940, &qword_2765D8);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v58 - v31;
  v33 = sub_2EF0(&qword_31D948, &qword_2765E0);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v37 = &v58 - v36;
  (*(v25 + 16))(v32, v74, v24);
  (*(v25 + 32))(v28, v32, v24);
  v38 = v60;
  sub_F65A4(&qword_31D950, &type metadata accessor for LayoutSubviews);
  v73 = v24;
  sub_2645E0();
  v39 = *(v34 + 44);
  v40 = v59;
  v62 = v39;
  *&v37[v39] = 0;
  v72 = *(sub_2EF0(&qword_31D958, &qword_2765E8) + 36);
  v41 = sub_F65A4(&qword_31D960, &type metadata accessor for LayoutSubviews);
  v42 = 0;
  v63 = (v68 + 16);
  v74 = (v68 + 32);
  v43 = v69;
  v69 += 48;
  v70 = (v43 + 56);
  v65 = (v68 + 8);
  v67 = v23;
  v68 = v41;
  v61 = v16;
  while (1)
  {
    sub_264860();
    if (*&v37[v72] == v76[0])
    {
      v44 = 1;
      goto LABEL_8;
    }

    v45 = sub_2648A0();
    v46 = v64;
    (*v63)(v64);
    v45(v76, 0);
    sub_264870();
    v47 = *(v10 + 48);
    v48 = v71;
    *v71 = v42;
    result = (*v74)(&v48[v47], v46, v38);
    if (__OFADD__(v42++, 1))
    {
      break;
    }

    *&v37[v62] = v42;
    sub_22148(v71, v40, &qword_31D930, &qword_2765C8);
    v44 = 0;
    v23 = v67;
LABEL_8:
    (*v70)(v40, v44, 1, v10);
    sub_22148(v40, v23, &qword_31D938, &qword_2765D0);
    if ((*v69)(v23, 1, v10) == 1)
    {
      return sub_F5D40(v37);
    }

    v51 = *v23;
    result = (*v74)(v16, v23 + *(v10 + 48), v38);
    if (v51 >= *(*v66 + 16))
    {
      v77.origin.x = a3;
      v77.origin.y = a4;
      v77.size.width = a5;
      v77.size.height = a6;
      CGRectGetMinY(v77);
      sub_2636F0();
      LOBYTE(v76[0]) = 0;
      v75 = 0;
    }

    else
    {
      if (v51 < 0)
      {
        goto LABEL_14;
      }

      v52 = (*v66 + 32 * v51);
      v53 = v52[4];
      v54 = v52[5];
      v55 = v10;
      v57 = v52[6];
      v56 = v52[7];
      v78.origin.x = a3;
      v78.origin.y = a4;
      v78.size.width = a5;
      v78.size.height = a6;
      CGRectGetMinX(v78);
      sub_260BE0();
      v79.origin.x = a3;
      v79.origin.y = a4;
      v79.size.width = a5;
      v79.size.height = a6;
      CGRectGetMaxY(v79);
      sub_2636F0();
      LOBYTE(v76[0]) = 0;
      v75 = 0;
      v10 = v55;
      v23 = v67;
      v16 = v61;
    }

    sub_261480();
    (*v65)(v16, v38);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_F5D40(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31D948, &qword_2765E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F5DAC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_F5DB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for ShelfCollage() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_F1A98(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_F5E8C(uint64_t a1)
{
  v2 = type metadata accessor for CollageLayout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F5F1C()
{
  v23 = *(v0 + 16);
  v24 = *(v0 + 32);
  v1 = type metadata accessor for ShelfCollage();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));
  sub_3074(*v3, *(v3 + 8));
  sub_F5DAC(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  v4 = (v3 + v1[14]);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v6 = sub_261690();
    (*(*(v6 - 8) + 8))(&v4[v5], v6);
  }

  else
  {
    v7 = *v4;
  }

  v8 = v1[15];
  sub_2EF0(&qword_318148, &unk_26AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261690();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
    v10 = *(v3 + v8);
  }

  sub_3074(*(v3 + v1[16]), *(v3 + v1[16] + 8));
  (*(*(v23 - 8) + 8))(v3 + v1[17]);
  v11 = v1[18];
  v12 = sub_260C00();
  (*(*(v12 - 8) + 8))(v3 + v11, v12);
  v13 = v1[19];
  v14 = sub_260C50();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);
  v15 = *(v3 + v1[20] + 8);

  v16 = (v3 + v1[21]);
  v17 = v16[1];

  v18 = v16[2];

  v19 = v16[3];

  v20 = v16[4];

  v21 = v16[5];

  return swift_deallocObject();
}

uint64_t sub_F61E8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ShelfCollage() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_F3130(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_F62AC()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_F62E4(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return v2(*a1, a1 + 1);
}

uint64_t sub_F6314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollageLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F6378()
{
  v1 = (type metadata accessor for CollageLayout() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v4 = sub_260C00();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = sub_260C50();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_F6490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollageLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F64F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = *(*(type metadata accessor for CollageLayout() - 8) + 80);

  return sub_F2A04(a1, a2, a3);
}

uint64_t sub_F65A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F65FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318148, &unk_26AEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HeroLockupModel.init(eyebrow:title:subtitle:artworkModel:footnote:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_260BD0();
  v13 = *(*(v12 - 8) + 32);
  v13(a6, a1, v12);
  v14 = type metadata accessor for HeroLockupModel();
  v13(a6 + v14[5], a2, v12);
  sub_A96C8(a3, a6 + v14[6]);
  v15 = a6 + v14[7];
  v16 = *(a4 + 112);
  *(v15 + 96) = *(a4 + 96);
  *(v15 + 112) = v16;
  *(v15 + 128) = *(a4 + 128);
  *(v15 + 144) = *(a4 + 144);
  v17 = *(a4 + 48);
  *(v15 + 32) = *(a4 + 32);
  *(v15 + 48) = v17;
  v18 = *(a4 + 80);
  *(v15 + 64) = *(a4 + 64);
  *(v15 + 80) = v18;
  v19 = *(a4 + 16);
  *v15 = *a4;
  *(v15 + 16) = v19;
  v20 = a6 + v14[8];

  return sub_A96C8(a5, v20);
}

uint64_t type metadata accessor for HeroLockupModel()
{
  result = qword_31DA40;
  if (!qword_31DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL HeroLockupModel.isSingleBookHero.getter()
{
  v1 = (v0 + *(type metadata accessor for HeroLockupModel() + 28));
  v2 = v1[7];
  v7[6] = v1[6];
  v7[7] = v2;
  v7[8] = v1[8];
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v4 = v1[5];
  v7[4] = v1[4];
  v7[5] = v4;
  v5 = v1[1];
  v7[0] = *v1;
  v7[1] = v5;
  return sub_57480(v7) == 1;
}

uint64_t sub_F6850()
{
  v1 = *v0;
  v2 = 0x776F7262657965;
  v3 = 0x656C746974627573;
  v4 = 0x4D6B726F77747261;
  if (v1 != 3)
  {
    v4 = 0x65746F6E746F6F66;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_F68F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F8FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F6918(uint64_t a1)
{
  v2 = sub_F7080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F6954(uint64_t a1)
{
  v2 = sub_F7080();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeroLockupModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v43 - v7;
  v8 = sub_260BD0();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v43 - v13;
  v51 = sub_2EF0(&qword_31D980, &qword_276658);
  v50 = *(v51 - 8);
  v14 = *(v50 + 64);
  __chkstk_darwin(v51);
  v16 = &v43 - v15;
  v17 = type metadata accessor for HeroLockupModel();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_F7080();
  v53 = v16;
  v22 = v66;
  sub_265120();
  if (v22)
  {
    return sub_3080(a1);
  }

  v23 = v12;
  v45 = v17;
  v24 = v20;
  v66 = a1;
  LOBYTE(v56) = 0;
  v25 = sub_F84B8(&qword_315D90, &type metadata accessor for LocalizerRequest);
  v26 = v51;
  sub_264DF0();
  v27 = *(v49 + 32);
  v44 = v24;
  v27(v24, v52, v8);
  LOBYTE(v56) = 1;
  v28 = v23;
  v29 = v25;
  sub_264DF0();
  v27((v44 + v45[5]), v28, v8);
  LOBYTE(v56) = 2;
  v30 = v48;
  v31 = v29;
  v52 = 0;
  sub_264DB0();
  v32 = v66;
  v33 = v50;
  v43 = v31;
  v34 = v44;
  sub_A96C8(v30, v44 + v45[6]);
  v55 = 3;
  sub_F716C();
  sub_264DF0();
  v35 = v45;
  v36 = v34 + v45[7];
  v37 = v63;
  *(v36 + 96) = v62;
  *(v36 + 112) = v37;
  *(v36 + 128) = v64;
  *(v36 + 144) = v65;
  v38 = v59;
  *(v36 + 32) = v58;
  *(v36 + 48) = v38;
  v39 = v61;
  *(v36 + 64) = v60;
  *(v36 + 80) = v39;
  v40 = v57;
  *v36 = v56;
  *(v36 + 16) = v40;
  v54 = 4;
  v41 = v47;
  sub_264DB0();
  (*(v33 + 8))(v53, v26);
  sub_A96C8(v41, v34 + v35[8]);
  sub_F71C0(v34, v46);
  sub_3080(v32);
  return sub_F7224(v34);
}

unint64_t sub_F7080()
{
  result = qword_31D988;
  if (!qword_31D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D988);
  }

  return result;
}

uint64_t sub_F7104(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316208, &qword_268BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_F716C()
{
  result = qword_31D990;
  if (!qword_31D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D990);
  }

  return result;
}

uint64_t sub_F71C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroLockupModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7224(uint64_t a1)
{
  v2 = type metadata accessor for HeroLockupModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 HeroArtworkModel.init(aspectRatio:artworkType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 144) = a3;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  *(a2 + 128) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_F72C8()
{
  if (*v0)
  {
    result = 0x7265766F63;
  }

  else
  {
    result = 0x6169726F74696465;
  }

  *v0;
  return result;
}

uint64_t sub_F7304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265766F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_F73E4(uint64_t a1)
{
  v2 = sub_F7DCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F7420(uint64_t a1)
{
  v2 = sub_F7DCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_F745C()
{
  if (*v0)
  {
    result = 0x756F72676B636162;
  }

  else
  {
    result = 0x6569567265766F63;
  }

  *v0;
  return result;
}

uint64_t sub_F74B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569567265766F63 && a2 == 0xEE006C65646F4D77;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_F759C(uint64_t a1)
{
  v2 = sub_F7E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F75D8(uint64_t a1)
{
  v2 = sub_F7E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_F7624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_F76AC(uint64_t a1)
{
  v2 = sub_F7E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F76E8(uint64_t a1)
{
  v2 = sub_F7E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeroArtworkModel.ArtworkType.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v43 = sub_2EF0(&qword_31D998, &qword_276660);
  v45 = *(v43 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v43);
  v5 = &v42 - v4;
  v6 = sub_2EF0(&qword_31D9A0, &qword_276668);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v10 = sub_2EF0(&qword_31D9A8, &unk_276670);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v49 = a1;
  sub_2E18(a1, v14);
  sub_F7DCC();
  v16 = v48;
  sub_265120();
  if (v16)
  {
    return sub_3080(v49);
  }

  v17 = v46;
  v18 = sub_264E00();
  v19 = (2 * *(v18 + 16)) | 1;
  v84 = v18;
  v85 = v18 + 32;
  v86 = 0;
  v87 = v19;
  v20 = sub_AFA8();
  v21 = v13;
  if (v20 == 2 || v86 != v87 >> 1)
  {
    v23 = v10;
    v24 = sub_264C10();
    swift_allocError();
    v26 = v25;
    v27 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
    *v26 = &type metadata for HeroArtworkModel.ArtworkType;
    sub_264D60();
    sub_264BF0();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v47 + 8))(v21, v23);
    swift_unknownObjectRelease();
    return sub_3080(v49);
  }

  if (v20)
  {
    LOBYTE(v50) = 1;
    sub_F7E20();
    sub_264D50();
    v22 = v47;
    v31 = v17;
    v89 = 0;
    sub_EAB10();
    v32 = v43;
    sub_264DF0();
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v88 = 1;
    v42 = sub_264D70();
    v44 = v34;
    v48 = 0;
    (*(v45 + 8))(v5, v32);
    (*(v22 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v54 = v63;
    v55 = v64;
    v56 = v65;
    v57 = v66;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    v53 = v62;
    *&v58 = v42;
    *(&v58 + 1) = v44;
    sub_7DE48(&v50);
  }

  else
  {
    LOBYTE(v50) = 0;
    sub_F7E74();
    v29 = v9;
    sub_264D50();
    v31 = v17;
    v30 = v47;
    v45 = v10;
    v33 = sub_264DC0();
    v48 = 0;
    v35 = v33;
    v37 = v36;
    (*(v44 + 8))(v29, v6);
    (*(v30 + 8))(v13, v45);
    swift_unknownObjectRelease();
    *&v50 = v35;
    *(&v50 + 1) = v37;
    sub_7DE1C(&v50);
  }

  v81 = v56;
  v82 = v57;
  v83 = v58;
  v77 = v52;
  v78 = v53;
  v79 = v54;
  v80 = v55;
  v75 = v50;
  v76 = v51;
  v38 = v57;
  v31[6] = v56;
  v31[7] = v38;
  v31[8] = v83;
  v39 = v78;
  v31[2] = v77;
  v31[3] = v39;
  v40 = v80;
  v31[4] = v79;
  v31[5] = v40;
  v41 = v76;
  *v31 = v75;
  v31[1] = v41;
  return sub_3080(v49);
}

unint64_t sub_F7DCC()
{
  result = qword_31D9B0;
  if (!qword_31D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9B0);
  }

  return result;
}

unint64_t sub_F7E20()
{
  result = qword_31D9B8;
  if (!qword_31D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9B8);
  }

  return result;
}

unint64_t sub_F7E74()
{
  result = qword_31D9C0;
  if (!qword_31D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9C0);
  }

  return result;
}

uint64_t sub_F7EE0()
{
  if (*v0)
  {
    result = 0x6152746365707361;
  }

  else
  {
    result = 0x546B726F77747261;
  }

  *v0;
  return result;
}

uint64_t sub_F7F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546B726F77747261 && a2 == 0xEB00000000657079;
  if (v6 || (sub_264F10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264F10();

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

uint64_t sub_F8010(uint64_t a1)
{
  v2 = sub_F8388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F804C(uint64_t a1)
{
  v2 = sub_F8388();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HeroArtworkModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = sub_2EF0(&qword_31D9C8, &qword_276680);
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v21);
  v8 = &v20 - v7;
  v9 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_F8388();
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v10 = v5;
  v35 = 0;
  sub_F83DC();
  v11 = v21;
  sub_264DF0();
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v47 = v38;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v45 = v36;
  v46 = v37;
  v33 = 1;
  sub_6E08();
  sub_264DF0();
  (*(v10 + 8))(v8, v11);
  v27 = v51;
  v28 = v52;
  v29 = v53;
  v23 = v47;
  v24 = v48;
  v12 = v50;
  v25 = v49;
  v26 = v50;
  v13 = v46;
  v22[0] = v45;
  v22[1] = v46;
  v14 = v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v14;
  *(a2 + 128) = v29;
  v15 = v24;
  v16 = v25;
  v17 = v22[0];
  *(a2 + 32) = v23;
  *(a2 + 48) = v15;
  v18 = v34;
  v30 = v34;
  *(a2 + 64) = v16;
  *(a2 + 80) = v12;
  *a2 = v17;
  *(a2 + 16) = v13;
  *(a2 + 144) = v30;
  sub_57A38(v22, v31);
  sub_3080(a1);
  v31[6] = v51;
  v31[7] = v52;
  v31[8] = v53;
  v31[2] = v47;
  v31[3] = v48;
  v31[4] = v49;
  v31[5] = v50;
  v31[0] = v45;
  v31[1] = v46;
  v32 = v18;
  return sub_F70D4(v31);
}

unint64_t sub_F8388()
{
  result = qword_31D9D0;
  if (!qword_31D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9D0);
  }

  return result;
}

unint64_t sub_F83DC()
{
  result = qword_31D9D8;
  if (!qword_31D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31D9D8);
  }

  return result;
}

uint64_t sub_F8460(uint64_t a1)
{
  result = sub_F84B8(&qword_31D9E0, type metadata accessor for HeroLockupModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_F84B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2EF0(&qword_316208, &qword_268BD0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28) + 24);
      v15 = (v14 >> 3) & 0xFFFFFF80 | (v14 >> 1);
      if (v15 > 0x80000000)
      {
        return -v15;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

double sub_F8660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_316208, &qword_268BD0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      v16 = a1 + *(a4 + 28);
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0u;
      *(v16 + 112) = 0u;
      *(v16 + 128) = 0u;
      return result;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  v11(v12, a2, a2, v10);
  return result;
}

void sub_F879C()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_95918();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_F8830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_F8864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_F88B8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_F8950(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_F897C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_F89D0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_F8ABC()
{
  result = qword_31DA88;
  if (!qword_31DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DA88);
  }

  return result;
}

unint64_t sub_F8B14()
{
  result = qword_31DA90;
  if (!qword_31DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DA90);
  }

  return result;
}

unint64_t sub_F8B6C()
{
  result = qword_31DA98;
  if (!qword_31DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DA98);
  }

  return result;
}

unint64_t sub_F8BC4()
{
  result = qword_31DAA0;
  if (!qword_31DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAA0);
  }

  return result;
}

unint64_t sub_F8C1C()
{
  result = qword_31DAA8;
  if (!qword_31DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAA8);
  }

  return result;
}

unint64_t sub_F8C74()
{
  result = qword_31DAB0;
  if (!qword_31DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAB0);
  }

  return result;
}

unint64_t sub_F8CCC()
{
  result = qword_31DAB8;
  if (!qword_31DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAB8);
  }

  return result;
}

unint64_t sub_F8D24()
{
  result = qword_31DAC0;
  if (!qword_31DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAC0);
  }

  return result;
}

unint64_t sub_F8D7C()
{
  result = qword_31DAC8;
  if (!qword_31DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAC8);
  }

  return result;
}

unint64_t sub_F8DD4()
{
  result = qword_31DAD0;
  if (!qword_31DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAD0);
  }

  return result;
}

unint64_t sub_F8E2C()
{
  result = qword_31DAD8;
  if (!qword_31DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAD8);
  }

  return result;
}

unint64_t sub_F8E84()
{
  result = qword_31DAE0;
  if (!qword_31DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAE0);
  }

  return result;
}

unint64_t sub_F8EDC()
{
  result = qword_31DAE8;
  if (!qword_31DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAE8);
  }

  return result;
}

unint64_t sub_F8F34()
{
  result = qword_31DAF0;
  if (!qword_31DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAF0);
  }

  return result;
}

unint64_t sub_F8F8C()
{
  result = qword_31DAF8;
  if (!qword_31DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DAF8);
  }

  return result;
}

uint64_t sub_F8FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F7262657965 && a2 == 0xE700000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D6B726F77747261 && a2 == 0xEC0000006C65646FLL || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t Text.withTrailingForwardChevron(_:layoutDirection:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_261D90();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_2616C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v13 + 16))(v16, a2, v12);
    v17 = (*(v13 + 88))(v16, v12);
    if (v17 == enum case for LayoutDirection.leftToRight(_:))
    {
      sub_261D80();
      v65._countAndFlagsBits = 0xA881E2A681E2;
      v65._object = 0xA600000000000000;
      sub_261D70(v65);
      sub_261D60();
      v66._countAndFlagsBits = 0xA0C2A981E2;
      v66._object = 0xA500000000000000;
      sub_261D70(v66);
      sub_2630B0();
      v18 = sub_262900();
      v20 = v19;
      v22 = v21;
      v23 = [objc_opt_self() tertiaryLabelColor];
      v64 = sub_263070();
      v24 = sub_2627F0();
      v26 = v25;
      v28 = v27;
      sub_39DBC(v18, v20, v22 & 1);

      sub_261D60();
      sub_39DBC(v24, v26, v28 & 1);

      v67._countAndFlagsBits = 11108834;
      v67._object = 0xA300000000000000;
      sub_261D70(v67);
      sub_261DA0();
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    }

    else
    {
      if (v17 != enum case for LayoutDirection.rightToLeft(_:))
      {
        sub_261D80();
        v71._countAndFlagsBits = 0;
        v71._object = 0xE000000000000000;
        sub_261D70(v71);
        sub_261D60();
        v72._countAndFlagsBits = 41154;
        v72._object = 0xA200000000000000;
        sub_261D70(v72);
        sub_2630B0();
        v44 = sub_262900();
        v46 = v45;
        v61 = v47;
        v62 = v48;
        v49 = [objc_opt_self() tertiaryLabelColor];
        v64 = sub_263070();
        v50 = v46;
        v51 = sub_2627F0();
        v53 = v52;
        v55 = v54;
        v63 = v56;
        sub_39DBC(v44, v50, v61 & 1);

        sub_261D60();
        sub_39DBC(v51, v53, v55 & 1);

        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        sub_261D70(v73);
        sub_261DA0();
        type metadata accessor for BundleFinder();
        v57 = swift_getObjCClassFromMetadata();
        v58 = [objc_opt_self() bundleForClass:v57];
        a3 = sub_2628C0();
        (*(v13 + 8))(v16, v12);
        return a3;
      }

      sub_261D80();
      v68._countAndFlagsBits = 0xA881E2A781E2;
      v68._object = 0xA600000000000000;
      sub_261D70(v68);
      sub_261D60();
      v69._countAndFlagsBits = 0xA0C2A981E2;
      v69._object = 0xA500000000000000;
      sub_261D70(v69);
      sub_2630B0();
      v31 = sub_262900();
      v33 = v32;
      v35 = v34;
      v36 = [objc_opt_self() tertiaryLabelColor];
      v64 = sub_263070();
      v37 = sub_2627F0();
      v39 = v38;
      v41 = v40;
      sub_39DBC(v31, v33, v35 & 1);

      sub_261D60();
      sub_39DBC(v37, v39, v41 & 1);

      v70._countAndFlagsBits = 11108834;
      v70._object = 0xA300000000000000;
      sub_261D70(v70);
      sub_261DA0();
      type metadata accessor for BundleFinder();
      v42 = swift_getObjCClassFromMetadata();
      v43 = [objc_opt_self() bundleForClass:v42];
    }

    return sub_2628C0();
  }

  else
  {
    sub_43B58(a3, a4, a5 & 1);
  }

  return a3;
}

Swift::Int sub_F98E8()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_F99FC()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

Swift::Int sub_F9AE0()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_F9C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemViewModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_F9CBC()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

uint64_t sub_F9DC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FB604(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_F9DF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x747865746E6F63;
  v5 = 0xE800000000000000;
  v6 = 0x4449736569726573;
  v7 = 0xD000000000000012;
  v8 = 0x800000000028FA10;
  if (v2 != 4)
  {
    v7 = 0xD000000000000013;
    v8 = 0x800000000028FA30;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656372756F736572;
  if (v2 != 1)
  {
    v10 = 0x4E6E6F6974636573;
    v9 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_F9EBC()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0x4449736569726573;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656372756F736572;
  if (v1 != 1)
  {
    v5 = 0x4E6E6F6974636573;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_F9F84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_FB604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F9FAC(uint64_t a1)
{
  v2 = sub_FAF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F9FE8(uint64_t a1)
{
  v2 = sub_FAF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_FA03C()
{
  *v0;
  *v0;
  *v0;
  sub_264500();
}

uint64_t sub_FA170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FB6A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_FA1A0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006567;
  v4 = 0x6150736569726573;
  v5 = 0xEF68736F6F775373;
  v6 = 0x7472616843706F74;
  if (v2 != 5)
  {
    v6 = 0xD000000000000017;
    v5 = 0x800000000028FAB0;
  }

  v7 = 0x800000000028FA70;
  v8 = 0x7472616843706F74;
  if (v2 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xED00007473694C73;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000000028FA50;
  v10 = 0xD000000000000012;
  if (v2 != 1)
  {
    v10 = 0x736E6F6974696465;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t CodeListItemViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_2EF0(&qword_31A480, &qword_273520);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v82 = &v78 - v5;
  v6 = type metadata accessor for ListItemViewModel();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_31DB00, &qword_276F08);
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  __chkstk_darwin(v10);
  v13 = &v78 - v12;
  v14 = type metadata accessor for CodeListItemViewModel();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v85 = a1;
  sub_2E18(a1, v19);
  sub_FAF30();
  v20 = v105;
  sub_265120();
  if (v20)
  {
    goto LABEL_3;
  }

  v80 = v6;
  v81 = v17;
  v105 = v9;
  v21 = v84;
  sub_2EF0(&qword_317FB8, &unk_26AA50);
  LOBYTE(v98[0]) = 1;
  sub_8E38(&qword_317FC0, &qword_317FB8, &unk_26AA50);
  sub_264DF0();
  v22 = v10;
  v25 = *v97;
  sub_260810();
  if (!*&v97[24])
  {
    sub_8E80(v97, &qword_316D40, &unk_268FC0);
    v26 = sub_264C10();
    v79 = v10;
    v27 = v26;
    swift_allocError();
    v28 = v25;
    v30 = v29;
    sub_264D60();
    sub_4401C();
    swift_allocError();
    *v31 = 0;
    sub_264BF0();
    (*(*(v27 - 8) + 104))(v30, enum case for DecodingError.dataCorrupted(_:), v27);
    swift_willThrow();

    (*(v21 + 8))(v13, v79);
    goto LABEL_3;
  }

  sub_F7CC(v97, v102);
  LOBYTE(v98[0]) = 0;
  sub_FAF84();
  sub_264DF0();
  v78 = 0;
  v32 = v21;
  if (v97[0] <= 2u)
  {
    if (!v97[0])
    {
      v97[0] = 3;
      v42 = v78;
      v43 = sub_264DC0();
      v78 = v42;
      v46 = v45;
      v47 = v43;
      sub_30CC(v102, v97);
      v48 = v82;
      CardInfo.init(with:alwaysPresentNewCardSet:)(v97, 1, v82);
      v49 = v25;
      v50 = v105;
      static ListItemViewModel.seriesPage(seriesID:assetInfo:cardInfo:)(v47, v46, v102, v48, v105);

      sub_8E80(v48, &qword_31A480, &qword_273520);
      v51 = v10;
      v35 = v50;
      v36 = v81;
      (*(v32 + 8))(v13, v51);
      v37 = v83;
LABEL_23:
      v40 = v85;
      goto LABEL_24;
    }

    if (v97[0] != 1)
    {
      sub_2EF0(&qword_31DB18, &qword_276F10);
      LOBYTE(v98[0]) = 5;
      sub_FB040();
      v44 = v78;
      sub_264DF0();
      if (!v44)
      {
        v52 = *v97;
        v97[0] = 4;
        v53 = sub_264D70();
        v78 = 0;
        v57 = v56;
        v58 = v53;
        v82 = v25;
        v79 = v22;
        sub_30CC(v102, v98);
        *(&v99 + 1) = 0;
        LOBYTE(v100) = 1;
        *(&v100 + 1) = 0;
        v101 = 255;
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_2E18(v102, v103);
        v59 = sub_2608E0();
        if (!v60)
        {
          sub_2E18(v102, v103);
          v59 = sub_2609A0();
        }

        v61 = v59;
        v62 = v60;
        v94[3] = &type metadata for ListItemMetadataTitleWithSubtitle;
        v94[4] = sub_2E5C();
        v63 = swift_allocObject();
        v94[0] = v63;
        *(v63 + 16) = v61;
        *(v63 + 24) = v62;
        *(v63 + 32) = 0;
        *(v63 + 40) = 0;
        *(v63 + 48) = 0;
        v64 = sub_2EF0(&qword_31DB40, &qword_276F20);
        v92 = v64;
        v93 = sub_8E38(&qword_31DB48, &qword_31DB40, &qword_276F20);
        v65 = sub_10934(v91);
        sub_30CC(v102, v65);
        v65[5] = v58;
        v65[6] = v57;
        v65[7] = v52;
        v66 = (v65 + *(v64 + 44));
        *v66 = swift_getKeyPath();
        sub_2EF0(&qword_316DC8, &qword_276F60);
        swift_storeEnumTagMultiPayload();
        v67 = *(type metadata accessor for ListItemEditionsDescriptorExternals() + 20);
        *(v66 + v67) = swift_getKeyPath();
        sub_2EF0(&qword_318170, &unk_26AF40);
        swift_storeEnumTagMultiPayload();
        memset(v90, 0, 40);
        v89 = 0;
        memset(v88, 0, sizeof(v88));
        v87 = 0;
        memset(v86, 0, sizeof(v86));
        memset(v97, 0, sizeof(v97));
        sub_34A0(v95, v97, &qword_315B58, &unk_266540);
        sub_34A0(v94, &v97[40], &qword_315B60, &unk_276FA0);
        sub_34A0(v91, &v97[80], &qword_315B68, &unk_266550);
        sub_34A0(v90, &v97[160], &qword_315B70, &unk_276FB0);
        sub_34A0(v88, &v97[200], &qword_315B78, &unk_266560);
        sub_34A0(v86, &v97[240], &qword_315B80, &qword_276FC0);
        v92 = &type metadata for ListItemAccessoryBuyButton;
        v93 = sub_825A0();
        v68 = swift_allocObject();
        v91[0] = v68;
        sub_30CC(v102, v68 + 32);
        *(v68 + 16) = swift_getKeyPath();
        *(v68 + 24) = 0;
        v35 = v105;
        sub_30CC(v102, (v105 + 408));
        sub_30CC(v102, v90);
        v69 = v80;
        CardInfo.init(with:alwaysPresentNewCardSet:)(v90, 1, v35 + *(v80 + 40));
        v70 = v104;
        sub_2E18(v102, v103);
        v71 = *(v70 + 8);
        v72 = sub_2606E0();
        v74 = v73;

        (*(v32 + 8))(v13, v79);
        v75 = v98[0];
        *(v35 + 24) = v98[1];
        v76 = v100;
        *(v35 + 40) = v99;
        *(v35 + 56) = v76;
        *v35 = 0;
        *(v35 + 360) = 0u;
        *(v35 + 376) = 0u;
        *(v35 + 392) = 0;
        *(v35 + 72) = v101;
        *(v35 + 8) = v75;
        memcpy((v35 + 80), v97, 0x118uLL);
        sub_34A0(v91, v35 + 360, &qword_31A488, &unk_272AA0);
        *(v35 + 400) = 0;
        v77 = v35 + *(v69 + 44);
        *(v77 + 96) = 0u;
        *(v77 + 112) = 0u;
        *(v77 + 64) = 0u;
        *(v77 + 80) = 0u;
        *(v77 + 32) = 0u;
        *(v77 + 48) = 0u;
        *v77 = xmmword_276EF0;
        *(v77 + 16) = 0u;
        *(v77 + 128) = v72;
        *(v77 + 136) = v74;
        *(v77 + 144) = 2;
        v37 = v83;
        v40 = v85;
        v36 = v81;
        goto LABEL_24;
      }

      (*(v21 + 8))(v13, v10);

      sub_3080(v102);
      v23 = v85;
      return sub_3080(v23);
    }

    sub_4401C();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();

    (*(v21 + 8))(v13, v10);
    sub_3080(v102);
LABEL_3:
    v23 = v85;
    return sub_3080(v23);
  }

  v33 = v25;
  v34 = v10;
  v35 = v105;
  v36 = v81;
  if (v97[0] > 4u)
  {
    v37 = v83;
    if (v97[0] == 5)
    {
      static ListItemViewModel.topChartsSwoosh(assetInfo:)(v102, v105);
    }

    else
    {
      static ListItemViewModel.topChartsGroupingSwoosh(assetInfo:)(v102, v105);
    }

    goto LABEL_22;
  }

  v37 = v83;
  if (v97[0] != 3)
  {
    static ListItemViewModel.topChartsList(assetInfo:)(v102, v105);
LABEL_22:

    (*(v21 + 8))(v13, v34);
    goto LABEL_23;
  }

  v97[0] = 2;
  v38 = v78;
  v39 = sub_264DC0();
  v40 = v85;
  v78 = v38;
  v54 = v105;
  static ListItemViewModel.recommendationsPage(sectionName:assetInfo:)(v39, v55, v102, v105);

  v35 = v54;
  v36 = v81;
  (*(v32 + 8))(v13, v34);
LABEL_24:
  sub_FAFD8(v35, v36, type metadata accessor for ListItemViewModel);
  sub_3080(v102);
  sub_FAFD8(v36, v37, type metadata accessor for CodeListItemViewModel);
  return sub_3080(v40);
}

uint64_t type metadata accessor for CodeListItemViewModel()
{
  result = qword_31DBB0;
  if (!qword_31DBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_FAF30()
{
  result = qword_31DB08;
  if (!qword_31DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB08);
  }

  return result;
}

unint64_t sub_FAF84()
{
  result = qword_31DB10;
  if (!qword_31DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB10);
  }

  return result;
}

uint64_t sub_FAFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_FB040()
{
  result = qword_31DB20;
  if (!qword_31DB20)
  {
    sub_2F9C(&qword_31DB18, &qword_276F10);
    sub_FB0C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB20);
  }

  return result;
}

unint64_t sub_FB0C4()
{
  result = qword_31DB28;
  if (!qword_31DB28)
  {
    sub_2F9C(&qword_31DB30, &qword_276F18);
    sub_FB148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB28);
  }

  return result;
}

unint64_t sub_FB148()
{
  result = qword_31DB38;
  if (!qword_31DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB38);
  }

  return result;
}

uint64_t sub_FB19C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_FB260()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_FB2B0()
{
  result = qword_31DB50;
  if (!qword_31DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DB50);
  }

  return result;
}

uint64_t sub_FB318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_FB398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_FB408()
{
  result = type metadata accessor for ListItemViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_FB4A8()
{
  result = qword_31DBE8;
  if (!qword_31DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DBE8);
  }

  return result;
}

unint64_t sub_FB500()
{
  result = qword_31DBF0;
  if (!qword_31DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DBF0);
  }

  return result;
}

unint64_t sub_FB558()
{
  result = qword_31DBF8;
  if (!qword_31DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DBF8);
  }

  return result;
}

unint64_t sub_FB5B0()
{
  result = qword_31DC00;
  if (!qword_31DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DC00);
  }

  return result;
}

uint64_t sub_FB604(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3004E8;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_FB650()
{
  result = qword_31DC08;
  if (!qword_31DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DC08);
  }

  return result;
}

uint64_t sub_FB6A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_300598;
  v6._object = a2;
  v4 = sub_264D40(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_FB6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 TransitionFrameViewModel.init(section:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_FB764()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v20[-v15];
  *(v0 + 8);
  sub_2643A0();
  sub_260260();
  (*(v10 + 16))(v14, v16, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v6, v8, v1);
  v18 = sub_264490();
  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v16, v9);
  return v18;
}

uint64_t sub_FBB6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 8);
  if (v3 == 1)
  {
    v10 = sub_2EF0(&qword_316DA0, &unk_277640);
    v11 = *(v10 + 48);
    v6 = *(v10 + 64);
    *a1 = 0xD00000000000001CLL;
    a1[1] = 0x8000000000292610;
    v12 = enum case for ColorScheme.light(_:);
    v13 = sub_261180();
    (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
    v9 = [objc_opt_self() secondarySystemBackgroundColor];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = sub_2EF0(&qword_316DA0, &unk_277640);
    v5 = *(v4 + 48);
    v6 = *(v4 + 64);
    *a1 = 0xD000000000000018;
    a1[1] = 0x8000000000292630;
    v7 = enum case for ColorScheme.light(_:);
    v8 = sub_261180();
    (*(*(v8 - 8) + 104))(a1 + v5, v7, v8);
    v9 = [objc_opt_self() secondarySystemBackgroundColor];
LABEL_5:
    v14 = v9;
    *(a1 + v6) = sub_262EE0();
    goto LABEL_7;
  }

  v15 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  v16 = [objc_opt_self() secondarySystemBackgroundColor];
  *a1 = sub_262EE0();
  v17 = enum case for ColorScheme.light(_:);
  v18 = sub_261180();
  v19 = *(v18 - 8);
  (*(v19 + 104))(a1 + v15, v17, v18);
  (*(v19 + 56))(a1 + v15, 0, 1, v18);
LABEL_7:
  type metadata accessor for PageBackground(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_FBDE8()
{
  v1 = sub_2EF0(&qword_31DCF8, &qword_277628);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = sub_2EF0(&qword_31DD00, &unk_277630);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = *(v0 + 8);
  v16 = sub_260650();
  v17 = *(v16 - 8);
  v18 = &enum case for FrameName.transitionHighlight(_:);
  v19 = &enum case for FrameName.transitionReadingInsights(_:);
  if (v15 != 1)
  {
    v19 = &enum case for FrameName.transitionReaderType(_:);
  }

  if (v15)
  {
    v18 = v19;
  }

  (*(*(v16 - 8) + 104))(v14, *v18, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  v20 = sub_260490();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_8198(v14, v12, &qword_31DD00, &unk_277630);
  sub_8198(v7, v5, &qword_31DCF8, &qword_277628);
  sub_260540();
  sub_8E80(v7, &qword_31DCF8, &qword_277628);
  return sub_8E80(v14, &qword_31DD00, &unk_277630);
}

uint64_t type metadata accessor for TransitionFrame()
{
  result = qword_31DC80;
  if (!qword_31DC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransitionFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + *(type metadata accessor for TransitionFrame() + 20));
  a1[3] = sub_260550();
  a1[4] = sub_FD9AC(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_FD9AC(&qword_317680, &type metadata accessor for YIRSourceData);
  sub_10934(a1);
  return sub_FBDE8();
}

uint64_t TransitionFrame.textAlignment.getter()
{
  if (*(v0 + *(type metadata accessor for TransitionFrame() + 20) + 8) >= 2uLL)
  {

    return sub_261D30();
  }

  else
  {

    return sub_261D10();
  }
}

uint64_t TransitionFrame.id.getter()
{
  v1 = type metadata accessor for TransitionFrame();
  sub_2EF0(&qword_31DC10, &qword_277340);
  v4._countAndFlagsBits = sub_2644B0();
  sub_264530(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_264530(v5);
  v3 = *(v0 + *(v1 + 20));
  sub_264CC0();
  return 0;
}

double sub_FC324()
{
  v1 = v0;
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261C90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22 - v13);
  v15 = type metadata accessor for SizeConstants(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v1, v14, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_FDB2C(v14, v18, type metadata accessor for SizeConstants);
  }

  else
  {
    v19 = *v14;
    sub_264900();
    v20 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  sub_FDB2C(v18, v5, type metadata accessor for SizeConstants.Environment);
  sub_FDACC(v5, type metadata accessor for SizeConstants.Spacing);
  return 16.0;
}

uint64_t TransitionFrame.init(model:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TransitionFrame();
  v6 = (a2 + *(result + 20));
  *v6 = v3;
  v6[1] = v4;
  return result;
}

uint64_t TransitionFrame.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for TransitionFrame();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_FC890(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_FDB2C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TransitionFrame);
  *a1 = sub_FC8F8;
  a1[1] = v7;
  return result;
}

uint64_t sub_FC74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PageBackground(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a3 = sub_261E50();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v10 = sub_2EF0(&qword_31DCC8, &qword_2774E8);
  sub_FC8FC(a2, a1, (a3 + *(v10 + 44)));
  KeyPath = swift_getKeyPath();
  v15 = *(a2 + *(type metadata accessor for TransitionFrame() + 20));
  sub_FBB6C(v9);
  v12 = (a3 + *(sub_2EF0(&qword_31DCD0, &unk_277520) + 36));
  v13 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  PageBackground.resolvedColorScheme.getter(v12 + *(v13 + 28));
  result = sub_FDACC(v9, type metadata accessor for PageBackground);
  *v12 = KeyPath;
  return result;
}

uint64_t sub_FC890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionFrame();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FC8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v73[2] = a2;
  v85 = a3;
  v4 = type metadata accessor for TextLockup();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = (v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_2EF0(&qword_31DCD8, &qword_277530);
  v76 = *(v77 - 8);
  v8 = *(v76 + 64);
  __chkstk_darwin(v77);
  v10 = v73 - v9;
  v74 = sub_2EF0(&qword_31DCE0, &qword_277538);
  v11 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v13 = v73 - v12;
  v81 = sub_2EF0(&qword_31DCE8, &qword_277540);
  v14 = *(*(v81 - 8) + 64);
  v15 = __chkstk_darwin(v81);
  v84 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v80 = v73 - v18;
  __chkstk_darwin(v17);
  v20 = v73 - v19;
  v21 = *(type metadata accessor for TransitionFrame() + 20);
  v73[1] = a1;
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v83 = v20;
  if (v23 >= 2)
  {
    sub_261D30();
  }

  else
  {
    sub_261D10();
  }

  v75 = v10;
  v82 = v13;
  sub_261D10();
  v79 = sub_261D00();
  v78 = v22;
  *&v86 = *v22;
  *(&v86 + 1) = v23;
  v24 = sub_FB764();
  v26 = v25;
  v27 = Color.init(hexString:)(0x653231384646, 0xE600000000000000);
  if (!v27)
  {
    v27 = sub_262FF0();
  }

  v28 = v27 | 0x8000000000000000;
  v29 = v4[13];
  v30 = sub_2625C0();
  (*(*(v30 - 8) + 56))(v7 + v29, 1, 1, v30);
  v31 = sub_261E60();
  v32 = sub_263580();
  v34 = v33;
  v35 = v4[17];
  v36 = enum case for DynamicTypeSize.accessibility2(_:);
  v37 = sub_261690();
  (*(*(v37 - 8) + 104))(v7 + v35, v36, v37);
  *v7 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v38 = v4[5];
  *(v7 + v38) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v39 = v7 + v4[6];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = v7 + v4[7];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = v7 + v4[8];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  *(v7 + v4[9]) = 5;
  v42 = (v7 + v4[10]);
  *v42 = 0;
  v42[1] = 0;
  v43 = (v7 + v4[11]);
  *v43 = v24;
  v43[1] = v26;
  v43[2] = v28;
  v44 = (v7 + v4[12]);
  *v44 = 0;
  v44[1] = 0;
  *(v7 + v4[14]) = v31;
  v45 = (v7 + v4[15]);
  *v45 = v32;
  v45[1] = v34;
  *(v7 + v4[16]) = 0;
  sub_FD9AC(&qword_31BF50, type metadata accessor for TextLockup);
  v46 = v75;
  sub_262C10();
  sub_FDACC(v7, type metadata accessor for TextLockup);
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v47 = v82;
  (*(v76 + 32))(v82, v46, v77);
  v48 = (v47 + *(v74 + 36));
  v49 = v91;
  v48[4] = v90;
  v48[5] = v49;
  v48[6] = v92;
  v50 = v87;
  *v48 = v86;
  v48[1] = v50;
  v51 = v89;
  v48[2] = v88;
  v48[3] = v51;
  v52 = sub_262510();
  v53 = v78;
  v54 = v83;
  if (v78[1] >= 2uLL)
  {
    sub_261D30();
  }

  else
  {
    sub_261D10();
  }

  sub_261D10();
  if (sub_261D00())
  {
    sub_FC324();
  }

  sub_2610C0();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v80;
  sub_22148(v47, v80, &qword_31DCE0, &qword_277538);
  v64 = v63 + *(v81 + 36);
  *v64 = v52;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  sub_22148(v63, v54, &qword_31DCE8, &qword_277540);
  if (v53[1] >= 2uLL)
  {
    sub_261D30();
  }

  else
  {
    sub_261D10();
  }

  v65 = v79;
  v66 = (v79 & 1) == 0;
  sub_261D20();
  v67 = sub_261D00();
  v68 = v84;
  sub_FD9F4(v54, v84);
  v69 = v85;
  *v85 = 0;
  *(v69 + 8) = v66;
  *(v69 + 9) = v65 & 1;
  v70 = sub_2EF0(&qword_31DCF0, &qword_277620);
  sub_FD9F4(v68, v69 + *(v70 + 48));
  v71 = v69 + *(v70 + 64);
  *v71 = 0;
  v71[8] = (v67 & 1) == 0;
  v71[9] = v67 & 1;
  sub_FDA64(v54);
  return sub_FDA64(v68);
}

uint64_t sub_FD0B0(uint64_t a1)
{
  result = sub_FD9AC(&qword_31DC18, type metadata accessor for TransitionFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FD144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + *(a1 + 20));
  a2[3] = sub_260550();
  a2[4] = sub_FD9AC(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_FD9AC(&qword_317680, &type metadata accessor for YIRSourceData);
  sub_10934(a2);
  return sub_FBDE8();
}

uint64_t sub_FD1FC(uint64_t a1)
{
  result = sub_FD9AC(&qword_31DC20, type metadata accessor for TransitionFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FD270@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_FC890(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_FDB2C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TransitionFrame);
  *a2 = sub_FDB98;
  a2[1] = v7;
  return result;
}

uint64_t sub_FD370(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_FD388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_FD3E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_FD440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_FD494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_FD4F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_FD534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
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

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_FD620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 1);
  }

  return result;
}

void sub_FD6E8()
{
  sub_3E754();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_FD760()
{
  result = qword_31DCB8;
  if (!qword_31DCB8)
  {
    sub_2F9C(&qword_31DCC0, &qword_2774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31DCB8);
  }

  return result;
}

uint64_t sub_FD7C4()
{
  v1 = type metadata accessor for TransitionFrame();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v5 = sub_261690();
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  else
  {
    v6 = *v3;
  }

  if (*&v3[*(v1 + 20) + 8] >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_FD904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransitionFrame() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_FC74C(a1, v6, a2);
}

uint64_t sub_FD9AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FD9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31DCE8, &qword_277540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FDA64(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31DCE8, &qword_277540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FDACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_FDB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t View.clipShape<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(a5 + 48))(a3, a5);
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_262E90();
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t View.coverEffect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _CoverEffectViewModifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  (*(v6 + 16))(v9, a1, a3);
  _CoverEffectViewModifier.init(effect:)(v9, a3, v14);
  sub_262E30();
  return (*(v11 + 8))(v14, v10);
}

uint64_t _CoverEffectViewModifier.init(effect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for _CoverEffectViewModifier() + 36);
  *(a3 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_31DD08, &qword_277680);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(a2 - 8) + 32);

  return v7(a3, a1, a2);
}

uint64_t Image.coverEffect<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a4;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _CoverEffectViewModifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_2630C0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v14, v17);
  v20 = sub_263100();
  (*(v15 + 8))(v19, v14);
  v25 = v20;
  (*(v5 + 16))(v8, v23, a2);
  _CoverEffectViewModifier.init(effect:)(v8, a2, v13);
  sub_262E30();
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_FE1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_31DD08, &qword_277680);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_FF4CC(v2 + *(a1 + 36), &v18 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2617C0();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_264900();
    v17 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_FE424(uint64_t a1)
{
  v2 = sub_2617C0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_261AB0();
}

uint64_t _CoverEffectViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v50 = a3;
  v4 = *(a2 + 24);
  v47 = *(a2 + 16);
  v48 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v6 = *(v43 + 64);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v39 - v10;
  swift_getWitnessTable();
  v11 = sub_2620B0();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = __chkstk_darwin(v11);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v39 = &v39 - v15;
  v16 = sub_2617C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v39 - v22;
  v49 = sub_261F90();
  v46 = *(v49 - 8);
  v24 = *(v46 + 64);
  __chkstk_darwin(v49);
  v44 = &v39 - v25;
  sub_FE1F0(a2, v23);
  sub_2617A0();
  sub_FEA60();
  v26 = sub_264AF0();
  v27 = *(v17 + 8);
  v27(v21, v16);
  v27(v23, v16);
  if (v26)
  {
    WitnessTable = swift_getWitnessTable();
    v29 = v39;
    sub_1609C(v45, v11, WitnessTable);
    v30 = v40;
    sub_1609C(v29, v11, WitnessTable);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = v44;
    sub_1D738(v30, v11);
    v33 = *(v41 + 8);
    v33(v30, v11);
    v33(v29, v11);
  }

  else
  {
    (*(v48 + 56))(v45, v47, v48);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = v42;
    sub_1609C(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
    v35 = *(v43 + 8);
    v35(v9, AssociatedTypeWitness);
    sub_1609C(v34, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_getWitnessTable();
    v32 = v44;
    sub_1D830(v9, v11, AssociatedTypeWitness);
    v35(v9, AssociatedTypeWitness);
    v35(v34, AssociatedTypeWitness);
  }

  v51 = swift_getWitnessTable();
  v52 = AssociatedConformanceWitness;
  v36 = v49;
  v37 = swift_getWitnessTable();
  sub_1609C(v32, v36, v37);
  return (*(v46 + 8))(v32, v36);
}

unint64_t sub_FEA60()
{
  result = qword_31DD10[0];
  if (!qword_31DD10[0])
  {
    sub_2617C0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_31DD10);
  }

  return result;
}

void sub_FEB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_FF14C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_FEBB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_2617C0() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v22 = *(((a1 + v12) & ~v11) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v6 + 48);

        return v21(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_FEE00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_2617C0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v24 = (&a1[v14] & ~v13);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v28 + 56);

    v23(a1, a2, v9, v7);
  }
}

void sub_FF14C()
{
  if (!qword_31DD98)
  {
    sub_2617C0();
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_31DD98);
    }
  }
}

uint64_t sub_FF1A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_261280();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_FF28C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for _CoverEffectViewModifier();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_FF320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _CoverEffectViewModifier();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_FF3B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _CoverEffectViewModifier();
  swift_getWitnessTable();
  sub_2620B0();
  swift_getAssociatedTypeWitness();
  sub_261F90();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_FF4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31DD08, &qword_277680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_FF5A0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(v0 + 72);

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_1FED0(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_FF6F0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25[15] = *(v0 + 63);
  v6 = v0[3];
  v24[2] = v0[2];
  *v25 = v6;
  v7 = v0[1];
  v24[0] = *v0;
  v24[1] = v7;
  if (v25[18])
  {
    v8 = v0[3];
    v21 = v0[2];
    v22 = v8;
    v23 = *(v0 + 32);
    v9 = v0[1];
    v19 = *v0;
    v20 = v9;
    v17 = v21;
    v18[0] = v8;
    *(v18 + 15) = *(v0 + 63);
    v15 = v19;
    v16 = v9;
    sub_8198(&v15, &v14, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v24, &qword_317F40, &qword_26E9D0);
    (*(v2 + 8))(v5, v1);
  }

  v15 = v19;
  v16 = v20;
  v17 = v21;
  v18[0] = v22;
  LOWORD(v18[1]) = v23;
  if (*(&v19 + 1))
  {
    v11 = BYTE2(v18[0]);
    sub_8E80(&v15, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t WantToReadToolbarButton.init(assetInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  v3 = sub_260560();
  v202 = *(v3 - 8);
  v203 = v3;
  v4 = *(v202 + 64);
  __chkstk_darwin(v3);
  v201 = &v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260600();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v199 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_2601E0();
  v227 = *(v220 - 8);
  v9 = *(v227 + 64);
  __chkstk_darwin(v220);
  v219 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_316B98, &unk_275840);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v200 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v204 = &v170 - v16;
  v17 = __chkstk_darwin(v15);
  v198 = &v170 - v18;
  v19 = __chkstk_darwin(v17);
  v193 = &v170 - v20;
  v21 = __chkstk_darwin(v19);
  v207 = &v170 - v22;
  __chkstk_darwin(v21);
  v192 = &v170 - v23;
  v216 = type metadata accessor for AssetAction.Kind(0);
  v24 = *(*(v216 - 8) + 64);
  v25 = __chkstk_darwin(v216);
  v197 = (&v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v189 = (&v170 - v27);
  v28 = sub_263DD0();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v215 = &v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_263A10();
  v225 = *(v214 - 8);
  v31 = *(v225 + 64);
  __chkstk_darwin(v214);
  v213 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v194 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v170 - v37;
  v221 = sub_263AF0();
  v226 = *(v221 - 8);
  v39 = v226[8];
  v40 = __chkstk_darwin(v221);
  v208 = &v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v211 = &v170 - v42;
  v228 = type metadata accessor for AssetAction(0);
  v43 = *(*(v228 - 8) + 64);
  v44 = __chkstk_darwin(v228);
  v195 = (&v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __chkstk_darwin(v44);
  v196 = &v170 - v47;
  v48 = __chkstk_darwin(v46);
  v210 = (&v170 - v49);
  __chkstk_darwin(v48);
  v191 = &v170 - v50;
  ToolbarButton = type metadata accessor for WantToReadToolbarButton();
  v51 = *(*(ToolbarButton - 8) + 64);
  __chkstk_darwin(ToolbarButton);
  v53 = &v170 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v245 = 0;
  *v53 = KeyPath;
  v53[66] = 0;
  *(v53 + 9) = swift_getKeyPath();
  v217 = v53;
  v53[80] = 0;
  v55 = a1[4];
  sub_2E18(a1, a1[3]);
  v56 = *(v55 + 8);
  v212 = sub_2606E0();
  v206 = v57;
  v58 = a1[4];
  sub_2E18(a1, a1[3]);
  v59 = *(v58 + 8);
  v60 = sub_2606E0();
  v173 = v61;
  v174 = v60;
  v62 = a1[4];
  sub_2E18(a1, a1[3]);
  LODWORD(v172) = sub_260870();
  v63 = a1[4];
  sub_2E18(a1, a1[3]);
  v64 = *(v63 + 8);
  v224 = sub_2606E0();
  LOBYTE(v244[0]) = 26;
  v65 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(v244, a1);
  v66 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_2608C0();
  v67 = sub_260060();
  v68 = *(v67 - 8);
  v187 = *(v68 + 48);
  v188 = v68 + 48;
  v69 = v187(v38, 1, v67);
  v190 = v67;
  if (v69 == 1)
  {
    sub_8E80(v38, &qword_322C70, &qword_272AD0);
    v70 = 0;
    v71 = 0;
  }

  else
  {
    v70 = sub_260020();
    v71 = v72;
    (*(v68 + 8))(v38, v67);
  }

  v171 = v68;
  if (qword_315900 != -1)
  {
    swift_once();
  }

  v244[8] = xmmword_31ADC0;
  v244[9] = xmmword_31ADD0;
  v244[10] = xmmword_31ADE0;
  v244[4] = xmmword_31AD80;
  v244[5] = xmmword_31AD90;
  v244[6] = xmmword_31ADA0;
  v244[7] = xmmword_31ADB0;
  v244[0] = xmmword_31AD40;
  v244[1] = *algn_31AD50;
  v244[2] = xmmword_31AD60;
  v244[3] = xmmword_31AD70;
  v73 = &_swiftEmptyDictionarySingleton;
  if (v65)
  {
    *(&v234 + 1) = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v233 = v65;
    sub_FBD8(&v233, &v231);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v230[0] = &_swiftEmptyDictionarySingleton;
    sub_DC90(&v231, 0x65446E6F69746361, 0xED0000736C696174, isUniquelyReferenced_nonNull_native);
    v73 = *&v230[0];
  }

  if (v71)
  {
    *(&v234 + 1) = &type metadata for String;
    *&v233 = v70;
    *(&v233 + 1) = v71;
    sub_FBD8(&v233, &v231);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v230[0] = v73;
    sub_DC90(&v231, 0x72556E6F69746361, 0xE90000000000006CLL, v75);
    v73 = *&v230[0];
  }

  v76 = v211;
  v209 = a1;
  *(&v234 + 1) = &type metadata for String;
  *&v233 = 0xD000000000000014;
  *(&v233 + 1) = 0x800000000028F900;
  sub_FBD8(&v233, &v231);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  *&v230[0] = v73;
  sub_DC90(&v231, 0x79546E6F69746361, 0xEA00000000006570, v77);
  v78 = *&v230[0];
  v186 = sub_2EF0(&qword_317218, &unk_269760);
  v79 = swift_allocObject();
  v222 = xmmword_267D30;
  *(v79 + 16) = xmmword_267D30;
  *(v79 + 32) = sub_1694E0();
  v185 = sub_2EF0(&qword_319B10, &qword_2777B0);
  *(&v234 + 1) = v185;
  *&v233 = v79;
  sub_FBD8(&v233, &v231);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  *&v230[0] = v78;
  sub_DC90(&v231, 0x6E6F697461636F6CLL, 0xE800000000000000, v80);
  if (qword_3158E0 != -1)
  {
    swift_once();
  }

  v81 = sub_2639E0();
  v82 = sub_B080(v81, qword_353F10);
  v83 = v213;
  v184 = v82;
  sub_2639C0();

  v84 = sub_2EF0(&qword_3160D8, &qword_267D60);
  v85 = v225;
  v86 = *(v225 + 72);
  v87 = (*(v225 + 80) + 32) & ~*(v225 + 80);
  v181 = *(v225 + 80);
  v182 = v84;
  v180 = v87 + v86;
  v88 = swift_allocObject();
  *(v88 + 16) = v222;
  v89 = *(v85 + 16);
  v183 = v87;
  v90 = v214;
  v178 = v89;
  v179 = v85 + 16;
  v89(v88 + v87, v83, v214);
  sub_263DC0();
  sub_263AD0();
  v91 = *(v85 + 8);
  v225 = v85 + 8;
  v177 = v91;
  v91(v83, v90);
  v92 = v189;
  *v189 = 0xD00000000000001ALL;
  *(v92 + 8) = 0x8000000000291540;
  v176 = 0x8000000000291540;
  *(v92 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v93 = v76;
  v94 = sub_260620();
  v95 = *(v94 - 8);
  v96 = v192;
  v223 = *(v95 + 56);
  v224 = v95 + 56;
  v223(v192, 1, 1, v94);
  v97 = v219;
  sub_2601D0();
  v98 = sub_2601C0();
  v100 = v99;
  v101 = *(v227 + 8);
  v227 += 8;
  v175 = v101;
  v101(v97, v220);
  v102 = v210;
  *v210 = v98;
  v102[1] = v100;
  v103 = v206;
  v102[2] = v212;
  v102[3] = v103;
  v104 = v173;
  v102[4] = v174;
  v102[5] = v104;
  *(v102 + 48) = v172 & 1;
  v105 = v228;
  v106 = v102 + *(v228 + 32);
  v107 = v221;
  v173 = v226[2];
  v174 = v226 + 2;
  v173(v106, v93, v221);
  v108 = *(v105 + 40);
  v109 = v92;
  sub_102D04(v92, v102 + v108, type metadata accessor for AssetAction.Kind);
  v110 = v96;
  v111 = v193;
  sub_8198(v96, v193, &qword_316B98, &unk_275840);
  v113 = (v95 + 48);
  v112 = *(v95 + 48);
  v114 = v112(v111, 1, v94);
  v212 = v94;
  v172 = v95;
  v206 = v112;
  if (v114 == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v199);
    (*(v202 + 104))(v201, enum case for LinkActionType.click(_:), v203);
    sub_260610();
    sub_8E80(v110, &qword_316B98, &unk_275840);
    v94 = v212;
    sub_7248C(v109);
    v192 = v226[1];
    (v192)(v211, v221);
    v115 = v112(v111, 1, v94);
    v116 = v194;
    v117 = v113;
    if (v115 != 1)
    {
      sub_8E80(v111, &qword_316B98, &unk_275840);
    }

    v118 = v207;
    v119 = v209;
  }

  else
  {
    sub_8E80(v110, &qword_316B98, &unk_275840);
    sub_7248C(v109);
    v192 = v226[1];
    (v192)(v211, v107);
    v118 = v207;
    (*(v95 + 32))(v207, v111, v94);
    v116 = v194;
    v119 = v209;
    v117 = v113;
  }

  v223(v118, 0, 1, v94);
  v120 = v210;
  sub_22148(v118, v210 + *(v228 + 36), &qword_316B98, &unk_275840);
  v121 = v120;
  v122 = v191;
  sub_102678(v121, v191, type metadata accessor for AssetAction);
  sub_102678(v122, &v217[*(ToolbarButton + 24)], type metadata accessor for AssetAction);
  v123 = v119[4];
  sub_2E18(v119, v119[3]);
  v124 = *(v123 + 8);
  v210 = sub_2606E0();
  v207 = v125;
  v126 = v119[4];
  sub_2E18(v119, v119[3]);
  v127 = *(v126 + 8);
  v128 = sub_2606E0();
  v193 = v129;
  v194 = v128;
  v130 = v119[4];
  sub_2E18(v119, v119[3]);
  LODWORD(v191) = sub_260870();
  v131 = v119[4];
  sub_2E18(v119, v119[3]);
  v132 = *(v131 + 8);
  v189 = sub_2606E0();
  LOBYTE(v233) = 1;
  v133 = _s7BooksUI7MetricsO13actionDetails3for9assetInfoSDySSypGSgAC15ClickActionTypeO_14BookFoundation05AssetH0_ptFZ_0(&v233, v119);
  v134 = v119[4];
  sub_2E18(v119, v119[3]);
  sub_2608C0();
  v135 = v190;
  if (v187(v116, 1, v190) == 1)
  {
    sub_8E80(v116, &qword_322C70, &qword_272AD0);
    v136 = 0;
    v137 = 0;
  }

  else
  {
    v136 = sub_260020();
    v137 = v138;
    (*(v171 + 8))(v116, v135);
  }

  v211 = v117;
  v241 = xmmword_31ADC0;
  v242 = xmmword_31ADD0;
  v243 = xmmword_31ADE0;
  v237 = xmmword_31AD80;
  v238 = xmmword_31AD90;
  v239 = xmmword_31ADA0;
  v240 = xmmword_31ADB0;
  v233 = xmmword_31AD40;
  v234 = *algn_31AD50;
  v235 = xmmword_31AD60;
  v236 = xmmword_31AD70;
  v139 = &_swiftEmptyDictionarySingleton;
  if (v133)
  {
    v232 = sub_2EF0(&qword_3160D0, &unk_270CF0);
    *&v231 = v133;
    sub_FBD8(&v231, v230);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    v229 = &_swiftEmptyDictionarySingleton;
    sub_DC90(v230, 0x65446E6F69746361, 0xED0000736C696174, v140);
    v139 = v229;
  }

  v141 = v200;
  v142 = v208;
  if (v137)
  {
    v232 = &type metadata for String;
    *&v231 = v136;
    *(&v231 + 1) = v137;
    sub_FBD8(&v231, v230);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v229 = v139;
    sub_DC90(v230, 0x72556E6F69746361, 0xE90000000000006CLL, v143);
    v139 = v229;
  }

  v232 = &type metadata for String;
  *&v231 = 0x6E61576F54646461;
  *(&v231 + 1) = 0xEF646165526F5474;
  sub_FBD8(&v231, v230);
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v229 = v139;
  sub_DC90(v230, 0x79546E6F69746361, 0xEA00000000006570, v144);
  v145 = v229;
  v146 = swift_allocObject();
  *(v146 + 16) = v222;
  *(v146 + 32) = sub_1694E0();
  v232 = v185;
  *&v231 = v146;
  sub_FBD8(&v231, v230);
  v147 = swift_isUniquelyReferenced_nonNull_native();
  v229 = v145;
  sub_DC90(v230, 0x6E6F697461636F6CLL, 0xE800000000000000, v147);
  v148 = v213;
  sub_2639C0();

  v149 = swift_allocObject();
  *(v149 + 16) = v222;
  v150 = v214;
  v178(v149 + v183, v148, v214);
  sub_263DC0();
  sub_263AD0();
  v177(v148, v150);
  v151 = v197;
  v152 = v176;
  *v197 = 0xD00000000000001ALL;
  *(v151 + 8) = v152;
  *(v151 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v153 = v198;
  v154 = v212;
  v223(v198, 1, 1, v212);
  v155 = v219;
  sub_2601D0();
  v156 = sub_2601C0();
  v158 = v157;
  v159 = v155;
  v160 = v154;
  v175(v159, v220);
  v161 = v195;
  *v195 = v156;
  *(v161 + 8) = v158;
  v162 = v207;
  *(v161 + 16) = v210;
  *(v161 + 24) = v162;
  v163 = v193;
  *(v161 + 32) = v194;
  *(v161 + 40) = v163;
  *(v161 + 48) = v191 & 1;
  v164 = v228;
  v165 = v221;
  v173(v161 + *(v228 + 32), v142, v221);
  sub_102D04(v151, v161 + *(v164 + 40), type metadata accessor for AssetAction.Kind);
  sub_8198(v153, v141, &qword_316B98, &unk_275840);
  if (v206(v141, 1, v154) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v199);
    (*(v202 + 104))(v201, enum case for LinkActionType.click(_:), v203);
    v166 = v204;
    v160 = v212;
    sub_260610();
    sub_8E80(v153, &qword_316B98, &unk_275840);
    sub_7248C(v151);
    (v192)(v208, v165);
    if (v206(v141, 1, v160) != 1)
    {
      sub_8E80(v141, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v153, &qword_316B98, &unk_275840);
    sub_7248C(v151);
    (v192)(v142, v165);
    v166 = v204;
    (*(v172 + 32))(v204, v141, v154);
  }

  v223(v166, 0, 1, v160);
  sub_22148(v166, v161 + *(v228 + 36), &qword_316B98, &unk_275840);
  v167 = v196;
  sub_102678(v161, v196, type metadata accessor for AssetAction);
  v168 = v217;
  sub_102678(v167, &v217[*(ToolbarButton + 28)], type metadata accessor for AssetAction);
  sub_102678(v168, v205, type metadata accessor for WantToReadToolbarButton);
  return sub_3080(v209);
}

uint64_t WantToReadToolbarButton.body.getter()
{
  v1 = sub_2EF0(&qword_31DDA0, &qword_2777B8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  sub_101044(v0, &v6[-v3]);
  v7 = v0;
  sub_260B00();
  sub_1026E8();
  sub_102CBC(&qword_3184E0, &type metadata accessor for LocalizedText);
  sub_262BE0();
  return sub_102930(v4);
}

uint64_t sub_101044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v81 = sub_2EF0(&qword_31DDF0, &qword_2777E0);
  v3 = *(v81 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v81);
  v71 = (v68 - v5);
  v84 = sub_2EF0(&qword_31DE90, &unk_277870);
  v6 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v85 = v68 - v7;
  v8 = sub_263EE0();
  v78 = *(v8 - 8);
  v79 = v8;
  v9 = *(v78 + 64);
  v10 = __chkstk_darwin(v8);
  v76 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = v68 - v12;
  v13 = sub_2604E0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  ToolbarButton = type metadata accessor for WantToReadToolbarButton();
  v72 = *(ToolbarButton - 8);
  v16 = *(v72 + 64);
  __chkstk_darwin(ToolbarButton);
  v17 = sub_2EF0(&qword_316960, &unk_2689F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v68 - v19;
  v80 = sub_2EF0(&qword_31DDC8, &qword_2777D0);
  v21 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v23 = v68 - v22;
  v82 = sub_2EF0(&qword_31DDC0, &qword_2777C8);
  v74 = *(v82 - 8);
  v24 = *(v74 + 64);
  __chkstk_darwin(v82);
  v73 = v68 - v25;
  v83 = sub_2EF0(&qword_31DE98, &qword_277880);
  v26 = *(v83 - 8);
  v27 = *(v26 + 8);
  __chkstk_darwin(v83);
  v75 = v68 - v28;
  v29 = a1;
  v30 = sub_FF5A0();
  if (v30)
  {

    v31 = sub_2610B0();
    (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
    *(&v89 + 1) = type metadata accessor for AssetAction(0);
    v90 = sub_102CBC(&qword_319AE8, type metadata accessor for AssetAction);
    v32 = sub_10934(&v88);
    v71 = v26;
    v33 = sub_FF6F0();
    v34 = 28;
    if (v33)
    {
      v34 = 24;
    }

    sub_102D04(a1 + *(ToolbarButton + v34), v32, type metadata accessor for AssetAction);
    v70 = a1;
    sub_102D04(a1, v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WantToReadToolbarButton);
    v35 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v36 = swift_allocObject();
    sub_102678(v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for WantToReadToolbarButton);
    sub_2604C0();
    sub_260420();
    v37 = v80;
    v38 = &v23[*(v80 + 36)];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = v37[10];
    *&v23[v39] = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v40 = &v23[v37[11]];
    *v40 = swift_getKeyPath();
    v40[40] = 0;
    v41 = &v23[v37[12]];
    v42 = sub_2EF0(&qword_31DEA0, &unk_2778F0);
    v41[3] = v42;
    v41[4] = sub_8E38(&qword_31DEA8, &qword_31DEA0, &unk_2778F0);
    v43 = sub_10934(v41);
    v44 = sub_22148(v20, v43, &qword_316960, &unk_2689F0);
    v68[1] = v68;
    v45 = (v43 + *(v42 + 36));
    *v45 = sub_1031A4;
    v45[1] = v36;
    v46 = &v23[v37[13]];
    v47 = v89;
    *v46 = v88;
    *(v46 + 1) = v47;
    *(v46 + 4) = v90;
    __chkstk_darwin(v44);
    v68[-2] = v29;
    v72 = sub_2EF0(&qword_31DDD0, &qword_2777D8);
    v69 = sub_8E38(&qword_31DDD8, &qword_31DDC8, &qword_2777D0);
    v48 = sub_8E38(&qword_31DDE0, &qword_31DDD0, &qword_2777D8);
    v49 = v73;
    sub_262D60();
    sub_8E80(v23, &qword_31DDC8, &qword_2777D0);
    v88 = 0u;
    v89 = 0u;
    memset(v87, 0, sizeof(v87));
    v50 = v76;
    sub_263EA0();
    sub_8E80(v87, &qword_316200, &qword_267FD0);
    sub_8E80(&v88, &qword_316200, &qword_267FD0);
    v51 = sub_FF6F0();
    *(&v89 + 1) = &type metadata for Bool;
    LOBYTE(v88) = v51 & 1;
    v52 = v77;
    sub_263ED0();
    v53 = *(v78 + 8);
    v54 = v50;
    v55 = v79;
    v53(v54, v79);
    sub_8E80(&v88, &qword_316200, &qword_267FD0);
    *&v88 = v37;
    *(&v88 + 1) = v72;
    *&v89 = v69;
    *(&v89 + 1) = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v75;
    v58 = v82;
    sub_262930();
    v53(v52, v55);
    (*(v74 + 8))(v49, v58);
    v59 = v71;
    v60 = v83;
    v71[2](v85, v57, v83);
    swift_storeEnumTagMultiPayload();
    *&v88 = v58;
    *(&v88 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31DDE8, &qword_31DDF0, &qword_2777E0);
    sub_261F80();
    return v59[1](v57, v60);
  }

  else
  {
    __chkstk_darwin(0);
    v68[-2] = a1;
    sub_6684C();
    v62 = v71;
    sub_263230();
    v63 = v81;
    (*(v3 + 16))(v85, v62, v81);
    swift_storeEnumTagMultiPayload();
    v64 = sub_2F9C(&qword_31DDD0, &qword_2777D8);
    v65 = sub_8E38(&qword_31DDD8, &qword_31DDC8, &qword_2777D0);
    v66 = sub_8E38(&qword_31DDE0, &qword_31DDD0, &qword_2777D8);
    *&v88 = v80;
    *(&v88 + 1) = v64;
    *&v89 = v65;
    *(&v89 + 1) = v66;
    v67 = swift_getOpaqueTypeConformance2();
    *&v88 = v82;
    *(&v88 + 1) = v67;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31DDE8, &qword_31DDF0, &qword_2777E0);
    sub_261F80();
    return (*(v3 + 8))(v62, v63);
  }
}

uint64_t sub_101C6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_260BD0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_260B00();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  sub_1022EC(&v19);
  v12 = sub_2630B0();
  sub_1022EC(&v18);
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_260B10();
  v13 = v5[2];
  v13(v9, v11, v4);
  *a1 = v12;
  v14 = sub_2EF0(&qword_31DEB0, &unk_277900);
  v13(a1 + *(v14 + 48), v9, v4);
  v15 = v5[1];

  v15(v11, v4);
  v15(v9, v4);
}

void sub_101F54()
{
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v0 = sub_260D50();
  sub_B080(v0, qword_315FE8);
  oslog = sub_260D30();
  v1 = sub_2648F0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "Attempt to use CircularWantToReadButton without analytics tracker", v2, 2u);
  }
}

uint64_t sub_10203C@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29[15] = *(a1 + 63);
  v9 = a1[3];
  v28[2] = a1[2];
  *v29 = v9;
  v10 = a1[1];
  v28[0] = *a1;
  v28[1] = v10;
  if (v29[18])
  {
    v11 = a1[3];
    v25 = a1[2];
    v26 = v11;
    v27 = *(a1 + 32);
    v12 = a1[1];
    v23 = *a1;
    v24 = v12;
    v21 = v25;
    v22[0] = v11;
    *(v22 + 15) = *(a1 + 63);
    v19 = v23;
    v20 = v12;
    result = sub_8198(&v19, &v18, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v14 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v28, &qword_317F40, &qword_26E9D0);
    result = (*(v5 + 8))(v8, v4);
  }

  v19 = v23;
  v20 = v24;
  v21 = v25;
  v22[0] = v26;
  LOWORD(v22[1]) = v27;
  if (*(&v23 + 1) && (v15 = BYTE2(v22[0]), result = sub_8E80(&v19, &qword_317F48, &qword_26A9A0), (v15 & 1) != 0))
  {
    v16 = 1;
  }

  else
  {
    v16 = 4;
  }

  *a2 = v16;
  return result;
}