uint64_t sub_1C2137974(uint64_t a1)
{
  v2 = sub_1C213FD64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21379B0(uint64_t a1)
{
  v2 = sub_1C213FD64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPPRFExtensionOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24610, &qword_1C217B948);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = v1[1];
  v15 = v1[2];
  v16 = v8;
  v9 = v1[4];
  v14 = v1[3];
  v10 = a1[4];
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FD64();
  sub_1C2171484();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_1C2171234();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = v14;
    v21 = v9;
    v22 = 1;
    sub_1C20B22CC(v16, v15, v14, v9);
    sub_1C213FDB8();
    sub_1C2171264();
    sub_1C20B23DC(v18, v19, v20, v21);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ASCTAPPRFExtensionOutput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24628, &qword_1C217B950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FD64();
  sub_1C2171464();
  if (!v2)
  {
    LOBYTE(v15[0]) = 0;
    v11 = sub_1C2171174();
    v16 = 1;
    sub_1C213FE0C();
    sub_1C21711A4();
    (*(v6 + 8))(v9, v5);
    v12 = v15[0];
    v13 = v15[1];
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 24) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t ASCTAPExtensionOutput.largeBlob.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 40);
  return sub_1C213FE60(v2, v3, v4);
}

uint64_t ASCTAPExtensionOutput.prf.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1C213FE7C(v2, v3, v4, v5, v6);
}

uint64_t sub_1C2137DDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6713968;
  if (v2 != 1)
  {
    v4 = 0x6469707061;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F6C42656772616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000062;
  }

  v7 = 0xE300000000000000;
  v8 = 6713968;
  if (*a2 != 1)
  {
    v8 = 0x6469707061;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F6C42656772616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000062;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C2137EC8()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2137F64()
{
  *v0;
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C2137FEC()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2138084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C2142D38();
  *a2 = result;
  return result;
}

void sub_1C21380B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000062;
  v4 = 0xE300000000000000;
  v5 = 6713968;
  if (v2 != 1)
  {
    v5 = 0x6469707061;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6C42656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C213810C()
{
  v1 = 6713968;
  if (*v0 != 1)
  {
    v1 = 0x6469707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6C42656772616CLL;
  }
}

uint64_t sub_1C2138160@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2142D38();
  *a1 = result;
  return result;
}

uint64_t sub_1C2138188(uint64_t a1)
{
  v2 = sub_1C213FEA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21381C4(uint64_t a1)
{
  v2 = sub_1C213FEA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

AuthenticationServicesCore::ASCPublicKeyCredentialRegistrationExtensionOutputs::LargeBlob_optional __swiftcall ASCTAPLargeBlobExtensionOutput.toASCRegistration()()
{
  v2 = *v1;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 & 1;
  }

  *v0 = v3;
  return result;
}

void ASCTAPLargeBlobExtensionOutput.toASCAssertion()(uint64_t a1@<X8>)
{
  v3 = v1[24];
  if (v3 != 2)
  {
    *a1 = v3 & 1;
    *(a1 + 8) = 0;
    v6 = 1;
    goto LABEL_5;
  }

  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 4);
  v10 = v1[40];
  v4 = ASCTAPLargeBlobExtensionOutput.uncompressedBlob.getter();
  if (v5 >> 60 == 15)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v6 = -1;
LABEL_5:
    *(a1 + 16) = v6;
    return;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
}

uint64_t ASCTAPExtensionOutput.encode(to:)(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24638, &qword_1C217B958);
  v29 = *(v27 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  v24 = *(v1 + 56);
  v25 = v9;
  v10 = *(v1 + 64);
  v22 = *(v1 + 72);
  v23 = v10;
  v21 = *(v1 + 80);
  v36 = *(v1 + 88);
  v11 = a1[3];
  v26 = a1[4];
  v12 = *(v1 + 40);
  v13 = a1;
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  sub_1C213FE60(v4, v5, v6);
  sub_1C213FEA0();
  v16 = v27;
  sub_1C2171484();
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v12;
  v37 = 0;
  sub_1C213FEF4();
  v17 = v28;
  sub_1C2171264();
  sub_1C213FF48(v30, v31, v32);
  if (v17)
  {
    return (*(v29 + 8))(v15, v16);
  }

  v19 = v29;
  v30 = v25;
  v31 = v24;
  v32 = v23;
  v33 = v22;
  v34 = v21;
  v37 = 1;
  sub_1C213FE7C(v25, v24, v23, v22, v21);
  sub_1C213FF64();
  sub_1C2171264();
  sub_1C213FFB8(v30, v31, v32, v33, v34);
  LOBYTE(v30) = 2;
  sub_1C2171234();
  return (*(v19 + 8))(v15, v16);
}

uint64_t ASCTAPExtensionOutput.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24658, &qword_1C217B960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FEA0();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v29) = 0;
  sub_1C213FFDC();
  sub_1C21711A4();
  v26 = *(&v34 + 1);
  v11 = v34;
  v27 = v35;
  v28 = v36;
  v42 = v37;
  LOBYTE(v29) = 1;
  sub_1C2140030();
  sub_1C21711A4();
  v23 = v34;
  v24 = v35;
  v25 = v36;
  v43 = 2;
  v12 = sub_1C2171174();
  (*(v6 + 8))(v9, v5);
  v22 = v11;
  *&v29 = v11;
  v13 = v26;
  *(&v29 + 1) = v26;
  v16 = v27;
  v14 = v16 >> 64;
  v15 = v16;
  v30 = v27;
  v17 = v28;
  *&v31 = v28;
  LOBYTE(v11) = v42;
  BYTE8(v31) = v42;
  v32 = v23;
  *v33 = v24;
  *&v33[16] = v25;
  v33[24] = v12;
  v18 = v23;
  a2[2] = v31;
  a2[3] = v18;
  a2[4] = *v33;
  *(a2 + 73) = *&v33[9];
  v19 = v30;
  *a2 = v29;
  a2[1] = v19;
  sub_1C20F4C50(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *&v34 = v22;
  *(&v34 + 1) = v13;
  v35 = __PAIR128__(v14, v15);
  v36 = v17;
  v37 = v11;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v41 = v12;
  return sub_1C20F4BA0(&v34);
}

uint64_t ASCTAPLargeBlobExtensionOutput.compressedBlob.getter()
{
  v1 = *(v0 + 8);
  sub_1C20B22B8(v1, *(v0 + 16));
  return v1;
}

uint64_t ASCTAPLargeBlobExtensionOutput.originalSize.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t ASCTAPLargeBlobExtensionOutput.uncompressedBlob.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 >> 60 != 15)
  {
    sub_1C20D865C(*(v0 + 8), *(v0 + 16));
    v3 = sub_1C2170054();
    sub_1C20B23C8(v1, v2);
    return v3;
  }

  return v1;
}

uint64_t sub_1C2138BF0()
{
  v1 = 0x6574726F70707573;
  v2 = 0x6E657474697277;
  if (*v0 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 1651469410;
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

uint64_t sub_1C2138C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2142D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2138C98(uint64_t a1)
{
  v2 = sub_1C2140084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2138CD4(uint64_t a1)
{
  v2 = sub_1C2140084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPLargeBlobExtensionOutput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24670, &qword_1C217B968);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - v7;
  v10 = a1[3];
  v9 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1C2140084();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  v12 = v5;
  v13 = v47;
  LOBYTE(v49) = 0;
  v51 = sub_1C2171174();
  LOBYTE(v49) = 2;
  v46 = sub_1C2171174();
  v52 = 1;
  sub_1C20D8E24();
  sub_1C21711A4();
  v15 = v8;
  v16 = v49;
  v17 = v50;
  LOBYTE(v49) = 3;
  v18 = sub_1C2171194();
  v44 = v16;
  v45 = v15;
  if ((v19 & 1) == 0)
  {
    if (v17 >> 60 == 15)
    {
      v23 = sub_1C2170F74();
      swift_allocError();
      v25 = v24;
      v26 = v4;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24580, &qword_1C217B8F0) + 48);
      *(v25 + 24) = &type metadata for ASCTAPLargeBlobExtensionOutput.CodingKeys;
      *(v25 + 32) = v11;
      *v25 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24588, &qword_1C217B8F8);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C21768E0;
      *(v28 + 56) = &type metadata for ASCTAPLargeBlobExtensionOutput.CodingKeys;
      *(v28 + 64) = v11;
      *(v28 + 32) = 1;
      sub_1C2170F64();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF0], v23);
      swift_willThrow();
      (*(v12 + 8))(v45, v26);
      return __swift_destroy_boxed_opaque_existential_0Tm(v48);
    }

    v20 = v17;
    v32 = v18;
    (*(v12 + 8))(v45, v4);
    v21 = v32;
    v22 = 0;
    goto LABEL_11;
  }

  v20 = v17;
  if (v17 >> 60 == 15)
  {
    (*(v12 + 8))(v45, v4);
    v21 = 0;
    v22 = 1;
LABEL_11:
    v33 = v51;
    v34 = v46;
    v35 = v44;
LABEL_12:
    *v13 = v33;
    *(v13 + 8) = v35;
    *(v13 + 16) = v20;
    *(v13 + 24) = v34;
    *(v13 + 32) = v21;
    *(v13 + 40) = v22;
    return __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  v29 = v44;
  sub_1C20D865C(v44, v17);
  v30 = sub_1C2170044();
  v36 = v29;
  v35 = v30;
  v37 = v31;
  sub_1C20B23C8(v36, v17);
  (*(v12 + 8))(v45, v4);
  v38 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v38 != 2)
    {
      sub_1C20B23C8(v44, v17);
      v21 = 0;
      v22 = 0;
      goto LABEL_25;
    }

    v40 = *(v44 + 16);
    v39 = *(v44 + 24);
    result = sub_1C20B23C8(v44, v17);
    v21 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v38)
  {
    sub_1C20B23C8(v44, v17);
    v22 = 0;
    v21 = BYTE6(v17);
LABEL_25:
    v20 = v37;
    v33 = v51;
    v34 = v46;
    goto LABEL_12;
  }

  v41 = v44;
  v42 = HIDWORD(v44);
  result = sub_1C20B23C8(v44, v17);
  LODWORD(v21) = v42 - v41;
  if (__OFSUB__(v42, v41))
  {
    goto LABEL_27;
  }

  v21 = v21;
LABEL_22:
  v33 = v51;
  v34 = v46;
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v20 = v37;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t ASCTAPLargeBlobExtensionOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24680, &qword_1C217B970);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  *&v35 = *(v1 + 1);
  *(&v35 + 1) = v8;
  v40 = v1[24];
  v34 = *(v1 + 4);
  HIDWORD(v33) = v1[40];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1C2171474();
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2171054();
  v12 = __swift_project_value_buffer(v11, qword_1EBF25218);
  v13 = v12;
  if (*(v10 + 16) && (v14 = sub_1C2122198(v12), (v15 & 1) != 0))
  {
    sub_1C20DA01C(*(v10 + 56) + 32 * v14, &v38);

    if (swift_dynamicCast())
    {
      v16 = v41;
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1C2140084();
      sub_1C2171484();
      LOBYTE(v38) = 0;
      v18 = v36;
      sub_1C2171234();
      if (v18)
      {
        return (*(v37 + 8))(v6, v3);
      }

      LOBYTE(v38) = 2;
      sub_1C2171234();
      v19 = *(&v35 + 1);
      if (*(&v35 + 1) >> 60 == 15)
      {
        return (*(v37 + 8))(v6, v3);
      }

      if (v16)
      {
        v28 = v35;
        sub_1C20D865C(v35, *(&v35 + 1));
        *&v38 = sub_1C2170054();
        *(&v38 + 1) = v30;
        v41 = 1;
        v31 = v38;
        v32 = v30;
        sub_1C20D8CEC();
        sub_1C2171294();
        (*(v37 + 8))(v6, v3);
        sub_1C20B23C8(v28, v19);
        return sub_1C20D3174(v31, v32);
      }

      else
      {
        v29 = v35;
        v38 = v35;
        v41 = 1;
        sub_1C20D865C(v35, *(&v35 + 1));
        sub_1C20D8CEC();
        sub_1C2171294();
        *&v38 = v34;
        BYTE8(v38) = BYTE4(v33);
        v41 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245A0, &qword_1C217B918);
        sub_1C213F9AC();
        sub_1C2171294();
        (*(v37 + 8))(v6, v3);
        return sub_1C20B23C8(v29, v19);
      }
    }
  }

  else
  {
  }

  v21 = sub_1C2170F94();
  swift_allocError();
  v23 = v22;
  v24 = sub_1C2171474();
  if (*(v24 + 16) && (v25 = sub_1C2122198(v13), (v26 & 1) != 0))
  {
    sub_1C20DA01C(*(v24 + 56) + 32 * v25, &v38);

    sub_1C20F5A58(&v38, v23);
  }

  else
  {

    v38 = 0u;
    v39 = 0u;
    *(v23 + 24) = MEMORY[0x1E69E6158];
    *v23 = 7104878;
    *(v23 + 8) = 0xE300000000000000;
    if (*(&v39 + 1))
    {
      sub_1C20EB498(&v38, &qword_1EBF243A0, &qword_1C217A290);
    }
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24598, &qword_1C217B910) + 48);
  sub_1C2170F64();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B30], v21);
  return swift_willThrow();
}

AuthenticationServicesCore::ASCPublicKeyCredentialClientData::OperationType_optional __swiftcall ASCPublicKeyCredentialClientData.OperationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

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

  *v2 = v5;
  return result;
}

uint64_t sub_1C213983C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEC0000007465672ELL;
  }

  else
  {
    v2 = 0xEF6574616572632ELL;
  }

  if (*a2)
  {
    v3 = 0xEC0000007465672ELL;
  }

  else
  {
    v3 = 0xEF6574616572632ELL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C2171324();
  }

  return v4 & 1;
}

uint64_t sub_1C21398E0()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2139964()
{
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C21399D4()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2139A60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C2171134();

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

void sub_1C2139ABC(void *a1@<X8>)
{
  v2 = 0xEF6574616572632ELL;
  if (*v1)
  {
    v2 = 0xEC0000007465672ELL;
  }

  *a1 = 0x6E68747561626577;
  a1[1] = v2;
}

uint64_t sub_1C2139BB8()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2139CA4()
{
  *v0;
  *v0;
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C2139D7C()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2139E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C2142EF4();
  *a2 = result;
  return result;
}

void sub_1C2139E94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xE600000000000000;
  v6 = 0x6E696769726FLL;
  v7 = 0xEB000000006E6967;
  v8 = 0x69724F73736F7263;
  if (v2 != 3)
  {
    v8 = 0x696769724F706F74;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E656C6C616863;
    v3 = 0xE900000000000065;
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

uint64_t sub_1C2139F3C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6E696769726FLL;
  v4 = 0x69724F73736F7263;
  if (v1 != 3)
  {
    v4 = 0x696769724F706F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E656C6C616863;
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

uint64_t sub_1C2139FE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2142EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1C213A024(uint64_t a1)
{
  v2 = sub_1C21400D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213A060(uint64_t a1)
{
  v2 = sub_1C21400D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *ASCPublicKeyCredentialClientData.init(operationType:challenge:origin:topOrigin:isCrossOrigin:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 40) = a8;
  return result;
}

uint64_t ASCPublicKeyCredentialClientData.toWebAuthnJSON()()
{
  v1 = sub_1C2170964();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  LODWORD(v4) = *v0;
  v6 = *(v0 + 1);
  v31 = *(v0 + 2);
  v32 = v6;
  v7 = *(v0 + 3);
  v29 = *(v0 + 4);
  v30 = v7;
  if (v4)
  {
    v8 = 0xEC0000007465672ELL;
  }

  else
  {
    v8 = 0xEF6574616572632ELL;
  }

  if (v0[40])
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v0[40])
  {
    v10 = 0xE400000000000000;
  }

  v27 = v10;
  v28 = v9;
  v11 = *(v0 + 7);
  v26 = *(v0 + 6);
  v35 = 123;
  v36 = 0xE100000000000000;
  do
  {
    v12 = byte_1F419D990[v5 + 32];
    if (v12 <= 1)
    {
      v33 = 34;
      v34 = 0xE100000000000000;
      if (v12)
      {
        v17 = sub_1C2170074();
        MEMORY[0x1C6913CB0](v17);

        MEMORY[0x1C6913CB0](34, 0xE100000000000000);
        v13 = v33;
        v14 = v34;
        v15 = 0x676E656C6C616863;
        v16 = 0xE900000000000065;
      }

      else
      {
        MEMORY[0x1C6913CB0](0x6E68747561626577, v8);

        MEMORY[0x1C6913CB0](34, 0xE100000000000000);
        v13 = v33;
        v14 = v34;
        v16 = 0xE400000000000000;
        v15 = 1701869940;
      }

      goto LABEL_20;
    }

    if (v12 == 2)
    {
      v33 = 34;
      v34 = 0xE100000000000000;
      MEMORY[0x1C6913CB0](v30, v29);
      MEMORY[0x1C6913CB0](34, 0xE100000000000000);
      v13 = v33;
      v14 = v34;
      v16 = 0xE600000000000000;
      v15 = 0x6E696769726FLL;
LABEL_20:
      v33 = 34;
      goto LABEL_21;
    }

    if (v12 != 3)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v33 = 34;
      v34 = 0xE100000000000000;
      MEMORY[0x1C6913CB0](v26, v11);
      MEMORY[0x1C6913CB0](34, 0xE100000000000000);
      v13 = v33;
      v14 = v34;
      v16 = 0xE90000000000006ELL;
      v15 = 0x696769724F706F74;
      goto LABEL_20;
    }

    v33 = 34;
    v14 = v27;
    v13 = v28;
    v15 = 0x69724F73736F7263;
    v16 = 0xEB000000006E6967;
LABEL_21:
    v34 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v15, v16);

    MEMORY[0x1C6913CB0](14882, 0xE200000000000000);
    MEMORY[0x1C6913CB0](v13, v14);

    MEMORY[0x1C6913CB0](44, 0xE100000000000000);
    MEMORY[0x1C6913CB0](v33, v34);

LABEL_22:
    ++v5;
  }

  while (v5 != 5);
  sub_1C213A448(v3);

  MEMORY[0x1C6913CB0](125, 0xE100000000000000);
  v18 = v23;
  sub_1C2170954();
  v19 = sub_1C2170924();
  v21 = v20;
  result = (*(v24 + 8))(v18, v25);
  if (v21 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    return v19;
  }

  return result;
}

uint64_t sub_1C213A448(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1C21709D4();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t ASCPublicKeyCredentialClientData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24688, &qword_1C217B978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C21400D8();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v27) = 0;
  sub_1C214012C();
  sub_1C21711D4();
  v11 = v31;
  LOBYTE(v27) = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v25 = v31;
  v26 = v32;
  LOBYTE(v31) = 2;
  v23 = sub_1C21711B4();
  v24 = v12;
  LOBYTE(v31) = 3;
  v39 = sub_1C2171174();
  v40 = 4;
  v13 = sub_1C2171164();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  LOBYTE(v27) = v11;
  v17 = v25;
  v16 = v26;
  *(&v27 + 1) = v25;
  *&v28 = v26;
  v18 = v24;
  *(&v28 + 1) = v23;
  *&v29 = v24;
  BYTE8(v29) = v39;
  *&v30 = v13;
  *(&v30 + 1) = v15;
  v19 = v28;
  *a2 = v27;
  a2[1] = v19;
  v20 = v30;
  a2[2] = v29;
  a2[3] = v20;
  sub_1C2140180(&v27, &v31);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  LOBYTE(v31) = v11;
  v32 = v17;
  v33 = v16;
  v34 = v23;
  v35 = v18;
  v36 = v39;
  v37 = v13;
  v38 = v15;
  return sub_1C21401B8(&v31);
}

uint64_t sub_1C213A818(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C213D51C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C20D3174(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1C2121D58(v14, a3, a4, &v13);
  v10 = v4;
  sub_1C20D3174(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1C213A9A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_1C2121F88(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
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

BOOL sub_1C213AADC(uint64_t a1, uint64_t a2)
{
  v79[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_109:
    result = 1;
    goto LABEL_121;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_120;
  }

  v4 = 0;
  v72 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v70 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v9 = __clz(__rbit64(v8));
        v74 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v10 = v4;
      do
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v4 >= v70)
        {
          goto LABEL_109;
        }

        v11 = *(v5 + 8 * v4);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v74 = (v11 - 1) & v11;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v3 + 56) + 32 * v12);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      sub_1C20D865C(*v13, v15);
      v77 = v18;
      sub_1C20D865C(v18, v17);
      v21 = v19;
      sub_1C20B22B8(v19, v20);
      result = v15 >> 60 == 15;
      if (v15 >> 60 == 15)
      {
        goto LABEL_121;
      }

      v23 = sub_1C21220D8(v14, v15);
      v25 = v24;
      sub_1C20D3174(v14, v15);
      if ((v25 & 1) == 0)
      {
        sub_1C20D3174(v77, v17);
        v65 = v21;
        goto LABEL_115;
      }

      v26 = (*(v2 + 56) + 32 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[3];
      v75 = v26[2];
      v30 = v28 >> 62;
      v31 = v17 >> 62;
      v32 = v21;
      v73 = v27;
      if (v28 >> 62 == 3)
      {
        if (v27)
        {
          v33 = 0;
        }

        else
        {
          v33 = v28 == 0xC000000000000000;
        }

        v34 = 0;
        v35 = v33 && v17 >> 62 == 3;
        if (v35 && !v77 && v17 == 0xC000000000000000)
        {
          v17 = 0xC000000000000000;
          sub_1C20D865C(0, 0xC000000000000000);
          v77 = 0;
          goto LABEL_49;
        }

LABEL_36:
        if (v31 <= 1)
        {
LABEL_37:
          if (!v31)
          {
            v39 = BYTE6(v17);
            goto LABEL_43;
          }

          LODWORD(v39) = HIDWORD(v77) - v77;
          if (!__OFSUB__(HIDWORD(v77), v77))
          {
            v39 = v39;
            goto LABEL_43;
          }

LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
        }
      }

      else if (v30 > 1)
      {
        if (v30 == 2)
        {
          v41 = *(v27 + 16);
          v40 = *(v27 + 24);
          v38 = __OFSUB__(v40, v41);
          v34 = v40 - v41;
          if (!v38)
          {
            goto LABEL_36;
          }

          goto LABEL_126;
        }

        v34 = 0;
        if (v31 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v30)
      {
        LODWORD(v34) = HIDWORD(v27) - v27;
        if (__OFSUB__(HIDWORD(v27), v27))
        {
          goto LABEL_125;
        }

        v34 = v34;
        if (v31 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v34 = BYTE6(v28);
        if (v31 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v31 != 2)
      {
        if (!v34)
        {
LABEL_48:
          sub_1C20D865C(v27, v28);
LABEL_49:
          v42 = v75;
          sub_1C20B22B8(v75, v29);
          goto LABEL_71;
        }

LABEL_111:
        sub_1C20D3174(v77, v17);
        goto LABEL_114;
      }

      v37 = *(v77 + 16);
      v36 = *(v77 + 24);
      v38 = __OFSUB__(v36, v37);
      v39 = v36 - v37;
      if (v38)
      {
        goto LABEL_123;
      }

LABEL_43:
      if (v34 != v39)
      {
        goto LABEL_111;
      }

      if (v34 < 1)
      {
        goto LABEL_48;
      }

      v69 = v2;
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v43 = *(v27 + 16);
          v68 = *(v27 + 24);
          sub_1C20D865C(v27, v28);
          sub_1C20B22B8(v75, v29);
          v44 = sub_1C216FDD4();
          if (v44)
          {
            v45 = sub_1C216FE04();
            if (__OFSUB__(v43, v45))
            {
              goto LABEL_133;
            }

            v44 += v43 - v45;
          }

          if (__OFSUB__(v68, v43))
          {
            goto LABEL_130;
          }

          sub_1C216FDF4();
          v46 = v44;
          v47 = v77;
          v48 = v17;
          v49 = v72;
          goto LABEL_66;
        }

        memset(v79, 0, 14);
        sub_1C20D865C(v27, v28);
        v42 = v75;
        sub_1C20B22B8(v75, v29);
LABEL_69:
        v49 = v72;
        sub_1C2121D58(v79, v77, v17, &v78);
        if (v78)
        {
          goto LABEL_70;
        }

LABEL_117:
        sub_1C20D3174(v77, v17);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v73, v28);
        goto LABEL_118;
      }

      if (!v30)
      {
        v79[0] = v27;
        LOWORD(v79[1]) = v28;
        BYTE2(v79[1]) = BYTE2(v28);
        BYTE3(v79[1]) = BYTE3(v28);
        BYTE4(v79[1]) = BYTE4(v28);
        BYTE5(v79[1]) = BYTE5(v28);
        sub_1C20D865C(v27, v28);
        v42 = v75;
        sub_1C20B22B8(v75, v29);
        goto LABEL_69;
      }

      v50 = v27;
      if (v27 >> 32 < v27)
      {
        goto LABEL_129;
      }

      sub_1C20D865C(v27, v28);
      sub_1C20B22B8(v75, v29);
      v51 = sub_1C216FDD4();
      if (v51)
      {
        v52 = sub_1C216FE04();
        if (__OFSUB__(v50, v52))
        {
          goto LABEL_134;
        }

        v51 += v50 - v52;
      }

      v49 = v72;
      sub_1C216FDF4();
      v46 = v51;
      v47 = v77;
      v48 = v17;
LABEL_66:
      sub_1C2121D58(v46, v47, v48, v79);
      v32 = v21;
      v42 = v75;
      if ((v79[0] & 1) == 0)
      {
        goto LABEL_117;
      }

LABEL_70:
      v72 = v49;
      v2 = v69;
LABEL_71:
      if (v29 >> 60 == 15)
      {
        break;
      }

      if (v20 >> 60 == 15)
      {
        sub_1C20B22B8(v42, v29);
        sub_1C20B22B8(v32, v20);
        sub_1C20D3174(v77, v17);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v73, v28);
        sub_1C20B23C8(v42, v29);
        goto LABEL_113;
      }

      v53 = v29 >> 62;
      v54 = v20 >> 62;
      if (v29 >> 62 == 3)
      {
        if (v42)
        {
          v55 = 0;
        }

        else
        {
          v55 = v29 == 0xC000000000000000;
        }

        v56 = 0;
        v57 = v55 && v20 >> 62 == 3;
        if (v57 && !v32 && v20 == 0xC000000000000000)
        {
          sub_1C20B22B8(0, 0xC000000000000000);
          sub_1C20B22B8(0, 0xC000000000000000);
          sub_1C20B23C8(0, 0xC000000000000000);
          sub_1C20D3174(v77, v17);
          sub_1C20B23C8(0, 0xC000000000000000);
          sub_1C20D3174(v73, v28);
          sub_1C20B23C8(0, 0xC000000000000000);
          v58 = 0;
          v59 = 0xC000000000000000;
          goto LABEL_108;
        }

LABEL_93:
        if (v54 <= 1)
        {
          goto LABEL_94;
        }

        goto LABEL_99;
      }

      if (v53 == 2)
      {
        v61 = *(v42 + 16);
        v60 = *(v42 + 24);
        v38 = __OFSUB__(v60, v61);
        v56 = v60 - v61;
        if (v38)
        {
          goto LABEL_132;
        }

        goto LABEL_93;
      }

      if (v53 == 1)
      {
        LODWORD(v56) = HIDWORD(v42) - v42;
        if (__OFSUB__(HIDWORD(v42), v42))
        {
          goto LABEL_131;
        }

        v56 = v56;
        if (v54 <= 1)
        {
LABEL_94:
          if (v54)
          {
            LODWORD(v62) = HIDWORD(v32) - v32;
            if (__OFSUB__(HIDWORD(v32), v32))
            {
              goto LABEL_128;
            }

            v62 = v62;
          }

          else
          {
            v62 = BYTE6(v20);
          }

          goto LABEL_101;
        }
      }

      else
      {
        v56 = BYTE6(v29);
        if (v54 <= 1)
        {
          goto LABEL_94;
        }
      }

LABEL_99:
      if (v54 != 2)
      {
        if (v56)
        {
LABEL_116:
          sub_1C20B22B8(v42, v29);
          sub_1C20B22B8(v32, v20);
          sub_1C20B23C8(v32, v20);
          sub_1C20D3174(v77, v17);
          sub_1C20B23C8(v32, v20);
          sub_1C20D3174(v73, v28);
          sub_1C20B23C8(v42, v29);
LABEL_118:
          v65 = v42;
          v66 = v29;
          goto LABEL_119;
        }

LABEL_106:
        sub_1C20B22B8(v42, v29);
        sub_1C20B22B8(v32, v20);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v77, v17);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v73, v28);
        sub_1C20B23C8(v42, v29);
        goto LABEL_107;
      }

      v64 = *(v32 + 16);
      v63 = *(v32 + 24);
      v38 = __OFSUB__(v63, v64);
      v62 = v63 - v64;
      if (v38)
      {
        goto LABEL_127;
      }

LABEL_101:
      if (v56 != v62)
      {
        goto LABEL_116;
      }

      if (v56 < 1)
      {
        goto LABEL_106;
      }

      sub_1C20B22B8(v42, v29);
      sub_1C20B22B8(v32, v20);
      sub_1C20B22B8(v32, v20);
      v76 = sub_1C213A818(v42, v29, v32, v20);
      sub_1C20D3174(v77, v17);
      sub_1C20B23C8(v32, v20);
      sub_1C20D3174(v73, v28);
      sub_1C20B23C8(v42, v29);
      sub_1C20B23C8(v32, v20);
      sub_1C20B23C8(v42, v29);
      v3 = a1;
      v8 = v74;
      result = 0;
      if ((v76 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    sub_1C20B22B8(v42, v29);
    sub_1C20B22B8(v32, v20);
    sub_1C20D3174(v77, v17);
    sub_1C20B23C8(v32, v20);
    sub_1C20D3174(v73, v28);
    sub_1C20B23C8(v42, v29);
    if (v20 >> 60 != 15)
    {
      break;
    }

LABEL_107:
    v58 = v42;
    v59 = v29;
LABEL_108:
    sub_1C20B23C8(v58, v59);
    v3 = a1;
    v8 = v74;
  }

LABEL_113:
  sub_1C20B23C8(v42, v29);
LABEL_114:
  v65 = v32;
LABEL_115:
  v66 = v20;
LABEL_119:
  sub_1C20B23C8(v65, v66);
LABEL_120:
  result = 0;
LABEL_121:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C213B3DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
  result = sub_1C21710F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1C2170CE4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C213B644(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24830, &unk_1C217E120);
  v38 = a2;
  result = sub_1C21710F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C213B8EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
  result = sub_1C21710F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = (*(v5 + 56) + 32 * v22);
      v35 = v24[1];
      v36 = *v24;
      v37 = v23;
      if ((a2 & 1) == 0)
      {
        sub_1C20D865C(v23, *(&v23 + 1));
        sub_1C20D865C(v36, *(&v36 + 1));
        sub_1C20B22B8(v35, *(&v35 + 1));
      }

      v25 = *(v8 + 40);
      sub_1C2171434();
      sub_1C2170184();
      result = sub_1C2171454();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v17 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v17 = v37;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v36;
      v18[1] = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C213BBB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24888, &qword_1C217E168);
  v39 = a2;
  result = sub_1C21710F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C213BE5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24880, &qword_1C217E160);
  v40 = a2;
  result = sub_1C21710F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 40 * v22);
      v26 = v25[1];
      v43 = *v25;
      v44 = *v23;
      v27 = v25[3];
      v42 = v25[2];
      v28 = v25[4];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 40 * v16);
      *v18 = v43;
      v18[1] = v26;
      v18[2] = v42;
      v18[3] = v27;
      v18[4] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C213C154(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24878, &qword_1C217E158);
  v38 = a2;
  result = sub_1C21710F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C213C3FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
    v2 = sub_1C2171104();
    v20 = v2;
    sub_1C2171074();
    v3 = sub_1C21710A4();
    if (v3)
    {
      v4 = v3;
      sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1C213B3DC(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1C2170CE4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1C21710A4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

id sub_1C213C628(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C21221FC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1C213B3DC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1C21221FC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
        sub_1C2171374();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1C213CC28();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1C213C7A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C2121F88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C213B644(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1C2121F88(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1C2171374();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C213CD88();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1C213C91C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C2121F88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C213BE5C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1C2121F88(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1C2171374();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C213D204();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1C2142FB8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_1C213CAAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C2121F88(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C213C154(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1C2121F88(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1C2171374();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C213D3AC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

id sub_1C213CC28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
  v2 = *v0;
  v3 = sub_1C21710E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C213CD88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24830, &unk_1C217E120);
  v2 = *v0;
  v3 = sub_1C21710E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C213CEF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
  v2 = *v0;
  v3 = sub_1C21710E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v17 *= 32;
        v19 = (*(v2 + 56) + v17);
        v20 = *(*(v2 + 48) + v18);
        v23 = *v19;
        v21 = *v19;
        v24 = v19[1];
        *(*(v4 + 48) + v18) = v20;
        v22 = (*(v4 + 56) + v17);
        *v22 = v21;
        v22[1] = v24;
        sub_1C20D865C(v20, *(&v20 + 1));
        sub_1C20D865C(v23, *(&v23 + 1));
        result = sub_1C20B22B8(v24, *(&v24 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C213D098()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24888, &qword_1C217E168);
  v2 = *v0;
  v3 = sub_1C21710E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C213D204()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24880, &qword_1C217E160);
  v2 = *v0;
  v3 = sub_1C21710E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = (*(v4 + 56) + v17);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C213D3AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24878, &qword_1C217E158);
  v2 = *v0;
  v3 = sub_1C21710E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C213D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C216FDD4();
  v11 = result;
  if (result)
  {
    result = sub_1C216FE04();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C216FDF4();
  sub_1C2121D58(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL _s26AuthenticationServicesCore29ASCTAPLargeBlobExtensionInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1C2171324() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }

LABEL_13:
    if (v5 >> 60 == 15)
    {
      if (v11 >> 60 == 15)
      {
        sub_1C20B22B8(v6, v5);
        sub_1C20B22B8(v12, v11);
        sub_1C20B23C8(v6, v5);
LABEL_21:
        if ((v8 & 1) == 0)
        {
          if (v7 == v13)
          {
            v17 = v14;
          }

          else
          {
            v17 = 1;
          }

          return (v17 & 1) == 0;
        }

        return (v14 & 1) != 0;
      }
    }

    else if (v11 >> 60 != 15)
    {
      sub_1C20B22B8(v6, v5);
      sub_1C20B22B8(v12, v11);
      v16 = sub_1C21068CC(v6, v5, v12, v11);
      sub_1C20B23C8(v12, v11);
      sub_1C20B23C8(v6, v5);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    sub_1C20B22B8(v6, v5);
    sub_1C20B22B8(v12, v11);
    sub_1C20B23C8(v6, v5);
    sub_1C20B23C8(v12, v11);
    return 0;
  }

  result = 0;
  if (v10 != 2 && ((v10 ^ v4) & 1) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

BOOL sub_1C213D784(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((sub_1C21068CC(a1, a2, a5, a6) & 1) == 0)
  {
    return 0;
  }

  if (a4 >> 60 == 15)
  {
    if (a8 >> 60 == 15)
    {
      sub_1C20B22B8(a3, a4);
      sub_1C20B22B8(a7, a8);
      sub_1C20B23C8(a3, a4);
      return 1;
    }

    goto LABEL_6;
  }

  if (a8 >> 60 == 15)
  {
LABEL_6:
    sub_1C20B22B8(a3, a4);
    sub_1C20B22B8(a7, a8);
    sub_1C20B23C8(a3, a4);
    sub_1C20B23C8(a7, a8);
    return 0;
  }

  sub_1C20B22B8(a3, a4);
  sub_1C20B22B8(a7, a8);
  v13 = sub_1C21068CC(a3, a4, a7, a8);
  sub_1C20B23C8(a7, a8);
  sub_1C20B23C8(a3, a4);
  return (v13 & 1) != 0;
}

BOOL _s26AuthenticationServicesCore23ASCTAPPRFExtensionInputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (v2 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      v15 = a1[4];
      sub_1C20B22CC(v3, v2, v5, v4);
      sub_1C20B22CC(v8, v7, v10, v9);
      sub_1C20B23DC(v3, v2, v5, v4);
      goto LABEL_8;
    }

LABEL_5:
    sub_1C20B22CC(*a1, v2, v5, v4);
    sub_1C20B22CC(v8, v7, v10, v9);
    sub_1C20B23DC(v3, v2, v5, v4);
    sub_1C20B23DC(v8, v7, v10, v9);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v15 = a1[4];
  sub_1C20B22CC(v3, v2, v5, v4);
  sub_1C20B22CC(v8, v7, v10, v9);
  v13 = sub_1C213D784(v3, v2, v5, v4, v8, v7, v10, v9);
  sub_1C20B23DC(v8, v7, v10, v9);
  sub_1C20B23DC(v3, v2, v5, v4);
  if (!v13)
  {
    return 0;
  }

LABEL_8:
  if (v15)
  {
    if (v11)
    {

      v14 = sub_1C213AADC(v15, v11);

      if (v14)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v11;
}

BOOL _s26AuthenticationServicesCore20ASCTAPExtensionInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v51 = *(a1 + 56);
  v52 = *(a1 + 64);
  v54 = *(a1 + 72);
  v56 = *(a1 + 80);
  v50 = *(a1 + 88);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v46 = *(a2 + 56);
  v47 = *(a2 + 64);
  v48 = *(a2 + 72);
  v49 = *(a2 + 80);
  v45 = *(a2 + 88);
  if (v3 == 1)
  {
    v58 = *(a2 + 16);
    v60 = *(a2 + 40);
    v61 = *(a2 + 24);
    v16 = *(a1 + 24);
    v17 = *a1;
    v18 = *(a2 + 8);
    sub_1C20D87AC(v2, 1, v5, v4, v7);
    if (v18 == 1)
    {
      sub_1C20D87AC(v10, 1, v58, v61, v13);
      sub_1C20D8840(v17, 1, v5, v16, v7);
      goto LABEL_9;
    }

    v55 = v13;
    v57 = v10;
    v21 = v10;
    v20 = v58;
    v53 = v18;
    sub_1C20D87AC(v21, v18, v58, v61, v13);
    goto LABEL_7;
  }

  v69 = *a1;
  v70 = v3;
  v71 = v5;
  v72 = v4;
  v73 = v7;
  v74 = v6;
  v75 = v8;
  if (v9 == 1)
  {
    v59 = v11;
    v61 = v12;
    v16 = v4;
    v17 = v2;
    v53 = 1;
    sub_1C20D87AC(v2, v3, v5, v4, v7);
    v55 = v13;
    v57 = v10;
    v19 = v10;
    v20 = v59;
    sub_1C20D87AC(v19, 1, v59, v61, v13);
    sub_1C20D87AC(v17, v3, v5, v16, v7);

    sub_1C20B23C8(v16, v7);
LABEL_7:
    sub_1C20D8840(v17, v3, v5, v16, v7);
    sub_1C20D8840(v57, v53, v20, v61, v55);
    return 0;
  }

  v62 = v10;
  v63 = v9;
  LOBYTE(v64) = v11;
  v65 = v12;
  v66 = v13;
  v67 = v14;
  v68 = v15 & 1;
  v22 = v5;
  v43 = v4;
  v44 = v5;
  v23 = v11;
  v24 = v2;
  v25 = v9;
  sub_1C20D87AC(v2, v3, v22, v4, v7);
  sub_1C20D87AC(v10, v25, v23, v12, v13);
  sub_1C20D87AC(v24, v3, v44, v43, v7);
  v26 = _s26AuthenticationServicesCore29ASCTAPLargeBlobExtensionInputV2eeoiySbAC_ACtFZ_0(&v69, &v62);
  v27 = v65;
  v28 = v66;

  sub_1C20B23C8(v27, v28);
  v29 = v72;
  v30 = v73;

  sub_1C20B23C8(v29, v30);
  sub_1C20D8840(v24, v3, v44, v43, v7);
  if (!v26)
  {
    return 0;
  }

LABEL_9:
  if (v50 != 1)
  {
    v32 = v51;
    v31 = v52;
    v69 = v51;
    v70 = v52;
    v34 = v54;
    v33 = v56;
    v71 = v54;
    v72 = v56;
    v73 = v50;
    v36 = v45;
    v35 = v46;
    v37 = v48;
    v40 = v49;
    v38 = v47;
    if (v45 != 1)
    {
      v62 = v46;
      v63 = v47;
      v64 = v48;
      v65 = v49;
      v66 = v45;
      sub_1C20D87FC(v51, v52, v54, v56, v50);
      sub_1C20D87FC(v46, v47, v48, v49, v45);
      sub_1C20D87FC(v51, v52, v54, v56, v50);
      v42 = _s26AuthenticationServicesCore23ASCTAPPRFExtensionInputV2eeoiySbAC_ACtFZ_0(&v69, &v62);
      sub_1C20B23DC(v62, v63, v64, v65);

      sub_1C20B23DC(v69, v70, v71, v72);

      sub_1C20D8890(v51, v52, v54, v56, v50);
      return v42;
    }

    sub_1C20D87FC(v51, v52, v54, v56, v50);
    sub_1C20D87FC(v46, v47, v48, v49, 1);
    sub_1C20D87FC(v51, v52, v54, v56, v50);
    sub_1C20B23DC(v51, v52, v54, v56);

    goto LABEL_15;
  }

  v32 = v51;
  v31 = v52;
  v34 = v54;
  v33 = v56;
  sub_1C20D87FC(v51, v52, v54, v56, 1);
  v36 = v45;
  v35 = v46;
  v38 = v47;
  v37 = v48;
  if (v45 != 1)
  {
    v40 = v49;
    sub_1C20D87FC(v46, v47, v48, v49, v45);
LABEL_15:
    sub_1C20D8890(v32, v31, v34, v33, v50);
    sub_1C20D8890(v35, v38, v37, v40, v36);
    return 0;
  }

  v39 = 1;
  sub_1C20D87FC(v46, v47, v48, v49, 1);
  sub_1C20D8890(v51, v52, v54, v56, 1);
  return v39;
}

BOOL _s26AuthenticationServicesCore14ASCTAPAuthDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v29 = *(a1 + 48);
  v6 = *(a1 + 56);
  v30 = *(a1 + 64);
  v31 = *(a1 + 32);
  v27 = *(a1 + 72);
  v28 = *(a1 + 80);
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  v35 = *(a2 + 24);
  v32 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v33 = *(a2 + 64);
  v34 = *(a2 + 40);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v11 = sub_1C21068CC(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v11 & 1) != 0 && v2 == v7 && v3 == v8)
  {
    sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D865C);
    v24 = v10;
    sub_1C20F4D00(v35, v32, v34, v9, v10, v33, sub_1C20D865C);
    if (v31 >> 60 == 15)
    {
      v13 = v29;
      v14 = v6;
      if (v32 >> 60 == 15)
      {
        sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D3174);
LABEL_7:
        if (v28 >> 60 == 15)
        {
          v15 = v26;
          if (v26 >> 60 == 15)
          {
            sub_1C20B22B8(v27, v28);
            sub_1C20B22B8(v25, v26);
            sub_1C20B23C8(v27, v28);
            return 1;
          }
        }

        else
        {
          v15 = v26;
          if (v26 >> 60 != 15)
          {
            sub_1C20B22B8(v27, v28);
            sub_1C20B22B8(v25, v26);
            v22 = sub_1C21068CC(v27, v28, v25, v26);
            sub_1C20B23C8(v25, v26);
            sub_1C20B23C8(v27, v28);
            return (v22 & 1) != 0;
          }
        }

        sub_1C20B22B8(v27, v28);
        sub_1C20B22B8(v25, v15);
        sub_1C20B23C8(v27, v28);
        sub_1C20B23C8(v25, v15);
        return 0;
      }
    }

    else
    {
      sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D865C);
      if (v32 >> 60 != 15)
      {
        if (sub_1C21068CC(v4, v31, v35, v32) & 1) != 0 && (sub_1C21068CC(v5, v29, v34, v9))
        {
          v23 = sub_1C21068CC(v6, v30, v10, v33);
          sub_1C20F4D00(v35, v32, v34, v9, v10, v33, sub_1C20D3174);
          sub_1C20D3174(v4, v31);
          sub_1C20D3174(v5, v29);
          sub_1C20D3174(v6, v30);
          sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D3174);
          if ((v23 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }

        sub_1C20F4D00(v35, v32, v34, v9, v10, v33, sub_1C20D3174);
        sub_1C20D3174(v4, v31);
        sub_1C20D3174(v5, v29);
        sub_1C20D3174(v6, v30);
        v16 = v4;
        v17 = v31;
        v18 = v5;
        v20 = v29;
        v21 = v6;
        v19 = v30;
LABEL_18:
        sub_1C20F4D00(v16, v17, v18, v20, v21, v19, sub_1C20D3174);
        return 0;
      }

      sub_1C20D3174(v4, v31);
      v13 = v29;
      sub_1C20D3174(v5, v29);
      v14 = v6;
      sub_1C20D3174(v6, v30);
    }

    sub_1C20F4D00(v4, v31, v5, v13, v14, v30, sub_1C20D3174);
    v16 = v35;
    v17 = v32;
    v19 = v33;
    v18 = v34;
    v20 = v9;
    v21 = v24;
    goto LABEL_18;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore30ASCTAPLargeBlobExtensionOutputV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a1 + 4);
  v7 = a1[40];
  v8 = *a2;
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = a2[24];
  v12 = *(a2 + 4);
  v13 = a2[40];
  if (v2 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 2 || ((v8 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_1C20B22B8(v4, v3);
      sub_1C20B22B8(v10, v9);
      v16 = sub_1C21068CC(v4, v3, v10, v9);
      sub_1C20B23C8(v10, v9);
      sub_1C20B23C8(v4, v3);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_10:
    sub_1C20B22B8(v4, v3);
    sub_1C20B22B8(v10, v9);
    sub_1C20B23C8(v4, v3);
    sub_1C20B23C8(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_1C20B22B8(v4, v3);
  sub_1C20B22B8(v10, v9);
  sub_1C20B23C8(v4, v3);
LABEL_14:
  if (v5 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }

    goto LABEL_19;
  }

  result = 0;
  if (v11 != 2 && ((v11 ^ v5) & 1) == 0)
  {
LABEL_19:
    if ((v7 & 1) == 0)
    {
      if (v6 == v12)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1;
      }

      return (v15 & 1) == 0;
    }

    return (v13 & 1) != 0;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV7ResultsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((sub_1C21068CC(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_1C20B22B8(v3, v2);
      sub_1C20B22B8(v5, v4);
      sub_1C20B23C8(v3, v2);
      return 1;
    }

    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    sub_1C20B22B8(v3, v2);
    sub_1C20B22B8(v5, v4);
    sub_1C20B23C8(v3, v2);
    sub_1C20B23C8(v5, v4);
    return 0;
  }

  sub_1C20B22B8(v3, v2);
  sub_1C20B22B8(v5, v4);
  v7 = sub_1C21068CC(v3, v2, v5, v4);
  sub_1C20B23C8(v5, v4);
  sub_1C20B23C8(v3, v2);
  return (v7 & 1) != 0;
}

BOOL _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v9 = a2[1];
  v8 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  if (v2 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v3 >> 60 == 15)
    {
      sub_1C20B22CC(v4, v3, v6, v5);
      sub_1C20B22CC(v9, v8, v11, v10);
      if (v8 >> 60 == 15)
      {
        sub_1C20B23DC(v4, v3, v6, v5);
        return 1;
      }
    }

    else
    {
      v22 = v4;
      v23 = v3;
      v24 = v6;
      v25 = v5;
      if (v8 >> 60 != 15)
      {
        v18 = v9;
        v19 = v8;
        v20 = v11;
        v21 = v10;
        sub_1C20B22CC(v4, v3, v6, v5);
        sub_1C20B22CC(v9, v8, v11, v10);
        sub_1C20B22CC(v4, v3, v6, v5);
        v13 = _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV7ResultsV2eeoiySbAE_AEtFZ_0(&v22, &v18);
        v14 = v20;
        v15 = v21;
        sub_1C20D3174(v18, v19);
        sub_1C20B23C8(v14, v15);
        v16 = v24;
        v17 = v25;
        sub_1C20D3174(v22, v23);
        sub_1C20B23C8(v16, v17);
        sub_1C20B23DC(v4, v3, v6, v5);
        return v13;
      }

      sub_1C20B22CC(v4, v3, v6, v5);
      sub_1C20B22CC(v9, v8, v11, v10);
      sub_1C20B22CC(v4, v3, v6, v5);
      sub_1C20D3174(v4, v3);
      sub_1C20B23C8(v6, v5);
    }

    sub_1C20B23DC(v4, v3, v6, v5);
    sub_1C20B23DC(v9, v8, v11, v10);
    return 0;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore21ASCTAPExtensionOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v42 = *(a1 + 48);
  v43 = *(a1 + 56);
  v44 = *(a1 + 64);
  v45 = *(a1 + 72);
  v46 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v37 = *(a2 + 48);
  v38 = *(a2 + 56);
  v39 = *(a2 + 64);
  v40 = *(a2 + 72);
  v41 = *(a2 + 80);
  v15 = *(a2 + 88);
  if (*a1 == 3)
  {
    v35 = *(a2 + 88);
    v36 = *(a1 + 88);
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    v18 = *(a2 + 8);
    sub_1C213FE60(v2, v16, v4);
    sub_1C213FE60(v10, v18, v12);
    if (v10 == 3)
    {
      sub_1C213FF48(v2, v16, v17);
      goto LABEL_8;
    }

LABEL_6:
    sub_1C213FF48(v2, v16, v17);
    sub_1C213FF48(v10, v18, v12);
    return 0;
  }

  v53 = *a1;
  v54 = v3;
  v55 = v4;
  v56 = v5;
  v57 = v6;
  v58 = v7;
  if (v10 == 3)
  {
    v19 = v3;
    v20 = v4;
    v21 = v3;
    v18 = v9;
    sub_1C213FE60(v2, v19, v4);
    sub_1C213FE60(v10, v18, v12);
    sub_1C213FE60(v2, v21, v20);
    v16 = v21;
    v17 = v20;
    sub_1C20B23C8(v21, v20);
    goto LABEL_6;
  }

  v35 = v15;
  v36 = v8;
  LOBYTE(v47) = v10;
  v48 = v9;
  v49 = v12;
  LOBYTE(v50) = v11;
  v51 = v13;
  v52 = v14 & 1;
  v22 = v4;
  v23 = v9;
  sub_1C213FE60(v2, v3, v4);
  sub_1C213FE60(v10, v23, v12);
  sub_1C213FE60(v2, v3, v22);
  v24 = _s26AuthenticationServicesCore30ASCTAPLargeBlobExtensionOutputV2eeoiySbAC_ACtFZ_0(&v53, &v47);
  sub_1C20B23C8(v48, v49);
  sub_1C20B23C8(v54, v55);
  sub_1C213FF48(v2, v3, v22);
  if (!v24)
  {
    return 0;
  }

LABEL_8:
  if (v42 == 3)
  {
    v25 = v37;
    v27 = v43;
    v26 = v44;
    v28 = v45;
    sub_1C213FE7C(v42, v43, v44, v45, v46);
    v29 = v38;
    v30 = v39;
    v32 = v40;
    v31 = v41;
    sub_1C213FE7C(v37, v38, v39, v40, v41);
    if (v37 == 3)
    {
      sub_1C213FFB8(v42, v43, v44, v45, v46);
      goto LABEL_16;
    }

LABEL_13:
    sub_1C213FFB8(v42, v27, v26, v28, v46);
    sub_1C213FFB8(v25, v29, v30, v32, v31);
    return 0;
  }

  v27 = v43;
  v26 = v44;
  v53 = v42;
  v54 = v43;
  v28 = v45;
  v55 = v44;
  v56 = v45;
  v25 = v37;
  v29 = v38;
  v57 = v46;
  v32 = v40;
  v31 = v41;
  v30 = v39;
  if (v37 == 3)
  {
    sub_1C213FE7C(v42, v43, v44, v45, v46);
    sub_1C213FE7C(v37, v38, v39, v40, v41);
    sub_1C213FE7C(v42, v43, v44, v45, v46);
    sub_1C20B23DC(v43, v44, v45, v46);
    goto LABEL_13;
  }

  LOBYTE(v47) = v37;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  sub_1C213FE7C(v42, v43, v44, v45, v46);
  sub_1C213FE7C(v37, v38, v39, v40, v41);
  sub_1C213FE7C(v42, v43, v44, v45, v46);
  v34 = _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV2eeoiySbAC_ACtFZ_0(&v53, &v47);
  sub_1C20B23DC(v48, v49, v50, v51);
  sub_1C20B23DC(v54, v55, v56, v57);
  sub_1C213FFB8(v42, v43, v44, v45, v46);
  if (!v34)
  {
    return 0;
  }

LABEL_16:
  if (v36 != 2)
  {
    return v35 != 2 && ((v35 ^ v36) & 1) == 0;
  }

  return v35 == 2;
}

uint64_t sub_1C213EDDC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1C2171324()) && (sub_1C21068CC(a1[2], a1[3], a2[2], a2[3]))
  {
    v5 = a1[4];
    v6 = a2[4];
    if (v5)
    {
      if (v6 && (sub_1C21546B8(v5, v6) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1C213EE5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF248A0, &qword_1C217E178);
    v8 = sub_1C2171114();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C20EB3E8(v10, v6, &qword_1EBF24520, &unk_1C217B8B8);
      result = sub_1C2122198(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C2171054();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1C20F5A58(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F048(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1C20FAF88(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C213F108(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1C216FE14();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C216FDC4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C21700E4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1C213F184(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1C216FE14();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1C216FDC4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1C213F208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
    v3 = sub_1C2171114();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1C21221FC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24850, &qword_1C217E140);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24858, &qword_1C217E148);
    v3 = sub_1C2171114();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24830, &unk_1C217E120);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23900, &unk_1C2177230);
    v3 = sub_1C2171114();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C20EB3E8(v4, &v13, &unk_1EBF23908, &qword_1C217B8D0);
      v5 = v13;
      v6 = v14;
      result = sub_1C2121F88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C20F5A58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F760()
{
  result = qword_1EBF24530;
  if (!qword_1EBF24530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24530);
  }

  return result;
}

unint64_t sub_1C213F7B4()
{
  result = qword_1EBF24540;
  if (!qword_1EBF24540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24540);
  }

  return result;
}

unint64_t sub_1C213F808()
{
  result = qword_1EBF24548;
  if (!qword_1EBF24548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24548);
  }

  return result;
}

unint64_t sub_1C213F85C()
{
  result = qword_1EBF24550;
  if (!qword_1EBF24550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24550);
  }

  return result;
}

unint64_t sub_1C213F8B0()
{
  result = qword_1EBF24560;
  if (!qword_1EBF24560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24560);
  }

  return result;
}

unint64_t sub_1C213F904()
{
  result = qword_1EBF24568;
  if (!qword_1EBF24568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24568);
  }

  return result;
}

unint64_t sub_1C213F958()
{
  result = qword_1EBF24578;
  if (!qword_1EBF24578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24578);
  }

  return result;
}

unint64_t sub_1C213F9AC()
{
  result = qword_1EBF245A8;
  if (!qword_1EBF245A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF245A0, &qword_1C217B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245A8);
  }

  return result;
}

unint64_t sub_1C213FA28()
{
  result = qword_1EBF245C0;
  if (!qword_1EBF245C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245C0);
  }

  return result;
}

unint64_t sub_1C213FA7C()
{
  result = qword_1EBF245C8;
  if (!qword_1EBF245C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245C8);
  }

  return result;
}

uint64_t sub_1C213FAD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C213FB18()
{
  result = qword_1EBF245D8;
  if (!qword_1EBF245D8)
  {
    sub_1C20DB8B8(255, &qword_1EBF241E8, 0x1E698F700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245D8);
  }

  return result;
}

unint64_t sub_1C213FB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      sub_1C20D865C(v5, v6);
      sub_1C20D865C(v15, *(&v15 + 1));
      sub_1C20B22B8(v14, *(&v14 + 1));
      result = sub_1C21220D8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213FCBC()
{
  result = qword_1EBF245E8;
  if (!qword_1EBF245E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245E8);
  }

  return result;
}

unint64_t sub_1C213FD10()
{
  result = qword_1EBF24600;
  if (!qword_1EBF24600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24600);
  }

  return result;
}

unint64_t sub_1C213FD64()
{
  result = qword_1EBF24618;
  if (!qword_1EBF24618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24618);
  }

  return result;
}

unint64_t sub_1C213FDB8()
{
  result = qword_1EBF24620;
  if (!qword_1EBF24620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24620);
  }

  return result;
}

unint64_t sub_1C213FE0C()
{
  result = qword_1EBF24630;
  if (!qword_1EBF24630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24630);
  }

  return result;
}

uint64_t sub_1C213FE60(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 3)
  {
    return sub_1C20B22B8(a2, a3);
  }

  return result;
}

uint64_t sub_1C213FE7C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 3)
  {
    return sub_1C20B22CC(a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1C213FEA0()
{
  result = qword_1EBF24640;
  if (!qword_1EBF24640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24640);
  }

  return result;
}

unint64_t sub_1C213FEF4()
{
  result = qword_1EBF24648;
  if (!qword_1EBF24648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24648);
  }

  return result;
}

uint64_t sub_1C213FF48(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 3)
  {
    return sub_1C20B23C8(a2, a3);
  }

  return result;
}

unint64_t sub_1C213FF64()
{
  result = qword_1EBF24650;
  if (!qword_1EBF24650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24650);
  }

  return result;
}

uint64_t sub_1C213FFB8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 3)
  {
    return sub_1C20B23DC(a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1C213FFDC()
{
  result = qword_1EBF24660;
  if (!qword_1EBF24660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24660);
  }

  return result;
}

unint64_t sub_1C2140030()
{
  result = qword_1EBF24668;
  if (!qword_1EBF24668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24668);
  }

  return result;
}

unint64_t sub_1C2140084()
{
  result = qword_1EBF24678;
  if (!qword_1EBF24678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24678);
  }

  return result;
}

unint64_t sub_1C21400D8()
{
  result = qword_1EBF24690;
  if (!qword_1EBF24690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24690);
  }

  return result;
}

unint64_t sub_1C214012C()
{
  result = qword_1EBF24698;
  if (!qword_1EBF24698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24698);
  }

  return result;
}

unint64_t sub_1C21401E8()
{
  result = qword_1EBF246A0;
  if (!qword_1EBF246A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246A0);
  }

  return result;
}

unint64_t sub_1C2140240()
{
  result = qword_1EBF246A8;
  if (!qword_1EBF246A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246A8);
  }

  return result;
}

unint64_t sub_1C2140298()
{
  result = qword_1EBF246B0;
  if (!qword_1EBF246B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246B0);
  }

  return result;
}

unint64_t sub_1C21402F0()
{
  result = qword_1EBF246B8;
  if (!qword_1EBF246B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246B8);
  }

  return result;
}

unint64_t sub_1C2140348()
{
  result = qword_1EBF246C0;
  if (!qword_1EBF246C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246C0);
  }

  return result;
}

unint64_t sub_1C21403A0()
{
  result = qword_1EBF246C8;
  if (!qword_1EBF246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246C8);
  }

  return result;
}

unint64_t sub_1C21403F8()
{
  result = qword_1EBF246D0;
  if (!qword_1EBF246D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246D0);
  }

  return result;
}

unint64_t sub_1C2140450()
{
  result = qword_1EBF246D8;
  if (!qword_1EBF246D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246D8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C21404F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 88))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C214054C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCTAPAuthData.Flags(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for ASCTAPAuthData.Flags(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1C21406D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2140728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C2140794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 96))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1C21407FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
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

uint64_t sub_1C2140890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C21408EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t sub_1C2140974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C21409D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1C2140A3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[40])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C2140A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore30ASCTAPLargeBlobExtensionOutputVSgTm(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C2140B5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C2140BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2140C3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[41])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C2140C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
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

uint64_t sub_1C2140D10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C2140D58(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1C2140E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2140E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C2140EDC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C2140F6C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C214104C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C2141094(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C2141100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1C2141148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2141198(uint64_t a1, int a2)
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

uint64_t sub_1C21411E0(uint64_t result, int a2, int a3)
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

unint64_t sub_1C2141250()
{
  result = qword_1EBF246E0;
  if (!qword_1EBF246E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246E0);
  }

  return result;
}

unint64_t sub_1C21412A8()
{
  result = qword_1EBF246E8;
  if (!qword_1EBF246E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246E8);
  }

  return result;
}

unint64_t sub_1C2141300()
{
  result = qword_1EBF246F0;
  if (!qword_1EBF246F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246F0);
  }

  return result;
}

unint64_t sub_1C2141358()
{
  result = qword_1EBF246F8;
  if (!qword_1EBF246F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246F8);
  }

  return result;
}

unint64_t sub_1C21413B0()
{
  result = qword_1EBF24700;
  if (!qword_1EBF24700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24700);
  }

  return result;
}

unint64_t sub_1C2141408()
{
  result = qword_1EBF24708;
  if (!qword_1EBF24708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24708);
  }

  return result;
}

unint64_t sub_1C2141460()
{
  result = qword_1EBF24710;
  if (!qword_1EBF24710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24710);
  }

  return result;
}

unint64_t sub_1C21414B8()
{
  result = qword_1EBF24718;
  if (!qword_1EBF24718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24718);
  }

  return result;
}

unint64_t sub_1C2141554()
{
  result = qword_1EBF24730;
  if (!qword_1EBF24730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24730);
  }

  return result;
}

unint64_t sub_1C21415AC()
{
  result = qword_1EBF24738;
  if (!qword_1EBF24738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24738);
  }

  return result;
}

unint64_t sub_1C2141604()
{
  result = qword_1EBF24740;
  if (!qword_1EBF24740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24740);
  }

  return result;
}

unint64_t sub_1C214165C()
{
  result = qword_1EBF24748;
  if (!qword_1EBF24748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24748);
  }

  return result;
}

unint64_t sub_1C21416B4()
{
  result = qword_1EBF24750;
  if (!qword_1EBF24750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24750);
  }

  return result;
}

unint64_t sub_1C214170C()
{
  result = qword_1EBF24758;
  if (!qword_1EBF24758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24758);
  }

  return result;
}

unint64_t sub_1C2141764()
{
  result = qword_1EBF24760;
  if (!qword_1EBF24760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24760);
  }

  return result;
}

unint64_t sub_1C21417BC()
{
  result = qword_1EBF24768;
  if (!qword_1EBF24768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24768);
  }

  return result;
}

unint64_t sub_1C2141814()
{
  result = qword_1EBF24770;
  if (!qword_1EBF24770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24770);
  }

  return result;
}

unint64_t sub_1C214186C()
{
  result = qword_1EBF24778;
  if (!qword_1EBF24778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24778);
  }

  return result;
}

unint64_t sub_1C21418C4()
{
  result = qword_1EBF24780;
  if (!qword_1EBF24780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24780);
  }

  return result;
}

unint64_t sub_1C214191C()
{
  result = qword_1EBF24788;
  if (!qword_1EBF24788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24788);
  }

  return result;
}

unint64_t sub_1C2141974()
{
  result = qword_1EBF24790;
  if (!qword_1EBF24790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24790);
  }

  return result;
}

unint64_t sub_1C21419CC()
{
  result = qword_1EBF24798;
  if (!qword_1EBF24798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24798);
  }

  return result;
}

unint64_t sub_1C2141A24()
{
  result = qword_1EBF247A0;
  if (!qword_1EBF247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247A0);
  }

  return result;
}

unint64_t sub_1C2141A7C()
{
  result = qword_1EBF247A8;
  if (!qword_1EBF247A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247A8);
  }

  return result;
}

unint64_t sub_1C2141AD4()
{
  result = qword_1EBF247B0;
  if (!qword_1EBF247B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247B0);
  }

  return result;
}

unint64_t sub_1C2141B28()
{
  result = qword_1EBF247C0;
  if (!qword_1EBF247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247C0);
  }

  return result;
}

unint64_t sub_1C2141B7C()
{
  result = qword_1EBF247D0;
  if (!qword_1EBF247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247D0);
  }

  return result;
}

unint64_t sub_1C2141BD0()
{
  result = qword_1EBF247E0;
  if (!qword_1EBF247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247E0);
  }

  return result;
}

unint64_t sub_1C2141C24()
{
  result = qword_1EBF247F0;
  if (!qword_1EBF247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247F0);
  }

  return result;
}

unint64_t sub_1C2141C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24888, &qword_1C217E168);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1C2121F88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C2141D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24880, &qword_1C217E160);
    v3 = sub_1C2171114();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v7 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v8;
      v15[1] = v7;
      v15[2] = v10;
      v15[3] = v9;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C2141EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24878, &qword_1C217E158);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C2141FC4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247F8, &qword_1C217E0F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B28();
  sub_1C2171464();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1C21711B4();
    v11 = 1;
    sub_1C21711B4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_1C21421A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2171324();

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

uint64_t sub_1C21422BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24800, &qword_1C217E0F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B7C();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1C21711B4();
  v13 = v12;
  v24 = v11;
  v27 = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v22 = v25;
  v23 = v26;
  LOBYTE(v25) = 2;
  v14 = sub_1C21711B4();
  v16 = v15;
  v17 = v14;
  (*(v6 + 8))(v9, v5);

  v19 = v22;
  v18 = v23;
  sub_1C20D865C(v22, v23);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  sub_1C20D3174(v19, v18);

  *a2 = v24;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;
  return result;
}

uint64_t sub_1C214255C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24808, &qword_1C217E100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141BD0();
  sub_1C2171464();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1C21711B4();
    v10[14] = 1;
    sub_1C21711E4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_1C2142734()
{
  v0 = sub_1C2171134();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C2142780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24810, &qword_1C217E108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141C24();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_1C21711B4();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v19 = v22;
  v20 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  v24 = 2;
  sub_1C20FD358(&qword_1EBF23E10);
  sub_1C21711A4();
  (*(v6 + 8))(v9, v5);
  v14 = v22;

  v16 = v19;
  v15 = v20;
  sub_1C20D865C(v19, v20);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  sub_1C20D3174(v16, v15);

  *a2 = v21;
  a2[1] = v13;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v14;
  return result;
}

uint64_t sub_1C2142A6C()
{
  v0 = sub_1C2171134();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C2142AB8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24818, &qword_1C217E110);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1C2142CE4();
  sub_1C2171464();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v15 = 0;
    sub_1C20D8E24();
    sub_1C21711D4();
    v8 = v13;
    v10 = v14;
    v15 = 1;
    sub_1C21711A4();
    (*(v4 + 8))(v7, v3);
    v11 = v13;
    v12 = v14;
    sub_1C20D865C(v8, v10);
    sub_1C20B22B8(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1C20D3174(v8, v10);
    sub_1C20B23C8(v11, v12);
  }

  return v8;
}

unint64_t sub_1C2142CE4()
{
  result = qword_1EBF24820;
  if (!qword_1EBF24820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24820);
  }

  return result;
}

uint64_t sub_1C2142D38()
{
  v0 = sub_1C2171134();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C2142D84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574726F70707573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1651469410 && a2 == 0xE400000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E657474697277 && a2 == 0xE700000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000657A6953)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C2171324();

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

uint64_t sub_1C2142EF4()
{
  v0 = sub_1C2171134();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C2142F40(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C2142F58(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2142F58(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1C20B23C8(a1, a2);
  }

  return a1;
}

unint64_t sub_1C2142F64()
{
  result = qword_1EBF24870;
  if (!qword_1EBF24870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24870);
  }

  return result;
}

unint64_t sub_1C2143014()
{
  result = qword_1EBF24898;
  if (!qword_1EBF24898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24898);
  }

  return result;
}

unint64_t sub_1C21430CC()
{
  result = qword_1EBF248A8;
  if (!qword_1EBF248A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248A8);
  }

  return result;
}

unint64_t sub_1C2143124()
{
  result = qword_1EBF248B0;
  if (!qword_1EBF248B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248B0);
  }

  return result;
}

unint64_t sub_1C214317C()
{
  result = qword_1EBF248B8;
  if (!qword_1EBF248B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248B8);
  }

  return result;
}

unint64_t sub_1C21431D4()
{
  result = qword_1EBF248C0;
  if (!qword_1EBF248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248C0);
  }

  return result;
}

unint64_t sub_1C214322C()
{
  result = qword_1EBF248C8;
  if (!qword_1EBF248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248C8);
  }

  return result;
}

unint64_t sub_1C2143284()
{
  result = qword_1EBF248D0;
  if (!qword_1EBF248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248D0);
  }

  return result;
}

unint64_t sub_1C21432DC()
{
  result = qword_1EBF248D8;
  if (!qword_1EBF248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248D8);
  }

  return result;
}

unint64_t sub_1C2143334()
{
  result = qword_1EBF248E0;
  if (!qword_1EBF248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248E0);
  }

  return result;
}

unint64_t sub_1C214338C()
{
  result = qword_1EBF248E8;
  if (!qword_1EBF248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248E8);
  }

  return result;
}

unint64_t sub_1C21433E4()
{
  result = qword_1EBF248F0;
  if (!qword_1EBF248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248F0);
  }

  return result;
}

unint64_t sub_1C214343C()
{
  result = qword_1EBF248F8;
  if (!qword_1EBF248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248F8);
  }

  return result;
}

unint64_t sub_1C2143494()
{
  result = qword_1EBF24900;
  if (!qword_1EBF24900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24900);
  }

  return result;
}

unint64_t sub_1C21434EC()
{
  result = qword_1EBF24908;
  if (!qword_1EBF24908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24908);
  }

  return result;
}

unint64_t sub_1C2143544()
{
  result = qword_1EBF24910;
  if (!qword_1EBF24910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24910);
  }

  return result;
}

unint64_t sub_1C214359C()
{
  result = qword_1EBF24918;
  if (!qword_1EBF24918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24918);
  }

  return result;
}

unint64_t sub_1C21435F4()
{
  result = qword_1EBF24920;
  if (!qword_1EBF24920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24920);
  }

  return result;
}

void sub_1C2143680(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 attestationObject];
  v4 = sub_1C2170174();
  v6 = v5;

  ASCTAPAuthenticatorMakeCredentialResponse.init(attestationObject:)(v4, v6, &v78);
  v93 = v78;
  v94 = v79;
  v95 = v80;
  v96[1] = v79;
  v96[2] = v80;
  v7 = v82;
  v8 = v83;
  v9 = v85;
  v10 = v86;
  v11 = v87;
  v12 = v88;
  v13 = v89;
  v14 = v90;
  v15 = v91;
  v96[0] = v78;
  v43 = v81;
  v44 = v84;
  v97 = v81;
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v104 = v88;
  v105 = v89;
  v106 = v90;
  v107 = v91;
  v45 = v92;
  v108 = v92;
  if (get_enum_tag_for_layout_string_26AuthenticationServicesCore35ASCTAPPublicKeyCredentialDescriptorVSg_0(v96) == 1)
  {

    v16 = v94;
    *a2 = v93;
    *(a2 + 16) = v16;
    *(a2 + 32) = v95;
    *(a2 + 48) = v43;
    *(a2 + 56) = v7;
    *(a2 + 64) = v8;
    *(a2 + 72) = v44;
    *(a2 + 80) = v9;
    *(a2 + 88) = v10;
    *(a2 + 96) = v11;
    *(a2 + 104) = v12;
    *(a2 + 112) = v13;
    *(a2 + 120) = v14;
    *(a2 + 128) = v15;
    *(a2 + 136) = v45;
  }

  else
  {
    v30 = v7;
    v31 = a2;
    v34 = v10;
    v35 = v11;
    v36 = v12;
    v37 = v13;
    v38 = v14;
    v39 = v15;
    v17 = [a1 extensions];
    if (v17)
    {
      sub_1C21092BC(v76);

      v18 = v76[0];
      v32 = v76[1];
      v33 = v76[2];
      v19 = v76[3];
      v42 = v76[4];
      v17 = v76[5];
      v20 = v76[6];
      v21 = v76[7];
      v22 = v76[8];
      v23 = v76[9];
      v24 = v76[10];
      v25 = v77;
    }

    else
    {

      v24 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v42 = 0;
      v19 = 0;
      v32 = 0;
      v33 = 0;
      v18 = 0;
      v25 = 3;
    }

    v40 = v25;
    v47[0] = v43;
    v47[1] = v30;
    v47[2] = v8;
    v47[3] = v44;
    v47[4] = v9;
    v47[5] = v34;
    v47[6] = v35;
    v47[7] = v36;
    v47[8] = v37;
    v47[9] = v38;
    v47[10] = v39;
    v48 = v45;
    sub_1C20EB498(v47, &qword_1EBF23560, &unk_1C2176A00);
    v49[0] = v78;
    v49[1] = v79;
    v49[2] = v80;
    *&v50 = v18;
    *(&v50 + 1) = v32;
    *&v51 = v33;
    *(&v51 + 1) = v19;
    *&v52 = v42;
    *(&v52 + 1) = v17;
    *&v53 = v20;
    *(&v53 + 1) = v21;
    *v54 = v22;
    *&v54[8] = v23;
    *&v54[16] = v24;
    v54[24] = v40;
    *(v62 + 9) = *&v54[9];
    v61 = v53;
    v62[0] = *v54;
    v59 = v51;
    v60 = v52;
    v57 = v80;
    v58 = v50;
    v55 = v78;
    v56 = v79;
    nullsub_1(&v55);
    v26 = v62[0];
    v31[6] = v61;
    v31[7] = v26;
    *(v31 + 121) = *(v62 + 9);
    v27 = v58;
    v31[2] = v57;
    v31[3] = v27;
    v28 = v60;
    v31[4] = v59;
    v31[5] = v28;
    v29 = v56;
    *v31 = v55;
    v31[1] = v29;
    v63[0] = v78;
    v63[1] = v79;
    v63[2] = v80;
    v64 = v18;
    v65 = v32;
    v66 = v33;
    v67 = v19;
    v68 = v42;
    v69 = v17;
    v70 = v20;
    v71 = v21;
    v72 = v22;
    v73 = v23;
    v74 = v24;
    v75 = v40;
    sub_1C20F4BF4(v49, v46);
    sub_1C20EB344(v63);
  }
}

void *sub_1C21439DC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1C2171094();

    if (v4)
    {
      sub_1C21475B0();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1C21221FC(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void ASCTAPAuthenticatorMakeCredentialResponse.attestationObjectEncoded()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = sub_1C21708F4();
  v8 = objc_opt_self();
  v9 = [v8 cborWithUTF8String_];

  v10 = sub_1C2170154();
  v11 = [v8 cborWithData_];

  v12 = sub_1C2170154();
  v13 = [v8 decodeFromData_];

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24928, &qword_1C217E810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768D0;
    v15 = sub_1C21708F4();
    v16 = [v8 cborWithUTF8String_];

    *(inited + 32) = v16;
    *(inited + 40) = v9;
    v17 = v9;
    v18 = sub_1C21708F4();
    v19 = [v8 cborWithUTF8String_];

    *(inited + 48) = v19;
    *(inited + 56) = v11;
    v20 = v11;
    v21 = sub_1C21708F4();
    v22 = [v8 cborWithUTF8String_];

    *(inited + 64) = v22;
    *(inited + 72) = v13;
    v23 = v13;
    sub_1C213F208(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24930, &unk_1C217E818);
    swift_arrayDestroy();
    sub_1C21475B0();
    sub_1C213FB18();
    v24 = sub_1C2170854();

    v25 = [v8 cborWithDictionary_];

    v26 = v25;
    sub_1C21700A4();
    if (v27 >> 60 != 15)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C2143D54(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 || (sub_1C21068CC(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ASCTAPResponse() + 40);
  v6 = *(a4 + 8);
  return sub_1C21708E4() & 1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationFormat.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationFormat.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.authData.getter()
{
  v1 = *(v0 + 16);
  sub_1C20D865C(v1, *(v0 + 24));
  return v1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.authData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C20D3174(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationStatement.getter()
{
  v1 = *(v0 + 32);
  sub_1C20D865C(v1, *(v0 + 40));
  return v1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationStatement.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C20D3174(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

__n128 ASCTAPAuthenticatorMakeCredentialResponse.init(attestationFormat:authData:attestationStatement:unsignedExtensionOutputs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 128) = 0;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 136) = 3;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(a8 + 96);
  v15[2] = *(a8 + 80);
  v15[3] = v10;
  v16[0] = *(a8 + 112);
  *(v16 + 9) = *(a8 + 121);
  v11 = *(a8 + 64);
  v15[0] = *(a8 + 48);
  v15[1] = v11;
  sub_1C20EB498(v15, &qword_1EBF23560, &unk_1C2176A00);
  v12 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v12;
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 121) = *(a7 + 73);
  result = *a7;
  v14 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v14;
  return result;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.WebAuthnCodingKeys.rawValue.getter()
{
  v1 = 0x6174614468747561;
  if (*v0 != 1)
  {
    v1 = 0x746D7453747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7630182;
  }
}

AuthenticationServicesCore::ASCTAPAuthenticatorMakeCredentialResponse::WebAuthnCodingKeys_optional __swiftcall ASCTAPAuthenticatorMakeCredentialResponse.WebAuthnCodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C21440E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6174614468747561;
  if (v2 != 1)
  {
    v4 = 0x746D7453747461;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7630182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6174614468747561;
  if (*a2 != 1)
  {
    v8 = 0x746D7453747461;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7630182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C21441E4()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2144280()
{
  *v0;
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C2144308()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C21443AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6174614468747561;
  if (v2 != 1)
  {
    v5 = 0x746D7453747461;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7630182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C2144408@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = objc_opt_self();
  v8 = sub_1C2170154();
  v9 = [v7 decodeFromData_];

  if (!v9 || (v10 = [v9 dictionary], v9, !v10))
  {
    sub_1C214815C();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
LABEL_14:
    swift_willThrow();
    v27 = a1;
    v28 = a2;
    goto LABEL_15;
  }

  sub_1C21475B0();
  sub_1C213FB18();
  v11 = sub_1C2170864();

  v12 = [v7 cborWithInteger_];
  v13 = sub_1C21439DC(v12, v11);

  if (!v13 || (v14 = [v13 string], v13, !v14))
  {

    sub_1C214815C();
    swift_allocError();
    *v30 = 0xD000000000000011;
    v30[1] = 0x80000001C21866E0;
    goto LABEL_14;
  }

  v66 = a3;
  v55 = sub_1C2170914();
  v16 = v15;

  v17 = [v7 cborWithInteger_];
  v18 = sub_1C21439DC(v17, v11);

  if (!v18 || (v19 = [v18 data], v18, !v19))
  {

    sub_1C214815C();
    swift_allocError();
    *v31 = xmmword_1C217E800;
    goto LABEL_14;
  }

  v53 = sub_1C2170174();
  v54 = v20;

  v21 = [v7 cborWithInteger_];
  v22 = sub_1C21439DC(v21, v11);

  if (!v22)
  {
LABEL_10:

    sub_1C214815C();
    swift_allocError();
    *v26 = 0xD000000000000014;
    v26[1] = 0x80000001C2186700;
    swift_willThrow();
    sub_1C20D3174(a1, a2);
    v27 = v53;
    v28 = v54;
LABEL_15:
    sub_1C20D3174(v27, v28);
LABEL_16:
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v65 = 3;
    return sub_1C20EB498(&v59, &qword_1EBF23560, &unk_1C2176A00);
  }

  v23 = v22;
  v24 = sub_1C21700A4();
  if (v25 >> 60 == 15)
  {

    goto LABEL_10;
  }

  v51 = v24;
  v52 = v25;
  v33 = [v7 cborWithInteger_];
  v34 = sub_1C21439DC(v33, v11);

  if (v34)
  {
    v35 = sub_1C21702A4();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1C2170294();
    sub_1C2147EE0();
    sub_1C2170284();
    if (v3)
    {

      sub_1C20D3174(v53, v54);
      sub_1C20B23C8(v51, v52);

      sub_1C20D3174(a1, a2);

      goto LABEL_16;
    }

    sub_1C20D3174(a1, a2);

    v49 = v60;
    v50 = v59;
    v47 = v62;
    v48 = v61;
    v46 = v63;
    v38 = v64;
    v40 = v65;
    memset(v56, 0, sizeof(v56));
    v57 = 0;
    v58 = 3;
    result = sub_1C20EB498(v56, &qword_1EBF23560, &unk_1C2176A00);
    v44 = v46;
    v43 = v47;
    v42 = v48;
    v41 = v49;
    v39 = v50;
  }

  else
  {

    result = sub_1C20D3174(a1, a2);
    v38 = 0;
    v39 = 0uLL;
    v40 = 3;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
  }

  v45 = v66;
  *v66 = v55;
  v45[1] = v16;
  v45[2] = v53;
  v45[3] = v54;
  v45[4] = v51;
  v45[5] = v52;
  *(v45 + 3) = v39;
  *(v45 + 4) = v41;
  *(v45 + 5) = v42;
  *(v45 + 6) = v43;
  *(v45 + 7) = v44;
  v45[16] = v38;
  *(v45 + 136) = v40;
  return result;
}

void sub_1C2144918()
{
  v1 = sub_1C21702C4();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = *(v0 + 6);
  v66 = *(v0 + 5);
  v67 = v11;
  *v68 = *(v0 + 7);
  *&v68[9] = *(v0 + 121);
  v12 = *(v0 + 4);
  v64 = *(v0 + 3);
  v65 = v12;
  v13 = sub_1C21708F4();
  v14 = objc_opt_self();
  v15 = [v14 cborWithUTF8String_];

  v16 = sub_1C2170154();
  v17 = [v14 cborWithData_];

  v18 = sub_1C2170154();
  v19 = [v14 decodeFromData_];

  if (!v19)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24928, &qword_1C217E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C21768D0;
  *(inited + 32) = [v14 cborWithInteger_];
  *(inited + 40) = v15;
  v52 = v15;
  *(inited + 48) = [v14 cborWithInteger_];
  *(inited + 56) = v17;
  v21 = v17;
  *(inited + 64) = [v14 cborWithInteger_];
  *(inited + 72) = v19;
  v51 = v19;
  v22 = sub_1C213F208(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24930, &unk_1C217E818);
  swift_arrayDestroy();
  v60 = v66;
  v61 = v67;
  v62 = *v68;
  v63 = *&v68[16];
  v58 = v64;
  v59 = v65;
  v23 = v68[24];
  if (v68[24] == 3)
  {
    goto LABEL_15;
  }

  v48 = v21;
  v24 = sub_1C2170314();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v56[2] = v66;
  v56[3] = v67;
  v57[0] = *v68;
  *(v57 + 9) = *&v68[9];
  v56[0] = v64;
  v56[1] = v65;
  sub_1C20F4C50(v56, v53);
  sub_1C2170304();
  (*(v49 + 104))(v4, *MEMORY[0x1E698F6D8], v50);
  sub_1C21702D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24518, &qword_1C217B8B0);
  v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8) - 8);
  v28 = *(*v27 + 72);
  v29 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C21768E0;
  v31 = v30 + v29;
  v32 = v31 + v27[14];
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v33 = sub_1C2171054();
  v34 = __swift_project_value_buffer(v33, qword_1EBF25218);
  (*(*(v33 - 8) + 16))(v31, v34, v33);
  *(v32 + 24) = &type metadata for CodingUserInfoKey.CBOREncodingFormat;
  *v32 = 0;
  sub_1C213EE5C(v30);
  swift_setDeallocating();
  sub_1C20EB498(v31, &qword_1EBF24520, &unk_1C217B8B8);
  swift_deallocClassInstance();
  sub_1C21702F4();
  v53[2] = v60;
  v53[3] = v61;
  v53[4] = v62;
  v54 = v63;
  v53[0] = v58;
  v53[1] = v59;
  v55 = v23;
  sub_1C214809C();
  v35 = v69;
  v36 = sub_1C21702B4();
  if (v35)
  {

    sub_1C20EB498(&v64, &qword_1EBF23560, &unk_1C2176A00);
    return;
  }

  v37 = v36;
  v38 = [v14 cborWithInteger_];
  if ((v22 & 0xC000000000000001) == 0)
  {
    v42 = v37;
    goto LABEL_14;
  }

  if (v22 < 0)
  {
    v39 = v22;
  }

  else
  {
    v39 = v22 & 0xFFFFFFFFFFFFFF8;
  }

  v40 = v37;
  v41 = sub_1C2170E84();
  if (__OFADD__(v41, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = sub_1C213C3FC(v39, v41 + 1);
LABEL_14:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v53[0] = v22;
  sub_1C213C628(v37, v38, isUniquelyReferenced_nonNull_native);
  sub_1C20EB498(&v64, &qword_1EBF23560, &unk_1C2176A00);

  v21 = v48;
LABEL_15:
  sub_1C21475B0();
  sub_1C213FB18();
  v44 = sub_1C2170854();
  v45 = [v14 cborWithDictionary_];

  sub_1C21700A4();
  if (v46 >> 60 != 15)
  {

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1C2144FA0(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF249E8, &qword_1C217F200);
  v57 = *(v42 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v5 = v28 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 24);
  v41 = *(v1 + 16);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 56);
  v38 = *(v1 + 48);
  v39 = v9;
  v12 = *(v1 + 72);
  v36 = *(v1 + 64);
  v37 = v11;
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  *&v31 = v12;
  *(&v31 + 1) = v13;
  v15 = *(v1 + 104);
  v34 = *(v1 + 96);
  v35 = v14;
  v16 = *(v1 + 120);
  v32 = *(v1 + 112);
  v33 = v15;
  v29 = v16;
  v30 = *(v1 + 128);
  v28[3] = *(v1 + 129);
  v17 = *(v1 + 184);
  v54 = *(v1 + 168);
  v55 = v17;
  v56[0] = *(v1 + 200);
  *(v56 + 9) = *(v1 + 209);
  v18 = *(v1 + 152);
  v52 = *(v1 + 136);
  v53 = v18;
  v19 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = v41;
  sub_1C2147F6C(v7, v6, v41, v8);
  sub_1C2147E8C();
  sub_1C2171484();
  *&v47 = v7;
  *(&v47 + 1) = v6;
  *&v48 = v20;
  *(&v48 + 1) = v8;
  v21 = v42;
  *&v49 = v10;
  LOBYTE(v44[0]) = 0;
  sub_1C212B784();
  v22 = v5;
  v23 = v43;
  sub_1C2171264();
  if (v23)
  {
    sub_1C20E7AC4(v47, *(&v47 + 1), v48, *(&v48 + 1));
    return (*(v57 + 8))(v5, v21);
  }

  else
  {
    v25 = v36;
    v26 = v37;
    v27 = v57;
    sub_1C20E7AC4(v47, *(&v47 + 1), v48, *(&v48 + 1));
    *&v47 = v39;
    *(&v47 + 1) = v38;
    LOBYTE(v44[0]) = 1;
    sub_1C20D865C(v39, v38);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v47, *(&v47 + 1));
    *&v47 = v26;
    *(&v47 + 1) = v25;
    LOBYTE(v44[0]) = 2;
    sub_1C20D865C(v26, v25);
    sub_1C2171294();
    sub_1C20D3174(v47, *(&v47 + 1));
    v47 = v31;
    *&v48 = v35;
    *(&v48 + 1) = v34;
    *&v49 = v33;
    *(&v49 + 1) = v32;
    LOBYTE(v44[0]) = 3;
    sub_1C2147FCC(v31, *(&v31 + 1), v35, v34);
    sub_1C212B664();
    sub_1C2171264();
    sub_1C20E7B24(v47, *(&v47 + 1), v48, *(&v48 + 1));
    LOBYTE(v47) = 4;
    sub_1C2171254();
    LOBYTE(v47) = 5;
    sub_1C2171234();
    v49 = v54;
    v50 = v55;
    v51[0] = v56[0];
    *(v51 + 9) = *(v56 + 9);
    v47 = v52;
    v48 = v53;
    v46 = 6;
    sub_1C214802C(&v52, v44);
    sub_1C214809C();
    sub_1C2171264();
    v44[2] = v49;
    v44[3] = v50;
    *v45 = v51[0];
    *&v45[9] = *(v51 + 9);
    v44[0] = v47;
    v44[1] = v48;
    sub_1C20EB498(v44, &qword_1EBF23560, &unk_1C2176A00);
    return (*(v27 + 8))(v22, v21);
  }
}

uint64_t sub_1C2145418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF249D0, &qword_1C217F1F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1C2147E8C();
  sub_1C2171464();
  if (v2)
  {
    v61 = v2;
    v118 = 0;
    memset(v62, 0, sizeof(v62));
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    sub_1C20E7AC4(0, 0, 0, 0);
    sub_1C20E7B24(*v62, *&v62[8], *&v62[16], *&v62[24]);
    v80 = 0u;
    memset(v81, 0, sizeof(v81));
    v79 = 0u;
    LOBYTE(v82) = 3;
    return sub_1C20EB498(&v79, &qword_1EBF23560, &unk_1C2176A00);
  }

  else
  {
    v57 = a2;
    LOBYTE(v66) = 0;
    sub_1C212BA10();
    sub_1C21711A4();
    v54 = v79;
    v55 = *(&v80 + 1);
    v13 = v80;
    v56 = *v81;
    sub_1C20E7AC4(0, 0, 0, 0);
    LOBYTE(v66) = 1;
    sub_1C20D8E24();
    sub_1C21711D4();
    v59 = v79;
    LOBYTE(v66) = 2;
    sub_1C21711D4();
    v14 = v6;
    v15 = v13;
    v58 = v79;
    LOBYTE(v66) = 3;
    sub_1C212B8F0();
    sub_1C21711A4();
    *v62 = v79;
    *&v62[16] = v80;
    v118 = *&v81[8];
    *&v62[32] = *v81;
    sub_1C20E7B24(0, 0, 0, 0);
    LOBYTE(v79) = 4;
    v16 = sub_1C2171194();
    v117 = v17 & 1;
    LOBYTE(v79) = 5;
    LOBYTE(v13) = sub_1C2171174();
    v102 = 6;
    sub_1C2147EE0();
    sub_1C21711A4();
    v61 = 0;
    (*(v14 + 8))(v9, v5);
    v18 = v103;
    v19 = v104;
    v48 = v104;
    v49 = v103;
    v20 = v106;
    v21 = v107;
    v46 = v107;
    v47 = v106;
    v42 = v108;
    v43 = v105;
    v41 = v109;
    v52 = v111;
    v53 = v110;
    v50 = v113;
    v51 = v112;
    memset(v63, 0, sizeof(v63));
    v64 = 0;
    v44 = v114;
    v65 = 3;
    sub_1C20EB498(v63, &qword_1EBF23560, &unk_1C2176A00);
    *&v67 = v15;
    *(&v67 + 1) = v55;
    *v68 = v56;
    *&v68[8] = v59;
    *&v68[24] = v58;
    *&v68[40] = *v62;
    v69 = *&v62[8];
    v70 = *&v62[24];
    *&v71 = v118;
    *(&v71 + 1) = v16;
    v45 = v117;
    LOBYTE(v72) = v117;
    BYTE1(v72) = v13;
    *(&v72 + 1) = v18;
    *&v73 = v19;
    v22 = v43;
    *(&v73 + 1) = v43;
    *&v74 = v20;
    v23 = v42;
    *(&v74 + 1) = v21;
    *&v75 = v42;
    v24 = v41;
    *(&v75 + 1) = v41;
    *&v76 = v53;
    *(&v76 + 1) = v52;
    *&v77 = v51;
    *(&v77 + 1) = v50;
    v25 = v73;
    v26 = v74;
    v27 = v75;
    v28 = v76;
    v29 = v77;
    v30 = *v68;
    v31 = *&v68[16];
    v32 = *&v68[32];
    v33 = *&v62[8];
    v35 = *&v62[24];
    v34 = v71;
    v36 = v54;
    v66 = v54;
    v37 = v13;
    v38 = v57;
    *(v57 + 128) = v72;
    *(v38 + 144) = v25;
    *(v38 + 192) = v28;
    *(v38 + 208) = v29;
    *(v38 + 160) = v26;
    *(v38 + 176) = v27;
    v39 = v67;
    *v38 = v66;
    *(v38 + 16) = v39;
    *(v38 + 96) = v35;
    *(v38 + 112) = v34;
    v40 = v44;
    *(v38 + 224) = v44;
    *(v38 + 64) = v32;
    *(v38 + 80) = v33;
    *(v38 + 32) = v30;
    *(v38 + 48) = v31;
    v78 = v40;
    LOBYTE(v38) = v40;
    sub_1C2147F34(&v66, &v79);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    v79 = __PAIR128__(*(&v54 + 1), v36);
    *&v80 = v15;
    *(&v80 + 1) = v55;
    *v81 = v56;
    *&v81[8] = v59;
    *&v81[24] = v58;
    *&v81[40] = *v62;
    v82 = *&v62[16];
    v83 = *&v62[32];
    v84 = v118;
    v85 = v16;
    v86 = v45;
    v87 = v37;
    v89 = v116;
    v88 = v115;
    v90 = v49;
    v91 = v48;
    v92 = v22;
    v93 = v47;
    v94 = v46;
    v95 = v23;
    v96 = v24;
    v97 = v53;
    v98 = v52;
    v99 = v51;
    v100 = v50;
    v101 = v38;
    return sub_1C20EB2F0(&v79);
  }
}

uint64_t sub_1C2145B68()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217F3D0[v1]);
  return sub_1C2171454();
}

uint64_t sub_1C2145BF0()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217F3D0[v1]);
  return sub_1C2171454();
}

uint64_t sub_1C2145C3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0F20(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C2145C80()
{
  v1 = *v0;
  v2 = 0x69746E6564657263;
  v3 = 0x656C655372657375;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 1919251317;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6174614468747561;
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

uint64_t sub_1C2145D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2148474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2145DB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0F20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C2145DD8(uint64_t a1)
{
  v2 = sub_1C2147E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2145E14(uint64_t a1)
{
  v2 = sub_1C2147E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1C2145E50@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C21702A4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C2170294();
  sub_1C21481B0();
  sub_1C2170274();

  sub_1C20D3174(a1, a2);
  if (v3)
  {
    sub_1C20E7AC4(0, 0, 0, 0);
    sub_1C20E7B24(0, 0, 0, 0);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v34 = 3;
    sub_1C20EB498(&v28, &qword_1EBF23560, &unk_1C2176A00);
  }

  else
  {
    v26 = v38;
    v27 = v39;
    v11 = v37;
    v12 = v42;
    v13 = v43;
    v24 = v49;
    v25 = v44;
    v14 = v50;
    v15 = v51;
    v16 = v36;
    v17 = v35;
    v18 = v41;
    v19 = v40;
    v22 = v47;
    v23 = v45;
    v20 = v48;
    v21 = v46;
    sub_1C20E7AC4(0, 0, 0, 0);
    sub_1C20E7B24(0, 0, 0, 0);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v34 = 3;
    sub_1C20EB498(&v28, &qword_1EBF23560, &unk_1C2176A00);
    *a3 = v17;
    *(a3 + 16) = v16;
    *(a3 + 32) = v11;
    *(a3 + 40) = v26;
    *(a3 + 56) = v27;
    *(a3 + 88) = v18;
    *(a3 + 72) = v19;
    *(a3 + 104) = v12;
    *(a3 + 112) = v13;
    *(a3 + 120) = v25;
    *(a3 + 152) = v21;
    *(a3 + 136) = v23;
    *(a3 + 184) = v20;
    *(a3 + 168) = v22;
    result = v24;
    *(a3 + 200) = v24;
    *(a3 + 216) = v14;
    *(a3 + 224) = v15;
  }

  return result;
}

uint64_t sub_1C21460AC()
{
  v1 = sub_1C21702C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[13];
  v43 = v0[12];
  v44 = v6;
  v45 = *(v0 + 224);
  v7 = v0[9];
  v39 = v0[8];
  v40 = v7;
  v8 = v0[11];
  v41 = v0[10];
  v42 = v8;
  v9 = v0[5];
  v35 = v0[4];
  v36 = v9;
  v10 = v0[7];
  v37 = v0[6];
  v38 = v10;
  v11 = v0[1];
  v31 = *v0;
  v32 = v11;
  v12 = v0[3];
  v33 = v0[2];
  v34 = v12;
  v13 = sub_1C2170314();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1C2170304();
  (*(v2 + 104))(v5, *MEMORY[0x1E698F6D8], v1);
  sub_1C21702D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24518, &qword_1C217B8B0);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8) - 8);
  v17 = *(*v16 + 72);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C21768E0;
  v20 = v16[14];
  if (qword_1EBF23138 != -1)
  {
    v28 = v19;
    swift_once();
    v19 = v28;
  }

  v21 = v19 + v18;
  v22 = v19 + v18 + v20;
  v23 = v19;
  v24 = sub_1C2171054();
  v25 = __swift_project_value_buffer(v24, qword_1EBF25218);
  (*(*(v24 - 8) + 16))(v21, v25, v24);
  *(v22 + 24) = &type metadata for CodingUserInfoKey.CBOREncodingFormat;
  *v22 = 0;
  sub_1C213EE5C(v23);
  swift_setDeallocating();
  sub_1C20EB498(v21, &qword_1EBF24520, &unk_1C217B8B8);
  swift_deallocClassInstance();
  sub_1C21702F4();
  v29[12] = v43;
  v29[13] = v44;
  v30 = v45;
  v29[8] = v39;
  v29[9] = v40;
  v29[10] = v41;
  v29[11] = v42;
  v29[4] = v35;
  v29[5] = v36;
  v29[6] = v37;
  v29[7] = v38;
  v29[0] = v31;
  v29[1] = v32;
  v29[2] = v33;
  v29[3] = v34;
  sub_1C2148204();
  v26 = sub_1C21702E4();

  return v26;
}

void ASCTAPAuthenticatorMakeCredentialResponse.init(attestationObject:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = sub_1C2170154();
  v8 = [v6 decodeFromData_];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 dictionary];

  if (!v9)
  {
    goto LABEL_10;
  }

  sub_1C21475B0();
  sub_1C213FB18();
  v10 = sub_1C2170864();

  v11 = sub_1C21708F4();
  v12 = [v6 cborWithUTF8String_];

  v13 = sub_1C21439DC(v12, v10);
  if (!v13 || (v14 = [v13 string], v13, !v14))
  {
LABEL_9:

LABEL_10:
    sub_1C20D3174(a1, a2);
    goto LABEL_11;
  }

  v15 = sub_1C2170914();
  v17 = v16;

  v18 = sub_1C21708F4();
  v19 = [v6 cborWithUTF8String_];

  v20 = sub_1C21439DC(v19, v10);
  if (!v20)
  {

    goto LABEL_9;
  }

  v42 = v15;
  v21 = v20;
  v22 = sub_1C21700A4();
  if (v23 >> 60 != 15)
  {
    v28 = v23;
    v40 = v22;
    v41 = v17;
    v29 = sub_1C21708F4();
    v30 = [v6 cborWithUTF8String_];

    v31 = sub_1C21439DC(v30, v10);

    if (v31)
    {
      v32 = [v31 data];

      if (v32)
      {
        v33 = sub_1C2170174();
        v35 = v34;

        sub_1C20D3174(a1, a2);
        *&v44 = v42;
        *(&v44 + 1) = v41;
        *&v45 = v33;
        *(&v45 + 1) = v35;
        *&v46 = v40;
        *(&v46 + 1) = v28;
        v49 = 0u;
        v50 = 0u;
        memset(v51, 0, 24);
        v47 = 0u;
        v48 = 0u;
        v51[24] = 3;
        v58 = 0u;
        v59[0] = 0u;
        *(v59 + 9) = *&v51[9];
        v54 = v46;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v52 = v44;
        v53 = v45;
        nullsub_1(&v52);
        v36 = v59[0];
        a3[6] = v58;
        a3[7] = v36;
        *(a3 + 121) = *(v59 + 9);
        v37 = v55;
        a3[2] = v54;
        a3[3] = v37;
        v38 = v57;
        a3[4] = v56;
        a3[5] = v38;
        v39 = v53;
        *a3 = v52;
        a3[1] = v39;
        *&v60 = v42;
        *(&v60 + 1) = v41;
        *&v61 = v33;
        *(&v61 + 1) = v35;
        *&v62 = v40;
        *(&v62 + 1) = v28;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        memset(v67, 0, 24);
        v67[24] = 3;
        sub_1C20F4BF4(&v44, v43);
        sub_1C20EB344(&v60);
        return;
      }
    }

    sub_1C20B23C8(v40, v28);

    goto LABEL_10;
  }

  sub_1C20D3174(a1, a2);

LABEL_11:
  *&v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  BYTE8(v57) = 3;
  sub_1C20EB498(&v52, &qword_1EBF23560, &unk_1C2176A00);
  sub_1C21475FC(&v60);
  v24 = *v67;
  a3[6] = v66;
  a3[7] = v24;
  *(a3 + 121) = *&v67[9];
  v25 = v63;
  a3[2] = v62;
  a3[3] = v25;
  v26 = v65;
  a3[4] = v64;
  a3[5] = v26;
  v27 = v61;
  *a3 = v60;
  a3[1] = v27;
}

BOOL sub_1C2146840(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v98 = *(a1 + 48);
  v99 = *(a1 + 40);
  v95 = *(a1 + 56);
  v7 = *(a1 + 72);
  v94 = *(a1 + 64);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v11 = *(a1 + 96);
  v10 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v15 = *(a1 + 129);
  v16 = *(a1 + 184);
  v126[2] = *(a1 + 168);
  v126[3] = v16;
  *v127 = *(a1 + 200);
  *&v127[9] = *(a1 + 209);
  v17 = *(a1 + 152);
  v126[0] = *(a1 + 136);
  v126[1] = v17;
  v18 = *a2;
  v19 = *(a2 + 8);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = *(a2 + 32);
  v97 = *(a2 + 40);
  v96 = *(a2 + 48);
  v93 = *(a2 + 56);
  v92 = *(a2 + 64);
  v24 = *(a2 + 72);
  v23 = *(a2 + 80);
  v25 = *(a2 + 184);
  v128[2] = *(a2 + 168);
  v128[3] = v25;
  *v129 = *(a2 + 200);
  *&v129[9] = *(a2 + 209);
  v26 = *(a2 + 152);
  v128[0] = *(a2 + 136);
  v128[1] = v26;
  v28 = *(a2 + 88);
  v27 = *(a2 + 96);
  v30 = *(a2 + 104);
  v29 = *(a2 + 112);
  v91 = *(a2 + 120);
  v31 = *(a2 + 128);
  v32 = *(a2 + 129);
  if (!v3)
  {
    if (!v19)
    {
      v73 = *(a2 + 128);
      v74 = *(a2 + 129);
      v79 = v23;
      v80 = *(a2 + 104);
      v86 = *(a2 + 88);
      v87 = v8;
      v81 = *(a2 + 96);
      v82 = *(a2 + 112);
      v88 = v24;
      v89 = v7;
      v78 = v14;
      v72 = v13;
      v75 = v15;
      v90 = v9;
      v83 = v11;
      v84 = v10;
      v85 = v12;
      v76 = a1;
      v77 = a2;
      sub_1C2147F6C(v2, 0, v5, v4);
      sub_1C2147F6C(v18, 0, v21, v20);
      v3 = 0;
      goto LABEL_14;
    }

LABEL_12:
    sub_1C2147F6C(v2, v3, v5, v4);
    sub_1C2147F6C(v18, v19, v21, v20);
    sub_1C20E7AC4(v2, v3, v5, v4);
    v33 = v18;
    v34 = v19;
    v35 = v21;
    v36 = v20;
LABEL_29:
    sub_1C20E7AC4(v33, v34, v35, v36);
    return 0;
  }

  if (!v19)
  {
    goto LABEL_12;
  }

  v73 = *(a2 + 128);
  v74 = *(a2 + 129);
  v79 = v23;
  v80 = *(a2 + 104);
  v86 = *(a2 + 88);
  v87 = v8;
  v81 = *(a2 + 96);
  v82 = *(a2 + 112);
  v88 = v24;
  v89 = v7;
  v78 = v14;
  v72 = v13;
  v75 = v15;
  v90 = v9;
  v83 = v11;
  v84 = v10;
  v85 = v12;
  v76 = a1;
  v77 = a2;
  if ((v2 != v18 || v3 != v19) && (sub_1C2171324() & 1) == 0)
  {
    sub_1C2147F6C(v2, v3, v5, v4);
    sub_1C2147F6C(v18, v19, v21, v20);
    goto LABEL_27;
  }

  sub_1C2147F6C(v2, v3, v5, v4);
  sub_1C2147F6C(v18, v19, v21, v20);
  if ((sub_1C21068CC(v5, v4, v21, v20) & 1) == 0)
  {
LABEL_27:
    sub_1C20E7AC4(v18, v19, v21, v20);
LABEL_28:
    v33 = v2;
    v34 = v3;
    v35 = v5;
    v36 = v4;
    goto LABEL_29;
  }

  if (!v6)
  {
    if (!v22)
    {
      sub_1C20E7AC4(v18, v19, v21, v20);
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  if (!v22)
  {
    goto LABEL_27;
  }

  v71 = sub_1C21546B8(v6, v22);
  sub_1C20E7AC4(v18, v19, v21, v20);
  if ((v71 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  sub_1C20E7AC4(v2, v3, v5, v4);
  if ((sub_1C21068CC(v99, v98, v97, v96) & 1) == 0 || (sub_1C21068CC(v95, v94, v93, v92) & 1) == 0)
  {
    return 0;
  }

  v37 = v90;
  if (!v90)
  {
    v38 = v87;
    v39 = v89;
    v40 = v79;
    if (!v79)
    {
      v46 = 0;
      v48 = v87;
      v47 = v83;
      sub_1C2147FCC(v89, 0, v87, v83);
      sub_1C2147FCC(v88, 0, v86, v81);
      goto LABEL_39;
    }

LABEL_34:
    sub_1C2147FCC(v39, v90, v38, v83);
    sub_1C2147FCC(v88, v40, v86, v81);
    sub_1C20E7B24(v39, v90, v38, v83);
    sub_1C20E7B24(v88, v40, v86, v81);
    return 0;
  }

  v38 = v87;
  v39 = v89;
  v40 = v79;
  if (!v79)
  {
    goto LABEL_34;
  }

  if (v89 != v88 || v90 != v79)
  {
    v41 = sub_1C2171324();
    v37 = v90;
    if ((v41 & 1) == 0)
    {
      v42 = v83;
      sub_1C2147FCC(v89, v90, v87, v83);
      v43 = v88;
      v44 = v86;
      v45 = v81;
      sub_1C2147FCC(v88, v79, v86, v81);
      goto LABEL_37;
    }
  }

  v42 = v83;
  sub_1C2147FCC(v89, v37, v87, v83);
  v43 = v88;
  v44 = v86;
  v45 = v81;
  sub_1C2147FCC(v88, v79, v86, v81);
  if ((sub_1C21068CC(v87, v83, v86, v81) & 1) == 0)
  {
LABEL_37:
    sub_1C20E7B24(v43, v79, v44, v45);
    sub_1C20E7B24(v89, v90, v87, v42);
    return 0;
  }

  v46 = v90;
  v47 = v83;
  if (v84 == v80 && v85 == v82)
  {
    sub_1C20E7B24(v88, v79, v86, v81);
    v48 = v87;
    v39 = v89;
  }

  else
  {
    v51 = sub_1C2171324();
    sub_1C20E7B24(v88, v79, v86, v81);
    v48 = v87;
    v39 = v89;
    if ((v51 & 1) == 0)
    {
      sub_1C20E7B24(v89, v90, v87, v83);
      return 0;
    }
  }

LABEL_39:
  sub_1C20E7B24(v39, v46, v48, v47);
  if (v78)
  {
    v53 = v76;
    v52 = v77;
    v55 = v74;
    v54 = v75;
    if (!v73)
    {
      return 0;
    }
  }

  else
  {
    v55 = v74;
    if (v72 == v91)
    {
      v56 = v73;
    }

    else
    {
      v56 = 1;
    }

    v53 = v76;
    v52 = v77;
    v54 = v75;
    if (v56)
    {
      return 0;
    }
  }

  if (v54 == 2)
  {
    if (v55 != 2)
    {
      return 0;
    }

LABEL_51:
    v57 = v127[24];
    *&v125[39] = *(v52 + 168);
    *&v125[55] = *(v52 + 184);
    *&v125[71] = *(v52 + 200);
    *&v125[87] = *(v52 + 216);
    *&v125[7] = *(v52 + 136);
    *&v125[23] = *(v52 + 152);
    v58 = v129[24];
    if (v127[24] == 3)
    {
      if (v129[24] == 3)
      {
        v59 = *(v53 + 184);
        v116 = *(v53 + 168);
        v117 = v59;
        *v118 = *(v53 + 200);
        *&v118[16] = *(v53 + 216);
        v60 = *(v53 + 152);
        v114 = *(v53 + 136);
        v115 = v60;
        v118[24] = 3;
        sub_1C214802C(v126, &v109);
        sub_1C214802C(v128, &v109);
        sub_1C20EB498(&v114, &qword_1EBF23560, &unk_1C2176A00);
        return 1;
      }

      v63 = v53;
      sub_1C214802C(v126, &v114);
      sub_1C214802C(v128, &v114);
    }

    else
    {
      v61 = *(v53 + 200);
      *&v118[16] = *(v53 + 216);
      v62 = *(v53 + 168);
      v117 = *(v53 + 184);
      *v118 = v61;
      v63 = v53;
      v64 = *(v53 + 152);
      v114 = *(v53 + 136);
      v115 = v64;
      v116 = v62;
      v118[24] = v127[24];
      v112 = v117;
      v113[0] = v61;
      v110 = v64;
      v111 = v62;
      v109 = v114;
      *(v113 + 9) = *&v118[9];
      if (v129[24] != 3)
      {
        v67 = *(v52 + 184);
        v106 = *(v52 + 168);
        v107 = v67;
        *v108 = *(v52 + 200);
        *&v108[16] = *(v52 + 216);
        v68 = *(v52 + 152);
        v104 = *(v52 + 136);
        v105 = v68;
        v108[24] = v129[24];
        sub_1C214802C(v126, v102);
        sub_1C214802C(v128, v102);
        sub_1C214802C(&v114, v102);
        v49 = _s26AuthenticationServicesCore21ASCTAPExtensionOutputV2eeoiySbAC_ACtFZ_0(&v109, &v104);
        v100[2] = v106;
        v100[3] = v107;
        v101[0] = *v108;
        *(v101 + 9) = *&v108[9];
        v100[0] = v104;
        v100[1] = v105;
        sub_1C20F4BA0(v100);
        v102[2] = v111;
        v102[3] = v112;
        v103[0] = v113[0];
        *(v103 + 9) = *(v113 + 9);
        v102[0] = v109;
        v102[1] = v110;
        sub_1C20F4BA0(v102);
        v69 = *(v63 + 184);
        v106 = *(v63 + 168);
        v107 = v69;
        *v108 = *(v63 + 200);
        *&v108[16] = *(v63 + 216);
        v70 = *(v63 + 152);
        v104 = *(v63 + 136);
        v105 = v70;
        v108[24] = v57;
        sub_1C20EB498(&v104, &qword_1EBF23560, &unk_1C2176A00);
        return v49;
      }

      v106 = v116;
      v107 = v117;
      *v108 = *v118;
      *&v108[9] = *&v118[9];
      v104 = v114;
      v105 = v115;
      sub_1C214802C(v126, v102);
      sub_1C214802C(v128, v102);
      sub_1C214802C(&v114, v102);
      sub_1C20F4BA0(&v104);
    }

    v65 = *(v63 + 184);
    v116 = *(v63 + 168);
    v117 = v65;
    *v118 = *(v63 + 200);
    *&v118[16] = *(v63 + 216);
    v66 = *(v63 + 152);
    v114 = *(v63 + 136);
    v115 = v66;
    v118[24] = v57;
    v119 = *v125;
    v120 = *&v125[16];
    *&v123[15] = *&v125[79];
    *v123 = *&v125[64];
    v122 = *&v125[48];
    v121 = *&v125[32];
    v124 = v58;
    sub_1C20EB498(&v114, &qword_1EBF249F8, &qword_1C217F208);
    return 0;
  }

  v49 = 0;
  if (v55 != 2 && ((v55 ^ v54) & 1) == 0)
  {
    goto LABEL_51;
  }

  return v49;
}