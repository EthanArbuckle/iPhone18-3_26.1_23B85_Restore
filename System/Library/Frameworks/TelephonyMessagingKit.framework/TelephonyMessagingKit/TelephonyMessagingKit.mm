uint64_t sub_1E4AD49D0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E4AD4A14()
{
  if (*v0)
  {
    result = 0x52724F6568636163;
  }

  else
  {
    result = 0x6C6E4F6568636163;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AD4A88(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4AD4B44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD4C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4AD4CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4AD4D80(uint64_t a1, uint64_t a2)
{
  v4 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD4DEC(uint64_t a1, uint64_t a2)
{
  v4 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_1E4AD4E84@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1E4AD4E98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD4F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD5004(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4BEFABC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD50B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4BEFABC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD5154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD51CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD5288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F90, &qword_1E4BFDD28);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E4AD53C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F90, &qword_1E4BFDD28);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD5500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFA6C();
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

uint64_t sub_1E4AD55B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFA6C();
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

uint64_t sub_1E4AD5670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFA6C();
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

uint64_t sub_1E4AD573C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFA6C();
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

uint64_t sub_1E4AD57F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSService.Business.Media(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_1E4AD58B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSService.Business.Media(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E4AD5968(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E4AD5A30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RCSMessage.Content(0);
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
      v13 = sub_1E4BEFABC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E4AD5C0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for RCSMessage.Content(0);
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
      v13 = sub_1E4BEFABC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD5D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSFileTransferMetadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E4AD5E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RCSFileTransferMetadata();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E4AD5F3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1E4AD6070(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD61A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E4BEFA6C();
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
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_1E4BEFABC();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1E4AD6338(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E4BEFA6C();
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

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_1E4BEFABC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4AD64D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD650C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E4AD651C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E4AD652C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD6564()
{
  if (*(v0 + 80) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1E4AD65F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4AD6638()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD6670()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD66C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD66F8()
{
  v1 = (type metadata accessor for MMSMessage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 56);

  v11 = v1[9];
  v12 = sub_1E4BEFABC();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4AD6808()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD6840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD68AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD6B48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD6B84(uint64_t a1, uint64_t a2)
{
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD6BF0(uint64_t a1, uint64_t a2)
{
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD6C78()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD6CB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4AD6CF0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4AD6D28()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 6);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4AD6DF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD6E2C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v3 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E4AD6EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFA6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E4AD6FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFA6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1E4AD7058(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD7114(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD71C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E4AD728C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD733C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFABC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4AD7470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFABC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4AD75A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD7650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD76F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 28)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RCSService.Business.Card.Content(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 36)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1E4AD781C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RCSService.Business.Card.Content(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 36)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD7948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E4AD7A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4AD7AE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E4BEFA6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1E4AD7D08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E4BEFA6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11] + 8) = a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4AD7F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4AD7FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4AD80A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1E4B65EDC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E4AD80E0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E4AD8130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSMessage(0);
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

uint64_t sub_1E4AD81EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSMessage(0);
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

unint64_t sub_1E4AD82A4()
{
  v1 = 0x6E614870756F7267;
  if (*v0 != 1)
  {
    v1 = 0x7069636974726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4AD8314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B6C690(a1, a2);
  *a3 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21TelephonyMessagingKit18AuditTokenProtocol_pxs5Error_pRi_zRi0_zlyq_Iseghnrzo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4AD8390()
{
  v2 = *(v0 + 6);
  v1 = *(v0 + 7);
  v3 = (type metadata accessor for XPCPeerMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 9);

  __swift_destroy_boxed_opaque_existential_1(&v0[v5]);
  __swift_destroy_boxed_opaque_existential_1(&v0[v5 + 40]);
  (*(*(v2 - 8) + 8))(&v0[v5 + v3[12]], v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1E4AD8498()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD84D0()
{
  v2 = *(v0 + 6);
  v1 = *(v0 + 7);
  v3 = (type metadata accessor for XPCPeerMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(*v3 + 64);
  v7 = sub_1E4BEFD3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v0 + 2);
  swift_unknownObjectRelease();
  v14 = *(v0 + 9);

  __swift_destroy_boxed_opaque_existential_1(&v0[v5]);
  __swift_destroy_boxed_opaque_existential_1(&v0[v5 + 40]);
  (*(*(v2 - 8) + 8))(&v0[v5 + v3[12]], v2);
  (*(v8 + 8))(&v0[v10], v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v11, v12 | 7);
}

uint64_t sub_1E4AD8674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD86E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD8750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD87BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD8830()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD8868()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4AD88A8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD88E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4AD8960()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD8998()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4AD89D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD8A08()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E4AD8A50()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E4AD8A98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4AD8B2C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
  v3 = sub_1E4BF01CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1E4AD8C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4AD8C98()
{
  swift_getWitnessTable();

  return sub_1E4BF028C();
}

uint64_t sub_1E4AD8D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4AD8DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD8E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD8EAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD8EE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFAFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = sub_1E4BF024C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4AD9298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4BEFAFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = *(a4 + 16);
    v13 = sub_1E4BF024C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 28);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1E4AD9398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD9454(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD9504(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RCSService.RemoteCapabilities();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E4AD95A8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for RCSService.RemoteCapabilities();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD9648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
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

uint64_t sub_1E4AD9708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
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

uint64_t sub_1E4AD97C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = (type metadata accessor for XPCPeerMessage() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = (v0 + v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v8 + 5);
  (*(*(v2 - 8) + 8))(v8 + v3[12], v2);
  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v4 | 7);
}

uint64_t sub_1E4AD98D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD9918(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4BEFABC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD99C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4BEFABC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD9A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD9ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD9B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
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

uint64_t sub_1E4AD9C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
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

uint64_t sub_1E4AD9D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD9D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD9DF0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD9E28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD9E60()
{
  v1 = (type metadata accessor for SMSMessage() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 40);

  v8 = v1[10];
  v9 = sub_1E4BEFABC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4AD9F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD9FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADA0C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4ADA100()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4ADA13C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[10];

  if (v0[12])
  {

    v5 = v0[14];
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1E4ADA1A0()
{
  v1 = *(v0 + 16);

  sub_1E4ADD764(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1E4ADA1F0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E4ADA240()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E4ADA294()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E4ADA2EC()
{
  v1 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v80 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = type metadata accessor for RCSMessage(0);
  v8 = (v0 + v3 + v7[6]);
  type metadata accessor for RCSMessage.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v23 = *(v8 + 1);
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_33;
      }

      v17 = *(v8 + 3);
      goto LABEL_32;
    }

    v50 = sub_1E4BEFA6C();
    v74 = *(*(v50 - 8) + 8);
    v76 = v50;
    v74(v8);
    v51 = type metadata accessor for RCSFileTransferMetadata();
    v52 = *&v8[v51[5] + 8];

    v53 = v51[7];
    v54 = sub_1E4BEFB4C();
    v78 = *(v54 - 8);
    v69 = *(v78 + 48);
    if (!v69(&v8[v53], 1, v54))
    {
      (*(v78 + 8))(&v8[v53], v54);
    }

    v70 = v54;
    v55 = v51[8];
    v56 = sub_1E4BEFABC();
    v57 = (*(v56 - 8) + 8);
    v67 = *v57;
    (*v57)(&v8[v55], v56);
    v58 = &v8[*(type metadata accessor for RCSMessage.FileTransfer(0) + 20)];
    v3 = (v2 + 24) & ~v2;
    if (!(*(*(v51 - 1) + 48))(v58, 1, v51))
    {
      v64 = v56;
      (v74)(v58, v76);
      v59 = *&v58[v51[5] + 8];

      v60 = v51[7];
      if (!v69(&v58[v60], 1, v70))
      {
        (*(v78 + 8))(&v58[v60], v70);
      }

      v67(&v58[v51[8]], v64);
      v3 = (v2 + 24) & ~v2;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v10 = type metadata accessor for RCSMessage.ComposingIndicator(0);
        v11 = *(v10 + 20);
        v12 = sub_1E4BEFABC();
        v13 = *(v12 - 8);
        if (!(*(v13 + 48))(&v8[v11], 1, v12))
        {
          (*(v13 + 8))(&v8[v11], v12);
        }

        v14 = *(v10 + 24);
        v15 = sub_1E4BEFB4C();
        v16 = *(v15 - 8);
        v3 = (v2 + 24) & ~v2;
        if (!(*(v16 + 48))(&v8[v14], 1, v15))
        {
          (*(v16 + 8))(&v8[v14], v15);
        }

        goto LABEL_33;
      }

      v24 = *(v8 + 2);
LABEL_32:

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v25 = type metadata accessor for RCSService.Business.Card(0);
      v26 = *(v25 + 28);
      v27 = sub_1E4BEFA6C();
      v77 = *(v27 - 8);
      v79 = v27;
      v75 = *(v77 + 48);
      if (!v75(&v8[v26], 1))
      {
        (*(v77 + 8))(&v8[v26], v79);
      }

      v28 = &v8[*(v25 + 36)];
      v29 = type metadata accessor for RCSService.Business.Card.Media(0);
      if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
      {
        v63 = *(v77 + 8);
        v63(v28, v79);
        v71 = v29[5];
        v30 = sub_1E4BEFB4C();
        v31 = *(v30 - 8);
        v73 = v30;
        v68 = *(v31 + 48);
        if (!v68(&v28[v71], 1))
        {
          (*(v31 + 8))(&v28[v71], v73);
        }

        v65 = v31;
        v32 = v29[6];
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
        v66 = *(v33 - 8);
        v72 = v33;
        v62 = *(v66 + 8);
        v62(&v28[v32]);
        v34 = v29[7];
        if (!(v75)(&v28[v34], 1, v79))
        {
          v63(&v28[v34], v79);
        }

        v35 = v29[8];
        if (!(v68)(&v28[v35], 1, v73))
        {
          (*(v65 + 8))(&v28[v35], v73);
        }

        v36 = v29[9];
        if (!(*(v66 + 48))(&v28[v36], 1, v72))
        {
          (v62)(&v28[v36], v72);
        }

        v37 = *&v28[v29[11] + 8];
      }

      v38 = type metadata accessor for RCSService.Business.Card.Content(0);
      v39 = *&v28[v38[5] + 8];

      v40 = *&v28[v38[6] + 8];

      v41 = *&v28[v38[7]];
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v18 = type metadata accessor for RCSService.Business.CardCarousel(0);
      v19 = *(v18 + 28);
      v20 = sub_1E4BEFA6C();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(&v8[v19], 1, v20))
      {
        (*(v21 + 8))(&v8[v19], v20);
      }

      v22 = *&v8[*(v18 + 32)];

      v3 = (v2 + 24) & ~v2;
    }
  }

LABEL_33:
  v42 = v5 + v7[7];
  sub_1E4ADD764(*v42, *(v42 + 8), *(v42 + 16), *(v42 + 24), *(v42 + 32));
  v43 = v7[8];
  v44 = sub_1E4BEFABC();
  (*(*(v44 - 8) + 8))(v5 + v43, v44);
  v45 = (v5 + *(v1 + 20));
  v46 = v45[1];
  if (v46 >> 60 != 15)
  {
    sub_1E4AE4BE8(*v45, v46);
  }

  v47 = (v80 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v5 + *(v1 + 28) + 8);

  v49 = *(v0 + v47 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v47 + 16, v2 | 7);
}

uint64_t sub_1E4ADAB80()
{
  v1 = *(v0 + 16);

  sub_1E4ADD764(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1E4ADABD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSMessage(0);
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

uint64_t sub_1E4ADAC94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSMessage(0);
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

uint64_t sub_1E4ADAD4C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 32)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E4ADAE00(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4ADAFC8()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E4ADB05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4ADB118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s17FileUploadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4ADB1D0(uint64_t a1, uint64_t a2)
{
  v4 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4ADB23C(uint64_t a1, uint64_t a2)
{
  v4 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADB2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4ADB318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADB388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4ADB3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADB514(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t sub_1E4ADB544(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t CellularServiceState.label.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static CellularServiceState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC18RemoteCapabilitiesV12AvailabilityO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADB63C()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADB680()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1E4ADB6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4ADB788(uint64_t a1)
{
  v2 = sub_1E4ADBE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADB7C4(uint64_t a1)
{
  v2 = sub_1E4ADBE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellularServiceState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92450, &qword_1E4BFA020);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADBE44();
  sub_1E4BF0ACC();
  v16 = v9;
  v15 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v14 = 1;
    sub_1E4BF08FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CellularServiceState.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x1E69210C0](*v0);

  return sub_1E4BEFF4C();
}

uint64_t CellularServiceState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t CellularServiceState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92468, &qword_1E4BFA028);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADBE44();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v18 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v11 = v19;
    v17 = 1;
    v13 = sub_1E4BF083C();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4ADBC58()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADBCBC()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x1E69210C0](*v0);

  return sub_1E4BEFF4C();
}

uint64_t sub_1E4ADBD10()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADBD70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
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

unint64_t sub_1E4ADBE44()
{
  result = qword_1ECF92458;
  if (!qword_1ECF92458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92458);
  }

  return result;
}

unint64_t sub_1E4ADBE98()
{
  result = qword_1ECF92460;
  if (!qword_1ECF92460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92460);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1E4ADBF38()
{
  result = qword_1ECF92470;
  if (!qword_1ECF92470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92470);
  }

  return result;
}

unint64_t sub_1E4ADBF90()
{
  result = qword_1ECF92478;
  if (!qword_1ECF92478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92478);
  }

  return result;
}

unint64_t sub_1E4ADBFE8()
{
  result = qword_1ECF92480;
  if (!qword_1ECF92480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92480);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4ADC050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4ADC098(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E4ADC0F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4ADC118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4ADC160(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4ADC180(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CellularServiceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CellularServiceState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4ADC338()
{
  result = qword_1ECF924A0;
  if (!qword_1ECF924A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF924A0);
  }

  return result;
}

uint64_t sub_1E4ADC394(uint64_t a1, id *a2)
{
  result = sub_1E4BEFE8C();
  *a2 = 0;
  return result;
}

uint64_t sub_1E4ADC40C(uint64_t a1, id *a2)
{
  v3 = sub_1E4BEFE9C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E4ADC48C@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4BEFEAC();
  v2 = sub_1E4BEFE7C();

  *a1 = v2;
  return result;
}

uint64_t sub_1E4ADC4D0()
{
  v1 = *v0;
  v2 = sub_1E4BEFEAC();
  v3 = MEMORY[0x1E6920620](v2);

  return v3;
}

uint64_t sub_1E4ADC50C()
{
  v1 = *v0;
  sub_1E4BEFEAC();
  sub_1E4BEFF4C();
}

uint64_t sub_1E4ADC560()
{
  v1 = *v0;
  sub_1E4BEFEAC();
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  v2 = sub_1E4BF0A9C();

  return v2;
}

uint64_t sub_1E4ADC5D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1E4BEFEAC();
  v6 = v5;
  if (v4 == sub_1E4BEFEAC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();
  }

  return v9 & 1;
}

uint64_t sub_1E4ADC65C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4BEFE7C();

  *a2 = v5;
  return result;
}

uint64_t sub_1E4ADC6A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E4BEFEAC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1E4ADC6D0(uint64_t a1)
{
  v2 = sub_1E4ADC7D0(&qword_1ECF924D0);
  v3 = sub_1E4ADC7D0(&qword_1ECF924D8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4ADC7D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4ADC84C()
{
  result = qword_1ECF924C0;
  if (!qword_1ECF924C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF924C0);
  }

  return result;
}

unint64_t sub_1E4ADC8A4()
{
  result = qword_1ECF924C8;
  if (!qword_1ECF924C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF924C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MMSMessageID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MMSMessageID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_1E4ADC974(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1E4ADC9CC(uint64_t a1)
{
  v2 = sub_1E4ADCF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADCA08(uint64_t a1)
{
  v2 = sub_1E4ADCF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADCA44(uint64_t a1)
{
  v2 = sub_1E4ADCF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADCA80(uint64_t a1)
{
  v2 = sub_1E4ADCF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADCABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6E4F6568636163 && a2 == 0xE900000000000079;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x52724F6568636163 && a2 == 0xED000065746F6D65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4ADCBA8(uint64_t a1)
{
  v2 = sub_1E4ADCED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADCBE4(uint64_t a1)
{
  v2 = sub_1E4ADCED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.RemoteCapabilitiesRequest.CachePolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF924E8, &qword_1E4BFA510);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF924F0, &qword_1E4BFA518);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF924F8, &qword_1E4BFA520);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADCED0();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4ADCF24();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4ADCF78();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E4ADCED0()
{
  result = qword_1ECF92500;
  if (!qword_1ECF92500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92500);
  }

  return result;
}

unint64_t sub_1E4ADCF24()
{
  result = qword_1ECF92508;
  if (!qword_1ECF92508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92508);
  }

  return result;
}

unint64_t sub_1E4ADCF78()
{
  result = qword_1ECF92510;
  if (!qword_1ECF92510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92510);
  }

  return result;
}

uint64_t RCSService.RemoteCapabilitiesRequest.CachePolicy.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92518, &qword_1E4BFA528);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92520, &qword_1E4BFA530);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92528, &qword_1E4BFA538);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADCED0();
  v17 = v37;
  sub_1E4BF0ABC();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1E4BF088C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1E4BF06EC();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v25 = &type metadata for RCSService.RemoteCapabilitiesRequest.CachePolicy;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1E4ADCF24();
    sub_1E4BF07EC();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1E4ADCF78();
    sub_1E4BF07EC();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1E4ADD420()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD454()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD488()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD4BC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD4F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 40;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD524()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD558()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD58C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD5C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD5F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E4ADD628()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t RCSService.RemoteCapabilitiesRequest.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t sub_1E4ADD6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

__n128 RCSService.RemoteCapabilitiesRequest.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_1E4ADD764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

__n128 RCSService.RemoteCapabilitiesRequest.init(cellularServiceID:handle:cachePolicy:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  v5 = *a3;
  *a4 = *a1;
  result = *a2;
  v7 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v7;
  *(a4 + 40) = v4;
  *(a4 + 41) = v5;
  return result;
}

uint64_t sub_1E4ADD84C(uint64_t a1)
{
  v2 = sub_1E4ADDE3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADD888(uint64_t a1)
{
  v2 = sub_1E4ADDE3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADD8C4()
{
  if (*v0)
  {
    result = 0x616C696176616E75;
  }

  else
  {
    result = 0x6C62616C69617661;
  }

  *v0;
  return result;
}

uint64_t sub_1E4ADD90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4ADD9F4(uint64_t a1)
{
  v2 = sub_1E4ADDD94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADDA30(uint64_t a1)
{
  v2 = sub_1E4ADDD94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADDA6C(uint64_t a1)
{
  v2 = sub_1E4ADDDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADDAA8(uint64_t a1)
{
  v2 = sub_1E4ADDDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.RemoteCapabilities.Availability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92538, &qword_1E4BFA548);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92540, &qword_1E4BFA550);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92548, &qword_1E4BFA558);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADDD94();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4ADDDE8();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4ADDE3C();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E4ADDD94()
{
  result = qword_1ECF92550;
  if (!qword_1ECF92550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92550);
  }

  return result;
}

unint64_t sub_1E4ADDDE8()
{
  result = qword_1ECF92558;
  if (!qword_1ECF92558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92558);
  }

  return result;
}

unint64_t sub_1E4ADDE3C()
{
  result = qword_1ECF92560;
  if (!qword_1ECF92560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92560);
  }

  return result;
}

uint64_t RCSService.RemoteCapabilities.Availability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92568, &qword_1E4BFA560);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92570, &qword_1E4BFA568);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92578, &unk_1E4BFA570);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADDD94();
  v17 = v37;
  sub_1E4BF0ABC();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1E4BF088C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1E4BF06EC();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v25 = &type metadata for RCSService.RemoteCapabilities.Availability;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1E4ADDDE8();
    sub_1E4BF07EC();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1E4ADDE3C();
    sub_1E4BF07EC();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t RCSService.RemoteCapabilities.validUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSService.RemoteCapabilities() + 36);

  return sub_1E4ADE3FC(v3, a1);
}

uint64_t type metadata accessor for RCSService.RemoteCapabilities()
{
  result = qword_1ECF92608;
  if (!qword_1ECF92608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4ADE3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.RemoteCapabilities.availability.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.RemoteCapabilities();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RCSService.RemoteCapabilities.init(alternativeHandles:supportsChat:supportsFileTransfer:supportsGeolocation:isBusinessHandle:validUntil:availability:supportsEndToEndEncryption:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 9) = a3;
  *(a8 + 10) = a4;
  *(a8 + 11) = a5;
  v11 = type metadata accessor for RCSService.RemoteCapabilities();
  result = sub_1E4ADE508(a6, a8 + *(v11 + 36));
  *(a8 + *(v11 + 40)) = v10;
  return result;
}

uint64_t sub_1E4ADE508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4ADE57C()
{
  v1 = *v0;
  v2 = 0x7374726F70707573;
  v3 = 0x746E5564696C6176;
  if (v1 != 5)
  {
    v3 = 0x6962616C69617661;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E4ADE678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AE0788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4ADE6AC(uint64_t a1)
{
  v2 = sub_1E4ADF8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADE6E8(uint64_t a1)
{
  v2 = sub_1E4ADF8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.RemoteCapabilities.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92588, &qword_1E4BFA580);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADF8C0();
  sub_1E4BF0ACC();
  v19 = *v3;
  HIBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92598, &qword_1E4BFA588);
  sub_1E4ADFA04(&qword_1ECF925A0, sub_1E4ADF95C);
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 8);
    LOBYTE(v19) = 1;
    sub_1E4BF090C();
    v12 = *(v3 + 9);
    LOBYTE(v19) = 2;
    sub_1E4BF090C();
    v13 = *(v3 + 10);
    LOBYTE(v19) = 3;
    sub_1E4BF090C();
    v14 = *(v3 + 11);
    LOBYTE(v19) = 4;
    sub_1E4BF090C();
    v15 = type metadata accessor for RCSService.RemoteCapabilities();
    v16 = *(v15 + 36);
    LOBYTE(v19) = 5;
    sub_1E4BEFABC();
    sub_1E4AE0B44(&qword_1ECF925B0);
    sub_1E4BF08EC();
    LOBYTE(v19) = *(v3 + *(v15 + 40));
    HIBYTE(v18) = 6;
    sub_1E4ADF9B0();
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.RemoteCapabilities.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v23 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF925C0, &qword_1E4BFA590);
  v7 = *(v26 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v23 - v9;
  v11 = type metadata accessor for RCSService.RemoteCapabilities();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E4ADF8C0();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v24 = v6;
  v17 = v14;
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92598, &qword_1E4BFA588);
  v28 = 0;
  sub_1E4ADFA04(&qword_1ECF925C8, sub_1E4ADFA7C);
  v19 = v26;
  sub_1E4BF087C();
  v20 = v17;
  *v17 = v29;
  LOBYTE(v29) = 1;
  v17[8] = sub_1E4BF084C() & 1;
  LOBYTE(v29) = 2;
  v17[9] = sub_1E4BF084C() & 1;
  LOBYTE(v29) = 3;
  v17[10] = sub_1E4BF084C() & 1;
  LOBYTE(v29) = 4;
  v17[11] = sub_1E4BF084C() & 1;
  sub_1E4BEFABC();
  LOBYTE(v29) = 5;
  sub_1E4AE0B44(&qword_1ECF925D8);
  v21 = v24;
  sub_1E4BF082C();
  sub_1E4ADE508(v21, v20 + *(v11 + 36));
  v28 = 6;
  sub_1E4ADFAD0();
  sub_1E4BF082C();
  (*(v18 + 8))(v10, v19);
  *(v20 + *(v11 + 40)) = v29;
  sub_1E4ADFB24(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1E4ADFB88(v20);
}

uint64_t RCSService.RemoteCapabilitiesRequest.CachePolicy.description.getter()
{
  if (*v0)
  {
    result = 0x52724F6568636163;
  }

  else
  {
    result = 0x6C6E4F6568636163;
  }

  *v0;
  return result;
}

uint64_t sub_1E4ADEF5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926B0, &qword_1E4BFAF60);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v9;
  v10 = *(v1 + 3);
  v16 = *(v1 + 4);
  v17 = v10;
  v11 = v1[40];
  v26 = v1[41];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE09E8();
  sub_1E4BF0ACC();
  LOBYTE(v21) = v8;
  v27 = 0;
  sub_1E4ADBE98();
  v13 = v20;
  sub_1E4BF093C();
  if (!v13)
  {
    v14 = v26;
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v11;
    v27 = 1;
    sub_1E4ADD6D8(v19, v18, v17, v16, v11);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v21, v22, v23, v24, v25);
    LOBYTE(v21) = v14;
    v27 = 2;
    sub_1E4AE0A3C();
    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E4ADF174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926C8, &qword_1E4BFAF68);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE09E8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v22;
  v28 = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v12 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v27 = v26;
  v28 = 2;
  sub_1E4AE0A90();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v22;
  *a2 = v11;
  v15 = v19;
  v14 = v20;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  v16 = v21;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  v17 = v27;
  *(a2 + 40) = v27;
  *(a2 + 41) = v13;
  sub_1E4ADD6D8(v12, v15, v14, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4ADD764(v12, v15, v14, v16, v17);
}

unint64_t sub_1E4ADF40C()
{
  v1 = 0x656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x6C6F506568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4ADF470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AE0DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4ADF498(uint64_t a1)
{
  v2 = sub_1E4AE09E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADF4D4(uint64_t a1)
{
  v2 = sub_1E4AE09E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL _s21TelephonyMessagingKit10RCSServiceC18RemoteCapabilitiesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926D8, &qword_1E4BFAF70);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v25 - v14;
  if ((sub_1E4BC7C9C(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  v26 = type metadata accessor for RCSService.RemoteCapabilities();
  v16 = *(v26 + 36);
  v17 = *(v12 + 48);
  sub_1E4ADE3FC(a1 + v16, v15);
  sub_1E4ADE3FC(a2 + v16, &v15[v17]);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) == 1)
  {
    if (v18(&v15[v17], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v15, &qword_1ECF92580, &qword_1E4BFDEB0);
      goto LABEL_14;
    }

LABEL_11:
    sub_1E4AE0AE4(v15, &qword_1ECF926D8, &qword_1E4BFAF70);
    return 0;
  }

  sub_1E4ADE3FC(v15, v11);
  if (v18(&v15[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v8, &v15[v17], v4);
  sub_1E4AE0B44(&qword_1ECF926E0);
  v20 = sub_1E4BEFE6C();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v11, v4);
  sub_1E4AE0AE4(v15, &qword_1ECF92580, &qword_1E4BFDEB0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v22 = *(v26 + 40);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 != 2)
  {
    return v24 != 2 && ((v24 ^ v23) & 1) == 0;
  }

  return v24 == 2;
}

unint64_t sub_1E4ADF8C0()
{
  result = qword_1ECF92590;
  if (!qword_1ECF92590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92590);
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

unint64_t sub_1E4ADF95C()
{
  result = qword_1ECF925A8;
  if (!qword_1ECF925A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925A8);
  }

  return result;
}

unint64_t sub_1E4ADF9B0()
{
  result = qword_1ECF925B8;
  if (!qword_1ECF925B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925B8);
  }

  return result;
}

uint64_t sub_1E4ADFA04(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92598, &qword_1E4BFA588);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4ADFA7C()
{
  result = qword_1ECF925D0;
  if (!qword_1ECF925D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925D0);
  }

  return result;
}

unint64_t sub_1E4ADFAD0()
{
  result = qword_1ECF925E0;
  if (!qword_1ECF925E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925E0);
  }

  return result;
}

uint64_t sub_1E4ADFB24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.RemoteCapabilities();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4ADFB88(uint64_t a1)
{
  v2 = type metadata accessor for RCSService.RemoteCapabilities();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4ADFBE8()
{
  result = qword_1ECF925E8;
  if (!qword_1ECF925E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925E8);
  }

  return result;
}

unint64_t sub_1E4ADFC40()
{
  result = qword_1ECF925F0;
  if (!qword_1ECF925F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925F0);
  }

  return result;
}

unint64_t sub_1E4ADFC98()
{
  result = qword_1ECF925F8;
  if (!qword_1ECF925F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925F8);
  }

  return result;
}

unint64_t sub_1E4ADFCF0()
{
  result = qword_1ECF92600;
  if (!qword_1ECF92600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92600);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1E4ADFDAC()
{
  sub_1E4ADFEFC(319, &qword_1ECF92618, &type metadata for RCSHandle, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E4ADFEA4();
    if (v1 <= 0x3F)
    {
      sub_1E4ADFEFC(319, &qword_1ECF92620, &type metadata for RCSService.RemoteCapabilities.Availability, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4ADFEA4()
{
  if (!qword_1EE2BECB8)
  {
    sub_1E4BEFABC();
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2BECB8);
    }
  }
}

void sub_1E4ADFEFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E4ADFF5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4ADFFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s18RemoteCapabilitiesV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18RemoteCapabilitiesV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4AE01B4()
{
  result = qword_1ECF92628;
  if (!qword_1ECF92628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92628);
  }

  return result;
}

unint64_t sub_1E4AE020C()
{
  result = qword_1ECF92630;
  if (!qword_1ECF92630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92630);
  }

  return result;
}

unint64_t sub_1E4AE0264()
{
  result = qword_1ECF92638;
  if (!qword_1ECF92638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92638);
  }

  return result;
}

unint64_t sub_1E4AE02BC()
{
  result = qword_1ECF92640;
  if (!qword_1ECF92640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92640);
  }

  return result;
}

unint64_t sub_1E4AE0314()
{
  result = qword_1ECF92648;
  if (!qword_1ECF92648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92648);
  }

  return result;
}

unint64_t sub_1E4AE036C()
{
  result = qword_1ECF92650;
  if (!qword_1ECF92650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92650);
  }

  return result;
}

unint64_t sub_1E4AE03C4()
{
  result = qword_1ECF92658;
  if (!qword_1ECF92658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92658);
  }

  return result;
}

unint64_t sub_1E4AE041C()
{
  result = qword_1ECF92660;
  if (!qword_1ECF92660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92660);
  }

  return result;
}

unint64_t sub_1E4AE0474()
{
  result = qword_1ECF92668;
  if (!qword_1ECF92668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92668);
  }

  return result;
}

unint64_t sub_1E4AE04CC()
{
  result = qword_1ECF92670;
  if (!qword_1ECF92670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92670);
  }

  return result;
}

unint64_t sub_1E4AE0524()
{
  result = qword_1ECF92678;
  if (!qword_1ECF92678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92678);
  }

  return result;
}

unint64_t sub_1E4AE057C()
{
  result = qword_1ECF92680;
  if (!qword_1ECF92680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92680);
  }

  return result;
}

unint64_t sub_1E4AE05D4()
{
  result = qword_1ECF92688;
  if (!qword_1ECF92688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92688);
  }

  return result;
}

unint64_t sub_1E4AE062C()
{
  result = qword_1ECF92690;
  if (!qword_1ECF92690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92690);
  }

  return result;
}

unint64_t sub_1E4AE0684()
{
  result = qword_1ECF92698;
  if (!qword_1ECF92698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92698);
  }

  return result;
}

unint64_t sub_1E4AE06DC()
{
  result = qword_1ECF926A0;
  if (!qword_1ECF926A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926A0);
  }

  return result;
}

unint64_t sub_1E4AE0734()
{
  result = qword_1ECF926A8;
  if (!qword_1ECF926A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926A8);
  }

  return result;
}

uint64_t sub_1E4AE0788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E4BF1380 == a2;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEC00000074616843 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF13A0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF13C0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF13E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E5564696C6176 && a2 == 0xEA00000000006C69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

unint64_t sub_1E4AE09E8()
{
  result = qword_1ECF926B8;
  if (!qword_1ECF926B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926B8);
  }

  return result;
}

unint64_t sub_1E4AE0A3C()
{
  result = qword_1ECF926C0;
  if (!qword_1ECF926C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926C0);
  }

  return result;
}

unint64_t sub_1E4AE0A90()
{
  result = qword_1ECF926D0;
  if (!qword_1ECF926D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926D0);
  }

  return result;
}

uint64_t sub_1E4AE0AE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E4AE0B44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E4BEFABC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s25RemoteCapabilitiesRequestV21CodableRepresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s25RemoteCapabilitiesRequestV21CodableRepresentationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4AE0CDC()
{
  result = qword_1ECF926E8;
  if (!qword_1ECF926E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926E8);
  }

  return result;
}

unint64_t sub_1E4AE0D34()
{
  result = qword_1ECF926F0;
  if (!qword_1ECF926F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926F0);
  }

  return result;
}

unint64_t sub_1E4AE0D8C()
{
  result = qword_1ECF926F8;
  if (!qword_1ECF926F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926F8);
  }

  return result;
}

uint64_t sub_1E4AE0DE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t TransferService.FileDownloadRequest.Reply.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (_s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0) - 8);
  v4 = *(*v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4AE22CC(v1, v6, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
  v7 = *v6;
  v8 = v6[1];
  v9 = v3[7];
  v10 = type metadata accessor for RCSService.FileDownloadRequest.Metadata(0);
  result = sub_1E4AE2138(v6 + v9, a1 + *(v10 + 20));
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t TransferService.FileDownloadRequest.Reply.init(metadata:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(type metadata accessor for RCSService.FileDownloadRequest.Metadata(0) + 20);
  v7 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  result = sub_1E4AE2138(a1 + v6, a2 + *(v7 + 20));
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV10MediaEntryV5LabelO9hashValueSivg_0()
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](0);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE10D0()
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](0);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461646174656D5FLL && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4AE11BC(uint64_t a1)
{
  v2 = sub_1E4AE21A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE11F8(uint64_t a1)
{
  v2 = sub_1E4AE21A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransferService.FileDownloadRequest.Reply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92708, &qword_1E4BFB098);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE21A8();
  sub_1E4BF0ACC();
  _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  sub_1E4AE221C(&qword_1ECF92718, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t TransferService.FileDownloadRequest.Reply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = *(*(_s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92720, &qword_1E4BFB0A0);
  v18 = *(v6 - 8);
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - v8;
  v10 = *(*(type metadata accessor for TransferService.FileDownloadRequest.Reply(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE21A8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v14 = v17;
    sub_1E4AE221C(&qword_1ECF92728, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
    v15 = v19;
    sub_1E4BF087C();
    (*(v18 + 8))(v9, v6);
    sub_1E4AE2264(v15, v12, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
    sub_1E4AE2264(v12, v14, type metadata accessor for TransferService.FileDownloadRequest.Reply);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4AE1638(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92708, &qword_1E4BFB098);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE21A8();
  sub_1E4BF0ACC();
  _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  sub_1E4AE221C(&qword_1ECF92718, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t TransferService.FileDownloadRequest.request.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (_s19FileDownloadRequestV21CodableRepresentationVMa(0) - 8);
  v4 = *(*v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4AE22CC(v1, v6, _s19FileDownloadRequestV21CodableRepresentationVMa);
  v7 = *v6;
  v8 = v3[7];
  v9 = type metadata accessor for RCSService.FileDownloadRequest(0);
  v10 = *(v9 + 20);
  v11 = sub_1E4BEFA6C();
  v12 = *(*(v11 - 8) + 32);
  v12(&a1[v10], &v6[v8], v11);
  result = (v12)(&a1[*(v9 + 24)], &v6[v3[8]], v11);
  *a1 = v7;
  return result;
}

uint64_t TransferService.FileDownloadRequest.sandboxExtension.getter()
{
  v1 = *(v0 + *(type metadata accessor for TransferService.FileDownloadRequest(0) + 20));
}

uint64_t TransferService.FileDownloadRequest.init(request:sandboxExtension:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for RCSService.FileDownloadRequest(0);
  v7 = *(v6 + 20);
  v8 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  v9 = *(v8 + 20);
  v10 = sub_1E4BEFA6C();
  v11 = *(*(v10 - 8) + 32);
  v11(&a3[v9], &a1[v7], v10);
  v11(&a3[*(v8 + 24)], &a1[*(v6 + 24)], v10);
  *a3 = v5;
  result = type metadata accessor for TransferService.FileDownloadRequest(0);
  *&a3[*(result + 20)] = a2;
  return result;
}

unint64_t sub_1E4AE1A00()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x747365757165725FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AE1A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747365757165725FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF1420 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE1B24(uint64_t a1)
{
  v2 = sub_1E4AE238C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE1B60(uint64_t a1)
{
  v2 = sub_1E4AE238C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransferService.FileDownloadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92730, &qword_1E4BFB0A8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE238C();
  sub_1E4BF0ACC();
  v14 = 0;
  _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  sub_1E4AE221C(&qword_1ECF92740, _s19FileDownloadRequestV21CodableRepresentationVMa);
  sub_1E4BF093C();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for TransferService.FileDownloadRequest(0) + 20));
    v12[15] = 1;
    type metadata accessor for SandboxExtension();
    sub_1E4AE221C(&qword_1ECF92748, type metadata accessor for SandboxExtension);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TransferService.FileDownloadRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = *(*(_s19FileDownloadRequestV21CodableRepresentationVMa(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v23 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92750, &qword_1E4BFB0B0);
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v19 - v8;
  v10 = type metadata accessor for TransferService.FileDownloadRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE238C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v21;
  v16 = v13;
  v26 = 0;
  sub_1E4AE221C(&qword_1ECF92758, _s19FileDownloadRequestV21CodableRepresentationVMa);
  v17 = v22;
  sub_1E4BF087C();
  sub_1E4AE2264(v23, v16, _s19FileDownloadRequestV21CodableRepresentationVMa);
  type metadata accessor for SandboxExtension();
  v25 = 1;
  sub_1E4AE221C(&qword_1ECF92760, type metadata accessor for SandboxExtension);
  sub_1E4BF087C();
  (*(v15 + 8))(v9, v17);
  *(v16 + *(v10 + 20)) = v24;
  sub_1E4AE22CC(v16, v20, type metadata accessor for TransferService.FileDownloadRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4AE23E0(v16, type metadata accessor for TransferService.FileDownloadRequest);
}

uint64_t sub_1E4AE2138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4AE21A8()
{
  result = qword_1ECF92710;
  if (!qword_1ECF92710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92710);
  }

  return result;
}

uint64_t sub_1E4AE221C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4AE2264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AE22CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AE2354(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E4AE238C()
{
  result = qword_1ECF92738;
  if (!qword_1ECF92738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92738);
  }

  return result;
}

uint64_t sub_1E4AE23E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4AE2440(uint64_t a1)
{
  result = sub_1E4AE221C(&qword_1ECF92768, type metadata accessor for TransferService.FileDownloadRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4AE249C()
{
  result = qword_1ECF92770;
  if (!qword_1ECF92770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92770);
  }

  return result;
}

uint64_t sub_1E4AE2580(uint64_t a1)
{
  *(a1 + 8) = sub_1E4AE221C(&qword_1ECF92788, type metadata accessor for TransferService.FileDownloadRequest);
  result = sub_1E4AE221C(&qword_1ECF92790, type metadata accessor for TransferService.FileDownloadRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4AE262C()
{
  result = _s19FileDownloadRequestV21CodableRepresentationVMa(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SandboxExtension();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4AE26D8()
{
  result = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s19FileDownloadRequestV5ReplyV10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s19FileDownloadRequestV5ReplyV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_1E4AE2840()
{
  result = qword_1ECF927B8;
  if (!qword_1ECF927B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927B8);
  }

  return result;
}

unint64_t sub_1E4AE2898()
{
  result = qword_1ECF927C0;
  if (!qword_1ECF927C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927C0);
  }

  return result;
}

unint64_t sub_1E4AE28F0()
{
  result = qword_1ECF927C8;
  if (!qword_1ECF927C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927C8);
  }

  return result;
}

unint64_t sub_1E4AE2948()
{
  result = qword_1ECF927D0;
  if (!qword_1ECF927D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927D0);
  }

  return result;
}

unint64_t sub_1E4AE29A0()
{
  result = qword_1ECF927D8;
  if (!qword_1ECF927D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927D8);
  }

  return result;
}

unint64_t sub_1E4AE29F8()
{
  result = qword_1ECF927E0;
  if (!qword_1ECF927E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927E0);
  }

  return result;
}

uint64_t RCSSendDeviceSpecificsRequest.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t RCSSendDeviceSpecificsRequest.destination.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

unint64_t sub_1E4AE2A7C()
{
  v1 = 0x496567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4AE2AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AE355C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AE2B10(uint64_t a1)
{
  v2 = sub_1E4AE2D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE2B4C(uint64_t a1)
{
  v2 = sub_1E4AE2D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSSendDeviceSpecificsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF927E8, &qword_1E4BFB3E0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = *(v1 + 4);
  v18 = *(v1 + 3);
  v19 = v9;
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE2D98();
  sub_1E4BF0ACC();
  LOBYTE(v21) = v8;
  v23 = 0;
  sub_1E4ADBE98();
  v13 = v20;
  sub_1E4BF093C();
  if (!v13)
  {
    v14 = v17;
    v15 = v18;
    v21 = v19;
    v22 = v10;
    v23 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    v21 = v15;
    v22 = v14;
    v23 = 2;
    sub_1E4AE2E40();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4AE2D98()
{
  result = qword_1ECF927F0;
  if (!qword_1ECF927F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927F0);
  }

  return result;
}

unint64_t sub_1E4AE2DEC()
{
  result = qword_1ECF927F8;
  if (!qword_1ECF927F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927F8);
  }

  return result;
}

unint64_t sub_1E4AE2E40()
{
  result = qword_1ECF92800;
  if (!qword_1ECF92800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92800);
  }

  return result;
}

uint64_t RCSSendDeviceSpecificsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92808, &qword_1E4BFB3E8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE2D98();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v18;
  v20 = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v12 = v19;
  v17 = v18;
  v20 = 2;
  sub_1E4AE3140();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v18;
  v14 = v19;
  *a2 = v11;
  *(a2 + 8) = v17;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4AE30EC()
{
  result = qword_1ECF92810;
  if (!qword_1ECF92810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92810);
  }

  return result;
}

unint64_t sub_1E4AE3140()
{
  result = qword_1ECF92818;
  if (!qword_1ECF92818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92818);
  }

  return result;
}

unint64_t sub_1E4AE3194(uint64_t a1)
{
  result = sub_1E4AE31BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4AE31BC()
{
  result = qword_1EE2BD9D8;
  if (!qword_1EE2BD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9D8);
  }

  return result;
}

unint64_t sub_1E4AE3210()
{
  result = qword_1EE2BEBA8;
  if (!qword_1EE2BEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBA8);
  }

  return result;
}

unint64_t sub_1E4AE3288(uint64_t a1)
{
  *(a1 + 8) = sub_1E4AE32B8();
  result = sub_1E4AE330C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4AE32B8()
{
  result = qword_1EE2BD9E0;
  if (!qword_1EE2BD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9E0);
  }

  return result;
}

unint64_t sub_1E4AE330C()
{
  result = qword_1EE2BD9E8;
  if (!qword_1EE2BD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9E8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4AE33A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4AE33EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4AE3458()
{
  result = qword_1ECF92820;
  if (!qword_1ECF92820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92820);
  }

  return result;
}

unint64_t sub_1E4AE34B0()
{
  result = qword_1ECF92828;
  if (!qword_1ECF92828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92828);
  }

  return result;
}

unint64_t sub_1E4AE3508()
{
  result = qword_1ECF92830;
  if (!qword_1ECF92830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92830);
  }

  return result;
}

uint64_t sub_1E4AE355C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t sub_1E4AE36A0()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x6475617266;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1835102323;
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

uint64_t sub_1E4AE3730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AE6668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AE3758(uint64_t a1)
{
  v2 = sub_1E4AE3F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE3794(uint64_t a1)
{
  v2 = sub_1E4AE3F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE37D0(uint64_t a1)
{
  v2 = sub_1E4AE4064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE380C(uint64_t a1)
{
  v2 = sub_1E4AE4064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE3848(uint64_t a1)
{
  v2 = sub_1E4AE4010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE3884(uint64_t a1)
{
  v2 = sub_1E4AE4010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE38C0(uint64_t a1)
{
  v2 = sub_1E4AE410C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE38FC(uint64_t a1)
{
  v2 = sub_1E4AE410C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE3938(uint64_t a1)
{
  v2 = sub_1E4AE3FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE3974(uint64_t a1)
{
  v2 = sub_1E4AE3FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE39B0(uint64_t a1)
{
  v2 = sub_1E4AE40B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE39EC(uint64_t a1)
{
  v2 = sub_1E4AE40B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.ReportSpamRequest.Category.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92838, &qword_1E4BFB600);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92840, &qword_1E4BFB608);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92848, &qword_1E4BFB610);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92850, &qword_1E4BFB618);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92858, &qword_1E4BFB620);
  v49 = *(v16 - 8);
  v17 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92860, &qword_1E4BFB628);
  v20 = *(v52 - 8);
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_1E4AE3F68();
  sub_1E4BF0ACC();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_1E4AE40B8();
      v38 = v52;
      sub_1E4BF08BC();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_1E4AE410C();
      v38 = v52;
      sub_1E4BF08BC();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_1E4AE4064();
      v29 = v40;
      v30 = v52;
      sub_1E4BF08BC();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_1E4AE4010();
      v29 = v43;
      v30 = v52;
      sub_1E4BF08BC();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_1E4AE3FBC();
      v29 = v46;
      v30 = v52;
      sub_1E4BF08BC();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_1E4AE3F68()
{
  result = qword_1ECF92868;
  if (!qword_1ECF92868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92868);
  }

  return result;
}

unint64_t sub_1E4AE3FBC()
{
  result = qword_1ECF92870;
  if (!qword_1ECF92870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92870);
  }

  return result;
}

unint64_t sub_1E4AE4010()
{
  result = qword_1ECF92878;
  if (!qword_1ECF92878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92878);
  }

  return result;
}

unint64_t sub_1E4AE4064()
{
  result = qword_1ECF92880;
  if (!qword_1ECF92880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92880);
  }

  return result;
}

unint64_t sub_1E4AE40B8()
{
  result = qword_1ECF92888;
  if (!qword_1ECF92888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92888);
  }

  return result;
}

unint64_t sub_1E4AE410C()
{
  result = qword_1ECF92890;
  if (!qword_1ECF92890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92890);
  }

  return result;
}

uint64_t RCSService.ReportSpamRequest.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSService.ReportSpamRequest.Category.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92898, &qword_1E4BFB630);
  v60 = *(v63 - 8);
  v3 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928A0, &qword_1E4BFB638);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928A8, &qword_1E4BFB640);
  v56 = *(v59 - 8);
  v9 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928B0, &qword_1E4BFB648);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928B8, &qword_1E4BFB650);
  v55 = *(v15 - 8);
  v16 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928C0, &unk_1E4BFB658);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1E4AE3F68();
  v26 = v69;
  sub_1E4BF0ABC();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_1E4BF088C();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_1E4AE0F18();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_1E4BF06EC();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v41 = &type metadata for RCSService.ReportSpamRequest.Category;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_1E4AE40B8();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_1E4BF07EC();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_1E4AE410C();
      v45 = v54;
      sub_1E4BF07EC();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_1E4AE4064();
    v46 = v31;
    v47 = v54;
    sub_1E4BF07EC();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_1E4AE3FBC();
    v49 = v64;
    v50 = v54;
    sub_1E4BF07EC();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_1E4AE4010();
  v38 = v54;
  sub_1E4BF07EC();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1E4AE4A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.ReportSpamRequest.fileContent.getter()
{
  v1 = v0 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 20);
  v2 = *v1;
  sub_1E4AE4B24(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1E4AE4B24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E4AE4B38(a1, a2);
  }

  return a1;
}

uint64_t sub_1E4AE4B38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t RCSService.ReportSpamRequest.fileContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 20);
  result = sub_1E4AE4BD4(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_1E4AE4BD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E4AE4BE8(a1, a2);
  }

  return a1;
}

uint64_t sub_1E4AE4BE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t RCSService.ReportSpamRequest.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.ReportSpamRequest(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RCSService.ReportSpamRequest.category.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RCSService.ReportSpamRequest(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t RCSService.ReportSpamRequest.reason.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSService.ReportSpamRequest.reason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RCSService.ReportSpamRequest.init(message:fileContent:category:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v15 = a7 + v14[5];
  *v15 = xmmword_1E4BFB5F0;
  v16 = v14[6];
  *(a7 + v16) = 5;
  v17 = (a7 + v14[7]);
  sub_1E4AE4EA8(a1, a7);
  result = sub_1E4AE4BD4(*v15, *(v15 + 8));
  *v15 = a2;
  *(v15 + 8) = a3;
  *(a7 + v16) = v13;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_1E4AE4EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *RCSService.ReportSpamRequest.CodableRepresentation.init(message:fileContent:category:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  sub_1E4AE4EA8(a1, a7);
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v14 = (a7 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a7 + result[6]) = v12;
  v15 = (a7 + result[7]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t sub_1E4AE4FA0()
{
  v1 = 0x6567617373656DLL;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x6E6F73616572;
  }

  if (*v0)
  {
    v1 = 0x746E6F43656C6966;
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

uint64_t sub_1E4AE5020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AE6818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AE5048(uint64_t a1)
{
  v2 = sub_1E4AE5318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE5084(uint64_t a1)
{
  v2 = sub_1E4AE5318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.ReportSpamRequest.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928C8, &qword_1E4BFB668);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE5318();
  sub_1E4BF0ACC();
  LOBYTE(v20) = 0;
  type metadata accessor for RCSMessage(0);
  sub_1E4AE5810(&qword_1ECF928D8, type metadata accessor for RCSMessage);
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
    v12 = (v3 + v11[5]);
    v13 = v12[1];
    v20 = *v12;
    v21 = v13;
    v19 = 1;
    sub_1E4AE4B24(v20, v13);
    sub_1E4AE536C();
    sub_1E4BF08EC();
    sub_1E4AE4BD4(v20, v21);
    LOBYTE(v20) = *(v3 + v11[6]);
    v19 = 2;
    sub_1E4AE53C0();
    sub_1E4BF08EC();
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v20) = 3;
    sub_1E4BF08CC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4AE5318()
{
  result = qword_1ECF928D0;
  if (!qword_1ECF928D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF928D0);
  }

  return result;
}

unint64_t sub_1E4AE536C()
{
  result = qword_1ECF928E0;
  if (!qword_1ECF928E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF928E0);
  }

  return result;
}

unint64_t sub_1E4AE53C0()
{
  result = qword_1ECF928E8;
  if (!qword_1ECF928E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF928E8);
  }

  return result;
}

uint64_t RCSService.ReportSpamRequest.CodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928F0, &qword_1E4BFB670);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v25 - v9;
  v11 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E4AE5318();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v17 = v26;
  v18 = v14;
  LOBYTE(v29) = 0;
  sub_1E4AE5810(&qword_1ECF928F8, type metadata accessor for RCSMessage);
  v19 = v27;
  sub_1E4BF087C();
  sub_1E4AE4EA8(v6, v18);
  v30 = 1;
  sub_1E4AE5858();
  sub_1E4BF082C();
  *(v18 + v11[5]) = v29;
  v30 = 2;
  sub_1E4AE58AC();
  sub_1E4BF082C();
  *(v18 + v11[6]) = v29;
  LOBYTE(v29) = 3;
  v20 = sub_1E4BF080C();
  v22 = v21;
  (*(v17 + 8))(v10, v19);
  v23 = (v18 + v11[7]);
  *v23 = v20;
  v23[1] = v22;
  sub_1E4AE5900(v18, v25, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1E4AE5968(v18, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
}

uint64_t sub_1E4AE5810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4AE5858()
{
  result = qword_1ECF92900;
  if (!qword_1ECF92900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92900);
  }

  return result;
}

unint64_t sub_1E4AE58AC()
{
  result = qword_1ECF92908;
  if (!qword_1ECF92908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92908);
  }

  return result;
}

uint64_t sub_1E4AE5900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AE5968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4AE59CC()
{
  result = qword_1ECF92910;
  if (!qword_1ECF92910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92910);
  }

  return result;
}

void sub_1E4AE5B08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E4BF053C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

void sub_1E4AE5D14()
{
  type metadata accessor for RCSMessage(319);
  if (v0 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1EE2BECC0);
    if (v1 <= 0x3F)
    {
      sub_1E4AE5B08(319, qword_1EE2BE800);
      if (v2 <= 0x3F)
      {
        sub_1E4AE5B08(319, &qword_1EE2BD740);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t _s17ReportSpamRequestV21CodableRepresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s17ReportSpamRequestV21CodableRepresentationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RCSMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RCSMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4AE60EC()
{
  result = qword_1ECF92938;
  if (!qword_1ECF92938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92938);
  }

  return result;
}

unint64_t sub_1E4AE6144()
{
  result = qword_1ECF92940;
  if (!qword_1ECF92940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92940);
  }

  return result;
}

unint64_t sub_1E4AE619C()
{
  result = qword_1ECF92948;
  if (!qword_1ECF92948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92948);
  }

  return result;
}

unint64_t sub_1E4AE61F4()
{
  result = qword_1ECF92950;
  if (!qword_1ECF92950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92950);
  }

  return result;
}

unint64_t sub_1E4AE624C()
{
  result = qword_1ECF92958;
  if (!qword_1ECF92958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92958);
  }

  return result;
}

unint64_t sub_1E4AE62A4()
{
  result = qword_1ECF92960;
  if (!qword_1ECF92960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92960);
  }

  return result;
}

unint64_t sub_1E4AE62FC()
{
  result = qword_1ECF92968;
  if (!qword_1ECF92968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92968);
  }

  return result;
}

unint64_t sub_1E4AE6354()
{
  result = qword_1ECF92970;
  if (!qword_1ECF92970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92970);
  }

  return result;
}

unint64_t sub_1E4AE63AC()
{
  result = qword_1ECF92978;
  if (!qword_1ECF92978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92978);
  }

  return result;
}

unint64_t sub_1E4AE6404()
{
  result = qword_1ECF92980;
  if (!qword_1ECF92980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92980);
  }

  return result;
}

unint64_t sub_1E4AE645C()
{
  result = qword_1ECF92988;
  if (!qword_1ECF92988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92988);
  }

  return result;
}

unint64_t sub_1E4AE64B4()
{
  result = qword_1ECF92990;
  if (!qword_1ECF92990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92990);
  }

  return result;
}

unint64_t sub_1E4AE650C()
{
  result = qword_1ECF92998;
  if (!qword_1ECF92998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92998);
  }

  return result;
}

unint64_t sub_1E4AE6564()
{
  result = qword_1ECF929A0;
  if (!qword_1ECF929A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929A0);
  }

  return result;
}

unint64_t sub_1E4AE65BC()
{
  result = qword_1ECF929A8;
  if (!qword_1ECF929A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929A8);
  }

  return result;
}

unint64_t sub_1E4AE6614()
{
  result = qword_1ECF929B0;
  if (!qword_1ECF929B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929B0);
  }

  return result;
}

uint64_t sub_1E4AE6668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835102323 && a2 == 0xE400000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6475617266 && a2 == 0xE500000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1440 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4AE6818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F43656C6966 && a2 == 0xEB00000000746E65 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t static RCSHandle.phoneNumber(_:)@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x1E69205B0]();
  *a1 = 980182388;
  *(a1 + 8) = 0xE400000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

unint64_t RCSHandle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    sub_1E4BF069C();

    v8 = 0xD000000000000012;
    MEMORY[0x1E69205B0](v1, v2);
    MEMORY[0x1E69205B0](47, 0xE100000000000000);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    sub_1E4BF069C();

    v8 = 0xD000000000000010;
    v5 = v1;
    v6 = v2;
  }

  MEMORY[0x1E69205B0](v5, v6);
  MEMORY[0x1E69205B0](62, 0xE100000000000000);
  return v8;
}

uint64_t sub_1E4AE6AF0()
{
  if (*v0)
  {
    result = 0x70756F7267;
  }

  else
  {
    result = 6910581;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AE6B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6910581 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE6BF8(uint64_t a1)
{
  v2 = sub_1E4AE875C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE6C34(uint64_t a1)
{
  v2 = sub_1E4AE875C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE6C7C(uint64_t a1)
{
  v2 = sub_1E4AE87B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE6CB8(uint64_t a1)
{
  v2 = sub_1E4AE87B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE6CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4AE6D74(uint64_t a1)
{
  v2 = sub_1E4AE8858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE6DB0(uint64_t a1)
{
  v2 = sub_1E4AE8858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929B8, &qword_1E4BFBE10);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929C0, &qword_1E4BFBE18);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v23 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929C8, &qword_1E4BFBE20);
  v11 = *(v32 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v23 - v13;
  v15 = v1[1];
  v30 = *v1;
  v31 = v15;
  v16 = v1[2];
  v24 = v1[3];
  v25 = v16;
  v17 = *(v1 + 32);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE875C();
  sub_1E4BF0ACC();
  if (v17)
  {
    LOBYTE(v33) = 1;
    sub_1E4AE87B0();
    v19 = v32;
    sub_1E4BF08BC();
    v33 = v30;
    v34 = v31;
    v35 = v25;
    v36 = v24;
    sub_1E4AE8804();
    v20 = v29;
    sub_1E4BF093C();
    (*(v28 + 8))(v6, v20);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_1E4AE8858();
    v19 = v32;
    sub_1E4BF08BC();
    v33 = v30;
    v34 = v31;
    sub_1E4AE2E40();
    v21 = v27;
    sub_1E4BF093C();
    (*(v26 + 8))(v10, v21);
  }

  return (*(v11 + 8))(v14, v19);
}

uint64_t RCSHandle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  return sub_1E4BEFF4C();
}

uint64_t RCSHandle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1E4BF0A6C();
  if (v5)
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929F0, &qword_1E4BFBE28);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v37[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929F8, &qword_1E4BFBE30);
  v40 = *(v8 - 8);
  v9 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92A00, &unk_1E4BFBE38);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v16 = &v37[-v15];
  v18 = a1[3];
  v17 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E4AE875C();
  v19 = v44;
  sub_1E4BF0ABC();
  if (!v19)
  {
    v44 = v13;
    v20 = v43;
    v21 = sub_1E4BF088C();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = sub_1E4AE0F10();
    v24 = v12;
    if (v23 == 2 || v51 != v52 >> 1)
    {
      v27 = sub_1E4BF06EC();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v29 = &type metadata for RCSHandle;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v44 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v16;
      v38 = v23;
      v25 = v44;
      if (v23)
      {
        LOBYTE(v45) = 1;
        sub_1E4AE87B0();
        v26 = v39;
        sub_1E4BF07EC();
        sub_1E4AE88AC();
        v32 = v41;
        sub_1E4BF087C();
        (*(v42 + 8))(v7, v32);
        (*(v25 + 8))(v26, v24);
        swift_unknownObjectRelease();
        v33 = v45;
        v34 = v46;
        v35 = v47;
        v36 = v48;
      }

      else
      {
        LOBYTE(v45) = 0;
        sub_1E4AE8858();
        sub_1E4BF07EC();
        sub_1E4AE3140();
        sub_1E4BF087C();
        (*(v40 + 8))(v11, v8);
        (*(v25 + 8))(v39, v24);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = 0;
        v33 = v45;
        v34 = v46;
      }

      *v20 = v33;
      *(v20 + 8) = v34;
      *(v20 + 16) = v35;
      *(v20 + 24) = v36;
      *(v20 + 32) = v38 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1E4AE77AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1E4BF0A6C();
  if (v5)
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE784C()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  return sub_1E4BEFF4C();
}

uint64_t sub_1E4AE78E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1E4BF0A6C();
  if (v5)
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.URI.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1E4AE79EC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1E4AE79F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE7A44()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1E4BEFF4C();
}

uint64_t sub_1E4AE7A4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.Group.focus.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSHandle.Group.conversationID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

TelephonyMessagingKit::RCSHandle::Group __swiftcall RCSHandle.Group.init(focus:conversationID:)(Swift::String focus, Swift::String conversationID)
{
  *v2 = focus;
  v2[1] = conversationID;
  result.conversationID = conversationID;
  result.focus = focus;
  return result;
}

uint64_t static RCSHandle.Group.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E4BF099C();
    }
  }

  return result;
}

uint64_t sub_1E4AE7C54()
{
  if (*v0)
  {
    result = 0x61737265766E6F63;
  }

  else
  {
    result = 0x7375636F66;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AE7C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7375636F66 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE7D78(uint64_t a1)
{
  v2 = sub_1E4AE8900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE7DB4(uint64_t a1)
{
  v2 = sub_1E4AE8900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSHandle.Group.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92A10, &qword_1E4BFBE48);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE8900();
  sub_1E4BF0ACC();
  v16 = 0;
  v12 = v14[3];
  sub_1E4BF08FC();
  if (!v12)
  {
    v15 = 1;
    sub_1E4BF08FC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSHandle.Group.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E4BEFF4C();

  return sub_1E4BEFF4C();
}

uint64_t RCSHandle.Group.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.Group.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92A20, &qword_1E4BFBE50);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE8900();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E4BF083C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4AE823C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE82A4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E4BEFF4C();

  return sub_1E4BEFF4C();
}

uint64_t sub_1E4AE82F4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE8388(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E4BF099C();
    }
  }

  return result;
}

uint64_t _s21TelephonyMessagingKit9RCSHandleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v22 = *a1;
      if (v3 != v8 || v2 != v7)
      {
        v24 = sub_1E4BF099C();
        sub_1E4ADD6D8(v8, v7, v10, v9, 0);
        sub_1E4ADD6D8(v3, v2, v5, v4, 0);
        sub_1E4ADD764(v3, v2, v5, v4, 0);
        sub_1E4ADD764(v8, v7, v10, v9, 0);
        return v24 & 1;
      }

      sub_1E4ADD6D8(v22, v2, v10, v9, 0);
      sub_1E4ADD6D8(v3, v2, v5, v4, 0);
      sub_1E4ADD764(v3, v2, v5, v4, 0);
      v25 = v3;
      v26 = v2;
      v27 = v10;
      v28 = v9;
      v29 = 0;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
LABEL_15:
    sub_1E4ADD6D8(*a2, *(a2 + 8), v10, v9, v11);
    sub_1E4ADD6D8(v3, v2, v5, v4, v6);
    sub_1E4ADD764(v3, v2, v5, v4, v6);
    v17 = v8;
    v18 = v7;
    v19 = v10;
    v20 = v9;
    v21 = v11;
LABEL_16:
    sub_1E4ADD764(v17, v18, v19, v20, v21);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v13 = *a1;
    if ((sub_1E4BF099C() & 1) == 0)
    {
      sub_1E4ADD6D8(v8, v7, v10, v9, 1);
      sub_1E4ADD6D8(v3, v2, v5, v4, 1);
      sub_1E4ADD764(v3, v2, v5, v4, 1);
      v17 = v8;
      v18 = v7;
      v19 = v10;
      v20 = v9;
      v21 = 1;
      goto LABEL_16;
    }
  }

  if (v5 == v10 && v4 == v9)
  {
    sub_1E4ADD6D8(v8, v7, v5, v4, 1);
    sub_1E4ADD6D8(v3, v2, v5, v4, 1);
    sub_1E4ADD764(v3, v2, v5, v4, 1);
    v25 = v8;
    v26 = v7;
    v27 = v5;
    v28 = v4;
    v29 = 1;
LABEL_25:
    sub_1E4ADD764(v25, v26, v27, v28, v29);
    return 1;
  }

  v15 = sub_1E4BF099C();
  sub_1E4ADD6D8(v8, v7, v10, v9, 1);
  sub_1E4ADD6D8(v3, v2, v5, v4, 1);
  sub_1E4ADD764(v3, v2, v5, v4, 1);
  sub_1E4ADD764(v8, v7, v10, v9, 1);
  result = 1;
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E4AE875C()
{
  result = qword_1ECF929D0;
  if (!qword_1ECF929D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929D0);
  }

  return result;
}

unint64_t sub_1E4AE87B0()
{
  result = qword_1ECF929D8;
  if (!qword_1ECF929D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929D8);
  }

  return result;
}

unint64_t sub_1E4AE8804()
{
  result = qword_1ECF929E0;
  if (!qword_1ECF929E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929E0);
  }

  return result;
}

unint64_t sub_1E4AE8858()
{
  result = qword_1ECF929E8;
  if (!qword_1ECF929E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929E8);
  }

  return result;
}

unint64_t sub_1E4AE88AC()
{
  result = qword_1ECF92A08;
  if (!qword_1ECF92A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A08);
  }

  return result;
}

unint64_t sub_1E4AE8900()
{
  result = qword_1ECF92A18;
  if (!qword_1ECF92A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A18);
  }

  return result;
}

unint64_t sub_1E4AE8958()
{
  result = qword_1ECF92A28;
  if (!qword_1ECF92A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A28);
  }

  return result;
}

unint64_t sub_1E4AE89B0()
{
  result = qword_1ECF92A30;
  if (!qword_1ECF92A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A30);
  }

  return result;
}

unint64_t sub_1E4AE8A14()
{
  result = qword_1ECF92A38;
  if (!qword_1ECF92A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A38);
  }

  return result;
}

unint64_t sub_1E4AE8A6C()
{
  result = qword_1ECF92A40;
  if (!qword_1ECF92A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A40);
  }

  return result;
}

unint64_t sub_1E4AE8ADC()
{
  result = qword_1ECF92A48;
  if (!qword_1ECF92A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A48);
  }

  return result;
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

uint64_t sub_1E4AE8B44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1E4AE8B8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1E4AE8BF0(uint64_t a1, int a2)
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

uint64_t sub_1E4AE8C38(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4AE8C90(uint64_t a1, int a2)
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

uint64_t sub_1E4AE8CD8(uint64_t result, int a2, int a3)
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

unint64_t sub_1E4AE8D6C()
{
  result = qword_1ECF92A50;
  if (!qword_1ECF92A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A50);
  }

  return result;
}

unint64_t sub_1E4AE8DC4()
{
  result = qword_1ECF92A58;
  if (!qword_1ECF92A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A58);
  }

  return result;
}

unint64_t sub_1E4AE8E1C()
{
  result = qword_1ECF92A60;
  if (!qword_1ECF92A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A60);
  }

  return result;
}

unint64_t sub_1E4AE8E74()
{
  result = qword_1ECF92A68;
  if (!qword_1ECF92A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A68);
  }

  return result;
}

unint64_t sub_1E4AE8ECC()
{
  result = qword_1ECF92A70;
  if (!qword_1ECF92A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A70);
  }

  return result;
}

unint64_t sub_1E4AE8F24()
{
  result = qword_1ECF92A78;
  if (!qword_1ECF92A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A78);
  }

  return result;
}

unint64_t sub_1E4AE8F7C()
{
  result = qword_1ECF92A80;
  if (!qword_1ECF92A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A80);
  }

  return result;
}

unint64_t sub_1E4AE8FD4()
{
  result = qword_1ECF92A88;
  if (!qword_1ECF92A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A88);
  }

  return result;
}

unint64_t sub_1E4AE902C()
{
  result = qword_1ECF92A90;
  if (!qword_1ECF92A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A90);
  }

  return result;
}

unint64_t sub_1E4AE9084()
{
  result = qword_1ECF92A98;
  if (!qword_1ECF92A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A98);
  }

  return result;
}

unint64_t sub_1E4AE90DC()
{
  result = qword_1ECF92AA0;
  if (!qword_1ECF92AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AA0);
  }

  return result;
}

unint64_t sub_1E4AE9134()
{
  result = qword_1ECF92AA8;
  if (!qword_1ECF92AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AA8);
  }

  return result;
}

unint64_t sub_1E4AE9188()
{
  result = qword_1ECF92AB0;
  if (!qword_1ECF92AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AB0);
  }

  return result;
}

uint64_t sub_1E4AE9200()
{
  if (*v0)
  {
    result = 0x756E656D627573;
  }

  else
  {
    result = 0x6974736567677573;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AE9240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756E656D627573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE9324(uint64_t a1)
{
  v2 = sub_1E4AEA9E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE9360(uint64_t a1)
{
  v2 = sub_1E4AEA9E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE939C(uint64_t a1)
{
  v2 = sub_1E4AEAAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE93D8(uint64_t a1)
{
  v2 = sub_1E4AEAAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE9414(uint64_t a1)
{
  v2 = sub_1E4AEAB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE9450(uint64_t a1)
{
  v2 = sub_1E4AEAB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Menu.Content.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AB8, &qword_1E4BFC6E0);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AC0, &qword_1E4BFC6E8);
  v31 = *(v33 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v28 - v6;
  v29 = type metadata accessor for RCSService.Business.Suggestion(0);
  v7 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RCSService.Business.Menu.Content();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AC8, &qword_1E4BFC6F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEA9E8();
  sub_1E4BF0ACC();
  sub_1E4AEAA3C(v36, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v13;
    v20 = v13[1];
    v22 = v13[2];
    LOBYTE(v37) = 1;
    sub_1E4AEAAA0();
    v23 = v32;
    sub_1E4BF08BC();
    v37 = v21;
    v38 = v20;
    v39 = v22;
    sub_1E4AEAAF4();
    v24 = v35;
    sub_1E4BF093C();
    (*(v34 + 8))(v23, v24);
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    sub_1E4AEABF0(v13, v9, type metadata accessor for RCSService.Business.Suggestion);
    LOBYTE(v37) = 0;
    sub_1E4AEAB48();
    v26 = v30;
    sub_1E4BF08BC();
    sub_1E4AEAD48(&qword_1ECF92AF0, type metadata accessor for RCSService.Business.Suggestion);
    v27 = v33;
    sub_1E4BF093C();
    (*(v31 + 8))(v26, v27);
    sub_1E4AEB320(v9, type metadata accessor for RCSService.Business.Suggestion);
    return (*(v15 + 8))(v18, v14);
  }
}