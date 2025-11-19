uint64_t RCSMessage.Text.body.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSMessage.Text.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static RCSMessage.Text.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_1E4B03B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 2036625250 && a2 == 0xE400000000000000)
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

uint64_t sub_1E4B03B9C(uint64_t a1)
{
  v2 = sub_1E4B07E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B03BD8(uint64_t a1)
{
  v2 = sub_1E4B07E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.Text.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93718, &qword_1E4BFFF68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B07E2C();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSMessage.Text.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93728, &unk_1E4BFFF70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B07E2C();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v11 = sub_1E4BF083C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B03EDC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93718, &qword_1E4BFFF68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B07E2C();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSMessage.FileTransfer.init(fileMetadata:thumbnailMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for RCSMessage.FileTransfer(0) + 20);
  v7 = type metadata accessor for RCSFileTransferMetadata();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  sub_1E4B07980(a1, a3, type metadata accessor for RCSFileTransferMetadata);
  return sub_1E4AF1900(a2, a3 + v6, &qword_1ECF93730, qword_1E4C16550);
}

unint64_t sub_1E4B041C8()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6174654D656C6966;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B04210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174654D656C6966 && a2 == 0xEC00000061746164;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1720 == a2)
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

uint64_t sub_1E4B042F8(uint64_t a1)
{
  v2 = sub_1E4B08870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B04334(uint64_t a1)
{
  v2 = sub_1E4B08870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.FileTransfer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93738, &qword_1E4BFFF80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B08870();
  sub_1E4BF0ACC();
  v11[15] = 0;
  type metadata accessor for RCSFileTransferMetadata();
  sub_1E4B06F70(&qword_1ECF93748, type metadata accessor for RCSFileTransferMetadata);
  sub_1E4BF093C();
  if (!v1)
  {
    v9 = *(type metadata accessor for RCSMessage.FileTransfer(0) + 20);
    v11[14] = 1;
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSMessage.FileTransfer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for RCSFileTransferMetadata();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93750, &qword_1E4BFFF88);
  v26 = *(v28 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v24 - v12;
  v14 = type metadata accessor for RCSMessage.FileTransfer(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 28);
  (*(v8 + 56))(&v18[v19], 1, 1, v7);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B08870();
  v21 = v29;
  sub_1E4BF0ABC();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E4AE0AE4(&v18[v19], &qword_1ECF93730, qword_1E4C16550);
  }

  else
  {
    v31 = 0;
    sub_1E4B06F70(&qword_1ECF93758, type metadata accessor for RCSFileTransferMetadata);
    sub_1E4BF087C();
    sub_1E4B07980(v27, v18, type metadata accessor for RCSFileTransferMetadata);
    v30 = 1;
    v29 = v6;
    v22 = v28;
    sub_1E4BF082C();
    (*(v26 + 8))(v13, v22);
    sub_1E4AF1900(v29, &v18[v19], &qword_1ECF93730, qword_1E4C16550);
    sub_1E4B06FB8(v18, v25, type metadata accessor for RCSMessage.FileTransfer);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E4B07020(v18, type metadata accessor for RCSMessage.FileTransfer);
  }
}

uint64_t RCSMessage.GeolocationPush.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RCSMessage.GeolocationPush.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

TelephonyMessagingKit::RCSMessage::GeolocationPush __swiftcall RCSMessage.GeolocationPush.init(latitude:longitude:description:)(Swift::Double latitude, Swift::Double longitude, Swift::String_optional description)
{
  *v3 = latitude;
  *(v3 + 8) = longitude;
  *(v3 + 16) = description;
  result.description = description;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t sub_1E4B04A4C()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1E4B04AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B0A8BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B04ADC(uint64_t a1)
{
  v2 = sub_1E4B088C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B04B18(uint64_t a1)
{
  v2 = sub_1E4B088C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.GeolocationPush.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93760, &qword_1E4BFFF90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[1] = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B088C4();
  sub_1E4BF0ACC();
  v17 = 0;
  sub_1E4BF091C();
  if (!v2)
  {
    v16 = 1;
    sub_1E4BF091C();
    v15 = 2;
    sub_1E4BF08CC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RCSMessage.GeolocationPush.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93770, &qword_1E4BFFF98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B088C4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_1E4BF085C();
  v12 = v11;
  v21 = 1;
  sub_1E4BF085C();
  v14 = v13;
  v20 = 2;
  v15 = sub_1E4BF080C();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RCSMessage.DispositionNotification.disposedMessageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

_BYTE *RCSMessage.DispositionNotification.init(disposition:disposedMessageID:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t static RCSMessage.DispositionNotification.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
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

unint64_t sub_1E4B04FAC()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x7469736F70736964;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B04FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7469736F70736964 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1740 == a2)
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

uint64_t sub_1E4B050DC(uint64_t a1)
{
  v2 = sub_1E4B08918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B05118(uint64_t a1)
{
  v2 = sub_1E4B08918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.DispositionNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93778, &qword_1E4BFFFA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B08918();
  sub_1E4BF0ACC();
  LOBYTE(v14) = v8;
  v16 = 0;
  sub_1E4B0896C();
  v11 = v13[1];
  sub_1E4BF093C();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSMessage.DispositionNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93790, &qword_1E4BFFFA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B08918();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = 0;
    sub_1E4B089C0();
    sub_1E4BF087C();
    v11 = v15[0];
    v16 = 1;
    sub_1E4AE30EC();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    v12 = v15[0];
    v13 = v15[1];
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B054E0(unsigned __int8 *a1, unsigned __int8 *a2)
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

uint64_t sub_1E4B05570(uint64_t a1)
{
  v2 = sub_1E4B08A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B055AC(uint64_t a1)
{
  v2 = sub_1E4B08A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B055E8()
{
  if (*v0)
  {
    result = 0x657669746361;
  }

  else
  {
    result = 1701602409;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B05618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
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

uint64_t sub_1E4B056F0(uint64_t a1)
{
  v2 = sub_1E4B08A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0572C(uint64_t a1)
{
  v2 = sub_1E4B08A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B05768(uint64_t a1)
{
  v2 = sub_1E4B08ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B057A4(uint64_t a1)
{
  v2 = sub_1E4B08ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.ComposingIndicator.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF937A0, &qword_1E4BFFFB0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF937A8, &qword_1E4BFFFB8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF937B0, &qword_1E4BFFFC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B08A14();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4B08A68();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4B08ABC();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSMessage.ComposingIndicator.State.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSMessage.ComposingIndicator.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF937D0, &qword_1E4BFFFC8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF937D8, &qword_1E4BFFFD0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF937E0, &qword_1E4BFFFD8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B08A14();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSMessage.ComposingIndicator.State;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4B08A68();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4B08ABC();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t RCSMessage.ComposingIndicator.refreshInterval.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSMessage.ComposingIndicator(0) + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t RCSMessage.ComposingIndicator.refreshInterval.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for RCSMessage.ComposingIndicator(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t RCSMessage.ComposingIndicator.init(state:lastActive:contentType:refreshInterval:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  v13 = *a1;
  v14 = type metadata accessor for RCSMessage.ComposingIndicator(0);
  v15 = v14[5];
  v16 = sub_1E4BEFABC();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = v14[6];
  v18 = sub_1E4BEFB4C();
  (*(*(v18 - 8) + 56))(&a7[v17], 1, 1, v18);
  v19 = &a7[v14[7]];
  *a7 = v13;
  sub_1E4AF1900(a2, &a7[v15], &qword_1ECF92580, &qword_1E4BFDEB0);
  result = sub_1E4AF1900(a3, &a7[v17], &qword_1ECF92700, &qword_1E4BFB090);
  *v19 = a4;
  *(v19 + 1) = a5;
  v19[16] = a6 & 1;
  return result;
}

uint64_t sub_1E4B06444()
{
  v1 = 0x6574617473;
  v2 = 0x54746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x4968736572666572;
  }

  if (*v0)
  {
    v1 = 0x697463417473616CLL;
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

uint64_t sub_1E4B064D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B0A9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B064FC(uint64_t a1)
{
  v2 = sub_1E4B08B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B06538(uint64_t a1)
{
  v2 = sub_1E4B08B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.ComposingIndicator.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF937E8, &qword_1E4BFFFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B08B10();
  sub_1E4BF0ACC();
  LOBYTE(v17) = *v3;
  v19 = 0;
  sub_1E4B08B64();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = type metadata accessor for RCSMessage.ComposingIndicator(0);
    v12 = v11[5];
    LOBYTE(v17) = 1;
    sub_1E4BEFABC();
    sub_1E4B06F70(&qword_1ECF925B0, MEMORY[0x1E6969530]);
    sub_1E4BF08EC();
    v13 = v11[6];
    LOBYTE(v17) = 2;
    sub_1E4BEFB4C();
    sub_1E4AF109C(&qword_1ECF92C08);
    sub_1E4BF08EC();
    v14 = &v3[v11[7]];
    v15 = v14[16];
    v17 = *v14;
    v18 = v15;
    v19 = 3;
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSMessage.ComposingIndicator.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93800, &qword_1E4BFFFE8);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = type metadata accessor for RCSMessage.ComposingIndicator(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v17 = sub_1E4BEFABC();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = *(v11 + 24);
  v20 = sub_1E4BEFB4C();
  v21 = *(*(v20 - 8) + 56);
  v40 = v19;
  v21(&v15[v19], 1, 1, v20);
  v23 = a1[3];
  v22 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E4B08B10();
  v38 = v10;
  v24 = v39;
  sub_1E4BF0ABC();
  if (v24)
  {
    v25 = v40;
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1E4AE0AE4(&v15[v42], &qword_1ECF92580, &qword_1E4BFDEB0);
    return sub_1E4AE0AE4(&v15[v25], &qword_1ECF92700, &qword_1E4BFB090);
  }

  else
  {
    v45 = 0;
    sub_1E4B08BB8();
    sub_1E4BF087C();
    *v15 = v43;
    LOBYTE(v43) = 1;
    sub_1E4B06F70(&qword_1ECF925D8, MEMORY[0x1E6969530]);
    sub_1E4BF082C();
    sub_1E4AF1900(v6, &v15[v42], &qword_1ECF92580, &qword_1E4BFDEB0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v26 - 8);
    v29 = &v35 - v28;
    LOBYTE(v43) = 2;
    sub_1E4AF109C(&qword_1ECF92C38);
    sub_1E4BF082C();
    sub_1E4AF1900(v29, &v15[v40], &qword_1ECF92700, &qword_1E4BFB090);
    v45 = 3;
    v30 = v37;
    sub_1E4BF082C();
    v31 = v30;
    v32 = &v15[*(v11 + 28)];
    (*(v36 + 8))(v38, v31);
    v33 = v44;
    *v32 = v43;
    v32[16] = v33;
    sub_1E4B06FB8(v15, v35, type metadata accessor for RCSMessage.ComposingIndicator);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_1E4B07020(v15, type metadata accessor for RCSMessage.ComposingIndicator);
  }
}

uint64_t _s21TelephonyMessagingKit10RCSMessageV15GeolocationPushV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1E4BF099C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

uint64_t _s21TelephonyMessagingKit10RCSMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for RCSMessage(0);
  if ((_s21TelephonyMessagingKit10RCSMessageV7ContentO2eeoiySbAE_AEtFZ_0(a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1 + v5[7];
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v24 = *v6;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v11 = a2 + v5[7];
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  v15 = *(v11 + 32);
  v19 = *v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  sub_1E4ADD6D8(v24, v7, v8, v9, v10);
  sub_1E4ADD6D8(v19, v12, v13, v14, v15);
  v16 = _s21TelephonyMessagingKit9RCSHandleO2eeoiySbAC_ACtFZ_0(&v24, &v19);
  sub_1E4ADD764(v19, v20, v21, v22, v23);
  sub_1E4ADD764(v24, v25, v26, v27, v28);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = v5[8];

  return sub_1E4BEFA9C();
}

unint64_t sub_1E4B06F1C()
{
  result = qword_1ECF935C8;
  if (!qword_1ECF935C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF935C8);
  }

  return result;
}

uint64_t sub_1E4B06F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B06FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B07020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21TelephonyMessagingKit10RCSMessageV7ContentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v2 = type metadata accessor for RCSService.Business.CardCarousel(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RCSService.Business.Card(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RCSMessage.ComposingIndicator(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RCSMessage.FileTransfer(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RCSMessage.Content(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v74 = &v70 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v70 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v70 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v70 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v70 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = (&v70 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939E0, &unk_1E4C01960);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v39 = &v70 - v38;
  v40 = (&v70 + *(v37 + 56) - v38);
  sub_1E4B06FB8(v76, &v70 - v38, type metadata accessor for RCSMessage.Content);
  sub_1E4B06FB8(v77, v40, type metadata accessor for RCSMessage.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1E4B06FB8(v39, v26, type metadata accessor for RCSMessage.Content);
        v43 = *(v26 + 1);
        v42 = *(v26 + 2);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v44 = v39;
          if (*v26 == *v40)
          {
            if (v43 == v40[1] && v42 == v40[2])
            {

LABEL_44:
              v67 = v44;
              goto LABEL_45;
            }

            v68 = v40[2];
            v69 = sub_1E4BF099C();

            if (v69)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }

          sub_1E4B07020(v44, type metadata accessor for RCSMessage.Content);
          goto LABEL_37;
        }

        goto LABEL_22;
      }

      sub_1E4B06FB8(v39, v23, type metadata accessor for RCSMessage.Content);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v60 = v71;
        sub_1E4B07980(v40, v71, type metadata accessor for RCSMessage.ComposingIndicator);
        v45 = _s21TelephonyMessagingKit10RCSMessageV18ComposingIndicatorV2eeoiySbAE_AEtFZ_0(v23, v60);
        v61 = type metadata accessor for RCSMessage.ComposingIndicator;
LABEL_27:
        v46 = v39;
        v47 = v61;
        sub_1E4B07020(v60, v61);
        v48 = v23;
        goto LABEL_28;
      }

      v64 = type metadata accessor for RCSMessage.ComposingIndicator;
LABEL_34:
      v62 = v64;
      v63 = v23;
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v23 = v75;
      sub_1E4B06FB8(v39, v75, type metadata accessor for RCSMessage.Content);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v60 = v73;
        sub_1E4B07980(v40, v73, type metadata accessor for RCSService.Business.CardCarousel);
        v45 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV12CardCarouselV2eeoiySbAG_AGtFZ_0(v23, v60);
        v61 = type metadata accessor for RCSService.Business.CardCarousel;
        goto LABEL_27;
      }

      v64 = type metadata accessor for RCSService.Business.CardCarousel;
      goto LABEL_34;
    }

    v49 = v74;
    sub_1E4B06FB8(v39, v74, type metadata accessor for RCSMessage.Content);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v50 = v72;
      sub_1E4B07980(v40, v72, type metadata accessor for RCSService.Business.Card);
      v45 = _s21TelephonyMessagingKit10RCSServiceC8BusinessV4CardV2eeoiySbAG_AGtFZ_0(v49, v50);
      v46 = v39;
      v47 = type metadata accessor for RCSService.Business.Card;
      sub_1E4B07020(v50, type metadata accessor for RCSService.Business.Card);
      v48 = v49;
      goto LABEL_28;
    }

    v62 = type metadata accessor for RCSService.Business.Card;
    v63 = v49;
    goto LABEL_35;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E4B06FB8(v39, v34, type metadata accessor for RCSMessage.Content);
    v52 = *v34;
    v51 = v34[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v53 = v39;
      v54 = *v40;
      v55 = v40[1];
      if (v52 == v54 && v51 == v55)
      {
      }

      else
      {
        v66 = sub_1E4BF099C();

        if ((v66 & 1) == 0)
        {
          sub_1E4B07020(v53, type metadata accessor for RCSMessage.Content);
          goto LABEL_37;
        }
      }

      v67 = v53;
LABEL_45:
      sub_1E4B07020(v67, type metadata accessor for RCSMessage.Content);
      v45 = 1;
      return v45 & 1;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1E4B06FB8(v39, v32, type metadata accessor for RCSMessage.Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E4B07980(v40, v14, type metadata accessor for RCSMessage.FileTransfer);
      v45 = _s21TelephonyMessagingKit10RCSMessageV12FileTransferV2eeoiySbAE_AEtFZ_0(v32, v14);
      v46 = v39;
      v47 = type metadata accessor for RCSMessage.FileTransfer;
      sub_1E4B07020(v14, type metadata accessor for RCSMessage.FileTransfer);
      v48 = v32;
LABEL_28:
      sub_1E4B07020(v48, v47);
      goto LABEL_29;
    }

    v62 = type metadata accessor for RCSMessage.FileTransfer;
    v63 = v32;
LABEL_35:
    sub_1E4B07020(v63, v62);
    goto LABEL_36;
  }

  sub_1E4B06FB8(v39, v29, type metadata accessor for RCSMessage.Content);
  v56 = *(v29 + 3);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_22:

LABEL_36:
    sub_1E4AE0AE4(v39, &qword_1ECF939E0, &unk_1E4C01960);
LABEL_37:
    v45 = 0;
    return v45 & 1;
  }

  v57 = *(v29 + 2);
  v46 = v39;
  v58 = v40[2];
  v59 = v40[3];
  v81 = *v29;
  v82 = v57;
  v83 = v56;
  v78 = *v40;
  v79 = v58;
  v80 = v59;
  v45 = _s21TelephonyMessagingKit10RCSMessageV15GeolocationPushV2eeoiySbAE_AEtFZ_0(&v81, &v78);

LABEL_29:
  sub_1E4B07020(v46, type metadata accessor for RCSMessage.Content);
  return v45 & 1;
}

unint64_t sub_1E4B0792C()
{
  result = qword_1ECF93628;
  if (!qword_1ECF93628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93628);
  }

  return result;
}

uint64_t sub_1E4B07980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4B079E8()
{
  result = qword_1ECF93630;
  if (!qword_1ECF93630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93630);
  }

  return result;
}

unint64_t sub_1E4B07A3C()
{
  result = qword_1ECF93640;
  if (!qword_1ECF93640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93640);
  }

  return result;
}

unint64_t sub_1E4B07A90()
{
  result = qword_1ECF93650;
  if (!qword_1ECF93650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93650);
  }

  return result;
}

unint64_t sub_1E4B07AE4()
{
  result = qword_1ECF93660;
  if (!qword_1ECF93660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93660);
  }

  return result;
}

unint64_t sub_1E4B07B38()
{
  result = qword_1ECF93668;
  if (!qword_1ECF93668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93668);
  }

  return result;
}

unint64_t sub_1E4B07B8C()
{
  result = qword_1ECF93670;
  if (!qword_1ECF93670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93670);
  }

  return result;
}

unint64_t sub_1E4B07BE0()
{
  result = qword_1ECF93678;
  if (!qword_1ECF93678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93678);
  }

  return result;
}

unint64_t sub_1E4B07C34()
{
  result = qword_1ECF93680;
  if (!qword_1ECF93680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93680);
  }

  return result;
}

unint64_t sub_1E4B07C88()
{
  result = qword_1ECF93690;
  if (!qword_1ECF93690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93690);
  }

  return result;
}

unint64_t sub_1E4B07CDC()
{
  result = qword_1ECF93698;
  if (!qword_1ECF93698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93698);
  }

  return result;
}

unint64_t sub_1E4B07D30()
{
  result = qword_1ECF936F8;
  if (!qword_1ECF936F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF936F8);
  }

  return result;
}

unint64_t sub_1E4B07D84()
{
  result = qword_1ECF93700;
  if (!qword_1ECF93700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93700);
  }

  return result;
}

unint64_t sub_1E4B07DD8()
{
  result = qword_1ECF93710;
  if (!qword_1ECF93710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93710);
  }

  return result;
}

unint64_t sub_1E4B07E2C()
{
  result = qword_1ECF93720;
  if (!qword_1ECF93720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93720);
  }

  return result;
}

uint64_t sub_1E4B07E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileTransferMetadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s21TelephonyMessagingKit10RCSMessageV18ComposingIndicatorV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926D8, &qword_1E4BFAF70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v54 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v55 = type metadata accessor for RCSMessage.ComposingIndicator(0);
  v56 = a2;
  v17 = v55[5];
  v18 = *(v13 + 48);
  sub_1E4AF1898(&a1[v17], v16, &qword_1ECF92580, &qword_1E4BFDEB0);
  sub_1E4AF1898(&v56[v17], &v16[v18], &qword_1ECF92580, &qword_1E4BFDEB0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v16, &qword_1ECF92580, &qword_1E4BFDEB0);
      goto LABEL_9;
    }

LABEL_7:
    sub_1E4AE0AE4(v16, &qword_1ECF926D8, &qword_1E4BFAF70);
    return 0;
  }

  sub_1E4AF1898(v16, v12, &qword_1ECF92580, &qword_1E4BFDEB0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1E4B06F70(&qword_1ECF926E0, MEMORY[0x1E6969530]);
  v20 = sub_1E4BEFE6C();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  sub_1E4AE0AE4(v16, &qword_1ECF92580, &qword_1E4BFDEB0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v22 = v55[6];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939C8, &qword_1E4C01950);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = v54 - v26;
  v28 = *(v25 + 56);
  sub_1E4AF1898(&a1[v22], v54 - v26, &qword_1ECF92700, &qword_1E4BFB090);
  v29 = &v56[v22];
  v30 = v56;
  sub_1E4AF1898(v29, &v27[v28], &qword_1ECF92700, &qword_1E4BFB090);
  v31 = sub_1E4BEFB4C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v27, 1, v31) != 1)
  {
    v54[1] = v54;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v34 - 8);
    v37 = v54 - v36;
    sub_1E4AF1898(v27, v54 - v36, &qword_1ECF92700, &qword_1E4BFB090);
    v38 = v33(&v27[v28], 1, v31);
    if (v38 != 1)
    {
      v54[0] = v54;
      v40 = *(v32 + 64);
      MEMORY[0x1EEE9AC00](v38);
      v42 = v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 32))(v42, &v27[v28], v31);
      sub_1E4AF109C(&qword_1ECF939D0);
      v43 = sub_1E4BEFE6C();
      v44 = *(v32 + 8);
      v44(v42, v31);
      v44(v37, v31);
      v30 = v56;
      sub_1E4AE0AE4(v27, &qword_1ECF92700, &qword_1E4BFB090);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v32 + 8))(v37, v31);
LABEL_14:
    sub_1E4AE0AE4(v27, &qword_1ECF939C8, &qword_1E4C01950);
    return 0;
  }

  if (v33(&v27[v28], 1, v31) != 1)
  {
    goto LABEL_14;
  }

  sub_1E4AE0AE4(v27, &qword_1ECF92700, &qword_1E4BFB090);
LABEL_18:
  v45 = v55[7];
  v46 = &a1[v45];
  v47 = a1[v45 + 16];
  v48 = &v30[v45];
  v49 = v48[16];
  if (v47)
  {
    if (v48[16])
    {
      return 1;
    }
  }

  else if ((v48[16] & 1) == 0)
  {
    v50 = *v46;
    v51 = *(v46 + 1);
    v52 = *v48;
    v53 = *(v48 + 1);
    if (sub_1E4BF0AEC())
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s21TelephonyMessagingKit10RCSMessageV12FileTransferV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileTransferMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939D8, &qword_1E4C01958);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((_s21TelephonyMessagingKit23RCSFileTransferMetadataV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v24 = v8;
  v17 = *(type metadata accessor for RCSMessage.FileTransfer(0) + 20);
  v18 = *(v13 + 48);
  sub_1E4AF1898(a1 + v17, v16, &qword_1ECF93730, qword_1E4C16550);
  sub_1E4AF1898(a2 + v17, &v16[v18], &qword_1ECF93730, qword_1E4C16550);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v16, &qword_1ECF93730, qword_1E4C16550);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1E4AF1898(v16, v12, &qword_1ECF93730, qword_1E4C16550);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1E4B07020(v12, type metadata accessor for RCSFileTransferMetadata);
LABEL_7:
    sub_1E4AE0AE4(v16, &qword_1ECF939D8, &qword_1E4C01958);
    return 0;
  }

  v21 = v24;
  sub_1E4B07980(&v16[v18], v24, type metadata accessor for RCSFileTransferMetadata);
  v22 = _s21TelephonyMessagingKit23RCSFileTransferMetadataV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_1E4B07020(v21, type metadata accessor for RCSFileTransferMetadata);
  sub_1E4B07020(v12, type metadata accessor for RCSFileTransferMetadata);
  sub_1E4AE0AE4(v16, &qword_1ECF93730, qword_1E4C16550);
  return (v22 & 1) != 0;
}

unint64_t sub_1E4B08870()
{
  result = qword_1ECF93740;
  if (!qword_1ECF93740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93740);
  }

  return result;
}

unint64_t sub_1E4B088C4()
{
  result = qword_1ECF93768;
  if (!qword_1ECF93768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93768);
  }

  return result;
}

unint64_t sub_1E4B08918()
{
  result = qword_1ECF93780;
  if (!qword_1ECF93780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93780);
  }

  return result;
}

unint64_t sub_1E4B0896C()
{
  result = qword_1ECF93788;
  if (!qword_1ECF93788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93788);
  }

  return result;
}

unint64_t sub_1E4B089C0()
{
  result = qword_1ECF93798;
  if (!qword_1ECF93798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93798);
  }

  return result;
}

unint64_t sub_1E4B08A14()
{
  result = qword_1ECF937B8;
  if (!qword_1ECF937B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF937B8);
  }

  return result;
}

unint64_t sub_1E4B08A68()
{
  result = qword_1ECF937C0;
  if (!qword_1ECF937C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF937C0);
  }

  return result;
}

unint64_t sub_1E4B08ABC()
{
  result = qword_1ECF937C8;
  if (!qword_1ECF937C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF937C8);
  }

  return result;
}

unint64_t sub_1E4B08B10()
{
  result = qword_1ECF937F0;
  if (!qword_1ECF937F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF937F0);
  }

  return result;
}

unint64_t sub_1E4B08B64()
{
  result = qword_1ECF937F8;
  if (!qword_1ECF937F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF937F8);
  }

  return result;
}

unint64_t sub_1E4B08BB8()
{
  result = qword_1ECF93808;
  if (!qword_1ECF93808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93808);
  }

  return result;
}

unint64_t sub_1E4B08C10()
{
  result = qword_1ECF93810;
  if (!qword_1ECF93810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93810);
  }

  return result;
}

unint64_t sub_1E4B08C68()
{
  result = qword_1ECF93818;
  if (!qword_1ECF93818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93818);
  }

  return result;
}

unint64_t sub_1E4B08CC0()
{
  result = qword_1ECF93820;
  if (!qword_1ECF93820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93820);
  }

  return result;
}

unint64_t sub_1E4B08D18()
{
  result = qword_1ECF93828;
  if (!qword_1ECF93828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93828);
  }

  return result;
}

unint64_t sub_1E4B08D70()
{
  result = qword_1ECF93830;
  if (!qword_1ECF93830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93830);
  }

  return result;
}

uint64_t sub_1E4B08DFC()
{
  result = type metadata accessor for RCSMessage.Content(319);
  if (v1 <= 0x3F)
  {
    result = sub_1E4BEFABC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4B08EA0()
{
  result = type metadata accessor for RCSMessage.FileTransfer(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RCSMessage.ComposingIndicator(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RCSService.Business.Card(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for RCSService.Business.CardCarousel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1E4B08F94()
{
  type metadata accessor for RCSFileTransferMetadata();
  if (v0 <= 0x3F)
  {
    sub_1E4B09204(319, qword_1EE2BDAC0, type metadata accessor for RCSFileTransferMetadata);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4B09034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E4B09090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1E4B0912C()
{
  sub_1E4B09204(319, &qword_1EE2BECB8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1E4B09204(319, qword_1EE2BD758, MEMORY[0x1EEE9A6F0]);
    if (v1 <= 0x3F)
    {
      sub_1E4B09258();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4B09204(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4BF053C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E4B09258()
{
  if (!qword_1EE2BD700)
  {
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2BD700);
    }
  }
}

unint64_t sub_1E4B093CC()
{
  result = qword_1ECF93838;
  if (!qword_1ECF93838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93838);
  }

  return result;
}

unint64_t sub_1E4B09424()
{
  result = qword_1ECF93840;
  if (!qword_1ECF93840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93840);
  }

  return result;
}

unint64_t sub_1E4B0947C()
{
  result = qword_1ECF93848;
  if (!qword_1ECF93848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93848);
  }

  return result;
}

unint64_t sub_1E4B094D4()
{
  result = qword_1ECF93850;
  if (!qword_1ECF93850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93850);
  }

  return result;
}

unint64_t sub_1E4B0952C()
{
  result = qword_1ECF93858;
  if (!qword_1ECF93858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93858);
  }

  return result;
}

unint64_t sub_1E4B09584()
{
  result = qword_1ECF93860;
  if (!qword_1ECF93860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93860);
  }

  return result;
}

unint64_t sub_1E4B095DC()
{
  result = qword_1ECF93868;
  if (!qword_1ECF93868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93868);
  }

  return result;
}

unint64_t sub_1E4B09634()
{
  result = qword_1ECF93870;
  if (!qword_1ECF93870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93870);
  }

  return result;
}

unint64_t sub_1E4B0968C()
{
  result = qword_1ECF93878;
  if (!qword_1ECF93878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93878);
  }

  return result;
}

unint64_t sub_1E4B096E4()
{
  result = qword_1ECF93880;
  if (!qword_1ECF93880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93880);
  }

  return result;
}

unint64_t sub_1E4B0973C()
{
  result = qword_1ECF93888;
  if (!qword_1ECF93888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93888);
  }

  return result;
}

unint64_t sub_1E4B09794()
{
  result = qword_1ECF93890;
  if (!qword_1ECF93890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93890);
  }

  return result;
}

unint64_t sub_1E4B097EC()
{
  result = qword_1ECF93898;
  if (!qword_1ECF93898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93898);
  }

  return result;
}

unint64_t sub_1E4B09844()
{
  result = qword_1ECF938A0;
  if (!qword_1ECF938A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938A0);
  }

  return result;
}

unint64_t sub_1E4B0989C()
{
  result = qword_1ECF938A8;
  if (!qword_1ECF938A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938A8);
  }

  return result;
}

unint64_t sub_1E4B098F4()
{
  result = qword_1ECF938B0;
  if (!qword_1ECF938B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938B0);
  }

  return result;
}

unint64_t sub_1E4B0994C()
{
  result = qword_1ECF938B8;
  if (!qword_1ECF938B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938B8);
  }

  return result;
}

unint64_t sub_1E4B099A4()
{
  result = qword_1ECF938C0;
  if (!qword_1ECF938C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938C0);
  }

  return result;
}

unint64_t sub_1E4B099FC()
{
  result = qword_1ECF938C8;
  if (!qword_1ECF938C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938C8);
  }

  return result;
}

unint64_t sub_1E4B09A54()
{
  result = qword_1ECF938D0;
  if (!qword_1ECF938D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938D0);
  }

  return result;
}

unint64_t sub_1E4B09AAC()
{
  result = qword_1ECF938D8;
  if (!qword_1ECF938D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938D8);
  }

  return result;
}

unint64_t sub_1E4B09B04()
{
  result = qword_1ECF938E0;
  if (!qword_1ECF938E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938E0);
  }

  return result;
}

unint64_t sub_1E4B09B5C()
{
  result = qword_1ECF938E8;
  if (!qword_1ECF938E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938E8);
  }

  return result;
}

unint64_t sub_1E4B09BB4()
{
  result = qword_1ECF938F0;
  if (!qword_1ECF938F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938F0);
  }

  return result;
}

unint64_t sub_1E4B09C0C()
{
  result = qword_1ECF938F8;
  if (!qword_1ECF938F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF938F8);
  }

  return result;
}

unint64_t sub_1E4B09C64()
{
  result = qword_1ECF93900;
  if (!qword_1ECF93900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93900);
  }

  return result;
}

unint64_t sub_1E4B09CBC()
{
  result = qword_1ECF93908;
  if (!qword_1ECF93908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93908);
  }

  return result;
}

unint64_t sub_1E4B09D14()
{
  result = qword_1ECF93910;
  if (!qword_1ECF93910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93910);
  }

  return result;
}

unint64_t sub_1E4B09D6C()
{
  result = qword_1ECF93918;
  if (!qword_1ECF93918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93918);
  }

  return result;
}

unint64_t sub_1E4B09DC4()
{
  result = qword_1ECF93920;
  if (!qword_1ECF93920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93920);
  }

  return result;
}

unint64_t sub_1E4B09E1C()
{
  result = qword_1ECF93928;
  if (!qword_1ECF93928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93928);
  }

  return result;
}

unint64_t sub_1E4B09E74()
{
  result = qword_1ECF93930;
  if (!qword_1ECF93930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93930);
  }

  return result;
}

unint64_t sub_1E4B09ECC()
{
  result = qword_1ECF93938;
  if (!qword_1ECF93938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93938);
  }

  return result;
}

unint64_t sub_1E4B09F24()
{
  result = qword_1ECF93940;
  if (!qword_1ECF93940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93940);
  }

  return result;
}

unint64_t sub_1E4B09F7C()
{
  result = qword_1ECF93948;
  if (!qword_1ECF93948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93948);
  }

  return result;
}

unint64_t sub_1E4B09FD4()
{
  result = qword_1ECF93950;
  if (!qword_1ECF93950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93950);
  }

  return result;
}

unint64_t sub_1E4B0A02C()
{
  result = qword_1ECF93958;
  if (!qword_1ECF93958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93958);
  }

  return result;
}

unint64_t sub_1E4B0A084()
{
  result = qword_1ECF93960;
  if (!qword_1ECF93960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93960);
  }

  return result;
}

unint64_t sub_1E4B0A0DC()
{
  result = qword_1ECF93968;
  if (!qword_1ECF93968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93968);
  }

  return result;
}

unint64_t sub_1E4B0A134()
{
  result = qword_1ECF93970;
  if (!qword_1ECF93970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93970);
  }

  return result;
}

unint64_t sub_1E4B0A18C()
{
  result = qword_1ECF93978;
  if (!qword_1ECF93978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93978);
  }

  return result;
}

unint64_t sub_1E4B0A1E4()
{
  result = qword_1ECF93980;
  if (!qword_1ECF93980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93980);
  }

  return result;
}

unint64_t sub_1E4B0A23C()
{
  result = qword_1ECF93988;
  if (!qword_1ECF93988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93988);
  }

  return result;
}

unint64_t sub_1E4B0A294()
{
  result = qword_1ECF93990;
  if (!qword_1ECF93990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93990);
  }

  return result;
}

unint64_t sub_1E4B0A2EC()
{
  result = qword_1ECF93998;
  if (!qword_1ECF93998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93998);
  }

  return result;
}

unint64_t sub_1E4B0A344()
{
  result = qword_1ECF939A0;
  if (!qword_1ECF939A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF939A0);
  }

  return result;
}

unint64_t sub_1E4B0A39C()
{
  result = qword_1ECF939A8;
  if (!qword_1ECF939A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF939A8);
  }

  return result;
}

unint64_t sub_1E4B0A3F4()
{
  result = qword_1ECF939B0;
  if (!qword_1ECF939B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF939B0);
  }

  return result;
}

unint64_t sub_1E4B0A44C()
{
  result = qword_1ECF939B8;
  if (!qword_1ECF939B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF939B8);
  }

  return result;
}

uint64_t sub_1E4B0A4A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_1E4B0A654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461636F6C6F6567 && a2 == 0xEF687375506E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF16C0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF16E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEC00000064726143 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1700 == a2)
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

uint64_t sub_1E4B0A8BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4B0A9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463417473616CLL && a2 == 0xEA00000000006576 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4968736572666572 && a2 == 0xEF6C61767265746ELL)
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

unint64_t sub_1E4B0AB54()
{
  result = qword_1ECF939C0;
  if (!qword_1ECF939C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF939C0);
  }

  return result;
}

uint64_t sub_1E4B0ABD8(uint64_t a1)
{
  v2 = sub_1E4B0B1B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0AC14(uint64_t a1)
{
  v2 = sub_1E4B0B1B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B0AC50()
{
  if (*v0)
  {
    result = 0x7265646E6572;
  }

  else
  {
    result = 0x656D686361747461;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B0AC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265646E6572 && a2 == 0xE600000000000000)
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

uint64_t sub_1E4B0AD6C(uint64_t a1)
{
  v2 = sub_1E4B0B10C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0ADA8(uint64_t a1)
{
  v2 = sub_1E4B0B10C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B0ADE4(uint64_t a1)
{
  v2 = sub_1E4B0B160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0AE20(uint64_t a1)
{
  v2 = sub_1E4B0B160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSFileTransferMetadata.Disposition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939E8, &qword_1E4C01970);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939F0, &qword_1E4C01978);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939F8, &qword_1E4C01980);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B0B10C();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4B0B160();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4B0B1B4();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E4B0B10C()
{
  result = qword_1ECF93A00;
  if (!qword_1ECF93A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A00);
  }

  return result;
}

unint64_t sub_1E4B0B160()
{
  result = qword_1ECF93A08;
  if (!qword_1ECF93A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A08);
  }

  return result;
}

unint64_t sub_1E4B0B1B4()
{
  result = qword_1ECF93A10;
  if (!qword_1ECF93A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A10);
  }

  return result;
}

uint64_t RCSFileTransferMetadata.Disposition.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSFileTransferMetadata.Disposition.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93A18, &qword_1E4C01988);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93A20, &qword_1E4C01990);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93A28, &qword_1E4C01998);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B0B10C();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSFileTransferMetadata.Disposition;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4B0B160();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4B0B1B4();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t RCSFileTransferMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4BEFA6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RCSFileTransferMetadata.fileName.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSFileTransferMetadata() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for RCSFileTransferMetadata()
{
  result = qword_1EE2BDB08;
  if (!qword_1EE2BDB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RCSFileTransferMetadata.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSFileTransferMetadata() + 28);

  return sub_1E4B0B8C4(v3, a1);
}

uint64_t sub_1E4B0B8C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSFileTransferMetadata.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSFileTransferMetadata() + 32);
  v4 = sub_1E4BEFABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSFileTransferMetadata.disposition.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSFileTransferMetadata();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t RCSFileTransferMetadata.disposition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RCSFileTransferMetadata();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t RCSFileTransferMetadata.playbackLength.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSFileTransferMetadata() + 40));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t RCSFileTransferMetadata.playbackLength.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for RCSFileTransferMetadata();
  v8 = v3 + *(result + 40);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t RCSFileTransferMetadata.init(url:fileName:fileSize:contentType:expirationDate:disposition:playbackLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v17 = *a7;
  v18 = type metadata accessor for RCSFileTransferMetadata();
  v19 = v18[9];
  *(a9 + v19) = 2;
  v20 = a9 + v18[10];
  v21 = sub_1E4BEFA6C();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = (a9 + v18[5]);
  *v22 = a2;
  v22[1] = a3;
  *(a9 + v18[6]) = a4;
  sub_1E4AE2138(a5, a9 + v18[7]);
  v23 = v18[8];
  v24 = sub_1E4BEFABC();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a6, v24);
  *(a9 + v19) = v17;
  *v20 = a8;
  *(v20 + 8) = a10;
  *(v20 + 16) = a11 & 1;
  return result;
}

uint64_t sub_1E4B0BC70()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x7469736F70736964;
  if (v1 != 5)
  {
    v3 = 0x6B63616279616C70;
  }

  v4 = 0x54746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x6974617269707865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E656C6966;
  if (v1 != 1)
  {
    v5 = 0x657A6953656C6966;
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

uint64_t sub_1E4B0BD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B0D408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B0BD94(uint64_t a1)
{
  v2 = sub_1E4B0CCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0BDD0(uint64_t a1)
{
  v2 = sub_1E4B0CCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSFileTransferMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93A30, &qword_1E4C019A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B0CCA8();
  sub_1E4BF0ACC();
  LOBYTE(v21) = 0;
  sub_1E4BEFA6C();
  sub_1E4B0CD50(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = type metadata accessor for RCSFileTransferMetadata();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v21) = 1;
    sub_1E4BF08CC();
    v15 = *(v3 + v11[6]);
    LOBYTE(v21) = 2;
    sub_1E4BF092C();
    v16 = v11[7];
    LOBYTE(v21) = 3;
    sub_1E4BEFB4C();
    sub_1E4AF109C(&qword_1ECF92C08);
    sub_1E4BF08EC();
    v17 = v11[8];
    LOBYTE(v21) = 4;
    sub_1E4BEFABC();
    sub_1E4B0CD50(&qword_1ECF925B0, MEMORY[0x1E6969530]);
    sub_1E4BF093C();
    LOBYTE(v21) = *(v3 + v11[9]);
    v23 = 5;
    sub_1E4B0CCFC();
    sub_1E4BF08EC();
    v18 = (v3 + v11[10]);
    v19 = *(v18 + 16);
    v21 = *v18;
    v22 = v19;
    v23 = 6;
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSFileTransferMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = sub_1E4BEFABC();
  v45 = *(v42 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4BEFA6C();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93A48, &qword_1E4C019A8);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for RCSFileTransferMetadata();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 36);
  v16[v17] = 2;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B0CCA8();
  v49 = v11;
  v19 = v50;
  sub_1E4BF0ABC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v17;
  v21 = v43;
  v20 = v44;
  v50 = v12;
  v22 = v16;
  v23 = v45;
  LOBYTE(v51) = 0;
  sub_1E4B0CD50(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF087C();
  (*(v21 + 32))(v22, v48, v5);
  LOBYTE(v51) = 1;
  v24 = sub_1E4BF080C();
  v25 = &v22[v50[5]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v51) = 2;
  v48 = 0;
  v27 = sub_1E4BF086C();
  v28 = v50[6];
  v39 = v22;
  *&v22[v28] = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v39 - v31;
  sub_1E4BEFB4C();
  LOBYTE(v51) = 3;
  sub_1E4AF109C(&qword_1ECF92C38);
  sub_1E4BF082C();
  sub_1E4AE2138(v32, v39 + v50[7]);
  LOBYTE(v51) = 4;
  sub_1E4B0CD50(&qword_1ECF925D8, MEMORY[0x1E6969530]);
  v33 = v20;
  v34 = v42;
  sub_1E4BF087C();
  (*(v23 + 32))(v39 + v50[8], v33, v34);
  v53 = 5;
  sub_1E4B0CD98();
  sub_1E4BF082C();
  v35 = v39;
  *(v39 + v40) = v51;
  v53 = 6;
  sub_1E4BF082C();
  v36 = v35 + v50[10];
  (*(v46 + 8))(v49, v47);
  v37 = v52;
  *v36 = v51;
  *(v36 + 16) = v37;
  sub_1E4B0CDEC(v35, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B0CE50(v35);
}

uint64_t _s21TelephonyMessagingKit23RCSFileTransferMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E4BEFA4C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RCSFileTransferMetadata();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1E4BF099C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v11 = v4[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF939C8, &qword_1E4C01950);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v45 - v15;
  v17 = *(v14 + 56);
  sub_1E4B0B8C4(a1 + v11, v45 - v15);
  sub_1E4B0B8C4(a2 + v11, &v16[v17]);
  v18 = sub_1E4BEFB4C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) != 1)
  {
    v45[3] = v45;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v45[2] = v45;
    v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v21 - 8);
    v24 = v45 - v23;
    sub_1E4B0B8C4(v16, v45 - v23);
    v25 = v20(&v16[v17], 1, v18);
    if (v25 != 1)
    {
      v45[1] = v45;
      v26 = *(v19 + 64);
      MEMORY[0x1EEE9AC00](v25);
      v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 32))(v28, &v16[v17], v18);
      sub_1E4AF109C(&qword_1ECF939D0);
      v29 = sub_1E4BEFE6C();
      v30 = *(v19 + 8);
      v30(v28, v18);
      v30(v24, v18);
      sub_1E4AE0AE4(v16, &qword_1ECF92700, &qword_1E4BFB090);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    (*(v19 + 8))(v24, v18);
LABEL_17:
    sub_1E4AE0AE4(v16, &qword_1ECF939C8, &qword_1E4C01950);
    return 0;
  }

  if (v20(&v16[v17], 1, v18) != 1)
  {
    goto LABEL_17;
  }

  sub_1E4AE0AE4(v16, &qword_1ECF92700, &qword_1E4BFB090);
LABEL_19:
  v31 = v4[8];
  if (sub_1E4BEFA9C())
  {
    v32 = v4[9];
    v33 = *(a1 + v32);
    v34 = *(a2 + v32);
    if (v33 == 2)
    {
      if (v34 != 2)
      {
        return 0;
      }
    }

    else if (v34 == 2 || ((v34 ^ v33) & 1) != 0)
    {
      return 0;
    }

    v35 = v4[10];
    v36 = (a1 + v35);
    v37 = *(a1 + v35 + 16);
    v38 = (a2 + v35);
    v39 = *(v38 + 16);
    if (v37)
    {
      if ((v38[2] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v38[2])
      {
        return 0;
      }

      v40 = *v36;
      v41 = v36[1];
      v42 = *v38;
      v43 = v38[1];
      if ((sub_1E4BF0AEC() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

unint64_t sub_1E4B0CCA8()
{
  result = qword_1ECF93A38;
  if (!qword_1ECF93A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A38);
  }

  return result;
}

unint64_t sub_1E4B0CCFC()
{
  result = qword_1ECF93A40;
  if (!qword_1ECF93A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A40);
  }

  return result;
}

uint64_t sub_1E4B0CD50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4B0CD98()
{
  result = qword_1ECF93A50;
  if (!qword_1ECF93A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A50);
  }

  return result;
}

uint64_t sub_1E4B0CDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileTransferMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B0CE50(uint64_t a1)
{
  v2 = type metadata accessor for RCSFileTransferMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4B0CEB0()
{
  result = qword_1ECF93A58;
  if (!qword_1ECF93A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A58);
  }

  return result;
}

void sub_1E4B0CF2C()
{
  sub_1E4BEFA6C();
  if (v0 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1EE2BD740);
    if (v1 <= 0x3F)
    {
      sub_1E4AF1BE0();
      if (v2 <= 0x3F)
      {
        sub_1E4BEFABC();
        if (v3 <= 0x3F)
        {
          sub_1E4AE5B08(319, &qword_1EE2BDB18);
          if (v4 <= 0x3F)
          {
            sub_1E4AE5B08(319, &qword_1EE2BD700);
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

unint64_t sub_1E4B0D09C()
{
  result = qword_1ECF93A60;
  if (!qword_1ECF93A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A60);
  }

  return result;
}

unint64_t sub_1E4B0D0F4()
{
  result = qword_1ECF93A68;
  if (!qword_1ECF93A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A68);
  }

  return result;
}

unint64_t sub_1E4B0D14C()
{
  result = qword_1ECF93A70;
  if (!qword_1ECF93A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A70);
  }

  return result;
}

unint64_t sub_1E4B0D1A4()
{
  result = qword_1ECF93A78;
  if (!qword_1ECF93A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A78);
  }

  return result;
}

unint64_t sub_1E4B0D1FC()
{
  result = qword_1ECF93A80;
  if (!qword_1ECF93A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A80);
  }

  return result;
}

unint64_t sub_1E4B0D254()
{
  result = qword_1ECF93A88;
  if (!qword_1ECF93A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A88);
  }

  return result;
}

unint64_t sub_1E4B0D2AC()
{
  result = qword_1ECF93A90;
  if (!qword_1ECF93A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A90);
  }

  return result;
}

unint64_t sub_1E4B0D304()
{
  result = qword_1ECF93A98;
  if (!qword_1ECF93A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93A98);
  }

  return result;
}

unint64_t sub_1E4B0D35C()
{
  result = qword_1ECF93AA0;
  if (!qword_1ECF93AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AA0);
  }

  return result;
}

unint64_t sub_1E4B0D3B4()
{
  result = qword_1ECF93AA8;
  if (!qword_1ECF93AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AA8);
  }

  return result;
}

uint64_t sub_1E4B0D408(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7469736F70736964 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEE006874676E654CLL)
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

_BYTE *MMSResultNotification.init(cellularServiceID:messageID:error:)@<X0>(_BYTE *result@<X0>, int *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

unint64_t sub_1E4B0D6B4()
{
  v1 = 0x496567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
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

uint64_t sub_1E4B0D714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B0DFF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B0D73C(uint64_t a1)
{
  v2 = sub_1E4B0D994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0D778(uint64_t a1)
{
  v2 = sub_1E4B0D994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSResultNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93AB0, &qword_1E4C01EF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  HIDWORD(v14) = v1[8];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B0D994();
  sub_1E4BF0ACC();
  v21 = v9;
  v20 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v12 = BYTE4(v14);
    v17 = v15;
    v19 = 1;
    sub_1E4AF1680();
    sub_1E4BF093C();
    v18 = v12;
    v16 = 2;
    sub_1E4B0D9E8();
    sub_1E4BF08EC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4B0D994()
{
  result = qword_1ECF93AB8;
  if (!qword_1ECF93AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AB8);
  }

  return result;
}

unint64_t sub_1E4B0D9E8()
{
  result = qword_1ECF93AC0;
  if (!qword_1ECF93AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AC0);
  }

  return result;
}

uint64_t MMSResultNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93AC8, &qword_1E4C01EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B0D994();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v19 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v11 = v20;
    v18 = 1;
    sub_1E4AF1728();
    sub_1E4BF087C();
    v13 = v16;
    v15[15] = 2;
    sub_1E4B0DC58();
    sub_1E4BF082C();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    *(a2 + 4) = v13;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B0DC58()
{
  result = qword_1ECF93AD0;
  if (!qword_1ECF93AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AD0);
  }

  return result;
}

unint64_t sub_1E4B0DCAC(uint64_t a1)
{
  result = sub_1E4B0DCD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B0DCD4()
{
  result = qword_1ECF93AD8;
  if (!qword_1ECF93AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AD8);
  }

  return result;
}

unint64_t sub_1E4B0DD28(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B0DD58();
  result = sub_1E4B0DDAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B0DD58()
{
  result = qword_1ECF93AE0;
  if (!qword_1ECF93AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AE0);
  }

  return result;
}

unint64_t sub_1E4B0DDAC()
{
  result = qword_1ECF93AE8;
  if (!qword_1ECF93AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AE8);
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MMSResultNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
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

uint64_t storeEnumTagSinglePayload for MMSResultNotification(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E4B0DEF0()
{
  result = qword_1ECF93AF0;
  if (!qword_1ECF93AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AF0);
  }

  return result;
}

unint64_t sub_1E4B0DF48()
{
  result = qword_1ECF93AF8;
  if (!qword_1ECF93AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93AF8);
  }

  return result;
}

unint64_t sub_1E4B0DFA0()
{
  result = qword_1ECF93B00;
  if (!qword_1ECF93B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93B00);
  }

  return result;
}

uint64_t sub_1E4B0DFF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_1E4B0E11C()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF93B08);
  v1 = __swift_project_value_buffer(v0, qword_1ECF93B08);
  if (qword_1ECF92428 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ECFD4458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TransferService.Server.__allocating_init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B20, &qword_1E4C02100);
  v1 = swift_allocObject();
  v2 = sub_1E4B0E670(0xD000000000000022, 0x80000001E4BF1760, &qword_1ECF93BD8, &qword_1E4C02180, sub_1E4B14488);
  if (!v0)
  {
    v7[3] = &type metadata for DefaultAppInfoProvider;
    v7[4] = &off_1F5EB0120;
    v6[3] = &type metadata for OSVariantProvider;
    v6[4] = &off_1F5EB9B50;
    v3 = v2;
    v4 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for DefaultAppInfoProvider);
    __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for OSVariantProvider);
    v1 = sub_1E4B13298(v3, v4);

    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return v1;
}

uint64_t sub_1E4B0E328(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E4B136CC(a1);
  }

  else
  {
    sub_1E4B143D0();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }
}

void sub_1E4B0E40C()
{
  v1 = v0;
  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1EE2BD868);
  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Starting XPC server", v5, 2u);
    MEMORY[0x1E6921800](v5, -1, -1);
  }

  if (*(v1 + 24))
  {
    v6 = *(v1 + 24);

    sub_1E4BEFCAC();
  }
}

void TransferService.Server.setIncomingMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  sub_1E4B6D168(a1, a2, a3, *(a4 + 8));
}

{
  v5 = *(v4 + 16);
  sub_1E4B6D180(a1, a2, a3, *(a4 + 8));
}

void *TransferService.Server.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  return v0;
}

uint64_t TransferService.Server.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_1E4B0E670(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v37 = a5;
  v32 = a3;
  v33 = a4;
  v6 = v5;
  v35 = a1;
  v36 = a2;
  v7 = sub_1E4BEFC5C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4BF04FC();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4BF04EC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = sub_1E4BEFD8C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1E4B1340C();
  v29[1] = "osVariantProvider";
  v29[2] = v18;
  sub_1E4BEFD7C();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1E4B1363C(&qword_1EE2BD718, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B28, &qword_1E4C02138);
  sub_1E4B14808(&qword_1EE2BD728, &qword_1ECF93B28, &qword_1E4C02138);
  sub_1E4BF05CC();
  (*(v30 + 104))(v13, *MEMORY[0x1E69E8090], v31);
  v19 = sub_1E4BF052C();
  v6[2] = v19;
  v6[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  v20 = swift_allocObject();
  *(v20 + 96) = 0;
  *(v20 + 16) = MEMORY[0x1E69E7CC8];
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  v6[4] = v20;
  v6[8] = &type metadata for AuditTokenProvider;
  v6[9] = &off_1F5EB62F8;
  v21 = v19;
  sub_1E4BEFC4C();
  v22 = sub_1E4BEFCBC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = v38;
  v26 = sub_1E4BEFC9C();
  if (!v25)
  {
    v27 = v6[3];
    v6[3] = v26;
  }

  return v6;
}

uint64_t sub_1E4B0E9F0()
{
  sub_1E4BEFC6C();
  if (v7 < 1)
  {
    return sub_1E4BEFC8C();
  }

  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 96));
  v2 = *(v1 + 48);
  sub_1E4AD650C(v2);
  os_unfair_lock_unlock((v1 + 96));
  if (v2)
  {
    v4 = MEMORY[0x1EEE9AC00](v3);
    MEMORY[0x1EEE9AC00](v4);
    sub_1E4BEFC6C();
    sub_1E4AD651C(v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B38, &qword_1E4C02148);
  v6 = sub_1E4BEFC6C();
  MEMORY[0x1EEE9AC00](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BE0, &qword_1E4C02188);
  sub_1E4B14808(&qword_1ECF93BE8, &qword_1ECF93BE0, &qword_1E4C02188);
  sub_1E4BEFC7C();
}

uint64_t sub_1E4B0EDE0()
{
  sub_1E4BEFC6C();
  if (v10 < 1)
  {
    return sub_1E4BEFC8C();
  }

  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 96));
  v2 = *(v1 + 48);
  sub_1E4AD650C(v2);
  os_unfair_lock_unlock((v1 + 96));
  if (v2)
  {
    v4 = MEMORY[0x1EEE9AC00](v3);
    MEMORY[0x1EEE9AC00](v4);
    sub_1E4BEFC6C();
    sub_1E4AD651C(v2);
    v6 = v8;
    v2 = v9;
  }

  else
  {
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B38, &qword_1E4C02148);
  v7 = sub_1E4BEFC6C();
  MEMORY[0x1EEE9AC00](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B40, &qword_1E4C02150);
  sub_1E4B14808(&qword_1ECF93B48, &qword_1ECF93B40, &qword_1E4C02150);
  sub_1E4BEFC7C();

  return sub_1E4B1349C(v6, v2);
}

double (*sub_1E4B0F20C(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v11 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v11, qword_1EE2BD868);

  v12 = sub_1E4BEFB5C();
  v13 = sub_1E4BF04BC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 67109378;
    *(v14 + 4) = a2;
    *(v14 + 8) = 2080;
    if (a4)
    {
      v16 = a4;
    }

    else
    {
      a3 = 7104878;
      v16 = 0xE300000000000000;
    }

    v17 = sub_1E4B30548(a3, v16, &v19);

    *(v14 + 10) = v17;
    _os_log_impl(&dword_1E4AD3000, v12, v13, "Received new connection from PID %d, bundle ID %s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E6921800](v15, -1, -1);
    MEMORY[0x1E6921800](v14, -1, -1);
  }

  return sub_1E4B0F5A4(a1, a6 & 1);
}

double (*sub_1E4B0F3BC(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v15 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v15, qword_1EE2BD868);

  v16 = sub_1E4BEFB5C();
  v17 = sub_1E4BF04BC();

  if (os_log_type_enabled(v16, v17))
  {
    v24 = a8;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 67109378;
    *(v18 + 4) = a2;
    *(v18 + 8) = 2080;
    if (a4)
    {
      v20 = a4;
    }

    else
    {
      a3 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_1E4B30548(a3, v20, &v25);

    *(v18 + 10) = v21;
    _os_log_impl(&dword_1E4AD3000, v16, v17, "Received new connection from PID %d, bundle ID %s", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E6921800](v19, -1, -1);
    v22 = v18;
    a8 = v24;
    MEMORY[0x1E6921800](v22, -1, -1);
  }

  return sub_1E4B0FE54(a1, a6, a7, a8);
}

double (*sub_1E4B0F5A4(uint64_t a1, char a2))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1E4BEFD6C();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1E4BEFD8C();
  v66 = *(v68 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4BEFAFC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v58 = &v57 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - v16;
  v60 = v18;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BF0, &qword_1E4C0E940);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v25 = sub_1E4B12BA4(v24, a2 & 1);
  v26 = v9[2];
  v73 = v25;
  v26(v20, v25 + qword_1EE2C2010, v8);
  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v27 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v27, qword_1EE2BD868);
  v75 = v20;
  v72 = v9 + 2;
  *&v71 = v26;
  v26(v17, v20, v8);
  v28 = sub_1E4BEFB5C();
  v29 = sub_1E4BF04BC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v9;
    v32 = swift_slowAlloc();
    *&aBlock = v32;
    *v30 = 136315138;
    sub_1E4B1363C(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
    v33 = sub_1E4BF096C();
    v35 = v34;
    v62 = v31[1];
    v62(v17, v8);
    v36 = sub_1E4B30548(v33, v35, &aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1E4AD3000, v28, v29, "Setting up connection %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E6921800](v32, -1, -1);
    MEMORY[0x1E6921800](v30, -1, -1);

    v37 = v8;
  }

  else
  {

    v62 = v9[1];
    v62(v17, v8);
    v37 = v8;
    v31 = v9;
  }

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v58;
  (v71)(v58, v75, v37);
  v41 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  *(v42 + 24) = v39;
  v63 = v31;
  v43 = v31[4];
  v59 = v42;
  v43(v42 + v41, v40, v37);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v61;
  (v71)(v61, v75, v37);
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  *(v47 + 24) = v45;
  v72 = v47;
  v43(v47 + v41, v46, v37);
  v48 = *(v74 + 32);
  os_unfair_lock_lock(v48 + 24);
  sub_1E4B14710(&v48[4], &aBlock);
  os_unfair_lock_unlock(v48 + 24);
  v65 = v37;
  if (aBlock)
  {
    v71 = aBlock;
    v49 = swift_allocObject();
    *(v49 + 16) = v71;
    v50 = sub_1E4B148B8;
  }

  else
  {
    v50 = 0;
    v49 = 0;
  }

  v74 = *(v74 + 16);
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v49;
  v51[4] = v73;
  v80 = sub_1E4B148C0;
  v81 = v51;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v78 = sub_1E4B11ACC;
  v79 = &block_descriptor_64;
  v52 = _Block_copy(&aBlock);
  sub_1E4AD650C(v50);

  v53 = v64;
  sub_1E4BEFD7C();
  v76 = MEMORY[0x1E69E7CC0];
  sub_1E4B1363C(&qword_1ECF93B60, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B68, &qword_1E4C02158);
  sub_1E4B14808(&qword_1ECF93B70, &qword_1ECF93B68, &qword_1E4C02158);
  v54 = v67;
  v55 = v70;
  sub_1E4BF05CC();
  MEMORY[0x1E6920B60](0, v53, v54, v52);
  _Block_release(v52);
  sub_1E4AD651C(v50);

  (*(v69 + 8))(v54, v55);
  (*(v66 + 8))(v53, v68);
  v62(v75, v65);

  return sub_1E4B1450C;
}

double (*sub_1E4B0FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_1E4BEFD6C();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v68 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E4BEFD8C();
  v67 = *(v69 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4BEFAFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v62 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v60 = v59 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v59 - v20;
  v61 = v22;
  MEMORY[0x1EEE9AC00](v19);
  v24 = v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1E4B13548(a2, a3);

  v29 = sub_1E4B12CE8(v28, a2, a3, a4);
  v30 = *(v13 + 16);
  v74 = v29;
  v30(v24, v29 + qword_1EE2C2010, v12);
  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v31 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v31, qword_1EE2BD868);
  v76 = v24;
  v73 = v13 + 16;
  *&v72 = v30;
  v30(v21, v24, v12);
  v32 = sub_1E4BEFB5C();
  v33 = sub_1E4BF04BC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&aBlock = v35;
    *v34 = 136315138;
    sub_1E4B1363C(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
    v36 = sub_1E4BF096C();
    v38 = v37;
    v63 = *(v13 + 8);
    v63(v21, v12);
    v39 = sub_1E4B30548(v36, v38, &aBlock);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_1E4AD3000, v32, v33, "Setting up connection %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E6921800](v35, -1, -1);
    MEMORY[0x1E6921800](v34, -1, -1);
  }

  else
  {

    v63 = *(v13 + 8);
    v63(v21, v12);
  }

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v60;
  (v72)(v60, v76, v12);
  v43 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  *(v44 + 24) = v41;
  v64 = v13;
  v45 = *(v13 + 32);
  v59[1] = v44;
  v45(v44 + v43, v42, v12);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = v62;
  (v72)(v62, v76, v12);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  *(v49 + 24) = v47;
  v73 = v49;
  v45(v49 + v43, v48, v12);
  v50 = *(v75 + 32);
  os_unfair_lock_lock(v50 + 24);
  sub_1E4B135BC(&v50[4], &aBlock);
  os_unfair_lock_unlock(v50 + 24);
  v66 = v12;
  if (aBlock)
  {
    v72 = aBlock;
    v51 = swift_allocObject();
    *(v51 + 16) = v72;
    v52 = sub_1E4B13604;
  }

  else
  {
    v52 = 0;
    v51 = 0;
  }

  v75 = *(v75 + 16);
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = v51;
  v53[4] = v74;
  v81 = sub_1E4B135E8;
  v82 = v53;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v79 = sub_1E4B11ACC;
  v80 = &block_descriptor;
  v54 = _Block_copy(&aBlock);
  sub_1E4AD650C(v52);

  v55 = v65;
  sub_1E4BEFD7C();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1E4B1363C(&qword_1ECF93B60, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B68, &qword_1E4C02158);
  sub_1E4B14808(&qword_1ECF93B70, &qword_1ECF93B68, &qword_1E4C02158);
  v56 = v68;
  v57 = v71;
  sub_1E4BF05CC();
  MEMORY[0x1E6920B60](0, v55, v56, v54);
  _Block_release(v54);
  sub_1E4AD651C(v52);

  (*(v70 + 8))(v56, v57);
  (*(v67 + 8))(v55, v69);
  v63(v76, v66);

  return sub_1E4B1358C;
}

double sub_1E4B10718@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_1E4BEFAFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      a3(a1, Strong);

      return result;
    }
  }

  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v15 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v15, qword_1EE2BD868);
  (*(v9 + 16))(v12, a2, v8);
  v16 = sub_1E4BEFB5C();
  v17 = sub_1E4BF04DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    sub_1E4B1363C(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
    v20 = sub_1E4BF096C();
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_1E4B30548(v20, v22, &v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1E4AD3000, v16, v17, "Connection %s received message after being destroyed", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E6921800](v19, -1, -1);
    MEMORY[0x1E6921800](v18, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1E4B10A24@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4B14210();
  sub_1E4BEFD2C();
  return sub_1E4B11B10(a1);
}

uint64_t sub_1E4B10C64@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4B14210();
  sub_1E4BEFD2C();
  return sub_1E4B11B10(a1);
}

void sub_1E4B10EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E4BEFAFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v16 = v15;
      if (qword_1EE2BD860 != -1)
      {
        swift_once();
      }

      v17 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v17, qword_1EE2BD868);

      v18 = sub_1E4BEFB5C();
      v19 = sub_1E4BF04BC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37[0] = swift_slowAlloc();
        v38 = v37[0];
        *v20 = 136315138;
        (*(v6 + 16))(v12, v16 + qword_1EE2C2010, v5);
        sub_1E4B1363C(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
        v21 = sub_1E4BF096C();
        v23 = v22;

        (*(v6 + 8))(v12, v5);
        v24 = sub_1E4B30548(v21, v23, &v38);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1E4AD3000, v18, v19, "Received cancellation for connection %s", v20, 0xCu);
        v25 = v37[0];
        __swift_destroy_boxed_opaque_existential_1(v37[0]);
        MEMORY[0x1E6921800](v25, -1, -1);
        MEMORY[0x1E6921800](v20, -1, -1);
      }

      else
      {
      }

      v35 = *(v14 + 32);
      os_unfair_lock_lock((v35 + 96));
      sub_1E4B147EC((v35 + 16), &v38);
      os_unfair_lock_unlock((v35 + 96));
      v36 = v38;
      if (v38)
      {
        v38 = v16;

        (v36)(&v38);
        sub_1E4AD651C(v36);

        sub_1E4AD651C(v36);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v26 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v26, qword_1EE2BD868);
  (*(v6 + 16))(v10, a4, v5);
  v27 = sub_1E4BEFB5C();
  v28 = sub_1E4BF04DC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    sub_1E4B1363C(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
    v31 = sub_1E4BF096C();
    v33 = v32;
    (*(v6 + 8))(v10, v5);
    v34 = sub_1E4B30548(v31, v33, &v38);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1E4AD3000, v27, v28, "Connection %s received cancellation after being destroyed", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E6921800](v30, -1, -1);
    MEMORY[0x1E6921800](v29, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }
}

void sub_1E4B113CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E4BEFAFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v16 = v15;
      if (qword_1EE2BD860 != -1)
      {
        swift_once();
      }

      v17 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v17, qword_1EE2BD868);

      v18 = sub_1E4BEFB5C();
      v19 = sub_1E4BF04BC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37[0] = swift_slowAlloc();
        v38 = v37[0];
        *v20 = 136315138;
        (*(v6 + 16))(v12, v16 + qword_1EE2C2010, v5);
        sub_1E4B1363C(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
        v21 = sub_1E4BF096C();
        v23 = v22;

        (*(v6 + 8))(v12, v5);
        v24 = sub_1E4B30548(v21, v23, &v38);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1E4AD3000, v18, v19, "Received cancellation for connection %s", v20, 0xCu);
        v25 = v37[0];
        __swift_destroy_boxed_opaque_existential_1(v37[0]);
        MEMORY[0x1E6921800](v25, -1, -1);
        MEMORY[0x1E6921800](v20, -1, -1);
      }

      else
      {
      }

      v35 = *(v14 + 32);
      os_unfair_lock_lock((v35 + 96));
      sub_1E4B136B0((v35 + 16), &v38);
      os_unfair_lock_unlock((v35 + 96));
      v36 = v38;
      if (v38)
      {
        v38 = v16;

        (v36)(&v38);
        sub_1E4AD651C(v36);

        sub_1E4AD651C(v36);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v26 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v26, qword_1EE2BD868);
  (*(v6 + 16))(v10, a4, v5);
  v27 = sub_1E4BEFB5C();
  v28 = sub_1E4BF04DC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136315138;
    sub_1E4B1363C(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
    v31 = sub_1E4BF096C();
    v33 = v32;
    (*(v6 + 8))(v10, v5);
    v34 = sub_1E4B30548(v31, v33, &v38);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1E4AD3000, v27, v28, "Connection %s received cancellation after being destroyed", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E6921800](v30, -1, -1);
    MEMORY[0x1E6921800](v29, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }
}

uint64_t (*sub_1E4B118F4(void *a1))(void *)
{

  MEMORY[0x1E6920720](v2);
  if (*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E4BF010C();
  }

  sub_1E4BF014C();
  v3 = a1[2];
  v4 = a1[3];
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E4B148C8;
  }

  else
  {
    v6 = 0;
  }

  sub_1E4AD650C(v3);
  return v6;
}

uint64_t (*sub_1E4B119E0(void *a1))(void *a1)
{

  MEMORY[0x1E6920720](v2);
  if (*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E4BF010C();
  }

  sub_1E4BF014C();
  v3 = a1[2];
  v4 = a1[3];
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E4B13684;
  }

  else
  {
    v6 = 0;
  }

  sub_1E4AD650C(v3);
  return v6;
}

uint64_t sub_1E4B11ACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1E4B11B10@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1EE2BD868);
  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_1E4BEFF0C();
    v9 = sub_1E4B30548(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Received control message: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6921800](v6, -1, -1);
    MEMORY[0x1E6921800](v5, -1, -1);
  }

  if (sub_1E4BEFD0C())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
    v11 = sub_1E4B14808(&qword_1ECF93BA8, &qword_1ECF93BA0, &qword_1E4C0BEC0);
    result = swift_allocObject();
    *(result + 80) = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v10;
  a1[4] = v11;
  *a1 = result;
  return result;
}

uint64_t sub_1E4B11CF0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1E4BEFD3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a1;
  sub_1E4B14334((a1 + 8), v70);
  v12 = *(v3 + 32);
  os_unfair_lock_lock((v12 + 96));
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v16 = sub_1E4B148CC;
  }

  else
  {
    v16 = 0;
  }

  sub_1E4AD650C(v13);
  os_unfair_lock_unlock((v12 + 96));
  if (v13)
  {
    v64 = v11;
    v65 = v8;
    v17 = v7;
    v18 = a3;
    v19 = sub_1E4BEFCFC();
    v21 = v20;
    v22 = a2;
    v24 = v23;
    v26 = v25;
    type metadata accessor for audit_token_t(0);
    v69[3] = v27;
    v69[4] = &off_1F5EB1D50;
    v28 = swift_allocObject();
    v69[0] = v28;
    v28[2] = v19;
    v28[3] = v21;
    v28[4] = v24;
    v28[5] = v26;
    sub_1E4B14334(v70, v67);
    sub_1E4B14334(v69, &v68);
    (v16)(v67);
    sub_1E4AD651C(v16);
    sub_1E4B142B8(v67);
    __swift_destroy_boxed_opaque_existential_1(v69);
    a2 = v22;
    a3 = v18;
    v7 = v17;
    v8 = v65;
    v11 = v64;
  }

  os_unfair_lock_lock((v12 + 96));
  v29 = *(v12 + 16);
  v30 = v66;
  if (*(v29 + 16) && (v31 = sub_1E4B8DB94(v66), (v32 & 1) != 0))
  {
    v33 = (*(v29 + 56) + 16 * v31);
    v34 = *v33;
    v35 = v33[1];

    os_unfair_lock_unlock((v12 + 96));
    if (v34)
    {
      v63 = v35;
      v64 = v34;
      if (qword_1EE2BD860 != -1)
      {
        swift_once();
      }

      v36 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v36, qword_1EE2BD868);
      v37 = sub_1E4BEFB5C();
      v38 = sub_1E4BF04BC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v65 = v8;
        v62 = a3;
        v61 = a2;
        v40 = v39;
        v41 = v11;
        v42 = v7;
        v43 = swift_slowAlloc();
        v67[0] = v43;
        *v40 = 136315138;
        LOBYTE(v69[0]) = v30;
        v44 = sub_1E4BEFEFC();
        v46 = sub_1E4B30548(v44, v45, v67);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_1E4AD3000, v37, v38, "Handling request: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        v47 = v43;
        v7 = v42;
        v11 = v41;
        MEMORY[0x1E6921800](v47, -1, -1);
        v48 = v40;
        a2 = v61;
        a3 = v62;
        v8 = v65;
        MEMORY[0x1E6921800](v48, -1, -1);
      }

      (*(v8 + 16))(v11, a2, v7);
      v49 = v64;
      (v64)(v11, v70);
      sub_1E4AD651C(v49);
      goto LABEL_20;
    }
  }

  else
  {
    os_unfair_lock_unlock((v12 + 96));
  }

  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v50 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v50, qword_1EE2BD868);
  v51 = sub_1E4BEFB5C();
  v52 = sub_1E4BF04DC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v67[0] = v54;
    *v53 = 136315138;
    LOBYTE(v69[0]) = v30;
    v55 = sub_1E4BEFEFC();
    v57 = sub_1E4B30548(v55, v56, v67);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1E4AD3000, v51, v52, "Received unhandled request: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1E6921800](v54, -1, -1);
    MEMORY[0x1E6921800](v53, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  sub_1E4B14264();
  v58 = swift_allocError();
  *v59 = 1;
  sub_1E4B6F9D4(v58);

LABEL_20:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_1E4B123F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1E4BEFD3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a1;
  sub_1E4B14334((a1 + 8), v70);
  v12 = *(v3 + 32);
  os_unfair_lock_lock((v12 + 96));
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v16 = sub_1E4B1430C;
  }

  else
  {
    v16 = 0;
  }

  sub_1E4AD650C(v13);
  os_unfair_lock_unlock((v12 + 96));
  if (v13)
  {
    v64 = v11;
    v65 = v8;
    v17 = v7;
    v18 = a3;
    v19 = sub_1E4BEFCFC();
    v21 = v20;
    v22 = a2;
    v24 = v23;
    v26 = v25;
    type metadata accessor for audit_token_t(0);
    v69[3] = v27;
    v69[4] = &off_1F5EB1D50;
    v28 = swift_allocObject();
    v69[0] = v28;
    v28[2] = v19;
    v28[3] = v21;
    v28[4] = v24;
    v28[5] = v26;
    sub_1E4B14334(v70, v67);
    sub_1E4B14334(v69, &v68);
    (v16)(v67);
    sub_1E4AD651C(v16);
    sub_1E4B142B8(v67);
    __swift_destroy_boxed_opaque_existential_1(v69);
    a2 = v22;
    a3 = v18;
    v7 = v17;
    v8 = v65;
    v11 = v64;
  }

  os_unfair_lock_lock((v12 + 96));
  v29 = *(v12 + 16);
  v30 = v66;
  if (*(v29 + 16) && (v31 = sub_1E4B8EFCC(v66), (v32 & 1) != 0))
  {
    v33 = (*(v29 + 56) + 16 * v31);
    v34 = *v33;
    v35 = v33[1];

    os_unfair_lock_unlock((v12 + 96));
    if (v34)
    {
      v63 = v35;
      v64 = v34;
      if (qword_1EE2BD860 != -1)
      {
        swift_once();
      }

      v36 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v36, qword_1EE2BD868);
      v37 = sub_1E4BEFB5C();
      v38 = sub_1E4BF04BC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v65 = v8;
        v62 = a3;
        v61 = a2;
        v40 = v39;
        v41 = v11;
        v42 = v7;
        v43 = swift_slowAlloc();
        v67[0] = v43;
        *v40 = 136315138;
        LOBYTE(v69[0]) = v30;
        v44 = sub_1E4BEFEFC();
        v46 = sub_1E4B30548(v44, v45, v67);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_1E4AD3000, v37, v38, "Handling request: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        v47 = v43;
        v7 = v42;
        v11 = v41;
        MEMORY[0x1E6921800](v47, -1, -1);
        v48 = v40;
        a2 = v61;
        a3 = v62;
        v8 = v65;
        MEMORY[0x1E6921800](v48, -1, -1);
      }

      (*(v8 + 16))(v11, a2, v7);
      v49 = v64;
      (v64)(v11, v70);
      sub_1E4AD651C(v49);
      goto LABEL_20;
    }
  }

  else
  {
    os_unfair_lock_unlock((v12 + 96));
  }

  if (qword_1EE2BD860 != -1)
  {
    swift_once();
  }

  v50 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v50, qword_1EE2BD868);
  v51 = sub_1E4BEFB5C();
  v52 = sub_1E4BF04DC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v67[0] = v54;
    *v53 = 136315138;
    LOBYTE(v69[0]) = v30;
    v55 = sub_1E4BEFEFC();
    v57 = sub_1E4B30548(v55, v56, v67);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1E4AD3000, v51, v52, "Received unhandled request: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1E6921800](v54, -1, -1);
    MEMORY[0x1E6921800](v53, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  sub_1E4B14264();
  v58 = swift_allocError();
  *v59 = 1;
  sub_1E4B6F9D4(v58);

LABEL_20:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_1E4B12AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  type metadata accessor for audit_token_t(0);
  v13[3] = v10;
  v13[4] = &off_1F5EB1D50;
  v11 = swift_allocObject();
  v13[0] = v11;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  a5(v13);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1E4B12BA4(uint64_t a1, char a2)
{
  sub_1E4BEFAEC();
  v5 = *(*v2 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BB8, &qword_1E4C02170);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v2 + v5) = v6;
  v7 = *(*v2 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93C10, &qword_1E4C021A0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + v7) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BC8, &qword_1E4C02178);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = a1;
  *(v2 + *(*v2 + 128)) = v9;
  *(v2 + *(*v2 + 112)) = a2 & 1;
  v10 = (v2 + *(*v2 + 120));
  *v10 = 0;
  v10[1] = 0;
  return v2;
}

uint64_t sub_1E4B12CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E4BEFAEC();
  v9 = *(*v4 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BB8, &qword_1E4C02170);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v4 + v9) = v10;
  v11 = *(*v4 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BC0, &unk_1E4C0E900);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  *(v4 + v11) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BC8, &qword_1E4C02178);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = a1;
  *(v4 + *(*v4 + 128)) = v13;
  v14 = (v4 + *(*v4 + 112));
  *v14 = a2;
  v14[1] = a3;
  v14[2] = a4;
  v15 = (v4 + *(*v4 + 120));
  *v15 = 0;
  v15[1] = 0;
  return v4;
}

uint64_t sub_1E4B12E40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_1E4B13F74(a1 + 1, a2, sub_1E4B853E4);

  v8 = a1[1];
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v14 = a1[1];
    }

    result = sub_1E4BF061C();
    v9 = result;
    if (result >= v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 < v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1E4B84514(v6, v9);
  v10 = a1[6];
  v11 = a1[7];
  if (v10)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v13 = sub_1E4B148C8;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *a3 = v13;
  a3[1] = v12;
  return sub_1E4AD650C(v10);
}

uint64_t sub_1E4B12F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for audit_token_t(0);
  v11 = v10;
  v18[3] = v10;
  v18[4] = &off_1F5EB1D50;
  v12 = swift_allocObject();
  v18[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v13 = __swift_project_boxed_opaque_existential_1(v18, v11);
  v14 = sub_1E4B35054(*v13, v13[1], v13[2], v13[3]);
  v16 = v15;
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  *a5 = v14;
  a5[1] = v16;
  return result;
}

uint64_t sub_1E4B13008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  type metadata accessor for audit_token_t(0);
  v11 = v10;
  v17[3] = v10;
  v17[4] = &off_1F5EB1D50;
  v12 = swift_allocObject();
  v17[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v13 = __swift_project_boxed_opaque_existential_1(v17, v11);
  v14 = v13[1];
  v18 = *v13;
  v19 = v14;
  *v16.val = v18;
  *&v16.val[4] = v14;
  LODWORD(a4) = audit_token_to_pid(&v16);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  *a5 = a4;
  return result;
}

uint64_t sub_1E4B130C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_1E4B13F74(a1 + 1, a2, sub_1E4B853E4);

  v8 = a1[1];
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v14 = a1[1];
    }

    result = sub_1E4BF061C();
    v9 = result;
    if (result >= v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 < v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1E4B846B8(v6, v9);
  v10 = a1[6];
  v11 = a1[7];
  if (v10)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v13 = sub_1E4B148C8;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *a3 = v13;
  a3[1] = v12;
  return sub_1E4AD650C(v10);
}

__n128 sub_1E4B131D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for audit_token_t(0);
  v16[3] = v13;
  v16[4] = &off_1F5EB1D50;
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  a5(&v17, v16);
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (!v6)
  {
    result = v18;
    *a6 = v17;
    *(a6 + 8) = result;
  }

  return result;
}

uint64_t sub_1E4B13298(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for DefaultAppInfoProvider;
  v7[4] = &off_1F5EB0120;
  v6[3] = &type metadata for OSVariantProvider;
  v6[4] = &off_1F5EB9B50;
  *(a2 + 16) = a1;
  sub_1E4B14334(v7, a2 + 24);
  sub_1E4B14334(v6, a2 + 64);
  swift_allocObject();
  swift_weakInit();
  v4 = *(a1 + 32);

  os_unfair_lock_lock(v4 + 24);
  sub_1E4B143B4(&v4[4]);
  os_unfair_lock_unlock(v4 + 24);

  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1E4B1340C()
{
  result = qword_1EE2BD710;
  if (!qword_1EE2BD710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2BD710);
  }

  return result;
}

double (*sub_1E4B1345C@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E4B0F3BC(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), **(v2 + 48), *(*(v2 + 48) + 8), *(*(v2 + 48) + 16));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1E4B1349C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 sub_1E4B134E0@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = v8;
    *a1 = v7;
    *(a1 + 8) = result;
  }

  return result;
}

double sub_1E4B1352C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(v5 + 24);
  *&result = sub_1E4B131D0(a1, a2, a3, a4, *(v5 + 16), a5).n128_u64[0];
  return result;
}

uint64_t sub_1E4B13548(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4B13604(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1E4B1363C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B13684(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_1E4B136CC(void *a1)
{
  v2 = sub_1E4BEFCEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  sub_1E4BEFCDC();
  LOBYTE(v8) = sub_1E4BF04AC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  if (v8)
  {
    sub_1E4BEFF1C();
    has_internal_ui = os_variant_has_internal_ui();

    if (has_internal_ui)
    {
      if (qword_1ECF923B0 != -1)
      {
        swift_once();
      }

      v14 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v14, qword_1ECF93B08);
      v15 = sub_1E4BEFB5C();
      v16 = sub_1E4BF04BC();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_8;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E4AD3000, v15, v16, "Accepting incoming session request with internal entitlement", v17, 2u);
      v18 = v17;
LABEL_7:
      MEMORY[0x1E6921800](v18, -1, -1);
LABEL_8:

      return;
    }
  }

  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1E4B35054(*v19, v19[1], v19[2], v19[3]);
  if (!v21)
  {
    goto LABEL_42;
  }

  v22 = v20;
  v23 = v21;
  v24 = v61;
  v25 = sub_1E4B148F4();
  if (v24)
  {

    return;
  }

  if (!v26)
  {

    if (qword_1ECF923B0 != -1)
    {
      swift_once();
    }

    v38 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v38, qword_1ECF93B08);
    v30 = sub_1E4BEFB5C();
    v39 = sub_1E4BF04DC();
    if (!os_log_type_enabled(v30, v39))
    {
      goto LABEL_41;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1E4AD3000, v30, v39, "Unable to determine current default app", v40, 2u);
    v37 = v40;
    goto LABEL_26;
  }

  v27 = v25 == v22 && v26 == v23;
  v60 = v22;
  if (v27)
  {
  }

  else
  {
    v28 = sub_1E4BF099C();

    if ((v28 & 1) == 0)
    {
      if (qword_1ECF923B0 != -1)
      {
        swift_once();
      }

      v29 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v29, qword_1ECF93B08);

      v30 = sub_1E4BEFB5C();
      v31 = sub_1E4BF04DC();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v60;
      if (!v32)
      {

        goto LABEL_41;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v62 = v35;
      *v34 = 136315138;
      v36 = sub_1E4B30548(v33, v23, &v62);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_1E4AD3000, v30, v31, "%s is not the default app", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E6921800](v35, -1, -1);
      v37 = v34;
LABEL_26:
      MEMORY[0x1E6921800](v37, -1, -1);
LABEL_41:

LABEL_42:
      sub_1E4B143D0();
      swift_allocError();
      v59 = 1;
LABEL_43:
      *v58 = v59;
      swift_willThrow();
      return;
    }
  }

  v41 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[3];
  v61 = v41[2];
  sub_1E4BEFCDC();
  LOBYTE(v42) = sub_1E4BF04AC();
  v12(v6, v2);
  if ((v42 & 1) == 0)
  {
    v51 = v60;
    if (qword_1ECF923B0 != -1)
    {
      swift_once();
    }

    v52 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v52, qword_1ECF93B08);

    v53 = sub_1E4BEFB5C();
    v54 = sub_1E4BF04DC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v62 = v56;
      *v55 = 136315138;
      v57 = sub_1E4B30548(v51, v23, &v62);

      *(v55 + 4) = v57;
      _os_log_impl(&dword_1E4AD3000, v53, v54, "%s is missing required entitlement", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1E6921800](v56, -1, -1);
      MEMORY[0x1E6921800](v55, -1, -1);
    }

    else
    {
    }

    sub_1E4B143D0();
    swift_allocError();
    v59 = 2;
    goto LABEL_43;
  }

  v45 = v60;
  if (qword_1ECF923B0 != -1)
  {
    swift_once();
  }

  v46 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v46, qword_1ECF93B08);

  v15 = sub_1E4BEFB5C();
  v47 = sub_1E4BF04BC();

  if (os_log_type_enabled(v15, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v62 = v49;
    *v48 = 136315138;
    v50 = sub_1E4B30548(v45, v23, &v62);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_1E4AD3000, v15, v47, "Accepting incoming session request for %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1E6921800](v49, -1, -1);
    v18 = v48;
    goto LABEL_7;
  }
}

unint64_t sub_1E4B13E60(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_1E4BF061C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6920D00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = sub_1E4BEFADC();

    if (v6)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1E4B13F74(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v5 = a1;
  v6 = *a1;
  result = sub_1E4B13E60(*a1);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1E4BF061C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = a3;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1E4BF061C())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6920D00](v10, v6);
      goto LABEL_15;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v12 = *(v6 + 8 * v10 + 32);

LABEL_15:
    v13 = sub_1E4BEFADC();

    if ((v13 & 1) == 0)
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6920D00](v9, v6);
          v15 = MEMORY[0x1E6920D00](v10, v6);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v16)
          {
            goto LABEL_45;
          }

          if (v10 >= v16)
          {
            goto LABEL_46;
          }

          v14 = *(v6 + 32 + 8 * v9);
          v15 = *(v6 + 32 + 8 * v10);
        }

        v17 = v5;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = v23(v6);
          v18 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v6 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v15;

        if ((v6 & 0x8000000000000000) != 0 || v18)
        {
          v6 = v23(v6);
          v19 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v10 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v5 = v17;
        v21 = v19 + 8 * v10;
        v22 = *(v21 + 32);
        *(v21 + 32) = v14;

        *v17 = v6;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_42;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1E4BF061C();
}

unint64_t sub_1E4B14210()
{
  result = qword_1ECF93B80;
  if (!qword_1ECF93B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93B80);
  }

  return result;
}

unint64_t sub_1E4B14264()
{
  result = qword_1ECF93BB0;
  if (!qword_1ECF93BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93BB0);
  }

  return result;
}

uint64_t sub_1E4B1430C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E4B14334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E4B143D0()
{
  result = qword_1ECF93BD0;
  if (!qword_1ECF93BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93BD0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

double (*sub_1E4B1448C@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>))@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E4B0F20C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), **(v2 + 48));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1E4B144C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

double sub_1E4B14524@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_1E4BEFAFC() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  return sub_1E4B10718(a1, v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), a2, a3);
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_1E4BEFAFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4B14688(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1E4BEFAFC() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1E4B1473C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, v3);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4B147BC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(*(v3 + 8));
  }

  return result;
}

uint64_t sub_1E4B14808(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B14864()
{
  result = qword_1ECF93C18;
  if (!qword_1ECF93C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C18);
  }

  return result;
}

id sub_1E4B148F4()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v11[0] = 0;
  v2 = [v0 defaultApplicationForCategory:10 error:v11];
  v3 = v11[0];
  if (v2)
  {
    v4 = v2;
    v5 = v11[0];
    v6 = [v4 bundleIdentifier];
    if (v6)
    {
      v7 = v6;
      v3 = sub_1E4BEFEAC();
    }

    else
    {

      v3 = 0;
    }
  }

  else
  {
    v8 = v11[0];
    sub_1E4BEFA2C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t SendMMSRequest.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

__n128 SendMMSRequest.init(cellularServiceID:messageID:content:)@<Q0>(char *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 16);
  *(a4 + 8) = *a3;
  v5 = *a1;
  v6 = *(a3 + 48);
  *a4 = *a2;
  *(a4 + 4) = v5;
  *(a4 + 24) = v4;
  result = *(a3 + 32);
  *(a4 + 40) = result;
  *(a4 + 56) = v6;
  return result;
}

uint64_t sub_1E4B14B00()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496567617373656DLL;
  }
}

uint64_t sub_1E4B14B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B15478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B14B8C(uint64_t a1)
{
  v2 = sub_1E4B14E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B14BC8(uint64_t a1)
{
  v2 = sub_1E4B14E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SendMMSRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93C20, &qword_1E4C022B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v36 = *(v1 + 4);
  v10 = *(v1 + 1);
  v27 = *(v1 + 2);
  v28 = v10;
  v11 = *(v1 + 3);
  v25 = *(v1 + 4);
  v26 = v11;
  v12 = *(v1 + 6);
  v22 = *(v1 + 5);
  v23 = v12;
  v24 = *(v1 + 7);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B14E9C();
  sub_1E4BF0ACC();
  LODWORD(v29) = v9;
  v37 = 0;
  sub_1E4AF1680();
  sub_1E4BF093C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = v26;
  v16 = v27;
  v17 = v28;
  v21 = v5;
  v18 = v24;
  v19 = v25;
  LOBYTE(v29) = v36;
  v37 = 1;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  v29 = v17;
  v30 = v16;
  v31 = v15;
  v32 = v19;
  v33 = v22;
  v34 = v23;
  v35 = v18;
  v37 = 2;
  sub_1E4AF16D4();

  sub_1E4BF093C();

  return (*(v21 + 8))(v8, v4);
}

unint64_t sub_1E4B14E9C()
{
  result = qword_1ECF93C28;
  if (!qword_1ECF93C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C28);
  }

  return result;
}

uint64_t SendMMSRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93C30, &qword_1E4C022B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B14E9C();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v18 = 0;
    sub_1E4AF1728();
    sub_1E4BF087C();
    v11 = v16[0];
    v18 = 1;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v12 = v16[0];
    v18 = 2;
    sub_1E4AF177C();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    *(a2 + 4) = v12;
    v15 = v16[1];
    *(a2 + 8) = v16[0];
    *(a2 + 24) = v15;
    *(a2 + 40) = v16[2];
    *(a2 + 56) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B15120(uint64_t a1)
{
  result = sub_1E4B15148();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B15148()
{
  result = qword_1EE2BDE28;
  if (!qword_1EE2BDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDE28);
  }

  return result;
}

unint64_t sub_1E4B1519C(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B151CC();
  result = sub_1E4B15220();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B151CC()
{
  result = qword_1EE2BDE30;
  if (!qword_1EE2BDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDE30);
  }

  return result;
}

unint64_t sub_1E4B15220()
{
  result = qword_1EE2BDE38[0];
  if (!qword_1EE2BDE38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2BDE38);
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

uint64_t sub_1E4B152B8(uint64_t a1, int a2)
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

uint64_t sub_1E4B15300(uint64_t result, int a2, int a3)
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

unint64_t sub_1E4B15374()
{
  result = qword_1ECF93C38;
  if (!qword_1ECF93C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C38);
  }

  return result;
}

unint64_t sub_1E4B153CC()
{
  result = qword_1ECF93C40;
  if (!qword_1ECF93C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C40);
  }

  return result;
}

unint64_t sub_1E4B15424()
{
  result = qword_1ECF93C48;
  if (!qword_1ECF93C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C48);
  }

  return result;
}

uint64_t sub_1E4B15478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t RCSGroupChatAddParticipantsRequest.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t sub_1E4B155C0()
{
  if (*v0)
  {
    result = 0x6F6974617265706FLL;
  }

  else
  {
    result = 0x757165526464615FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B1560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x757165526464615FLL && a2 == 0xEB00000000747365;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL)
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

uint64_t sub_1E4B156F0(uint64_t a1)
{
  v2 = sub_1E4B1ABAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B1572C(uint64_t a1)
{
  v2 = sub_1E4B1ABAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatAddParticipantsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93C50, &qword_1E4C024D0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v27 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[4];
  v17 = v1[3];
  v18 = v7;
  v10 = v1[5];
  v11 = v1[7];
  v15 = v1[6];
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1ABAC();

  sub_1E4BF0ACC();
  LOBYTE(v21) = v27;
  v22 = v18;
  v23 = v8;
  v24 = v17;
  v25 = v9;
  v26 = v10;
  v28 = 0;
  sub_1E4B1AC00();
  v13 = v19;
  sub_1E4BF093C();

  if (!v13)
  {
    v21 = v15;
    v22 = v16;
    v28 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v20 + 8))(v6, v3);
}

uint64_t RCSGroupChatAddParticipantsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93C70, &qword_1E4C024D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1ABAC();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  sub_1E4B1ACA8();
  sub_1E4BF087C();
  v38 = v29[0];
  v23 = v30;
  v24 = v31;
  v11 = v33;
  v22 = v32;
  v12 = v34;
  v39 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v20 = *(&v37 + 1);
  v21 = v37;
  v13 = v38;
  LOBYTE(v25) = v38;
  v14 = v23;
  v15 = v24;
  *(&v25 + 1) = v23;
  *&v26 = v24;
  v16 = v22;
  *(&v26 + 1) = v22;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  v28 = v37;
  v17 = v26;
  *a2 = v25;
  a2[1] = v17;
  v18 = v28;
  a2[2] = v27;
  a2[3] = v18;
  sub_1E4B1AD50(&v25, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v11;
  v34 = v12;
  v35 = v21;
  v36 = v20;
  return sub_1E4B1AD88(v29);
}

uint64_t _s21TelephonyMessagingKit34RCSGroupChatAddParticipantsRequestV03addH0AA10RCSServiceC0f5GroupegH0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

__n128 _s21TelephonyMessagingKit34RCSGroupChatAddParticipantsRequestV03addH011operationIDAcA10RCSServiceC0f5GroupegH0V_AA012RCSOperationK0VtcfC_0@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 24) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  return result;
}

uint64_t sub_1E4B15D00()
{
  if (*v0)
  {
    result = 0x6F6974617265706FLL;
  }

  else
  {
    result = 0x5265766F6D65725FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B15D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5265766F6D65725FLL && a2 == 0xEE00747365757165;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL)
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

uint64_t sub_1E4B15E38(uint64_t a1)
{
  v2 = sub_1E4B1ADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B15E74(uint64_t a1)
{
  v2 = sub_1E4B1ADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatRemoveParticipantsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93C88, &qword_1E4C024E0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v27 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[4];
  v17 = v1[3];
  v18 = v7;
  v10 = v1[5];
  v11 = v1[7];
  v15 = v1[6];
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1ADB8();

  sub_1E4BF0ACC();
  LOBYTE(v21) = v27;
  v22 = v18;
  v23 = v8;
  v24 = v17;
  v25 = v9;
  v26 = v10;
  v28 = 0;
  sub_1E4B1AE0C();
  v13 = v19;
  sub_1E4BF093C();

  if (!v13)
  {
    v21 = v15;
    v22 = v16;
    v28 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v20 + 8))(v6, v3);
}

uint64_t RCSGroupChatRemoveParticipantsRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93CA0, &qword_1E4C024E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1ADB8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  sub_1E4B1AE60();
  sub_1E4BF087C();
  v38 = v29[0];
  v23 = v30;
  v24 = v31;
  v11 = v33;
  v22 = v32;
  v12 = v34;
  v39 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v20 = *(&v37 + 1);
  v21 = v37;
  v13 = v38;
  LOBYTE(v25) = v38;
  v14 = v23;
  v15 = v24;
  *(&v25 + 1) = v23;
  *&v26 = v24;
  v16 = v22;
  *(&v26 + 1) = v22;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  v28 = v37;
  v17 = v26;
  *a2 = v25;
  a2[1] = v17;
  v18 = v28;
  a2[2] = v27;
  a2[3] = v18;
  sub_1E4B1AEB4(&v25, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v11;
  v34 = v12;
  v35 = v21;
  v36 = v20;
  return sub_1E4B1AEEC(v29);
}

uint64_t RCSGroupChatChangeSubjectRequest.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t RCSGroupChatChangeSubjectRequest.changeSubjectRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
}

uint64_t RCSGroupChatChangeSubjectRequest.init(changeSubjectRequest:operationID:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v7 = *(result + 40);
  v8 = *(result + 48);
  v9 = *a2;
  v10 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = v10;
  return result;
}

unint64_t sub_1E4B16454()
{
  if (*v0)
  {
    result = 0x6F6974617265706FLL;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B1649C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001E4BF1860 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E4BF099C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E4B16588(uint64_t a1)
{
  v2 = sub_1E4B1AF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B165C4(uint64_t a1)
{
  v2 = sub_1E4B1AF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatChangeSubjectRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93CB0, &qword_1E4C024F0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v30 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[4];
  v19 = v1[3];
  v20 = v7;
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[8];
  v16 = v1[7];
  v17 = v12;
  v18 = v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1AF1C();

  sub_1E4BF0ACC();
  LOBYTE(v23) = v30;
  v24 = v20;
  v25 = v8;
  v26 = v19;
  v27 = v9;
  v28 = v18;
  v29 = v11;
  v31 = 0;
  sub_1E4B1AF70();
  v14 = v21;
  sub_1E4BF093C();

  if (!v14)
  {
    v23 = v16;
    v24 = v17;
    v31 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v22 + 8))(v6, v3);
}

uint64_t RCSGroupChatChangeSubjectRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93CC8, &qword_1E4C024F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1AF1C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  sub_1E4B1AFC4();
  sub_1E4BF087C();
  v41 = v30[0];
  v21 = v31;
  v24 = v32;
  v11 = v34;
  v23 = v33;
  v12 = v36;
  v22 = v35;
  v42 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v40;
  v20 = v39;
  v14 = v41;
  LOBYTE(v25) = v41;
  v15 = v21;
  v16 = v24;
  *(&v25 + 1) = v21;
  *&v26 = v24;
  *(&v26 + 1) = v23;
  *&v27 = v11;
  *(&v27 + 1) = v22;
  *&v28 = v12;
  *(&v28 + 1) = v39;
  v29 = v40;
  *(a2 + 64) = v40;
  v17 = v26;
  *a2 = v25;
  *(a2 + 16) = v17;
  v18 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v18;
  sub_1E4B1B018(&v25, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v14;
  v31 = v15;
  v32 = v16;
  v33 = v23;
  v34 = v11;
  v35 = v22;
  v36 = v12;
  v37 = v20;
  v38 = v13;
  return sub_1E4B1B050(v30);
}

uint64_t RCSGroupChatLeaveRequest.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t RCSGroupChatLeaveRequest.leaveRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t RCSGroupChatLeaveRequest.init(leaveRequest:operationID:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v7 = *a2;
  v8 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  return result;
}

uint64_t sub_1E4B16BC0()
{
  if (*v0)
  {
    result = 0x6F6974617265706FLL;
  }

  else
  {
    result = 0x6552657661656C5FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B16C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6552657661656C5FLL && a2 == 0xED00007473657571;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL)
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

uint64_t sub_1E4B16CF8(uint64_t a1)
{
  v2 = sub_1E4B1B080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B16D34(uint64_t a1)
{
  v2 = sub_1E4B1B080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatLeaveRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93CD8, &qword_1E4C02500);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 4);
  v18 = *(v1 + 3);
  v19 = v8;
  v11 = *(v1 + 6);
  v16 = *(v1 + 5);
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1B080();

  sub_1E4BF0ACC();
  LOBYTE(v22) = v7;
  v23 = v19;
  v24 = v9;
  v25 = v18;
  v26 = v10;
  v27 = 0;
  sub_1E4B1B0D4();
  v13 = v20;
  sub_1E4BF093C();

  if (!v13)
  {
    v22 = v16;
    v23 = v17;
    v27 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v21 + 8))(v6, v3);
}

uint64_t RCSGroupChatLeaveRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93CF0, &qword_1E4C02508);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1B080();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_1E4B1B128();
  sub_1E4BF087C();
  v25 = v20;
  v11 = v22;
  v12 = v24;
  v18 = v23;
  v19 = v21;
  v26 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v20;
  v14 = v21;
  *a2 = v25;
  v15 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v11;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RCSGroupChatCreateRequest.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t RCSGroupChatCreateRequest.createRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t RCSGroupChatCreateRequest.init(createRequest:operationID:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *a2;
  v7 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  return result;
}

uint64_t sub_1E4B17280()
{
  if (*v0)
  {
    result = 0x6F6974617265706FLL;
  }

  else
  {
    result = 0x526574616572635FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B172D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x526574616572635FLL && a2 == 0xEE00747365757165;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL)
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

uint64_t sub_1E4B173B8(uint64_t a1)
{
  v2 = sub_1E4B1B17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B173F4(uint64_t a1)
{
  v2 = sub_1E4B1B17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatCreateRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D00, &qword_1E4C02510);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  v10 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = *(v1 + 5);
  v17 = v8;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1B17C();

  sub_1E4BF0ACC();
  LOBYTE(v20) = v7;
  v21 = v9;
  v22 = v17;
  v23 = v10;
  v24 = 0;
  sub_1E4B1B1D0();
  v12 = v18;
  sub_1E4BF093C();

  if (!v12)
  {
    v20 = v15;
    v21 = v16;
    v24 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v19 + 8))(v6, v3);
}

uint64_t RCSGroupChatCreateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D18, &qword_1E4C02518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1B17C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_1E4B1B224();
  sub_1E4BF087C();
  v23 = v19;
  v11 = v20;
  v18 = v21;
  v12 = v22;
  v24 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  v14 = v20;
  *a2 = v23;
  v15 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B178B8()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65724370756F7267;
  }
}

uint64_t sub_1E4B17924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B1E074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B1794C(uint64_t a1)
{
  v2 = sub_1E4B1B278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B17988(uint64_t a1)
{
  v2 = sub_1E4B1B278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B179C4(uint64_t a1)
{
  v2 = sub_1E4B1B41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B17A00(uint64_t a1)
{
  v2 = sub_1E4B1B41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B17A3C(uint64_t a1)
{
  v2 = sub_1E4B1B2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B17A78(uint64_t a1)
{
  v2 = sub_1E4B1B2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B17AB4(uint64_t a1)
{
  v2 = sub_1E4B1B374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B17AF0(uint64_t a1)
{
  v2 = sub_1E4B1B374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatMutationResponseNotification.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D28, &qword_1E4C02520);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D30, &qword_1E4C02528);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D38, &qword_1E4C02530);
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D40, &qword_1E4C02538);
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = v1[1];
  v42 = *v1;
  v19 = v1[3];
  v34 = v1[2];
  v35 = v18;
  v20 = v1[5];
  v32 = v1[4];
  v33 = v19;
  v31 = v20;
  v30 = v1[6];
  v21 = *(v1 + 56);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1B278();
  sub_1E4BF0ACC();
  if (v21)
  {
    if (v21 == 1)
    {
      LOBYTE(v45) = 1;
      sub_1E4B1B374();
      v23 = v44;
      sub_1E4BF08BC();
      v45 = v42;
      sub_1E4B1B3C8();
      v24 = v38;
      sub_1E4BF093C();
      (*(v37 + 8))(v9, v24);
    }

    else
    {
      LOBYTE(v45) = 2;
      sub_1E4B1B2CC();
      v27 = v39;
      v23 = v44;
      sub_1E4BF08BC();
      v45 = v42;
      sub_1E4B1B320();
      v28 = v41;
      sub_1E4BF093C();
      (*(v40 + 8))(v27, v28);
    }

    return (*(v43 + 8))(v17, v23);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_1E4B1B41C();
    v25 = v44;
    sub_1E4BF08BC();
    v45 = v42;
    v46 = v35;
    v47 = v34;
    v48 = v33;
    v49 = v32;
    v50 = v31;
    v51 = v30;
    sub_1E4B1B470();
    sub_1E4BF093C();
    (*(v36 + 8))(v13, v10);
    return (*(v43 + 8))(v17, v25);
  }
}

uint64_t RCSGroupChatMutationResponseNotification.Result.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D80, &qword_1E4C02540);
  v49 = *(v45 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D88, &qword_1E4C02548);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D90, &qword_1E4C02550);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93D98, &qword_1E4C02558);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43[-v17];
  v19 = a1[3];
  v20 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E4B1B278();
  v21 = v52;
  sub_1E4BF0ABC();
  if (!v21)
  {
    v52 = v15;
    v23 = v50;
    v22 = v51;
    v24 = sub_1E4BF088C();
    v25 = (2 * *(v24 + 16)) | 1;
    v58 = v24;
    v59 = v24 + 32;
    v60 = 0;
    v61 = v25;
    v26 = sub_1E4AE0F1C();
    if (v26 == 3 || v60 != v61 >> 1)
    {
      v30 = sub_1E4BF06EC();
      swift_allocError();
      v31 = v18;
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v33 = &type metadata for RCSGroupChatMutationResponseNotification.Result;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v52 + 8))(v31, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          LOBYTE(v53) = 1;
          sub_1E4B1B374();
          v27 = v9;
          sub_1E4BF07EC();
          v28 = v52;
          sub_1E4B1B518();
          v29 = v47;
          sub_1E4BF087C();
          (*(v48 + 8))(v27, v29);
          (*(v28 + 8))(v18, v14);
        }

        else
        {
          LOBYTE(v53) = 2;
          sub_1E4B1B2CC();
          sub_1E4BF07EC();
          v36 = v52;
          sub_1E4B1B4C4();
          v37 = v45;
          sub_1E4BF087C();
          (*(v49 + 8))(v23, v37);
          (*(v36 + 8))(v18, v14);
        }

        swift_unknownObjectRelease();
        v38 = v53;
      }

      else
      {
        LOBYTE(v53) = 0;
        sub_1E4B1B41C();
        sub_1E4BF07EC();
        sub_1E4B1B56C();
        sub_1E4BF087C();
        (*(v46 + 8))(v13, v10);
        (*(v52 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v38 = v53;
        v39 = v54;
        v40 = v55;
        v41 = v56;
        v42 = v57;
      }

      *v22 = v38;
      *(v22 + 8) = v39;
      *(v22 + 16) = v40;
      *(v22 + 24) = v41;
      *(v22 + 40) = v42;
      *(v22 + 56) = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t RCSGroupChatMutationResponseNotification.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t RCSGroupChatMutationResponseNotification.result.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v8[0] = *(v1 + 56);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 65);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1E4B1B5C0(v7, &v6);
}

__n128 RCSGroupChatMutationResponseNotification.init(cellularServiceID:operationID:result:error:)@<Q0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  *(a5 + 24) = *a3;
  v6 = *a2;
  v7 = a2[1];
  v8 = *a4;
  *a5 = *a1;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 40) = v5;
  *(a5 + 56) = *(a3 + 32);
  result = *(a3 + 41);
  *(a5 + 65) = result;
  *(a5 + 81) = v8;
  return result;
}

unint64_t sub_1E4B18748()
{
  v1 = 0x6F6974617265706FLL;
  v2 = 0x746C75736572;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E4B187C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B1E1A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B187F0(uint64_t a1)
{
  v2 = sub_1E4B1B630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B1882C(uint64_t a1)
{
  v2 = sub_1E4B1B630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatMutationResponseNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93DC0, &qword_1E4C02560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v19 = *(v1 + 1);
  v31 = v10;
  v11 = *(v1 + 40);
  v28 = *(v1 + 24);
  v29 = v11;
  v30[0] = *(v1 + 56);
  *(v30 + 9) = *(v1 + 65);
  v12 = v1[81];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_1E4B1B630();
  sub_1E4BF0ACC();
  LOBYTE(v25) = v9;
  LOBYTE(v22[0]) = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    *&v25 = v19;
    *(&v25 + 1) = v31;
    LOBYTE(v22[0]) = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();

    v25 = v28;
    v26 = v29;
    v27[0] = v30[0];
    *(v27 + 9) = *(v30 + 9);
    v24 = 2;
    sub_1E4B1B5C0(&v28, v22);
    sub_1E4B1B684();
    sub_1E4BF08EC();
    v22[0] = v25;
    v22[1] = v26;
    *v23 = v27[0];
    *&v23[9] = *(v27 + 9);
    sub_1E4B1B6D8(v22);
    v21 = v12;
    v20 = 3;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t RCSGroupChatMutationResponseNotification.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93DE0, &qword_1E4C02568);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1B630();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v26 = a2;
  LOBYTE(v27) = 0;
  sub_1E4ADBF38();
  v11 = v45;
  sub_1E4BF087C();
  v12 = v29;
  LOBYTE(v27) = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  HIDWORD(v24) = v12;
  v13 = v29;
  v25 = v30;
  v38 = 2;
  sub_1E4B1B794();
  sub_1E4BF082C();
  v42 = v39;
  v43 = v40;
  v44[0] = v41[0];
  *(v44 + 9) = *(v41 + 9);
  v36 = 3;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  (*(v10 + 8))(v8, v11);
  v14 = v37;
  v15 = BYTE4(v24);
  LOBYTE(v27) = BYTE4(v24);
  v16 = v25;
  *(&v27 + 1) = v13;
  *v28 = v25;
  *&v28[8] = v42;
  *&v28[24] = v43;
  *&v28[40] = v44[0];
  *&v28[49] = *(v44 + 9);
  v28[65] = v37;
  v17 = *v28;
  v18 = v13;
  v19 = v26;
  *v26 = v27;
  v19[1] = v17;
  v20 = *&v28[16];
  v21 = *&v28[32];
  v22 = *&v28[48];
  *(v19 + 40) = *&v28[64];
  v19[3] = v21;
  v19[4] = v22;
  v19[2] = v20;
  sub_1E4B1B83C(&v27, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v29) = v15;
  v30 = v18;
  v31 = v16;
  v32 = v42;
  v33 = v43;
  *v34 = v44[0];
  *&v34[9] = *(v44 + 9);
  v35 = v14;
  return sub_1E4B1B874(&v29);
}

unint64_t sub_1E4B18F5C()
{
  v1 = *v0;
  v2 = 0x64657472617473;
  v3 = 0x557463656A627573;
  if (v1 != 3)
  {
    v3 = 0x6465646E65;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1E4B19004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B1E30C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B1902C(uint64_t a1)
{
  v2 = sub_1E4B1B8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B19068(uint64_t a1)
{
  v2 = sub_1E4B1B8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B190A4(uint64_t a1)
{
  v2 = sub_1E4B1B8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B190E0(uint64_t a1)
{
  v2 = sub_1E4B1B8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B1911C(uint64_t a1)
{
  v2 = sub_1E4B1BA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B19158(uint64_t a1)
{
  v2 = sub_1E4B1BA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B19194(uint64_t a1)
{
  v2 = sub_1E4B1BAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B191D0(uint64_t a1)
{
  v2 = sub_1E4B1BAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B1920C(uint64_t a1)
{
  v2 = sub_1E4B1BB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B19248(uint64_t a1)
{
  v2 = sub_1E4B1BB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B19284(uint64_t a1)
{
  v2 = sub_1E4B1B9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B192C0(uint64_t a1)
{
  v2 = sub_1E4B1B9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatMutationNotification.Event.encode(to:)(void *a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93DF8, &qword_1E4C02570);
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v48 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E00, &qword_1E4C02578);
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v48 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E08, &qword_1E4C02580);
  v51 = *(v52 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v48 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E10, &qword_1E4C02588);
  v48 = *(v60 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E18, &qword_1E4C02590);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E20, &qword_1E4C02598);
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v64 = *v1;
  v19 = *(v1 + 5) | (v1[7] << 16);
  v20 = *(v1 + 1) | ((*&v19 & 0xFFFFFFLL) << 32);
  v21 = *(v1 + 2);
  v65 = *(v1 + 1);
  v66 = v21;
  v22 = *(v1 + 4);
  v67 = *(v1 + 3);
  v68 = v22;
  v23 = *(v1 + 6);
  v69 = *(v1 + 5);
  v70 = v23;
  v24 = *(v1 + 8);
  v62 = *(v1 + 7);
  v61 = v24;
  v25 = *(v1 + 9);
  v26 = a1;
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(v26, v28);
  sub_1E4B1B8A4();
  v63 = v18;
  sub_1E4BF0ACC();
  v29 = v19 >> 21;
  if (v19 >> 21 <= 1)
  {
    v35 = v25;
    v36 = v11;
    v37 = v59;
    v38 = v60;
    if (v29)
    {
      v73 = 1;
      sub_1E4B1BAF0();
      v31 = v72;
      v32 = v63;
      sub_1E4BF08BC();
      v73 = v64;
      v76 = BYTE6(v20) & 0x1F;
      v75 = WORD2(v20);
      v74 = v20;
      v77 = v65;
      v78 = v66;
      v79 = v67;
      v80 = v68;
      v81 = v69;
      v82 = v70;
      v83 = v62;
      LOBYTE(v84[0]) = v61;
      sub_1E4B1BB44();
      sub_1E4BF093C();
      (*(v48 + 8))(v37, v38);
      return (*(v71 + 8))(v32, v31);
    }

    v73 = 0;
    sub_1E4B1BB98();
    v30 = v14;
    v31 = v72;
    v32 = v63;
    sub_1E4BF08BC();
    v73 = v64;
    v76 = BYTE6(v20) & 0x1F;
    v75 = WORD2(v20);
    v74 = v20;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v83 = v62;
    v84[0] = v61;
    v84[1] = v35;
    sub_1E4B1BBEC();
    v33 = v36;
    sub_1E4BF093C();
    v34 = v84;
  }

  else
  {
    if (v29 == 2)
    {
      v73 = 2;
      sub_1E4B1BA48();
      v39 = v50;
      v40 = v72;
      v41 = v63;
      sub_1E4BF08BC();
      v73 = v64;
      v76 = BYTE6(v20) & 0x1F;
      v75 = WORD2(v20);
      v74 = v20;
      v77 = v65;
      v78 = v66;
      v79 = v67;
      v80 = v68;
      v81 = v69;
      v82 = v70;
      v83 = v62;
      sub_1E4B1BA9C();
      v42 = v52;
      sub_1E4BF093C();
      (*(v51 + 8))(v39, v42);
      return (*(v71 + 8))(v41, v40);
    }

    if (v29 != 3)
    {
      v73 = 4;
      sub_1E4B1B8F8();
      v44 = v56;
      v45 = v72;
      v46 = v63;
      sub_1E4BF08BC();
      v73 = v64 & 1;
      v77 = v65;
      v78 = v66;
      v79 = v67;
      v80 = v68;
      v81 = v69;
      v82 = v70;
      sub_1E4B1B94C();
      v47 = v58;
      sub_1E4BF093C();
      (*(v57 + 8))(v44, v47);
      return (*(v71 + 8))(v46, v45);
    }

    v73 = 3;
    sub_1E4B1B9A0();
    v30 = v53;
    v31 = v72;
    v32 = v63;
    sub_1E4BF08BC();
    v73 = v64;
    v76 = BYTE6(v20) & 0x1F;
    v75 = WORD2(v20);
    v74 = v20;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v83 = v62;
    v84[0] = v61;
    sub_1E4B1B9F4();
    v33 = v55;
    sub_1E4BF093C();
    v34 = &v85;
  }

  (*(*(v34 - 32) + 8))(v30, v33);
  return (*(v71 + 8))(v32, v31);
}

uint64_t RCSGroupChatMutationNotification.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E80, &qword_1E4C025A0);
  v66 = *(v62 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v69 = &v57 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E88, &qword_1E4C025A8);
  v65 = *(v64 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v57 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E90, &qword_1E4C025B0);
  v63 = *(v59 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v68 = &v57 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93E98, &qword_1E4C025B8);
  v60 = *(v61 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93EA0, &qword_1E4C025C0);
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93EA8, &qword_1E4C025C8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E4B1B8A4();
  v23 = v82;
  sub_1E4BF0ABC();
  if (!v23)
  {
    v24 = v15;
    v57 = v12;
    v26 = v68;
    v25 = v69;
    v82 = v17;
    v27 = v70;
    v28 = sub_1E4BF088C();
    v29 = (2 * *(v28 + 16)) | 1;
    v78 = v28;
    v79 = v28 + 32;
    v80 = 0;
    v81 = v29;
    v30 = sub_1E4AE0F18();
    if (v30 != 5 && v80 == v81 >> 1)
    {
      if (v30 <= 1u)
      {
        if (v30)
        {
          LOBYTE(v72) = 1;
          sub_1E4B1BAF0();
          sub_1E4BF07EC();
          v45 = v82;
          sub_1E4B1BD3C();
          v50 = v61;
          sub_1E4BF087C();
          (*(v60 + 8))(v11, v50);
          (*(v45 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v51 = v73;
          v52 = v74;
          v53 = v75;
          v54 = v76;
          v56 = v72 & 1 | 0x2000000000000000;
          *&v55 = v77;
          goto LABEL_16;
        }

        LOBYTE(v72) = 0;
        sub_1E4B1BB98();
        sub_1E4BF07EC();
        v41 = v82;
        sub_1E4B1BD90();
        v49 = v57;
        sub_1E4BF087C();
        (*(v58 + 8))(v24, v49);
        (*(v41 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v39 = v71;
        v51 = v73;
        v52 = v74;
        v53 = v75;
        v54 = v76;
        v55 = v77;
        v56 = v72 & 1;
      }

      else if (v30 == 2)
      {
        LOBYTE(v72) = 2;
        sub_1E4B1BA48();
        sub_1E4BF07EC();
        sub_1E4B1BCE8();
        v42 = v59;
        sub_1E4BF087C();
        (*(v63 + 8))(v26, v42);
        (*(v82 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v39 = v71;
        v51 = v73;
        v52 = v74;
        v53 = v75;
        v54 = v76;
        v56 = v72 & 1 | 0x4000000000000000;
      }

      else
      {
        if (v30 == 3)
        {
          LOBYTE(v72) = 3;
          sub_1E4B1B9A0();
          v31 = v67;
          sub_1E4BF07EC();
          v32 = v82;
          sub_1E4B1BC94();
          v46 = v64;
          sub_1E4BF087C();
          (*(v65 + 8))(v31, v46);
          (*(v32 + 8))(v20, v16);
          swift_unknownObjectRelease();
          v51 = v73;
          v52 = v74;
          v53 = v75;
          v54 = v76;
          *&v55 = v77;
          v56 = v72 & 1 | 0x6000000000000000;
LABEL_16:
          v39 = v71;
          goto LABEL_17;
        }

        LOBYTE(v72) = 4;
        sub_1E4B1B8F8();
        sub_1E4BF07EC();
        v43 = v16;
        v44 = v82;
        v47 = v27;
        v68 = v43;
        sub_1E4B1BC40();
        v48 = v62;
        sub_1E4BF087C();
        (*(v66 + 8))(v25, v48);
        (*(v44 + 8))(v20, v68);
        swift_unknownObjectRelease();
        v54 = v72;
        v51 = v73;
        v52 = v74;
        v53 = v75;
        v56 = v72 | 0x8000000000000000;
        v39 = v71;
        v27 = v47;
      }

LABEL_17:
      *v27 = v56;
      *(v27 + 8) = v51;
      *(v27 + 24) = v52;
      *(v27 + 40) = v53;
      *(v27 + 56) = v54;
      *(v27 + 64) = v55;
      return __swift_destroy_boxed_opaque_existential_1(v39);
    }

    v33 = sub_1E4BF06EC();
    swift_allocError();
    v34 = v20;
    v35 = v16;
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v37 = &type metadata for RCSGroupChatMutationNotification.Event;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v33 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v82 + 8))(v34, v35);
    swift_unknownObjectRelease();
  }

  v39 = v71;
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t RCSGroupChatMutationNotification.event.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1E4B1BDE4(v8, &v7);
}

__n128 RCSGroupChatMutationNotification.init(event:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1E4B1A734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
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

uint64_t sub_1E4B1A7B8(uint64_t a1)
{
  v2 = sub_1E4B1BE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B1A7F4(uint64_t a1)
{
  v2 = sub_1E4B1BE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSGroupChatMutationNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93ED8, &qword_1E4C025D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v22 = v1[4];
  v9 = v1[1];
  v18 = *v1;
  v19 = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1BDE4(&v18, &v13);
  sub_1E4B1BE1C();
  sub_1E4BF0ACC();
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v13 = v18;
  v14 = v19;
  sub_1E4B1BE70();
  sub_1E4BF093C();
  v12[2] = v15;
  v12[3] = v16;
  v12[4] = v17;
  v12[1] = v14;
  v12[0] = v13;
  sub_1E4B1BEC4(v12);
  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSGroupChatMutationNotification.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93EF0, &qword_1E4C025D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B1BE1C();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4B1BEF4();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    v11 = v14[3];
    a2[2] = v14[2];
    a2[3] = v11;
    a2[4] = v14[4];
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B1ABAC()
{
  result = qword_1ECF93C58;
  if (!qword_1ECF93C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C58);
  }

  return result;
}

unint64_t sub_1E4B1AC00()
{
  result = qword_1ECF93C60;
  if (!qword_1ECF93C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C60);
  }

  return result;
}

unint64_t sub_1E4B1AC54()
{
  result = qword_1ECF93C68;
  if (!qword_1ECF93C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C68);
  }

  return result;
}

unint64_t sub_1E4B1ACA8()
{
  result = qword_1ECF93C78;
  if (!qword_1ECF93C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C78);
  }

  return result;
}

unint64_t sub_1E4B1ACFC()
{
  result = qword_1ECF93C80;
  if (!qword_1ECF93C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C80);
  }

  return result;
}

unint64_t sub_1E4B1ADB8()
{
  result = qword_1ECF93C90;
  if (!qword_1ECF93C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C90);
  }

  return result;
}

unint64_t sub_1E4B1AE0C()
{
  result = qword_1ECF93C98;
  if (!qword_1ECF93C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93C98);
  }

  return result;
}

unint64_t sub_1E4B1AE60()
{
  result = qword_1ECF93CA8;
  if (!qword_1ECF93CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93CA8);
  }

  return result;
}

unint64_t sub_1E4B1AF1C()
{
  result = qword_1ECF93CB8;
  if (!qword_1ECF93CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93CB8);
  }

  return result;
}

unint64_t sub_1E4B1AF70()
{
  result = qword_1ECF93CC0;
  if (!qword_1ECF93CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93CC0);
  }

  return result;
}

unint64_t sub_1E4B1AFC4()
{
  result = qword_1ECF93CD0;
  if (!qword_1ECF93CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93CD0);
  }

  return result;
}

unint64_t sub_1E4B1B080()
{
  result = qword_1ECF93CE0;
  if (!qword_1ECF93CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93CE0);
  }

  return result;
}

unint64_t sub_1E4B1B0D4()
{
  result = qword_1ECF93CE8;
  if (!qword_1ECF93CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93CE8);
  }

  return result;
}

unint64_t sub_1E4B1B128()
{
  result = qword_1ECF93CF8;
  if (!qword_1ECF93CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93CF8);
  }

  return result;
}

unint64_t sub_1E4B1B17C()
{
  result = qword_1ECF93D08;
  if (!qword_1ECF93D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D08);
  }

  return result;
}

unint64_t sub_1E4B1B1D0()
{
  result = qword_1ECF93D10;
  if (!qword_1ECF93D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D10);
  }

  return result;
}

unint64_t sub_1E4B1B224()
{
  result = qword_1ECF93D20;
  if (!qword_1ECF93D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D20);
  }

  return result;
}

unint64_t sub_1E4B1B278()
{
  result = qword_1ECF93D48;
  if (!qword_1ECF93D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D48);
  }

  return result;
}

unint64_t sub_1E4B1B2CC()
{
  result = qword_1ECF93D50;
  if (!qword_1ECF93D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D50);
  }

  return result;
}

unint64_t sub_1E4B1B320()
{
  result = qword_1ECF93D58;
  if (!qword_1ECF93D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D58);
  }

  return result;
}

unint64_t sub_1E4B1B374()
{
  result = qword_1ECF93D60;
  if (!qword_1ECF93D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D60);
  }

  return result;
}

unint64_t sub_1E4B1B3C8()
{
  result = qword_1ECF93D68;
  if (!qword_1ECF93D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D68);
  }

  return result;
}

unint64_t sub_1E4B1B41C()
{
  result = qword_1ECF93D70;
  if (!qword_1ECF93D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D70);
  }

  return result;
}

unint64_t sub_1E4B1B470()
{
  result = qword_1ECF93D78;
  if (!qword_1ECF93D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93D78);
  }

  return result;
}

unint64_t sub_1E4B1B4C4()
{
  result = qword_1ECF93DA0;
  if (!qword_1ECF93DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DA0);
  }

  return result;
}

unint64_t sub_1E4B1B518()
{
  result = qword_1ECF93DA8;
  if (!qword_1ECF93DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DA8);
  }

  return result;
}

unint64_t sub_1E4B1B56C()
{
  result = qword_1ECF93DB0;
  if (!qword_1ECF93DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DB0);
  }

  return result;
}

uint64_t sub_1E4B1B5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93DB8, &qword_1E4C18C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4B1B630()
{
  result = qword_1ECF93DC8;
  if (!qword_1ECF93DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DC8);
  }

  return result;
}

unint64_t sub_1E4B1B684()
{
  result = qword_1ECF93DD0;
  if (!qword_1ECF93DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DD0);
  }

  return result;
}

uint64_t sub_1E4B1B6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93DB8, &qword_1E4C18C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4B1B740()
{
  result = qword_1ECF93DD8;
  if (!qword_1ECF93DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DD8);
  }

  return result;
}

unint64_t sub_1E4B1B794()
{
  result = qword_1ECF93DE8;
  if (!qword_1ECF93DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DE8);
  }

  return result;
}

unint64_t sub_1E4B1B7E8()
{
  result = qword_1ECF93DF0;
  if (!qword_1ECF93DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93DF0);
  }

  return result;
}

unint64_t sub_1E4B1B8A4()
{
  result = qword_1ECF93E28;
  if (!qword_1ECF93E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E28);
  }

  return result;
}

unint64_t sub_1E4B1B8F8()
{
  result = qword_1ECF93E30;
  if (!qword_1ECF93E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E30);
  }

  return result;
}

unint64_t sub_1E4B1B94C()
{
  result = qword_1ECF93E38;
  if (!qword_1ECF93E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E38);
  }

  return result;
}

unint64_t sub_1E4B1B9A0()
{
  result = qword_1ECF93E40;
  if (!qword_1ECF93E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E40);
  }

  return result;
}

unint64_t sub_1E4B1B9F4()
{
  result = qword_1ECF93E48;
  if (!qword_1ECF93E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E48);
  }

  return result;
}

unint64_t sub_1E4B1BA48()
{
  result = qword_1ECF93E50;
  if (!qword_1ECF93E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E50);
  }

  return result;
}

unint64_t sub_1E4B1BA9C()
{
  result = qword_1ECF93E58;
  if (!qword_1ECF93E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E58);
  }

  return result;
}

unint64_t sub_1E4B1BAF0()
{
  result = qword_1ECF93E60;
  if (!qword_1ECF93E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E60);
  }

  return result;
}

unint64_t sub_1E4B1BB44()
{
  result = qword_1ECF93E68;
  if (!qword_1ECF93E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E68);
  }

  return result;
}

unint64_t sub_1E4B1BB98()
{
  result = qword_1ECF93E70;
  if (!qword_1ECF93E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E70);
  }

  return result;
}

unint64_t sub_1E4B1BBEC()
{
  result = qword_1ECF93E78;
  if (!qword_1ECF93E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93E78);
  }

  return result;
}

unint64_t sub_1E4B1BC40()
{
  result = qword_1ECF93EB0;
  if (!qword_1ECF93EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93EB0);
  }

  return result;
}

unint64_t sub_1E4B1BC94()
{
  result = qword_1ECF93EB8;
  if (!qword_1ECF93EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93EB8);
  }

  return result;
}

unint64_t sub_1E4B1BCE8()
{
  result = qword_1ECF93EC0;
  if (!qword_1ECF93EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93EC0);
  }

  return result;
}

unint64_t sub_1E4B1BD3C()
{
  result = qword_1ECF93EC8;
  if (!qword_1ECF93EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93EC8);
  }

  return result;
}

unint64_t sub_1E4B1BD90()
{
  result = qword_1ECF93ED0;
  if (!qword_1ECF93ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93ED0);
  }

  return result;
}

unint64_t sub_1E4B1BE1C()
{
  result = qword_1ECF93EE0;
  if (!qword_1ECF93EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93EE0);
  }

  return result;
}

unint64_t sub_1E4B1BE70()
{
  result = qword_1ECF93EE8;
  if (!qword_1ECF93EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93EE8);
  }

  return result;
}

unint64_t sub_1E4B1BEF4()
{
  result = qword_1ECF93EF8;
  if (!qword_1ECF93EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93EF8);
  }

  return result;
}

unint64_t sub_1E4B1BF48(uint64_t a1)
{
  result = sub_1E4B1BF70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B1BF70()
{
  result = qword_1EE2BD8E8;
  if (!qword_1EE2BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD8E8);
  }

  return result;
}