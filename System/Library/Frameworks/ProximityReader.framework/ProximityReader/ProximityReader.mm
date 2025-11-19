uint64_t sub_23A63F008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A63F0C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A63F2F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A63F338()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A63F370()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_23A6DE294();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23A63F4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_23A6DE294();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23A63F540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A63F5FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A63F6B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A63F6E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A63F73C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23A63F754()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A63F7A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63F89C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23A63F8E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A63F91C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A63F92C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A63F964()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23A63F99C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63FA6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_23A63FB40()
{
  v1 = sub_23A6DE2F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63FCB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A63FD88()
{
  v19 = sub_23A6DE574();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 16) & ~v2;
  v3 = (*(v1 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8);
  v4 = *(v18 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_23A6DE7F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = v2 | v10 | v5;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v17, v19);
  v14 = *(v0 + v3);

  (*(v4 + 8))(v0 + v6, v18);
  (*(v9 + 8))(v0 + v11, v8);
  v15 = *(v0 + v13);

  return MEMORY[0x2821FE8E8](v0, v13 + 10, v12 | 7);
}

uint64_t sub_23A63FFB8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A63FFF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A640044()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23A640154()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A640190()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A6401D0()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A64021C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A640268()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A6402A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_23A6402F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A640330()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23A640380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = *(v0 + 56);

  v9 = *(v0 + 72);

  v10 = *(v0 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A640478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);
  swift_unknownObjectRelease();
  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A640560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);
  swift_unknownObjectRelease();
  v8 = *(v0 + 48);

  v9 = *(v0 + 64);

  v10 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A640658()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A6406B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_23A640850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A64090C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A640AB4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A640B20(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A640B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A640BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A640C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A640CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A640D48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[12];

  return v18(v19, a2, v17);
}

uint64_t sub_23A640F34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[12];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_23A641120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A6411E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A6412AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A641368(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A6414D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6DE314();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A641640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23A6DE314();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A6416F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A641764(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A6417D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23A6DE314();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23A6418C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23A6DE314();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23A6419C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A641AFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23A641C38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A641C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A641D2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641DF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A641E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A641EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A641F98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D168, &qword_23A6E4CC8);
  sub_23A6BAFF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23A641FFC()
{
  v1 = (type metadata accessor for DiscoveryRotatedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23A6DF114();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A642120(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A64218C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A6421FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobilePhotoIDDataRequest.Response.DocumentElements();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A6422D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A642414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23A642550(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MobileDocumentDisplayRequest.Options();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23A6425FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDocumentDisplayRequest.Options();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A6426A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE8C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A64270C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE8C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A64277C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6427E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642858(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23A642904(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A6429A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642A84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23A642B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23A642BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A642DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A642E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6DE314();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A642F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23A6DE314();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23A6430B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A64311C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A64318C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6431F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643268(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6432D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DEB24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643344(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6433B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6DE314();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A6434DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23A6DE314();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A643594(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A643600(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A643670(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A6436DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t StoreAndForwardBatchDeletionToken.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_23A644558@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23A644564@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_23A644574()
{
  result = qword_27DF9C750;
  if (!qword_27DF9C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C750);
  }

  return result;
}

uint64_t sub_23A6445C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A644614()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23A6DF684();
}

uint64_t sub_23A64461C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23A6DFCE4();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A644664(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23A6DFC04();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23A6446A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23A6446E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s15ProximityReader21PaymentCardReadResultV0D14EffectiveStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t sub_23A644808()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t PaymentCardReadResult.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PaymentCardReadResult.paymentCardData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PaymentCardReadResult.generalCardData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PaymentCardReadResult.applicationTypeIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_23A644940@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, char a12, char *a13, char *a14)
{
  v14 = *a10;
  v15 = *a13;
  v16 = *a14;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v14;
  *(a9 + 65) = a11;
  *(a9 + 66) = a12;
  *(a9 + 67) = v15;
  *(a9 + 68) = v16;
  return result;
}

unint64_t sub_23A644988()
{
  result = qword_27DF9C758;
  if (!qword_27DF9C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C758);
  }

  return result;
}

unint64_t sub_23A6449E0()
{
  result = qword_27DF9C760;
  if (!qword_27DF9C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C760);
  }

  return result;
}

unint64_t sub_23A644A38()
{
  result = qword_27DF9C768;
  if (!qword_27DF9C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C768);
  }

  return result;
}

__n128 __swift_memcpy69_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23A644ABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
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

uint64_t sub_23A644B04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentCardReadResult.ReadOutcome(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PaymentCardReadResult.ReadOutcome(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StoreAndForwardBatch.StoredPaymentCardReadResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoreAndForwardBatch.StoredPaymentCardReadResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t StoreAndForwardBatch.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StoreAndForwardBatch.signature.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t StoreAndForwardBatch.leafCertificate.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t sub_23A644F28()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000017;
  v4 = 0x747265436661656CLL;
  if (v1 != 4)
  {
    v4 = 0x73746E656D796170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E756F63;
  if (v1 != 1)
  {
    v5 = 0x727574616E676973;
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

uint64_t sub_23A644FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A645F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A645028(uint64_t a1)
{
  v2 = sub_23A645414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A645064(uint64_t a1)
{
  v2 = sub_23A645414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreAndForwardBatch.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C770, &qword_23A6E0D80);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v24 = v1[3];
  v25 = v10;
  v11 = v1[4];
  v22 = v1[5];
  v23 = v11;
  v12 = v1[6];
  v20 = v1[7];
  v21 = v12;
  v19 = v1[8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A645414();
  v14 = v3;
  sub_23A6DFD24();
  LOBYTE(v28) = 0;
  v15 = v26;
  sub_23A6DFBA4();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = v22;
  LOBYTE(v28) = 1;
  sub_23A6DFBB4();
  LOBYTE(v28) = 2;
  sub_23A6DFBA4();
  v28 = v16;
  v27 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C778, &qword_23A6E0D88);
  sub_23A645468();
  sub_23A6DFBC4();
  LOBYTE(v28) = 4;
  sub_23A6DFBA4();
  v28 = v19;
  v27 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C788, &qword_23A6E0D90);
  sub_23A64552C();
  sub_23A6DFBC4();
  return (*(v4 + 8))(v7, v14);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23A645414()
{
  result = qword_27DF9DB30;
  if (!qword_27DF9DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9DB30);
  }

  return result;
}

unint64_t sub_23A645468()
{
  result = qword_27DF9C780;
  if (!qword_27DF9C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C778, &qword_23A6E0D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C780);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_23A64552C()
{
  result = qword_27DF9C790;
  if (!qword_27DF9C790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C788, &qword_23A6E0D90);
    sub_23A6455B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C790);
  }

  return result;
}

unint64_t sub_23A6455B0()
{
  result = qword_27DF9C798;
  if (!qword_27DF9C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C798);
  }

  return result;
}

uint64_t sub_23A645604@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.paymentCardData.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.generalCardData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.signature.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_23A6456F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_23A64570C()
{
  v1 = 25705;
  v2 = 0x436C6172656E6567;
  if (*v0 != 2)
  {
    v2 = 0x727574616E676973;
  }

  if (*v0)
  {
    v1 = 0x43746E656D796170;
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

uint64_t sub_23A645798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A6461A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A6457CC(uint64_t a1)
{
  v2 = sub_23A645A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A645808(uint64_t a1)
{
  v2 = sub_23A645A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreAndForwardBatch.StoredPaymentCardReadResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A0, &qword_23A6E0D98);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16[5] = v1[3];
  v16[6] = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A645A38();
  sub_23A6DFD24();
  v20 = 0;
  v14 = v16[7];
  sub_23A6DFBA4();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_23A6DFBA4();
  v18 = 2;
  sub_23A6DFBA4();
  v17 = 3;
  sub_23A6DFBA4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23A645A38()
{
  result = qword_27DF9DB38[0];
  if (!qword_27DF9DB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9DB38);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23A645AC8(uint64_t a1, int a2)
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

uint64_t sub_23A645B10(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23A645B84(uint64_t a1, int a2)
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

uint64_t sub_23A645BCC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for StoreAndForwardBatch.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StoreAndForwardBatch.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A645D90()
{
  result = qword_27DF9DE40[0];
  if (!qword_27DF9DE40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9DE40);
  }

  return result;
}

unint64_t sub_23A645DE8()
{
  result = qword_27DF9E050[0];
  if (!qword_27DF9E050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9E050);
  }

  return result;
}

unint64_t sub_23A645E40()
{
  result = qword_27DF9E160;
  if (!qword_27DF9E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9E160);
  }

  return result;
}

unint64_t sub_23A645E98()
{
  result = qword_27DF9E168[0];
  if (!qword_27DF9E168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9E168);
  }

  return result;
}

unint64_t sub_23A645EF0()
{
  result = qword_27DF9E1F0;
  if (!qword_27DF9E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9E1F0);
  }

  return result;
}

unint64_t sub_23A645F48()
{
  result = qword_27DF9E1F8[0];
  if (!qword_27DF9E1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF9E1F8);
  }

  return result;
}

uint64_t sub_23A645F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23A6DFC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_23A6DFC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_23A6DFC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023A6E76B0 == a2 || (sub_23A6DFC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747265436661656CLL && a2 == 0xEF65746163696669 || (sub_23A6DFC04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E656D796170 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_23A6DFC04();

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

uint64_t sub_23A6461A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23A6DFC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43746E656D796170 && a2 == 0xEF61746144647261 || (sub_23A6DFC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436C6172656E6567 && a2 == 0xEF61746144647261 || (sub_23A6DFC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_23A6DFC04();

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

uint64_t sub_23A646318()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6463B4, 0, 0);
}

uint64_t sub_23A6463B4()
{
  v1 = v0[3];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[3];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0x28656E696C636564, 0xE900000000000029, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[2];
  v11 = sub_23A6587D8();
  v12 = *v11;
  v0[4] = *v11;
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(*v12 + 712);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[5] = v17;
  *v17 = v0;
  v17[1] = sub_23A6465F4;

  return v19(v13, v14);
}

uint64_t sub_23A6465F4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A64673C, 0, 0);
  }

  else
  {
    v5 = v3[3];
    v4 = v3[4];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23A64673C()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_23A6467A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A646844, 0, 0);
}

uint64_t sub_23A646844()
{
  v1 = v0[4];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[4], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[3];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0x2928737574617473, 0xE800000000000000, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = v0[3];
  v11 = sub_23A6587D8();
  v12 = *v11;
  v0[5] = *v11;
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(*v12 + 704);

  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[6] = v17;
  *v17 = v0;
  v17[1] = sub_23A646A88;
  v18 = v0[2];

  return v20(v18, v13, v14);
}

uint64_t sub_23A646A88()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A646BD0, 0, 0);
  }

  else
  {
    v5 = v3[4];
    v4 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23A646BD0()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_23A646C3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v20 - v12;
  v14 = *(v4 + 48);
  v15 = *(v4 + 52);
  swift_allocObject();
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  v20 = *a1;
  v21 = v16;
  v22 = v17;
  sub_23A646D48(a2, v13, &qword_27DF9C7A8, &qword_23A6E12A0);
  v18 = sub_23A69499C(&v20, v13, a3, a4 & 1);
  sub_23A646DB0(a2, &qword_27DF9C7A8, &qword_23A6E12A0);
  return v18;
}

uint64_t sub_23A646D48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A646DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t StoreAndForwardPaymentCardReaderSession.__deallocating_deinit()
{
  v0 = *PaymentCardReaderSession.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoreAndForwardPaymentCardReaderSession()
{
  result = qword_27DF9E280;
  if (!qword_27DF9E280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of StoreAndForwardPaymentCardReaderSession.decline()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A647234;

  return v6();
}

uint64_t dispatch thunk of StoreAndForwardPaymentCardReaderSession.status()(uint64_t a1)
{
  v4 = *(*v1 + 240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A647140;

  return v8(a1);
}

uint64_t sub_23A647140()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PaymentCardVerificationRequest.currencyCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PaymentCardVerificationRequest.userInterfaceLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaymentCardVerificationRequest() + 24);

  return sub_23A647304(v3, a1);
}

uint64_t type metadata accessor for PaymentCardVerificationRequest()
{
  result = qword_27DF9E390;
  if (!qword_27DF9E390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A647304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PaymentCardVerificationRequest.userInterfaceLanguage.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PaymentCardVerificationRequest() + 24);

  return sub_23A6473B8(a1, v3);
}

uint64_t sub_23A6473B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PaymentCardVerificationRequest.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t PaymentCardVerificationRequest.init(currencyCode:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(type metadata accessor for PaymentCardVerificationRequest() + 24);
  v9 = sub_23A6DE324();
  result = (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  return result;
}

unint64_t sub_23A64758C()
{
  result = qword_27DF9C7B8;
  if (!qword_27DF9C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C7B8);
  }

  return result;
}

void sub_23A647608()
{
  sub_23A64768C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A64768C()
{
  if (!qword_27DF9C7C0)
  {
    sub_23A6DE324();
    v0 = sub_23A6DF954();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C7C0);
    }
  }
}

uint64_t sub_23A6476F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v3 = sub_23A6DE014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23A6DE784();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PaymentCardReaderError();
  v15 = *(*(v76 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v76, v16);
  v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v20);
  v22 = (&v74 - v21);
  switch(sub_23A6DE3C4())
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:

      return swift_storeEnumTagMultiPayload();
    case 7:
      v41 = sub_23A6DE3D4();
      if (!v41)
      {
        goto LABEL_42;
      }

      v42 = v41;
      sub_23A6DE3E4();
      v43 = sub_23A6DE3A4();
      if (!*(v42 + 16))
      {

LABEL_43:
        v49 = 0;
        v50 = 0;
        goto LABEL_44;
      }

      v45 = sub_23A648D1C(v43, v44);
      v47 = v46;

      if ((v47 & 1) == 0)
      {

LABEL_42:

        goto LABEL_43;
      }

      sub_23A648D94(*(v42 + 56) + 32 * v45, v80);

      v48 = swift_dynamicCast();
      v49 = v78;
      v50 = v79;
      if (!v48)
      {
        v49 = 0;
        v50 = 0;
      }

LABEL_44:
      *v22 = v49;
      v22[1] = v50;
      swift_storeEnumTagMultiPayload();
      v72 = v22;
      return sub_23A6480C4(v72, v77);
    case 9:
      v32 = sub_23A6DE3D4();
      if (!v32)
      {
        goto LABEL_39;
      }

      v33 = v32;
      sub_23A6DE3E4();
      v34 = sub_23A6DE384();
      if (*(v33 + 16))
      {
        v36 = sub_23A648D1C(v34, v35);
        v38 = v37;

        if (v38)
        {
          sub_23A648D94(*(v33 + 56) + 32 * v36, v80);

          if (swift_dynamicCast())
          {
            v39 = v79;
            v40 = v77;
            *v77 = v78;
            v40[1] = v39;
            return swift_storeEnumTagMultiPayload();
          }
        }

        else
        {

LABEL_39:
        }
      }

      else
      {
      }

      v71 = v77;
      *v77 = 0;
      v71[1] = 0;
      return swift_storeEnumTagMultiPayload();
    case 14:
      v23 = sub_23A6DE3D4();
      if (!v23)
      {
        goto LABEL_37;
      }

      v24 = v23;
      sub_23A6DE3E4();
      v25 = sub_23A6DE3B4();
      if (*(v24 + 16))
      {
        v27 = sub_23A648D1C(v25, v26);
        v29 = v28;

        if (v29)
        {
          sub_23A648D94(*(v24 + 56) + 32 * v27, v80);

          if (swift_dynamicCast())
          {
            v30 = v77;
            sub_23A6DE274();

            v31 = sub_23A6DE294();
            (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
            return swift_storeEnumTagMultiPayload();
          }

LABEL_37:

          v69 = v77;
          v70 = sub_23A6DE294();
          (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
      }

      goto LABEL_37;
    case 29:
      v59 = sub_23A6DE3D4();
      if (!v59)
      {
        goto LABEL_50;
      }

      v60 = v59;
      sub_23A6DE3E4();
      v61 = sub_23A6DE3A4();
      if (*(v60 + 16))
      {
        v75 = sub_23A648D1C(v61, v62);
        v64 = v63;

        if (v64)
        {
          sub_23A648D94(*(v60 + 56) + 32 * v75, v80);

          if (swift_dynamicCast())
          {
            v65 = v78;
            sub_23A6DDFE4();
            v66 = sub_23A6DE004();
            (*(v4 + 8))(v8, v3);
            if (v66 == v65)
            {
              v67 = MEMORY[0x277D43848];
            }

            else
            {
              v67 = MEMORY[0x277D43840];
            }

            (*(v10 + 104))(v14, *v67, v9);
            v73 = sub_23A6DE774();

            (*(v10 + 8))(v14, v9);
LABEL_51:
            *v77 = v73;
            return swift_storeEnumTagMultiPayload();
          }

LABEL_50:
          (*(v10 + 104))(v14, *MEMORY[0x277D43838], v9);
          v73 = sub_23A6DE774();

          (*(v10 + 8))(v14, v9);
          goto LABEL_51;
        }
      }

      else
      {
      }

      goto LABEL_50;
    case 30:
      v51 = sub_23A6DE3D4();
      if (!v51)
      {
        goto LABEL_46;
      }

      v52 = v51;
      sub_23A6DE3E4();
      v53 = sub_23A6DE394();
      if (*(v52 + 16))
      {
        v55 = sub_23A648D1C(v53, v54);
        v57 = v56;

        if (v57)
        {
          sub_23A648D94(*(v52 + 56) + 32 * v55, v80);

          if (swift_dynamicCast())
          {

            v58 = v78;
            goto LABEL_47;
          }

LABEL_46:
          (*(v10 + 104))(v14, *MEMORY[0x277D43838], v9);
          v58 = sub_23A6DE774();

          (*(v10 + 8))(v14, v9);
LABEL_47:
          *v19 = v58;
          swift_storeEnumTagMultiPayload();
          v72 = v19;
          return sub_23A6480C4(v72, v77);
        }
      }

      else
      {
      }

      goto LABEL_46;
    default:
      goto LABEL_50;
  }
}

uint64_t type metadata accessor for PaymentCardReaderError()
{
  result = qword_27DF9E420;
  if (!qword_27DF9E420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6480C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentCardReaderError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t PaymentCardReaderError.errorDescription.getter()
{
  v1 = sub_23A6DE344();
  v34[0] = *(v1 - 8);
  v2 = *(v34[0] + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23A6DE294();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v34 - v19;
  v21 = type metadata accessor for PaymentCardReaderError();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = (v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A648DF0(v0, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x206B726F7774654ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_23A648E54(v25);
      result = 0xD000000000000028;
      break;
    case 2:
      sub_23A648EB0(v25, v20);
      sub_23A648F20(v20, v17);
      if ((*(v7 + 48))(v17, 1, v6) == 1)
      {
        sub_23A648F90(v17);
        sub_23A648F90(v20);
        result = 0xD00000000000002ALL;
      }

      else
      {
        (*(v7 + 32))(v11, v17, v6);
        sub_23A6DE334();
        v30 = sub_23A6DE264();
        v32 = v31;
        (*(v34[0] + 8))(v5, v1);
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_23A6DFA84();
        MEMORY[0x23EE89BB0](0xD000000000000032, 0x800000023A6E7D60);
        MEMORY[0x23EE89BB0](v30, v32);

        MEMORY[0x23EE89BB0](93, 0xE100000000000000);
        v33 = v35;
        (*(v7 + 8))(v11, v6);
        sub_23A648F90(v20);
        result = v33;
      }

      break;
    case 3:
      v28 = *v25;
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_23A6DFA84();

      v35 = 0xD00000000000001ELL;
      v36 = 0x800000023A6E7750;
      v34[1] = v28;
      v29 = sub_23A6DFBD4();
      MEMORY[0x23EE89BB0](v29);

      MEMORY[0x23EE89BB0](11817, 0xE200000000000000);
      result = v35;
      break;
    case 4:
      result = 0xD000000000000075;
      break;
    case 5:
      result = 0xD00000000000005DLL;
      break;
    case 6:
      result = 0xD000000000000047;
      break;
    case 7:
      result = 0xD00000000000003CLL;
      break;
    case 8:
      result = 0xD000000000000038;
      break;
    case 9:
      result = 0xD000000000000040;
      break;
    case 10:
      return result;
    case 11:
      result = 0xD000000000000043;
      break;
    case 12:
      result = 0xD000000000000038;
      break;
    case 13:
      result = 0xD000000000000034;
      break;
    case 14:
      result = 0xD000000000000041;
      break;
    case 15:
    case 32:
      result = 0xD000000000000032;
      break;
    case 16:
      result = 0xD000000000000030;
      break;
    case 17:
      result = 0xD00000000000003ALL;
      break;
    case 18:
    case 25:
      result = 0xD00000000000002DLL;
      break;
    case 19:
      result = 0xD000000000000062;
      break;
    case 20:
      result = 0xD00000000000004CLL;
      break;
    case 21:
      result = 0xD00000000000005CLL;
      break;
    case 22:
      result = 0xD000000000000060;
      break;
    case 23:
      result = 0xD00000000000003ELL;
      break;
    case 24:
      result = 0xD000000000000052;
      break;
    case 26:
      result = 0xD000000000000053;
      break;
    case 27:
      result = 0xD000000000000038;
      break;
    case 28:
      result = 0xD000000000000026;
      break;
    case 29:
      result = 0xD000000000000025;
      break;
    case 30:
      result = 0xD00000000000002ALL;
      break;
    case 31:
      result = 0xD00000000000003BLL;
      break;
    default:
      if (v25[1])
      {
        result = *v25;
      }

      else
      {
        result = 0xD000000000000038;
      }

      break;
  }

  return result;
}

unint64_t PaymentCardReaderError.errorName.getter()
{
  v1 = type metadata accessor for PaymentCardReaderError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A648DF0(v0, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x776F6C6C41746F6ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_23A648E54(v5);
      return 0x4665726170657270;
    case 2:
      sub_23A648E54(v5);
      return 0x6142656369766564;
    case 3:
      return 0x6E776F6E6B6E75;
    case 4:
      return result;
    case 5:
      v8 = 11;
      goto LABEL_30;
    case 6:
      return 0x726F707075736E75;
    case 7:
      v8 = 5;
      goto LABEL_30;
    case 8:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000010;
    case 10:
      return 0x456B726F7774656ELL;
    case 11:
      v8 = 10;
      goto LABEL_30;
    case 12:
      return 0xD000000000000016;
    case 13:
      return 0x7964616552746F6ELL;
    case 14:
      return 0xD000000000000010;
    case 15:
      return 0x4565726170657270;
    case 16:
      return 0x7078456E656B6F74;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0x7542726564616572;
    case 19:
      return 0xD000000000000010;
    case 20:
    case 21:
      return 0xD000000000000014;
    case 22:
      return 0xD000000000000022;
    case 23:
      return 0xD000000000000017;
    case 24:
    case 28:
      v8 = 9;
      goto LABEL_30;
    case 25:
      return 0x746E61686372656DLL;
    case 26:
    case 32:
      goto LABEL_31;
    case 27:
      return 0x4D64696C61766E69;
    case 29:
      v8 = 13;
LABEL_30:
      result = v8 | 0xD000000000000010;
      break;
    case 30:
    case 31:
      result = 0xD000000000000021;
      break;
    default:
      sub_23A648E54(v5);
LABEL_31:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_23A648D1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23A6DFCE4();
  sub_23A6DF684();
  v6 = sub_23A6DFD14();

  return sub_23A6491A8(a1, a2, v6);
}

uint64_t sub_23A648D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23A648DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentCardReaderError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A648E54(uint64_t a1)
{
  v2 = type metadata accessor for PaymentCardReaderError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A648EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A648F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A648F90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23A649048()
{
  sub_23A6490D0();
  if (v0 <= 0x3F)
  {
    sub_23A649120();
    if (v1 <= 0x3F)
    {
      sub_23A649178();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23A6490D0()
{
  if (!qword_27DF9C7C8)
  {
    v0 = sub_23A6DF954();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C7C8);
    }
  }
}

void sub_23A649120()
{
  if (!qword_27DF9C7D0)
  {
    sub_23A6DE294();
    v0 = sub_23A6DF954();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C7D0);
    }
  }
}

uint64_t sub_23A649178()
{
  result = qword_27DF9C7D8;
  if (!qword_27DF9C7D8)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27DF9C7D8);
  }

  return result;
}

unint64_t sub_23A6491A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23A6DFC04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A649270(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23A6DFCD4();

  return sub_23A6492B4(a1, v4);
}

unint64_t sub_23A6492B4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_23A649320()
{
  result = sub_23A649344();
  byte_27DF9E438 = result & 1;
  return result;
}

uint64_t sub_23A649344()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v13 - v3;
  sub_23A6DEC84();
  v5 = sub_23A6DEC74();
  v6 = sub_23A6DCDF0();
  sub_23A646D48(v6, v4, &qword_27DF9D240, qword_23A6E1D30);
  v7 = sub_23A6DECC4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v9 = sub_23A6DECA4();
    v10 = sub_23A6DF8A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67240192;
      *(v11 + 4) = v5 & 1;
      _os_log_impl(&dword_23A63D000, v9, v10, "PaymentCardReader.isSupported: %{BOOL,public}d", v11, 8u);
      MEMORY[0x23EE8A960](v11, -1, -1);
    }

    (*(v8 + 8))(v4, v7);
  }

  return v5 & 1;
}

char *sub_23A64950C()
{
  if (qword_27DF9E430 != -1)
  {
    swift_once();
  }

  return &byte_27DF9E438;
}

uint64_t static PaymentCardReader.isSupported.getter()
{
  if (qword_27DF9E430 != -1)
  {
    swift_once();
  }

  return byte_27DF9E438;
}

uint64_t PaymentCardReader.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PaymentCardReader.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_events;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E0, &unk_23A6E13A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaymentCardReader.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *a1 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t PaymentCardReader.Event.name.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x7250657461647075;
  }

  v1 = *v0;
  if (*v0 <= 4)
  {
    v6 = 0x7964616552746F6ELL;
    v7 = 0x6574654464726163;
    v8 = 0x614365766F6D6572;
    if (v1 != 3)
    {
      v8 = 0x706D6F4364616572;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (v1)
    {
      v6 = 0x726F467964616572;
    }

    if (v1 <= 1)
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
    v2 = 0xD000000000000011;
    v3 = 0xD000000000000016;
    if (v1 == 9)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 == 6)
    {
      v4 = 0x636E614364616572;
    }

    if (v1 == 5)
    {
      v4 = 0x7274655264616572;
    }

    if (v1 <= 7)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t PaymentCardReader.UpdateEvent.name.getter()
{
  if (*(v0 + 8))
  {
    return 0x7964616552746F6ELL;
  }

  else
  {
    return 0x73736572676F7270;
  }
}

uint64_t PaymentCardReader.Options.vasMerchants.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

ProximityReader::PaymentCardReader::Options __swiftcall PaymentCardReader.Options.init()()
{
  *(v0 + 8) = 0;
  *v0 = MEMORY[0x277D84F90];
  return result;
}

ProximityReader::PaymentCardReader::Options __swiftcall PaymentCardReader.Options.init(vasMerchants:)(ProximityReader::PaymentCardReader::Options vasMerchants)
{
  *(v1 + 8) = 0;
  *v1 = vasMerchants.vasMerchants._rawValue;
  return vasMerchants;
}

uint64_t PaymentCardReader.Token.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PaymentCardReader.__allocating_init(options:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PaymentCardReader.init(options:)(a1);
  return v5;
}

uint64_t PaymentCardReader.init(options:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v43 = &v40 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E8, &unk_23A6E13B0);
  v44 = *(v46 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v46, v9);
  v42 = &v40 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E0, &unk_23A6E13A0);
  v45 = *(v47 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v47, v12);
  v41 = &v40 - v13;
  v14 = sub_23A6DE2F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a1 + 9);
  sub_23A6DE2E4();
  v23 = sub_23A6DE2B4();
  v25 = v24;
  v26 = *(v15 + 8);
  v26(v19, v14);
  *(v2 + 16) = v23;
  *(v2 + 24) = v25;
  v27 = v2 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options;
  *v27 = v20;
  *(v27 + 8) = v21;
  v28 = v43;
  *(v27 + 9) = v22;
  sub_23A6DE2E4();
  v29 = sub_23A6DE2B4();
  v31 = v30;
  v26(v19, v14);
  v48 = v29;
  v49 = v31;
  (*(v44 + 104))(v42, *MEMORY[0x277D85778], v46);
  v32 = v41;
  sub_23A6DF804();
  (*(v45 + 32))(v2 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_events, v32, v47);
  v33 = (v2 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_uuid);
  *v33 = v29;
  v33[1] = v31;
  v34 = sub_23A6DCDF0();
  sub_23A646D48(v34, v28, &qword_27DF9D240, qword_23A6E1D30);
  v35 = sub_23A6DECC4();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v28, 1, v35) == 1)
  {
    sub_23A646DB0(v28, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v37 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v2, 0x74706F2874696E69, 0xEE00293A736E6F69, v37, v38);

    (*(v36 + 8))(v28, v35);
  }

  return v2;
}

uint64_t sub_23A649E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v21 - v15;
  v17 = sub_23A6DF7B4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v7 + 16))(v11, a1, v6);
  v18 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v7 + 32))(&v19[v18], v11, v6);

  sub_23A64A15C(0, 0, v16, &unk_23A6E1648, v19);

  return sub_23A6DF7C4();
}

uint64_t sub_23A64A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_23A64A050, 0, 0);
}

uint64_t sub_23A64A050()
{
  v1 = sub_23A6587D8();
  v2 = *v1;
  v0[5] = *v1;
  v3 = *v2 + 560;
  v0[6] = *v3;
  v0[7] = v3 & 0xFFFFFFFFFFFFLL | 0x62A2000000000000;

  return MEMORY[0x2822009F8](sub_23A64A0EC, v2, 0);
}

uint64_t sub_23A64A0EC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A64A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_23A646D48(a3, v28 - v12, &qword_27DF9C7F0, &qword_23A6E25B0);
  v14 = sub_23A6DF7B4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_23A646DB0(v13, &qword_27DF9C7F0, &qword_23A6E25B0);
  }

  else
  {
    sub_23A6DF7A4();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_23A6DF754();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_23A6DF654() + 32;
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

      sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);

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

  sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);
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

uint64_t sub_23A64A45C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C818, &unk_23A6E1650);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  (*(v8 + 16))(&v21 - v11, a1, v7);
  LODWORD(a1) = (*(v8 + 88))(v12, v7);
  v13 = *MEMORY[0x277D85740];
  result = (*(v8 + 8))(v12, v7);
  if (a1 == v13)
  {
    v15 = sub_23A6DCDF0();
    sub_23A646D48(v15, v6, &qword_27DF9D240, qword_23A6E1D30);
    v16 = sub_23A6DECC4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v6, 1, v16) == 1)
    {
      return sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v18 = sub_23A6DECA4();
      v19 = sub_23A6DF884();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23A63D000, v18, v19, "events stream cancelled", v20, 2u);
        MEMORY[0x23EE8A960](v20, -1, -1);
      }

      return (*(v17 + 8))(v6, v16);
    }
  }

  return result;
}

uint64_t PaymentCardReader.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v28 - v10;
  v12 = sub_23A6DCDF0();
  sub_23A646D48(v12, v11, &qword_27DF9D240, qword_23A6E1D30);
  v13 = sub_23A6DECC4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_23A646DB0(v11, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v15 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v1, 0x74696E696564, 0xE600000000000000, v15, v16);

    (*(v14 + 8))(v11, v13);
  }

  v17 = v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_uuid;
  v19 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_uuid);
  v18 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_uuid + 8);
  v20 = sub_23A6DF7B4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  v21[5] = v18;

  sub_23A64A15C(0, 0, v6, &unk_23A6E13C8, v21);

  v22 = *(v1 + 24);

  v23 = OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_events;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7E0, &unk_23A6E13A0);
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  v25 = *(v17 + 8);

  v26 = *(v1 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);

  return v1;
}

uint64_t sub_23A64A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_23A64A9C0, 0, 0);
}

uint64_t sub_23A64A9C0()
{
  v1 = sub_23A6587D8();
  v2 = *v1;
  v0[4] = *v1;
  v3 = *(*v2 + 568);

  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_23A64AAFC;
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6);
}

uint64_t sub_23A64AAFC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23A64AC0C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A647234;

  return sub_23A64A9A0(v4, v5, v6, v2, v3);
}

uint64_t PaymentCardReader.__deallocating_deinit()
{
  PaymentCardReader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23A64ACFC(uint64_t *a1)
{
  v2[4] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_23A64ADA4, 0, 0);
}

uint64_t sub_23A64ADA4()
{
  v1 = v0[5];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000017, 0x800000023A6E8380, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = sub_23A6587D8();
  v13 = *v12;
  v0[8] = *v12;
  v0[2] = v11;
  v0[3] = v10;
  v14 = *(*v13 + 624);

  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_23A64B000;

  return v18(v0 + 2);
}

uint64_t sub_23A64B000(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A64B180, 0, 0);
  }

  else
  {
    v8 = *(v4 + 40);

    v9 = *(v7 + 8);

    return v9(a1 & 1);
  }
}

uint64_t sub_23A64B180()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2(0);
}

uint64_t sub_23A64B1E8(uint64_t *a1)
{
  v2[4] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_23A64B290, 0, 0);
}

uint64_t sub_23A64B290()
{
  v1 = v0[5];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000013, 0x800000023A6E83A0, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = sub_23A6587D8();
  v13 = *v12;
  v0[8] = *v12;
  v0[2] = v11;
  v0[3] = v10;
  v14 = *(*v13 + 632);

  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_23A64B4F0;

  return (v18)(v0 + 2, 0);
}

uint64_t sub_23A64B4F0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A64B654, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_23A64B654()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_23A64B6B8(uint64_t *a1)
{
  v2[4] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x2822009F8](sub_23A64B760, 0, 0);
}

uint64_t sub_23A64B760()
{
  v1 = v0[5];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000015, 0x800000023A6E83C0, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = sub_23A6587D8();
  v13 = *v12;
  v0[8] = *v12;
  v0[2] = v11;
  v0[3] = v10;
  v14 = *(*v13 + 632);

  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_23A64B9C0;

  return (v18)(v0 + 2, 1);
}

uint64_t sub_23A64B9C0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A64EA7C, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_23A64BB24(_OWORD *a1)
{
  *(v2 + 32) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = *a1;

  return MEMORY[0x2822009F8](sub_23A64BBCC, 0, 0);
}

uint64_t sub_23A64BBCC()
{
  v1 = v0[5];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[5], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[4];
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0x6628737574617473, 0xEC000000293A726FLL, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = sub_23A6587D8();
  v14 = *v13;
  v0[8] = *v13;
  v0[2] = v12;
  v0[3] = v11;
  v15 = *(*v14 + 688);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_23A64BE34;

  return v19(v0 + 2);
}

uint64_t sub_23A64BE34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A64B654, 0, 0);
  }

  else
  {
    v8 = *(v4 + 40);

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_23A64BFB4()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A64C050, 0, 0);
}

uint64_t sub_23A64C050()
{
  v1 = v0[3];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23A646DB0(v0[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = sub_23A6507C0();
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(v7 & 1, v6, 0x29287465736572, 0xE700000000000000, v8, v9);

    (*(v4 + 8))(v5, v3);
  }

  v10 = sub_23A6587D8();
  v11 = *v10;
  v0[4] = *v10;
  v12 = *v11 + 592;
  v0[5] = *v12;
  v0[6] = v12 & 0xFFFFFFFFFFFFLL | 0x9740000000000000;

  return MEMORY[0x2822009F8](sub_23A64C1F0, v11, 0);
}

uint64_t sub_23A64C1F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(v0 + 40))();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A64C264()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A64C300, 0, 0);
}

uint64_t sub_23A64C300()
{
  v1 = v0[3];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23A646DB0(v0[3], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v6, 0xD000000000000010, 0x800000023A6E83E0, v7, v8);

    (*(v4 + 8))(v5, v3);
  }

  v9 = sub_23A6587D8();
  v10 = *v9;
  v0[4] = *v9;
  v11 = *(*v10 + 608);

  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[5] = v13;
  *v13 = v0;
  v13[1] = sub_23A64C534;

  return v15();
}

uint64_t sub_23A64C534(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = sub_23A64673C;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v9 = sub_23A64C668;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23A64C668()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v5 = v0[7];
  v4 = v0[8];

  return v3(v4, v5);
}

uint64_t sub_23A64C6D8(uint64_t *a1)
{
  v2[6] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[7] = v5;
  v2[8] = v6;
  v2[9] = v7;

  return MEMORY[0x2822009F8](sub_23A64C780, 0, 0);
}

uint64_t sub_23A64C780()
{
  v1 = *(v0 + 56);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 56);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 56), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0x2865726170657270, 0xEF293A676E697375, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 48);
  v13 = sub_23A6587D8();
  v14 = *v13;
  *(v0 + 80) = *v13;
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  v15 = *(v12 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v16 = *(v12 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *(v0 + 32) = *(v12 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(v0 + 40) = v15;
  *(v0 + 41) = v16;
  v17 = *(*v14 + 648);

  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 88) = v19;
  *v19 = v0;
  v19[1] = sub_23A64CA14;

  return v21(v0 + 16, v0 + 32);
}

uint64_t sub_23A64CA14(uint64_t a1)
{
  v4 = *(*v2 + 88);
  v5 = *v2;
  v5[12] = v1;

  if (v1)
  {
    v6 = v5[10];
    v7 = v5[4];

    return MEMORY[0x2822009F8](sub_23A64CB94, 0, 0);
  }

  else
  {
    v8 = v5[10];
    v9 = v5[7];
    v10 = v5[4];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_23A64CB94()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_23A64CBF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v9 = a1[1];
  v4[9] = v7;
  v4[10] = v8;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_23A64CCA4, 0, 0);
}

uint64_t sub_23A64CCA4()
{
  v1 = *(v0 + 72);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 72);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 72), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 64);
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD00000000000001DLL, 0x800000023A6E8400, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = sub_23A6587D8();
  v14 = *v13;
  *(v0 + 96) = *v13;
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  v15 = *(v12 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v16 = *(v12 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *(v0 + 32) = *(v12 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(v0 + 40) = v15;
  *(v0 + 41) = v16;
  v17 = *(*v14 + 640);

  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *v19 = v0;
  v19[1] = sub_23A64CF3C;
  v20 = *(v0 + 48);
  v21 = *(v0 + 56);

  return v23(v0 + 16, v0 + 32, v20, v21);
}

uint64_t sub_23A64CF3C(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[14] = v1;

  if (v1)
  {
    v6 = v5[12];
    v7 = v5[4];

    return MEMORY[0x2822009F8](sub_23A64D0BC, 0, 0);
  }

  else
  {
    v8 = v5[12];
    v9 = v5[9];
    v10 = v5[4];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_23A64D0BC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_23A64D120()
{
  *(v1 + 32) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A64D1BC, 0, 0);
}

uint64_t sub_23A64D1BC()
{
  v1 = *(v0 + 40);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 40);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 40), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000018, 0x800000023A6E8420, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = *(v0 + 32);
  v11 = sub_23A6587D8();
  v12 = *v11;
  *(v0 + 48) = *v11;
  v13 = *(v10 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 8);
  v14 = *(v10 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options + 9);
  *(v0 + 16) = *(v10 + OBJC_IVAR____TtC15ProximityReader17PaymentCardReader_options);
  *(v0 + 24) = v13;
  *(v0 + 25) = v14;
  v15 = *(*v12 + 696);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 56) = v17;
  *v17 = v0;
  v17[1] = sub_23A64D43C;

  return v19(v0 + 16);
}

uint64_t sub_23A64D43C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[6];
  if (v1)
  {
    v8 = v4[2];

    return MEMORY[0x2822009F8](sub_23A64D5D8, 0, 0);
  }

  else
  {
    v9 = v4[5];
    v10 = v4[2];

    v11 = *(v6 + 8);

    return v11(a1);
  }
}

uint64_t sub_23A64D5D8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_23A64D63C()
{
  if (qword_27DF9E430 != -1)
  {
    swift_once();
  }

  if (byte_27DF9E438 == 1)
  {
    return nullsub_1();
  }

  type metadata accessor for PaymentCardReaderError();
  sub_23A64D6FC();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_23A64D6FC()
{
  result = qword_27DF9C7F8;
  if (!qword_27DF9C7F8)
  {
    type metadata accessor for PaymentCardReaderError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C7F8);
  }

  return result;
}

unint64_t sub_23A64D758()
{
  result = qword_27DF9C800;
  if (!qword_27DF9C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C800);
  }

  return result;
}

uint64_t type metadata accessor for PaymentCardReader()
{
  result = qword_27DF9E5D0;
  if (!qword_27DF9E5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A64D800()
{
  sub_23A64E51C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PaymentCardReader.isAccountLinked(using:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A64D9F4;

  return v8(a1);
}

uint64_t sub_23A64D9F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PaymentCardReader.linkAccount(using:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A647140;

  return v8(a1);
}

uint64_t dispatch thunk of PaymentCardReader.relinkAccount(using:)(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A647234;

  return v8(a1);
}

uint64_t dispatch thunk of PaymentCardReader.status(for:)(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A64EA80;

  return v8(a1);
}

uint64_t dispatch thunk of PaymentCardReader.reset()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A647140;

  return v6();
}

uint64_t dispatch thunk of PaymentCardReader.readerIdentifier.getter()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A64E070;

  return v6();
}

uint64_t sub_23A64E070(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of PaymentCardReader.prepare(using:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A64EA80;

  return v8(a1);
}

uint64_t dispatch thunk of PaymentCardReader.prepare(using:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23A64EA80;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of PaymentCardReader.prepareStoreAndForward()()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A64D9F4;

  return v6();
}

void sub_23A64E51C()
{
  if (!qword_27DF9C808)
  {
    v0 = sub_23A6DF7F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C808);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PaymentCardReader.UpdateEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PaymentCardReader.UpdateEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23A64E5E0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A64E5FC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_23A64E640(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_23A64E688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A64E6E8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A64E7E0;

  return v7(a1);
}

uint64_t sub_23A64E7E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23A64E8D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A647234;

  return sub_23A64E6E8(a1, v5);
}

uint64_t sub_23A64E990()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A64A02C(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t StoreAndForwardStatus.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoreAndForwardStatus() + 20);
  v4 = sub_23A6DE294();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StoreAndForwardStatus()
{
  result = qword_27DF9E6E0;
  if (!qword_27DF9E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static StoreAndForwardStatus.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for StoreAndForwardStatus() + 20);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

uint64_t StoreAndForwardStatus.hash(into:)()
{
  MEMORY[0x23EE8A1E0](*v0);
  v1 = *(type metadata accessor for StoreAndForwardStatus() + 20);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578]);
  return sub_23A6DF5E4();
}

uint64_t StoreAndForwardStatus.hashValue.getter()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*v0);
  v1 = *(type metadata accessor for StoreAndForwardStatus() + 20);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A64ED08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for StoreAndForwardStatus() + 20);
  v6 = sub_23A6DE294();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_23A64ED8C(uint64_t a1)
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*v1);
  v3 = *(a1 + 20);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A64EE38(uint64_t a1, uint64_t a2)
{
  MEMORY[0x23EE8A1E0](*v2);
  v4 = *(a2 + 20);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578]);
  return sub_23A6DF5E4();
}

uint64_t sub_23A64EECC(uint64_t a1, uint64_t a2)
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](*v2);
  v4 = *(a2 + 20);
  sub_23A6DE294();
  sub_23A64EFBC(&qword_27DF9C820, MEMORY[0x277CC9578]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A64EFBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A64F004(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return MEMORY[0x28211DA98](a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A64F054()
{
  result = sub_23A6DE294();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PaymentCardTransactionRequest.amount.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return result;
}

uint64_t PaymentCardTransactionRequest.currencyCode.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PaymentCardTransactionRequest.preferredAIDList.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t PaymentCardTransactionRequest.userInterfaceLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaymentCardTransactionRequest() + 32);

  return sub_23A647304(v3, a1);
}

uint64_t type metadata accessor for PaymentCardTransactionRequest()
{
  result = qword_27DF9E8F0;
  if (!qword_27DF9E8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PaymentCardTransactionRequest.userInterfaceLanguage.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PaymentCardTransactionRequest() + 32);

  return sub_23A6473B8(a1, v3);
}

uint64_t PaymentCardTransactionRequest.useISOCurrencySymbol.setter(char a1)
{
  result = type metadata accessor for PaymentCardTransactionRequest();
  *(v1 + *(result + 36)) = a1;
  return result;
}

__n128 PaymentCardTransactionRequest.transactionDescription.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaymentCardTransactionRequest() + 40);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 PaymentCardTransactionRequest.transactionDescription.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for PaymentCardTransactionRequest() + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

double PaymentCardTransactionRequest.init(amount:currencyCode:for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  v14 = type metadata accessor for PaymentCardTransactionRequest();
  v15 = v14[8];
  v16 = sub_23A6DE324();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  *(a7 + v14[9]) = 0;
  v17 = a7 + v14[10];
  result = 0.0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = -1;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = v13;
  *(a7 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t PaymentCardTransactionRequest.TransactionType.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t PaymentCardTransactionRequest.PaymentCycle.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

unint64_t sub_23A64F608()
{
  result = qword_27DF9C830;
  if (!qword_27DF9C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C830);
  }

  return result;
}

unint64_t sub_23A64F660()
{
  result = qword_27DF9C838;
  if (!qword_27DF9C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C838);
  }

  return result;
}

void sub_23A64F6DC()
{
  type metadata accessor for Decimal(319);
  if (v0 <= 0x3F)
  {
    sub_23A64F820(319, &qword_27DF9C840, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23A64768C();
      if (v2 <= 0x3F)
      {
        sub_23A64F820(319, &qword_27DF9C848, &type metadata for PaymentCardTransactionRequest.TransactionAmountDescription, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23A64F820(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for PaymentCardTransactionRequest.TransactionAmountDescription(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionAmountDescription(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentCardTransactionRequest.TransactionAmountDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23A64FAB0(uint64_t a1)
{
  if (*(a1 + 32) <= 4u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_23A64FAC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_23A64FB08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A64FB28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t ProximityReaderDiscovery.Topic.Payment.hashValue.getter()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](0);
  return sub_23A6DFD14();
}

uint64_t sub_23A64FBD0()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](0);
  return sub_23A6DFD14();
}

uint64_t sub_23A64FC3C()
{
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](0);
  return sub_23A6DFD14();
}

uint64_t ProximityReaderDiscovery.ContentError.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t ProximityReaderDiscovery.Content.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProximityReaderDiscovery.Content.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_23A64FD74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_23A64FD9C()
{
  v1 = sub_23A6825BC();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 224);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23A64FEC8;

  return v7();
}

uint64_t sub_23A64FEC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23A650020, 0, 0);
  }

  else
  {
    v7 = *(v4 + 16);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_23A650020()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t sub_23A6500A4()
{
  v1 = sub_23A6825BC();
  v2 = *v1;
  v0[3] = *v1;
  v3 = *(*v2 + 216);

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_23A6501D8;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_23A6501D8()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(v4 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A650328, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t ProximityReaderDiscovery.presentContent(_:from:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = v3;
  *(v2 + 64) = *(a1 + 1);
  *(v2 + 80) = a1[3];
  return MEMORY[0x2822009F8](sub_23A650374, 0, 0);
}

uint64_t sub_23A650374()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v11 = *(v0 + 56);
  v3 = sub_23A6825BC();
  v4 = *v3;
  *(v0 + 88) = *v3;
  *(v0 + 16) = v11;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v5 = *(*v4 + 232);

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_23A6504CC;
  v8 = *(v0 + 48);

  return v10(v0 + 16, v8);
}

uint64_t sub_23A6504CC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(v4 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A65061C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

unint64_t sub_23A650668()
{
  result = qword_27DF9C858;
  if (!qword_27DF9C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C858);
  }

  return result;
}

unint64_t sub_23A6506C0()
{
  result = qword_27DF9C860;
  if (!qword_27DF9C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C860);
  }

  return result;
}

unint64_t sub_23A650718()
{
  result = qword_27DF9C868;
  if (!qword_27DF9C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C868);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRUIPrefKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CRUIPrefKey(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
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

uint64_t sub_23A6508D8(uint64_t a1, int a2)
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

uint64_t sub_23A650920(uint64_t result, int a2, int a3)
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

uint64_t sub_23A650978()
{
  v0 = type metadata accessor for IdentityReaderActor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_23A652228();
  qword_27DFA5E80 = v3;
  return result;
}

uint64_t sub_23A6509B8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_23A652228();
  return v3;
}

uint64_t *sub_23A6509F0()
{
  if (qword_27DF9EC80 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E80;
}

uint64_t sub_23A650A40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DECF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v74 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v75 = &v66 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v76 = &v66 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v72 = &v66 - v16;
  v81 = sub_23A6DE424();
  v78 = *(v81 - 8);
  v17 = *(v78 + 64);
  v19 = MEMORY[0x28223BE20](v81, v18);
  v67 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v79 = &v66 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v73 = &v66 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v80 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v66 - v32;
  v71 = sub_23A6DCDF0();
  sub_23A646D48(v71, v33, &qword_27DF9D240, qword_23A6E1D30);
  v34 = sub_23A6DECC4();
  v35 = *(v34 - 8);
  v70 = *(v35 + 48);
  v36 = v70(v33, 1, v34);
  v69 = v1;
  if (v36 == 1)
  {
    sub_23A646DB0(v33, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v68 = v34;
    v37 = sub_23A6507C0();
    v38 = sub_23A6DCFB0();
    v66 = a1;
    v34 = v68;
    sub_23A6DCFBC(v37 & 1, v1, 0xD000000000000014, 0x800000023A6E8650, v38, v39);
    a1 = v66;

    (*(v35 + 8))(v33, v34);
  }

  sub_23A6DED04();
  v40 = v76;
  v41 = v77;
  sub_23A6DECE4();
  if (v41)
  {
    v77 = v35;
    v42 = *(v4 + 32);
    v43 = v72;
    v42(v72, v40, v3);
    v44 = v75;
    v42(v75, v43, v3);
    (*(v4 + 16))(v74, v44, v3);
    v45 = v73;
    sub_23A6DE434();
    sub_23A654FFC(&qword_27DF9C870, MEMORY[0x277D436E0]);
    v46 = v44;
    v47 = v81;
    swift_willThrowTypedImpl();
    (*(v4 + 8))(v46, v3);
    (*(v78 + 32))(v79, v45, v47);
    v48 = v80;
    sub_23A646D48(v71, v80, &qword_27DF9D240, qword_23A6E1D30);
    if (v70(v48, 1, v34) == 1)
    {
      sub_23A646DB0(v80, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v52 = v78;
      v53 = v67;
      (*(v78 + 16))(v67, v79, v81);
      v54 = v52;
      v55 = sub_23A6DECA4();
      v56 = sub_23A6DF884();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v68 = v34;
        v59 = v58;
        v82 = v58;
        *v57 = 136446210;
        v60 = sub_23A6AF6FC();
        v62 = v61;
        (*(v54 + 8))(v53, v81);
        v63 = sub_23A657E78(v60, v62, &v82);

        *(v57 + 4) = v63;
        _os_log_impl(&dword_23A63D000, v55, v56, "An error occurred whilst performing this action: %{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        v34 = v68;
        MEMORY[0x23EE8A960](v59, -1, -1);
        MEMORY[0x23EE8A960](v57, -1, -1);
      }

      else
      {

        (*(v54 + 8))(v53, v81);
      }

      (*(v77 + 8))(v80, v34);
    }

    sub_23A65244C();
    swift_allocError();
    v64 = v79;
    sub_23A6AF3DC(v65);
    swift_willThrow();
    return (*(v78 + 8))(v64, v81);
  }

  else
  {
    v49 = OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
    return (*(*(v50 - 8) + 16))(a1, v69 + v49, v50);
  }
}

uint64_t sub_23A65115C()
{
  v0 = sub_23A6DECF4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  MEMORY[0x28223BE20](v3, v4);
  MEMORY[0x28223BE20](v5, v6);
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_23A6DE424();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  sub_23A6DED04();
  sub_23A6DECE4();
  return 1;
}

uint64_t sub_23A6513F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6514C4, v1, 0);
}

uint64_t sub_23A6514C4()
{
  v1 = v0[3];
  sub_23A650A40(v0[6]);
  v2 = *(MEMORY[0x277D43B08] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_23A6515E0;
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x2821A5670](v6, sub_23A651808, 0, v5, &type metadata for MobileDocumentReader.Configuration);
}

uint64_t sub_23A6515E0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_23A65178C;
  }

  else
  {
    v6 = sub_23A65170C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A65170C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A65178C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

void sub_23A651808(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  v10 = sub_23A6DE574();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_23A6DE4E4();
  sub_23A6DE544();
  (*(v11 + 8))(v15, v10);
  (*(v5 + 16))(v9, a2, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v9, v4);
  aBlock[4] = sub_23A6586B4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A658794;
  aBlock[3] = &block_descriptor_55;
  v19 = _Block_copy(aBlock);

  [v16 readerConfigurationWithCompletion_];
  _Block_release(v19);
}

void sub_23A651A64(void *a1, uint64_t *a2, uint64_t a3)
{
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v69 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v66 - v16;
  v18 = sub_23A6DE424();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v70 = &v66 - v26;
  v27 = sub_23A6DE574();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE4E4();
  sub_23A6DE524();
  (*(v28 + 8))(v32, v27);
  if (!a2)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    sub_23A646DB0(v17, &qword_27DF9C8A8, &unk_23A6E1C20);
    if (a1)
    {
      v38 = a1;
      v39 = sub_23A6DE994();
      sub_23A69A44C(v39, v40, &v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
      sub_23A6DF774();

      return;
    }

    goto LABEL_12;
  }

  v72 = a2;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  v34 = swift_dynamicCast();
  (*(v19 + 56))(v17, v34 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_23A646DB0(v17, &qword_27DF9C8A8, &unk_23A6E1C20);
    v35 = sub_23A6DCDF0();
    sub_23A646D48(v35, v10, &qword_27DF9D240, qword_23A6E1D30);
    v36 = sub_23A6DECC4();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v10, 1, v36) == 1)
    {
      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v46 = a2;
      v47 = sub_23A6DECA4();
      v48 = sub_23A6DF884();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = a2;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_23A63D000, v47, v48, "Unknown error was returned from Identity service on read config request: [ %@ ]", v49, 0xCu);
        sub_23A646DB0(v50, &qword_27DF9C8B0, &qword_23A6E4ED0);
        MEMORY[0x23EE8A960](v50, -1, -1);
        MEMORY[0x23EE8A960](v49, -1, -1);
      }

      (*(v37 + 8))(v10, v36);
    }

LABEL_12:
    sub_23A65244C();
    v53 = swift_allocError();
    *v54 = 0;
    v72 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
    sub_23A6DF764();
    return;
  }

  v41 = v70;
  (*(v19 + 32))(v70, v17, v18);
  v42 = sub_23A6DCDF0();
  v43 = v69;
  sub_23A646D48(v42, v69, &qword_27DF9D240, qword_23A6E1D30);
  v44 = sub_23A6DECC4();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    sub_23A646DB0(v43, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v19 + 16))(v24, v41, v18);
    v55 = sub_23A6DECA4();
    v56 = sub_23A6DF884();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v67 = v57;
      v68 = swift_slowAlloc();
      v72 = v68;
      *v57 = 136446210;
      v58 = sub_23A6AF6FC();
      v60 = v59;
      (*(v19 + 8))(v24, v18);
      v61 = sub_23A657E78(v58, v60, &v72);

      v62 = v67;
      *(v67 + 1) = v61;
      _os_log_impl(&dword_23A63D000, v55, v56, "An error occurred when retrieving the mobile document reader configuration: %{public}s", v62, 0xCu);
      v63 = v68;
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x23EE8A960](v63, -1, -1);
      MEMORY[0x23EE8A960](v62, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v24, v18);
    }

    (*(v45 + 8))(v43, v44);
    v41 = v70;
  }

  sub_23A65244C();
  v64 = swift_allocError();
  sub_23A6AF3DC(v65);
  v72 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F8, &qword_23A6E1C70);
  sub_23A6DF764();
  (*(v19 + 8))(v41, v18);
}

uint64_t sub_23A652228()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - v6;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_service) = 0;
  sub_23A6DE664();
  v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v9 = sub_23A6DF614();

  v10 = [v8 initWithMachServiceName:v9 options:4096];

  sub_23A65244C();
  swift_allocError();
  *v11 = 0;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C888, qword_23A6E1B58);
  sub_23A6DEA04();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection, v7, v2);
  v13 = sub_23A6DEA14();
  v14 = [objc_opt_self() interfaceWithProtocol_];
  [v13 setRemoteObjectInterface_];

  v15 = sub_23A6DEA14();
  [v15 activate];

  return v1;
}

unint64_t sub_23A65244C()
{
  result = qword_27DF9C880;
  if (!qword_27DF9C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C880);
  }

  return result;
}

uint64_t sub_23A6524A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection;
  (*(v3 + 16))(&v13 - v6, v1 + OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_connection, v2);
  v9 = sub_23A6DEA14();
  v10 = *(v3 + 8);
  v10(v7, v2);
  [v9 invalidate];

  v10((v1 + v8), v2);
  v11 = *(v1 + OBJC_IVAR____TtC15ProximityReader19IdentityReaderActor_service);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_23A6525F0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6526C0, v2, 0);
}

uint64_t sub_23A6526C0()
{
  v1 = v0[5];
  sub_23A650A40(v0[8]);
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[9] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D43B08] + 4);

  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = type metadata accessor for MobileDocumentReaderSession();
  *v6 = v0;
  v6[1] = sub_23A652810;
  v8 = v0[8];
  v9 = v0[6];

  return MEMORY[0x2821A5670](v0 + 2, sub_23A652CE8, v4, v9, v7);
}

uint64_t sub_23A652810()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 40);

  if (v0)
  {
    v7 = sub_23A6529E0;
  }

  else
  {
    v7 = sub_23A652958;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_23A652958()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_23A6529E0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

void sub_23A652A5C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  v13 = sub_23A6DE574();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_23A6DE4B4();
  sub_23A6DE544();
  (*(v14 + 8))(v18, v13);
  if (a4)
  {
    v19 = sub_23A6DF614();
  }

  else
  {
    v19 = 0;
  }

  (*(v8 + 16))(v12, a2, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v20, v12, v7);
  aBlock[4] = sub_23A65859C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A65373C;
  aBlock[3] = &block_descriptor_49;
  v22 = _Block_copy(aBlock);

  [v24 prepareUsing:v19 completion:{v22, v23}];
  _Block_release(v22);
}

uint64_t sub_23A652CF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v92 = a4;
  v88 = a1;
  v89 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v86 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v87 = &v86 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v91 = &v86 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v86 - v23;
  v25 = sub_23A6DE424();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v90 = &v86 - v33;
  v34 = sub_23A6DE574();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE4B4();
  sub_23A6DE524();
  (*(v35 + 8))(v39, v34);
  if (a3)
  {
    v93 = a3;
    v40 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v41 = swift_dynamicCast();
    (*(v26 + 56))(v24, v41 ^ 1u, 1, v25);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_23A646DB0(v24, &qword_27DF9C8A8, &unk_23A6E1C20);
      v42 = sub_23A6DCDF0();
      v43 = v87;
      sub_23A646D48(v42, v87, &qword_27DF9D240, qword_23A6E1D30);
      v44 = sub_23A6DECC4();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v43, 1, v44) == 1)
      {
        sub_23A646DB0(v43, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v57 = a3;
        v58 = sub_23A6DECA4();
        v59 = sub_23A6DF884();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = 138412290;
          v62 = a3;
          v63 = _swift_stdlib_bridgeErrorToNSError();
          *(v60 + 4) = v63;
          *v61 = v63;
          _os_log_impl(&dword_23A63D000, v58, v59, "Unknown error was returned from Identity service on prepare request: [ %@ ]", v60, 0xCu);
          sub_23A646DB0(v61, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v61, -1, -1);
          MEMORY[0x23EE8A960](v60, -1, -1);
        }

        (*(v45 + 8))(v43, v44);
      }

LABEL_26:
      sub_23A65244C();
      v84 = swift_allocError();
      *v85 = 0;
      v93 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
      return sub_23A6DF764();
    }

    v52 = v90;
    (*(v26 + 32))(v90, v24, v25);
    v53 = sub_23A6DCDF0();
    v54 = v91;
    sub_23A646D48(v53, v91, &qword_27DF9D240, qword_23A6E1D30);
    v55 = sub_23A6DECC4();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      sub_23A646DB0(v54, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      (*(v26 + 16))(v31, v52, v25);
      v64 = sub_23A6DECA4();
      v65 = sub_23A6DF884();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v93 = v89;
        *v66 = 136446210;
        v67 = sub_23A6AF6FC();
        v69 = v68;
        (*(v26 + 8))(v31, v25);
        v70 = sub_23A657E78(v67, v69, &v93);
        v54 = v91;

        *(v66 + 4) = v70;
        _os_log_impl(&dword_23A63D000, v64, v65, "An error occurred whilst preparing the device for mobile document reading: %{public}s", v66, 0xCu);
        v71 = v89;
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x23EE8A960](v71, -1, -1);
        v72 = v66;
        v52 = v90;
        MEMORY[0x23EE8A960](v72, -1, -1);
      }

      else
      {

        (*(v26 + 8))(v31, v25);
      }

      (*(v56 + 8))(v54, v55);
    }

    sub_23A65244C();
    v79 = swift_allocError();
    sub_23A6AF3DC(v80);
    v93 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
    sub_23A6DF764();
    return (*(v26 + 8))(v52, v25);
  }

  else
  {
    v46 = v88;
    (*(v26 + 56))(v24, 1, 1, v25);
    sub_23A646DB0(v24, &qword_27DF9C8A8, &unk_23A6E1C20);
    v47 = v89;
    if (!v89)
    {
      v73 = sub_23A6DCDF0();
      sub_23A646D48(v73, v14, &qword_27DF9D240, qword_23A6E1D30);
      v74 = sub_23A6DECC4();
      v75 = *(v74 - 8);
      if ((*(v75 + 48))(v14, 1, v74) == 1)
      {
        sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v81 = sub_23A6DECA4();
        v82 = sub_23A6DF884();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_23A63D000, v81, v82, "Invalid session was returned on prepare request", v83, 2u);
          MEMORY[0x23EE8A960](v83, -1, -1);
        }

        (*(v75 + 8))(v14, v74);
      }

      goto LABEL_26;
    }

    type metadata accessor for MobileDocumentReaderSession();

    v93 = sub_23A69A998(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68);
    sub_23A6DF774();
    v48 = sub_23A6DCDF0();
    sub_23A646D48(v48, v10, &qword_27DF9D240, qword_23A6E1D30);
    v49 = sub_23A6DECC4();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v10, 1, v49) == 1)
    {
      return sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v76 = sub_23A6DECA4();
      v77 = sub_23A6DF874();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_23A63D000, v76, v77, "Returning a new MobileDocumentReaderSession", v78, 2u);
        MEMORY[0x23EE8A960](v78, -1, -1);
      }

      return (*(v50 + 8))(v10, v49);
    }
  }
}

uint64_t sub_23A65373C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23A6DF624();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_23A6537D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_23A653800, v6, 0);
}

uint64_t sub_23A653800()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v13 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v13;
  *(v5 + 48) = v4;
  *(v5 + 56) = v1;
  v6 = sub_23A654FFC(&qword_27DF9C890, type metadata accessor for IdentityReaderActor);
  v7 = *(MEMORY[0x277D85A10] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v8 = v0;
  v8[1] = sub_23A653974;
  v10 = *(v0 + 64);
  v11 = *(v0 + 16);

  return MEMORY[0x282200830](v11, &unk_23A6E1B78, v5, sub_23A654FF4, v10, v1, v6, AssociatedTypeWitness);
}

uint64_t sub_23A653974()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_23A653AB0, v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23A653AB0()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_23A653B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_getAssociatedTypeWitness();
  v10 = sub_23A6DF954();
  v6[37] = v10;
  v11 = *(v10 - 8);
  v6[38] = v11;
  v12 = *(v11 + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v6[41] = v13;
  v14 = *(v13 - 8);
  v6[42] = v14;
  v15 = *(v14 + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v16 = *(a6 - 8);
  v6[45] = v16;
  v17 = *(v16 + 64) + 15;
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A653D20, a5, 0);
}

uint64_t sub_23A653D20()
{
  (*(*(v0 + 360) + 16))(*(v0 + 368), *(v0 + 240), *(v0 + 272));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8C0, &qword_23A6E1C38);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 256);
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    sub_23A63F73C((v0 + 16), v0 + 176);
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v5);
    v7 = sub_23A6B589C(v4, v2, v5, v6);
    *(v0 + 376) = v7;
    sub_23A650A40(v1);
    v22 = swift_allocObject();
    *(v0 + 384) = v22;
    *(v22 + 16) = v7;
    v23 = *(MEMORY[0x277D43B08] + 4);
    v24 = v7;
    v25 = swift_task_alloc();
    *(v0 + 392) = v25;
    v26 = sub_23A6DEBD4();
    *v25 = v0;
    v25[1] = sub_23A654228;
    v27 = *(v0 + 352);
    v28 = *(v0 + 328);
    v29 = sub_23A65848C;
    v30 = v0 + 224;
LABEL_13:

    return MEMORY[0x2821A5670](v30, v29, v22, v28, v26);
  }

  v8 = *(v0 + 368);
  v9 = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8C8, &qword_23A6E1C40);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 344);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    sub_23A63F73C((v0 + 56), v0 + 96);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v14);
    sub_23A6AF7AC(v13, v11, v14, v15);
    v17 = v16;
    *(v0 + 408) = v16;
    sub_23A650A40(v10);
    v22 = swift_allocObject();
    *(v0 + 416) = v22;
    *(v22 + 16) = v17;
    v44 = *(MEMORY[0x277D43B08] + 4);
    v45 = v17;
    v46 = swift_task_alloc();
    *(v0 + 424) = v46;
    v26 = sub_23A6DEBA4();
    *v46 = v0;
    v46[1] = sub_23A654788;
    v47 = *(v0 + 344);
    v28 = *(v0 + 328);
    v29 = sub_23A658420;
    v30 = v0 + 216;
    goto LABEL_13;
  }

  v18 = *(v0 + 280);
  v19 = sub_23A6DCDF0();
  sub_23A646D48(v19, v18, &qword_27DF9D240, qword_23A6E1D30);
  v20 = sub_23A6DECC4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_23A646DB0(*(v0 + 280), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v31 = *(v0 + 280);
    v32 = sub_23A6DECA4();
    v33 = sub_23A6DF884();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23A63D000, v32, v33, "Unknown identity read request type", v34, 2u);
      MEMORY[0x23EE8A960](v34, -1, -1);
    }

    v35 = *(v0 + 280);

    (*(v21 + 8))(v35, v20);
  }

  sub_23A65244C();
  swift_allocError();
  *v36 = 9;
  swift_willThrow();
  v38 = *(v0 + 344);
  v37 = *(v0 + 352);
  v40 = *(v0 + 312);
  v39 = *(v0 + 320);
  v41 = *(v0 + 280);
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_23A654228()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 384);
  v6 = *(v2 + 264);

  if (v0)
  {
    v7 = sub_23A654698;
  }

  else
  {
    v7 = sub_23A654370;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_23A654370()
{
  v1 = v0[40];
  v2 = v0[36];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v3 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  DynamicType = swift_getDynamicType();
  v5 = v0[26];
  v6 = *(v5 + 8);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
  swift_task_alloc();
  (*(v5 + 40))(v3, DynamicType, v5);
  v8 = swift_dynamicCast();
  v9 = v0[47];
  v10 = v0[40];
  if (v8)
  {
    v11 = v0[36];
    v12 = v0[29];

    v13 = *(v11 - 8);
    (*(v13 + 56))(v10, 0, 1, v11);
    (*(v13 + 32))(v12, v10, v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v15 = v0[43];
    v14 = v0[44];
    v17 = v0[39];
    v16 = v0[40];
    v18 = v0[35];
  }

  else
  {
    v20 = v0[37];
    v21 = v0[38];
    (*(*(v0[36] - 8) + 56))(v0[40], 1, 1);
    (*(v21 + 8))(v10, v20);

    sub_23A65244C();
    swift_allocError();
    *v22 = 10;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    v24 = v0[43];
    v23 = v0[44];
    v26 = v0[39];
    v25 = v0[40];
    v27 = v0[35];
  }

  (*(v0[45] + 8))(v0[46], v0[34]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_23A654698()
{
  (*(*(v0 + 336) + 8))(*(v0 + 352), *(v0 + 328));
  v1 = *(v0 + 400);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 280);
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23A654788()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 416);
  v6 = *(v2 + 264);

  if (v0)
  {
    v7 = sub_23A654D24;
  }

  else
  {
    v7 = sub_23A6548D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_23A6548D0()
{
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  v1 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  DynamicType = swift_getDynamicType();
  v3 = *(v0 + 128);
  v4 = *(v3 + 32);
  v35 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_23A6DF954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v36 = v1;
  v4(v1, DynamicType, v3);
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
  }

  else
  {
    *(v0 + 160) = AssociatedTypeWitness;
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(v10 + 32))(boxed_opaque_existential_1, v9, AssociatedTypeWitness);
  }

  v12 = *(v0 + 312);
  v13 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D0, &qword_23A6E1C48);
  v14 = swift_dynamicCast();
  v15 = *(v0 + 408);
  v16 = *(v0 + 312);
  if (v14)
  {
    v17 = *(v0 + 288);
    v18 = *(v0 + 232);

    v19 = *(v17 - 8);
    (*(v19 + 56))(v16, 0, 1, v17);
    (*(v19 + 32))(v18, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    v23 = *(v0 + 312);
    v22 = *(v0 + 320);
    v24 = *(v0 + 280);
  }

  else
  {
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    (*(*(*(v0 + 288) - 8) + 56))(*(v0 + 312), 1, 1);
    (*(v26 + 8))(v16, v27);
    sub_23A65244C();
    swift_allocError();
    *v28 = 10;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v30 = *(v0 + 344);
    v29 = *(v0 + 352);
    v32 = *(v0 + 312);
    v31 = *(v0 + 320);
    v33 = *(v0 + 280);
  }

  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_23A654D24()
{
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  v1 = *(v0 + 432);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 280);
  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 272));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23A654E14(uint64_t a1)
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
  v10[1] = sub_23A647140;

  return sub_23A653B14(a1, v6, v7, v9, v8, v4);
}

uint64_t sub_23A654EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v10 - v5;
  v7 = sub_23A6DF7B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;

  sub_23A6554A0(0, 0, v6, &unk_23A6E1C08, v8);
}

uint64_t sub_23A654FFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for IdentityReaderActor()
{
  result = qword_27DF9ED20;
  if (!qword_27DF9ED20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A655090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C878, &qword_23A6E1B50);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A655160, a4, 0);
}

uint64_t sub_23A655160()
{
  v1 = v0[2];
  sub_23A650A40(v0[5]);
  v2 = *(MEMORY[0x277D43B08] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_23A655278;
  v4 = v0[5];
  v5 = v0[3];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A5670](v3, sub_23A657180, 0, v5, v6);
}

uint64_t sub_23A655278()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_23A655424;
  }

  else
  {
    v6 = sub_23A6553A4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A6553A4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A655424()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A6554A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_23A646D48(a3, v25 - v11, &qword_27DF9C7F0, &qword_23A6E25B0);
  v13 = sub_23A6DF7B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23A646DB0(v12, &qword_27DF9C7F0, &qword_23A6E25B0);
  }

  else
  {
    sub_23A6DF7A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23A6DF754();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23A6DF654() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

void sub_23A655750(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = aBlock - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = aBlock - v15;
  v17 = *a1;
  if (sub_23A6DEB54())
  {
    v18 = sub_23A6DCDF0();
    sub_23A646D48(v18, v10, &qword_27DF9D240, qword_23A6E1D30);
    v19 = sub_23A6DECC4();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v10, 1, v19) == 1)
    {
      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v24 = sub_23A6DECA4();
      v25 = sub_23A6DF884();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23A63D000, v24, v25, "Error Mobile document request is empty", v26, 2u);
        MEMORY[0x23EE8A960](v26, -1, -1);
      }

      (*(v20 + 8))(v10, v19);
    }

    sub_23A65244C();
    v27 = swift_allocError();
    *v28 = 9;
    aBlock[0] = v27;
    sub_23A6DF764();
  }

  else
  {
    (*(v12 + 16))(v16, a2, v11);
    v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v22 = swift_allocObject();
    (*(v12 + 32))(v22 + v21, v16, v11);
    aBlock[4] = sub_23A658494;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A658794;
    aBlock[3] = &block_descriptor_37;
    v23 = _Block_copy(aBlock);

    [v17 performDisplayRequest:a3 completion:v23];
    _Block_release(v23);
  }
}

uint64_t sub_23A655AB8(void *a1, uint64_t *a2, uint64_t a3)
{
  v81 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v77 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v77 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v80 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v77 - v24;
  v26 = sub_23A6DE424();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v77 - v34;
  if (a2)
  {
    v82 = a2;
    v36 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v37 = swift_dynamicCast();
    (*(v27 + 56))(v25, v37 ^ 1u, 1, v26);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_23A646DB0(v25, &qword_27DF9C8A8, &unk_23A6E1C20);
      v38 = sub_23A6DCDF0();
      sub_23A646D48(v38, v18, &qword_27DF9D240, qword_23A6E1D30);
      v39 = sub_23A6DECC4();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v18, 1, v39) == 1)
      {
        sub_23A646DB0(v18, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v49 = a2;
        v50 = sub_23A6DECA4();
        v51 = sub_23A6DF884();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          v54 = a2;
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v52 + 4) = v55;
          *v53 = v55;
          _os_log_impl(&dword_23A63D000, v50, v51, "Unknown error was returned from Identity service on read request: [ %@ ]", v52, 0xCu);
          sub_23A646DB0(v53, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v53, -1, -1);
          MEMORY[0x23EE8A960](v52, -1, -1);
        }

        (*(v40 + 8))(v18, v39);
      }

LABEL_27:
      sub_23A65244C();
      v75 = swift_allocError();
      *v76 = 0;
      v82 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
      return sub_23A6DF764();
    }

    (*(v27 + 32))(v35, v25, v26);
    v45 = sub_23A6DCDF0();
    v46 = v80;
    sub_23A646D48(v45, v80, &qword_27DF9D240, qword_23A6E1D30);
    v47 = sub_23A6DECC4();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_23A646DB0(v46, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      (*(v27 + 16))(v32, v35, v26);
      v56 = sub_23A6DECA4();
      v57 = sub_23A6DF884();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v82 = v79;
        *v58 = 136446210;
        v78 = sub_23A6AF6FC();
        v60 = v59;
        (*(v27 + 8))(v32, v26);
        v61 = sub_23A657E78(v78, v60, &v82);

        *(v58 + 4) = v61;
        _os_log_impl(&dword_23A63D000, v56, v57, "An error occurred during the mobile document request: %{public}s", v58, 0xCu);
        v62 = v79;
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x23EE8A960](v62, -1, -1);
        v46 = v80;
        MEMORY[0x23EE8A960](v58, -1, -1);
      }

      else
      {

        (*(v27 + 8))(v32, v26);
      }

      (*(v48 + 8))(v46, v47);
    }

    sub_23A65244C();
    v70 = swift_allocError();
    sub_23A6AF3DC(v71);
    v82 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
    sub_23A6DF764();
    return (*(v27 + 8))(v35, v26);
  }

  else
  {
    (*(v27 + 56))(v25, 1, 1, v26);
    sub_23A646DB0(v25, &qword_27DF9C8A8, &unk_23A6E1C20);
    if (!a1)
    {
      v63 = sub_23A6DCDF0();
      sub_23A646D48(v63, v14, &qword_27DF9D240, qword_23A6E1D30);
      v64 = sub_23A6DECC4();
      v65 = *(v64 - 8);
      if ((*(v65 + 48))(v14, 1, v64) == 1)
      {
        sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v72 = sub_23A6DECA4();
        v73 = sub_23A6DF884();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_23A63D000, v72, v73, "Error on completion call while reading a document", v74, 2u);
          MEMORY[0x23EE8A960](v74, -1, -1);
        }

        (*(v65 + 8))(v14, v64);
      }

      goto LABEL_27;
    }

    v41 = a1;
    v42 = sub_23A6DCDF0();
    sub_23A646D48(v42, v10, &qword_27DF9D240, qword_23A6E1D30);
    v43 = sub_23A6DECC4();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v10, 1, v43) == 1)
    {
      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v66 = sub_23A6DECA4();
      v67 = sub_23A6DF8A4();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_23A63D000, v66, v67, "Document read response received", v68, 2u);
        MEMORY[0x23EE8A960](v68, -1, -1);
      }

      (*(v44 + 8))(v10, v43);
    }

    v82 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8D8, &unk_23A6E1C50);
    return sub_23A6DF774();
  }
}

void sub_23A65642C(id *a1, uint64_t a2, void *a3)
{
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v35 - v14;
  v16 = sub_23A6DE574();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  if (sub_23A6DEAF4())
  {
    v22 = sub_23A6DCDF0();
    sub_23A646D48(v22, v9, &qword_27DF9D240, qword_23A6E1D30);
    v23 = sub_23A6DECC4();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v9, 1, v23) == 1)
    {
      sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v26 = sub_23A6DECA4();
      v27 = sub_23A6DF884();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23A63D000, v26, v27, "Error Mobile document request is empty", v28, 2u);
        MEMORY[0x23EE8A960](v28, -1, -1);
      }

      (*(v24 + 8))(v9, v23);
    }

    sub_23A65244C();
    v29 = swift_allocError();
    *v30 = 9;
    aBlock[0] = v29;
    sub_23A6DF764();
  }

  else
  {
    v25 = (v17 + 8);
    if (sub_23A6DEAE4())
    {
      sub_23A6DE4F4();
    }

    else
    {
      sub_23A6DE4D4();
    }

    sub_23A6DE544();
    (*v25)(v21, v16);
    (*(v11 + 16))(v15, v36, v10);
    v31 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    (*(v11 + 32))(v32 + v31, v15, v10);
    aBlock[4] = sub_23A65850C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A658794;
    aBlock[3] = &block_descriptor_43;
    v33 = _Block_copy(aBlock);
    v34 = a3;

    [v35 performDataRequest:v34 completion:v33];
    _Block_release(v33);
  }
}

uint64_t sub_23A65686C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v74 = a1;
  v75 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v71 = &v71 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v72 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v71 - v19;
  v21 = sub_23A6DE424();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v73 = &v71 - v29;
  v30 = sub_23A6DE574();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (v31 + 8);
  if (sub_23A6DEAE4())
  {
    sub_23A6DE4F4();
  }

  else
  {
    sub_23A6DE4D4();
  }

  sub_23A6DE524();
  (*v36)(v35, v30);
  if (a2)
  {
    v76 = a2;
    v37 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v38 = swift_dynamicCast();
    (*(v22 + 56))(v20, v38 ^ 1u, 1, v21);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v39 = v73;
      (*(v22 + 32))(v73, v20, v21);
      v40 = sub_23A6DCDF0();
      v41 = v72;
      sub_23A646D48(v40, v72, &qword_27DF9D240, qword_23A6E1D30);
      v42 = sub_23A6DECC4();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v41, 1, v42) == 1)
      {
        sub_23A646DB0(v41, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        (*(v22 + 16))(v27, v39, v21);
        v56 = sub_23A6DECA4();
        v57 = sub_23A6DF884();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v76 = v74;
          *v58 = 136446210;
          v59 = sub_23A6AF6FC();
          v61 = v60;
          (*(v22 + 8))(v27, v21);
          v62 = sub_23A657E78(v59, v61, &v76);
          v41 = v72;

          *(v58 + 4) = v62;
          _os_log_impl(&dword_23A63D000, v56, v57, "An error occurred during the mobile document request: %{public}s", v58, 0xCu);
          v63 = v74;
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x23EE8A960](v63, -1, -1);
          MEMORY[0x23EE8A960](v58, -1, -1);
        }

        else
        {

          (*(v22 + 8))(v27, v21);
        }

        (*(v43 + 8))(v41, v42);
        v39 = v73;
      }

      sub_23A65244C();
      v69 = swift_allocError();
      sub_23A6AF3DC(v70);
      v76 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
      sub_23A6DF764();
      return (*(v22 + 8))(v39, v21);
    }
  }

  else
  {
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  sub_23A646DB0(v20, &qword_27DF9C8A8, &unk_23A6E1C20);
  if (v74)
  {
    v44 = v74;
    v45 = sub_23A6DCDF0();
    sub_23A646D48(v45, v10, &qword_27DF9D240, qword_23A6E1D30);
    v46 = sub_23A6DECC4();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v10, 1, v46) == 1)
    {
      sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v52 = sub_23A6DECA4();
      v53 = sub_23A6DF8A4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_23A63D000, v52, v53, "Document read response received", v54, 2u);
        MEMORY[0x23EE8A960](v54, -1, -1);
      }

      (*(v47 + 8))(v10, v46);
    }

    v76 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
    return sub_23A6DF774();
  }

  else
  {
    v48 = sub_23A6DCDF0();
    v49 = v71;
    sub_23A646D48(v48, v71, &qword_27DF9D240, qword_23A6E1D30);
    v50 = sub_23A6DECC4();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      sub_23A646DB0(v49, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v64 = sub_23A6DECA4();
      v65 = sub_23A6DF884();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_23A63D000, v64, v65, "Error on completion call while reading a document", v66, 2u);
        MEMORY[0x23EE8A960](v66, -1, -1);
      }

      (*(v51 + 8))(v49, v50);
    }

    sub_23A65244C();
    v67 = swift_allocError();
    *v68 = 0;
    v76 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60);
    return sub_23A6DF764();
  }
}

void sub_23A6570F4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_23A657180(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  v10 = *a1;
  (*(v5 + 16))(aBlock - v8, a2, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_23A657DE4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A657BC8;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  [v10 cancelReadWithCompletion_];
  _Block_release(v13);
}

uint64_t sub_23A657334(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A8, &unk_23A6E1C20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v65 - v20;
  v22 = sub_23A6DE424();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v65 - v30;
  if (a1)
  {
    v70 = a1;
    v32 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v33 = swift_dynamicCast();
    (*(v23 + 56))(v21, v33 ^ 1u, 1, v22);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_23A646DB0(v21, &qword_27DF9C8A8, &unk_23A6E1C20);
      v34 = sub_23A6DCDF0();
      sub_23A646D48(v34, v13, &qword_27DF9D240, qword_23A6E1D30);
      v35 = sub_23A6DECC4();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v13, 1, v35) == 1)
      {
        sub_23A646DB0(v13, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v48 = a1;
        v49 = sub_23A6DECA4();
        v50 = sub_23A6DF884();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          v53 = a1;
          v54 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 4) = v54;
          *v52 = v54;
          _os_log_impl(&dword_23A63D000, v49, v50, "Unknown error was returned from Identity service: [ %@ ]", v51, 0xCu);
          sub_23A646DB0(v52, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v52, -1, -1);
          MEMORY[0x23EE8A960](v51, -1, -1);
        }

        (*(v36 + 8))(v13, v35);
      }

      sub_23A65244C();
      v55 = swift_allocError();
      *v56 = 0;
      v70 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      return sub_23A6DF764();
    }

    else
    {
      (*(v23 + 32))(v31, v21, v22);
      v40 = sub_23A6DCDF0();
      sub_23A646D48(v40, v16, &qword_27DF9D240, qword_23A6E1D30);
      v41 = sub_23A6DECC4();
      v42 = *(v41 - 8);
      v43 = (*(v42 + 48))(v16, 1, v41);
      v69 = a2;
      if (v43 == 1)
      {
        sub_23A646DB0(v16, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v66 = *(v23 + 16);
        v66(v28, v31, v22);
        v57 = sub_23A6DECA4();
        v67 = sub_23A6DF884();
        v68 = v57;
        if (os_log_type_enabled(v57, v67))
        {
          v58 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v58 = 138412290;
          sub_23A654FFC(&qword_27DF9C870, MEMORY[0x277D436E0]);
          swift_allocError();
          v66(v59, v28, v22);
          v60 = _swift_stdlib_bridgeErrorToNSError();
          (*(v23 + 8))(v28, v22);
          *(v58 + 4) = v60;
          v61 = v65;
          *v65 = v60;
          v62 = v68;
          _os_log_impl(&dword_23A63D000, v68, v67, "Could not cancel read due to: [ %@ ]", v58, 0xCu);
          sub_23A646DB0(v61, &qword_27DF9C8B0, &qword_23A6E4ED0);
          MEMORY[0x23EE8A960](v61, -1, -1);
          MEMORY[0x23EE8A960](v58, -1, -1);
        }

        else
        {

          (*(v23 + 8))(v28, v22);
        }

        (*(v42 + 8))(v16, v41);
      }

      sub_23A65244C();
      v63 = swift_allocError();
      sub_23A6AF3DC(v64);
      v70 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
      sub_23A6DF764();
      return (*(v23 + 8))(v31, v22);
    }
  }

  else
  {
    (*(v23 + 56))(v21, 1, 1, v22);
    sub_23A646DB0(v21, &qword_27DF9C8A8, &unk_23A6E1C20);
    v37 = sub_23A6DCDF0();
    sub_23A646D48(v37, v9, &qword_27DF9D240, qword_23A6E1D30);
    v38 = sub_23A6DECC4();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v9, 1, v38) == 1)
    {
      sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v44 = sub_23A6DECA4();
      v45 = sub_23A6DF8A4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_23A63D000, v44, v45, "Requesting to cancel current read", v46, 2u);
        MEMORY[0x23EE8A960](v46, -1, -1);
      }

      (*(v39 + 8))(v9, v38);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    return sub_23A6DF774();
  }
}

void sub_23A657BC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_23A657C48()
{
  sub_23A657CEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A657CEC()
{
  if (!qword_27DF9C898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C888, qword_23A6E1B58);
    v0 = sub_23A6DEA24();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C898);
    }
  }
}

uint64_t sub_23A657D50()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A655090(v3, v4, v5, v2);
}

uint64_t sub_23A657DE4(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23A657334(a1, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A657E78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23A657F44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23A648D94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_23A657F44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23A658050(a5, a6);
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
    result = sub_23A6DFAA4();
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

uint64_t sub_23A658050(uint64_t a1, unint64_t a2)
{
  v4 = sub_23A65809C(a1, a2);
  sub_23A6581CC(&unk_284D52110);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23A65809C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23A6582B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23A6DFAA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23A6DF6D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23A6582B8(v10, 0);
        result = sub_23A6DFA74();
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

uint64_t sub_23A6581CC(uint64_t result)
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

  result = sub_23A65832C(result, v12, 1, v3);
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

void *sub_23A6582B8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E0, &qword_23A6E20C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23A65832C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E0, &qword_23A6E20C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23A65850C(uint64_t *a1, uint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8E8, &qword_23A6E1C60) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_23A65686C(a1, a2, v6, v7);
}

uint64_t sub_23A65859C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8F0, &qword_23A6E1C68) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23A652CF0(a1, a2, a3, v8);
}

uint64_t objectdestroy_21Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23A6586DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void *sub_23A658798()
{
  v0 = type metadata accessor for PaymentCardReaderActor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_23A65891C();
  qword_27DFA5E88 = v3;
  return result;
}

uint64_t *sub_23A6587D8()
{
  if (qword_27DF9ED30 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E88;
}

uint64_t sub_23A658828()
{
  v0 = sub_23A6DE2F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  sub_23A6DE2E4();
  v7 = sub_23A6DE2B4();
  v9 = v8;
  (*(v1 + 8))(v5, v0);
  *(v6 + 16) = v7;
  *(v6 + 24) = v9;
  return v6;
}

void *sub_23A65891C()
{
  v1 = v0;
  v2 = sub_23A6DE2F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v30[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v7 = MEMORY[0x277D84F90];
  v0[16] = sub_23A675560(MEMORY[0x277D84F90]);
  v0[17] = 0;
  active = type metadata accessor for UIForegroundActiveArbiter();
  v9 = sub_23A6B1FE8();
  v1[21] = active;
  v1[22] = &off_284D54638;
  v1[18] = v9;
  type metadata accessor for PaymentCardReaderForegroundObserver();
  v10 = swift_allocObject();
  sub_23A6DE2E4();
  v11 = sub_23A6DE2B4();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  *(v10 + 16) = v11;
  *(v10 + 24) = v13;
  v1[23] = v10;
  *(v1 + 96) = 5;
  *(v1 + 194) = 0;
  v1[25] = 0;
  v1[26] = 0;
  (*(v3 + 56))(v1 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID, 1, 1, v2);
  *(v1 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_backgroundAllowed) = 0;
  v14 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers;
  *(v1 + v14) = sub_23A67577C(v7, &qword_27DF9C990, &qword_23A6E2098);
  v15 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers;
  *(v1 + v15) = sub_23A67577C(v7, &qword_27DF9C9B0, &qword_23A6E20B8);
  *(v1 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning) = 0;
  v16 = v1[21];
  v17 = v1[22];
  v18 = __swift_project_boxed_opaque_existential_1(v1 + 18, v16);
  v19 = *(v16 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v18);
  v22 = &v30[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22);
  LOBYTE(v17) = (*(v17 + 8))(v16, v17);
  (*(v19 + 8))(v22, v16);
  *(v1 + 192) = v17;
  sub_23A675890((v1 + 18), v30);
  v23 = v31;
  v24 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v25 = v1[23];
  v26 = *(v24 + 24);

  v26(v27, &off_284D524A8, v23, v24);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v1;
}

uint64_t sub_23A658C44()
{
  sub_23A675890(v0 + 144, v13);
  v1 = v14;
  v2 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v3 = *(v0 + 184);
  v4 = *(v2 + 32);

  v4(v5, &off_284D524A8, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  v6 = *(v0 + 120);

  v7 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v8 = *(v0 + 184);

  v9 = *(v0 + 208);

  sub_23A646DB0(v0 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_lastCardReadTransactionID, &qword_27DF9C900, &qword_23A6E1D20);
  v10 = *(v0 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_eventHandlers);

  v11 = *(v0 + OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_updateHandlers);

  swift_defaultActor_destroy();
  return v0;
}