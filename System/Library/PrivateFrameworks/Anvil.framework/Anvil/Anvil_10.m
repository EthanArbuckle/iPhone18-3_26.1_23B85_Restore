uint64_t sub_1DD9DE8D8()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DE9AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA040CC();
  *a2 = result;
  return result;
}

void sub_1DD9DE9DC(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xED00007865646E69;
  v5 = 0x5F746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x61746C6564;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DEA70()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x5F746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x61746C6564;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9DEB00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA040CC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DEB28(uint64_t a1)
{
  v2 = sub_1DDA05AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DEB64(uint64_t a1)
{
  v2 = sub_1DDA05AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DEBF0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DECC8()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DED8C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DEE60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0435C();
  *a2 = result;
  return result;
}

void sub_1DD9DEE90(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xED00007865646E69;
  v5 = 0x5F746E65746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9DEF24()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x5F746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9DEFB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0435C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DEFDC(uint64_t a1)
{
  v2 = sub_1DDA05A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DF018(uint64_t a1)
{
  v2 = sub_1DDA05A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9DF098@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_1DDA04118(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

uint64_t sub_1DD9DF0F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  MEMORY[0x1E12B8440](v3);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF178()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9DF1E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  MEMORY[0x1E12B8440](v3);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF26C(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  v6 = a1[3];
  return sub_1DDA15440();
}

uint64_t sub_1DD9DF2CC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF3C4()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DF4A8()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF59C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA043A8();
  *a2 = result;
  return result;
}

void sub_1DD9DF5CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0x695F6563696F6863;
  v5 = 0xED00007865646E69;
  v6 = 0x5F746E65746E6F63;
  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (v2 != 3)
  {
    v8 = 0x697461746F6E6E61;
    v7 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646E695F6D657469;
    v3 = 0xEA00000000007865;
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

uint64_t sub_1DD9DF680()
{
  v1 = *v0;
  v2 = 0x695F6563696F6863;
  v3 = 0x5F746E65746E6F63;
  v4 = 0x7865646E69;
  if (v1 != 3)
  {
    v4 = 0x697461746F6E6E61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646E695F6D657469;
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

uint64_t sub_1DD9DF730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA043A8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DF758(uint64_t a1)
{
  v2 = sub_1DDA04968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DF794(uint64_t a1)
{
  v2 = sub_1DDA04968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DF7E8(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  MEMORY[0x1E12B8440](v1[3]);
  v3 = v1 + *(a1 + 32);
  sub_1DD9E9C1C();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF870(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  MEMORY[0x1E12B8440](v2[2]);
  MEMORY[0x1E12B8440](v2[3]);
  v4 = v2 + *(a2 + 32);
  return sub_1DD9E9C1C();
}

uint64_t sub_1DD9DF8D4(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  MEMORY[0x1E12B8440](v2[2]);
  MEMORY[0x1E12B8440](v2[3]);
  v4 = v2 + *(a2 + 32);
  sub_1DD9E9C1C();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9DF95C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA043F4();
  *a2 = result;
  return result;
}

uint64_t sub_1DD9DF98C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA043F4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DF9B4(uint64_t a1)
{
  v2 = sub_1DDA048C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DF9F0(uint64_t a1)
{
  v2 = sub_1DDA048C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DFA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 0x746E656D75677261;
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 0x746E656D75677261;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9DFB88()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DFC3C()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9DFCDC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9DFD8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA04440();
  *a2 = result;
  return result;
}

void sub_1DD9DFDBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xEA00000000007865;
  v5 = 0x646E695F6D657469;
  if (v2 != 1)
  {
    v5 = 0x746E656D75677261;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9DFE2C()
{
  v1 = 0x646E695F6D657469;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

uint64_t sub_1DD9DFE98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA04440();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9DFEC0(uint64_t a1)
{
  v2 = sub_1DDA0486C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9DFEFC(uint64_t a1)
{
  v2 = sub_1DDA0486C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9DFF7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 0x61746C6564;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 0x61746C6564;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9E0084()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0130()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E01C8()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA04684();
  *a2 = result;
  return result;
}

uint64_t sub_1DD9E02A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA04684();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9E02C8(uint64_t a1)
{
  v2 = sub_1DDA04770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E0304(uint64_t a1)
{
  v2 = sub_1DDA04770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E0384(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646E695F6D657469;
  v4 = 0xEA00000000007865;
  if (v2 != 1)
  {
    v3 = 0x74706D6F7270;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x695F6563696F6863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC0000007865646ELL;
  }

  v7 = 0x646E695F6D657469;
  v8 = 0xEA00000000007865;
  if (*a2 != 1)
  {
    v7 = 0x74706D6F7270;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x695F6563696F6863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC0000007865646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9E048C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0538()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E05D0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA046D0();
  *a2 = result;
  return result;
}

void sub_1DD9E06A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0xEA00000000007865;
  v5 = 0x646E695F6D657469;
  if (v2 != 1)
  {
    v5 = 0x74706D6F7270;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x695F6563696F6863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9E0710()
{
  v1 = 0x646E695F6D657469;
  if (*v0 != 1)
  {
    v1 = 0x74706D6F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F6563696F6863;
  }
}

uint64_t sub_1DD9E0774@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA046D0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9E079C(uint64_t a1)
{
  v2 = sub_1DDA0471C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E07D8(uint64_t a1)
{
  v2 = sub_1DDA0471C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E0858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_1DDA0448C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_1DD9E0898()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0910()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](v1);

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9E0974()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DDA15570();
  MEMORY[0x1E12B8440](v1);
  MEMORY[0x1E12B8440](v2);
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E09E8(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440();
  }
}

uint64_t sub_1DD9E0A40()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0B08()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E0BBC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA04BB4();
  *a2 = result;
  return result;
}

void sub_1DD9E0CB0(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0x7865646E69;
  if (*v1 != 2)
  {
    v4 = 0x6567616D69;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1DD9E0D34()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x7865646E69;
  if (*v0 != 2)
  {
    v2 = 0x6567616D69;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9E0DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA04BB4();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9E0DDC(uint64_t a1)
{
  v2 = sub_1DD9FFC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E0E18(uint64_t a1)
{
  v2 = sub_1DD9FFC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E0E6C(uint64_t a1)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v1);
  MEMORY[0x1E12B8440](v1[1]);
  MEMORY[0x1E12B8440](v1[2]);
  v3 = *(a1 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E0F30(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  MEMORY[0x1E12B8440](v2[2]);
  v4 = *(a2 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9E0FD4(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](v2[1]);
  MEMORY[0x1E12B8440](v2[2]);
  v4 = *(a2 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E10D8()
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  MEMORY[0x1E12B8440](*(v0 + 8));
  if (*(v0 + 24) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](v1);
  }

  v2 = *(type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0) + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E11CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E60, &qword_1DDA1E1C0);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DD9FFBD8();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v29 = 0;
  v18 = v23;
  *v15 = sub_1DDA152B0();
  v28 = 1;
  *(v15 + 1) = sub_1DDA152B0();
  v27 = 2;
  *(v15 + 2) = sub_1DDA15250();
  v15[24] = v19 & 1;
  v26 = 3;
  sub_1DD9E4B98(&qword_1ECD83E70, type metadata accessor for FileGeneratorCall.File);
  v20 = v24;
  sub_1DDA152C0();
  (*(v18 + 8))(v11, v20);
  sub_1DD9FEFD0(v7, &v15[*(v12 + 28)], type metadata accessor for FileGeneratorCall.File);
  sub_1DD9FF500(v15, v22, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1DD9FF568(v15, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
}

uint64_t sub_1DD9E1540()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E1604()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E16B4()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E1774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA04C00();
  *a2 = result;
  return result;
}

void sub_1DD9E17A4(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = 0xE500000000000000;
  v5 = 0x7865646E69;
  if (*v1 != 2)
  {
    v5 = 1701603686;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9E1824()
{
  v1 = 0x695F6563696F6863;
  v2 = 0x7865646E69;
  if (*v0 != 2)
  {
    v2 = 1701603686;
  }

  if (*v0)
  {
    v1 = 0x646E695F6D657469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9E18A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA04C00();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9E18C8(uint64_t a1)
{
  v2 = sub_1DD9FFBD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E1904(uint64_t a1)
{
  v2 = sub_1DD9FFBD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E195C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](*(v2 + 8));
  if (*(v2 + 24) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v4 = *(v2 + 16);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](v4);
  }

  v5 = *(a2 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9E1A34(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  MEMORY[0x1E12B8440](*(v2 + 8));
  if (*(v2 + 24) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v4 = *(v2 + 16);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](v4);
  }

  v5 = *(a2 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E1B24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000023;
  }

  else
  {
    v4 = 0x6E6F73616572;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0x80000001DDA268A0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000023;
  }

  else
  {
    v6 = 0x6E6F73616572;
  }

  if (*a2)
  {
    v7 = 0x80000001DDA268A0;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

uint64_t sub_1DD9E1BCC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E1C50()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E1CC0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9E1D4C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DDA268A0;
  v3 = 0x6E6F73616572;
  if (*v1)
  {
    v3 = 0xD000000000000023;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DD9E1D8C()
{
  if (*v0)
  {
    result = 0xD000000000000023;
  }

  else
  {
    result = 0x6E6F73616572;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9E1DD4(uint64_t a1)
{
  v2 = sub_1DDA05F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E1E10(uint64_t a1)
{
  v2 = sub_1DDA05F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E1E4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD928DC0(a2, a3);
  sub_1DDA14BC0();

  if (!a5)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9E1FDC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DD9E2028@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA04C4C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DD9E2058@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 <= 1)
  {
    if (!v3)
    {
      *a1 = 0x6974617265646F6DLL;
      *(a1 + 8) = 0xEA00000000006E6FLL;
      return sub_1DD928DC0(v2, v3);
    }

    if (v3 == 1)
    {
      *a1 = 0x726568746FLL;
      *(a1 + 8) = 0xE500000000000000;
      return sub_1DD928DC0(v2, v3);
    }

LABEL_13:
    v5 = *v1;
    v6 = v1[1];
    *a1 = v2;
    *(a1 + 8) = v3;
    return sub_1DD928DC0(v2, v3);
  }

  if (v3 == 2)
  {
    strcpy(a1, "content_filter");
    *(a1 + 15) = -18;
    return sub_1DD928DC0(v2, v3);
  }

  if (v3 == 3)
  {
    *a1 = 0xD00000000000001BLL;
    *(a1 + 8) = 0x80000001DDA28030;
    return sub_1DD928DC0(v2, v3);
  }

  if (v3 != 4)
  {
    goto LABEL_13;
  }

  *a1 = 0xD00000000000001CLL;
  *(a1 + 8) = 0x80000001DDA28010;
  return sub_1DD928DC0(v2, v3);
}

uint64_t sub_1DD9E2150@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA05194(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9E2180()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DDA15570();
  sub_1DD9E1E4C(v6, v1, v2, v4, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E21EC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DDA15570();
  sub_1DD9E1E4C(v6, v1, v2, v4, v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E2248(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (sub_1DD9631B8(*a1, a1[1], *a2, a2[1]))
  {
    if (v2)
    {
      if (v4 && (v3 == v5 && v2 == v4 || (sub_1DDA15440() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9E22D0()
{
  if (*v0)
  {
    result = 0x6567617373656DLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9E2300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9E23D4(uint64_t a1)
{
  v2 = sub_1DDA063B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E2410(uint64_t a1)
{
  v2 = sub_1DDA063B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E2490(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D80, &unk_1DDA1E178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9F3B38();
  sub_1DDA15650();
  v11 = *v3;
  v16[15] = 0;
  sub_1DDA15370();
  if (!v2)
  {
    v12 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
    v13 = *(v12 + 20);
    v16[14] = 1;
    sub_1DDA13680();
    sub_1DD9E4B98(&qword_1ECD829A0, MEMORY[0x1E6969530]);
    sub_1DDA15330();
    v14 = *(v3 + *(v12 + 24));
    v16[13] = 2;
    sub_1DDA15370();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9E2678()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  MEMORY[0x1E12B8440](*v0);
  v10 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  sub_1DD90ADB4(v0 + *(v10 + 20), v9, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v2 + 8))(v5, v1);
  }

  return MEMORY[0x1E12B8440](*(v0 + *(v10 + 24)));
}

uint64_t sub_1DD9E2890()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v0);
  v10 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  sub_1DD90ADB4(v0 + *(v10 + 20), v9, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v2 + 8))(v5, v1);
  }

  MEMORY[0x1E12B8440](*(v0 + *(v10 + 24)));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E2AB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D70, &qword_1DDA1E170);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 20);
  v17 = sub_1DDA13680();
  v18 = *(*(v17 - 8) + 56);
  v33 = v16;
  v18(v15 + v16, 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1DD9F3B38();
  v21 = v31;
  sub_1DDA15620();
  if (v21)
  {
    v25 = v33;
    __swift_destroy_boxed_opaque_existential_1(v32);
    return sub_1DD90D378(v15 + v25, &qword_1ECD82838, &unk_1DDA185F0);
  }

  else
  {
    v22 = v6;
    v24 = v29;
    v23 = v30;
    v36 = 0;
    *v15 = sub_1DDA152B0();
    v35 = 1;
    sub_1DD9E4B98(&qword_1ECD82990, MEMORY[0x1E6969530]);
    sub_1DDA15260();
    sub_1DD90AE1C(v22, v15 + v33, &qword_1ECD82838, &unk_1DDA185F0);
    v34 = 2;
    v26 = sub_1DDA152B0();
    (*(v24 + 8))(v10, v23);
    *(v15 + *(v11 + 24)) = v26;
    sub_1DD9FF500(v15, v28, type metadata accessor for ChatChunk.RateLimits.Limits);
    __swift_destroy_boxed_opaque_existential_1(v32);
    return sub_1DD9FF568(v15, type metadata accessor for ChatChunk.RateLimits.Limits);
  }
}

uint64_t sub_1DD9E2E2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84250, &qword_1DDA1E358);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA067B4();
  sub_1DDA15650();
  v18 = 0;
  type metadata accessor for ChatChunk.RateLimits.Limits(0);
  sub_1DD9E4B98(&qword_1ECD84258, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DDA15330();
  if (!v1)
  {
    v9 = type metadata accessor for ChatChunk.RateLimits(0);
    v10 = v9[5];
    v17 = 1;
    sub_1DDA15330();
    v11 = v9[6];
    v16 = 2;
    sub_1DDA15330();
    v12 = v9[7];
    v15 = 3;
    sub_1DDA15330();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DD9E3060()
{
  v1 = v0;
  v2 = sub_1DDA13680();
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v64 = &v61 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v16 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v66 = (&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v19);
  v71 = (&v61 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v69 = (&v61 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v61 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v72 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v70 = &v61 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v61 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v61 - v36;
  v73 = v1;
  sub_1DD90ADB4(v1, &v61 - v36, &qword_1ECD82D10, &qword_1DDA185E0);
  v38 = *(v17 + 48);
  if (v38(v37, 1, v16) == 1)
  {
    sub_1DDA15590();
    v39 = v67;
    v40 = v68;
    v41 = v73;
  }

  else
  {
    sub_1DD9FEFD0(v37, v26, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v26);
    sub_1DD90ADB4(v26 + *(v16 + 20), v15, &qword_1ECD82838, &unk_1DDA185F0);
    v39 = v67;
    v40 = v68;
    if ((*(v68 + 48))(v15, 1, v67) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v42 = *(v40 + 32);
      v62 = v38;
      v43 = v40;
      v44 = v74;
      v42(v74, v15, v39);
      sub_1DDA15590();
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
      sub_1DDA14AD0();
      (*(v43 + 8))(v44, v39);
      v40 = v43;
      v38 = v62;
    }

    v41 = v73;
    MEMORY[0x1E12B8440](*(v26 + *(v16 + 24)));
    sub_1DD9FF568(v26, type metadata accessor for ChatChunk.RateLimits.Limits);
  }

  v45 = type metadata accessor for ChatChunk.RateLimits(0);
  sub_1DD90ADB4(v41 + v45[5], v35, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v38(v35, 1, v16) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v46 = v35;
    v47 = v69;
    sub_1DD9FEFD0(v46, v69, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v47);
    v48 = v63;
    sub_1DD90ADB4(v47 + *(v16 + 20), v63, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v40 + 48))(v48, 1, v39) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v49 = v74;
      (*(v40 + 32))(v74, v48, v39);
      sub_1DDA15590();
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
      sub_1DDA14AD0();
      (*(v40 + 8))(v49, v39);
    }

    v50 = v69;
    MEMORY[0x1E12B8440](*(v69 + *(v16 + 24)));
    sub_1DD9FF568(v50, type metadata accessor for ChatChunk.RateLimits.Limits);
  }

  v51 = v70;
  sub_1DD90ADB4(v41 + v45[6], v70, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v38(v51, 1, v16) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v52 = v71;
    sub_1DD9FEFD0(v51, v71, type metadata accessor for ChatChunk.RateLimits.Limits);
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*v52);
    v53 = v64;
    sub_1DD90ADB4(v52 + *(v16 + 20), v64, &qword_1ECD82838, &unk_1DDA185F0);
    if ((*(v40 + 48))(v53, 1, v39) == 1)
    {
      sub_1DDA15590();
    }

    else
    {
      v54 = v74;
      (*(v40 + 32))(v74, v53, v39);
      sub_1DDA15590();
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
      sub_1DDA14AD0();
      (*(v40 + 8))(v54, v39);
    }

    v55 = v71;
    MEMORY[0x1E12B8440](*(v71 + *(v16 + 24)));
    sub_1DD9FF568(v55, type metadata accessor for ChatChunk.RateLimits.Limits);
  }

  v56 = v72;
  sub_1DD90ADB4(v41 + v45[7], v72, &qword_1ECD82D10, &qword_1DDA185E0);
  if (v38(v56, 1, v16) == 1)
  {
    return sub_1DDA15590();
  }

  v58 = v66;
  sub_1DD9FEFD0(v56, v66, type metadata accessor for ChatChunk.RateLimits.Limits);
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*v58);
  v59 = v65;
  sub_1DD90ADB4(v58 + *(v16 + 20), v65, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v40 + 48))(v59, 1, v39) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    v60 = v74;
    (*(v40 + 32))(v74, v59, v39);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v40 + 8))(v60, v39);
  }

  MEMORY[0x1E12B8440](*(v58 + *(v16 + 24)));
  return sub_1DD9FF568(v58, type metadata accessor for ChatChunk.RateLimits.Limits);
}

uint64_t sub_1DD9E3A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v40 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v34 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84238, &qword_1DDA1E350);
  v39 = *(v41 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v34 - v12;
  v14 = type metadata accessor for ChatChunk.RateLimits(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v21 = v15[7];
  v20(&v18[v21], 1, 1, v19);
  v22 = v15[8];
  v20(&v18[v22], 1, 1, v19);
  v23 = v15[9];
  v43 = v18;
  v20(&v18[v23], 1, 1, v19);
  v24 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_1DDA067B4();
  v25 = v44;
  sub_1DDA15620();
  if (v25)
  {
    v26 = v43;
  }

  else
  {
    v44 = v21;
    v34 = v23;
    v35 = v22;
    v28 = v39;
    v27 = v40;
    v49 = 0;
    sub_1DD9E4B98(&qword_1ECD84248, type metadata accessor for ChatChunk.RateLimits.Limits);
    v29 = v41;
    sub_1DDA15260();
    v26 = v43;
    sub_1DD90AE1C(v42, v43, &qword_1ECD82D10, &qword_1DDA185E0);
    v48 = 1;
    sub_1DDA15260();
    sub_1DD90AE1C(v27, v26 + v44, &qword_1ECD82D10, &qword_1DDA185E0);
    v47 = 2;
    v30 = v38;
    sub_1DDA15260();
    v31 = v28;
    sub_1DD90AE1C(v30, v26 + v35, &qword_1ECD82D10, &qword_1DDA185E0);
    v46 = 3;
    v32 = v37;
    sub_1DDA15260();
    (*(v31 + 8))(v13, v29);
    sub_1DD90AE1C(v32, v26 + v34, &qword_1ECD82D10, &qword_1DDA185E0);
    sub_1DD9FF500(v26, v36, type metadata accessor for ChatChunk.RateLimits);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_1DD9FF568(v26, type metadata accessor for ChatChunk.RateLimits);
}

uint64_t sub_1DD9E3F5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x615F737465736572;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x6567617375;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74696D696CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x615F737465736572;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x6567617375;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74696D696CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9E405C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E40FC()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E4188()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E4224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA05394();
  *a2 = result;
  return result;
}

void sub_1DD9E4254(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE900000000000074;
  v5 = 0x615F737465736572;
  if (v2 != 1)
  {
    v5 = 0x6567617375;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74696D696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9E42B0()
{
  v1 = 0x615F737465736572;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696D696CLL;
  }
}

uint64_t sub_1DD9E4308@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA05394();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9E4330(uint64_t a1)
{
  v2 = sub_1DD9F3B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E436C(uint64_t a1)
{
  v2 = sub_1DD9F3B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E43E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DDA13680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v14 - v11;
  sub_1DDA15570();
  MEMORY[0x1E12B8440](*v2);
  sub_1DD90ADB4(v2 + *(a2 + 20), v12, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1DDA15590();
    sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
    sub_1DDA14AD0();
    (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x1E12B8440](*(v2 + *(a2 + 24)));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9E460C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E46DC()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E4798()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E4864@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA053E0();
  *a2 = result;
  return result;
}

void sub_1DD9E4894(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000007364616FLL;
  v3 = 0x6C70755F656C6966;
  v4 = 0x80000001DDA26D40;
  v5 = 0x65736E6F70736572;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x80000001DDA26D10;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1DD9E4920()
{
  v1 = 0x6C70755F656C6966;
  v2 = 0x65736E6F70736572;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9E49A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA053E0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9E49D0(uint64_t a1)
{
  v2 = sub_1DDA067B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E4A0C(uint64_t a1)
{
  v2 = sub_1DDA067B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD9E4AFC()
{
  result = qword_1ECD83C50;
  if (!qword_1ECD83C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C50);
  }

  return result;
}

uint64_t sub_1DD9E4B98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD9E4BE4()
{
  result = qword_1ECD83C60;
  if (!qword_1ECD83C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C60);
  }

  return result;
}

unint64_t sub_1DD9E4C84()
{
  result = qword_1ECD83C70;
  if (!qword_1ECD83C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C70);
  }

  return result;
}

unint64_t sub_1DD9E4CDC()
{
  result = qword_1ECD83C78;
  if (!qword_1ECD83C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C78);
  }

  return result;
}

unint64_t sub_1DD9E4D34()
{
  result = qword_1ECD83C80;
  if (!qword_1ECD83C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C80);
  }

  return result;
}

unint64_t sub_1DD9E4D8C()
{
  result = qword_1ECD83C88;
  if (!qword_1ECD83C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C88);
  }

  return result;
}

unint64_t sub_1DD9E4DE4()
{
  result = qword_1ECD83C90;
  if (!qword_1ECD83C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83C90);
  }

  return result;
}

unint64_t sub_1DD9E4ECC()
{
  result = qword_1ECD83CA8;
  if (!qword_1ECD83CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CA8);
  }

  return result;
}

uint64_t sub_1DD9E4F20(uint64_t a1)
{
  v290 = a1;
  v280 = type metadata accessor for ChatChunk.RateLimits.Limits(0);
  v278 = *(v280 - 8);
  v1 = *(v278 + 64);
  v2 = MEMORY[0x1EEE9AC00](v280);
  v254 = (&v251 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v2);
  v258 = &v251 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v257 = (&v251 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v255 = (&v251 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D10, &qword_1DDA185E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v259 = &v251 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v277 = &v251 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v256 = &v251 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v266 = &v251 - v17;
  v284 = type metadata accessor for ChatChunk.RateLimits(0);
  v18 = *(*(v284 - 8) + 64);
  MEMORY[0x1EEE9AC00](v284);
  v279 = &v251 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  v20 = *(*(v264 - 8) + 64);
  MEMORY[0x1EEE9AC00](v264);
  v265 = &v251 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  v22 = *(*(v262 - 8) + 64);
  MEMORY[0x1EEE9AC00](v262);
  v263 = (&v251 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v261 = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  v24 = *(*(v261 - 8) + 64);
  MEMORY[0x1EEE9AC00](v261);
  v260 = (&v251 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v283 = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v26 = *(*(v283 - 8) + 64);
  MEMORY[0x1EEE9AC00](v283);
  v28 = (&v251 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v288 = sub_1DDA134E0();
  v287 = *(v288 - 8);
  v29 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v288);
  v285 = &v251 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v275 = &v251 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v273 = &v251 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v271 = &v251 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v269 = &v251 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v267 = &v251 - v41;
  v42 = type metadata accessor for ChatChunk.ChoiceResource(0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v276 = (&v251 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x1EEE9AC00](v44);
  v274 = (&v251 - v47);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v272 = (&v251 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v270 = (&v251 - v51);
  MEMORY[0x1EEE9AC00](v50);
  v268 = (&v251 - v52);
  v53 = type metadata accessor for ChatChunk.FileUploadResponse(0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v56 = &v251 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1DDA13680();
  v286 = *(v282 - 8);
  v57 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v282);
  v281 = &v251 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59 - 8);
  v253 = &v251 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v252 = &v251 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v67 = &v251 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v251 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v251 - v71;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v74 = *(*(SessionResponse - 1) + 64);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v76 = (&v251 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for ChatChunk(0);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v251 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD9FF500(v289, v80, type metadata accessor for ChatChunk);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD9FEFD0(v80, v56, type metadata accessor for ChatChunk.FileUploadResponse);
      MEMORY[0x1E12B8440](1);
      sub_1DD9D9418();
      v145 = type metadata accessor for ChatChunk.FileUploadResponse;
      goto LABEL_97;
    case 2u:
      v125 = *(v80 + 5);
      v295 = *(v80 + 4);
      v296 = v125;
      v297 = *(v80 + 6);
      v298 = *(v80 + 14);
      v126 = *(v80 + 1);
      v291 = *v80;
      v127 = *(v80 + 2);
      v128 = *(v80 + 3);
      v292 = v126;
      v293 = v127;
      v294 = v128;
      v112 = 2;
      goto LABEL_19;
    case 3u:
      v133 = *v80;
      MEMORY[0x1E12B8440](3);
      MEMORY[0x1E12B8440](*(v133 + 16));
      v134 = *(v133 + 16);
      if (v134)
      {
        v135 = (v133 + 56);
        do
        {
          v136 = *(v135 - 3);
          v137 = *(v135 - 2);
          v138 = *(v135 - 1);
          v139 = *v135;

          sub_1DDA14BC0();

          sub_1DDA14BC0();
          swift_bridgeObjectRelease_n();

          v135 += 4;
          --v134;
        }

        while (v134);
      }

    case 4u:
      v108 = *(v80 + 5);
      v295 = *(v80 + 4);
      v296 = v108;
      v297 = *(v80 + 6);
      v298 = *(v80 + 14);
      v109 = *(v80 + 1);
      v291 = *v80;
      v110 = *(v80 + 2);
      v111 = *(v80 + 3);
      v292 = v109;
      v293 = v110;
      v294 = v111;
      v112 = 4;
LABEL_19:
      v129 = v290;
      MEMORY[0x1E12B8440](v112);
      sub_1DD9DA4D0(v129);
      return sub_1DD9B2CFC(&v291);
    case 5u:
      v114 = v268;
      sub_1DD9FEFD0(v80, v268, type metadata accessor for ChatChunk.ChoiceResource);
      v155 = v290;
      MEMORY[0x1E12B8440](5);
      MEMORY[0x1E12B8440](*v114);
      v156 = v114 + *(v42 + 20);
      v157 = *v156;
      v158 = *(v156 + 1);
      sub_1DDA14BC0();
      v159 = v156[16];
      v120 = v287;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v155, *(v156 + 3));
      v215 = *(v156 + 7);
      if (v215 == 1 || (v216 = *(v156 + 4), v217 = *(v156 + 5), v218 = *(v156 + 6), sub_1DDA15590(), sub_1DD928DC0(v216, v217), sub_1DDA14BC0(), , !v215))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v246 = v288;
      v247 = &v156[*(type metadata accessor for ChatChunk.Choice(0) + 32)];
      v248 = &v295;
      goto LABEL_118;
    case 6u:
      v114 = v270;
      sub_1DD9FEFD0(v80, v270, type metadata accessor for ChatChunk.ChoiceResource);
      v165 = v290;
      MEMORY[0x1E12B8440](6);
      MEMORY[0x1E12B8440](*v114);
      v166 = v114 + *(v42 + 20);
      v167 = *v166;
      v168 = *(v166 + 1);
      sub_1DDA14BC0();
      v169 = v166[16];
      v120 = v287;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v165, *(v166 + 3));
      v219 = *(v166 + 7);
      if (v219 == 1 || (v220 = *(v166 + 4), v221 = *(v166 + 5), v222 = *(v166 + 6), sub_1DDA15590(), sub_1DD928DC0(v220, v221), sub_1DDA14BC0(), , !v219))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v246 = v288;
      v247 = &v166[*(type metadata accessor for ChatChunk.Choice(0) + 32)];
      v248 = &v296;
      goto LABEL_118;
    case 7u:
      v114 = v272;
      sub_1DD9FEFD0(v80, v272, type metadata accessor for ChatChunk.ChoiceResource);
      v140 = v290;
      MEMORY[0x1E12B8440](7);
      MEMORY[0x1E12B8440](*v114);
      v141 = v114 + *(v42 + 20);
      v142 = *v141;
      v143 = *(v141 + 1);
      sub_1DDA14BC0();
      v144 = v141[16];
      v120 = v287;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v140, *(v141 + 3));
      v211 = *(v141 + 7);
      if (v211 == 1 || (v212 = *(v141 + 4), v213 = *(v141 + 5), v214 = *(v141 + 6), sub_1DDA15590(), sub_1DD928DC0(v212, v213), sub_1DDA14BC0(), , !v211))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v246 = v288;
      v247 = &v141[*(type metadata accessor for ChatChunk.Choice(0) + 32)];
      v248 = &v297;
      goto LABEL_118;
    case 8u:
      v114 = v274;
      sub_1DD9FEFD0(v80, v274, type metadata accessor for ChatChunk.ChoiceResource);
      v173 = v290;
      MEMORY[0x1E12B8440](8);
      MEMORY[0x1E12B8440](*v114);
      v174 = v114 + *(v42 + 20);
      v175 = *v174;
      v176 = *(v174 + 1);
      sub_1DDA14BC0();
      v177 = v174[16];
      v120 = v287;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v173, *(v174 + 3));
      v223 = *(v174 + 7);
      if (v223 == 1 || (v224 = *(v174 + 4), v225 = *(v174 + 5), v226 = *(v174 + 6), sub_1DDA15590(), sub_1DD928DC0(v224, v225), sub_1DDA14BC0(), , !v223))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v246 = v288;
      v247 = &v174[*(type metadata accessor for ChatChunk.Choice(0) + 32)];
      v248 = &v298;
      goto LABEL_118;
    case 9u:
      v114 = v276;
      sub_1DD9FEFD0(v80, v276, type metadata accessor for ChatChunk.ChoiceResource);
      v115 = v290;
      MEMORY[0x1E12B8440](9);
      MEMORY[0x1E12B8440](*v114);
      v116 = v114 + *(v42 + 20);
      v117 = *v116;
      v118 = *(v116 + 1);
      sub_1DDA14BC0();
      v119 = v116[16];
      v120 = v287;
      sub_1DDA14BC0();

      sub_1DD96BCC4(v115, *(v116 + 3));
      v207 = *(v116 + 7);
      if (v207 == 1 || (v208 = *(v116 + 4), v209 = *(v116 + 5), v210 = *(v116 + 6), sub_1DDA15590(), sub_1DD928DC0(v208, v209), sub_1DDA14BC0(), , !v207))
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DDA15590();
        sub_1DDA14BC0();
      }

      v246 = v288;
      v247 = &v116[*(type metadata accessor for ChatChunk.Choice(0) + 32)];
      v248 = v299;
LABEL_118:
      v249 = *(v248 - 32);
      sub_1DD90ADB4(v247, v249, &qword_1ECD82CE0, &qword_1DDA18700);
      if ((*(v120 + 48))(v249, 1, v246) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v250 = v285;
        (*(v120 + 32))(v285, v249, v246);
        sub_1DDA15590();
        sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
        sub_1DDA14AD0();
        (*(v120 + 8))(v250, v246);
      }

      v163 = type metadata accessor for ChatChunk.ChoiceResource;
      v164 = v114;
      goto LABEL_122;
    case 0xAu:
      v99 = *v80;
      v289 = *(v80 + 1);
      v100 = *(v80 + 2);
      v101 = *(v80 + 3);
      v102 = *(v80 + 4);
      v103 = *(v80 + 5);
      v104 = *(v80 + 6);
      v105 = *(v80 + 7);
      v106 = v80[64];
      v107 = 10;
      goto LABEL_39;
    case 0xBu:
      v99 = *v80;
      v289 = *(v80 + 1);
      v100 = *(v80 + 2);
      v101 = *(v80 + 3);
      v102 = *(v80 + 4);
      v103 = *(v80 + 5);
      v104 = *(v80 + 6);
      v105 = *(v80 + 7);
      v106 = v80[64];
      v107 = 11;
LABEL_39:
      v172 = v290;
      MEMORY[0x1E12B8440](v107);
      MEMORY[0x1E12B8440](v99);
      MEMORY[0x1E12B8440](v289);
      *&v291 = v100;
      *(&v291 + 1) = v101;
      *&v292 = v102;
      *(&v292 + 1) = v103;
      *&v293 = v104;
      *(&v293 + 1) = v105;
      LOBYTE(v294) = v106;
      sub_1DD9D55C0(v172);
      return sub_1DD96E310(v100, v101, v102, v103, v104, v105, v106);
    case 0xCu:
      sub_1DD9FEFD0(v80, v28, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      v113 = 12;
      goto LABEL_33;
    case 0xDu:
      sub_1DD9FEFD0(v80, v28, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      v113 = 13;
LABEL_33:
      MEMORY[0x1E12B8440](v113);
      MEMORY[0x1E12B8440](*v28);
      MEMORY[0x1E12B8440](v28[1]);
      MEMORY[0x1E12B8440](v28[2]);
      v162 = v28 + *(v283 + 28);
      sub_1DD9E8BF8();
      v122 = type metadata accessor for ChatChunk.ChoiceItemMessageContent;
      goto LABEL_34;
    case 0xEu:
      v93 = *v80;
      v94 = *(v80 + 1);
      v95 = *(v80 + 2);
      v96 = *(v80 + 3);
      v97 = *(v80 + 4);
      v98 = 14;
      goto LABEL_37;
    case 0xFu:
      v93 = *v80;
      v94 = *(v80 + 1);
      v95 = *(v80 + 2);
      v131 = *(v80 + 3);
      v132 = *(v80 + 4);
      v98 = 15;
      goto LABEL_37;
    case 0x10u:
      v76 = v260;
      sub_1DD9FEFD0(v80, v260, type metadata accessor for ChatChunk.TextValueAnnotation);
      MEMORY[0x1E12B8440](16);
      MEMORY[0x1E12B8440](*v76);
      MEMORY[0x1E12B8440](v76[1]);
      MEMORY[0x1E12B8440](v76[2]);
      MEMORY[0x1E12B8440](v76[3]);
      v91 = v76 + *(v261 + 32);
      sub_1DD9E9C1C();
      v92 = type metadata accessor for ChatChunk.TextValueAnnotation;
      goto LABEL_61;
    case 0x11u:
      v93 = *v80;
      v94 = *(v80 + 1);
      v95 = *(v80 + 2);
      v148 = *(v80 + 3);
      v149 = *(v80 + 4);
      v98 = 17;
      goto LABEL_37;
    case 0x12u:
      v93 = *v80;
      v94 = *(v80 + 1);
      v95 = *(v80 + 2);
      v170 = *(v80 + 3);
      v171 = *(v80 + 4);
      v98 = 18;
LABEL_37:
      MEMORY[0x1E12B8440](v98);
      MEMORY[0x1E12B8440](v93);
      MEMORY[0x1E12B8440](v94);
      MEMORY[0x1E12B8440](v95);
      sub_1DDA14BC0();

    case 0x13u:
      v150 = *v80;
      v151 = *(v80 + 1);
      v190 = *(v80 + 2);
      v191 = *(v80 + 3);
      v154 = 19;
      goto LABEL_47;
    case 0x14u:
      v150 = *v80;
      v151 = *(v80 + 1);
      v152 = *(v80 + 2);
      v153 = *(v80 + 3);
      v154 = 20;
      goto LABEL_47;
    case 0x15u:
      v160 = *(v80 + 3);
      v293 = *(v80 + 2);
      v294 = v160;
      LOBYTE(v295) = v80[64];
      v161 = *v80;
      v292 = *(v80 + 1);
      v291 = v161;
      v90 = 24;
      goto LABEL_55;
    case 0x16u:
      v150 = *v80;
      v151 = *(v80 + 1);
      v188 = *(v80 + 2);
      v189 = *(v80 + 3);
      v154 = 25;
      goto LABEL_47;
    case 0x17u:
      v150 = *v80;
      v151 = *(v80 + 1);
      v192 = *(v80 + 2);
      v193 = *(v80 + 3);
      v154 = 26;
LABEL_47:
      MEMORY[0x1E12B8440](v154);
      MEMORY[0x1E12B8440](v150);
      MEMORY[0x1E12B8440](v151);
      sub_1DDA14BC0();

    case 0x18u:
      v123 = *(v80 + 3);
      v293 = *(v80 + 2);
      v294 = v123;
      LOBYTE(v295) = v80[64];
      v124 = *v80;
      v292 = *(v80 + 1);
      v291 = v124;
      v90 = 27;
      goto LABEL_55;
    case 0x19u:
      v28 = v263;
      sub_1DD9FEFD0(v80, v263, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      MEMORY[0x1E12B8440](28);
      MEMORY[0x1E12B8440](*v28);
      MEMORY[0x1E12B8440](v28[1]);
      MEMORY[0x1E12B8440](v28[2]);
      v121 = *(v262 + 28);
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      v122 = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded;
LABEL_34:
      v163 = v122;
      v164 = v28;
      goto LABEL_122;
    case 0x1Au:
      v197 = *(v80 + 3);
      v293 = *(v80 + 2);
      v294 = v197;
      LOBYTE(v295) = v80[64];
      v198 = *v80;
      v292 = *(v80 + 1);
      v291 = v198;
      v90 = 29;
      goto LABEL_55;
    case 0x1Bu:
      v88 = *(v80 + 3);
      v293 = *(v80 + 2);
      v294 = v88;
      LOBYTE(v295) = v80[64];
      v89 = *v80;
      v292 = *(v80 + 1);
      v291 = v89;
      v90 = 30;
      goto LABEL_55;
    case 0x1Cu:
      v194 = *(v80 + 3);
      v293 = *(v80 + 2);
      v294 = v194;
      LOBYTE(v295) = v80[64];
      v195 = *v80;
      v292 = *(v80 + 1);
      v291 = v195;
      v90 = 31;
      goto LABEL_55;
    case 0x1Du:
      v196 = v265;
      sub_1DD9FEFD0(v80, v265, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      MEMORY[0x1E12B8440](32);
      MEMORY[0x1E12B8440](*v196);
      MEMORY[0x1E12B8440](*(v196 + 8));
      if (*(v196 + 24) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v205 = *(v196 + 16);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](v205);
      }

      v206 = *(v264 + 28);
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      v163 = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded;
      v164 = v196;
      goto LABEL_122;
    case 0x1Eu:
      v178 = *(v80 + 3);
      v293 = *(v80 + 2);
      v294 = v178;
      LOBYTE(v295) = v80[64];
      v179 = *v80;
      v292 = *(v80 + 1);
      v291 = v179;
      v90 = 33;
      goto LABEL_55;
    case 0x1Fu:
      v146 = *(v80 + 3);
      v293 = *(v80 + 2);
      v294 = v146;
      LOBYTE(v295) = v80[64];
      v147 = *v80;
      v292 = *(v80 + 1);
      v291 = v147;
      v90 = 34;
LABEL_55:
      v199 = v290;
      MEMORY[0x1E12B8440](v90);
      MEMORY[0x1E12B8440](v291);
      MEMORY[0x1E12B8440](*(&v291 + 1));
      v299[0] = v292;
      v299[1] = v293;
      v299[2] = v294;
      v300 = v295;
      sub_1DD9D55C0(v199);
      return sub_1DD9FF5C8(&v291);
    case 0x20u:
      v56 = v279;
      sub_1DD9FEFD0(v80, v279, type metadata accessor for ChatChunk.RateLimits);
      MEMORY[0x1E12B8440](38);
      v180 = v266;
      sub_1DD90ADB4(v56, v266, &qword_1ECD82D10, &qword_1DDA185E0);
      v181 = *(v278 + 48);
      v182 = v280;
      v183 = v181(v180, 1, v280);
      v289 = v181;
      if (v183 == 1)
      {
        sub_1DDA15590();
        v184 = v258;
        v185 = v284;
        v186 = v282;
        v187 = v256;
      }

      else
      {
        v203 = v255;
        sub_1DD9FEFD0(v180, v255, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v203);
        sub_1DD90ADB4(v203 + *(v182 + 20), v70, &qword_1ECD82838, &unk_1DDA185F0);
        v204 = v286;
        v186 = v282;
        if ((*(v286 + 48))(v70, 1, v282) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v227 = v281;
          (*(v204 + 32))(v281, v70, v186);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
          sub_1DDA14AD0();
          (*(v204 + 8))(v227, v186);
        }

        v184 = v258;
        v187 = v256;
        v228 = v255;
        MEMORY[0x1E12B8440](*(v255 + *(v182 + 24)));
        sub_1DD9FF568(v228, type metadata accessor for ChatChunk.RateLimits.Limits);
        v181 = v289;
        v185 = v284;
      }

      sub_1DD90ADB4(&v56[*(v185 + 20)], v187, &qword_1ECD82D10, &qword_1DDA185E0);
      if (v181(v187, 1, v182) == 1)
      {
        sub_1DDA15590();
        v229 = v259;
      }

      else
      {
        v230 = v187;
        v231 = v257;
        sub_1DD9FEFD0(v230, v257, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v231);
        sub_1DD90ADB4(v231 + *(v182 + 20), v67, &qword_1ECD82838, &unk_1DDA185F0);
        v232 = v286;
        if ((*(v286 + 48))(v67, 1, v186) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v233 = v281;
          (*(v232 + 32))(v281, v67, v186);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
          sub_1DDA14AD0();
          (*(v232 + 8))(v233, v186);
        }

        v229 = v259;
        v234 = v257;
        MEMORY[0x1E12B8440](*(v257 + *(v182 + 24)));
        sub_1DD9FF568(v234, type metadata accessor for ChatChunk.RateLimits.Limits);
        v181 = v289;
      }

      v235 = v284;
      v236 = v277;
      sub_1DD90ADB4(&v56[*(v284 + 24)], v277, &qword_1ECD82D10, &qword_1DDA185E0);
      if (v181(v236, 1, v182) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        sub_1DD9FEFD0(v236, v184, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v184);
        v237 = v252;
        sub_1DD90ADB4(v184 + *(v182 + 20), v252, &qword_1ECD82838, &unk_1DDA185F0);
        v238 = v286;
        if ((*(v286 + 48))(v237, 1, v186) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v239 = v281;
          (*(v238 + 32))(v281, v237, v186);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
          sub_1DDA14AD0();
          v240 = v239;
          v235 = v284;
          (*(v238 + 8))(v240, v186);
        }

        MEMORY[0x1E12B8440](*(v184 + *(v182 + 24)));
        sub_1DD9FF568(v184, type metadata accessor for ChatChunk.RateLimits.Limits);
        v181 = v289;
      }

      sub_1DD90ADB4(&v56[*(v235 + 28)], v229, &qword_1ECD82D10, &qword_1DDA185E0);
      if (v181(v229, 1, v182) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v241 = v229;
        v242 = v254;
        sub_1DD9FEFD0(v241, v254, type metadata accessor for ChatChunk.RateLimits.Limits);
        sub_1DDA15590();
        MEMORY[0x1E12B8440](*v242);
        v243 = v253;
        sub_1DD90ADB4(v242 + *(v182 + 20), v253, &qword_1ECD82838, &unk_1DDA185F0);
        v244 = v286;
        if ((*(v286 + 48))(v243, 1, v186) == 1)
        {
          sub_1DDA15590();
        }

        else
        {
          v245 = v281;
          (*(v244 + 32))(v281, v243, v186);
          sub_1DDA15590();
          sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
          sub_1DDA14AD0();
          (*(v244 + 8))(v245, v186);
        }

        MEMORY[0x1E12B8440](*(v242 + *(v182 + 24)));
        sub_1DD9FF568(v242, type metadata accessor for ChatChunk.RateLimits.Limits);
      }

      v145 = type metadata accessor for ChatChunk.RateLimits;
LABEL_97:
      v163 = v145;
      v164 = v56;
      goto LABEL_122;
    case 0x21u:
      v87 = 21;
      goto LABEL_53;
    case 0x22u:
      v87 = 22;
      goto LABEL_53;
    case 0x23u:
      v87 = 23;
      goto LABEL_53;
    case 0x24u:
      v87 = 35;
      goto LABEL_53;
    case 0x25u:
      v87 = 36;
      goto LABEL_53;
    case 0x26u:
      v87 = 37;
LABEL_53:
      result = MEMORY[0x1E12B8440](v87);
      break;
    default:
      sub_1DD9FEFD0(v80, v76, type metadata accessor for CreateSessionResponse);
      MEMORY[0x1E12B8440](0);
      v81 = *v76;
      v82 = v76[1];
      sub_1DDA14BC0();
      v83 = SessionResponse[5];
      sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
      v84 = v282;
      sub_1DDA14AD0();
      v85 = v76 + SessionResponse[6];
      sub_1DDA14AD0();
      sub_1DD90ADB4(v76 + SessionResponse[7], v72, &qword_1ECD82838, &unk_1DDA185F0);
      v86 = v286;
      if ((*(v286 + 48))(v72, 1, v84) == 1)
      {
        sub_1DDA15590();
      }

      else
      {
        v200 = v281;
        (*(v86 + 32))(v281, v72, v84);
        sub_1DDA15590();
        sub_1DDA14AD0();
        (*(v86 + 8))(v200, v84);
      }

      v201 = v76 + SessionResponse[8];
      if (*v201 == 2)
      {
        v202 = 0;
      }

      else
      {
        v202 = *(v201 + 1);
        MEMORY[0x1E12B8440](1);
        sub_1DDA14BC0();
      }

      MEMORY[0x1E12B8440](v202);
      v92 = type metadata accessor for CreateSessionResponse;
LABEL_61:
      v163 = v92;
      v164 = v76;
LABEL_122:
      result = sub_1DD9FF568(v164, v163);
      break;
  }

  return result;
}

uint64_t sub_1DD9E7640(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E61747369737361;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 1919251317;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D6574737973;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E61747369737361;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 1919251317;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D6574737973;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9E7738()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E77D4()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9E785C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E78F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0542C();
  *a2 = result;
  return result;
}

void sub_1DD9E7924(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000074;
  v5 = 0x6E61747369737361;
  if (v2 != 1)
  {
    v5 = 1919251317;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574737973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9E7A2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = type metadata accessor for FileGeneratorFile(0);
  v3 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ImageGeneratorImage(0);
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageURLItem(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83D88, &qword_1DDA1E188);
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for MessageContent(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v20 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1DD9FEF7C();
  v21 = v62;
  sub_1DDA15620();
  if (!v21)
  {
    v55 = v18;
    v62 = v15;
    v22 = v61;
    v66 = 1701869940;
    v67 = 0xE400000000000000;
    v68 = 0;
    v69 = 1;
    v24 = sub_1DDA15280();
    v25 = v23;
    v26 = v24 == 1954047348 && v23 == 0xE400000000000000;
    if (v26 || (sub_1DDA15440() & 1) != 0)
    {
      v66 = v24;
      v67 = v25;
      v68 = 0;
      v69 = 1;
      sub_1DDA05BA8();
      sub_1DDA152C0();
      (*(v22 + 8))(v14, v11);

      v27 = v64;
      v28 = v65;

      v29 = v55;
      *v55 = v27;
      v29[1] = v28;
LABEL_8:
      v30 = v60;
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_1DD9FEFD0(v29, v30, type metadata accessor for MessageContent);
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    v32 = v24 == 0x72755F6567616D69 && v25 == 0xE90000000000006CLL;
    if (v32 || (sub_1DDA15440() & 1) != 0)
    {
      v66 = v24;
      v67 = v25;
      v68 = 0;
      v69 = 1;
      sub_1DD9E4B98(&qword_1ECD84060, type metadata accessor for ImageURLItem);
      sub_1DDA152C0();
      (*(v22 + 8))(v14, v11);

      v29 = v55;
      sub_1DD9FEFD0(v10, v55, type metadata accessor for ImageURLItem);
      goto LABEL_8;
    }

    if (v24 == 0xD000000000000015 && 0x80000001DDA29B90 == v25 || (sub_1DDA15440() & 1) != 0)
    {
      v66 = v24;
      v67 = v25;
      v68 = 0;
      v69 = 1;
      sub_1DD9E4B98(&qword_1ECD84058, type metadata accessor for ImageGeneratorImage);
      v33 = v58;
      sub_1DDA152C0();
      v30 = v60;
      (*(v22 + 8))(v14, v11);

      v34 = v33;
      v29 = v55;
      sub_1DD9FEFD0(v34, v55, type metadata accessor for ImageGeneratorImage);
      goto LABEL_9;
    }

    v30 = v60;
    if (v24 == 0xD000000000000013 && 0x80000001DDA29BB0 == v25 || (sub_1DDA15440() & 1) != 0)
    {
      v66 = v24;
      v67 = v25;
      v68 = 0;
      v69 = 1;
      sub_1DD9E4B98(&qword_1ECD84050, type metadata accessor for FileGeneratorFile);
      v35 = v56;
      sub_1DDA152C0();
      (*(v22 + 8))(v14, v11);

      v29 = v55;
      sub_1DD9FEFD0(v35, v55, type metadata accessor for FileGeneratorFile);
      goto LABEL_9;
    }

    if (v24 == 0x6C617375666572 && v25 == 0xE700000000000000 || (sub_1DDA15440() & 1) != 0)
    {
      v66 = v24;
      v67 = v25;
      v68 = 0;
      v69 = 1;
      v36 = sub_1DDA15280();
      v38 = v37;
      (*(v22 + 8))(v14, v11);

      v29 = v55;
      *v55 = v36;
      v29[1] = v38;
      goto LABEL_8;
    }

    v60 = v24;
    v39 = qword_1ECD827A8;

    if (v39 != -1)
    {
      swift_once();
    }

    v57 = v14;
    v58 = v11;
    v40 = sub_1DDA14810();
    __swift_project_value_buffer(v40, qword_1ECDA20E0);

    v41 = sub_1DDA147F0();
    v42 = sub_1DDA14EE0();
    v59 = v25;

    v43 = os_log_type_enabled(v41, v42);
    v44 = v62;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66 = v46;
      *v45 = 136315394;
      v64 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84040, &qword_1DDA1E2B0);
      v47 = sub_1DDA14B70();
      v49 = sub_1DD93FA54(v47, v48, &v66);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_1DD93FA54(v60, v59, &v66);
      _os_log_impl(&dword_1DD8F8000, v41, v42, "Failed to decode %s. Unknown type identifier: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v46, -1, -1);
      MEMORY[0x1E12B8CE0](v45, -1, -1);
    }

    v51 = v59;
    v50 = v60;
    v66 = v60;
    v67 = v59;
    v68 = 0;
    v69 = 1;
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_1DDA15070();

    v64 = 0xD000000000000011;
    v65 = 0x80000001DDA29B20;
    v70 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84040, &qword_1DDA1E2B0);
    v52 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v52);

    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA29B40);
    MEMORY[0x1E12B7AB0](v50, v51);

    sub_1DDA150D0();
    swift_allocError();
    sub_1DDA05B54(&qword_1ECD84048, &qword_1ECD83D88, &qword_1DDA1E188);
    v53 = v57;
    v54 = v58;
    sub_1DDA150A0();

    swift_willThrow();
    (*(v22 + 8))(v53, v54);
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1DD9E8484(void *a1)
{
  v2 = v1;
  v42 = type metadata accessor for FileGeneratorFile(0);
  v4 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ImageGeneratorImage(0);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ImageURLItem(0);
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MessageContent(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v44 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84070, &qword_1DDA1E2B8);
  v50 = *(v19 - 8);
  v20 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FEF7C();
  sub_1DDA15650();
  sub_1DD9FF500(v2, v18, type metadata accessor for MessageContent);
  swift_getEnumCaseMultiPayload();
  sub_1DD9FF568(v18, type metadata accessor for MessageContent);
  v24 = v45;
  v46 = 1701869940;
  v47 = 0xE400000000000000;
  v48 = 0;
  v49 = 1;
  sub_1DDA15340();
  if (v24)
  {

    return (*(v50 + 8))(v22, v19);
  }

  sub_1DD9FF500(v2, v16, type metadata accessor for MessageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1DD9FF568(v16, type metadata accessor for MessageContent);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v27 = 0x72755F6567616D69;
      v28 = 0xE90000000000006CLL;
    }

    else
    {
      v28 = 0xE400000000000000;
      v27 = 1954047348;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v28 = 0x80000001DDA29B90;
    v27 = 0xD000000000000015;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v27 = 0xD000000000000013;
    v28 = 0x80000001DDA29BB0;
  }

  else
  {
    v28 = 0xE700000000000000;
    v27 = 0x6C617375666572;
  }

  v29 = v44;
  sub_1DD9FF500(v2, v44, type metadata accessor for MessageContent);
  v30 = swift_getEnumCaseMultiPayload();
  if (v30 <= 1)
  {
    if (v30)
    {
      v37 = v29;
      v32 = v38;
      sub_1DD9FEFD0(v37, v38, type metadata accessor for ImageURLItem);
      v46 = v27;
      v47 = v28;
      v48 = 0;
      v49 = 1;
      sub_1DD9E4B98(&qword_1ECD84088, type metadata accessor for ImageURLItem);
      sub_1DDA15380();
      v33 = type metadata accessor for ImageURLItem;
      goto LABEL_20;
    }
  }

  else
  {
    if (v30 == 2)
    {
      v36 = v29;
      v32 = v40;
      sub_1DD9FEFD0(v36, v40, type metadata accessor for ImageGeneratorImage);
      v46 = v27;
      v47 = v28;
      v48 = 0;
      v49 = 1;
      sub_1DD9E4B98(&qword_1ECD84080, type metadata accessor for ImageGeneratorImage);
      sub_1DDA15380();
      v33 = type metadata accessor for ImageGeneratorImage;
      goto LABEL_20;
    }

    if (v30 == 3)
    {
      v31 = v29;
      v32 = v43;
      sub_1DD9FEFD0(v31, v43, type metadata accessor for FileGeneratorFile);
      v46 = v27;
      v47 = v28;
      v48 = 0;
      v49 = 1;
      sub_1DD9E4B98(&qword_1ECD84078, type metadata accessor for FileGeneratorFile);
      sub_1DDA15380();
      v33 = type metadata accessor for FileGeneratorFile;
LABEL_20:
      sub_1DD9FF568(v32, v33);
      (*(v50 + 8))(v22, v19);
    }
  }

  v34 = *v29;
  v35 = v29[1];
  v46 = v27;
  v47 = v28;
  v48 = 0;
  v49 = 1;
  sub_1DDA15340();
  (*(v50 + 8))(v22, v19);
}

uint64_t sub_1DD9E8BF8()
{
  v1 = type metadata accessor for FileGeneratorFile(0);
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageGeneratorImage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ImageURLItem(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageContent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD9FF500(v0, v16, type metadata accessor for MessageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1DD9FEFD0(v16, v12, type metadata accessor for ImageURLItem);
      MEMORY[0x1E12B8440](1);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      v24 = type metadata accessor for ImageURLItem;
      v25 = v12;
      return sub_1DD9FF568(v25, v24);
    }

    v26 = *v16;
    v27 = v16[1];
    v28 = 0;
LABEL_9:
    MEMORY[0x1E12B8440](v28);
    sub_1DDA14BC0();
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1DD9FEFD0(v16, v8, type metadata accessor for ImageGeneratorImage);
    MEMORY[0x1E12B8440](2);
    v29 = *v8;
    v30 = v8[1];
    sub_1DDA14BC0();
    MEMORY[0x1E12B8440](v8[2]);
    MEMORY[0x1E12B8440](v8[3]);
    v31 = *(v5 + 28);
    sub_1DDA134E0();
    sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
    sub_1DDA14AD0();
    v24 = type metadata accessor for ImageGeneratorImage;
    v25 = v8;
    return sub_1DD9FF568(v25, v24);
  }

  if (EnumCaseMultiPayload != 3)
  {
    v32 = *v16;
    v33 = v16[1];
    v28 = 4;
    goto LABEL_9;
  }

  sub_1DD9FEFD0(v16, v4, type metadata accessor for FileGeneratorFile);
  MEMORY[0x1E12B8440](3);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  v18 = &v4[v1[5]];
  v19 = *v18;
  v20 = *(v18 + 1);
  sub_1DDA14BC0();
  v21 = &v4[v1[6]];
  v22 = *v21;
  v23 = *(v21 + 1);
  sub_1DDA14BC0();
  MEMORY[0x1E12B8460](*&v4[v1[7]]);
  v24 = type metadata accessor for FileGeneratorFile;
  v25 = v4;
  return sub_1DD9FF568(v25, v24);
}

uint64_t sub_1DD9E9078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1DDA134E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840C0, &qword_1DDA1E2E0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ImageURLItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05CA4();
  sub_1DDA15620();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
    sub_1DDA152C0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1DD9FEFD0(v14, v17, type metadata accessor for ImageURLItem);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9E9314()
{
  if (*v0)
  {
    result = 0x697461746F6E6E61;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9E9354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9E9430(uint64_t a1)
{
  v2 = sub_1DDA0A340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E946C(uint64_t a1)
{
  v2 = sub_1DDA0A340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E94A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA05478(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9E94D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v3)
  {
    sub_1DD96C3F4(v5, v3);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E9558(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1DDA14BC0();
  if (!v5)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DD96C3F4(a1, v5);
}

uint64_t sub_1DD9E95D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v3)
  {
    sub_1DD96C3F4(v5, v3);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9E9678(uint64_t a1)
{
  v2 = sub_1DDA05CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9E96B4(uint64_t a1)
{
  v2 = sub_1DDA05CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9E9794(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FC0, &qword_1DDA1E260);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FC8, &qword_1DDA1E268);
  v31 = *(v33 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v28 - v6;
  v29 = type metadata accessor for TextAnnotation.URLCitation(0);
  v7 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextAnnotation.Type(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FD0, &qword_1DDA1E270);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA04AB8();
  sub_1DDA15650();
  sub_1DD9FF500(v36, v13, type metadata accessor for TextAnnotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v13;
    v20 = v13[1];
    v22 = v13[2];
    LOBYTE(v37) = 1;
    sub_1DDA04B0C();
    v23 = v32;
    sub_1DDA152F0();
    v37 = v21;
    v38 = v20;
    v39 = v22;
    sub_1DDA04A64();
    v24 = v35;
    sub_1DDA15380();
    (*(v34 + 8))(v23, v24);
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    sub_1DD9FEFD0(v13, v9, type metadata accessor for TextAnnotation.URLCitation);
    LOBYTE(v37) = 0;
    sub_1DDA04B60();
    v26 = v30;
    sub_1DDA152F0();
    sub_1DD9E4B98(&qword_1ECD83F80, type metadata accessor for TextAnnotation.URLCitation);
    v27 = v33;
    sub_1DDA15380();
    (*(v31 + 8))(v26, v27);
    sub_1DD9FF568(v9, type metadata accessor for TextAnnotation.URLCitation);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_1DD9E9C1C()
{
  v1 = v0;
  v2 = type metadata accessor for TextAnnotation.URLCitation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for TextAnnotation.Type(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD9FF500(v1, v8, type metadata accessor for TextAnnotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    MEMORY[0x1E12B8440](v11);
  }

  else
  {
    sub_1DD9FEFD0(v8, v5, type metadata accessor for TextAnnotation.URLCitation);
    MEMORY[0x1E12B8440](0);
    sub_1DDA134E0();
    sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
    sub_1DDA14AD0();
    v13 = &v5[*(v2 + 20)];
    v14 = *v13;
    v15 = *(v13 + 1);
    sub_1DDA14BC0();
    MEMORY[0x1E12B8440](*&v5[*(v2 + 24)]);
    return sub_1DD9FF568(v5, type metadata accessor for TextAnnotation.URLCitation);
  }
}

uint64_t sub_1DD9E9E18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F88, &qword_1DDA1E240);
  v54 = *(v51 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v56 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F90, &qword_1DDA1E248);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F98, &qword_1DDA1E250);
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for TextAnnotation.Type(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v47 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1DDA04AB8();
  v24 = v59;
  sub_1DDA15620();
  if (!v24)
  {
    v48 = v16;
    v49 = v21;
    v50 = v19;
    v25 = v55;
    v26 = v56;
    v59 = v12;
    v27 = v57;
    v28 = sub_1DDA152E0();
    v29 = v8;
    if (*(v28 + 16) == 1)
    {
      v30 = v58;
      if (*(v28 + 32))
      {
        LOBYTE(v60) = 1;
        sub_1DDA04B0C();
        v31 = v11;
        sub_1DDA15200();
        v32 = v27;
        sub_1DDA04A10();
        v33 = v51;
        sub_1DDA152C0();
        (*(v54 + 8))(v26, v33);
        (*(v30 + 8))(v31, v29);
        swift_unknownObjectRelease();
        v34 = v61;
        v35 = v48;
        *v48 = v60;
        *(v35 + 2) = v34;
        swift_storeEnumTagMultiPayload();
        v36 = v35;
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_1DDA04B60();
        v41 = v25;
        v42 = v11;
        sub_1DDA15200();
        v32 = v27;
        type metadata accessor for TextAnnotation.URLCitation(0);
        v56 = v29;
        sub_1DD9E4B98(&qword_1ECD83F68, type metadata accessor for TextAnnotation.URLCitation);
        v44 = v50;
        v45 = v53;
        sub_1DDA152C0();
        (*(v52 + 8))(v41, v45);
        (*(v30 + 8))(v42, v56);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v44;
      }

      v46 = v49;
      sub_1DD9FEFD0(v36, v49, type metadata accessor for TextAnnotation.Type);
      sub_1DD9FEFD0(v46, v32, type metadata accessor for TextAnnotation.Type);
    }

    else
    {
      v37 = sub_1DDA150D0();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FA8, &qword_1DDA1E258) + 48);
      *v39 = v59;
      sub_1DDA15210();
      sub_1DDA150B0();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v58 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_1DD9EA454()
{
  if (*v0)
  {
    result = 0x61746943656C6966;
  }

  else
  {
    result = 0x74617469436C7275;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9EA4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74617469436C7275 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61746943656C6966 && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9EA584(uint64_t a1)
{
  v2 = sub_1DDA04AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EA5C0(uint64_t a1)
{
  v2 = sub_1DDA04AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EA608(uint64_t a1)
{
  v2 = sub_1DDA04B0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EA644(uint64_t a1)
{
  v2 = sub_1DDA04B0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EA680(uint64_t a1)
{
  v2 = sub_1DDA04B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EA6BC(uint64_t a1)
{
  v2 = sub_1DDA04B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EA728(void *a1)
{
  v2 = v1;
  v28 = type metadata accessor for TextAnnotation.URLCitation(0);
  v4 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextAnnotation.Type(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v29 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F70, &qword_1DDA1E238);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA049BC();
  sub_1DDA15650();
  v18 = v2;
  sub_1DD9FF500(v2, v11, type metadata accessor for TextAnnotation.Type);
  swift_getEnumCaseMultiPayload();
  sub_1DD9FF568(v11, type metadata accessor for TextAnnotation.Type);
  LOBYTE(v31) = 0;
  v19 = v30;
  sub_1DDA15340();
  if (v19)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v20 = v12;
    v30 = v13;
    v21 = v27;

    v22 = v29;
    sub_1DD9FF500(v18, v29, type metadata accessor for TextAnnotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD9FEFD0(v22, v21, type metadata accessor for TextAnnotation.URLCitation);
      LOBYTE(v31) = 1;
      sub_1DD9E4B98(&qword_1ECD83F80, type metadata accessor for TextAnnotation.URLCitation);
      sub_1DDA15380();
      sub_1DD9FF568(v21, type metadata accessor for TextAnnotation.URLCitation);
      return (*(v30 + 8))(v16, v20);
    }

    v23 = v22[1];
    v24 = v22[2];
    v31 = *v22;
    v32 = v23;
    v33 = v24;
    v34 = 2;
    sub_1DDA04A64();
    sub_1DDA15380();
    (*(v30 + 8))(v16, v20);
  }
}

uint64_t sub_1DD9EAB3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for TextAnnotation.URLCitation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F40, &qword_1DDA1E228);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = type metadata accessor for TextAnnotation(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DDA049BC();
  v17 = v48;
  sub_1DDA15620();
  if (!v17)
  {
    v48 = v3;
    v18 = v6;
    v45 = v14;
    v19 = v46;
    LOBYTE(v50) = 0;
    v20 = v7;
    v22 = sub_1DDA15280();
    v23 = v21;
    v24 = v22 == 0x617469635F6C7275 && v21 == 0xEC0000006E6F6974;
    if (v24 || (sub_1DDA15440() & 1) != 0)
    {

      LOBYTE(v50) = 1;
      sub_1DD9E4B98(&qword_1ECD83F68, type metadata accessor for TextAnnotation.URLCitation);
      sub_1DDA152C0();
      (*(v47 + 8))(v10, v7);
      v25 = v45;
      sub_1DD9FEFD0(v18, v45, type metadata accessor for TextAnnotation.URLCitation);
      v26 = v19;
LABEL_8:
      type metadata accessor for TextAnnotation.Type(0);
      swift_storeEnumTagMultiPayload();
      sub_1DD9FEFD0(v25, v26, type metadata accessor for TextAnnotation);
      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    if (v22 == 0x7469635F656C6966 && v23 == 0xED00006E6F697461)
    {

      v26 = v19;
      goto LABEL_16;
    }

    if (sub_1DDA15440())
    {
      v26 = v19;

LABEL_16:
      LOBYTE(v52) = 2;
      sub_1DDA04A10();
      sub_1DDA152C0();
      (*(v47 + 8))(v10, v20);
      v28 = v51;
      v25 = v45;
      *v45 = v50;
      *(v25 + 2) = v28;
      goto LABEL_8;
    }

    v46 = v22;
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v48 = v7;
    v29 = sub_1DDA14810();
    __swift_project_value_buffer(v29, qword_1ECDA20E0);

    v30 = sub_1DDA147F0();
    v31 = sub_1DDA14EE0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v23;
      v34 = v33;
      *&v50 = v33;
      *v32 = 136315394;
      v52 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F50, &qword_1DDA1E230);
      v35 = sub_1DDA14B70();
      v37 = sub_1DD93FA54(v35, v36, &v50);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v38 = v46;
      *(v32 + 14) = sub_1DD93FA54(v46, v45, &v50);
      _os_log_impl(&dword_1DD8F8000, v30, v31, "Failed to decode %s. Unknown type identifier: %s", v32, 0x16u);
      swift_arrayDestroy();
      v39 = v34;
      v23 = v45;
      MEMORY[0x1E12B8CE0](v39, -1, -1);
      MEMORY[0x1E12B8CE0](v32, -1, -1);
    }

    else
    {

      v38 = v46;
    }

    v40 = v47;
    v53 = 0;
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_1DDA15070();

    *&v50 = 0xD000000000000011;
    *(&v50 + 1) = 0x80000001DDA29B20;
    v52 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83F50, &qword_1DDA1E230);
    v41 = sub_1DDA14B70();
    MEMORY[0x1E12B7AB0](v41);

    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA29B40);
    MEMORY[0x1E12B7AB0](v38, v23);

    sub_1DDA150D0();
    swift_allocError();
    sub_1DDA05B54(&qword_1ECD83F58, &qword_1ECD83F40, &qword_1DDA1E228);
    v42 = v48;
    sub_1DDA150A0();

    swift_willThrow();
    (*(v40 + 8))(v10, v42);
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1DD9EB20C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84000, &qword_1DDA1E290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05A04();
  sub_1DDA15650();
  v17[15] = 0;
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0]);
  sub_1DDA15380();
  if (!v2)
  {
    v11 = type metadata accessor for TextAnnotation.URLCitation(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v17[14] = 1;
    sub_1DDA15340();
    v15 = *(v3 + *(v11 + 24));
    v17[13] = 2;
    sub_1DDA15370();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9EB3F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1DDA134E0();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FF0, &qword_1DDA1E288);
  v29 = *(v32 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v25 - v8;
  v10 = type metadata accessor for TextAnnotation.URLCitation(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05A04();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  v15 = v30;
  v26 = v10;
  v27 = v13;
  v35 = 0;
  sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
  v18 = v31;
  v17 = v32;
  sub_1DDA152C0();
  (*(v15 + 32))(v27, v18, v4);
  v34 = 1;
  v19 = sub_1DDA15280();
  v20 = &v27[*(v26 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v33 = 2;
  v22 = sub_1DDA152B0();
  (*(v16 + 8))(v9, v17);
  v23 = v27;
  *&v27[*(v26 + 24)] = v22;
  sub_1DD9FF500(v23, v28, type metadata accessor for TextAnnotation.URLCitation);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DD9FF568(v23, type metadata accessor for TextAnnotation.URLCitation);
}

uint64_t sub_1DD9EB7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83FE8, &qword_1DDA1E280);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA059B0();
  sub_1DDA15650();
  v15 = 0;
  sub_1DDA15340();
  if (!v4)
  {
    v14 = 1;
    sub_1DDA15370();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DD9EB95C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x617469635F6C7275;
  v4 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0x7469635F656C6966;
    v4 = 0xED00006E6F697461;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x617469635F6C7275;
  v8 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x7469635F656C6966;
    v8 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9EBA80()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EBB30()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EBBCC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EBC78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0567C();
  *a2 = result;
  return result;
}

void sub_1DD9EBCA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x617469635F6C7275;
  if (v2 != 1)
  {
    v5 = 0x7469635F656C6966;
    v4 = 0xED00006E6F697461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9EBD14()
{
  v1 = 0x617469635F6C7275;
  if (*v0 != 1)
  {
    v1 = 0x7469635F656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD9EBD7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0567C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9EBDA4(uint64_t a1)
{
  v2 = sub_1DDA049BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EBDE0(uint64_t a1)
{
  v2 = sub_1DDA049BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EBE1C()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x7865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DD9EBE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA056C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9EBE90(uint64_t a1)
{
  v2 = sub_1DDA05A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EBECC(uint64_t a1)
{
  v2 = sub_1DDA05A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EBF38(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v1 + *(a1 + 24)));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EBFF0(uint64_t a1, uint64_t a2)
{
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1DDA14BC0();
  return MEMORY[0x1E12B8440](*(v2 + *(a2 + 24)));
}

uint64_t sub_1DD9EC090(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v2 + *(a2 + 24)));
  return sub_1DDA155B0();
}

BOOL sub_1DD9EC144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1DDA13490() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_1DDA15440()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD9EC1C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7865646E69;
  }

  else
  {
    v4 = 0x64695F656C6966;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7865646E69;
  }

  else
  {
    v6 = 0x64695F656C6966;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

uint64_t sub_1DD9EC268()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EC2E8()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EC354()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9EC3DC(uint64_t *a1@<X8>)
{
  v2 = 0x64695F656C6966;
  if (*v1)
  {
    v2 = 0x7865646E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9EC418()
{
  if (*v0)
  {
    result = 0x7865646E69;
  }

  else
  {
    result = 0x64695F656C6966;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9EC45C(uint64_t a1)
{
  v2 = sub_1DDA059B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EC498(uint64_t a1)
{
  v2 = sub_1DDA059B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EC4D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA057D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9EC524()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EC588()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DDA14BC0();
  return MEMORY[0x1E12B8440](v3);
}

uint64_t sub_1DD9EC5C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

BOOL sub_1DD9EC620(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1DDA15440();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DD9EC6AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D60, &qword_1DDA24C78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11798();
  sub_1DDA15650();
  LOBYTE(v16) = 0;
  sub_1DDA15340();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1DDA117EC();
    sub_1DDA15380();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DD9EC83C()
{
  if (*v0)
  {
    result = 0x6E6F6974636E7566;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9EC870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9EC94C(uint64_t a1)
{
  v2 = sub_1DDA11798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EC988(uint64_t a1)
{
  v2 = sub_1DDA11798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EC9C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA0A448(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9ECA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9ECAAC(uint64_t a1)
{
  v2 = sub_1DDA1275C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9ECAE8(uint64_t a1)
{
  v2 = sub_1DDA1275C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9ECBAC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (a3 > 2)
  {
    sub_1DDA0EF00();
    sub_1DDA154A0();
  }

  else
  {
    sub_1DDA15470();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1DD9ECD14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1E12B8440](3);
        sub_1DDA14BC0();
        return sub_1DDA155B0();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9ECDA4()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1E12B8440](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x1E12B8440](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x1E12B8440](v2);
  }

  v4 = *v0;
  MEMORY[0x1E12B8440](3);

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9ECE3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1E12B8440](3);
        sub_1DDA14BC0();
        return sub_1DDA155B0();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9ECEC8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_1DDA15440();
}

uint64_t sub_1DD9ECF4C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9ED020()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9ED0E0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9ED1B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0A618();
  *a2 = result;
  return result;
}

void sub_1DD9ED1E0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xEF726F746172656ELL;
  v5 = 0x65675F6567616D69;
  if (*v1 != 2)
  {
    v5 = 0x6E65675F656C6966;
    v4 = 0xEE00726F74617265;
  }

  if (*v1)
  {
    v3 = 0x6E6F6974636E7566;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9ED270()
{
  v1 = 1701869940;
  v2 = 0x65675F6567616D69;
  if (*v0 != 2)
  {
    v2 = 0x6E65675F656C6966;
  }

  if (*v0)
  {
    v1 = 0x6E6F6974636E7566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9ED2FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0A618();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9ED324(uint64_t a1)
{
  v2 = sub_1DDA0E9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9ED360(uint64_t a1)
{
  v2 = sub_1DDA0E9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9ED39C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84948, &qword_1DDA22838);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0E9BC();
  sub_1DDA15650();
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = *(v2 + 40);
  if (!(v14 >> 6))
  {
    v20 = v9;
    LOBYTE(v23) = 0;
    v17 = v21;
    sub_1DDA15340();
    if (!v17)
    {
      v23 = v20;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v28 = v14 & 0x3F;
      v29 = 1;
      sub_1DDA0EA10();
      sub_1DDA15380();
    }

    return (*(v22 + 8))(v7, v4);
  }

  if (v14 >> 6 == 1)
  {
    LOBYTE(v23) = 0;
    v15 = v21;
    sub_1DDA15340();
    if (!v15)
    {
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v13;
      v29 = 2;
      sub_1DDA0EA64();
      sub_1DDA15380();
    }

    return (*(v22 + 8))(v7, v4);
  }

  if (v11 | v10 | v9 | v12 | v13 || v14 != 128)
  {
    v18 = v11 | v10 | v12 | v13;
    if (v14 == 128 && v9 == 1 && !v18)
    {
      LOBYTE(v23) = 0;
    }

    else if (v14 == 128 && v9 == 2 && !v18)
    {
      LOBYTE(v23) = 0;
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  sub_1DDA15340();
  return (*(v22 + 8))(v7, v4);
}

uint64_t sub_1DD9ED710(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  if (v8 >> 6)
  {
    if (v8 >> 6 == 1)
    {
      v14 = *v1;
      v15 = v1[1];
      v16 = v1[2];
      v17 = v1[3];
      v18 = v1[4];
      MEMORY[0x1E12B8440](4);
      return sub_1DD9EEB6C();
    }

    else
    {
      if (v6 | v4 | v3 | v5 | v7 || v8 != 128)
      {
        v11 = v6 | v4 | v5 | v7;
        if (v8 == 128 && v3 == 1 && v11 == 0)
        {
          v10 = 1;
        }

        else if (v8 == 128 && v3 == 2 && !v11)
        {
          v10 = 2;
        }

        else
        {
          v10 = 5;
        }
      }

      else
      {
        v10 = 0;
      }

      return MEMORY[0x1E12B8440](v10);
    }
  }

  else
  {
    MEMORY[0x1E12B8440](3);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
    sub_1DD965608(a1);
    return sub_1DDA15590();
  }
}

uint64_t sub_1DD9ED864()
{
  sub_1DDA15570();
  sub_1DD9ED710(v1);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9ED8A8()
{
  sub_1DDA15570();
  sub_1DD9ED710(v1);
  return sub_1DDA155B0();
}

BOOL sub_1DD9ED8E4(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1DD9FA58C(&v5, &v7);
}

uint64_t sub_1DD9ED930(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D10, &qword_1DDA24C58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA115A0();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  v20 = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v19 = 1;
    sub_1DDA15340();
    v18 = v3[4];
    v17[15] = 2;
    type metadata accessor for JSONSchema();
    sub_1DD9E4B98(&qword_1ECD83450, type metadata accessor for JSONSchema);
    sub_1DDA15380();
    v16 = *(v3 + 40);
    v17[14] = 3;
    sub_1DDA15350();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9EDB68()
{
  v1 = 1701667182;
  v2 = 0x6574656D61726170;
  if (*v0 != 2)
  {
    v2 = 0x746369727473;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9EDBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0A664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9EDC0C(uint64_t a1)
{
  v2 = sub_1DDA115A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EDC48(uint64_t a1)
{
  v2 = sub_1DDA115A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9EDC84@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DDA0A7D0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DD9EDCE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v8);
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EDD78(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(a1);
  return sub_1DDA15590();
}

uint64_t sub_1DD9EDDE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  sub_1DD965608(v8);
  sub_1DDA15590();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9EDE78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DDA15440() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  if (sub_1DD96D458(v3, v8))
  {
    return v5 ^ v9 ^ 1u;
  }

  return 0;
}

uint64_t sub_1DD9EDF4C(uint64_t a1)
{
  v2 = sub_1DDA11894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9EDF88(uint64_t a1)
{
  v2 = sub_1DDA11894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9EE014()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE0E8()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EE1A8()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0AAD4();
  *a2 = result;
  return result;
}

void sub_1DD9EE2A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6465727265666E69;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x656772616CLL;
  if (v2 != 3)
  {
    v8 = 0x656772616C78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C6C616D73;
    v3 = 0xE500000000000000;
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

uint64_t sub_1DD9EE394()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE444()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EE4E0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE58C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0AB20();
  *a2 = result;
  return result;
}

void sub_1DD9EE5BC(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6465727265666E69;
  v4 = 1819042164;
  if (*v1 != 2)
  {
    v4 = 1701079415;
  }

  if (*v1)
  {
    v3 = 0x657261757173;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1DD9EE684()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE734()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9EE7D0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EE87C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0AB6C();
  *a2 = result;
  return result;
}

void sub_1DD9EE8AC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7827308;
  v4 = 0xE400000000000000;
  v5 = 1751607656;
  if (*v1 != 2)
  {
    v5 = 0x6465727265666E69;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D756964656DLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9EE968(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D20, &qword_1DDA24C60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA115F4();
  sub_1DDA15650();
  LOBYTE(v14) = *(v3 + 1);
  v16 = 0;
  sub_1DDA11648();
  sub_1DDA15330();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    v16 = 1;
    sub_1DDA1169C();
    sub_1DDA15330();
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    LOBYTE(v14) = 2;
    sub_1DDA15300();
    LOBYTE(v14) = *(v3 + 2);
    v16 = 3;
    sub_1DDA116F0();
    sub_1DDA15330();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9EEB6C()
{
  v1 = *v0;
  sub_1DDA15590();
  if (v1 != 5)
  {
    sub_1DDA14BC0();
  }

  if (v0[1] == 4)
  {
    sub_1DDA15590();
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();
  }

  v2 = v0[2];
  if (v2 == 4)
  {
    sub_1DDA15590();
    if ((v0[17] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1DDA15590();
    sub_1DDA14BC0();

    if ((v0[17] & 1) == 0)
    {
LABEL_8:
      v3 = *(v0 + 1);
      v4 = v0[16];
      sub_1DDA15590();
      if (v4)
      {
        v5 = 0;
      }

      else
      {
        MEMORY[0x1E12B8440](1);
        v5 = v3;
      }

      MEMORY[0x1E12B8440](v5);
      if (!*(v0 + 4))
      {
        return sub_1DDA15590();
      }

      goto LABEL_12;
    }
  }

  sub_1DDA15590();
  if (!*(v0 + 4))
  {
    return sub_1DDA15590();
  }

LABEL_12:
  v6 = *(v0 + 3);
  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9EEDE8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84770, &qword_1DDA22788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BF30();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1DDA15340();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1DDA15340();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_1DDA15340();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9EEF88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1DDA134E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83EA8, &qword_1DDA1E1E0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ImageGeneratorCall.Image(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FFCD4();
  sub_1DDA15620();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
    sub_1DDA152C0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1DD9FEFD0(v14, v17, type metadata accessor for ImageGeneratorCall.Image);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9EF224(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84738, &qword_1DDA22770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BE28();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    sub_1DDA15340();
    v17 = v3[4];
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD846E0, &qword_1DDA22750);
    sub_1DDA0C134();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9EF418()
{
  v1 = type metadata accessor for ImageGeneratorCall.Image(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  sub_1DDA14BC0();
  v8 = v0[2];
  v9 = v0[3];
  sub_1DDA14BC0();
  v10 = v0[4];
  v11 = *(v10 + 16);
  result = MEMORY[0x1E12B8440](v11);
  if (v11)
  {
    v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1DD9FF500(v13, v5, type metadata accessor for ImageGeneratorCall.Image);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      result = sub_1DD9FF568(v5, type metadata accessor for ImageGeneratorCall.Image);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1DD9EF5A8()
{
  v1 = type metadata accessor for ImageGeneratorCall.Image(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  v11 = *(v10 + 16);
  MEMORY[0x1E12B8440](v11);
  if (v11)
  {
    v12 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_1DD9FF500(v12, v5, type metadata accessor for ImageGeneratorCall.Image);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v5, type metadata accessor for ImageGeneratorCall.Image);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EF75C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1DDA134E0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83E78, &qword_1DDA1E1C8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FileGeneratorCall.File(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9FFC2C();
  sub_1DDA15620();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
    sub_1DDA152C0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1DD9FEFD0(v14, v17, type metadata accessor for FileGeneratorCall.File);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD9EF9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84720, &qword_1DDA22768);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0BD20();
  sub_1DDA15650();
  v15 = 0;
  sub_1DDA15340();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD846C0, &qword_1DDA22740);
    sub_1DDA0C080();
    sub_1DDA15380();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DD9EFB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FileGeneratorCall.File(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA14BC0();
  v10 = *(a4 + 16);
  result = MEMORY[0x1E12B8440](v10);
  if (v10)
  {
    v12 = a4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_1DD9FF500(v12, v9, type metadata accessor for FileGeneratorCall.File);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      result = sub_1DD9FF568(v9, type metadata accessor for FileGeneratorCall.File);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1DD9EFD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA15570();
  sub_1DDA14BC0();
  v9 = *(a3 + 16);
  MEMORY[0x1E12B8440](v9);
  if (v9)
  {
    v10 = a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1DD9FF500(v10, v8, type metadata accessor for FileGeneratorCall.File);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v8, type metadata accessor for FileGeneratorCall.File);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9EFED0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840A0, &qword_1DDA1E2C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05BFC();
  sub_1DDA15650();
  v20[15] = 0;
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0]);
  sub_1DDA15380();
  if (!v2)
  {
    v11 = type metadata accessor for FileGeneratorFile(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v20[14] = 1;
    sub_1DDA15340();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v20[13] = 2;
    sub_1DDA15340();
    v18 = *(v3 + v11[7]);
    v20[12] = 3;
    sub_1DDA15390();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9F00EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1DDA134E0();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84090, &qword_1DDA1E2C0);
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v24 - v8;
  v10 = type metadata accessor for FileGeneratorFile(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05BFC();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v26;
  v33 = 0;
  sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
  sub_1DDA152C0();
  (*(v15 + 32))(v13, v28, v4);
  v32 = 1;
  v16 = sub_1DDA15280();
  v17 = &v13[v10[5]];
  *v17 = v16;
  v17[1] = v18;
  v31 = 2;
  v19 = sub_1DDA15280();
  v20 = &v13[v10[6]];
  *v20 = v19;
  v20[1] = v21;
  v30 = 3;
  v22 = sub_1DDA152D0();
  (*(v27 + 8))(v9, v29);
  *&v13[v10[7]] = v22;
  sub_1DD9FF500(v13, v25, type metadata accessor for FileGeneratorFile);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DD9FF568(v13, type metadata accessor for FileGeneratorFile);
}

uint64_t sub_1DD9F0528(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840B8, &qword_1DDA1E2D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05C50();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v13 = v3[2];
    v17[14] = 1;
    sub_1DDA15370();
    v14 = v3[3];
    v17[13] = 2;
    sub_1DDA15370();
    v15 = *(type metadata accessor for ImageGeneratorImage(0) + 28);
    v17[12] = 3;
    sub_1DDA134E0();
    sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0]);
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9F0764@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1DDA134E0();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD840A8, &qword_1DDA1E2D0);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ImageGeneratorImage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA05C50();
  v27 = v10;
  v16 = v28;
  sub_1DDA15620();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v18 = v6;
  v19 = v25;
  v20 = v26;
  v32 = 0;
  *v14 = sub_1DDA15280();
  v14[1] = v21;
  v28 = v21;
  v31 = 1;
  v14[2] = sub_1DDA152B0();
  v30 = 2;
  v14[3] = sub_1DDA152B0();
  v29 = 3;
  sub_1DD9E4B98(&qword_1ECD83A30, MEMORY[0x1E6968FB0]);
  sub_1DDA152C0();
  (*(v19 + 8))(v27, v20);
  (*(v23 + 32))(v14 + *(v11 + 28), v18, v3);
  sub_1DD9FF500(v14, v24, type metadata accessor for ImageGeneratorImage);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1DD9FF568(v14, type metadata accessor for ImageGeneratorImage);
}

uint64_t sub_1DD9F0B00(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84840, &qword_1DDA227D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C908();
  sub_1DDA15650();
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  v12[2] = *(v2 + 32);
  v13 = *(v2 + 48);
  sub_1DDA0C95C();
  sub_1DDA15380();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DD9F0C5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_1DDA15570();
  if (v7)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v4)
    {
      sub_1DDA15590();
      return sub_1DDA155B0();
    }

    sub_1DDA15590();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F0D44()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_1DD9F0D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265666E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9F0E44(uint64_t a1)
{
  v2 = sub_1DDA127B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F0E80(uint64_t a1)
{
  v2 = sub_1DDA127B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F0EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9F0F3C(uint64_t a1)
{
  v2 = sub_1DDA12804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F0F78(uint64_t a1)
{
  v2 = sub_1DDA12804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F0FB4(uint64_t a1)
{
  v2 = sub_1DDA12858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F0FF0(uint64_t a1)
{
  v2 = sub_1DDA12858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F102C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DDA0ABB8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1DD9F1060(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  if (v3 == 1)
  {
    sub_1DDA15470();
  }

  else
  {
    sub_1DDA15490();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1DD9F1124()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DDA15570();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1E12B8440](1);
    v3 = v1;
  }

  MEMORY[0x1E12B8440](v3);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F1184()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1E12B8440](1);
  }

  return MEMORY[0x1E12B8440](v1);
}

uint64_t sub_1DD9F11CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DDA15570();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1E12B8440](1);
  }

  MEMORY[0x1E12B8440](v1);
  return sub_1DDA155B0();
}

BOOL sub_1DD9F122C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1DD9F1274()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F133C()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F13F0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F14B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0B058();
  *a2 = result;
  return result;
}

void sub_1DD9F14E4(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000006F697461;
  v3 = 0x725F746365707361;
  v4 = 0xE500000000000000;
  v5 = 0x6C65646F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x6C6961746564;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x67616D695F6D756ELL;
    v2 = 0xEA00000000007365;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9F1568()
{
  v1 = 0x725F746365707361;
  v2 = 0x6C65646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6961746564;
  }

  if (*v0)
  {
    v1 = 0x67616D695F6D756ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9F15E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0B058();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F1610(uint64_t a1)
{
  v2 = sub_1DDA115F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F164C(uint64_t a1)
{
  v2 = sub_1DDA115F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F16A0()
{
  sub_1DDA15570();
  sub_1DD9EEB6C();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F16E4()
{
  sub_1DDA15570();
  sub_1DD9EEB6C();
  return sub_1DDA155B0();
}

BOOL sub_1DD9F1720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DD9FA314(v5, v7);
}

uint64_t sub_1DD9F176C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DD9F17B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0B0A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F17E0(uint64_t a1)
{
  v2 = sub_1DDA0BF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F181C(uint64_t a1)
{
  v2 = sub_1DDA0BF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F1858@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DDA0B1BC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1DD9F18B4()
{
  if (*v0)
  {
    result = 0x74757074756FLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9F18E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9F19B0(uint64_t a1)
{
  v2 = sub_1DDA0E968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F19EC(uint64_t a1)
{
  v2 = sub_1DDA0E968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1AC4(uint64_t a1)
{
  v2 = sub_1DDA0C23C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1B00(uint64_t a1)
{
  v2 = sub_1DDA0C23C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1B80(uint64_t a1)
{
  v2 = sub_1DDA0F01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1BBC(uint64_t a1)
{
  v2 = sub_1DDA0F01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1C3C(uint64_t a1)
{
  v2 = sub_1DDA0C1E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1C78(uint64_t a1)
{
  v2 = sub_1DDA0C1E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1CF8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1DDA15650();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DD9F1E18(uint64_t a1)
{
  v2 = sub_1DD9FFCD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1E54(uint64_t a1)
{
  v2 = sub_1DD9FFCD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F1F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0B5F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F1F2C(uint64_t a1)
{
  v2 = sub_1DDA0BE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F1F68(uint64_t a1)
{
  v2 = sub_1DDA0BE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F1FA4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DDA0B704(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1DD9F200C()
{
  v1 = type metadata accessor for ImageGeneratorCall.Image(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_1DD9FF500(v12, v5, type metadata accessor for ImageGeneratorCall.Image);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v5, type metadata accessor for ImageGeneratorCall.Image);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F21CC(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD966610(v3, v7);
}

uint64_t sub_1DD9F2288(uint64_t a1)
{
  v2 = sub_1DD9FFC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F22C4(uint64_t a1)
{
  v2 = sub_1DD9FFC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F235C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1DDA15650();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83A20, MEMORY[0x1E6968FB0]);
  sub_1DDA15380();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DD9F24DC()
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F2564()
{
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);

  return sub_1DDA14AD0();
}

uint64_t sub_1DD9F25E8()
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F266C()
{
  if (*v0)
  {
    result = 0x73656C6966;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9F26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656C6966 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9F2774(uint64_t a1)
{
  v2 = sub_1DDA0BD20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F27B0(uint64_t a1)
{
  v2 = sub_1DDA0BD20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F27EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA0B978(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9F2854()
{
  v1 = type metadata accessor for FileGeneratorCall.File(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  sub_1DDA15570();
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_1DD9FF500(v10, v5, type metadata accessor for FileGeneratorCall.File);
      sub_1DDA134E0();
      sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
      sub_1DDA14AD0();
      sub_1DD9FF568(v5, type metadata accessor for FileGeneratorCall.File);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F29F8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD966804(v2, v3);
}

uint64_t sub_1DD9F2A78()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F2B34()
{
  *v0;
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F2BDC()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F2C94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0BB7C();
  *a2 = result;
  return result;
}

void sub_1DD9F2CC4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7107189;
  v4 = 0x7079745F656D696DLL;
  v5 = 0xE900000000000065;
  if (*v1 != 2)
  {
    v4 = 1702521203;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D616E5F656C6966;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD9F2D3C()
{
  v1 = 7107189;
  v2 = 0x7079745F656D696DLL;
  if (*v0 != 2)
  {
    v2 = 1702521203;
  }

  if (*v0)
  {
    v1 = 0x6D616E5F656C6966;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9F2DB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0BB7C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F2DD8(uint64_t a1)
{
  v2 = sub_1DDA05BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F2E14(uint64_t a1)
{
  v2 = sub_1DDA05BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F2E80(int *a1)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  v3 = (v1 + a1[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_1DDA14BC0();
  v6 = (v1 + a1[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8460](*(v1 + a1[7]));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F2F4C(uint64_t a1, int *a2)
{
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_1DDA14BC0();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_1DDA14BC0();
  return MEMORY[0x1E12B8460](*(v2 + a2[7]));
}

uint64_t sub_1DD9F3000(uint64_t a1, int *a2)
{
  sub_1DDA15570();
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_1DDA14BC0();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8460](*(v2 + a2[7]));
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F30CC()
{
  v1 = 0x74706D6F7270;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9F3134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DDA0BBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD9F315C(uint64_t a1)
{
  v2 = sub_1DDA05C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F3198(uint64_t a1)
{
  v2 = sub_1DDA05C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F3204(uint64_t a1)
{
  sub_1DDA15570();
  v3 = *v1;
  v4 = v1[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v1[2]);
  MEMORY[0x1E12B8440](v1[3]);
  v5 = *(a1 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F32C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v2[2]);
  MEMORY[0x1E12B8440](v2[3]);
  v6 = *(a2 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  return sub_1DDA14AD0();
}

uint64_t sub_1DD9F336C(uint64_t a1, uint64_t a2)
{
  sub_1DDA15570();
  v4 = *v2;
  v5 = v2[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v2[2]);
  MEMORY[0x1E12B8440](v2[3]);
  v6 = *(a2 + 28);
  sub_1DDA134E0();
  sub_1DD9E4B98(&qword_1ECD83488, MEMORY[0x1E6968FB0]);
  sub_1DDA14AD0();
  return sub_1DDA155B0();
}

unint64_t sub_1DD9F3554()
{
  result = qword_1ECD83CD8;
  if (!qword_1ECD83CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CD8);
  }

  return result;
}

unint64_t sub_1DD9F35AC()
{
  result = qword_1ECD83CE0;
  if (!qword_1ECD83CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CE0);
  }

  return result;
}

unint64_t sub_1DD9F364C()
{
  result = qword_1ECD83CF0;
  if (!qword_1ECD83CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83CF0);
  }

  return result;
}

unint64_t sub_1DD9F377C()
{
  result = qword_1ECD83D10;
  if (!qword_1ECD83D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D10);
  }

  return result;
}

unint64_t sub_1DD9F37D4()
{
  result = qword_1ECD83D18;
  if (!qword_1ECD83D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D18);
  }

  return result;
}

unint64_t sub_1DD9F382C()
{
  result = qword_1ECD83D20;
  if (!qword_1ECD83D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D20);
  }

  return result;
}

unint64_t sub_1DD9F3884()
{
  result = qword_1ECD83D28;
  if (!qword_1ECD83D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D28);
  }

  return result;
}

unint64_t sub_1DD9F38DC()
{
  result = qword_1ECD83D30;
  if (!qword_1ECD83D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D30);
  }

  return result;
}

unint64_t sub_1DD9F3934()
{
  result = qword_1ECD83D38;
  if (!qword_1ECD83D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D38);
  }

  return result;
}

unint64_t sub_1DD9F3B38()
{
  result = qword_1ECD83D78;
  if (!qword_1ECD83D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83D78);
  }

  return result;
}

uint64_t sub_1DD9F3BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9F3C24(uint64_t a1)
{
  v2 = sub_1DDA0C908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F3C60(uint64_t a1)
{
  v2 = sub_1DDA0C908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F3CB8(uint64_t a1, uint64_t a2)
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
  return sub_1DD9F9E10(v5, v7) & 1;
}

uint64_t sub_1DD9F3D14(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84CF0, &qword_1DDA24C48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA113A8();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_1DDA15340();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v16 = *(v3 + 1);
    v17 = v13;
    v15[15] = 1;
    sub_1DDA114F8();
    sub_1DDA15380();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9F3E90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t))
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8(v16, v17, v18);
  sub_1DDA15650();
  v23 = 0;
  v19 = v21[3];
  sub_1DDA15340();
  if (!v19)
  {
    v22 = 1;
    sub_1DDA15340();
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DD9F4020()
{
  if (*v0)
  {
    return 1701603686;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD9F4044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9F4120(uint64_t a1)
{
  v2 = sub_1DDA113A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F415C(uint64_t a1)
{
  v2 = sub_1DDA113A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9F4198@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DDA0CA58(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_1DD9F41F4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (v2 == v6 && v4 == v7 || (sub_1DDA15440() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1DDA15440() & 1) != 0);
  }

  v10 = sub_1DDA15440();
  result = 0;
  if (v10)
  {
    return (v2 == v6 && v4 == v7 || (sub_1DDA15440() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_1DDA15440() & 1) != 0);
  }

  return result;
}

uint64_t sub_1DD9F42D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7079745F656D696DLL;
  }

  else
  {
    v4 = 1701667182;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x7079745F656D696DLL;
  }

  else
  {
    v6 = 1701667182;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();
  }

  return v9 & 1;
}

uint64_t sub_1DD9F4378()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F43F8()
{
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F4464()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

void sub_1DD9F44EC(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x7079745F656D696DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD9F4528()
{
  if (*v0)
  {
    result = 0x7079745F656D696DLL;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9F456C@<X0>(char *a1@<X8>)
{
  v2 = sub_1DDA151E0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DD9F45CC(uint64_t a1)
{
  v2 = sub_1DDA1260C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F4608(uint64_t a1)
{
  v2 = sub_1DDA1260C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F4688@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_1DDA0B408(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
  }

  return result;
}

uint64_t sub_1DD9F4720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84D00, &qword_1DDA24C50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA11450();
  sub_1DDA15650();
  LOBYTE(v16) = 0;
  sub_1DDA15340();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1DDA1154C();
    sub_1DDA15330();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DD9F48B0()
{
  if (*v0)
  {
    result = 0x65746973626577;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1DD9F48E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD9F49C0(uint64_t a1)
{
  v2 = sub_1DDA11450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F49FC(uint64_t a1)
{
  v2 = sub_1DDA11450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F4A38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DDA0CC3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DD9F4A88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v4)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F4B14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DDA14BC0();
  if (!v4)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9F4B90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DDA15570();
  sub_1DDA14BC0();
  sub_1DDA15590();
  if (v4)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F4C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9F4CBC(uint64_t a1)
{
  v2 = sub_1DDA12660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F4CF8(uint64_t a1)
{
  v2 = sub_1DDA12660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F4D78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DDA15620();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = sub_1DDA15280();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_1DD9F4F44(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_1DDA15650();
  sub_1DDA15340();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DD9F508C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F50D8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DDA14BC0();
}

uint64_t sub_1DD9F50E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA15570();
  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F5128(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DDA15440();
  }
}

uint64_t sub_1DD9F5158(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA15640();
  v4 = *v1;
  v5 = v1[1];
  if (v1[3])
  {
    v6 = v1[2];
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_1DDA0E6C4();
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    sub_1DDA0E718();
  }

  sub_1DDA154A0();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1DD9F5244()
{
  sub_1DDA15570();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v0[6])
  {
    v6 = v0[4];
    v5 = v0[5];
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v4)
    {
      sub_1DDA15590();
      return sub_1DDA155B0();
    }

    sub_1DDA15590();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F532C()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_1DDA14BC0();
  v12 = v0[2];
  v13 = v0[3];
  sub_1DDA14BC0();
  v14 = (v0 + *(type metadata accessor for UploadDocumentResponse(0) + 24));
  v15 = *v14;
  v16 = v14[1];
  sub_1DDA14BC0();
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v18 = SessionResponse[5];
  sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
  sub_1DDA14AD0();
  v19 = v14 + SessionResponse[6];
  sub_1DDA14AD0();
  sub_1DD90ADB4(v14 + SessionResponse[7], v9, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1DDA15590();
    sub_1DDA14AD0();
    (*(v2 + 8))(v5, v1);
  }

  v20 = v14 + SessionResponse[8];
  if (*v20 == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 + 1);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  return MEMORY[0x1E12B8440](v21);
}

uint64_t sub_1DD9F561C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v4 = *(*(SessionResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84830, &qword_1DDA227D0);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UploadDocumentResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C8B4();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v16 = v27;
  v17 = v28;
  v31 = 0;
  *v14 = sub_1DDA15280();
  v14[1] = v18;
  v30 = 1;
  v14[2] = sub_1DDA15280();
  v14[3] = v19;
  v29 = 2;
  sub_1DD9E4B98(&qword_1ECD837F8, type metadata accessor for CreateSessionResponse);
  v23 = v14;
  sub_1DDA152C0();
  (*(v16 + 8))(v10, v17);
  v20 = *(v11 + 24);
  v21 = v23;
  sub_1DD9FEFD0(v6, v23 + v20, type metadata accessor for CreateSessionResponse);
  sub_1DD9FF500(v21, v25, type metadata accessor for UploadDocumentResponse);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1DD9FF568(v21, type metadata accessor for UploadDocumentResponse);
}

double sub_1DD9F59D4@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
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

uint64_t sub_1DD9F5A44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v0[6])
  {
    v6 = v0[4];
    v5 = v0[5];
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v4)
    {
      return sub_1DDA15590();
    }

    sub_1DDA15590();
  }

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9F5B38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_1DDA15570();
  if (v7)
  {
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
    sub_1DDA14BC0();
  }

  else
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (!v4)
    {
      sub_1DDA15590();
      return sub_1DDA155B0();
    }

    sub_1DDA15590();
  }

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F5C1C(uint64_t a1, uint64_t a2)
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
  return sub_1DD9F8AE4(v5, v7) & 1;
}

uint64_t sub_1DD9F5C78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F6E6F6973736573;
  v4 = 0xEA00000000006469;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973736573;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x5F6E6F6973736573;
  v8 = 0xEA00000000006469;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973736573;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9F5D7C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F5E18()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F5EA0()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F5F38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0D3BC();
  *a2 = result;
  return result;
}

void sub_1DD9F5F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEA00000000006469;
  v5 = 0x5F6E6F6973736573;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973736573;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9F5FC0()
{
  v1 = 0x5F6E6F6973736573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DD9F6014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0D3BC();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F603C(uint64_t a1)
{
  v2 = sub_1DDA0C8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F6078(uint64_t a1)
{
  v2 = sub_1DDA0C8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F6100(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1DDA15440() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return sub_1DD9CF388(a1 + v8, a2 + v8);
}

uint64_t sub_1DD9F61A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84858, &qword_1DDA227E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DDA0C9B0();
  sub_1DDA15650();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_1DDA15340();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v17[14] = 1;
  sub_1DDA15370();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  sub_1DDA15340();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DD9F6344()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v0[2]);
  v3 = v0[3];
  v4 = v0[4];
  sub_1DDA14BC0();
  v5 = *(v0 + 88);
  if (v5 == 255)
  {
    return sub_1DDA15590();
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v11 = v0[5];
  v10 = v0[6];
  sub_1DDA15590();
  if ((v5 & 1) == 0)
  {
    MEMORY[0x1E12B8440](0);
    sub_1DDA14BC0();
    if (v7)
    {
      sub_1DDA15590();
      goto LABEL_6;
    }

    return sub_1DDA15590();
  }

  MEMORY[0x1E12B8440](1);
  sub_1DDA14BC0();
  sub_1DDA14BC0();
LABEL_6:

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9F6458(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x755F64616F6C7075;
    v6 = 0x5F6E6F6973736573;
    if (a1 != 8)
    {
      v6 = 0x6E6F6973736573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1702521203;
    if (a1 != 5)
    {
      v7 = 0x7079745F656D696DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x5F64657461657263;
    v3 = 0x737574617473;
    if (a1 != 3)
    {
      v3 = 1701667182;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7463656A626FLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DD9F6588()
{
  v1 = sub_1DDA13680();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82838, &unk_1DDA185F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_1DDA14BC0();
  v12 = v0[2];
  v13 = v0[3];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v0[4]);
  v14 = v0[5];
  v15 = v0[6];
  sub_1DDA14BC0();
  v16 = v0[7];
  v17 = v0[8];
  sub_1DDA14BC0();
  MEMORY[0x1E12B8440](v0[9]);
  v18 = v0[10];
  v19 = v0[11];
  sub_1DDA14BC0();
  v20 = v0[12];
  v21 = v0[13];
  sub_1DDA14BC0();
  v22 = v0[14];
  v23 = v0[15];
  sub_1DDA14BC0();
  v24 = (v0 + *(type metadata accessor for TwoPhaseUploadDocumentResponse(0) + 52));
  v25 = *v24;
  v26 = v24[1];
  sub_1DDA14BC0();
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v28 = SessionResponse[5];
  sub_1DD9E4B98(&qword_1ECD82828, MEMORY[0x1E6969530]);
  sub_1DDA14AD0();
  v29 = v24 + SessionResponse[6];
  sub_1DDA14AD0();
  sub_1DD90ADB4(v24 + SessionResponse[7], v9, &qword_1ECD82838, &unk_1DDA185F0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1DDA15590();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1DDA15590();
    sub_1DDA14AD0();
    (*(v2 + 8))(v5, v1);
  }

  v30 = v24 + SessionResponse[8];
  if (*v30 == 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v30 + 1);
    MEMORY[0x1E12B8440](1);
    sub_1DDA14BC0();
  }

  return MEMORY[0x1E12B8440](v31);
}

uint64_t sub_1DD9F68CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  SessionResponse = type metadata accessor for CreateSessionResponse(0);
  v5 = *(*(SessionResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](SessionResponse);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD84868, &qword_1DDA227E8);
  v40 = *(v42 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v35 - v9;
  v11 = type metadata accessor for TwoPhaseUploadDocumentResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DDA0CA04();
  v41 = v10;
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v37 = v11;
  v38 = v7;
  v17 = v40;
  v53 = 0;
  *v14 = sub_1DDA15280();
  v14[1] = v19;
  v52 = 1;
  v14[2] = sub_1DDA15280();
  v14[3] = v20;
  v51 = 2;
  v14[4] = sub_1DDA152B0();
  v50 = 3;
  v14[5] = sub_1DDA15280();
  v14[6] = v21;
  v49 = 4;
  v14[7] = sub_1DDA15280();
  v14[8] = v22;
  v48 = 5;
  v14[9] = sub_1DDA152B0();
  v47 = 6;
  v14[10] = sub_1DDA15280();
  v14[11] = v23;
  v46 = 7;
  v14[12] = sub_1DDA15280();
  v14[13] = v24;
  v45 = 8;
  v25 = sub_1DDA15280();
  v36 = 0;
  v14[14] = v25;
  v14[15] = v26;
  v44 = 9;
  sub_1DD9E4B98(&qword_1ECD837F8, type metadata accessor for CreateSessionResponse);
  v27 = v36;
  sub_1DDA152C0();
  v36 = v27;
  (*(v17 + 8))(v41, v42);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    v28 = v14[1];

    v29 = v14[3];

    v30 = v14[6];

    v31 = v14[8];

    v33 = v14[11];

    v32 = v14[13];

    v34 = v14[15];
  }

  else
  {
    sub_1DD9FEFD0(v38, v14 + *(v37 + 52), type metadata accessor for CreateSessionResponse);
    sub_1DD9FF500(v14, v39, type metadata accessor for TwoPhaseUploadDocumentResponse);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_1DD9FF568(v14, type metadata accessor for TwoPhaseUploadDocumentResponse);
  }
}

uint64_t sub_1DD9F6EA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x7079745F656D696DLL;
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701667182;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1702521203;
  if (*a2 != 1)
  {
    v8 = 0x7079745F656D696DLL;
    v3 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9F6F98()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7030()
{
  *v0;
  *v0;
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F70B4()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0D408();
  *a2 = result;
  return result;
}

void sub_1DD9F7178(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702521203;
  if (v2 != 1)
  {
    v5 = 0x7079745F656D696DLL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DD9F71CC()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x7079745F656D696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD9F721C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0D408();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F7244(uint64_t a1)
{
  v2 = sub_1DDA0C9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F7280(uint64_t a1)
{
  v2 = sub_1DDA0C9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F72D4()
{
  sub_1DDA15570();
  sub_1DD9F6344();
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7318()
{
  sub_1DDA15570();
  sub_1DD9F6344();
  return sub_1DDA155B0();
}

BOOL sub_1DD9F7354(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DD9FAB80(v7, v9);
}

uint64_t sub_1DD9F73D8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DDA15440();
  }

  return v12 & 1;
}

uint64_t sub_1DD9F7484(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1DDA15570();
  a3(v5);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F7508(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1DDA14BC0();
}

uint64_t sub_1DD9F7578(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1DDA15570();
  a4(v6);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9F75E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DDA0D454();
  *a2 = result;
  return result;
}

uint64_t sub_1DD9F7610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD9F6458(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD9F7658@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DDA0D454();
  *a1 = result;
  return result;
}

uint64_t sub_1DD9F7680(uint64_t a1)
{
  v2 = sub_1DDA0CA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9F76BC(uint64_t a1)
{
  v2 = sub_1DDA0CA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9F7728(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1DDA15570();
  a3(v5);
  return sub_1DDA155B0();
}

uint64_t sub_1DD9F778C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1DDA15570();
  a4(v6);
  return sub_1DDA155B0();
}

unint64_t sub_1DD9F77D4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7463656A626FLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x5F79616C70736964;
      break;
    case 4:
      result = 0x6E6F6973726576;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0x5F747865746E6F63;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x79726F6765746163;
      break;
    case 9:
      result = 0x7367616C665F7369;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x5F657361656C6572;
      break;
    default:
      return result;
  }

  return result;
}