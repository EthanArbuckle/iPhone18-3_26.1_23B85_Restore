void *sub_1B71BAAC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991180);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BAB74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71BAC30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B71BACE4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setExpiration_];
}

id sub_1B71BAD88@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 linkable];
  *a2 = result;
  return result;
}

CGColorSpace *sub_1B71BADD0@<X0>(CGColorSpace **a1@<X8>)
{
  result = Transaction.Icon.backgroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BAE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71BAF50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71BB07C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71BB138(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1B71BB1F0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 decodingIndex];
  *a2 = result;
  return result;
}

void sub_1B71BB23C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setIdentifier_];
}

id sub_1B71BB2A0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 decodingIndex];
  *a2 = result;
  return result;
}

id sub_1B71BB2E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_1B71BB340@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 decodingIndex];
  *a2 = result;
  return result;
}

id sub_1B71BB388@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_1B71BB3D8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 decodingIndex];
  *a2 = result;
  return result;
}

void sub_1B71BB424(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setIdentifier_];
}

id sub_1B71BB488@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_1B71BB4E0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 decodingIndex];
  *a2 = result;
  return result;
}

uint64_t sub_1B71BB528(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71BB5E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BB694()
{
  if (*v0)
  {
    return 0x6874695765746164;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1B71BB6D4()
{
  v1 = 0x68746E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 7954788;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1918985593;
  }
}

uint64_t sub_1B71BB71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72EA2CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B71BB744()
{
  v1 = *v0;
  v2 = 1918985593;
  v3 = 0x7372756F68;
  v4 = 0x736574756E696DLL;
  if (v1 != 4)
  {
    v4 = 0x73646E6F636573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x68746E6F6DLL;
  if (v1 != 1)
  {
    v5 = 7954788;
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

uint64_t sub_1B71BB7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72E9850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B71BB82C()
{
  v1 = *v0;
  v2 = 1918985593;
  v3 = 1920298856;
  v4 = 0x6574756E696DLL;
  if (v1 != 4)
  {
    v4 = 0x73646E6F636573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x68746E6F6DLL;
  if (v1 != 1)
  {
    v5 = 7954788;
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

uint64_t sub_1B71BB8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72EA3E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B71BB934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for InternalAccount();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B71BBA30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for InternalAccount();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B71BBB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71BBC4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BBCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71BBE30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71BBF64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for AccountCreditInformation(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1B71BC0E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for AccountCreditInformation(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B71BC29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
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

uint64_t sub_1B71BC358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
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

uint64_t sub_1B71BC410(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FFA18();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71BC4BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FFA18();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BC560(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B71BC6FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FF4F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B71BC88C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71BC8C4()
{
  v1 = sub_1B78000B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B71BC9B8()
{
  v1 = sub_1B78000B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B71BCAAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71BCAE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71BCB24(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71BCBE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BCDC4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for InternalTransaction(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71BCE70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InternalTransaction(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BCF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WalletOrderRowViewModel.OrderRow(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71BCFD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WalletOrderRowViewModel.OrderRow(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71BD090(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF4F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71BD13C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BD1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71BD2AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71BD378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
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

    return (v10 + 1);
  }
}

uint64_t sub_1B71BD438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71BD4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71BD56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1B71BD5E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isVariable];
  *a2 = result;
  return result;
}

id sub_1B71BD630@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 firstAmountValue];
  *a2 = result;
  return result;
}

id sub_1B71BD700@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastAmountValue];
  *a2 = result;
  return result;
}

id sub_1B71BD7D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mostRecentAmountValue];
  *a2 = result;
  return result;
}

id sub_1B71BD8A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 upcomingAmountValue];
  *a2 = result;
  return result;
}

id sub_1B71BD970@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dailyInterval];
  *a2 = result;
  return result;
}

id sub_1B71BD9C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 weeklyInterval];
  *a2 = result;
  return result;
}

id sub_1B71BDA10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 monthlyInterval];
  *a2 = result;
  return result;
}

id sub_1B71BDA60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 yearlyInterval];
  *a2 = result;
  return result;
}

uint64_t sub_1B71BDAB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B71BDB04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71BDB4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71BDB84()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71BDC1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
    v9 = *(refreshed - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = refreshed;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71BDD4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    refreshed = type metadata accessor for Institution.BackgroundRefreshConfiguration(0);
    v9 = *(refreshed - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = refreshed;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71BDE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_1B71BDF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_1B71BE110()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1B71BE158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71BE280(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1B77FF988();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1B71BE3B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setName_];
}

uint64_t sub_1B71BE4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71BE55C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BE654(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 12)
  {
    v12 = *(a1 + a3[5] + 8) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1B7800658();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[7];
    goto LABEL_3;
  }

  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_1B71BE7D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 12)
  {
    v13 = (a1 + a4[5]);
    *v13 = 0;
    v13[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v14 = sub_1B7800658();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v10 = v14;
    v11 = *(v15 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v16 = sub_1B77FF988();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1B71BE958()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71BE9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71BEA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C50);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71BEA9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SendableRegex(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71BEB48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SendableRegex(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B71BEBF0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800F78();
  [v2 setCountryCodes_];
}

uint64_t sub_1B71BEC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71BED18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF4F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71BEDD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF4F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71BEE7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71BEF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71BEF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71BEFFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71BF034()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71BF094()
{
  v1 = *(type metadata accessor for UserPresence() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_1B77FFA18();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B71BF1C4()
{
  v1 = *(type metadata accessor for UserPresence() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_1B77FFA18();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B71BF2EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71BF330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
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

    return (v10 + 1);
  }
}

uint64_t sub_1B71BF3F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

id sub_1B71BF4E4(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  sub_1B7303F28(a1, v6);
  v5 = v3;
  return NSPersistentStore.subscript.setter(v6, &v5);
}

uint64_t sub_1B71BF544()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B71BF5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF4F8();
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

uint64_t sub_1B71BF684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF4F8();
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

uint64_t sub_1B71BF73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71BF7A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71BF818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Institution(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1B71BF8D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Institution(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71BF994()
{
  v1 = 0x656C6C65636E6163;
  if (*v0 != 1)
  {
    v1 = 0x697845726577656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465646461;
  }
}

uint64_t sub_1B71BFA24@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911D0);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFA8C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913C0);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFAF8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930D0);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFB38@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9930F0);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFB78@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991DE8);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFBB8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991138);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFBF8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B71BFC48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B71BFC90@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991FA0);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFCF8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9911A0);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

uint64_t sub_1B71BFD6C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990988);
  result = sub_1B77FED88();
  *a1 = result;
  return result;
}

void sub_1B71BFDCC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF598();
  [v2 setData_];
}

uint64_t sub_1B71BFED0()
{
  sub_1B7800798();
}

void sub_1B71BFF48(uint64_t *a1@<X8>)
{
  v2 = 0x746E756F6D61;
  if (*v1)
  {
    v2 = 0x44746E656D796170;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000657461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B71BFF8C()
{
  if (*v0)
  {
    return 0x44746E656D796170;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_1B71BFFE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71C0118(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71C0248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B77FED28();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71C0300(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_1B77FED28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit40RawApplePayMerchantTokenUsageInformationV23RecurringPaymentDetailsV8IntervalV4UnitO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B71C03BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71C0484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991538);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C0534(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71C05E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RawApplePayMerchantTokenUsageInformation.UpcomingPayment.PaymentDetails(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C0684(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FED28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71C0730(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FED28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1B71C0828()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B71C0868()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6464416C69616D65;
  }
}

uint64_t sub_1B71C0F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 238)
  {
    v4 = *(a1 + 64);
    if (v4 > 0x11)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B77FFA18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1B77FF988();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71C1074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 238)
  {
    *(result + 64) = -a2;
  }

  else
  {
    v8 = sub_1B77FFA18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1B77FF988();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71C1194()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71C11E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1B71C1274(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF598();
  [v2 setCredentialData_];
}

id sub_1B71C12D8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 credentialTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71C13D0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckSchemaVersion];
  *a2 = result;
  return result;
}

void sub_1B71C14A8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setName_];
}

uint64_t sub_1B71C1514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B77FFA18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993998);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B71C1650(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_1B77FFA18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993998);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71C1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
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

uint64_t sub_1B71C1844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
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

uint64_t sub_1B71C18FC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71C1954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98);
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

uint64_t sub_1B71C1A1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98);
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

uint64_t sub_1B71C1AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
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

uint64_t sub_1B71C1B9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
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

uint64_t sub_1B71C1C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71C1D14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71C1DE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FF4F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B71C1F84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FF4F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B71C215C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71C2194(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994070);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71C2250(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994070);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C2308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71C23B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C2458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CurrentBalance(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B71C2548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B77FFA18();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CurrentBalance(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B71C2650@<X0>(uint64_t *a1@<X8>)
{
  result = AccountBalance.currencyCode.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B71C2688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9942E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B71C2724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = type metadata accessor for Institution(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1B71C28A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = type metadata accessor for Institution(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

id sub_1B71C2A38()
{
  v0 = sub_1B71C2A70();

  return v0;
}

uint64_t sub_1B71C2A78()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1B71C2B0C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B71C2B7C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1B741BE2C(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B71C2BD4()
{
  if (*(v0 + 24) != 255)
  {
    sub_1B741BEF4(*(v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B71C2C20()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71C2C58()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110);
  v6 = sub_1B7800D18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B71C2E18()
{
  v1 = *(type metadata accessor for UserPresence() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_1B77FFA18();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B71C2F7C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B71C30B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71C31F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
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

uint64_t sub_1B71C32B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
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

id sub_1B71C34B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMarkedAsComplete];
  *a2 = result;
  return result;
}

id sub_1B71C3504@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 schemaVersion];
  *a2 = result;
  return result;
}

uint64_t sub_1B71C3588(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71C3634(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C36D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71C37A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C3850()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B71C3934()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B71C39C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71C3A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71C3AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

id sub_1B71C3B88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 registrationAttemptCount];
  *a2 = result;
  return result;
}

void sub_1B71C3BDC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setCreationDate_];
}

uint64_t sub_1B71C3C3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71C3CF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1B71C3DC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderType];
  *a2 = result;
  return result;
}

id sub_1B71C3E10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderWebService];
  *a2 = result;
  return result;
}

id sub_1B71C3EF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updateSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71C3F40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fetchSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71C3FC8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71C4050@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderRegistration];
  *a2 = result;
  return result;
}

id sub_1B71C40A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ecommerceOrderContent];
  *a2 = result;
  return result;
}

uint64_t sub_1B71C40F0@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedOrder.mailItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71C4120@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedOrder.mailItemOrderDetails.getter();
  *a1 = result;
  return result;
}

id sub_1B71C41A4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 orderContentDecodingVersion];
  *a2 = result;
  return result;
}

id sub_1B71C41EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 automaticUpdatesEnabled];
  *a2 = result;
  return result;
}

id sub_1B71C4274@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 notificationsEnabled];
  *a2 = result;
  return result;
}

id sub_1B71C42FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 effectiveNotificationsEnabled];
  *a2 = result;
  return result;
}

id sub_1B71C4344@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMarkedAsComplete];
  *a2 = result;
  return result;
}

id sub_1B71C43CC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 effectiveAutomaticUpdatesEnabled];
  *a2 = result;
  return result;
}

id sub_1B71C44EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dashboardItem];
  *a2 = result;
  return result;
}

id sub_1B71C453C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsAsActive];
  *a2 = result;
  return result;
}

id sub_1B71C4584@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isActive];
  *a2 = result;
  return result;
}

id sub_1B71C45CC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 statusPriorityValue];
  *a2 = result;
  return result;
}

void sub_1B71C473C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF9B8();
  [v2 setAnnotatedObjectID_];
}

void sub_1B71C47A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setValue_];
}

uint64_t sub_1B71C4838@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B71C4888(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B71C49C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1B71C4B04(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setLastUpdatedAt_];
}

id sub_1B71C4C04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 id];
  *a2 = result;
  return result;
}

void sub_1B71C4C50(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setEntityClassName_];
}

void sub_1B71C4CB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF3F8();
  [v2 setObjectIDURL_];
}

id sub_1B71C4D14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionNumber];
  *a2 = result;
  return result;
}

id sub_1B71C4D5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationLatitudeValue];
  *a2 = result;
  return result;
}

id sub_1B71C4DAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationLongitudeValue];
  *a2 = result;
  return result;
}

id sub_1B71C4DFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 postalAddress];
  *a2 = result;
  return result;
}

id sub_1B71C4E4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 brandObject];
  *a2 = result;
  return result;
}

id sub_1B71C4FA0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliverySequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71C4FE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scheduleSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71C5030@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 application];
  *a2 = result;
  return result;
}

id sub_1B71C5088@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedBackgroundDeliveryRegistration.updateFrequency.getter(&v3);
  *a1 = v3;
  return result;
}

id sub_1B71C50D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storeIdentifier];
  *a2 = result;
  return result;
}

id sub_1B71C5130@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

uint64_t sub_1B71C5178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF4F8();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B71C5244(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF4F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1B71C5304(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF9B8();
  [v2 setId_];
}

id sub_1B71C538C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusValue];
  *a2 = result;
  return result;
}

id sub_1B71C53DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 schedulingTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71C5558@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountObject];
  *a2 = result;
  return result;
}

uint64_t sub_1B71C5680(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1B77FFA18();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_1B71C57F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1B77FFA18();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71C5978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71C5A40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1B71C5B08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 altText];
  *a2 = result;
  return result;
}

id sub_1B71C5BB0@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedOrderBarcode.format.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B71C5C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71C5CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71C5D70()
{
  v1 = *(type metadata accessor for UserPresence() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D68);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_1B77FFA18();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B71C5EA4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setName_];
}

FinanceKit::FoundInMailItem::OrderDetails::EmailType_optional sub_1B71C5F2C@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = FoundInMailItem.OrderDetails.EmailType.init(rawValue:)([*a1 emailTypeValue]).value;
  v4 = v5;
  if (v5 == 9)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

FinanceKit::FoundInMailItem::OrderDetails::ShippingDetails::Status_optional sub_1B71C6010@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = FoundInMailItem.OrderDetails.ShippingDetails.Status.init(rawValue:)([*a1 shippingStatusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id sub_1B71C60F4@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedFoundInMailItemOrderDetails.orderContentType.getter(&v3);
  *a1 = v3;
  return result;
}

void sub_1B71C61B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setDateSent_];
}

uint64_t sub_1B71C63D4@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedFoundInMailItem.orderDetails.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71C6450@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedFoundInMailItem.spotlightUniqueIdentifiers.getter();
  *a1 = result;
  return result;
}

id sub_1B71C64CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 businessConnectBrandObject];
  *a2 = result;
  return result;
}

void sub_1B71C6568(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF598();
  [v2 setData_];
}

id sub_1B71C65CC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 dataLength];
  *a2 = result;
  return result;
}

void sub_1B71C6618(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setPaymentHash_];
}

id sub_1B71C67A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 industryCodeValue];
  *a2 = result;
  return result;
}

id sub_1B71C6934@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 tokenTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71C69E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isCoarseLocationValue];
  *a2 = result;
  return result;
}

id sub_1B71C6A34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationAltitudeValue];
  *a2 = result;
  return result;
}

id sub_1B71C6A84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationLatitudeValue];
  *a2 = result;
  return result;
}

id sub_1B71C6AD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationLongitudeValue];
  *a2 = result;
  return result;
}

id sub_1B71C6B24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationHorizontalAccuracyValue];
  *a2 = result;
  return result;
}

id sub_1B71C6B74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 locationVerticalAccuracyValue];
  *a2 = result;
  return result;
}

id sub_1B71C6DC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 merchantCleanConfidenceLevelValue];
  *a2 = result;
  return result;
}

id sub_1B71C6E14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rewardsAmount];
  *a2 = result;
  return result;
}

id sub_1B71C6EA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rewardsEligibilityReasonValue];
  *a2 = result;
  return result;
}

id sub_1B71C6EF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 adamIdentifierValue];
  *a2 = result;
  return result;
}

id sub_1B71C702C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isIssuerInstallmentTransaction];
  *a2 = result;
  return result;
}

double sub_1B71C7194@<D0>(uint64_t a1@<X8>)
{
  ManagedApplePayTransactionInsight.rewards.getter(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

id sub_1B71C71E4@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedApplePayTransactionInsight.tokenType.getter(&v3);
  *a1 = v3;
  return result;
}

id sub_1B71C7234@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 & 0x7FFFFFFFFFFFFFFFLL positionIndex];
  *a2 = result;
  return result;
}

double sub_1B71C7294@<D0>(id *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 width];
  result = [v3 height];
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_1B71C7354(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956B8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9925D8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71C7490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9956B8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9925D8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71C75CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71C7644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71C76C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RawBankConnectData.Institution(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1B71C7780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RawBankConnectData.Institution(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71C783C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B71C78F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C79A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1B71C7A70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71C7B4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71C7B84()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995DA0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995D98);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[15];
  v8 = sub_1B7801C28();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1B71C7CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995EE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B71C7D64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71C7DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71C7E1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995F00);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

id sub_1B71C7ED0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 quantity];
  *a2 = result;
  return result;
}

id sub_1B71C7F18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 subtitle];
  *a2 = result;
  return result;
}

id sub_1B71C7F68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 title];
  *a2 = result;
  return result;
}

id sub_1B71C7FB8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

id sub_1B71C8000@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priceAmount];
  *a2 = result;
  return result;
}

uint64_t sub_1B71C8110()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1B71C8148@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 address];
  *a2 = result;
  return result;
}

id sub_1B71C8218@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayName];
  *a2 = result;
  return result;
}

void sub_1B71C82EC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setMerchantIdentifier_];
}

void sub_1B71C8394(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF3F8();
  [v2 setUrl_];
}

uint64_t sub_1B71C83F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71C8438()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B71C8470(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1B77FF988();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1B71C85F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B71C877C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1B71C885C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalAmount];
  *a2 = result;
  return result;
}

void sub_1B71C88B0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setTotalCurrencyCode_];
}

id sub_1B71C8914@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 summaryItemObjects];
  *a2 = result;
  return result;
}

id sub_1B71C896C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applePayTransactionIdentifierObjects];
  *a2 = result;
  return result;
}

id sub_1B71C89BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionObjects];
  *a2 = result;
  return result;
}

uint64_t sub_1B71C8A0C@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedOrderPayment.summaryItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71C8A74@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedOrderPayment.applePayTransactionIdentifiers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71C8AD4@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedOrderPayment.transactions.getter();
  *a1 = result;
  return result;
}

id sub_1B71C8B34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_1B71C8B84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 valueAmount];
  *a2 = result;
  return result;
}

void sub_1B71C8BD8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setValueCurrencyCode_];
}

id sub_1B71C8C3C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

id sub_1B71C8C8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusDescription];
  *a2 = result;
  return result;
}

id sub_1B71C8CDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 address];
  *a2 = result;
  return result;
}

id sub_1B71C8D2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 barcode];
  *a2 = result;
  return result;
}

id sub_1B71C8D7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 location];
  *a2 = result;
  return result;
}

id sub_1B71C8DCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notes];
  *a2 = result;
  return result;
}

id sub_1B71C8E1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayName];
  *a2 = result;
  return result;
}

id sub_1B71C8EF4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

void sub_1B71C8F40(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setFulfillmentIdentifier_];
}

id sub_1B71C8FA4@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedOrderPickupFulfillment.status.getter();
  *a1 = result;
  return result;
}

void sub_1B71C90B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF9B8();
  [v2 setAccountID_];
}

double sub_1B71C919C@<D0>(_OWORD *a1@<X8>)
{
  ManagedApplication.fullyQualifiedIdentifier.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

id sub_1B71C91E0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckSchemaVersion];
  *a2 = result;
  return result;
}

id sub_1B71C9438@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 refreshSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71C9518@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 consentValidationAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71C95A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderWebService];
  *a2 = result;
  return result;
}

id sub_1B71C95F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderType];
  *a2 = result;
  return result;
}

id sub_1B71C9698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 order];
  *a2 = result;
  return result;
}

id sub_1B71C9798@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMaybeRegistered];
  *a2 = result;
  return result;
}

id sub_1B71C97E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71C98B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notes];
  *a2 = result;
  return result;
}

id sub_1B71C9900@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusDescription];
  *a2 = result;
  return result;
}

id sub_1B71C9A9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipientAddress];
  *a2 = result;
  return result;
}

id sub_1B71C9BBC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

void sub_1B71C9C08(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setFulfillmentIdentifier_];
}

uint64_t sub_1B71C9CD4@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedOrderShippingFulfillment.status.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71C9D14@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedOrderShippingFulfillment.shippingType.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71C9D54@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedOrderShippingFulfillment.lineItems.getter();
  *a1 = result;
  return result;
}

void sub_1B71C9ED0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setTransactionDescription_];
}

id sub_1B71C9F34@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSuppressedByUser];
  *a2 = result;
  return result;
}

id sub_1B71C9F84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountObject];
  *a2 = result;
  return result;
}

id sub_1B71C9FD4@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedPredictedTransaction.creditDebitIndicator.getter(&v3);
  *a1 = v3;
  return result;
}

double sub_1B71CA024@<D0>(_OWORD *a1@<X8>)
{
  ManagedPredictedTransaction.amountRange.getter(&v4);
  v2 = *v5;
  *a1 = v4;
  a1[1] = v2;
  result = *&v5[9];
  *(a1 + 25) = *&v5[9];
  return result;
}

id sub_1B71CA0D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 muid];
  *a2 = result;
  return result;
}

id sub_1B71CA160@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resultProviderIdentifierValue];
  *a2 = result;
  return result;
}

id sub_1B71CA340@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 walletCategoryValue];
  *a2 = result;
  return result;
}

void sub_1B71CA4A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setOrderTypeIdentifier_];
}

id sub_1B71CA514@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasPushToken];
  *a2 = result;
  return result;
}

id sub_1B71CA55C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestTokenAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71CA5E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updateSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71CA62C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 updateTokenCount];
  *a2 = result;
  return result;
}

id sub_1B71CA6B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 propagateUpdateSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71CA6FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pendingApplePayOrders];
  *a2 = result;
  return result;
}

id sub_1B71CA74C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orders];
  *a2 = result;
  return result;
}

id sub_1B71CA79C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderRegistrations];
  *a2 = result;
  return result;
}

id sub_1B71CA7EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 countOfOrdersWithEffectiveAutomaticUpdatesEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CA834@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderWebServices];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CA884(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x524F485455414E55;
  }

  else
  {
    v3 = 0x5A49524F48545541;
  }

  if (v2)
  {
    v4 = 0xEA00000000004445;
  }

  else
  {
    v4 = 0xEC00000044455A49;
  }

  if (*a2)
  {
    v5 = 0x524F485455414E55;
  }

  else
  {
    v5 = 0x5A49524F48545541;
  }

  if (*a2)
  {
    v6 = 0xEC00000044455A49;
  }

  else
  {
    v6 = 0xEA00000000004445;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t sub_1B71CA938(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71CA9E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71CAA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71CAB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

BOOL _s10FinanceKit0A5StoreC12HistoryTokenV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    if (*(a2 + 8))
    {
      sub_1B7201D10(*a1, 1);
      sub_1B7201D10(v4, 1);
      return v2 == v4;
    }

    goto LABEL_6;
  }

  if (*(a2 + 8))
  {
    v7 = v2;
LABEL_6:
    sub_1B7227500(v4, v5);
    sub_1B7201D10(v2, v3);
    sub_1B7201D10(v4, v5);
    return 0;
  }

  sub_1B7205540(0, &qword_1EDAFC4C0);
  sub_1B7227500(v4, 0);
  sub_1B7227500(v2, 0);
  v8 = sub_1B7801558();
  sub_1B7201D10(v2, 0);
  sub_1B7201D10(v4, 0);
  return v8 & 1;
}

id sub_1B71CAD2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderType];
  *a2 = result;
  return result;
}

void sub_1B71CAD80(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setOrderTypeIdentifier_];
}

void sub_1B71CADE8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF3F8();
  [v2 setBaseURL_];
}

id sub_1B71CAE44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updateSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71CAE8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fetchChangesSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71CAF1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71CAFA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pendingApplePayOrders];
  *a2 = result;
  return result;
}

id sub_1B71CAFF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orders];
  *a2 = result;
  return result;
}

id sub_1B71CB044@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderRegistrations];
  *a2 = result;
  return result;
}

id sub_1B71CB094@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 countOfOrdersWithEffectiveAutomaticUpdatesEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CB0DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 logEntries];
  *a2 = result;
  return result;
}

id sub_1B71CB12C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 countOfLogEntries];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CB174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71CB1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71CB250(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B77FFA18();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1B71CB2FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1B77FFA18();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71CB39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71CB458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

id sub_1B71CB53C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 publicTransactionObject];
  *a2 = result;
  return result;
}

id sub_1B71CB5B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

id sub_1B71CB5F4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

void sub_1B71CB640(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setMonthAndYear_];
}

uint64_t sub_1B71CB6A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1B71CB714@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderWebService];
  *a2 = result;
  return result;
}

void sub_1B71CB780(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setMessage_];
}

void sub_1B71CB7E8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setDate_];
}

id sub_1B71CB89C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 reconsentTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71CB8E4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 authTypeObjects];
  *a2 = result;
  return result;
}

id sub_1B71CB918@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 firstTransactionsRequestWindow];
  *a2 = result;
  return result;
}

id sub_1B71CB968@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxAgeTransactionsFirstRequest];
  *a2 = v4;
  return result;
}

id sub_1B71CB9B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxAgeTransactionsRefreshRequest];
  *a2 = v4;
  return result;
}

id sub_1B71CBA00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updateRequestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71CBAC8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 maximumNumberOfBackgroundRefreshes];
  *a2 = result;
  return result;
}

id sub_1B71CBB10@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 numberOfRemainingBackgroundRefreshes];
  *a2 = result;
  return result;
}

id sub_1B71CBBD8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundRefreshConfirmationWindow];
  *a2 = result;
  return result;
}

id sub_1B71CBC28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundRefreshConfirmationExpiryWindow];
  *a2 = result;
  return result;
}

id sub_1B71CBC78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 multipleConsentsEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CBCC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 problemReportingEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CBD08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 financialLabEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CBD50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 balanceWidgetEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CBD98@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 timestampSuitableForUserDisplay];
  *a2 = result;
  return result;
}

id sub_1B71CBDE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 piiRedactionConfiguration];
  *a2 = result;
  return result;
}

id sub_1B71CBE30@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 privacyLabelsValue];
  *a2 = result;
  return result;
}

id sub_1B71CBE78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 consentSyncingEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CBEC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 consentSyncingOutdatedTokenWaitTimeout];
  *a2 = v4;
  return result;
}

id sub_1B71CBF08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 personalizedInsightsEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CBF50@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 supportedNotificationEventTypesValue];
  *a2 = result;
  return result;
}

id sub_1B71CBF98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 termsAndConditionsObject];
  *a2 = result;
  return result;
}

id sub_1B71CBFE8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsTransactions];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CC030@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedInstitution.reconsentType.getter();
  *a1 = result;
  return result;
}

id sub_1B71CC070@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 authTypeObjects];
  *a2 = result;
  return result;
}

id sub_1B71CC0B8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 supportedNotificationEventTypesValue];
  *a2 = result;
  return result;
}

id sub_1B71CC0EC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 privacyLabelsValue];
  *a2 = result;
  return result;
}

void sub_1B71CC184(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF598();
  [v2 setCredentialData_];
}

id sub_1B71CC1E8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 credentialTypeValue];
  *a2 = result;
  return result;
}

id sub_1B71CC318@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderWebService];
  *a2 = result;
  return result;
}

id sub_1B71CC368@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderType];
  *a2 = result;
  return result;
}

void sub_1B71CC46C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setCreationDate_];
}

id sub_1B71CC4C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestAttemptCount];
  *a2 = result;
  return result;
}

id sub_1B71CC518@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 responseCount];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CC560(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Order.FulfillmentWindow(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B71CC690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Order.FulfillmentWindow(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

id sub_1B71CC7C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 content];
  *a2 = result;
  return result;
}

id sub_1B71CC810@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 requiresWallet];
  *a2 = result;
  return result;
}

void sub_1B71CC8DC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setNotificationIdentifier_];
}

void sub_1B71CC944(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setCreationDate_];
}

id sub_1B71CC9A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priority];
  *a2 = result;
  return result;
}

double sub_1B71CC9E8@<D0>(_OWORD *a1@<X8>)
{
  ManagedWalletMessage.fullyQualifiedOrderIdentifier.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

double sub_1B71CCA28@<D0>(uint64_t a1@<X8>)
{
  ManagedWalletMessage.messageType.getter(v5);
  v2 = v7;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_1B71CCA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 <= 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = *(a1 + *(a3 + 24));
    }

    v14 = v13 - 3;
    if (v12 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71CCB4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 3;
  }

  return result;
}

id sub_1B71CCD24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 refreshSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71CCDB4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 consentStatusValue];
  *a2 = result;
  return result;
}

id sub_1B71CCEF0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 ckSchemaVersion];
  *a2 = result;
  return result;
}

id sub_1B71CCF38@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedCloudConsent.consentStatus.getter(&v3);
  *a1 = v3;
  return result;
}

id sub_1B71CCF88@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 transactionCategoryValue];
  *a2 = result;
  return result;
}

void sub_1B71CCFD4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setUpdatedAt_];
}

id sub_1B71CD030@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 excludeFromSpendingSummary];
  *a2 = result;
  return result;
}

FinanceKit::ManagedUserTransactionInsight::TransactionCategory_optional sub_1B71CD078@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([*a1 transactionCategoryValue]).value;
  v4 = v5;
  if (v5 == 13)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_1B71CD0E8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setStoredArchiveDate_];
}

id sub_1B71CD144@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 storedShowsAsActive];
  *a2 = result;
  return result;
}

id sub_1B71CD18C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 classicOrder];
  *a2 = result;
  return result;
}

id sub_1B71CD1DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 extractedOrder];
  *a2 = result;
  return result;
}

id sub_1B71CD22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dashboardItemMonth];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CD27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71CD2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71CD358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B77FF988();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71CD410(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1B71CD538@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 statusDescription];
  *a2 = result;
  return result;
}

id sub_1B71CD588@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notes];
  *a2 = result;
  return result;
}

void sub_1B71CD7E0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setReturnIdentifier_];
}

id sub_1B71CD844@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CD88C@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedOrderReturn.status.getter();
  *a1 = result;
  return result;
}

char *sub_1B71CD8BC@<X0>(char **a1@<X8>)
{
  result = ManagedOrderReturn.lineItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71CD8EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10FinanceKit26FinanciaDataConnectionInfo_bundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B71CD948()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B71CD9CC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B71CDA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InternalAccount();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71CDB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InternalAccount();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71CDBF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71CDC34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71CDC7C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71CDCC0()
{
  MEMORY[0x1B8CA7B50](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71CDCF8()
{
  v1 = sub_1B78000B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B71CDDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71CDE84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1B71CDF28(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1B78301C0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  return result;
}

uint64_t sub_1B71CDF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1B71CE024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B71CE0F0()
{
  MEMORY[0x1B8CA7B50](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71CE128()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71CE170()
{
  v1 = sub_1B77FF4F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B71CE260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D08);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71CE2D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D08);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B71CE374()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71CE3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RawBankConnectData.Transaction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71CE478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RawBankConnectData.Transaction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71CE534(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RawBankConnectData.Account(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71CE5E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RawBankConnectData.Account(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71CE684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F40);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71CE6FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F40);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B71CE78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71CE7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1B71CE86C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setTrackedOrderIdentifier_];
}

id sub_1B71CE8D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderContent];
  *a2 = result;
  return result;
}

void sub_1B71CE924(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setOrderContentModificationDate_];
}

id sub_1B71CE980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dashboardItem];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CE9D0@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedExtractedOrder.mailItems.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71CEA00@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedExtractedOrder.mailItemOrderDetails.getter();
  *a1 = result;
  return result;
}

id sub_1B71CEA30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMarkedAsComplete];
  *a2 = result;
  return result;
}

id sub_1B71CEAB8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 notificationsEnabled];
  *a2 = result;
  return result;
}

id sub_1B71CECC0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 businessConnectBrandObject];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CED10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71CEDE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1B71CEEB0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF3F8();
  [v2 setReturnPolicyURL_];
}

uint64_t sub_1B71CEFAC@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedOrderReturnInfo.displayCountdown.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B71CF000()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1B71CF114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderDateYear];
  *a2 = result;
  return result;
}

id sub_1B71CF164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderDateMonth];
  *a2 = result;
  return result;
}

id sub_1B71CF1B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderDateDay];
  *a2 = result;
  return result;
}

id sub_1B71CF204@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderTimeHours];
  *a2 = result;
  return result;
}

id sub_1B71CF254@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderTimeMinutes];
  *a2 = result;
  return result;
}

id sub_1B71CF2A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 orderTimeSeconds];
  *a2 = result;
  return result;
}

double sub_1B71CF2F4@<D0>(uint64_t a1@<X8>)
{
  ManagedExtractedOrderContent.orderDate.getter(v5);
  v2 = v7;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  return result;
}

void sub_1B71CF340(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v3[2] = *(a1 + 32);
  v4 = v1;
  ManagedExtractedOrderContent.orderDate.setter(v3);
}

void sub_1B71CF38C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setOrderUpdateDate_];
}

uint64_t sub_1B71CF494@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedExtractedOrderContent.shippingFulfillments.getter();
  *a1 = result;
  return result;
}

id sub_1B71CF584@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 customerBillingAddress];
  *a2 = result;
  return result;
}

id sub_1B71CF5D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 paymentTotalAmount];
  *a2 = result;
  return result;
}

double sub_1B71CF664@<D0>(uint64_t a1@<X8>)
{
  ManagedExtractedOrderContent.paymentTotal.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1B71CF6AC@<X0>(uint64_t *a1@<X8>)
{
  result = ManagedExtractedOrderContent.paymentTransactions.getter();
  *a1 = result;
  return result;
}

id sub_1B71CF6DC@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedExtractedOrderContent.orderStatus.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B71CF7AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B71CF7FC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

double sub_1B71CF8E0@<D0>(uint64_t a1@<X8>)
{
  ManagedOrderPaymentTransaction.amount.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1B71CF928(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  sub_1B7215720(v4, v3);
  ManagedOrderPaymentTransaction.amount.setter(a1);
}

id sub_1B71CF9F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 paymentMethodDisplayName];
  *a2 = result;
  return result;
}

void sub_1B71CFA4C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setCreatedAt_];
}

id sub_1B71CFAA8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

uint64_t sub_1B71CFAF0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B71CFB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7584EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B71CFC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1B71CFD70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71CFEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B71CFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B71CFFA0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_1B71D0130(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71D02C0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_1B71D0450(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71D05E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B71D06B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B71D0780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B71D0888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B71D099C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B77FF4F8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71D0A54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D0AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71D0B70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B71D0C0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[17];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1B71D0D50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[17];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1B71D0E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 104);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71D0F5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 104);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71D1078(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1B71D11E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 refreshSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71D125C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 consentStatusValue];
  *a2 = result;
  return result;
}

id sub_1B71D1338@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundRefreshConfirmationSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71D1380@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundRefreshConfirmationNotificationSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71D13C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 backgroundRefreshConfirmationPromptDismissalSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71D1450@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 institutionObject];
  *a2 = result;
  return result;
}

id sub_1B71D14A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accountObjects];
  *a2 = result;
  return result;
}

id sub_1B71D151C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 notificationSubscriptionObject];
  *a2 = result;
  return result;
}

id sub_1B71D156C@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedConsent.consentStatus.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B71D15BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B71D16B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

FinanceKit::CascadeExtractedOrder::OrderEmail::EmailType_optional sub_1B71D1A48@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = CascadeExtractedOrder.OrderEmail.EmailType.init(rawValue:)([*a1 emailTypeValue]).value;
  v4 = v5;
  if (v5 == 9)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

FinanceKit::CascadeExtractedOrder::ShippingFulfillment::Status_optional sub_1B71D1B2C@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)([*a1 shippingDetailsShippingStatusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id sub_1B71D1C10@<X0>(_BYTE *a1@<X8>)
{
  result = ManagedCascadeExtractedOrderEmail.orderContentType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1B71D1CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71D1DAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B71D1E84(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF598();
  [v2 setData_];
}

uint64_t sub_1B71D1F04()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71D1F50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71D1F88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71D1FD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 253)
  {
    v12 = *(a1 + a3[5] + 1);
    if (v12 <= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a1 + a3[5] + 1);
    }

    v14 = v13 - 2;
    if (v12 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v9 = *(v16 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1B71D2168(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 253)
  {
    *(a1 + a4[5] + 1) = a2 + 2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B71D22F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71D233C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71D2378()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71D23B4()
{
  v1 = type metadata accessor for MapsTransactionInsight(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_1B77FF988();
  v37 = *(v6 - 8);
  v38 = v6;
  v34 = *(v37 + 8);
  v34(v0 + v3);
  v7 = v0 + v3 + *(v1 + 24);
  v8 = type metadata accessor for MapsMerchant();
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v36 = (v2 + 16) & ~v2;
    v32 = v2;
    v33 = v0;

    v9 = v8[9];
    v10 = sub_1B77FF4F8();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (!v12(v7 + v9, 1, v10))
    {
      (*(v11 + 8))(v7 + v9, v10);
    }

    v13 = v8[10];
    if (!v12(v7 + v13, 1, v10))
    {
      (*(v11 + 8))(v7 + v13, v10);
    }

    v14 = (v7 + v8[14]);
    v15 = v14[1];
    if (v15 >> 60 != 15)
    {
      sub_1B720A388(*v14, v15);
    }

    v16 = v8[15];
    if (!v12(v7 + v16, 1, v10))
    {
      (*(v11 + 8))(v7 + v16, v10);
    }

    v17 = v8[16];
    v0 = v33;
    if (!(*(v37 + 48))(v7 + v17, 1, v38))
    {
      (v34)(v7 + v17, v38);
    }

    v2 = v32;
    v3 = v36;
  }

  v18 = v5 + *(v1 + 28);
  v19 = type metadata accessor for MapsBrand();
  if (!(*(*(v19 - 1) + 48))(v18, 1, v19))
  {
    v35 = v4;

    v20 = v19[8];
    v21 = sub_1B77FF4F8();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    if (!v23(v18 + v20, 1, v21))
    {
      (*(v22 + 8))(v18 + v20, v21);
    }

    v24 = v19[9];
    if (!v23(v18 + v24, 1, v21))
    {
      (*(v22 + 8))(v18 + v24, v21);
    }

    v25 = (v18 + v19[13]);
    v26 = v25[1];
    if (v26 >> 60 != 15)
    {
      sub_1B720A388(*v25, v26);
    }

    v27 = v19[14];
    if (!v23(v18 + v27, 1, v21))
    {
      (*(v22 + 8))(v18 + v27, v21);
    }

    v28 = v19[15];
    if (!(*(v37 + 48))(v18 + v28, 1, v38))
    {
      (v34)(v18 + v28, v38);
    }

    v29 = v19[16];
    v30 = v23(v18 + v29, 1, v21);
    v4 = v35;
    if (!v30)
    {
      (*(v22 + 8))(v18 + v29, v21);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B71D28E8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1B77FF988();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for ExtractedOrder.Merchant(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_1B71D2A60(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1B77FF988();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ExtractedOrder.Merchant(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71D2BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71D2C94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D2D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71D2E0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D2EBC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B77FF4F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1B71D2F60(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D3000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71D30B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71D3170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71D3228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71D32E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1B71D331C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 amount];
  *a2 = result;
  return result;
}

id sub_1B71D342C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 paymentMethodIsApplePay];
  *a2 = result;
  return result;
}

id sub_1B71D34B4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

id sub_1B71D3540@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MapsMerchant() + 80));
  *a2 = v3;

  return v3;
}

uint64_t sub_1B71D358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 64);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B71D36D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71D3840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B77FF4F8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B71D38F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1B71D3A9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 paymentMethodIsApplePay];
  *a2 = result;
  return result;
}

id sub_1B71D3B24@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

uint64_t sub_1B71D3B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71D3C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B71D3CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71D3D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B71D3DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B71D3EF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B71D4048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BankConnectConsent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B71D4158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BankConnectConsent();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1B77FF988();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B71D4264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BankConnectConsent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B71D4320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BankConnectConsent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B71D43D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B71D4410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 246)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xA)
    {
      return v10 - 9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71D4538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 246)
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

id sub_1B71D4664@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updateSequenceNumber];
  *a2 = result;
  return result;
}

id sub_1B71D46D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 usageInformation];
  *a2 = result;
  return result;
}

id sub_1B71D4728@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 usageInformationPackage];
  *a2 = result;
  return result;
}

void sub_1B71D4800(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();
  [v2 setIdentifier_];
}

uint64_t sub_1B71D4864()
{
  v1 = type metadata accessor for BankConnectConsent();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v12 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  v5 = sub_1B77FFA18();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[6];
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v9(v0 + v3 + v1[7], v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v3 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  v9(v4 + v1[12], v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v12, v2 | 7);
}

uint64_t sub_1B71D4A48()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71D4A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B71D4AD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71D4B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B71D4C94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9923F8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B71D4DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B71D4E94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B77FF988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = a2;
  }

  return result;
}

uint64_t sub_1B71D4F64()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

FinanceKit::ManagedExtractedOrderShippingFulfillment::Status_optional sub_1B71D4FC0@<W0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ManagedExtractedOrderShippingFulfillment.Status.init(rawValue:)([*a1 statusValue]).value;
  v4 = v5;
  if (v5 == 10)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id sub_1B71D50E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shippingDateYear];
  *a2 = result;
  return result;
}

id sub_1B71D5134@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shippingDateMonth];
  *a2 = result;
  return result;
}

id sub_1B71D5184@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shippingDateDay];
  *a2 = result;
  return result;
}

id sub_1B71D51D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shippingTimeHours];
  *a2 = result;
  return result;
}

id sub_1B71D5224@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shippingTimeMinutes];
  *a2 = result;
  return result;
}

id sub_1B71D5274@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shippingTimeSeconds];
  *a2 = result;
  return result;
}

id sub_1B71D52F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryStartDateYear];
  *a2 = result;
  return result;
}

id sub_1B71D5344@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryStartDateMonth];
  *a2 = result;
  return result;
}

id sub_1B71D5394@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryStartDateDay];
  *a2 = result;
  return result;
}

id sub_1B71D53E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryStartTimeHours];
  *a2 = result;
  return result;
}

id sub_1B71D5434@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryStartTimeMinutes];
  *a2 = result;
  return result;
}

id sub_1B71D5484@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryStartTimeSeconds];
  *a2 = result;
  return result;
}

id sub_1B71D54D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryEndDateYear];
  *a2 = result;
  return result;
}

id sub_1B71D5524@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryEndDateMonth];
  *a2 = result;
  return result;
}

id sub_1B71D5574@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryEndDateDay];
  *a2 = result;
  return result;
}

id sub_1B71D55C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryEndTimeHours];
  *a2 = result;
  return result;
}

id sub_1B71D5614@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryEndTimeMinutes];
  *a2 = result;
  return result;
}

id sub_1B71D5664@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDeliveryEndTimeSeconds];
  *a2 = result;
  return result;
}

__n128 sub_1B71D56B4@<Q0>(uint64_t a1@<X8>)
{
  ManagedExtractedOrderShippingFulfillment.estimatedDeliveryDate.getter(v5);
  v2 = v6[0];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 89) = *(v6 + 9);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

id sub_1B71D572C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryDateYear];
  *a2 = result;
  return result;
}

id sub_1B71D577C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryDateMonth];
  *a2 = result;
  return result;
}

id sub_1B71D57CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryDateDay];
  *a2 = result;
  return result;
}

id sub_1B71D581C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryTimeHours];
  *a2 = result;
  return result;
}

id sub_1B71D586C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryTimeMinutes];
  *a2 = result;
  return result;
}

id sub_1B71D58BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deliveryTimeSeconds];
  *a2 = result;
  return result;
}

id sub_1B71D59FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipientAddress];
  *a2 = result;
  return result;
}

id sub_1B71D5A54@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 positionIndex];
  *a2 = result;
  return result;
}

uint64_t sub_1B71D5AD4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_1B71D5C64(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B71D5DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B78000B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B71D5E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B78000B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1B71D5ED4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF9B8();
  [v2 setId_];
}

id sub_1B71D5FC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 extensionPayload];
  *a2 = result;
  return result;
}

id sub_1B71D6040@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 institutionObject];
  *a2 = result;
  return result;
}

id sub_1B71D6090@<X0>(_WORD *a1@<X8>)
{
  result = ManagedAuthorizationSession.authorizationType.getter();
  *a1 = result;
  return result;
}

id sub_1B71D60D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapsInsightObject];
  *a2 = result;
  return result;
}

id sub_1B71D6120@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applePayInsightObject];
  *a2 = result;
  return result;
}

id sub_1B71D6170@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bankMerchantInformationInsightObject];
  *a2 = result;
  return result;
}

id sub_1B71D61C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contactInsightObject];
  *a2 = result;
  return result;
}

id sub_1B71D6210@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transactionIconObject];
  *a2 = result;
  return result;
}

id sub_1B71D6260@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userInsightObject];
  *a2 = result;
  return result;
}

id sub_1B71D62B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 finHealthInsightObject];
  *a2 = result;
  return result;
}

id sub_1B71D6300@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 foundInInsightObject];
  *a2 = result;
  return result;
}

uint64_t sub_1B71D6350(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF988();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71D63FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF988();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D64A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B77FF4F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B71D654C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B77FF4F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B71D65F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B77FFA18();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1B77FF988();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1B71D6774(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B77FFA18();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_1B71D694C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setLastRequestDate_];
}

uint64_t sub_1B71D6A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7623174(a1, a2);
  *a3 = result & 1;
  return result;
}

unint64_t sub_1B71D6A48()
{
  v1 = 0x65756C615677656ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1B71D6AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7636118(a1, a2);
  *a3 = result;
  return result;
}

id sub_1B71D6C2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 endsAfterLastPayment];
  *a2 = result;
  return result;
}

uint64_t sub_1B71D6C74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for RawMerchant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[11];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = sub_1B77FF4F8();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[15];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[23];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[24];

  return v20(v21, a2, v19);
}

uint64_t sub_1B71D6EE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for RawMerchant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1B77FF988();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[11];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_1B77FF4F8();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[15];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A4B8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[23];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[24];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1B71D718C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B71D71CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B71D72B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B71D7344()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B71D7384()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71D73DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B71D7414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7800DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B71D74D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B7800DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}