uint64_t sub_23DD89FEC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v12 = *(v0 + 7);
  v13 = *(v0 + 8);
  v14 = *(v0 + 9);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v11 = *(v0 + 6);
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  sub_23DDA4940();
  ResolvedServerConfiguration.hash(into:)();
  return sub_23DDA4BB0();
}

BOOL _s23AccountsUISupportShared15PasswordAccountO08ResolvedE0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 8);
  v46[4] = *(a1 + 7);
  v46[5] = v10;
  v46[6] = *(a1 + 9);
  v11 = *(a1 + 4);
  v46[0] = *(a1 + 3);
  v46[1] = v11;
  v12 = *(a1 + 6);
  v46[2] = *(a1 + 5);
  v46[3] = v12;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = *(a2 + 9);
  v47[5] = *(a2 + 8);
  v47[6] = v19;
  v20 = *(a2 + 7);
  v47[3] = *(a2 + 6);
  v47[4] = v20;
  v21 = *(a2 + 5);
  v47[1] = *(a2 + 4);
  v47[2] = v21;
  v47[0] = *(a2 + 3);
  if (v4 == v13 && v5 == v14 || (sub_23DDA4B00()) && (v6 == v15 && v8 == v16 || (sub_23DDA4B00()) && (v7 == v17 && v9 == v18 || (sub_23DDA4B00()))
  {
    v22 = *(a1 + 8);
    v41 = *(a1 + 7);
    v42 = v22;
    v43 = *(a1 + 9);
    v23 = *(a1 + 4);
    v37 = *(a1 + 3);
    v38 = v23;
    v24 = *(a1 + 6);
    v39 = *(a1 + 5);
    v40 = v24;
    v25 = *(a2 + 8);
    v34 = *(a2 + 7);
    v35 = v25;
    v36 = *(a2 + 9);
    v26 = *(a2 + 4);
    v30 = *(a2 + 3);
    v31 = v26;
    v27 = *(a2 + 6);
    v32 = *(a2 + 5);
    v33 = v27;
    sub_23DD8CA08(v46, v45);
    sub_23DD8CA08(v47, v45);
    v28 = _s23AccountsUISupportShared27ResolvedServerConfigurationO2eeoiySbAC_ACtFZ_0(&v37, &v30);
    v44[4] = v34;
    v44[5] = v35;
    v44[6] = v36;
    v44[0] = v30;
    v44[1] = v31;
    v44[2] = v32;
    v44[3] = v33;
    sub_23DD8CA64(v44);
    v45[4] = v41;
    v45[5] = v42;
    v45[6] = v43;
    v45[0] = v37;
    v45[1] = v38;
    v45[2] = v39;
    v45[3] = v40;
    sub_23DD8CA64(v45);
  }

  else
  {
    return 0;
  }

  return v28;
}

uint64_t _s23AccountsUISupportShared15PasswordAccountO5KnownV9ImmutableV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 34);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 34);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 56);
  v17 = *(a2 + 58);
  v18 = *(a1 + 58);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23DDA4B00() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if ((v19 != v10 || v20 != v11) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  if (v18)
  {
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v14 = v17;
    if (v16 != v15)
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_23DD8A408()
{
  result = qword_27E313128;
  if (!qword_27E313128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313128);
  }

  return result;
}

unint64_t sub_23DD8A45C()
{
  result = qword_27E313130;
  if (!qword_27E313130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313130);
  }

  return result;
}

unint64_t sub_23DD8A4B0()
{
  result = qword_27E313138;
  if (!qword_27E313138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313138);
  }

  return result;
}

unint64_t sub_23DD8A504()
{
  result = qword_27E313148;
  if (!qword_27E313148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313148);
  }

  return result;
}

unint64_t sub_23DD8A558()
{
  result = qword_27E313150;
  if (!qword_27E313150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313150);
  }

  return result;
}

BOOL _s23AccountsUISupportShared15PasswordAccountO5KnownV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v31[0] = *a1;
  v31[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v32[0] = a1[2];
  *(v32 + 11) = *(a1 + 43);
  v5 = *a2;
  v6 = a2[1];
  *(v34 + 11) = *(a2 + 43);
  v7 = a2[2];
  v33[1] = a2[1];
  v34[0] = v7;
  v8 = *a2;
  v33[0] = v5;
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  v11 = *(a1 + 10);
  v12 = *(a1 + 11);
  v23 = *(a1 + 13);
  v24 = *(a1 + 12);
  v13 = *(a2 + 8);
  v14 = *(a2 + 9);
  v15 = *(a2 + 10);
  v16 = *(a2 + 11);
  v21 = *(a2 + 13);
  v22 = *(a2 + 12);
  v19 = *(a2 + 112);
  v20 = *(a1 + 112);
  v28 = v4;
  v29 = v3;
  v30[0] = a1[2];
  *(v30 + 11) = *(a1 + 43);
  v25 = v8;
  v26 = v6;
  v27[0] = a2[2];
  *(v27 + 11) = *(a2 + 43);
  v17 = _s23AccountsUISupportShared15PasswordAccountO5KnownV9ImmutableV2eeoiySbAG_AGtFZ_0(&v28, &v25);
  v35[0] = v25;
  v35[1] = v26;
  v36[0] = v27[0];
  *(v36 + 11) = *(v27 + 11);
  sub_23DD7C518(v31, v37);
  sub_23DD7C518(v33, v37);
  sub_23DD8A5AC(v35);
  v37[0] = v28;
  v37[1] = v29;
  v38[0] = v30[0];
  *(v38 + 11) = *(v30 + 11);
  sub_23DD8A5AC(v37);
  return (v17 & 1) != 0 && (v9 == v13 && v10 == v14 || (sub_23DDA4B00() & 1) != 0) && (v11 == v15 && v12 == v16 || (sub_23DDA4B00() & 1) != 0) && (v24 == v22 && v23 == v21 || (sub_23DDA4B00() & 1) != 0) && v20 == v19;
}

unint64_t sub_23DD8A7AC()
{
  result = qword_27E313160;
  if (!qword_27E313160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313160);
  }

  return result;
}

unint64_t sub_23DD8A800()
{
  result = qword_27E313168;
  if (!qword_27E313168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313168);
  }

  return result;
}

unint64_t sub_23DD8A854()
{
  result = qword_27E313170;
  if (!qword_27E313170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313170);
  }

  return result;
}

unint64_t sub_23DD8A8A8()
{
  result = qword_27E313180;
  if (!qword_27E313180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313180);
  }

  return result;
}

unint64_t sub_23DD8A8FC()
{
  result = qword_27E313188;
  if (!qword_27E313188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313188);
  }

  return result;
}

unint64_t sub_23DD8A988()
{
  result = qword_27E3131B8;
  if (!qword_27E3131B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3131B8);
  }

  return result;
}

unint64_t sub_23DD8A9DC()
{
  result = qword_27E3131C0;
  if (!qword_27E3131C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3131C0);
  }

  return result;
}

unint64_t sub_23DD8AA30()
{
  result = qword_27E3131C8;
  if (!qword_27E3131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3131C8);
  }

  return result;
}

unint64_t sub_23DD8AA84()
{
  result = qword_27E3131D0;
  if (!qword_27E3131D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3131D0);
  }

  return result;
}

unint64_t sub_23DD8AAD8()
{
  result = qword_27E3131D8;
  if (!qword_27E3131D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3131D8);
  }

  return result;
}

unint64_t sub_23DD8AB2C()
{
  result = qword_27E313230;
  if (!qword_27E313230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313230);
  }

  return result;
}

unint64_t sub_23DD8AB80()
{
  result = qword_27E313238;
  if (!qword_27E313238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313238);
  }

  return result;
}

unint64_t sub_23DD8ABD4()
{
  result = qword_27E313240;
  if (!qword_27E313240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313240);
  }

  return result;
}

unint64_t sub_23DD8AC28()
{
  result = qword_27E313248;
  if (!qword_27E313248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313248);
  }

  return result;
}

unint64_t sub_23DD8AC7C()
{
  result = qword_27E313250;
  if (!qword_27E313250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313250);
  }

  return result;
}

unint64_t sub_23DD8ACD0()
{
  result = qword_27E313298;
  if (!qword_27E313298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313298);
  }

  return result;
}

unint64_t sub_23DD8AD24()
{
  result = qword_27E3132A0;
  if (!qword_27E3132A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3132A0);
  }

  return result;
}

unint64_t sub_23DD8AD78()
{
  result = qword_27E3132A8;
  if (!qword_27E3132A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3132A8);
  }

  return result;
}

unint64_t sub_23DD8ADCC()
{
  result = qword_27E3132E8;
  if (!qword_27E3132E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3132E8);
  }

  return result;
}

unint64_t sub_23DD8AE20()
{
  result = qword_27E3132F0;
  if (!qword_27E3132F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3132F0);
  }

  return result;
}

unint64_t sub_23DD8AE74()
{
  result = qword_27E3132F8;
  if (!qword_27E3132F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3132F8);
  }

  return result;
}

unint64_t sub_23DD8AEC8()
{
  result = qword_27E313300;
  if (!qword_27E313300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313300);
  }

  return result;
}

BOOL _s23AccountsUISupportShared15PasswordAccountO5KnownV9ValidatedV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 48);
  v43 = *(a1 + 64);
  v44 = v2;
  v4 = *(a1 + 80);
  v45 = *(a1 + 96);
  v5 = *(a1 + 16);
  v40[0] = *a1;
  v40[1] = v5;
  v6 = *(a1 + 48);
  v8 = *a1;
  v7 = *(a1 + 16);
  v41 = *(a1 + 32);
  v42 = v6;
  v9 = *(a2 + 80);
  v10 = *(a2 + 48);
  v50 = *(a2 + 64);
  v51 = v9;
  v11 = *(a2 + 80);
  v52 = *(a2 + 96);
  v12 = *(a2 + 16);
  v47[0] = *a2;
  v47[1] = v12;
  v13 = *(a2 + 48);
  v15 = *a2;
  v14 = *(a2 + 16);
  v48 = *(a2 + 32);
  v49 = v13;
  v36 = v43;
  v37 = v4;
  v38 = *(a1 + 96);
  v32 = v8;
  v33 = v7;
  v34 = v41;
  v35 = v3;
  v28 = v50;
  v29 = v11;
  v30 = *(a2 + 96);
  v24 = v15;
  v25 = v14;
  v46 = *(a1 + 112);
  v16 = *(a1 + 113);
  v17 = *(a1 + 114);
  v18 = *(a1 + 115);
  v53 = *(a2 + 112);
  v19 = *(a2 + 113);
  v20 = *(a2 + 114);
  v21 = *(a2 + 115);
  v39 = *(a1 + 112);
  v31 = *(a2 + 112);
  v26 = v48;
  v27 = v10;
  sub_23DD8A950(v40, v56);
  sub_23DD8A950(v47, v56);
  v22 = _s23AccountsUISupportShared15PasswordAccountO5KnownV2eeoiySbAE_AEtFZ_0(&v32, &v24);
  v54[4] = v28;
  v54[5] = v29;
  v54[6] = v30;
  v55 = v31;
  v54[0] = v24;
  v54[1] = v25;
  v54[2] = v26;
  v54[3] = v27;
  sub_23DD74C44(v54);
  v56[4] = v36;
  v56[5] = v37;
  v56[6] = v38;
  v57 = v39;
  v56[0] = v32;
  v56[1] = v33;
  v56[2] = v34;
  v56[3] = v35;
  sub_23DD74C44(v56);
  result = 0;
  if (v22 && v16 == v19 && ((v17 ^ v20) & 1) == 0)
  {
    return v18 == v21;
  }

  return result;
}

unint64_t sub_23DD8B0B8()
{
  result = qword_27E313330;
  if (!qword_27E313330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313330);
  }

  return result;
}

unint64_t sub_23DD8B10C()
{
  result = qword_27E313338;
  if (!qword_27E313338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313338);
  }

  return result;
}

unint64_t sub_23DD8B160()
{
  result = qword_27E313340;
  if (!qword_27E313340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313340);
  }

  return result;
}

unint64_t sub_23DD8B1B4()
{
  result = qword_27E313348;
  if (!qword_27E313348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313348);
  }

  return result;
}

unint64_t sub_23DD8B208()
{
  result = qword_27E313350;
  if (!qword_27E313350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313350);
  }

  return result;
}

unint64_t sub_23DD8B25C()
{
  result = qword_27E313360;
  if (!qword_27E313360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313360);
  }

  return result;
}

unint64_t sub_23DD8B2B0()
{
  result = qword_27E313368;
  if (!qword_27E313368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313368);
  }

  return result;
}

unint64_t sub_23DD8B304()
{
  result = qword_27E313370;
  if (!qword_27E313370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313370);
  }

  return result;
}

unint64_t sub_23DD8B358()
{
  result = qword_27E313378;
  if (!qword_27E313378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313378);
  }

  return result;
}

unint64_t sub_23DD8B414()
{
  result = qword_27E3133A0;
  if (!qword_27E3133A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3133A0);
  }

  return result;
}

unint64_t sub_23DD8B468()
{
  result = qword_27E3133A8;
  if (!qword_27E3133A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3133A8);
  }

  return result;
}

unint64_t sub_23DD8B4BC()
{
  result = qword_27E3133B0;
  if (!qword_27E3133B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3133B0);
  }

  return result;
}

unint64_t sub_23DD8B510()
{
  result = qword_27E3133B8;
  if (!qword_27E3133B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3133B8);
  }

  return result;
}

unint64_t sub_23DD8B564()
{
  result = qword_27E3133C0;
  if (!qword_27E3133C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3133C0);
  }

  return result;
}

unint64_t sub_23DD8B5B8()
{
  result = qword_27E3133E8;
  if (!qword_27E3133E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3133E8);
  }

  return result;
}

unint64_t sub_23DD8B60C()
{
  result = qword_27E3133F8;
  if (!qword_27E3133F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3133F8);
  }

  return result;
}

BOOL sub_23DD8B660(__int128 *a1, int8x16_t *a2, void (*a3)(int8x16_t *, _BYTE *), uint64_t *a4, uint64_t *a5, void (*a6)(int8x16_t *))
{
  v9 = a1[3];
  v10 = a1[5];
  *&v46[64] = a1[4];
  *&v46[80] = v10;
  v11 = a1[5];
  *&v46[96] = a1[6];
  v12 = a1[1];
  *v46 = *a1;
  *&v46[16] = v12;
  v13 = a1[3];
  v15 = *a1;
  v14 = a1[1];
  *&v46[32] = a1[2];
  *&v46[48] = v13;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  v50 = a2[2];
  v51 = v18;
  v19 = a2[1];
  v20 = a2[2];
  v21 = *a2;
  v48 = v16;
  v49 = v19;
  v22 = a2[5];
  v54 = a2[6];
  v23 = a2[3];
  v24 = a2[5];
  v52 = a2[4];
  v53 = v24;
  v56[2] = *&v46[32];
  v56[3] = v9;
  v56[0] = v15;
  v56[1] = v14;
  v25 = a1[6];
  v56[5] = v11;
  v56[6] = v25;
  v56[4] = *&v46[64];
  v61 = v23;
  v60 = v20;
  v47 = *(a1 + 28);
  v55 = a2[7].u32[0];
  v26 = *(a1 + 28);
  v59 = v17;
  v58 = v21;
  v27 = a2[6];
  v28 = a2[7].i32[0];
  v57 = v26;
  v65 = v28;
  v64 = v27;
  v63 = v22;
  v62 = v52;
  v29 = *&v46[8];
  if (!(v47 >> 30))
  {
    if (!(v55 >> 30))
    {
      v38 = *&v46[8];
      v39 = *&v46[24];
      v40 = *&v46[40];
      v41 = *&v46[56];
      v42 = *&v46[72];
      v43 = *&v46[88];
      v37 = *v46;
      v44 = *&v46[104];
      v45 = v47 & 0x3FFFFFFF;
      v35[0] = v48;
      v35[1] = v49;
      v35[2] = v50;
      v35[3] = v51;
      v35[4] = v52;
      v35[5] = v53;
      v35[6] = v54;
      v36 = v55;
      a3(&v48, v34);
      a3(v46, v34);
      a3(v46, v34);
      a3(&v48, v34);
      v31 = _s23AccountsUISupportShared15PasswordAccountO5KnownV9ValidatedV2eeoiySbAG_AGtFZ_0(&v37, v35);
      sub_23DD92020(v56, a4, a5);
      a6(&v48);
      a6(v46);
      return v31;
    }

    goto LABEL_12;
  }

  if (v47 >> 30 != 1)
  {
    if (v55 >> 30 == 2 && v55 == 0x80000000)
    {
      v29 = vorrq_s8(vorrq_s8(vorrq_s8(v51, v53), vorrq_s8(v52, v54)), vorrq_s8(v49, v50));
      v29.n128_u64[0] = vorr_s8(v29.n128_u64[0], *&vextq_s8(v29, v29, 8uLL));
      if (!(v29.n128_u64[0] | v48.i64[1] | v48.i64[0]))
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    (a3)(v46, &v37, v29);
    a3(&v48, &v37);
    sub_23DD92020(v56, a4, a5);
    return 0;
  }

  if (v55 >> 30 != 1)
  {
    goto LABEL_12;
  }

  if (*v46 == *&v48)
  {
    a3(v46, &v37);
    a3(&v48, &v37);
LABEL_11:
    sub_23DD92020(v56, a4, a5);
    return 1;
  }

  v33 = sub_23DDA4B00();
  a3(v46, &v37);
  a3(&v48, &v37);
  sub_23DD92020(v56, a4, a5);
  return v33 & 1;
}

BOOL _s23AccountsUISupportShared15PasswordAccountO7UnknownV9ValidatedV12ServerStatusO2eeoiySbAI_AItFZ_0(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v3 <= 4)
  {
    if (v3 == 3)
    {
      return v2 == 3;
    }

    if (v3 == 4)
    {
      return v2 == 4;
    }
  }

  else
  {
    switch(v3)
    {
      case 5u:
        return v2 == 5;
      case 6u:
        return v2 == 6;
      case 7u:
        return v2 == 7;
    }
  }

  if ((v2 - 3) < 5)
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t _s23AccountsUISupportShared15PasswordAccountO7UnknownV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v35 = *(a1 + 56);
  v36 = *(a1 + 48);
  v28 = *(a1 + 64);
  v34 = *(a1 + 66);
  v31 = *(a1 + 80);
  v32 = *(a1 + 72);
  v20 = *(a1 + 88);
  v24 = *(a1 + 96);
  v23 = *(a1 + 104);
  v16 = *(a1 + 120);
  v17 = *(a1 + 112);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v26 = *(a1 + 90);
  v27 = *(a2 + 64);
  v33 = *(a2 + 66);
  v29 = *(a2 + 80);
  v30 = *(a2 + 72);
  v19 = *(a2 + 88);
  v25 = *(a2 + 90);
  v21 = *(a2 + 104);
  v22 = *(a2 + 96);
  v15 = *(a2 + 112);
  v18 = *(a2 + 120);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6 || (v2 != v7 || v3 != v6) && (sub_23DDA4B00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((v4 != v9 || v5 != v8) && (sub_23DDA4B00() & 1) == 0 || (v36 != v11 || v35 != v10) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  if (v34)
  {
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v12 = v33;
    if (v28 != v27)
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if ((v32 != v30 || v31 != v29) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  if (v26)
  {
    if (v25)
    {
      goto LABEL_32;
    }

    return 0;
  }

  v13 = v25;
  if (v20 != v19)
  {
    v13 = 1;
  }

  if (v13)
  {
    return 0;
  }

LABEL_32:
  if ((v24 != v22 || v23 != v21) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v15 && v16 == v18)
  {
    return 1;
  }

  return sub_23DDA4B00();
}

unint64_t sub_23DD8BCD8()
{
  result = qword_27E313410;
  if (!qword_27E313410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313410);
  }

  return result;
}

unint64_t sub_23DD8BD2C()
{
  result = qword_27E313418;
  if (!qword_27E313418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313418);
  }

  return result;
}

unint64_t sub_23DD8BD80()
{
  result = qword_27E313428;
  if (!qword_27E313428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313428);
  }

  return result;
}

unint64_t sub_23DD8BE3C()
{
  result = qword_27E313460;
  if (!qword_27E313460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313460);
  }

  return result;
}

unint64_t sub_23DD8BE90()
{
  result = qword_27E313468;
  if (!qword_27E313468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313468);
  }

  return result;
}

unint64_t sub_23DD8BEE4()
{
  result = qword_27E313470;
  if (!qword_27E313470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313470);
  }

  return result;
}

unint64_t sub_23DD8BF38()
{
  result = qword_27E313478;
  if (!qword_27E313478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313478);
  }

  return result;
}

unint64_t sub_23DD8BF8C()
{
  result = qword_27E313480;
  if (!qword_27E313480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313480);
  }

  return result;
}

unint64_t sub_23DD8BFE0()
{
  result = qword_27E313488;
  if (!qword_27E313488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313488);
  }

  return result;
}

unint64_t sub_23DD8C034()
{
  result = qword_27E3134E0;
  if (!qword_27E3134E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3134E0);
  }

  return result;
}

unint64_t sub_23DD8C088()
{
  result = qword_27E3134E8;
  if (!qword_27E3134E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3134E8);
  }

  return result;
}

unint64_t sub_23DD8C0DC()
{
  result = qword_27E3134F0;
  if (!qword_27E3134F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3134F0);
  }

  return result;
}

unint64_t sub_23DD8C130()
{
  result = qword_27E3134F8;
  if (!qword_27E3134F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3134F8);
  }

  return result;
}

unint64_t sub_23DD8C184()
{
  result = qword_27E313558;
  if (!qword_27E313558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313558);
  }

  return result;
}

unint64_t sub_23DD8C1D8()
{
  result = qword_27E313560;
  if (!qword_27E313560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313560);
  }

  return result;
}

unint64_t sub_23DD8C22C()
{
  result = qword_27E313568;
  if (!qword_27E313568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313568);
  }

  return result;
}

unint64_t sub_23DD8C280()
{
  result = qword_27E313570;
  if (!qword_27E313570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313570);
  }

  return result;
}

unint64_t sub_23DD8C2D4()
{
  result = qword_27E313578;
  if (!qword_27E313578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313578);
  }

  return result;
}

unint64_t sub_23DD8C328()
{
  result = qword_27E313580;
  if (!qword_27E313580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313580);
  }

  return result;
}

unint64_t sub_23DD8C37C()
{
  result = qword_27E313588;
  if (!qword_27E313588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313588);
  }

  return result;
}

unint64_t sub_23DD8C3D0()
{
  result = qword_27E313590;
  if (!qword_27E313590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313590);
  }

  return result;
}

unint64_t sub_23DD8C424()
{
  result = qword_27E313598;
  if (!qword_27E313598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313598);
  }

  return result;
}

unint64_t sub_23DD8C478()
{
  result = qword_27E3135D8;
  if (!qword_27E3135D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3135D8);
  }

  return result;
}

unint64_t sub_23DD8C4CC()
{
  result = qword_27E3135E0;
  if (!qword_27E3135E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3135E0);
  }

  return result;
}

BOOL _s23AccountsUISupportShared15PasswordAccountO7UnknownV9ValidatedV2eeoiySbAG_AGtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v49 = a1[4];
  v50 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v51 = a1[6];
  v52 = v5;
  v6 = a1[1];
  v46[0] = *a1;
  v46[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v47 = a1[2];
  v48 = v7;
  v10 = a2[5];
  v11 = a2[3];
  v56 = a2[4];
  v57 = v10;
  v12 = a2[5];
  v13 = a2[7];
  v58 = a2[6];
  v59 = v13;
  v14 = a2[1];
  v53[0] = *a2;
  v53[1] = v14;
  v15 = a2[3];
  v17 = *a2;
  v16 = a2[1];
  v54 = a2[2];
  v55 = v15;
  v42 = v49;
  v43 = v4;
  v18 = a1[7];
  v44 = v51;
  v45 = v18;
  v38 = v9;
  v39 = v8;
  v40 = v47;
  v41 = v3;
  v34 = v56;
  v35 = v12;
  v19 = a2[7];
  v36 = v58;
  v37 = v19;
  v30 = v17;
  v31 = v16;
  v20 = *(a1 + 128);
  v21 = *(a1 + 129);
  v22 = *(a1 + 130);
  v23 = *(a1 + 131);
  v24 = *(a2 + 128);
  v25 = *(a2 + 129);
  v26 = *(a2 + 130);
  v27 = *(a2 + 131);
  v32 = v54;
  v33 = v11;
  v28 = _s23AccountsUISupportShared15PasswordAccountO7UnknownV2eeoiySbAE_AEtFZ_0(&v38, &v30);
  v60[4] = v34;
  v60[5] = v35;
  v60[6] = v36;
  v60[7] = v37;
  v60[0] = v30;
  v60[1] = v31;
  v60[2] = v32;
  v60[3] = v33;
  sub_23DD8BDD4(v46, v61);
  sub_23DD8BDD4(v53, v61);
  sub_23DD8BE0C(v60);
  v61[4] = v42;
  v61[5] = v43;
  v61[6] = v44;
  v61[7] = v45;
  v61[0] = v38;
  v61[1] = v39;
  v61[2] = v40;
  v61[3] = v41;
  sub_23DD8BE0C(v61);
  result = 0;
  if ((v28 & 1) != 0 && v20 == v24 && ((v21 ^ v25) & 1) == 0 && v22 == v26)
  {
    return v23 == v27;
  }

  return result;
}

unint64_t sub_23DD8C6AC()
{
  result = qword_27E3135F0;
  if (!qword_27E3135F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3135F0);
  }

  return result;
}

unint64_t sub_23DD8C700()
{
  result = qword_27E3135F8;
  if (!qword_27E3135F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3135F8);
  }

  return result;
}

unint64_t sub_23DD8C754()
{
  result = qword_27E313600;
  if (!qword_27E313600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313600);
  }

  return result;
}

unint64_t sub_23DD8C7A8()
{
  result = qword_27E313610;
  if (!qword_27E313610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313610);
  }

  return result;
}

unint64_t sub_23DD8C7FC()
{
  result = qword_27E313618;
  if (!qword_27E313618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313618);
  }

  return result;
}

unint64_t sub_23DD8C8B8()
{
  result = qword_27E313640;
  if (!qword_27E313640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313640);
  }

  return result;
}

unint64_t sub_23DD8C90C()
{
  result = qword_27E313648;
  if (!qword_27E313648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313648);
  }

  return result;
}

unint64_t sub_23DD8C960()
{
  result = qword_27E313650;
  if (!qword_27E313650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313650);
  }

  return result;
}

unint64_t sub_23DD8C9B4()
{
  result = qword_27E313658;
  if (!qword_27E313658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313658);
  }

  return result;
}

unint64_t sub_23DD8CAB8()
{
  result = qword_27E313688;
  if (!qword_27E313688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313688);
  }

  return result;
}

unint64_t sub_23DD8CB0C()
{
  result = qword_27E313690;
  if (!qword_27E313690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313690);
  }

  return result;
}

unint64_t sub_23DD8CB60()
{
  result = qword_27E3136A0;
  if (!qword_27E3136A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136A0);
  }

  return result;
}

unint64_t sub_23DD8CC20()
{
  result = qword_27E3136A8;
  if (!qword_27E3136A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136A8);
  }

  return result;
}

unint64_t sub_23DD8CC78()
{
  result = qword_27E3136B0;
  if (!qword_27E3136B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136B0);
  }

  return result;
}

unint64_t sub_23DD8CCD0()
{
  result = qword_27E3136B8;
  if (!qword_27E3136B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136B8);
  }

  return result;
}

unint64_t sub_23DD8CD28()
{
  result = qword_27E3136C0;
  if (!qword_27E3136C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136C0);
  }

  return result;
}

unint64_t sub_23DD8CD80()
{
  result = qword_27E3136C8;
  if (!qword_27E3136C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136C8);
  }

  return result;
}

unint64_t sub_23DD8CDD8()
{
  result = qword_27E3136D0;
  if (!qword_27E3136D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136D0);
  }

  return result;
}

unint64_t sub_23DD8CE30()
{
  result = qword_27E3136D8;
  if (!qword_27E3136D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136D8);
  }

  return result;
}

unint64_t sub_23DD8CE88()
{
  result = qword_27E3136E0;
  if (!qword_27E3136E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136E0);
  }

  return result;
}

unint64_t sub_23DD8CEDC(uint64_t a1)
{
  result = sub_23DD8CF04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DD8CF04()
{
  result = qword_27E3136E8;
  if (!qword_27E3136E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136E8);
  }

  return result;
}

unint64_t sub_23DD8CF5C()
{
  result = qword_27E3136F0;
  if (!qword_27E3136F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136F0);
  }

  return result;
}

unint64_t sub_23DD8CFB4()
{
  result = qword_27E3136F8;
  if (!qword_27E3136F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3136F8);
  }

  return result;
}

unint64_t sub_23DD8D00C()
{
  result = qword_27E313700;
  if (!qword_27E313700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313700);
  }

  return result;
}

unint64_t sub_23DD8D064()
{
  result = qword_27E313708;
  if (!qword_27E313708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313708);
  }

  return result;
}

unint64_t sub_23DD8D0BC()
{
  result = qword_27E313710;
  if (!qword_27E313710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313710);
  }

  return result;
}

unint64_t sub_23DD8D114()
{
  result = qword_27E313718;
  if (!qword_27E313718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313718);
  }

  return result;
}

unint64_t sub_23DD8D16C()
{
  result = qword_27E313720;
  if (!qword_27E313720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313720);
  }

  return result;
}

unint64_t sub_23DD8D1C0(uint64_t a1)
{
  result = sub_23DD8D1E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DD8D1E8()
{
  result = qword_27E313728;
  if (!qword_27E313728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313728);
  }

  return result;
}

unint64_t sub_23DD8D240()
{
  result = qword_27E313730;
  if (!qword_27E313730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313730);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_23DD8D2D0(uint64_t a1, int a2)
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

uint64_t sub_23DD8D318(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23DD8D3A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t sub_23DD8D3EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy116_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23DD8D48C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
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

uint64_t sub_23DD8D4D4(uint64_t result, int a2, int a3)
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
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23AccountsUISupportShared15PasswordAccountO5KnownV5ErrorO(_DWORD *a1)
{
  v1 = a1[28];
  if (v1 >= 0)
  {
    return v1 >> 30;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_23DD8D5C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_23DD8D60C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy132_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_23DD8D6C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 132))
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

uint64_t sub_23DD8D708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 132) = 1;
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

    *(result + 132) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasswordAccount.Unknown.Validated.ServerStatus(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65287;
  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 16)) - 65287;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65287;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for PasswordAccount.Unknown.Validated.ServerStatus(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65287;
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23DD8D8F4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_23DD8D908(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
  }

  else if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_23DD8D94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 17;
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

double sub_23DD8D99C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 112) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 116) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 17;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 100) = 0u;
      return result;
    }

    *(a1 + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DD8DA1C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 56) & 0x1FFFFLL;
    v3 = *(result + 112) & 0x3010303 | (a2 << 30);
    *(result + 32) &= 0x1FFFFuLL;
    *(result + 56) = v2;
    *(result + 112) = v3;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0;
    *(result + 112) = 0x80000000;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23AccountsUISupportShared27ResolvedServerConfigurationO11CredentialsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_23DD8DAE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_23DD8DB30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PasswordAccount.Unknown.Validated.ServerStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PasswordAccount.Unknown.Validated.ServerStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DD8DF08(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23DD8DF98(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DD8E0C8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23DD8E158(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DD8E27C()
{
  result = qword_27E313738;
  if (!qword_27E313738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313738);
  }

  return result;
}

unint64_t sub_23DD8E2D4()
{
  result = qword_27E313740;
  if (!qword_27E313740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313740);
  }

  return result;
}

unint64_t sub_23DD8E32C()
{
  result = qword_27E313748;
  if (!qword_27E313748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313748);
  }

  return result;
}

unint64_t sub_23DD8E384()
{
  result = qword_27E313750;
  if (!qword_27E313750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313750);
  }

  return result;
}

unint64_t sub_23DD8E3DC()
{
  result = qword_27E313758;
  if (!qword_27E313758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313758);
  }

  return result;
}

unint64_t sub_23DD8E434()
{
  result = qword_27E313760;
  if (!qword_27E313760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313760);
  }

  return result;
}

unint64_t sub_23DD8E48C()
{
  result = qword_27E313768;
  if (!qword_27E313768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313768);
  }

  return result;
}

unint64_t sub_23DD8E4E4()
{
  result = qword_27E313770;
  if (!qword_27E313770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313770);
  }

  return result;
}

unint64_t sub_23DD8E53C()
{
  result = qword_27E313778;
  if (!qword_27E313778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313778);
  }

  return result;
}

unint64_t sub_23DD8E594()
{
  result = qword_27E313780;
  if (!qword_27E313780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313780);
  }

  return result;
}

unint64_t sub_23DD8E5EC()
{
  result = qword_27E313788;
  if (!qword_27E313788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313788);
  }

  return result;
}

unint64_t sub_23DD8E644()
{
  result = qword_27E313790;
  if (!qword_27E313790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313790);
  }

  return result;
}

unint64_t sub_23DD8E69C()
{
  result = qword_27E313798;
  if (!qword_27E313798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313798);
  }

  return result;
}

unint64_t sub_23DD8E6F4()
{
  result = qword_27E3137A0;
  if (!qword_27E3137A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137A0);
  }

  return result;
}

unint64_t sub_23DD8E74C()
{
  result = qword_27E3137A8;
  if (!qword_27E3137A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137A8);
  }

  return result;
}

unint64_t sub_23DD8E7A4()
{
  result = qword_27E3137B0;
  if (!qword_27E3137B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137B0);
  }

  return result;
}

unint64_t sub_23DD8E7FC()
{
  result = qword_27E3137B8;
  if (!qword_27E3137B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137B8);
  }

  return result;
}

unint64_t sub_23DD8E854()
{
  result = qword_27E3137C0;
  if (!qword_27E3137C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137C0);
  }

  return result;
}

unint64_t sub_23DD8E8AC()
{
  result = qword_27E3137C8;
  if (!qword_27E3137C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137C8);
  }

  return result;
}

unint64_t sub_23DD8E904()
{
  result = qword_27E3137D0;
  if (!qword_27E3137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137D0);
  }

  return result;
}

unint64_t sub_23DD8E95C()
{
  result = qword_27E3137D8;
  if (!qword_27E3137D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137D8);
  }

  return result;
}

unint64_t sub_23DD8E9B4()
{
  result = qword_27E3137E0;
  if (!qword_27E3137E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137E0);
  }

  return result;
}

unint64_t sub_23DD8EA0C()
{
  result = qword_27E3137E8;
  if (!qword_27E3137E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137E8);
  }

  return result;
}

unint64_t sub_23DD8EA64()
{
  result = qword_27E3137F0;
  if (!qword_27E3137F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137F0);
  }

  return result;
}

unint64_t sub_23DD8EABC()
{
  result = qword_27E3137F8;
  if (!qword_27E3137F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3137F8);
  }

  return result;
}

unint64_t sub_23DD8EB14()
{
  result = qword_27E313800;
  if (!qword_27E313800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313800);
  }

  return result;
}

unint64_t sub_23DD8EB6C()
{
  result = qword_27E313808;
  if (!qword_27E313808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313808);
  }

  return result;
}

unint64_t sub_23DD8EBC4()
{
  result = qword_27E313810;
  if (!qword_27E313810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313810);
  }

  return result;
}

unint64_t sub_23DD8EC1C()
{
  result = qword_27E313818;
  if (!qword_27E313818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313818);
  }

  return result;
}

unint64_t sub_23DD8EC74()
{
  result = qword_27E313820;
  if (!qword_27E313820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313820);
  }

  return result;
}

unint64_t sub_23DD8ECCC()
{
  result = qword_27E313828;
  if (!qword_27E313828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313828);
  }

  return result;
}

unint64_t sub_23DD8ED24()
{
  result = qword_27E313830;
  if (!qword_27E313830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313830);
  }

  return result;
}

unint64_t sub_23DD8ED7C()
{
  result = qword_27E313838;
  if (!qword_27E313838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313838);
  }

  return result;
}

unint64_t sub_23DD8EDD4()
{
  result = qword_27E313840;
  if (!qword_27E313840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313840);
  }

  return result;
}

unint64_t sub_23DD8EE2C()
{
  result = qword_27E313848;
  if (!qword_27E313848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313848);
  }

  return result;
}

unint64_t sub_23DD8EE84()
{
  result = qword_27E313850;
  if (!qword_27E313850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313850);
  }

  return result;
}

unint64_t sub_23DD8EEDC()
{
  result = qword_27E313858;
  if (!qword_27E313858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313858);
  }

  return result;
}

unint64_t sub_23DD8EF34()
{
  result = qword_27E313860;
  if (!qword_27E313860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313860);
  }

  return result;
}

unint64_t sub_23DD8EF8C()
{
  result = qword_27E313868;
  if (!qword_27E313868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313868);
  }

  return result;
}

unint64_t sub_23DD8EFE4()
{
  result = qword_27E313870;
  if (!qword_27E313870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313870);
  }

  return result;
}

unint64_t sub_23DD8F03C()
{
  result = qword_27E313878;
  if (!qword_27E313878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313878);
  }

  return result;
}

unint64_t sub_23DD8F094()
{
  result = qword_27E313880;
  if (!qword_27E313880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313880);
  }

  return result;
}

unint64_t sub_23DD8F0EC()
{
  result = qword_27E313888;
  if (!qword_27E313888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313888);
  }

  return result;
}

unint64_t sub_23DD8F144()
{
  result = qword_27E313890;
  if (!qword_27E313890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313890);
  }

  return result;
}

unint64_t sub_23DD8F19C()
{
  result = qword_27E313898;
  if (!qword_27E313898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313898);
  }

  return result;
}

unint64_t sub_23DD8F1F4()
{
  result = qword_27E3138A0;
  if (!qword_27E3138A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138A0);
  }

  return result;
}

unint64_t sub_23DD8F24C()
{
  result = qword_27E3138A8;
  if (!qword_27E3138A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138A8);
  }

  return result;
}

unint64_t sub_23DD8F2A4()
{
  result = qword_27E3138B0;
  if (!qword_27E3138B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138B0);
  }

  return result;
}

unint64_t sub_23DD8F2FC()
{
  result = qword_27E3138B8;
  if (!qword_27E3138B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138B8);
  }

  return result;
}

unint64_t sub_23DD8F354()
{
  result = qword_27E3138C0;
  if (!qword_27E3138C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138C0);
  }

  return result;
}

unint64_t sub_23DD8F3AC()
{
  result = qword_27E3138C8;
  if (!qword_27E3138C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138C8);
  }

  return result;
}

unint64_t sub_23DD8F404()
{
  result = qword_27E3138D0;
  if (!qword_27E3138D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138D0);
  }

  return result;
}

unint64_t sub_23DD8F45C()
{
  result = qword_27E3138D8;
  if (!qword_27E3138D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138D8);
  }

  return result;
}

unint64_t sub_23DD8F4B4()
{
  result = qword_27E3138E0;
  if (!qword_27E3138E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138E0);
  }

  return result;
}

unint64_t sub_23DD8F50C()
{
  result = qword_27E3138E8;
  if (!qword_27E3138E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138E8);
  }

  return result;
}

unint64_t sub_23DD8F564()
{
  result = qword_27E3138F0;
  if (!qword_27E3138F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138F0);
  }

  return result;
}

unint64_t sub_23DD8F5BC()
{
  result = qword_27E3138F8;
  if (!qword_27E3138F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3138F8);
  }

  return result;
}

unint64_t sub_23DD8F614()
{
  result = qword_27E313900;
  if (!qword_27E313900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313900);
  }

  return result;
}

unint64_t sub_23DD8F66C()
{
  result = qword_27E313908;
  if (!qword_27E313908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313908);
  }

  return result;
}

unint64_t sub_23DD8F6C4()
{
  result = qword_27E313910;
  if (!qword_27E313910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313910);
  }

  return result;
}

unint64_t sub_23DD8F71C()
{
  result = qword_27E313918;
  if (!qword_27E313918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313918);
  }

  return result;
}

unint64_t sub_23DD8F774()
{
  result = qword_27E313920;
  if (!qword_27E313920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313920);
  }

  return result;
}

unint64_t sub_23DD8F7CC()
{
  result = qword_27E313928;
  if (!qword_27E313928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313928);
  }

  return result;
}

unint64_t sub_23DD8F824()
{
  result = qword_27E313930;
  if (!qword_27E313930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313930);
  }

  return result;
}

unint64_t sub_23DD8F87C()
{
  result = qword_27E313938;
  if (!qword_27E313938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313938);
  }

  return result;
}

unint64_t sub_23DD8F8D4()
{
  result = qword_27E313940;
  if (!qword_27E313940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313940);
  }

  return result;
}

unint64_t sub_23DD8F92C()
{
  result = qword_27E313948;
  if (!qword_27E313948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313948);
  }

  return result;
}

unint64_t sub_23DD8F984()
{
  result = qword_27E313950;
  if (!qword_27E313950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313950);
  }

  return result;
}

unint64_t sub_23DD8F9DC()
{
  result = qword_27E313958;
  if (!qword_27E313958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313958);
  }

  return result;
}

unint64_t sub_23DD8FA34()
{
  result = qword_27E313960;
  if (!qword_27E313960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313960);
  }

  return result;
}

unint64_t sub_23DD8FA8C()
{
  result = qword_27E313968;
  if (!qword_27E313968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313968);
  }

  return result;
}

unint64_t sub_23DD8FAE4()
{
  result = qword_27E313970;
  if (!qword_27E313970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313970);
  }

  return result;
}

unint64_t sub_23DD8FB3C()
{
  result = qword_27E313978;
  if (!qword_27E313978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313978);
  }

  return result;
}

unint64_t sub_23DD8FB94()
{
  result = qword_27E313980;
  if (!qword_27E313980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313980);
  }

  return result;
}

unint64_t sub_23DD8FBEC()
{
  result = qword_27E313988;
  if (!qword_27E313988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313988);
  }

  return result;
}

unint64_t sub_23DD8FC44()
{
  result = qword_27E313990;
  if (!qword_27E313990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313990);
  }

  return result;
}

unint64_t sub_23DD8FC9C()
{
  result = qword_27E313998;
  if (!qword_27E313998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313998);
  }

  return result;
}

unint64_t sub_23DD8FCF4()
{
  result = qword_27E3139A0;
  if (!qword_27E3139A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139A0);
  }

  return result;
}

unint64_t sub_23DD8FD4C()
{
  result = qword_27E3139A8;
  if (!qword_27E3139A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139A8);
  }

  return result;
}

unint64_t sub_23DD8FDA4()
{
  result = qword_27E3139B0;
  if (!qword_27E3139B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139B0);
  }

  return result;
}

unint64_t sub_23DD8FDFC()
{
  result = qword_27E3139B8;
  if (!qword_27E3139B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139B8);
  }

  return result;
}

unint64_t sub_23DD8FE54()
{
  result = qword_27E3139C0;
  if (!qword_27E3139C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139C0);
  }

  return result;
}

unint64_t sub_23DD8FEAC()
{
  result = qword_27E3139C8;
  if (!qword_27E3139C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139C8);
  }

  return result;
}

unint64_t sub_23DD8FF04()
{
  result = qword_27E3139D0;
  if (!qword_27E3139D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139D0);
  }

  return result;
}

unint64_t sub_23DD8FF5C()
{
  result = qword_27E3139D8;
  if (!qword_27E3139D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139D8);
  }

  return result;
}

unint64_t sub_23DD8FFB4()
{
  result = qword_27E3139E0;
  if (!qword_27E3139E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139E0);
  }

  return result;
}

unint64_t sub_23DD9000C()
{
  result = qword_27E3139E8;
  if (!qword_27E3139E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139E8);
  }

  return result;
}

unint64_t sub_23DD90064()
{
  result = qword_27E3139F0;
  if (!qword_27E3139F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139F0);
  }

  return result;
}

unint64_t sub_23DD900BC()
{
  result = qword_27E3139F8;
  if (!qword_27E3139F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3139F8);
  }

  return result;
}

unint64_t sub_23DD90114()
{
  result = qword_27E313A00;
  if (!qword_27E313A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A00);
  }

  return result;
}

unint64_t sub_23DD9016C()
{
  result = qword_27E313A08;
  if (!qword_27E313A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A08);
  }

  return result;
}

unint64_t sub_23DD901C4()
{
  result = qword_27E313A10;
  if (!qword_27E313A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A10);
  }

  return result;
}

unint64_t sub_23DD9021C()
{
  result = qword_27E313A18;
  if (!qword_27E313A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A18);
  }

  return result;
}

unint64_t sub_23DD90274()
{
  result = qword_27E313A20;
  if (!qword_27E313A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A20);
  }

  return result;
}

unint64_t sub_23DD902CC()
{
  result = qword_27E313A28;
  if (!qword_27E313A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A28);
  }

  return result;
}

unint64_t sub_23DD90324()
{
  result = qword_27E313A30;
  if (!qword_27E313A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A30);
  }

  return result;
}

unint64_t sub_23DD9037C()
{
  result = qword_27E313A38;
  if (!qword_27E313A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A38);
  }

  return result;
}

unint64_t sub_23DD903D4()
{
  result = qword_27E313A40;
  if (!qword_27E313A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A40);
  }

  return result;
}

unint64_t sub_23DD9042C()
{
  result = qword_27E313A48;
  if (!qword_27E313A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A48);
  }

  return result;
}

unint64_t sub_23DD90484()
{
  result = qword_27E313A50;
  if (!qword_27E313A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A50);
  }

  return result;
}

unint64_t sub_23DD904DC()
{
  result = qword_27E313A58;
  if (!qword_27E313A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A58);
  }

  return result;
}

unint64_t sub_23DD90534()
{
  result = qword_27E313A60;
  if (!qword_27E313A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A60);
  }

  return result;
}

unint64_t sub_23DD9058C()
{
  result = qword_27E313A68;
  if (!qword_27E313A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A68);
  }

  return result;
}

unint64_t sub_23DD905E4()
{
  result = qword_27E313A70;
  if (!qword_27E313A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A70);
  }

  return result;
}

unint64_t sub_23DD9063C()
{
  result = qword_27E313A78;
  if (!qword_27E313A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A78);
  }

  return result;
}

unint64_t sub_23DD90694()
{
  result = qword_27E313A80;
  if (!qword_27E313A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A80);
  }

  return result;
}

unint64_t sub_23DD906EC()
{
  result = qword_27E313A88;
  if (!qword_27E313A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A88);
  }

  return result;
}

unint64_t sub_23DD90744()
{
  result = qword_27E313A90;
  if (!qword_27E313A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A90);
  }

  return result;
}

unint64_t sub_23DD9079C()
{
  result = qword_27E313A98;
  if (!qword_27E313A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313A98);
  }

  return result;
}

unint64_t sub_23DD907F4()
{
  result = qword_27E313AA0;
  if (!qword_27E313AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AA0);
  }

  return result;
}

unint64_t sub_23DD9084C()
{
  result = qword_27E313AA8;
  if (!qword_27E313AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AA8);
  }

  return result;
}

unint64_t sub_23DD908A4()
{
  result = qword_27E313AB0;
  if (!qword_27E313AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AB0);
  }

  return result;
}

unint64_t sub_23DD908FC()
{
  result = qword_27E313AB8;
  if (!qword_27E313AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AB8);
  }

  return result;
}

unint64_t sub_23DD90954()
{
  result = qword_27E313AC0;
  if (!qword_27E313AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AC0);
  }

  return result;
}

unint64_t sub_23DD909AC()
{
  result = qword_27E313AC8;
  if (!qword_27E313AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AC8);
  }

  return result;
}

unint64_t sub_23DD90A04()
{
  result = qword_27E313AD0;
  if (!qword_27E313AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AD0);
  }

  return result;
}

unint64_t sub_23DD90A5C()
{
  result = qword_27E313AD8;
  if (!qword_27E313AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AD8);
  }

  return result;
}

unint64_t sub_23DD90AB4()
{
  result = qword_27E313AE0;
  if (!qword_27E313AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AE0);
  }

  return result;
}

unint64_t sub_23DD90B0C()
{
  result = qword_27E313AE8;
  if (!qword_27E313AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313AE8);
  }

  return result;
}

uint64_t sub_23DD90B60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xEE00726576726553 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696F6774756FLL && a2 == 0xEE00726576726553)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD90C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C626174756D6D69 && a2 == 0xE900000000000065;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C754672657375 && a2 == 0xEC000000656D614ELL || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023DDB2620 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD90E50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x316573614574656ELL && a2 == 0xEA00000000003336;
  if (v3 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x316573614574656ELL && a2 == 0xEA00000000003632 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x51746E65636E6574 && a2 == 0xE900000000000051 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23DDA4B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23DD90FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1685024615 && a2 == 0xE400000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023DDB2640 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746164696C6176 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_23DDA4B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23DD9112C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746163696C707564 && a2 == 0xE900000000000065 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1685024615 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD91248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6974696E6173 && a2 == 0xE900000000000064;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xEE00737574617453 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023DDB2660 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023DDB2680 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23DDA4B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23DD913C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C626174756D6D69 && a2 == 0xE900000000000065;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xEE00726576726553 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696F6774756FLL && a2 == 0xEE00726576726553 || (sub_23DDA4B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023DDB2620 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C754672657375 && a2 == 0xEC000000656D614ELL)
  {

    return 6;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD91634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656465654E746F6ELL && a2 == 0xE900000000000064;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1685024615 && a2 == 0xE400000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023DDB2640 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746164696C6176 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD917F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1886678387 && a2 == 0xE400000000000000;
  if (v3 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1885433193 && a2 == 0xE400000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7368560 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD91910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E64696C61766E69 && a2 == 0xEB00000000656D61 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736978656E6F6ELL && a2 == 0xEF656D614E746E65 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F54656C62616E75 && a2 == 0xEF7463656E6E6F43 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1685024615 && a2 == 0xE400000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746164696C6176 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_23DDA4B00();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23DD91B24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6974696E6173 && a2 == 0xE900000000000064;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xEE00737574617453 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023DDB2660 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xEE00737574617453 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023DDB2680 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD91CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7245726576726573 && a2 == 0xEB00000000726F72 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727245637078 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD91E0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000023DDB2620 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C754672657375 && a2 == 0xEC000000656D614ELL || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_23DDA4B00();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23DD92020(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DD92160(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DDA48E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_23DD993A8(&qword_27E313EC0, MEMORY[0x277CC9260]);
    v22 = sub_23DDA4900();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD92374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreliminaryInformation.Suggestion(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v11 = &v27[-v10];
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23DD99964(v14, v11, type metadata accessor for PreliminaryInformation.Suggestion);
      sub_23DD99964(v15, v8, type metadata accessor for PreliminaryInformation.Suggestion);
      v17 = *v11;
      v18 = *v8;
      if (v17 == 5)
      {
        if (v18 != 5)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      v19 = *(v4 + 20);
      if ((sub_23DDA48B0() & 1) == 0)
      {
        break;
      }

      v20 = *(v4 + 24);
      v21 = *&v11[v20];
      v22 = *&v11[v20 + 8];
      v23 = &v8[v20];
      if (v21 == *v23 && v22 == *(v23 + 1))
      {

        sub_23DD999CC(v8, type metadata accessor for PreliminaryInformation.Suggestion);
        sub_23DD999CC(v11, type metadata accessor for PreliminaryInformation.Suggestion);
      }

      else
      {
        v25 = *(v23 + 1);
        v28 = sub_23DDA4B00();

        sub_23DD999CC(v8, type metadata accessor for PreliminaryInformation.Suggestion);
        sub_23DD999CC(v11, type metadata accessor for PreliminaryInformation.Suggestion);

        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_23DD999CC(v8, type metadata accessor for PreliminaryInformation.Suggestion);
    sub_23DD999CC(v11, type metadata accessor for PreliminaryInformation.Suggestion);
  }

  return 0;
}

uint64_t PreliminaryInformation.emailAddress.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PreliminaryInformation.emailAddress.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t PreliminaryInformation.userFullName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PreliminaryInformation.userFullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

AccountsUISupportShared::PreliminaryInformation __swiftcall PreliminaryInformation.init(emailAddress:userFullName:)(AccountsUISupportShared::EmailAddress emailAddress, Swift::String userFullName)
{
  v3 = *(emailAddress.underlying._countAndFlagsBits + 8);
  *v2 = *emailAddress.underlying._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = emailAddress.underlying._object;
  v2[3] = userFullName._countAndFlagsBits;
  result.userFullName = userFullName;
  result.emailAddress = emailAddress;
  return result;
}

uint64_t sub_23DD9273C()
{
  if (*v0)
  {
    result = 0x6C6C754672657375;
  }

  else
  {
    result = 0x6464416C69616D65;
  }

  *v0;
  return result;
}

uint64_t sub_23DD92788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572;
  if (v6 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6C754672657375 && a2 == 0xEC000000656D614ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD9286C(uint64_t a1)
{
  v2 = sub_23DD98C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD928A8(uint64_t a1)
{
  v2 = sub_23DD98C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreliminaryInformation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B00, &qword_23DDA9D00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD98C44();

  sub_23DDA4BF0();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_23DD7A808();
  v12 = v14[3];
  sub_23DDA4AD0();

  if (!v12)
  {
    LOBYTE(v15) = 1;
    sub_23DDA4AC0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PreliminaryInformation.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t PreliminaryInformation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B10, &qword_23DDA9D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD98C44();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_23DD7A85C();
  sub_23DDA4A50();
  v11 = v19;
  v17 = v18;
  LOBYTE(v18) = 1;
  v12 = sub_23DDA4A40();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23DD92D50()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD92DB8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23DDA4940();

  return sub_23DDA4940();
}

uint64_t sub_23DD92E08()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD92EA4()
{
  v1 = 0x6363416E776F6E6BLL;
  if (*v0 != 1)
  {
    v1 = 0x416E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687475616FLL;
  }
}

uint64_t sub_23DD92F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD9B364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD92F38(uint64_t a1)
{
  v2 = sub_23DD991F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD92F74(uint64_t a1)
{
  v2 = sub_23DD991F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD92FB0(uint64_t a1)
{
  v2 = sub_23DD99298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD92FEC(uint64_t a1)
{
  v2 = sub_23DD99298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD93028(uint64_t a1)
{
  v2 = sub_23DD992EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD93064(uint64_t a1)
{
  v2 = sub_23DD992EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD930A0(uint64_t a1)
{
  v2 = sub_23DD99244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD930DC(uint64_t a1)
{
  v2 = sub_23DD99244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreliminaryInformation.NextStep.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B18, &qword_23DDA9D10);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B20, &qword_23DDA9D18);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B28, &qword_23DDA9D20);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v40 = type metadata accessor for OAuth.Account(0);
  v12 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for PreliminaryInformation.NextStep(0);
  v16 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B30, &qword_23DDA9D28);
  v50 = *(v19 - 8);
  v51 = v19;
  v20 = *(v50 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD991F0();
  sub_23DDA4BF0();
  sub_23DD99964(v49, v18, type metadata accessor for PreliminaryInformation.NextStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v25 = *(v18 + 5);
    v64 = *(v18 + 4);
    v65 = v25;
    if (EnumCaseMultiPayload == 1)
    {
      v66 = *(v18 + 6);
      LOBYTE(v67) = v18[112];
      v26 = *(v18 + 1);
      v60 = *v18;
      v61 = v26;
      v27 = *(v18 + 3);
      v62 = *(v18 + 2);
      v63 = v27;
      LOBYTE(v52) = 1;
      sub_23DD99298();
      v28 = v43;
      v29 = v51;
      sub_23DDA4A80();
      v56 = v64;
      v57 = v65;
      v58 = v66;
      LOBYTE(v59) = v67;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      sub_23DD8B10C();
      v30 = v45;
      sub_23DDA4AD0();
      (*(v44 + 8))(v28, v30);
      (*(v50 + 8))(v22, v29);
      return sub_23DD74C44(&v60);
    }

    else
    {
      v34 = *(v18 + 7);
      v66 = *(v18 + 6);
      v67 = v34;
      v35 = *(v18 + 1);
      v60 = *v18;
      v61 = v35;
      v36 = *(v18 + 3);
      v62 = *(v18 + 2);
      v63 = v36;
      LOBYTE(v52) = 2;
      sub_23DD99244();
      v37 = v46;
      v38 = v51;
      sub_23DDA4A80();
      v56 = v64;
      v57 = v65;
      v58 = v66;
      v59 = v67;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      sub_23DD8C700();
      v39 = v48;
      sub_23DDA4AD0();
      (*(v47 + 8))(v37, v39);
      (*(v50 + 8))(v22, v38);
      return sub_23DD8BE0C(&v60);
    }
  }

  else
  {
    sub_23DD99340(v18, v14, type metadata accessor for OAuth.Account);
    LOBYTE(v60) = 0;
    sub_23DD992EC();
    v32 = v51;
    sub_23DDA4A80();
    sub_23DD993A8(&qword_27E313B58, type metadata accessor for OAuth.Account);
    v33 = v42;
    sub_23DDA4AD0();
    (*(v41 + 8))(v11, v33);
    sub_23DD999CC(v14, type metadata accessor for OAuth.Account);
    return (*(v50 + 8))(v22, v32);
  }
}

uint64_t PreliminaryInformation.NextStep.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for OAuth.Account(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  Step = type metadata accessor for PreliminaryInformation.NextStep(0);
  v7 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD99964(v1, v9, type metadata accessor for PreliminaryInformation.NextStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = *(v9 + 5);
    v35 = *(v9 + 4);
    v36 = v11;
    if (EnumCaseMultiPayload == 1)
    {
      v37 = *(v9 + 6);
      LOBYTE(v38) = v9[112];
      v12 = *(v9 + 1);
      v31 = *v9;
      v32 = v12;
      v13 = *(v9 + 3);
      v33 = *(v9 + 2);
      v34 = v13;
      MEMORY[0x23EEFF490](1);
      v27 = v35;
      v28 = v36;
      v29 = v37;
      LOBYTE(v30) = v38;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      PasswordAccount.Known.hash(into:)();
      return sub_23DD74C44(&v31);
    }

    else
    {
      v20 = *(v9 + 7);
      v37 = *(v9 + 6);
      v38 = v20;
      v21 = *(v9 + 1);
      v31 = *v9;
      v32 = v21;
      v22 = *(v9 + 3);
      v33 = *(v9 + 2);
      v34 = v22;
      MEMORY[0x23EEFF490](2);
      v27 = v35;
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      PasswordAccount.Unknown.hash(into:)();
      return sub_23DD8BE0C(&v31);
    }
  }

  else
  {
    sub_23DD99340(v9, v5, type metadata accessor for OAuth.Account);
    MEMORY[0x23EEFF490](0);
    v15 = *v5;
    v16 = v5[1];
    sub_23DDA4940();
    v17 = v5[2];
    v18 = v5[3];
    sub_23DDA4940();
    v19 = v5 + *(v2 + 24);
    OAuth.Kind.hash(into:)();
    return sub_23DD999CC(v5, type metadata accessor for OAuth.Account);
  }
}

uint64_t PreliminaryInformation.NextStep.hashValue.getter()
{
  sub_23DDA4B70();
  PreliminaryInformation.NextStep.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.NextStep.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B60, &qword_23DDA9D30);
  v72 = *(v73 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v78 = &v64 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B68, &qword_23DDA9D38);
  v70 = *(v71 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v77 = &v64 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B70, &qword_23DDA9D40);
  v68 = *(v69 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v75 = &v64 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B78, &unk_23DDA9D48);
  v79 = *(v76 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v76);
  v11 = &v64 - v10;
  Step = type metadata accessor for PreliminaryInformation.NextStep(0);
  v13 = *(*(Step - 8) + 64);
  v14 = MEMORY[0x28223BE20](Step);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v64 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v64 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23DD991F0();
  v27 = v80;
  sub_23DDA4BD0();
  if (!v27)
  {
    v66 = v22;
    v64 = v19;
    v65 = v16;
    v28 = v75;
    v29 = v77;
    v30 = v78;
    v80 = 0;
    v67 = v24;
    v31 = v76;
    v32 = sub_23DDA4A70();
    v33 = (2 * *(v32 + 16)) | 1;
    v89 = v32;
    v90 = v32 + 32;
    v91 = 0;
    v92 = v33;
    v34 = sub_23DD7C4A0();
    v35 = v11;
    if (v34 == 3 || v91 != v92 >> 1)
    {
      v40 = v31;
      v41 = sub_23DDA49D0();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
      *v43 = Step;
      sub_23DDA4A00();
      sub_23DDA49C0();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v79 + 8))(v35, v40);
    }

    else
    {
      if (v34)
      {
        v36 = v79;
        if (v34 == 1)
        {
          LOBYTE(v81) = 1;
          sub_23DD99298();
          v37 = v80;
          sub_23DDA49F0();
          v38 = v74;
          if (!v37)
          {
            sub_23DD8B25C();
            v39 = v71;
            sub_23DDA4A50();
            (*(v70 + 8))(v29, v39);
            (*(v36 + 8))(v35, v31);
            swift_unknownObjectRelease();
            v53 = v86;
            v54 = v64;
            *(v64 + 4) = v85;
            *(v54 + 80) = v53;
            *(v54 + 96) = v87;
            *(v54 + 112) = v88;
            v55 = v82;
            *v54 = v81;
            *(v54 + 16) = v55;
            v56 = v84;
            *(v54 + 32) = v83;
            *(v54 + 48) = v56;
            swift_storeEnumTagMultiPayload();
            v57 = v54;
            v58 = v67;
            sub_23DD99340(v57, v67, type metadata accessor for PreliminaryInformation.NextStep);
LABEL_18:
            sub_23DD99340(v58, v38, type metadata accessor for PreliminaryInformation.NextStep);
            return __swift_destroy_boxed_opaque_existential_1(v93);
          }

          goto LABEL_14;
        }

        LOBYTE(v81) = 2;
        sub_23DD99244();
        v48 = v80;
        sub_23DDA49F0();
        if (v48)
        {
LABEL_14:
          (*(v36 + 8))(v11, v31);
          goto LABEL_9;
        }

        sub_23DD8C7A8();
        v52 = v73;
        sub_23DDA4A50();
        (*(v72 + 8))(v30, v52);
        (*(v36 + 8))(v11, v31);
        swift_unknownObjectRelease();
        v59 = v86;
        v60 = v65;
        v65[4] = v85;
        v60[5] = v59;
        v61 = v88;
        v60[6] = v87;
        v60[7] = v61;
        v62 = v82;
        *v60 = v81;
        v60[1] = v62;
        v63 = v84;
        v60[2] = v83;
        v60[3] = v63;
        swift_storeEnumTagMultiPayload();
        v51 = v60;
LABEL_17:
        v58 = v67;
        sub_23DD99340(v51, v67, type metadata accessor for PreliminaryInformation.NextStep);
        v38 = v74;
        goto LABEL_18;
      }

      LOBYTE(v81) = 0;
      sub_23DD992EC();
      v46 = v80;
      sub_23DDA49F0();
      v47 = v79;
      if (!v46)
      {
        type metadata accessor for OAuth.Account(0);
        sub_23DD993A8(&qword_27E313B80, type metadata accessor for OAuth.Account);
        v49 = v66;
        v50 = v69;
        sub_23DDA4A50();
        (*(v68 + 8))(v28, v50);
        (*(v47 + 8))(v11, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v51 = v49;
        goto LABEL_17;
      }

      (*(v79 + 8))(v11, v31);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t sub_23DD9433C()
{
  sub_23DDA4B70();
  PreliminaryInformation.NextStep.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD94380()
{
  sub_23DDA4B70();
  PreliminaryInformation.NextStep.hash(into:)();
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.Validated.sanitized.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 PreliminaryInformation.Validated.sanitized.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

unint64_t PreliminaryInformation.Validated.emailAddressStatus.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_23DD993F0(v2);
}

unint64_t PreliminaryInformation.Validated.emailAddressStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_23DD99400(*(v1 + 32));
  *(v1 + 32) = v2;
  return result;
}

uint64_t PreliminaryInformation.Validated.suggestedReplacements.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

__n128 PreliminaryInformation.Validated.init(sanitized:emailAddressStatus:suggestedReplacements:)@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  result = *a1;
  v5 = a1[1].n128_u64[0];
  v6 = a1[1].n128_u64[1];
  v7 = *a2;
  *a4 = *a1;
  a4[1].n128_u64[0] = v5;
  a4[1].n128_u64[1] = v6;
  a4[2].n128_u64[0] = v7;
  a4[2].n128_u64[1] = a3;
  return result;
}

unint64_t sub_23DD94578()
{
  v1 = *v0;
  v2 = 0x7974706D65;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 1685024615;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64696C61766E69;
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

uint64_t sub_23DD94614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD9B484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD9463C(uint64_t a1)
{
  v2 = sub_23DD99410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD94678(uint64_t a1)
{
  v2 = sub_23DD99410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD946B4(uint64_t a1)
{
  v2 = sub_23DD995D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD946F0(uint64_t a1)
{
  v2 = sub_23DD995D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9472C(uint64_t a1)
{
  v2 = sub_23DD99464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD94768(uint64_t a1)
{
  v2 = sub_23DD99464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD947A4(uint64_t a1)
{
  v2 = sub_23DD99580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD947E0(uint64_t a1)
{
  v2 = sub_23DD99580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9481C(uint64_t a1)
{
  v2 = sub_23DD9950C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD94858(uint64_t a1)
{
  v2 = sub_23DD9950C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD94894(uint64_t a1)
{
  v2 = sub_23DD994B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD948D0(uint64_t a1)
{
  v2 = sub_23DD994B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreliminaryInformation.Validated.EmailAddressStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B88, &qword_23DDA9D58);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B90, &qword_23DDA9D60);
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313B98, &qword_23DDA9D68);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313BA0, &qword_23DDA9D70);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313BA8, &qword_23DDA9D78);
  v34 = *(v16 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313BB0, &qword_23DDA9D80);
  v46 = *(v20 - 8);
  v47 = v20;
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v34 - v22;
  v24 = *v1;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD99410();
  sub_23DDA4BF0();
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v52 = 3;
      sub_23DD994B8();
      v27 = v37;
      v26 = v47;
      sub_23DDA4A80();
      v29 = v38;
      v28 = v39;
    }

    else
    {
      if (v24 != 3)
      {
        goto LABEL_8;
      }

      v53 = 4;
      sub_23DD99464();
      v27 = v41;
      v26 = v47;
      sub_23DDA4A80();
      v29 = v44;
      v28 = v45;
    }

    (*(v29 + 8))(v27, v28);
    return (*(v46 + 8))(v23, v26);
  }

  if (!v24)
  {
    v49 = 0;
    sub_23DD995D4();
    v26 = v47;
    sub_23DDA4A80();
    (*(v34 + 8))(v19, v16);
    return (*(v46 + 8))(v23, v26);
  }

  if (v24 != 1)
  {
LABEL_8:
    v51 = 2;
    sub_23DD9950C();
    v30 = v40;
    v31 = v47;
    sub_23DDA4A80();
    v48 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313BD8, &qword_23DDA9D88);
    sub_23DD99628(&qword_27E313BE0, &qword_27E313BE8);
    v32 = v43;
    sub_23DDA4AD0();
    (*(v42 + 8))(v30, v32);
    return (*(v46 + 8))(v23, v31);
  }

  v50 = 1;
  sub_23DD99580();
  v26 = v47;
  sub_23DDA4A80();
  (*(v35 + 8))(v15, v36);
  return (*(v46 + 8))(v23, v26);
}

uint64_t PreliminaryInformation.Validated.EmailAddressStatus.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x23EEFF490](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x23EEFF490](v4);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
      return MEMORY[0x23EEFF490](v4);
    }

    if (v3 == 1)
    {
      v4 = 1;
      return MEMORY[0x23EEFF490](v4);
    }
  }

  MEMORY[0x23EEFF490](2);

  return sub_23DD982E4(a1, v3);
}

uint64_t PreliminaryInformation.Validated.EmailAddressStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23DDA4B70();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x23EEFF490](v2);
      return sub_23DDA4BB0();
    }
  }

  MEMORY[0x23EEFF490](2);
  sub_23DD982E4(v4, v1);
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.Validated.EmailAddressStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C00, &qword_23DDA9D90);
  v52 = *(v55 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v55);
  v62 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C08, &qword_23DDA9D98);
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C10, &qword_23DDA9DA0);
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C18, &qword_23DDA9DA8);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C20, &qword_23DDA9DB0);
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C28, &qword_23DDA9DB8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23DD99410();
  v27 = v65;
  sub_23DDA4BD0();
  if (v27)
  {
    goto LABEL_9;
  }

  v28 = v19;
  v50 = v16;
  v29 = v61;
  v30 = v62;
  v65 = v21;
  v31 = v63;
  v32 = sub_23DDA4A70();
  v33 = (2 * *(v32 + 16)) | 1;
  v66 = v32;
  v67 = v32 + 32;
  v68 = 0;
  v69 = v33;
  v34 = sub_23DD7C4A4();
  if (v34 == 5 || v68 != v69 >> 1)
  {
    v39 = sub_23DDA49D0();
    swift_allocError();
    v41 = v40;
    v42 = v24;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
    *v41 = &type metadata for PreliminaryInformation.Validated.EmailAddressStatus;
    sub_23DDA4A00();
    sub_23DDA49C0();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v65 + 8))(v42, v20);
    swift_unknownObjectRelease();
LABEL_9:
    v44 = v64;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  if (v34 <= 1u)
  {
    if (v34)
    {
      LOBYTE(v70) = 1;
      sub_23DD99580();
      sub_23DDA49F0();
      (*(v53 + 8))(v15, v54);
      (*(v65 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v38 = 1;
    }

    else
    {
      LOBYTE(v70) = 0;
      sub_23DD995D4();
      sub_23DDA49F0();
      (*(v51 + 8))(v28, v50);
      (*(v65 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v38 = 0;
    }

    v44 = v64;
    v35 = v31;
  }

  else if (v34 == 2)
  {
    LOBYTE(v70) = 2;
    sub_23DD9950C();
    sub_23DDA49F0();
    v46 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313BD8, &qword_23DDA9D88);
    sub_23DD99628(&qword_27E313C30, &qword_27E313C38);
    v47 = v58;
    sub_23DDA4A50();
    (*(v59 + 8))(v29, v47);
    (*(v65 + 8))(v24, v20);
    swift_unknownObjectRelease();
    v38 = v70;
    v44 = v64;
    v35 = v46;
  }

  else
  {
    v35 = v31;
    if (v34 == 3)
    {
      LOBYTE(v70) = 3;
      sub_23DD994B8();
      v36 = v60;
      sub_23DDA49F0();
      v37 = v65;
      (*(v56 + 8))(v36, v57);
      (*(v37 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v38 = 2;
    }

    else
    {
      LOBYTE(v70) = 4;
      sub_23DD99464();
      sub_23DDA49F0();
      v48 = v65;
      (*(v52 + 8))(v30, v55);
      (*(v48 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v38 = 3;
    }

    v44 = v64;
  }

  *v35 = v38;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_23DD95880()
{
  v1 = *v0;
  sub_23DDA4B70();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x23EEFF490](v2);
      return sub_23DDA4BB0();
    }
  }

  MEMORY[0x23EEFF490](2);
  sub_23DD982E4(v4, v1);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD9592C(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 3;
      return MEMORY[0x23EEFF490](v4);
    }

    if (v3 == 3)
    {
      v4 = 4;
      return MEMORY[0x23EEFF490](v4);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = 0;
      return MEMORY[0x23EEFF490](v4);
    }

    if (v3 == 1)
    {
      v4 = 1;
      return MEMORY[0x23EEFF490](v4);
    }
  }

  MEMORY[0x23EEFF490](2);

  return sub_23DD982E4(a1, v3);
}

uint64_t sub_23DD959D4()
{
  v1 = *v0;
  sub_23DDA4B70();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x23EEFF490](v2);
      return sub_23DDA4BB0();
    }
  }

  MEMORY[0x23EEFF490](2);
  sub_23DD982E4(v4, v1);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD95AB4()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A6974696E6173;
  }
}

uint64_t sub_23DD95B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD9B640(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD95B40(uint64_t a1)
{
  v2 = sub_23DD996C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD95B7C(uint64_t a1)
{
  v2 = sub_23DD996C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreliminaryInformation.Validated.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C40, &qword_23DDA9DC0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v19 = v1[4];
  v20 = v9;
  v18 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD996C4();

  sub_23DDA4BF0();
  v23 = v7;
  v24 = v8;
  v25 = v20;
  v26 = v10;
  v27 = 0;
  sub_23DD99718();
  v13 = v21;
  sub_23DDA4AD0();

  if (v13)
  {
    return (*(v22 + 8))(v6, v3);
  }

  v15 = v18;
  v16 = v22;
  v23 = v19;
  v27 = 1;
  sub_23DD993F0(v19);
  sub_23DD9976C();
  sub_23DDA4AD0();
  sub_23DD99400(v23);
  v23 = v15;
  v27 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313BD8, &qword_23DDA9D88);
  sub_23DD99628(&qword_27E313BE0, &qword_27E313BE8);
  sub_23DDA4AD0();
  return (*(v16 + 8))(v6, v3);
}

uint64_t PreliminaryInformation.Validated.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  sub_23DDA4940();
  sub_23DDA4940();
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = 3;
      goto LABEL_11;
    }

    if (v8 == 3)
    {
      v9 = 4;
      goto LABEL_11;
    }

LABEL_8:
    MEMORY[0x23EEFF490](2);
    sub_23DD982E4(a1, v8);
    goto LABEL_12;
  }

  if (!v8)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (v8 != 1)
  {
    goto LABEL_8;
  }

  v9 = 1;
LABEL_11:
  MEMORY[0x23EEFF490](v9);
LABEL_12:

  return sub_23DD982E4(a1, v7);
}

uint64_t PreliminaryInformation.Validated.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23DDA4B70();
  sub_23DDA4940();
  sub_23DDA4940();
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = 3;
      goto LABEL_11;
    }

    if (v6 == 3)
    {
      v7 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = 0;
      goto LABEL_11;
    }

    if (v6 == 1)
    {
      v7 = 1;
LABEL_11:
      MEMORY[0x23EEFF490](v7);
      goto LABEL_12;
    }
  }

  MEMORY[0x23EEFF490](2);
  sub_23DD982E4(v9, v6);
LABEL_12:
  sub_23DD982E4(v9, v5);
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.Validated.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C60, &qword_23DDA9DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD996C4();
  sub_23DDA4BD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_23DD997C0();
  sub_23DDA4A50();
  v22 = v24;
  v11 = v25;
  v20 = v23;
  v21 = v26;
  v27 = 1;
  sub_23DD99814();
  sub_23DDA4A50();
  v18 = v11;
  v19 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313BD8, &qword_23DDA9D88);
  v27 = 2;
  sub_23DD99628(&qword_27E313C30, &qword_27E313C38);
  sub_23DDA4A50();
  (*(v6 + 8))(v9, v5);
  v13 = v22;
  v12 = v23;
  v14 = v21;
  *a2 = v20;
  a2[1] = v13;
  v15 = v19;
  a2[2] = v18;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v12;

  sub_23DD993F0(v15);

  __swift_destroy_boxed_opaque_existential_1(a1);

  sub_23DD99400(v15);
}

uint64_t sub_23DD96320()
{
  v1 = v0[1];
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_23DDA4B70();
  PreliminaryInformation.Validated.hash(into:)(v5);
  return sub_23DDA4BB0();
}

uint64_t sub_23DD96378()
{
  v1 = v0[1];
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_23DDA4B70();
  PreliminaryInformation.Validated.hash(into:)(v5);
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.Suggestion.attributedDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreliminaryInformation.Suggestion(0) + 20);
  v4 = sub_23DDA48C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreliminaryInformation.Suggestion.attributedDescription.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreliminaryInformation.Suggestion(0) + 20);
  v4 = sub_23DDA48C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreliminaryInformation.Suggestion.replacement.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PreliminaryInformation.Suggestion(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PreliminaryInformation.Suggestion.replacement.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for PreliminaryInformation.Suggestion(0) + 24));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t PreliminaryInformation.Suggestion.init(provider:attributedDescription:replacement:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  *a4 = *a1;
  v8 = type metadata accessor for PreliminaryInformation.Suggestion(0);
  v9 = *(v8 + 20);
  v10 = sub_23DDA48C0();
  result = (*(*(v10 - 8) + 32))(&a4[v9], a2, v10);
  v12 = &a4[*(v8 + 24)];
  *v12 = v6;
  v12[1] = v7;
  return result;
}

uint64_t sub_23DD966E4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6D6563616C706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_23DD9674C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD9B76C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD96774(uint64_t a1)
{
  v2 = sub_23DD99868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD967B0(uint64_t a1)
{
  v2 = sub_23DD99868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreliminaryInformation.Suggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313C78, &qword_23DDA9DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD99868();
  sub_23DDA4BF0();
  LOBYTE(v17) = *v3;
  v19 = 0;
  sub_23DD998BC();
  sub_23DDA4AA0();
  if (!v2)
  {
    v11 = type metadata accessor for PreliminaryInformation.Suggestion(0);
    v12 = *(v11 + 20);
    LOBYTE(v17) = 1;
    sub_23DDA48C0();
    sub_23DD993A8(&qword_27E313C90, MEMORY[0x277CC8C40]);
    sub_23DDA4AD0();
    v13 = &v3[*(v11 + 24)];
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v19 = 2;
    sub_23DD7A808();

    sub_23DDA4AD0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PreliminaryInformation.Suggestion.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  sub_23DDA4B90();
  if (v2 != 5)
  {
    MEMORY[0x23EEFF490](v2);
  }

  v3 = type metadata accessor for PreliminaryInformation.Suggestion(0);
  v4 = *(v3 + 20);
  sub_23DDA48C0();
  sub_23DD993A8(&qword_27E313C98, MEMORY[0x277CC8C40]);
  sub_23DDA48F0();
  v5 = &v1[*(v3 + 24)];
  v6 = *v5;
  v7 = *(v5 + 1);

  return sub_23DDA4940();
}

uint64_t PreliminaryInformation.Suggestion.hashValue.getter()
{
  v1 = v0;
  sub_23DDA4B70();
  v2 = *v0;
  sub_23DDA4B90();
  if (v2 != 5)
  {
    MEMORY[0x23EEFF490](v2);
  }

  v3 = type metadata accessor for PreliminaryInformation.Suggestion(0);
  v4 = *(v3 + 20);
  sub_23DDA48C0();
  sub_23DD993A8(&qword_27E313C98, MEMORY[0x277CC8C40]);
  sub_23DDA48F0();
  v5 = &v1[*(v3 + 24)];
  v6 = *v5;
  v7 = *(v5 + 1);
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.Suggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_23DDA48C0();
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313CA0, &qword_23DDA9DD8);
  v28 = *(v30 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v24 - v7;
  v9 = type metadata accessor for PreliminaryInformation.Suggestion(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD99868();
  v14 = v31;
  sub_23DDA4BD0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = a1;
  v15 = v12;
  v16 = v28;
  v17 = v29;
  v34 = 0;
  sub_23DD99910();
  v18 = v30;
  sub_23DDA4A20();
  v25 = v15;
  *v15 = v32;
  LOBYTE(v32) = 1;
  sub_23DD993A8(&qword_27E313CB0, MEMORY[0x277CC8C40]);
  v19 = v5;
  sub_23DDA4A50();
  v20 = v25;
  (*(v27 + 32))(&v25[*(v9 + 20)], v19, v17);
  v34 = 2;
  sub_23DD7A85C();
  sub_23DDA4A50();
  (*(v16 + 8))(v8, v18);
  v21 = v33;
  v22 = (v20 + *(v9 + 24));
  *v22 = v32;
  v22[1] = v21;
  sub_23DD99964(v20, v26, type metadata accessor for PreliminaryInformation.Suggestion);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_23DD999CC(v20, type metadata accessor for PreliminaryInformation.Suggestion);
}

uint64_t sub_23DD96FEC(uint64_t a1)
{
  v3 = v1;
  sub_23DDA4B70();
  v4 = *v1;
  sub_23DDA4B90();
  if (v4 != 5)
  {
    MEMORY[0x23EEFF490](v4);
  }

  v5 = *(a1 + 20);
  sub_23DDA48C0();
  sub_23DD993A8(&qword_27E313C98, MEMORY[0x277CC8C40]);
  sub_23DDA48F0();
  v6 = &v3[*(a1 + 24)];
  v7 = *v6;
  v8 = *(v6 + 1);
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD970D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  sub_23DDA4B90();
  if (v5 != 5)
  {
    MEMORY[0x23EEFF490](v5);
  }

  v6 = *(a2 + 20);
  sub_23DDA48C0();
  sub_23DD993A8(&qword_27E313C98, MEMORY[0x277CC8C40]);
  sub_23DDA48F0();
  v7 = &v4[*(a2 + 24)];
  v8 = *v7;
  v9 = *(v7 + 1);

  return sub_23DDA4940();
}

uint64_t sub_23DD971B0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_23DDA4B70();
  v5 = *v2;
  sub_23DDA4B90();
  if (v5 != 5)
  {
    MEMORY[0x23EEFF490](v5);
  }

  v6 = *(a2 + 20);
  sub_23DDA48C0();
  sub_23DD993A8(&qword_27E313C98, MEMORY[0x277CC8C40]);
  sub_23DDA48F0();
  v7 = &v4[*(a2 + 24)];
  v8 = *v7;
  v9 = *(v7 + 1);
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t sub_23DD972C8()
{
  if (*v0)
  {
    result = 0x726F727245637078;
  }

  else
  {
    result = 0x64696C61766E69;
  }

  *v0;
  return result;
}

uint64_t sub_23DD97304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_23DDA4B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727245637078 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23DDA4B00();

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

uint64_t sub_23DD973E0(uint64_t a1)
{
  v2 = sub_23DD99A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9741C(uint64_t a1)
{
  v2 = sub_23DD99A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD97458(uint64_t a1)
{
  v2 = sub_23DD99AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD97494(uint64_t a1)
{
  v2 = sub_23DD99AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD974D0(uint64_t a1)
{
  v2 = sub_23DD99A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9750C(uint64_t a1)
{
  v2 = sub_23DD99A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreliminaryInformation.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313CB8, &qword_23DDA9DE0);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313CC0, &qword_23DDA9DE8);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313CC8, &qword_23DDA9DF0);
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35);
  v14 = &v24 - v13;
  v15 = v1[1];
  v33 = *v1;
  v34 = v15;
  v16 = v1[2];
  v27 = v1[3];
  v28 = v16;
  v17 = v1[4];
  v25 = v1[5];
  v26 = v17;
  v18 = *(v1 + 48);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23DD99A2C();
  sub_23DDA4BF0();
  if (v18)
  {
    LOBYTE(v36) = 1;
    sub_23DD99A80();
    v20 = v35;
    sub_23DDA4A80();
    v21 = v32;
    sub_23DDA4AC0();
    (*(v31 + 8))(v6, v21);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_23DD99AD4();
    v20 = v35;
    sub_23DDA4A80();
    v36 = v33;
    v37 = v34;
    v38 = v28;
    v39 = v27;
    v40 = v26;
    v41 = v25;
    sub_23DD99B28();
    v22 = v30;
    sub_23DDA4AD0();
    (*(v29 + 8))(v10, v22);
  }

  return (*(v11 + 8))(v14, v20);
}

uint64_t PreliminaryInformation.Error.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (v1[6])
  {
    MEMORY[0x23EEFF490](1);

    return sub_23DDA4940();
  }

  v7 = v1[4];
  v6 = v1[5];
  v9 = v1[2];
  v8 = v1[3];
  MEMORY[0x23EEFF490](0);
  sub_23DDA4940();
  sub_23DDA4940();
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v10 = 3;
      goto LABEL_15;
    }

    if (v7 == 3)
    {
      v10 = 4;
      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      v10 = 0;
      goto LABEL_15;
    }

    if (v7 == 1)
    {
      v10 = 1;
LABEL_15:
      MEMORY[0x23EEFF490](v10);
      goto LABEL_16;
    }
  }

  MEMORY[0x23EEFF490](2);
  sub_23DD982E4(a1, v7);
LABEL_16:

  return sub_23DD982E4(a1, v6);
}

uint64_t PreliminaryInformation.Error.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  sub_23DDA4B70();
  if ((v7 & 1) == 0)
  {
    MEMORY[0x23EEFF490](0);
    sub_23DDA4940();
    sub_23DDA4940();
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v8 = 3;
        goto LABEL_13;
      }

      if (v6 == 3)
      {
        v8 = 4;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v6)
      {
        v8 = 0;
        goto LABEL_13;
      }

      if (v6 == 1)
      {
        v8 = 1;
LABEL_13:
        MEMORY[0x23EEFF490](v8);
        goto LABEL_14;
      }
    }

    MEMORY[0x23EEFF490](2);
    sub_23DD982E4(v10, v6);
LABEL_14:
    sub_23DD982E4(v10, v5);
    return sub_23DDA4BB0();
  }

  MEMORY[0x23EEFF490](1);
  sub_23DDA4940();
  return sub_23DDA4BB0();
}

uint64_t PreliminaryInformation.Error.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313CF0, &qword_23DDA9DF8);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313CF8, &qword_23DDA9E00);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313D00, &qword_23DDA9E08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v44[-v14];
  v16 = a1[3];
  v17 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23DD99A2C();
  v18 = v50;
  sub_23DDA4BD0();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v50 = v12;
  v20 = v48;
  v19 = v49;
  v21 = sub_23DDA4A70();
  v22 = (2 * *(v21 + 16)) | 1;
  v57 = v21;
  v58 = v21 + 32;
  v59 = 0;
  v60 = v22;
  v23 = sub_23DD7C4A8();
  if (v23 == 2 || v59 != v60 >> 1)
  {
    v27 = sub_23DDA49D0();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E312FB8, &qword_23DDA5350) + 48);
    *v29 = &type metadata for PreliminaryInformation.Error;
    sub_23DDA4A00();
    sub_23DDA49C0();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v50 + 8))(v15, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v45 = v23;
  if (v23)
  {
    LOBYTE(v51) = 1;
    sub_23DD99A80();
    v24 = v15;
    v25 = v6;
    sub_23DDA49F0();
    v26 = v50;
    v34 = v19;
    v35 = v24;
    v36 = v25;
    v37 = v20;
    v46 = sub_23DDA4A40();
    v39 = v38;
    (*(v47 + 8))(v36, v37);
    (*(v26 + 8))(v35, v11);
    swift_unknownObjectRelease();
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    LOBYTE(v51) = 0;
    sub_23DD99AD4();
    v32 = v10;
    sub_23DDA49F0();
    v33 = v50;
    v34 = v19;
    sub_23DD99B7C();
    sub_23DDA4A50();
    (*(v46 + 8))(v32, v7);
    (*(v33 + 8))(v15, v11);
    swift_unknownObjectRelease();
    v39 = v52;
    v46 = v51;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v43 = v56;
  }

  *v34 = v46;
  *(v34 + 8) = v39;
  *(v34 + 16) = v40;
  *(v34 + 24) = v41;
  *(v34 + 32) = v42;
  *(v34 + 40) = v43;
  *(v34 + 48) = v45 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_23DD98090()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_23DDA4B70();
  if (v7)
  {
    MEMORY[0x23EEFF490](1);
    sub_23DDA4940();
  }

  else
  {
    MEMORY[0x23EEFF490](0);
    PreliminaryInformation.Validated.hash(into:)(v9);
  }

  return sub_23DDA4BB0();
}

uint64_t sub_23DD98138(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  if (v1[6])
  {
    MEMORY[0x23EEFF490](1);

    return sub_23DDA4940();
  }

  else
  {
    v7 = v1[4];
    v6 = v1[5];
    v8 = *(v1 + 1);
    MEMORY[0x23EEFF490](0);
    return PreliminaryInformation.Validated.hash(into:)(a1);
  }
}

uint64_t sub_23DD981F0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_23DDA4B70();
  if (v7)
  {
    MEMORY[0x23EEFF490](1);
    sub_23DDA4940();
  }

  else
  {
    MEMORY[0x23EEFF490](0);
    PreliminaryInformation.Validated.hash(into:)(v9);
  }

  return sub_23DDA4BB0();
}

uint64_t sub_23DD982C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 1;
}

uint64_t sub_23DD982E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PreliminaryInformation.Suggestion(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x23EEFF490](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = &v7[*(v3 + 24)];
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_23DD99964(v12, v7, type metadata accessor for PreliminaryInformation.Suggestion);
      v16 = *v7;
      sub_23DDA4B90();
      if (v16 != 5)
      {
        MEMORY[0x23EEFF490](v16);
      }

      sub_23DDA48C0();
      sub_23DD993A8(&qword_27E313C98, MEMORY[0x277CC8C40]);
      sub_23DDA48F0();
      v14 = *v11;
      v15 = *(v11 + 1);
      sub_23DDA4940();
      result = sub_23DD999CC(v7, type metadata accessor for PreliminaryInformation.Suggestion);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t _s23AccountsUISupportShared22PreliminaryInformationV10SuggestionV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = type metadata accessor for PreliminaryInformation.Suggestion(0);
  v7 = *(v6 + 20);
  if (sub_23DDA48B0())
  {
    v8 = *(v6 + 24);
    v9 = *&a1[v8];
    v10 = *&a1[v8 + 8];
    v11 = &a2[v8];
    v12 = v9 == *v11 && v10 == *(v11 + 1);
    if (v12 || (sub_23DDA4B00() & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s23AccountsUISupportShared22PreliminaryInformationV9ValidatedV18EmailAddressStatusO2eeoiySbAG_AGtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        v4 = 1;
        v2 = 2;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v2 == 3)
    {
      if (v3 == 3)
      {
        v4 = 1;
        v2 = 3;
        goto LABEL_17;
      }

LABEL_16:
      sub_23DD993F0(*a2);
      sub_23DD993F0(v2);
      v4 = 0;
      goto LABEL_17;
    }

LABEL_10:
    if (v3 >= 4)
    {
      sub_23DD993F0(*a2);
      sub_23DD993F0(v2);
      v4 = sub_23DD92374(v2, v3);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v2)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v2 != 1)
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    goto LABEL_16;
  }

  v2 = 1;
  v4 = 1;
LABEL_17:
  sub_23DD99400(v2);
  sub_23DD99400(v3);
  return v4 & 1;
}

uint64_t _s23AccountsUISupportShared22PreliminaryInformationV9ValidatedV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v4 != v7) && (sub_23DDA4B00() & 1) == 0)
  {
    return 0;
  }

  v12 = v9;
  v13 = v3;
  sub_23DD993F0(v3);
  sub_23DD993F0(v9);
  v10 = _s23AccountsUISupportShared22PreliminaryInformationV9ValidatedV18EmailAddressStatusO2eeoiySbAG_AGtFZ_0(&v13, &v12);
  sub_23DD99400(v12);
  sub_23DD99400(v13);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  return sub_23DD92374(v5, v8);
}

uint64_t _s23AccountsUISupportShared22PreliminaryInformationV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v59 = *(a1 + 32);
  v7 = *(a1 + 48);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v7)
  {
    if (*(a2 + 48))
    {
      v49 = *(a2 + 16);
      v51 = *(a2 + 24);
      v52 = *(a2 + 32);
      v45 = *(a2 + 40);
      if (v3 != v9 || v2 != v8)
      {
        v39 = *a1;
        v40 = *(a1 + 16);
        v48 = *(a2 + 8);
        v41 = *(a1 + 40);
        v42 = *(a1 + 8);
        v43 = sub_23DDA4B00();
        sub_23DD9B890(v39, v42, v40, v5, v59, v41, 1);
        sub_23DD9B890(v9, v48, v49, v10, v13, v12, 1);
        sub_23DD9B8F0(v39, v42, v40, v5, v59, v41, 1);
        sub_23DD9B8F0(v9, v48, v49, v10, v13, v12, 1);
        return v43 & 1;
      }

      v15 = 1;
      v16 = *a1;
      v17 = *(a1 + 16);
      v56 = *(a1 + 24);
      v18 = *(a1 + 40);
      v19 = *(a1 + 8);
      sub_23DD9B890(v3, v2, v4, v56, v59, v6, 1);
      sub_23DD9B890(v16, v19, v49, v10, v52, v12, 1);
      sub_23DD9B8F0(v16, v19, v17, v56, v59, v18, 1);
      v20 = v16;
      v21 = v19;
      v22 = v49;
      v23 = v10;
      v24 = v52;
      v25 = v12;
      v26 = 1;
      goto LABEL_9;
    }
  }

  else if ((*(a2 + 48) & 1) == 0)
  {
    v61[0] = *a1;
    v61[1] = v2;
    v61[2] = v4;
    v61[3] = v5;
    v58 = v5;
    v61[4] = v59;
    v61[5] = v6;
    v60[0] = v9;
    v60[1] = v8;
    v60[2] = v11;
    v60[3] = v10;
    v60[4] = v13;
    v60[5] = v12;
    v30 = v9;
    v31 = v11;
    v50 = v11;
    v32 = v4;
    v46 = v4;
    v47 = v8;
    v33 = v9;
    v44 = v9;
    v34 = v8;
    v35 = v12;
    v36 = v6;
    v37 = v2;
    sub_23DD9B890(v30, v8, v31, v10, v13, v35, 0);
    v54 = v61[0];
    sub_23DD9B890(v61[0], v37, v32, v58, v59, v36, 0);
    sub_23DD9B890(v61[0], v37, v32, v58, v59, v36, 0);
    sub_23DD9B890(v33, v34, v50, v10, v13, v35, 0);
    v15 = _s23AccountsUISupportShared22PreliminaryInformationV9ValidatedV2eeoiySbAE_AEtFZ_0(v61, v60);
    sub_23DD9B8F0(v54, v37, v46, v58, v59, v36, 0);
    sub_23DD9B8F0(v44, v47, v50, v10, v13, v35, 0);
    sub_23DD9B8F0(v44, v47, v50, v10, v13, v35, 0);
    v20 = v54;
    v21 = v37;
    v23 = v58;
    v22 = v46;
    v24 = v59;
    v25 = v36;
    v26 = 0;
LABEL_9:
    sub_23DD9B8F0(v20, v21, v22, v23, v24, v25, v26);
    return v15 & 1;
  }

  v53 = *a1;
  v55 = *(a1 + 8);
  v27 = *(a1 + 16);
  v28 = *(a2 + 8);
  v57 = *(a1 + 24);
  v29 = *(a1 + 40);
  sub_23DD9B890(v3, v2, v4, v57, v59, v6, v7);
  sub_23DD9B890(v9, v28, v11, v10, v13, v12, v14);
  sub_23DD9B8F0(v53, v55, v27, v57, v59, v29, v7);
  sub_23DD9B8F0(v9, v28, v11, v10, v13, v12, v14);
  v15 = 0;
  return v15 & 1;
}

uint64_t _s23AccountsUISupportShared22PreliminaryInformationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23DDA4B00(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23DDA4B00();
    }
  }

  return result;
}

unint64_t sub_23DD98C44()
{
  result = qword_27E313B08;
  if (!qword_27E313B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313B08);
  }

  return result;
}

uint64_t _s23AccountsUISupportShared22PreliminaryInformationV8NextStepO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = type metadata accessor for OAuth.Account(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  Step = type metadata accessor for PreliminaryInformation.NextStep(0);
  v7 = *(*(Step - 8) + 64);
  v8 = MEMORY[0x28223BE20](Step);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v57 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313EB8, &unk_23DDAB550);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v57 - v19;
  v21 = (&v57 + *(v18 + 56) - v19);
  sub_23DD99964(v57, &v57 - v19, type metadata accessor for PreliminaryInformation.NextStep);
  sub_23DD99964(v58, v21, type metadata accessor for PreliminaryInformation.NextStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23DD99964(v20, v15, type metadata accessor for PreliminaryInformation.NextStep);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23DD99340(v21, v5, type metadata accessor for OAuth.Account);
      v55 = *v15 == *v5 && v15[1] == v5[1];
      if (v55 || (sub_23DDA4B00() & 1) != 0)
      {
        v56 = v15[2] == v5[2] && v15[3] == v5[3];
        if (v56 || (sub_23DDA4B00()) && (static OAuth.Kind.== infix(_:_:)(v15 + *(v2 + 24), v5 + *(v2 + 24)))
        {
          sub_23DD999CC(v5, type metadata accessor for OAuth.Account);
          sub_23DD999CC(v15, type metadata accessor for OAuth.Account);
          sub_23DD999CC(v20, type metadata accessor for PreliminaryInformation.NextStep);
          v36 = 1;
          return v36 & 1;
        }
      }

      sub_23DD999CC(v5, type metadata accessor for OAuth.Account);
      sub_23DD999CC(v15, type metadata accessor for OAuth.Account);
      sub_23DD999CC(v20, type metadata accessor for PreliminaryInformation.NextStep);
      goto LABEL_13;
    }

    sub_23DD999CC(v15, type metadata accessor for OAuth.Account);
LABEL_12:
    sub_23DD9B964(v20);
LABEL_13:
    v36 = 0;
    return v36 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_23DD99964(v20, v10, type metadata accessor for PreliminaryInformation.NextStep);
    v37 = v10[5];
    v87 = v10[4];
    v88 = v37;
    v38 = v10[7];
    v89 = v10[6];
    v90 = v38;
    v39 = v10[1];
    v83 = *v10;
    v84 = v39;
    v40 = v10[3];
    v85 = v10[2];
    v86 = v40;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = v21[5];
      v42 = v21[3];
      v79 = v21[4];
      v80 = v41;
      v43 = v21[5];
      v44 = v21[7];
      v81 = v21[6];
      v82 = v44;
      v45 = v21[1];
      v75 = *v21;
      v76 = v45;
      v46 = v21[3];
      v48 = *v21;
      v47 = v21[1];
      v77 = v21[2];
      v78 = v46;
      v49 = v10[5];
      v71 = v10[4];
      v72 = v49;
      v50 = v10[7];
      v73 = v10[6];
      v74 = v50;
      v51 = v10[1];
      v67 = *v10;
      v68 = v51;
      v52 = v10[3];
      v69 = v10[2];
      v70 = v52;
      v63 = v79;
      v64 = v43;
      v53 = v21[7];
      v65 = v81;
      v66 = v53;
      v59 = v48;
      v60 = v47;
      v61 = v77;
      v62 = v42;
      v36 = _s23AccountsUISupportShared15PasswordAccountO7UnknownV2eeoiySbAE_AEtFZ_0(&v67, &v59);
      sub_23DD8BE0C(&v75);
      sub_23DD8BE0C(&v83);
      goto LABEL_9;
    }

    sub_23DD8BE0C(&v83);
    goto LABEL_12;
  }

  sub_23DD99964(v20, v13, type metadata accessor for PreliminaryInformation.NextStep);
  v23 = *(v13 + 5);
  v87 = *(v13 + 4);
  v88 = v23;
  v89 = *(v13 + 6);
  LOBYTE(v90) = v13[112];
  v24 = *(v13 + 1);
  v83 = *v13;
  v84 = v24;
  v25 = *(v13 + 3);
  v85 = *(v13 + 2);
  v86 = v25;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23DD74C44(&v83);
    goto LABEL_12;
  }

  v26 = v21[5];
  v27 = v21[3];
  v79 = v21[4];
  v80 = v26;
  v28 = v21[5];
  v81 = v21[6];
  v29 = v21[1];
  v75 = *v21;
  v76 = v29;
  v30 = v21[3];
  v32 = *v21;
  v31 = v21[1];
  v77 = v21[2];
  v78 = v30;
  v33 = *(v13 + 5);
  v71 = *(v13 + 4);
  v72 = v33;
  v73 = *(v13 + 6);
  v34 = *(v13 + 1);
  v67 = *v13;
  v68 = v34;
  v35 = *(v13 + 3);
  v69 = *(v13 + 2);
  v70 = v35;
  v63 = v79;
  v64 = v28;
  v65 = v21[6];
  v59 = v32;
  v60 = v31;
  LOBYTE(v82) = *(v21 + 112);
  LOBYTE(v74) = v13[112];
  LOBYTE(v66) = *(v21 + 112);
  v61 = v77;
  v62 = v27;
  v36 = _s23AccountsUISupportShared15PasswordAccountO5KnownV2eeoiySbAE_AEtFZ_0(&v67, &v59);
  sub_23DD74C44(&v75);
  sub_23DD74C44(&v83);
LABEL_9:
  sub_23DD999CC(v20, type metadata accessor for PreliminaryInformation.NextStep);
  return v36 & 1;
}

unint64_t sub_23DD991F0()
{
  result = qword_27E313B38;
  if (!qword_27E313B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313B38);
  }

  return result;
}

unint64_t sub_23DD99244()
{
  result = qword_27E313B40;
  if (!qword_27E313B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313B40);
  }

  return result;
}

unint64_t sub_23DD99298()
{
  result = qword_27E313B48;
  if (!qword_27E313B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313B48);
  }

  return result;
}

unint64_t sub_23DD992EC()
{
  result = qword_27E313B50;
  if (!qword_27E313B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313B50);
  }

  return result;
}

uint64_t sub_23DD99340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD993A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23DD993F0(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_23DD99400(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_23DD99410()
{
  result = qword_27E313BB8;
  if (!qword_27E313BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313BB8);
  }

  return result;
}

unint64_t sub_23DD99464()
{
  result = qword_27E313BC0;
  if (!qword_27E313BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313BC0);
  }

  return result;
}

unint64_t sub_23DD994B8()
{
  result = qword_27E313BC8;
  if (!qword_27E313BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313BC8);
  }

  return result;
}

unint64_t sub_23DD9950C()
{
  result = qword_27E313BD0;
  if (!qword_27E313BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313BD0);
  }

  return result;
}

unint64_t sub_23DD99580()
{
  result = qword_27E313BF0;
  if (!qword_27E313BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313BF0);
  }

  return result;
}

unint64_t sub_23DD995D4()
{
  result = qword_27E313BF8;
  if (!qword_27E313BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313BF8);
  }

  return result;
}

uint64_t sub_23DD99628(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E313BD8, &qword_23DDA9D88);
    sub_23DD993A8(a2, type metadata accessor for PreliminaryInformation.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DD996C4()
{
  result = qword_27E313C48;
  if (!qword_27E313C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313C48);
  }

  return result;
}

unint64_t sub_23DD99718()
{
  result = qword_27E313C50;
  if (!qword_27E313C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313C50);
  }

  return result;
}

unint64_t sub_23DD9976C()
{
  result = qword_27E313C58;
  if (!qword_27E313C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313C58);
  }

  return result;
}

unint64_t sub_23DD997C0()
{
  result = qword_27E313C68;
  if (!qword_27E313C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313C68);
  }

  return result;
}

unint64_t sub_23DD99814()
{
  result = qword_27E313C70;
  if (!qword_27E313C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313C70);
  }

  return result;
}

unint64_t sub_23DD99868()
{
  result = qword_27E313C80;
  if (!qword_27E313C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313C80);
  }

  return result;
}

unint64_t sub_23DD998BC()
{
  result = qword_27E313C88;
  if (!qword_27E313C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313C88);
  }

  return result;
}

unint64_t sub_23DD99910()
{
  result = qword_27E313CA8;
  if (!qword_27E313CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313CA8);
  }

  return result;
}

uint64_t sub_23DD99964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD999CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23DD99A2C()
{
  result = qword_27E313CD0;
  if (!qword_27E313CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313CD0);
  }

  return result;
}

unint64_t sub_23DD99A80()
{
  result = qword_27E313CD8;
  if (!qword_27E313CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313CD8);
  }

  return result;
}

unint64_t sub_23DD99AD4()
{
  result = qword_27E313CE0;
  if (!qword_27E313CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313CE0);
  }

  return result;
}

unint64_t sub_23DD99B28()
{
  result = qword_27E313CE8;
  if (!qword_27E313CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313CE8);
  }

  return result;
}

unint64_t sub_23DD99B7C()
{
  result = qword_27E313D08;
  if (!qword_27E313D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D08);
  }

  return result;
}

unint64_t sub_23DD99BD4()
{
  result = qword_27E313D10;
  if (!qword_27E313D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D10);
  }

  return result;
}

unint64_t sub_23DD99C74()
{
  result = qword_27E313D20;
  if (!qword_27E313D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D20);
  }

  return result;
}

unint64_t sub_23DD99CCC()
{
  result = qword_27E313D28;
  if (!qword_27E313D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D28);
  }

  return result;
}

unint64_t sub_23DD99D6C()
{
  result = qword_27E313D38;
  if (!qword_27E313D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D38);
  }

  return result;
}

unint64_t sub_23DD99DC0(uint64_t a1)
{
  result = sub_23DD99DE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DD99DE8()
{
  result = qword_27E313D40;
  if (!qword_27E313D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D40);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DD99E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23DD99E90(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23DD99F30()
{
  result = type metadata accessor for OAuth.Account(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23AccountsUISupportShared22PreliminaryInformationV9ValidatedV18EmailAddressStatusO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23DD99FD0(uint64_t a1, int a2)
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

uint64_t sub_23DD9A018(uint64_t result, int a2, int a3)
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

uint64_t sub_23DD9A080(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DD9A0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_23DD9A130(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_23DD9A188()
{
  sub_23DD9A214();
  if (v0 <= 0x3F)
  {
    sub_23DDA48C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DD9A214()
{
  if (!qword_2814FD3C0[0])
  {
    v0 = sub_23DDA49A0();
    if (!v1)
    {
      atomic_store(v0, qword_2814FD3C0);
    }
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23DD9A28C(uint64_t a1, unsigned int a2)
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

uint64_t sub_23DD9A2D4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DD9A448()
{
  result = qword_27E313D58;
  if (!qword_27E313D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D58);
  }

  return result;
}

unint64_t sub_23DD9A4A0()
{
  result = qword_27E313D60;
  if (!qword_27E313D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D60);
  }

  return result;
}

unint64_t sub_23DD9A4F8()
{
  result = qword_27E313D68;
  if (!qword_27E313D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D68);
  }

  return result;
}

unint64_t sub_23DD9A550()
{
  result = qword_27E313D70;
  if (!qword_27E313D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D70);
  }

  return result;
}

unint64_t sub_23DD9A5A8()
{
  result = qword_27E313D78;
  if (!qword_27E313D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D78);
  }

  return result;
}

unint64_t sub_23DD9A600()
{
  result = qword_27E313D80;
  if (!qword_27E313D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D80);
  }

  return result;
}

unint64_t sub_23DD9A658()
{
  result = qword_27E313D88;
  if (!qword_27E313D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D88);
  }

  return result;
}

unint64_t sub_23DD9A6B0()
{
  result = qword_27E313D90;
  if (!qword_27E313D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D90);
  }

  return result;
}

unint64_t sub_23DD9A708()
{
  result = qword_27E313D98;
  if (!qword_27E313D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313D98);
  }

  return result;
}

unint64_t sub_23DD9A760()
{
  result = qword_27E313DA0;
  if (!qword_27E313DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DA0);
  }

  return result;
}

unint64_t sub_23DD9A7B8()
{
  result = qword_27E313DA8;
  if (!qword_27E313DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DA8);
  }

  return result;
}

unint64_t sub_23DD9A810()
{
  result = qword_27E313DB0;
  if (!qword_27E313DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DB0);
  }

  return result;
}

unint64_t sub_23DD9A868()
{
  result = qword_27E313DB8;
  if (!qword_27E313DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DB8);
  }

  return result;
}

unint64_t sub_23DD9A8C0()
{
  result = qword_27E313DC0;
  if (!qword_27E313DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DC0);
  }

  return result;
}

unint64_t sub_23DD9A918()
{
  result = qword_27E313DC8;
  if (!qword_27E313DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DC8);
  }

  return result;
}

unint64_t sub_23DD9A970()
{
  result = qword_27E313DD0;
  if (!qword_27E313DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DD0);
  }

  return result;
}

unint64_t sub_23DD9A9C8()
{
  result = qword_27E313DD8;
  if (!qword_27E313DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DD8);
  }

  return result;
}

unint64_t sub_23DD9AA20()
{
  result = qword_27E313DE0;
  if (!qword_27E313DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DE0);
  }

  return result;
}

unint64_t sub_23DD9AA78()
{
  result = qword_27E313DE8;
  if (!qword_27E313DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DE8);
  }

  return result;
}

unint64_t sub_23DD9AAD0()
{
  result = qword_27E313DF0;
  if (!qword_27E313DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DF0);
  }

  return result;
}

unint64_t sub_23DD9AB28()
{
  result = qword_27E313DF8;
  if (!qword_27E313DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313DF8);
  }

  return result;
}

unint64_t sub_23DD9AB80()
{
  result = qword_27E313E00;
  if (!qword_27E313E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E00);
  }

  return result;
}

unint64_t sub_23DD9ABD8()
{
  result = qword_27E313E08;
  if (!qword_27E313E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E08);
  }

  return result;
}

unint64_t sub_23DD9AC30()
{
  result = qword_27E313E10;
  if (!qword_27E313E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E10);
  }

  return result;
}

unint64_t sub_23DD9AC88()
{
  result = qword_27E313E18;
  if (!qword_27E313E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E18);
  }

  return result;
}

unint64_t sub_23DD9ACE0()
{
  result = qword_27E313E20;
  if (!qword_27E313E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E20);
  }

  return result;
}

unint64_t sub_23DD9AD38()
{
  result = qword_27E313E28;
  if (!qword_27E313E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E28);
  }

  return result;
}

unint64_t sub_23DD9AD90()
{
  result = qword_27E313E30;
  if (!qword_27E313E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E30);
  }

  return result;
}

unint64_t sub_23DD9ADE8()
{
  result = qword_27E313E38;
  if (!qword_27E313E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E38);
  }

  return result;
}

unint64_t sub_23DD9AE40()
{
  result = qword_27E313E40;
  if (!qword_27E313E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E40);
  }

  return result;
}

unint64_t sub_23DD9AE98()
{
  result = qword_27E313E48;
  if (!qword_27E313E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E48);
  }

  return result;
}

unint64_t sub_23DD9AEF0()
{
  result = qword_27E313E50;
  if (!qword_27E313E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E50);
  }

  return result;
}

unint64_t sub_23DD9AF48()
{
  result = qword_27E313E58;
  if (!qword_27E313E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E58);
  }

  return result;
}

unint64_t sub_23DD9AFA0()
{
  result = qword_27E313E60;
  if (!qword_27E313E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E60);
  }

  return result;
}

unint64_t sub_23DD9AFF8()
{
  result = qword_27E313E68;
  if (!qword_27E313E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E68);
  }

  return result;
}

unint64_t sub_23DD9B050()
{
  result = qword_27E313E70;
  if (!qword_27E313E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E70);
  }

  return result;
}

unint64_t sub_23DD9B0A8()
{
  result = qword_27E313E78;
  if (!qword_27E313E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E78);
  }

  return result;
}

unint64_t sub_23DD9B100()
{
  result = qword_27E313E80;
  if (!qword_27E313E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E80);
  }

  return result;
}

unint64_t sub_23DD9B158()
{
  result = qword_27E313E88;
  if (!qword_27E313E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E88);
  }

  return result;
}

unint64_t sub_23DD9B1B0()
{
  result = qword_27E313E90;
  if (!qword_27E313E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E90);
  }

  return result;
}

unint64_t sub_23DD9B208()
{
  result = qword_27E313E98;
  if (!qword_27E313E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313E98);
  }

  return result;
}

unint64_t sub_23DD9B260()
{
  result = qword_27E313EA0;
  if (!qword_27E313EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313EA0);
  }

  return result;
}

unint64_t sub_23DD9B2B8()
{
  result = qword_27E313EA8;
  if (!qword_27E313EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313EA8);
  }

  return result;
}

unint64_t sub_23DD9B310()
{
  result = qword_27E313EB0;
  if (!qword_27E313EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E313EB0);
  }

  return result;
}

uint64_t sub_23DD9B364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687475616FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6363416E776F6E6BLL && a2 == 0xEC000000746E756FLL || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416E776F6E6B6E75 && a2 == 0xEE00746E756F6363)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD9B484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023DDB26A0 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023DDB26C0 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1685024615 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD9B640(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6974696E6173 && a2 == 0xE900000000000064;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023DDB26E0 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023DDB2700 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD9B76C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_23DDA4B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023DDB2720 == a2 || (sub_23DDA4B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_23DDA4B00();

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

uint64_t sub_23DD9B890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {

    sub_23DD993F0(a5);
    v7 = vars8;
  }
}

uint64_t sub_23DD9B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {

    sub_23DD99400(a5);
  }

  return result;
}

uint64_t sub_23DD9B964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E313EB8, &unk_23DDAB550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DD9B9E0(uint64_t a1)
{
  v2 = sub_23DD9C3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9BA1C(uint64_t a1)
{
  v2 = sub_23DD9C3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9BA58()
{
  v1 = *v0;
  v2 = 0x65676E6168637865;
  v3 = 0x656C676F6F67;
  v4 = 0x64756F6C4369;
  if (v1 != 3)
  {
    v4 = 0x6F6F686179;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7106401;
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

uint64_t sub_23DD9BAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23DD9D4D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23DD9BB08(uint64_t a1)
{
  v2 = sub_23DD9C2AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9BB44(uint64_t a1)
{
  v2 = sub_23DD9C2AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9BB80(uint64_t a1)
{
  v2 = sub_23DD9C450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DD9BBBC(uint64_t a1)
{
  v2 = sub_23DD9C450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DD9BBF8(uint64_t a1)
{
  v2 = sub_23DD9C3A8();

  return MEMORY[0x2821FE718](a1, v2);
}