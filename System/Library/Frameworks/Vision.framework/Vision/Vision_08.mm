unint64_t sub_1A5BB8E9C()
{
  result = qword_1EB1F0C20;
  if (!qword_1EB1F0C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F0C20);
  }

  return result;
}

void sub_1A5BB8EE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A5BB8F60(uint64_t a1)
{
  v2 = sub_1A5BB94AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BB8F9C(uint64_t a1)
{
  v2 = sub_1A5BB94AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BB8FD8(uint64_t a1)
{
  v2 = sub_1A5BB95A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BB9014(uint64_t a1)
{
  v2 = sub_1A5BB95A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BB9050(uint64_t a1)
{
  v2 = sub_1A5BB9554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BB908C(uint64_t a1)
{
  v2 = sub_1A5BB9554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BB90C8(uint64_t a1)
{
  v2 = sub_1A5BB9500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BB9104(uint64_t a1)
{
  v2 = sub_1A5BB9500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t S5kJNH3eYuyaLxNpZr5Z7ziRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C28);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C30);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C38);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BB94AC();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5BB9554();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5BB9500();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5BB95A8();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1A5BB94AC()
{
  result = qword_1EB21BB90;
  if (!qword_1EB21BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21BB90);
  }

  return result;
}

unint64_t sub_1A5BB9500()
{
  result = qword_1EB21BB98;
  if (!qword_1EB21BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21BB98);
  }

  return result;
}

unint64_t sub_1A5BB9554()
{
  result = qword_1EB21BBA0;
  if (!qword_1EB21BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21BBA0);
  }

  return result;
}

unint64_t sub_1A5BB95A8()
{
  result = qword_1EB21BBA8[0];
  if (!qword_1EB21BBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21BBA8);
  }

  return result;
}

uint64_t S5kJNH3eYuyaLxNpZr5Z7ziRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t S5kJNH3eYuyaLxNpZr5Z7ziRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C48);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C50);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C58);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C60);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BB94AC();
  v13 = v43;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1A5BB9554();
          v27 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1A5BB9500();
          v31 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1A5BB95A8();
        v29 = v34;
        sub_1A5FD48CC();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_1A5FD471C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
  *v23 = &type metadata for S5kJNH3eYuyaLxNpZr5Z7ziRequest.Revision;
  sub_1A5FD48DC();
  sub_1A5FD470C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t S5kJNH3eYuyaLxNpZr5Z7ziRequest.init(revision:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 2;
  static NormalizedRect.fullImage.getter((a2 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a2 + 48) = result;
  *(a2 + 40) = v3;
  return result;
}

__n128 S5kJNH3eYuyaLxNpZr5Z7ziRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 S5kJNH3eYuyaLxNpZr5Z7ziRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5BB9D2C()
{
  sub_1A5BBA84C();
  result = sub_1A5D4EC2C();
  qword_1EB21BB88 = result;
  return result;
}

uint64_t static S5kJNH3eYuyaLxNpZr5Z7ziRequest.allSupportedRevisions.getter()
{
  if (qword_1EB21BB80 != -1)
  {
    swift_once();
  }
}

uint64_t S5kJNH3eYuyaLxNpZr5Z7ziRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BBA84C();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for S5kJNH3eYuyaLxNpZr5Z7ziRequest, v3);
}

Vision::S5kJNH3eYuyaLxNpZr5Z7ziRequest::Category_optional __swiftcall S5kJNH3eYuyaLxNpZr5Z7ziRequest.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

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

uint64_t sub_1A5BB9EC0@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5FD48AC();

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

void sub_1A5BB9F20(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "VN2DSYD77FUMKqtcogofprEd";
  }

  else
  {
    v2 = "Asset contains no video tracks.";
  }

  *a1 = 0xD000000000000018;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1A5BB9F58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "VN2DSYD77FUMKqtcogofprEd";
  }

  else
  {
    v2 = "Asset contains no video tracks.";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "VN2DSYD77FUMKqtcogofprEd";
  }

  else
  {
    v4 = "Asset contains no video tracks.";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A5FD4B0C();
  }

  return v5 & 1;
}

uint64_t sub_1A5BBA0AC()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBA124()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5BBA188()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t S5kJNH3eYuyaLxNpZr5Z7ziRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t S5kJNH3eYuyaLxNpZr5Z7ziRequest.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1A5FD4C1C();
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBA368(uint64_t a1)
{
  v2 = sub_1A5BBA8A0();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BBA3A4(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BBA84C();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BBA414(uint64_t a1)
{
  v2 = sub_1A5B5DFC8();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BBA454(uint64_t a1, uint64_t a2)
{
  sub_1A5B5DFC8();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5BBA4A0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  LOBYTE(v15) = *v1;
  v5 = *(v1 + 24);
  v16 = *(v1 + 8);
  v17 = v5;
  v18 = v3;
  v19 = v4;
  v6 = sub_1A5BBA8A0();
  result = sub_1A5BDA35C(a1, &type metadata for S5kJNH3eYuyaLxNpZr5Z7ziRequest, v6);
  if (!v3)
  {
    v8 = result;
    v9 = sub_1A5FD3D5C();
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *&v17 = sub_1A5B16F58(0, &qword_1EB1F3E80);
    v15 = v12;
    sub_1A5B101C8(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A5B0E9AC(v14, v9, v11, isUniquelyReferenced_nonNull_native);

    return v8;
  }

  return result;
}

void sub_1A5BBA5BC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNCoreSceneUnderstandingDetectorVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A5FF3930;
  *(v7 + 32) = v3;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0C78);
  v12[0] = v7;
  v8 = *(*a1 + 208);
  v9 = v3;
  v10 = v8(v11);
  sub_1A5B0DE30(v12, v4, v6);
  v10(v11, 0);
}

void sub_1A5BBA704(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(VNImageAnalyzerMultiDetectorVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration) initWithObservationsRecipient_];
  v4 = sub_1A5FD3D5C();
  v6 = v5;
  v11[3] = sub_1A5B16F58(0, &qword_1EB1F0C80);
  v11[0] = v3;
  v7 = *(*a1 + 208);
  v8 = v3;
  v9 = v7(v10);
  sub_1A5B0DE30(v11, v4, v6);
  v9(v10, 0);
}

unint64_t sub_1A5BBA84C()
{
  result = qword_1EB1F0C68;
  if (!qword_1EB1F0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0C68);
  }

  return result;
}

unint64_t sub_1A5BBA8A0()
{
  result = qword_1EB1F0C70;
  if (!qword_1EB1F0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0C70);
  }

  return result;
}

unint64_t sub_1A5BBA8F4()
{
  result = qword_1EB1F0C88;
  if (!qword_1EB1F0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0C88);
  }

  return result;
}

unint64_t sub_1A5BBA950()
{
  result = qword_1EB1F0C90;
  if (!qword_1EB1F0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0C90);
  }

  return result;
}

unint64_t sub_1A5BBA9A4(uint64_t a1)
{
  result = sub_1A5B5DFC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BBA9CC(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B6604C();
  result = sub_1A5BBA9FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BBA9FC()
{
  result = qword_1EB1F0C98;
  if (!qword_1EB1F0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0C98);
  }

  return result;
}

unint64_t sub_1A5BBAA54()
{
  result = qword_1EB1F0CA0;
  if (!qword_1EB1F0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0CA0);
  }

  return result;
}

unint64_t sub_1A5BBAAAC()
{
  result = qword_1EB1F0CA8;
  if (!qword_1EB1F0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0CA8);
  }

  return result;
}

unint64_t sub_1A5BBAB00(uint64_t a1)
{
  result = sub_1A5BBA84C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BBAB28(uint64_t a1)
{
  result = sub_1A5BBA8A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BBAB50(uint64_t a1)
{
  result = sub_1A5BBAB78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BBAB78()
{
  result = qword_1EB1F0CB0;
  if (!qword_1EB1F0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0CB0);
  }

  return result;
}

unint64_t sub_1A5BBAC40()
{
  result = qword_1EB21C9B0[0];
  if (!qword_1EB21C9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21C9B0);
  }

  return result;
}

unint64_t sub_1A5BBAC98()
{
  result = qword_1EB21CAC0;
  if (!qword_1EB21CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21CAC0);
  }

  return result;
}

unint64_t sub_1A5BBACF0()
{
  result = qword_1EB21CAC8[0];
  if (!qword_1EB21CAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21CAC8);
  }

  return result;
}

unint64_t sub_1A5BBAD48()
{
  result = qword_1EB21CB50;
  if (!qword_1EB21CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21CB50);
  }

  return result;
}

unint64_t sub_1A5BBADA0()
{
  result = qword_1EB21CB58[0];
  if (!qword_1EB21CB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21CB58);
  }

  return result;
}

unint64_t sub_1A5BBADF8()
{
  result = qword_1EB21CBE0;
  if (!qword_1EB21CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21CBE0);
  }

  return result;
}

unint64_t sub_1A5BBAE50()
{
  result = qword_1EB21CBE8[0];
  if (!qword_1EB21CBE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21CBE8);
  }

  return result;
}

unint64_t sub_1A5BBAEA8()
{
  result = qword_1EB21CC70;
  if (!qword_1EB21CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21CC70);
  }

  return result;
}

unint64_t sub_1A5BBAF00()
{
  result = qword_1EB21CC78;
  if (!qword_1EB21CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21CC78);
  }

  return result;
}

unint64_t sub_1A5BBAF54()
{
  result = qword_1EB1F0CB8;
  if (!qword_1EB1F0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0CB8);
  }

  return result;
}

uint64_t sub_1A5BBAFC4(uint64_t a1)
{
  v2 = sub_1A5BBB2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BBB000(uint64_t a1)
{
  v2 = sub_1A5BBB2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BBB03C(uint64_t a1)
{
  v2 = sub_1A5BBB28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BBB078(uint64_t a1)
{
  v2 = sub_1A5BBB28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizePosteriorAnimalHeadsRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0CC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0CC8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BBB28C();
  sub_1A5FD4CDC();
  sub_1A5BBB2E0();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5BBB28C()
{
  result = qword_1EB21CD00;
  if (!qword_1EB21CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21CD00);
  }

  return result;
}

unint64_t sub_1A5BBB2E0()
{
  result = qword_1EB21CD08[0];
  if (!qword_1EB21CD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21CD08);
  }

  return result;
}

uint64_t RecognizePosteriorAnimalHeadsRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t RecognizePosteriorAnimalHeadsRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0CD0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0CD8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BBB28C();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5BBB2E0();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for RecognizePosteriorAnimalHeadsRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5BBB6AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0CC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0CC8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BBB28C();
  sub_1A5FD4CDC();
  sub_1A5BBB2E0();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

Vision::RecognizePosteriorAnimalHeadsRequest::Animal_optional __swiftcall RecognizePosteriorAnimalHeadsRequest.Animal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

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

uint64_t RecognizePosteriorAnimalHeadsRequest.Animal.rawValue.getter()
{
  if (*v0)
  {
    return 0x64616548746143;
  }

  else
  {
    return 0x64616548676F44;
  }
}

uint64_t sub_1A5BBB91C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5FD48AC();

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

void sub_1A5BBB97C(uint64_t *a1@<X8>)
{
  v2 = 0x64616548676F44;
  if (*v1)
  {
    v2 = 0x64616548746143;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_1A5BBB9B4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64616548746143;
  }

  else
  {
    v2 = 0x64616548676F44;
  }

  if (*a2)
  {
    v3 = 0x64616548746143;
  }

  else
  {
    v3 = 0x64616548676F44;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A5FD4B0C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1A5BBBAEC()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBBB64()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5BBBBC0()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

unint64_t RecognizePosteriorAnimalHeadsRequest.init(revision:)@<X0>(__n128 *a1@<X8>)
{
  static NormalizedRect.fullImage.getter(a1);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a1[2].n128_u64[0] = result;
  return result;
}

void RecognizePosteriorAnimalHeadsRequest.supportedAnimals.getter()
{
  type metadata accessor for Session();
  Session.__allocating_init()();
  v0 = sub_1A5BBC3DC();

  sub_1A5BD9578(v1, &type metadata for RecognizePosteriorAnimalHeadsRequest, v0);

  sub_1A5B16F58(0, &qword_1EB1F0CE8);
  if (swift_dynamicCastMetatype())
  {
    v2 = [swift_getObjCClassFromMetadata() knownAnimalHeadIdentifiers];
    v3 = sub_1A5FD3F4C();

    v4 = 0;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v7 = v3 + 40 + 16 * v4;
    while (1)
    {
      if (v5 == v4)
      {

        return;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      ++v4;

      v8 = sub_1A5FD48AC();

      if (!v8)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v7 += 16;
      if (v8 == 1)
      {
        v9 = 1;
LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A5BBC2E8(0, *(v6 + 2) + 1, 1, v6);
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        if (v11 >= v10 >> 1)
        {
          v6 = sub_1A5BBC2E8((v10 > 1), v11 + 1, 1, v6);
        }

        *(v6 + 2) = v11 + 1;
        v6[v11 + 32] = v9;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

__n128 RecognizePosteriorAnimalHeadsRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 RecognizePosteriorAnimalHeadsRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t RecognizePosteriorAnimalHeadsRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BBC430();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for RecognizePosteriorAnimalHeadsRequest, v3);
}

uint64_t static RecognizePosteriorAnimalHeadsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v8.origin = *a1;
  v8.size = v4;
  v5 = *(a2 + 16);
  v7.origin = *a2;
  v7.size = v5;
  if (!static NormalizedRect.== infix(_:_:)(&v8, &v7))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v2, v3);
}

uint64_t RecognizePosteriorAnimalHeadsRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t RecognizePosteriorAnimalHeadsRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBC094(uint64_t a1)
{
  v2 = sub_1A5BBC3DC();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BBC0D0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BBC430();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BBC130(uint64_t a1)
{
  v2 = sub_1A5B5E0C4();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BBC16C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E0C4();

  return sub_1A5D4E6C8(a1, a2);
}

id sub_1A5BBC218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v7 = sub_1A5BBC484();
    return sub_1A5D23E14(a1, a2, a3, v7);
  }

  return result;
}

char *sub_1A5BBC2E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1A5BBC3DC()
{
  result = qword_1EB1F0CE0;
  if (!qword_1EB1F0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0CE0);
  }

  return result;
}

unint64_t sub_1A5BBC430()
{
  result = qword_1EB1F0CF0;
  if (!qword_1EB1F0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0CF0);
  }

  return result;
}

unint64_t sub_1A5BBC484()
{
  result = qword_1EB1F0CF8;
  if (!qword_1EB1F0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0CF8);
  }

  return result;
}

unint64_t sub_1A5BBC4D8()
{
  result = qword_1EB1F0D00;
  if (!qword_1EB1F0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D00);
  }

  return result;
}

unint64_t sub_1A5BBC534()
{
  result = qword_1EB1F0D08;
  if (!qword_1EB1F0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D08);
  }

  return result;
}

unint64_t sub_1A5BBC588(uint64_t a1)
{
  result = sub_1A5B5E0C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BBC5DC()
{
  result = qword_1EB1F0D10;
  if (!qword_1EB1F0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D10);
  }

  return result;
}

unint64_t sub_1A5BBC634()
{
  result = qword_1EB1F0D18;
  if (!qword_1EB1F0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D18);
  }

  return result;
}

unint64_t sub_1A5BBC68C()
{
  result = qword_1EB1F0D20;
  if (!qword_1EB1F0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D20);
  }

  return result;
}

uint64_t sub_1A5BBC70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BBC748()
{
  result = qword_1EB1F0D28;
  if (!qword_1EB1F0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D28);
  }

  return result;
}

unint64_t sub_1A5BBC79C(uint64_t a1)
{
  result = sub_1A5BBC430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BBC7C4(uint64_t a1)
{
  result = sub_1A5BBC7EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BBC7EC()
{
  result = qword_1EB1F0D30;
  if (!qword_1EB1F0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D30);
  }

  return result;
}

unint64_t sub_1A5BBC894()
{
  result = qword_1EB21D890[0];
  if (!qword_1EB21D890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21D890);
  }

  return result;
}

unint64_t sub_1A5BBC8EC()
{
  result = qword_1EB21D9A0;
  if (!qword_1EB21D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21D9A0);
  }

  return result;
}

unint64_t sub_1A5BBC944()
{
  result = qword_1EB21D9A8[0];
  if (!qword_1EB21D9A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21D9A8);
  }

  return result;
}

unint64_t sub_1A5BBC99C()
{
  result = qword_1EB21DA30;
  if (!qword_1EB21DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21DA30);
  }

  return result;
}

unint64_t sub_1A5BBC9F4()
{
  result = qword_1EB21DA38[0];
  if (!qword_1EB21DA38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21DA38);
  }

  return result;
}

unint64_t sub_1A5BBCA48()
{
  result = qword_1EB1F0D38;
  if (!qword_1EB1F0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D38);
  }

  return result;
}

unint64_t sub_1A5BBCAA4()
{
  v1 = 1684632949;
  v2 = 0x676E6152656D6974;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6E656469666E6F63;
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

uint64_t sub_1A5BBCB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BBDF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BBCB4C(uint64_t a1)
{
  v2 = sub_1A5B0A360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BBCB88(uint64_t a1)
{
  v2 = sub_1A5B0A360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BBCBC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();
  }

  return v8 & 1;
}

uint64_t sub_1A5BBCC60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65756C6176;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7367616C66;
    }

    else
    {
      v4 = 0x68636F7065;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616373656D6974;
    }

    else
    {
      v4 = 0x65756C6176;
    }

    if (v3)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x7367616C66;
  if (a2 != 2)
  {
    v7 = 0x68636F7065;
  }

  if (a2)
  {
    v2 = 0x6C616373656D6974;
    v6 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1A5FD4B0C();
  }

  return v10 & 1;
}

uint64_t sub_1A5BBCD98()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBCE10()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5BBCE74()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBCEE8@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5FD48AC();

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

void sub_1A5BBCF48(uint64_t *a1@<X8>)
{
  v2 = 6581861;
  if (!*v1)
  {
    v2 = 0x7472617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A5BBCF7C()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1A5BBCFAC@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5FD48AC();

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

uint64_t sub_1A5BBD010(uint64_t a1)
{
  v2 = sub_1A5BBE22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BBD04C(uint64_t a1)
{
  v2 = sub_1A5BBE22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BBD094()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBD150()
{
  sub_1A5FD3DBC();
}

uint64_t sub_1A5BBD1F8()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBD2B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5BBE104();
  *a1 = result;
  return result;
}

void sub_1A5BBD2E0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x65756C6176;
  v4 = 0x7367616C66;
  if (*v1 != 2)
  {
    v4 = 0x68636F7065;
  }

  if (*v1)
  {
    v3 = 0x6C616373656D6974;
    v2 = 0xE900000000000065;
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

uint64_t sub_1A5BBD358()
{
  v1 = 0x65756C6176;
  v2 = 0x7367616C66;
  if (*v0 != 2)
  {
    v2 = 0x68636F7065;
  }

  if (*v0)
  {
    v1 = 0x6C616373656D6974;
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

uint64_t sub_1A5BBD3CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5BBE104();
  *a1 = result;
  return result;
}

uint64_t sub_1A5BBD3F4(uint64_t a1)
{
  v2 = sub_1A5BBE280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BBD430(uint64_t a1)
{
  v2 = sub_1A5BBE280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BBD46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0D48);
  v36 = *(v32 - 8);
  v7 = MEMORY[0x1EEE9AC00](v32);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0D50);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1A5FD367C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 40);
  v37 = v4;
  v38 = a2;
  v17(a2, a4);
  LOBYTE(v46) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  sub_1A5BBE150();
  v18 = v39;
  sub_1A5FD4A5C();
  if (v18)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v39 = v12;
  v31 = v10;
  (*(v14 + 8))(v16, v13);
  v20 = v38;
  (*(a4 + 48))(v38, a4);
  LOBYTE(v46) = 1;
  sub_1A5FD4A3C();
  (*(a4 + 64))(&v46, v20, a4);
  v45 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758);
  sub_1A5BBE1A8();
  sub_1A5FD4A5C();
  v30 = 0;
  LOBYTE(v46) = 2;
  sub_1A5BBE22C();
  v21 = v39;
  sub_1A5FD49EC();
  LOBYTE(v46) = 0;
  sub_1A5BBE280();
  v22 = v34;
  sub_1A5FD49EC();
  LOBYTE(v46) = 1;
  v23 = v33;
  sub_1A5FD49EC();
  (*(a4 + 56))(v40, v38, a4);
  if (v41)
  {
    v24 = v32;
    v26 = v35;
    v25 = v36;
  }

  else
  {
    v42 = v40[0];
    v43 = v40[1];
    v44 = v40[2];
    v27 = v30;
    sub_1A5BBD96C();
    v24 = v32;
    v26 = v35;
    v25 = v36;
    if (!v27)
    {
      sub_1A5FD42CC();
      sub_1A5BBD96C();
    }
  }

  v28 = *(v25 + 8);
  v28(v23, v24);
  v28(v22, v24);
  return (*(v26 + 8))(v21, v31);
}

uint64_t sub_1A5BBD96C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0D48);
  result = sub_1A5FD4A7C();
  if (!v0)
  {
    sub_1A5FD4A7C();
    sub_1A5FD4A6C();
    return sub_1A5FD4A8C();
  }

  return result;
}

uint64_t sub_1A5BBDA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0D78);
  result = sub_1A5FD499C();
  if (!v0)
  {
    v2 = result;
    sub_1A5FD498C();
    sub_1A5FD49AC();
    sub_1A5FD499C();
    return v2;
  }

  return result;
}

uint64_t sub_1A5BBDB04@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0D78);
  v31 = *(v2 - 8);
  v3 = (MEMORY[0x1EEE9AC00])();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0D80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v36 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  sub_1A5BBE22C();
  result = sub_1A5FD48CC();
  if (!v1)
  {
    v28 = v5;
    v29 = v9;
    v36 = 0;
    sub_1A5BBE280();
    sub_1A5FD48CC();
    v36 = 1;
    sub_1A5FD48CC();
    v27 = v8;
    v36 = 0;
    v13 = v2;
    v14 = v7;
    v15 = sub_1A5FD49CC();
    v16 = v31;
    if (v15)
    {
      v36 = 0;
      v17 = sub_1A5FD49CC();
      v18 = v30;
      if (v17)
      {
        sub_1A5BBDA38();
        v26 = v21;
        sub_1A5BBDA38();
        sub_1A5FD42DC();
        LODWORD(v26) = 0;
        v24 = v33;
        v25 = v32;
        v22 = v34;
        v23 = v35;
        v16 = v31;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0u;
        v25 = 0u;
        LODWORD(v26) = 1;
      }
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0u;
      v25 = 0u;
      LODWORD(v26) = 1;
      v18 = v30;
    }

    v19 = *(v16 + 8);
    v19(v28, v13);
    v19(v14, v13);
    result = (*(v29 + 8))(v11, v27);
    v20 = v24;
    *v18 = v25;
    *(v18 + 16) = v20;
    *(v18 + 32) = v22;
    *(v18 + 40) = v23;
    *(v18 + 48) = v26;
  }

  return result;
}

uint64_t sub_1A5BBDF88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A60555F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

uint64_t sub_1A5BBE104()
{
  v0 = sub_1A5FD48AC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A5BBE150()
{
  result = qword_1EB1F0D58;
  if (!qword_1EB1F0D58)
  {
    sub_1A5FD367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D58);
  }

  return result;
}

unint64_t sub_1A5BBE1A8()
{
  result = qword_1EB1F0D60;
  if (!qword_1EB1F0D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EE758);
    sub_1A5B0A760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D60);
  }

  return result;
}

unint64_t sub_1A5BBE22C()
{
  result = qword_1EB1F0D68;
  if (!qword_1EB1F0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D68);
  }

  return result;
}

unint64_t sub_1A5BBE280()
{
  result = qword_1EB1F0D70;
  if (!qword_1EB1F0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D70);
  }

  return result;
}

unint64_t sub_1A5BBE2D8()
{
  result = qword_1EB1F0D88;
  if (!qword_1EB1F0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D88);
  }

  return result;
}

unint64_t sub_1A5BBE330()
{
  result = qword_1EB1F0D90;
  if (!qword_1EB1F0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D90);
  }

  return result;
}

unint64_t sub_1A5BBE388()
{
  result = qword_1EB1F0D98;
  if (!qword_1EB1F0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0D98);
  }

  return result;
}

unint64_t sub_1A5BBE3E0()
{
  result = qword_1EB1F0DA0;
  if (!qword_1EB1F0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0DA0);
  }

  return result;
}

unint64_t sub_1A5BBE438()
{
  result = qword_1EB1F0DA8;
  if (!qword_1EB1F0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0DA8);
  }

  return result;
}

unint64_t sub_1A5BBE490()
{
  result = qword_1EB1F0DB0;
  if (!qword_1EB1F0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0DB0);
  }

  return result;
}

unint64_t sub_1A5BBE4E8()
{
  result = qword_1EB1F0DB8;
  if (!qword_1EB1F0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0DB8);
  }

  return result;
}

unint64_t sub_1A5BBE540()
{
  result = qword_1EB1F0DC0;
  if (!qword_1EB1F0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0DC0);
  }

  return result;
}

unint64_t sub_1A5BBE598()
{
  result = qword_1EB1F0DC8;
  if (!qword_1EB1F0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0DC8);
  }

  return result;
}

id sub_1A5BBE620(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A6002FF0;
  sub_1A5BBE7F8();
  *(v6 + 32) = sub_1A5FD448C();
  v7 = sub_1A5FD448C();
  *(v6 + 40) = v7;
  (*(a2 + 24))(a1, a2);
  if (v3)
  {

    *(v6 + 16) = 0;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    sub_1A5FD3FCC();

    *(v6 + 48) = sub_1A5FD448C();
    objc_allocWithZone(MEMORY[0x1E695FED0]);
    v2 = sub_1A5BBEBF4(v6, 65600);
    MEMORY[0x1EEE9AC00](v2);
    sub_1A5FD430C();
  }

  return v2;
}

unint64_t sub_1A5BBE7F8()
{
  result = qword_1EB1F3E80;
  if (!qword_1EB1F3E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F3E80);
  }

  return result;
}

void sub_1A5BBE844(uint64_t *a1, void *a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v45 = a1;
  v43 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  *&v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness).n128_u64[0];
  v14 = &v37 - v13;
  v15 = [a2 strides];
  sub_1A5BBE7F8();
  v16 = sub_1A5FD3F4C();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    for (i = *(v16 + 48); ; i = MEMORY[0x1AC554EE0](2, v16))
    {
      v18 = i;

      v19 = [v18 integerValue];

      v20 = (*(v7 + 24))(a4, v7);
      if (v6)
      {
        break;
      }

      v37 = 0;
      v21 = v20;
      v22 = sub_1A5FD3FCC();
      if (v22 < 0)
      {
        goto LABEL_21;
      }

      v23 = v22;
      v42 = v19;
      v24 = v21;
      if (!v22)
      {
LABEL_13:

        return;
      }

      v16 = 0;
      v40 = v43 + 88;
      v41 = (v11 + 8);
      v39 = v42 + 0x4000000000000000;
      v38 = 2 * v42;
      while (1)
      {
        v11 = v24;
        v25 = AssociatedTypeWitness;
        sub_1A5FD402C();
        v26 = a3;
        v6 = a4;
        (*(v43 + 88))(&v46, v14, a4);
        v27 = *v41;
        (*v41)(v14, v25);
        v7 = v48;
        if (!v48)
        {
          v46 = 0;
          v47 = 0xE000000000000000;
          sub_1A5FD46AC();
          MEMORY[0x1AC554600](0xD00000000000001DLL, 0x80000001A6055610);
          v33 = AssociatedTypeWitness;
          sub_1A5FD402C();

          sub_1A5FD4ADC();
          v27(v14, v33);
          v34 = v46;
          v35 = v47;
          sub_1A5B16774();
          swift_allocError();
          *v36 = v34;
          *(v36 + 8) = v35;
          *(v36 + 16) = 0;
          *(v36 + 20) = 0;
          swift_willThrow();
          return;
        }

        v28 = v49;
        v30 = v46;
        v29 = v47;
        a3 = &v46;
        *&v45[v16] = NormalizedPoint.x.getter();
        a4 = v42 + v16;
        if (__OFADD__(v16, v42))
        {
          break;
        }

        v46 = v30;
        v47 = v29;
        v31 = NormalizedPoint.y.getter();
        a3 = v45;
        *&v45[a4] = v31;

        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        v32 = v16 + v38;
        if (__OFADD__(v16, v38))
        {
          goto LABEL_18;
        }

        ++v16;
        *&a3[v32] = v28;
        a4 = v6;
        a3 = v26;
        v24 = v11;
        if (v23 == v16)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }
  }
}

id sub_1A5BBEBF4(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1A5BBE7F8();
  v4 = sub_1A5FD3F3C();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1A5FD348C();

    swift_willThrow();
  }

  return v5;
}

void __swiftcall HumanBodyPoseObservation.joint(for:)(Vision::Joint_optional *__return_ptr retstr, Vision::HumanBodyPoseObservation::JointName a2)
{
  v3 = a2;
  v5 = *(v2 + *(type metadata accessor for HumanBodyPoseObservation() + 32));
  if (*(v5 + 16) && (v6 = sub_1A5BC3428(*v3), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    v11 = *(v8 + 32);
    retstr->value.location = *v8;
    retstr->value.jointName._countAndFlagsBits = v10;
    retstr->value.jointName._object = v9;
    retstr->value.confidence = v11;
  }

  else
  {
    retstr->value.confidence = 0.0;
    retstr->value.location = 0u;
    retstr->value.jointName = 0u;
  }
}

uint64_t type metadata accessor for HumanBodyPoseObservation()
{
  result = qword_1EB21ECE0;
  if (!qword_1EB21ECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HumanBodyPoseObservation.allJoints(in:)(char *a1)
{
  v4 = *a1;
  v1 = type metadata accessor for HumanBodyPoseObservation();
  v2 = sub_1A5BC40B4(&qword_1EB1F0DD0, type metadata accessor for HumanBodyPoseObservation);
  return sub_1A5C054A8(&v4, v1, v2);
}

void *HumanBodyPoseObservation.availableJointNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for HumanBodyPoseObservation() + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A5BC4040(*(v1 + 16), 0);
  v4 = sub_1A5B2E2F8(&v6, v3 + 32, v2, v1);

  sub_1A5B2E3F4();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id HumanBodyPoseObservation.keypoints.getter()
{
  v0 = type metadata accessor for HumanBodyPoseObservation();
  v1 = sub_1A5BC40B4(&qword_1EB1F0DD8, type metadata accessor for HumanBodyPoseObservation);
  return sub_1A5BBE620(v0, v1);
}

uint64_t HumanBodyPoseObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5FD367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 HumanBodyPoseObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HumanBodyPoseObservation() + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t HumanBodyPoseObservation.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1A5FD46AC();

  v40 = 0xD000000000000025;
  v41 = 0x80000001A60556F0;
  v13 = type metadata accessor for HumanBodyPoseObservation();
  v38 = *(*(v0 + v13[8]) + 16);
  v14 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v14);

  MEMORY[0x1AC554600](0x73746E696F6A20, 0xE700000000000000);
  v15 = v13[9];
  sub_1A5BC40FC(v0 + v15, v12);
  v16 = type metadata accessor for HumanHandPoseObservation();
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v12, 1, v16);
  sub_1A5B10168(v12, &qword_1EB1F0DE0);
  if (v18 != 1)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1A5FD46AC();

    v38 = 0xD000000000000012;
    v39 = 0x80000001A6055740;
    sub_1A5BC40FC(v1 + v15, v9);
    result = v17(v9, 1, v16);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_9;
    }

    v20 = *&v9[*(v16 + 36)];

    sub_1A5BC4930(v9, type metadata accessor for HumanHandPoseObservation);
    v21 = *(v20 + 16);

    v37 = v21;
    v22 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v22);

    MEMORY[0x1AC554600](0x73746E696F6A20, 0xE700000000000000);
    MEMORY[0x1AC554600](v38, v39);
  }

  v23 = v13[10];
  sub_1A5BC40FC(v1 + v23, v6);
  v24 = v17(v6, 1, v16);
  sub_1A5B10168(v6, &qword_1EB1F0DE0);
  if (v24 == 1)
  {
LABEL_7:
    v31 = v40;
    v30 = v41;
    v38 = 8236;
    v39 = 0xE200000000000000;
    v32 = sub_1A5BC40B4(&qword_1EB1F0DE8, type metadata accessor for HumanBodyPoseObservation);
    v33 = sub_1A5C29408(v13, &off_1F1958698, v32);
    MEMORY[0x1AC554600](v33);

    MEMORY[0x1AC554600](41, 0xE100000000000000);
    v34 = v38;
    v35 = v39;
    v38 = v31;
    v39 = v30;

    MEMORY[0x1AC554600](v34, v35);

    return v38;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1A5FD46AC();

  v38 = 0xD000000000000013;
  v39 = 0x80000001A6055720;
  v25 = v1 + v23;
  v26 = v36;
  sub_1A5BC40FC(v25, v36);
  result = v17(v26, 1, v16);
  if (result != 1)
  {
    v27 = *(v26 + *(v16 + 36));

    sub_1A5BC4930(v26, type metadata accessor for HumanHandPoseObservation);
    v28 = *(v27 + 16);

    v37 = v28;
    v29 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v29);

    MEMORY[0x1AC554600](0x73746E696F6A20, 0xE700000000000000);
    MEMORY[0x1AC554600](v38, v39);

    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t HumanBodyPoseObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for HumanBodyPoseObservation();
  *a1 = *(v1 + *(result + 28));
  return result;
}

Vision::HumanBodyPoseObservation::JointName_optional __swiftcall HumanBodyPoseObservation.JointName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD4B2C();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HumanBodyPoseObservation.JointName.rawValue.getter()
{
  result = 0x7261457466656CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6579457466656CLL;
      break;
    case 2:
      result = 0x7261457468676972;
      break;
    case 3:
      result = 0x6579457468676972;
      break;
    case 4:
      result = 1801676142;
      break;
    case 5:
      result = 1702063982;
      break;
    case 6:
      result = 0x756F68537466656CLL;
      break;
    case 7:
      result = 0x6F626C457466656CLL;
      break;
    case 8:
      result = 0x736972577466656CLL;
      break;
    case 9:
      result = 0x6F68537468676972;
      break;
    case 0xA:
      result = 0x626C457468676972;
      break;
    case 0xB:
      result = 0x6972577468676972;
      break;
    case 0xC:
      result = 1953460082;
      break;
    case 0xD:
      result = 0x7069487466656CLL;
      break;
    case 0xE:
      result = 0x65656E4B7466656CLL;
      break;
    case 0xF:
      result = 0x6C6B6E417466656CLL;
      break;
    case 0x10:
      result = 0x7069487468676972;
      break;
    case 0x11:
      result = 0x656E4B7468676972;
      break;
    case 0x12:
      result = 0x6B6E417468676972;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5BBF83C()
{
  v0 = HumanBodyPoseObservation.JointName.rawValue.getter();
  v2 = v1;
  if (v0 == HumanBodyPoseObservation.JointName.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A5FD4B0C();
  }

  return v5 & 1;
}

uint64_t sub_1A5BBF8D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6D72417468676972;
  v6 = 0xE700000000000000;
  v7 = 0x67654C7466656CLL;
  if (a1 != 4)
  {
    v7 = 0x67654C7468676972;
    v6 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6F73726F74;
  if (a1 != 1)
  {
    v9 = 0x6D72417466656CLL;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701011814;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6D72417468676972)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x67654C7466656CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x67654C7468676972)
      {
LABEL_34:
        v13 = sub_1A5FD4B0C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6F73726F74)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6D72417466656CLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701011814)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A5BBFABC@<X0>(uint64_t *a1@<X8>)
{
  result = HumanBodyPoseObservation.JointName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5BBFAE4()
{
  sub_1A5FD4C1C();
  HumanBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBFB4C()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBFC48()
{
  HumanBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();
}

uint64_t sub_1A5BBFCAC()
{
  sub_1A5FD4C1C();
  HumanBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BBFD10()
{
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();

  return sub_1A5FD4C6C();
}

Vision::HumanBodyPoseObservation::JointsGroupName_optional __swiftcall HumanBodyPoseObservation.JointsGroupName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A5FD48AC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HumanBodyPoseObservation.JointsGroupName.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701011814;
  v3 = 0x6D72417468676972;
  v4 = 0x67654C7466656CLL;
  if (v1 != 4)
  {
    v4 = 0x67654C7468676972;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F73726F74;
  if (v1 != 1)
  {
    v5 = 0x6D72417466656CLL;
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

void sub_1A5BBFFDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701011814;
  v5 = 0xE800000000000000;
  v6 = 0x6D72417468676972;
  v7 = 0xE700000000000000;
  v8 = 0x67654C7466656CLL;
  if (v2 != 4)
  {
    v8 = 0x67654C7468676972;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6F73726F74;
  if (v2 != 1)
  {
    v10 = 0x6D72417466656CLL;
    v9 = 0xE700000000000000;
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

uint64_t sub_1A5BC00A8()
{
  sub_1A5FD3DBC();
}

uint64_t HumanBodyPoseObservation.leftHand.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HumanBodyPoseObservation() + 36);

  return sub_1A5BC40FC(v3, a1);
}

uint64_t HumanBodyPoseObservation.rightHand.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HumanBodyPoseObservation() + 40);

  return sub_1A5BC40FC(v3, a1);
}

uint64_t sub_1A5BC0220(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = *(*(v2 + 48) + (v8 | (v3 << 6)));
    if (!)
    {
      return 1;
    }

    sub_1A5BC3428(v11);
    if ((v12 & 1) == 0)
    {

      return 0;
    }

    sub_1A5B23E90();

    v13 = sub_1A5FD3D0C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t HumanBodyPoseObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for HumanBodyPoseObservation();
  sub_1A5BC40B4(&qword_1EB1F0DF0, type metadata accessor for HumanBodyPoseObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BC0474(char *a1, uint64_t a2)
{
  v5 = *a1;
  v3 = sub_1A5BC40B4(&qword_1EB1F0DD0, type metadata accessor for HumanBodyPoseObservation);
  return sub_1A5C054A8(&v5, a2, v3);
}

uint64_t sub_1A5BC04E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BC40B4(&qword_1EB1F0DE8, type metadata accessor for HumanBodyPoseObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5BC056C()
{
  v1 = 0x746176726573626FLL;
  v2 = 0x646E61487466656CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E61487468676972;
  }

  if (*v0)
  {
    v1 = 0x746E696F4A6C6C61;
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

uint64_t sub_1A5BC05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BC4B64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BC061C(uint64_t a1)
{
  v2 = sub_1A5BC47D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC0658(uint64_t a1)
{
  v2 = sub_1A5BC47D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HumanBodyPoseObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DE0);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v34 - v5;
  v6 = sub_1A5FD367C();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DF8);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for HumanBodyPoseObservation();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BC47D0();
  v17 = v49;
  sub_1A5FD4CCC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v8;
  v38 = v10;
  v49 = v14;
  v18 = v45;
  v19 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0E00);
  v50 = 1;
  sub_1A5BC4990(&qword_1EB1F0E08, sub_1A5BC4824, sub_1A5BC4878);
  sub_1A5FD497C();
  *&v16[v49[8]] = v53;
  LOBYTE(v53) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v36 = v16;
  v35 = v13;
  LOBYTE(v53) = 0;
  sub_1A5BC40B4(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v20 = v43;
  sub_1A5FD497C();
  v21 = *(v18 + 32);
  v22 = v36;
  v21(v36, v20, v19);
  LOBYTE(v53) = 1;
  sub_1A5FD495C();
  *&v22[v49[5]] = v23;
  v50 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v24 = v44;
  v25 = v49;
  *&v36[v49[7]] = v53;
  sub_1A5BBDB04(v51);
  v26 = &v36[v25[6]];
  v27 = v51[1];
  *v26 = v51[0];
  *(v26 + 1) = v27;
  *(v26 + 2) = v51[2];
  v26[48] = v52;
  LOBYTE(v53) = 2;
  v28 = sub_1A5BC4AC8(&qword_1EB1F0E20, &qword_1EB1F0E28);
  v29 = v41;
  v43 = v28;
  v30 = v35;
  sub_1A5FD497C();
  sub_1A5BC416C(v29, &v36[v25[9]]);
  LOBYTE(v53) = 3;
  v31 = v48;
  sub_1A5FD497C();
  (*(v24 + 8))(v38, v37);
  (*(v47 + 8))(v30, v31);
  v32 = v36;
  sub_1A5BC416C(v40, &v36[v25[10]]);
  sub_1A5BC48CC(v32, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1A5BC4930(v32, type metadata accessor for HumanBodyPoseObservation);
}

uint64_t HumanBodyPoseObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0E30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BC47D0();
  sub_1A5FD4CDC();
  v12 = type metadata accessor for HumanBodyPoseObservation();
  v13 = *(v12 + 32);
  v20 = v3;
  v25 = *(v3 + v13);
  v24 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0E00);
  sub_1A5BC4990(&qword_1EB1F0E38, sub_1A5BC4A20, sub_1A5BC4A74);
  sub_1A5FD4A5C();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v17 = v9;
  v23 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DE0);
  sub_1A5BC4AC8(&qword_1EB1F0E50, &qword_1EB1F0E58);
  sub_1A5FD4A5C();
  v22 = 3;
  sub_1A5FD4A5C();
  v21 = 0;
  sub_1A5B0A360();
  sub_1A5FD49EC();
  v15 = sub_1A5BC40B4(&qword_1EB1F0DE8, type metadata accessor for HumanBodyPoseObservation);
  sub_1A5BBD46C(v7, v12, &off_1F1958698, v15);
  (*(v18 + 8))(v7, v19);
  return (*(v17 + 8))(v11, v8);
}

void *sub_1A5BC12E4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for HumanBodyPoseObservation() + 28));
  if (v3 > 0xFFF7 || v3 >> 3 != 12)
  {
    return 0;
  }

  v4 = &unk_1F1958528;
  v5 = &unk_1F19585A0;
  v6 = &unk_1F19585C8;
  if (v2 != 4)
  {
    v6 = &unk_1F19585F0;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = &unk_1F1958550;
  if (v2 != 1)
  {
    v7 = &unk_1F1958578;
  }

  if (v2)
  {
    v4 = v7;
  }

  if (v2 <= 2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

void *sub_1A5BC13A4()
{
  v1 = *(v0 + *(type metadata accessor for HumanBodyPoseObservation() + 28));
  if (v1 > 0xFFF7 || v1 >> 3 != 12)
  {
    sub_1A5FD46AC();

    if (v1 <= 0xFFF7)
    {
      v4 = RequestDescriptor.description.getter();
      v3 = v5;
    }

    else
    {
      v3 = 0xEF74736575716572;
      v4 = 0x206E776F6E6B6E75;
    }

    MEMORY[0x1AC554600](v4, v3);

    MEMORY[0x1AC554600](0x70757320746F6E20, 0xEF2E646574726F70);
    sub_1A5B16774();
    swift_allocError();
    *v6 = 0xD000000000000018;
    *(v6 + 8) = 0x80000001A6055760;
    *(v6 + 16) = 0;
    *(v6 + 20) = 18;
    swift_willThrow();
  }

  return &unk_1F1958618;
}

void sub_1A5BC1530(void *a1@<X0>, char *a2@<X8>)
{
  sub_1A5FD3D5C();
  v4 = a1;
  v5 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v6 = sub_1A5FD3D2C();

  v7 = sub_1A5FD3D5C();
  v9 = v8;
  if (v7 == sub_1A5FD3D5C() && v9 == v10)
  {

    goto LABEL_10;
  }

  v12 = sub_1A5FD4B0C();

  if (v12)
  {
LABEL_10:

    v20 = 0;
    goto LABEL_11;
  }

  sub_1A5FD3D5C();
  v13 = v4;
  v14 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v15 = sub_1A5FD3D2C();

  v16 = sub_1A5FD3D5C();
  v18 = v17;
  if (v16 == sub_1A5FD3D5C() && v18 == v19)
  {

LABEL_13:

    v20 = 1;
    goto LABEL_11;
  }

  v21 = sub_1A5FD4B0C();

  if (v21)
  {
    goto LABEL_13;
  }

  sub_1A5FD3D5C();
  v22 = v13;
  v23 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v24 = sub_1A5FD3D2C();

  v25 = sub_1A5FD3D5C();
  v27 = v26;
  if (v25 == sub_1A5FD3D5C() && v27 == v28)
  {

LABEL_18:

    v20 = 2;
    goto LABEL_11;
  }

  v29 = sub_1A5FD4B0C();

  if (v29)
  {
    goto LABEL_18;
  }

  sub_1A5FD3D5C();
  v30 = v22;
  v31 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v32 = sub_1A5FD3D2C();

  v33 = sub_1A5FD3D5C();
  v35 = v34;
  if (v33 == sub_1A5FD3D5C() && v35 == v36)
  {

LABEL_23:

    v20 = 3;
    goto LABEL_11;
  }

  v37 = sub_1A5FD4B0C();

  if (v37)
  {
    goto LABEL_23;
  }

  sub_1A5FD3D5C();
  v38 = v30;
  v39 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v40 = sub_1A5FD3D2C();

  v41 = sub_1A5FD3D5C();
  v43 = v42;
  if (v41 == sub_1A5FD3D5C() && v43 == v44)
  {

LABEL_28:

    v20 = 4;
    goto LABEL_11;
  }

  v45 = sub_1A5FD4B0C();

  if (v45)
  {
    goto LABEL_28;
  }

  sub_1A5FD3D5C();
  v46 = v38;
  v47 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v48 = sub_1A5FD3D2C();

  v49 = sub_1A5FD3D5C();
  v51 = v50;
  if (v49 == sub_1A5FD3D5C() && v51 == v52)
  {

LABEL_33:

    v20 = 5;
    goto LABEL_11;
  }

  v53 = sub_1A5FD4B0C();

  if (v53)
  {
    goto LABEL_33;
  }

  sub_1A5FD3D5C();
  v54 = v46;
  v55 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v56 = sub_1A5FD3D2C();

  v57 = sub_1A5FD3D5C();
  v59 = v58;
  if (v57 == sub_1A5FD3D5C() && v59 == v60)
  {

LABEL_38:

    v20 = 6;
    goto LABEL_11;
  }

  v61 = sub_1A5FD4B0C();

  if (v61)
  {
    goto LABEL_38;
  }

  sub_1A5FD3D5C();
  v62 = v54;
  v63 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v64 = sub_1A5FD3D2C();

  v65 = sub_1A5FD3D5C();
  v67 = v66;
  if (v65 == sub_1A5FD3D5C() && v67 == v68)
  {

LABEL_43:

    v20 = 7;
    goto LABEL_11;
  }

  v69 = sub_1A5FD4B0C();

  if (v69)
  {
    goto LABEL_43;
  }

  sub_1A5FD3D5C();
  v70 = v62;
  v71 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v72 = sub_1A5FD3D2C();

  v73 = sub_1A5FD3D5C();
  v75 = v74;
  if (v73 == sub_1A5FD3D5C() && v75 == v76)
  {

LABEL_48:

    v20 = 8;
    goto LABEL_11;
  }

  v77 = sub_1A5FD4B0C();

  if (v77)
  {
    goto LABEL_48;
  }

  sub_1A5FD3D5C();
  v78 = v70;
  v79 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v80 = sub_1A5FD3D2C();

  v81 = sub_1A5FD3D5C();
  v83 = v82;
  if (v81 == sub_1A5FD3D5C() && v83 == v84)
  {

LABEL_53:

    v20 = 9;
    goto LABEL_11;
  }

  v85 = sub_1A5FD4B0C();

  if (v85)
  {
    goto LABEL_53;
  }

  sub_1A5FD3D5C();
  v86 = v78;
  v87 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v88 = sub_1A5FD3D2C();

  v89 = sub_1A5FD3D5C();
  v91 = v90;
  if (v89 == sub_1A5FD3D5C() && v91 == v92)
  {

LABEL_58:

    v20 = 10;
    goto LABEL_11;
  }

  v93 = sub_1A5FD4B0C();

  if (v93)
  {
    goto LABEL_58;
  }

  sub_1A5FD3D5C();
  v94 = v86;
  v95 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v96 = sub_1A5FD3D2C();

  v97 = sub_1A5FD3D5C();
  v99 = v98;
  if (v97 == sub_1A5FD3D5C() && v99 == v100)
  {

LABEL_63:

    v20 = 11;
    goto LABEL_11;
  }

  v101 = sub_1A5FD4B0C();

  if (v101)
  {
    goto LABEL_63;
  }

  sub_1A5FD3D5C();
  v102 = v94;
  v103 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v104 = sub_1A5FD3D2C();

  v105 = sub_1A5FD3D5C();
  v107 = v106;
  if (v105 == sub_1A5FD3D5C() && v107 == v108)
  {

LABEL_68:

    v20 = 12;
    goto LABEL_11;
  }

  v109 = sub_1A5FD4B0C();

  if (v109)
  {
    goto LABEL_68;
  }

  sub_1A5FD3D5C();
  v110 = v102;
  v111 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v112 = sub_1A5FD3D2C();

  v113 = sub_1A5FD3D5C();
  v115 = v114;
  if (v113 == sub_1A5FD3D5C() && v115 == v116)
  {

LABEL_73:

    v20 = 13;
    goto LABEL_11;
  }

  v117 = sub_1A5FD4B0C();

  if (v117)
  {
    goto LABEL_73;
  }

  sub_1A5FD3D5C();
  v118 = v110;
  v119 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v120 = sub_1A5FD3D2C();

  v121 = sub_1A5FD3D5C();
  v123 = v122;
  if (v121 == sub_1A5FD3D5C() && v123 == v124)
  {

LABEL_78:

    v20 = 14;
    goto LABEL_11;
  }

  v125 = sub_1A5FD4B0C();

  if (v125)
  {
    goto LABEL_78;
  }

  sub_1A5FD3D5C();
  v126 = v118;
  v127 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v128 = sub_1A5FD3D2C();

  v129 = sub_1A5FD3D5C();
  v131 = v130;
  if (v129 == sub_1A5FD3D5C() && v131 == v132)
  {

LABEL_83:

    v20 = 15;
    goto LABEL_11;
  }

  v133 = sub_1A5FD4B0C();

  if (v133)
  {
    goto LABEL_83;
  }

  sub_1A5FD3D5C();
  v134 = v126;
  v135 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v136 = sub_1A5FD3D2C();

  v137 = sub_1A5FD3D5C();
  v139 = v138;
  if (v137 == sub_1A5FD3D5C() && v139 == v140)
  {

LABEL_88:

    v20 = 16;
    goto LABEL_11;
  }

  v141 = sub_1A5FD4B0C();

  if (v141)
  {
    goto LABEL_88;
  }

  sub_1A5FD3D5C();
  v142 = v134;
  v143 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v144 = sub_1A5FD3D2C();

  v145 = sub_1A5FD3D5C();
  v147 = v146;
  if (v145 == sub_1A5FD3D5C() && v147 == v148)
  {

LABEL_93:

    v20 = 17;
    goto LABEL_11;
  }

  v149 = sub_1A5FD4B0C();

  if (v149)
  {
    goto LABEL_93;
  }

  sub_1A5FD3D5C();
  v150 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v151 = sub_1A5FD3D2C();

  v152 = sub_1A5FD3D5C();
  v154 = v153;
  if (v152 == sub_1A5FD3D5C() && v154 == v155)
  {

    v20 = 18;
  }

  else
  {
    v156 = sub_1A5FD4B0C();

    if (v156)
    {
      v20 = 18;
    }

    else
    {
      v20 = 19;
    }
  }

LABEL_11:
  *a2 = v20;
}

uint64_t sub_1A5BC268C@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a4;
  v80 = a5;
  v88 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v74 - v13;
  v76 = *a2;
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v17 = a3[3];
  v18 = sub_1A5BC4CD8(MEMORY[0x1E69E7CC0]);
  v19 = [a1 availableJointNames];
  type metadata accessor for JointName(0);
  v20 = sub_1A5FD3F4C();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = &selRef_path;
    v81 = *(v20 + 16);
    v82 = a1;
    do
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v26 = *(v20 + 8 * v22 + 32);
      *&v84 = 0;
      v27 = v26;
      v28 = [a1 v23[203]];
      v29 = v84;
      if (v28)
      {
        v30 = v28;
        v31 = v27;
        v32 = v29;
        sub_1A5BC1530(v31, &v84);
        v33 = v84;
        if (v84 == 19)
        {
        }

        else
        {
          [v30 location];
          NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v35, v34));
          v83 = v84;
          v36 = 0xE700000000000000;
          v37 = 0x7261457466656CLL;
          switch(v33)
          {
            case 1:
              v37 = 0x6579457466656CLL;
              break;
            case 2:
              v36 = 0xE800000000000000;
              v37 = 0x7261457468676972;
              break;
            case 3:
              v36 = 0xE800000000000000;
              v37 = 0x6579457468676972;
              break;
            case 4:
              v36 = 0xE400000000000000;
              v37 = 1801676142;
              break;
            case 5:
              v36 = 0xE400000000000000;
              v37 = 1702063982;
              break;
            case 6:
              v37 = 0x756F68537466656CLL;
              v36 = 0xEC0000007265646CLL;
              break;
            case 7:
              v36 = 0xE900000000000077;
              v37 = 0x6F626C457466656CLL;
              break;
            case 8:
              v36 = 0xE900000000000074;
              v37 = 0x736972577466656CLL;
              break;
            case 9:
              v37 = 0x6F68537468676972;
              v36 = 0xED00007265646C75;
              break;
            case 10:
              v36 = 0xEA0000000000776FLL;
              v37 = 0x626C457468676972;
              break;
            case 11:
              v36 = 0xEA00000000007473;
              v37 = 0x6972577468676972;
              break;
            case 12:
              v36 = 0xE400000000000000;
              v37 = 1953460082;
              break;
            case 13:
              v37 = 0x7069487466656CLL;
              break;
            case 14:
              v36 = 0xE800000000000000;
              v37 = 0x65656E4B7466656CLL;
              break;
            case 15:
              v37 = 0x6C6B6E417466656CLL;
              goto LABEL_22;
            case 16:
              v36 = 0xE800000000000000;
              v37 = 0x7069487468676972;
              break;
            case 17:
              v37 = 0x656E4B7468676972;
LABEL_22:
              v36 = 0xE900000000000065;
              break;
            case 18:
              v37 = 0x6B6E417468676972;
              v36 = 0xEA0000000000656CLL;
              break;
            default:
              break;
          }

          [v30 confidence];
          sub_1A5B23BA0(&v83, v37, v36, &v84, v38);
          v39 = v84;
          v41 = v85;
          v40 = v86;
          v42 = v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v83 = v18;
          v44 = sub_1A5BC3428(v33);
          v46 = v18[2];
          v47 = (v45 & 1) == 0;
          v48 = __OFADD__(v46, v47);
          v49 = v46 + v47;
          if (v48)
          {
            goto LABEL_46;
          }

          v50 = v45;
          if (v18[3] >= v49)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = v44;
              sub_1A5BC3EC4();
              v44 = v56;
            }
          }

          else
          {
            sub_1A5BC39F0(v49, isUniquelyReferenced_nonNull_native);
            v44 = sub_1A5BC3428(v33);
            if ((v50 & 1) != (v51 & 1))
            {
              result = sub_1A5FD4B8C();
              __break(1u);
              return result;
            }
          }

          v23 = &selRef_path;
          v18 = v83;
          if (v50)
          {
            v52 = *(v83 + 56) + 40 * v44;
            *v52 = v39;
            *(v52 + 16) = v41;
            *(v52 + 24) = v40;
            *(v52 + 32) = v42;
          }

          else
          {
            *(v83 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            *(v18[6] + v44) = v33;
            v53 = v18[7] + 40 * v44;
            *v53 = v39;
            *(v53 + 16) = v41;
            *(v53 + 24) = v40;
            *(v53 + 32) = v42;

            v54 = v18[2];
            v48 = __OFADD__(v54, 1);
            v55 = v54 + 1;
            if (v48)
            {
              goto LABEL_47;
            }

            v18[2] = v55;
          }

          v21 = v81;
          a1 = v82;
        }
      }

      else
      {
        v24 = v84;
        v25 = sub_1A5FD348C();

        swift_willThrow();
      }

      ++v22;
    }

    while (v21 != v22);
  }

  v57 = type metadata accessor for HumanHandPoseObservation();
  v58 = *(*(v57 - 8) + 56);
  v59 = v77;
  v58(v77, 1, 1, v57);
  v60 = v78;
  v58(v78, 1, 1, v57);
  v61 = [a1 leftHand];
  v62 = v79;
  v63 = v75;
  if (v61)
  {
    LOWORD(v83) = 112;
    *&v84 = v14;
    *(&v84 + 1) = v15;
    v85 = v16;
    v86 = v17;
    sub_1A5CC9A60(v61, &v83, v79, v75);
    sub_1A5B10168(v59, &qword_1EB1F0DE0);
    v58(v63, 0, 1, v57);
    sub_1A5BC416C(v63, v59);
  }

  v64 = [a1 rightHand];
  if (v64)
  {
    LOWORD(v83) = 112;
    *&v84 = v14;
    *(&v84 + 1) = v15;
    v85 = v16;
    v86 = v17;
    sub_1A5CC9A60(v64, &v83, v62, v63);
    sub_1A5B10168(v60, &qword_1EB1F0DE0);
    v58(v63, 0, 1, v57);
    sub_1A5BC416C(v63, v60);
  }

  v65 = a1;
  v66 = [v65 uuid];
  v67 = v80;
  sub_1A5FD365C();

  [v65 confidence];
  v69 = v68;

  v70 = type metadata accessor for HumanBodyPoseObservation();
  *(v67 + v70[5]) = v69;
  v71 = v67 + v70[6];
  v72 = *(v62 + 16);
  *v71 = *v62;
  *(v71 + 16) = v72;
  *(v71 + 32) = *(v62 + 32);
  *(v71 + 48) = *(v62 + 48);
  *(v67 + v70[7]) = v76;
  *(v67 + v70[8]) = v18;
  sub_1A5BC416C(v59, v67 + v70[9]);
  return sub_1A5BC416C(v60, v67 + v70[10]);
}

uint64_t HumanBodyPoseObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = -8;
  static NormalizedRect.fullImage.getter(v6);
  [a1 timeRange];
  v9 = 0;
  return sub_1A5BC268C(a1, &v7, &v5, &v8, a2);
}

uint64_t sub_1A5BC2F44@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return sub_1A5BC268C(a1, &v8, v7, a4, a5);
}

uint64_t sub_1A5BC2F94()
{
  sub_1A5FD3D5C();
  v0 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  v1 = sub_1A5FD3D2C();

  v2 = sub_1A5FD3D5C();
  v4 = v3;
  if (v2 == sub_1A5FD3D5C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A5FD4B0C();
  }

  return v7 & 1;
}

uint64_t sub_1A5BC3064@<X0>(uint64_t *a1@<X8>)
{
  sub_1A5FD3D5C();
  v2 = sub_1A5FD3D2C();

  *a1 = v2;
  return result;
}

uint64_t sub_1A5BC30AC(uint64_t a1)
{
  v2 = sub_1A5BC40B4(&qword_1EB1F0EE0, type metadata accessor for JointName);
  v3 = sub_1A5BC40B4(&unk_1EB1F4040, type metadata accessor for JointName);
  v4 = sub_1A5BC40B4(&qword_1EB1F3FE0, type metadata accessor for VNRecognizedPointKey);

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A5BC319C()
{
  sub_1A5FD3D5C();
  v0 = sub_1A5FD3D2C();

  v1 = sub_1A5FD3D5C();
  v2 = MEMORY[0x1AC554630](v1);

  return v2;
}

uint64_t sub_1A5BC3200()
{
  sub_1A5FD3D5C();
  v0 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  sub_1A5FD3DBC();
}

uint64_t sub_1A5BC327C()
{
  sub_1A5FD3D5C();
  v0 = sub_1A5FD3D2C();

  sub_1A5FD3D5C();
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  v1 = sub_1A5FD4C6C();

  return v1;
}

uint64_t sub_1A5BC3328(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1A5FD3D5C();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_1A5BC336C(uint64_t a1)
{
  v2 = sub_1A5BC40B4(&qword_1EB1F3FE0, type metadata accessor for VNRecognizedPointKey);
  v3 = sub_1A5BC40B4(&qword_1EB1F0F10, type metadata accessor for VNRecognizedPointKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1A5BC3428(char a1)
{
  sub_1A5FD4C1C();
  HumanBodyPoseObservation.JointName.rawValue.getter();
  sub_1A5FD3DBC();

  v2 = sub_1A5FD4C6C();

  return sub_1A5BC34B4(a1, v2);
}

unint64_t sub_1A5BC34B4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x7261457466656CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6579457466656CLL;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x7261457468676972;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x6579457468676972;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1801676142;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1702063982;
          break;
        case 6:
          v8 = 0x756F68537466656CLL;
          v7 = 0xEC0000007265646CLL;
          break;
        case 7:
          v7 = 0xE900000000000077;
          v8 = 0x6F626C457466656CLL;
          break;
        case 8:
          v7 = 0xE900000000000074;
          v8 = 0x736972577466656CLL;
          break;
        case 9:
          v8 = 0x6F68537468676972;
          v7 = 0xED00007265646C75;
          break;
        case 0xA:
          v8 = 0x626C457468676972;
          v7 = 0xEA0000000000776FLL;
          break;
        case 0xB:
          v7 = 0xEA00000000007473;
          v8 = 0x6972577468676972;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1953460082;
          break;
        case 0xD:
          v8 = 0x7069487466656CLL;
          break;
        case 0xE:
          v7 = 0xE800000000000000;
          v8 = 0x65656E4B7466656CLL;
          break;
        case 0xF:
          v8 = 0x6C6B6E417466656CLL;
          goto LABEL_16;
        case 0x10:
          v7 = 0xE800000000000000;
          v8 = 0x7069487468676972;
          break;
        case 0x11:
          v8 = 0x656E4B7468676972;
LABEL_16:
          v7 = 0xE900000000000065;
          break;
        case 0x12:
          v8 = 0x6B6E417468676972;
          v7 = 0xEA0000000000656CLL;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x7261457466656CLL;
      switch(a1)
      {
        case 1:
          if (v8 == 0x6579457466656CLL)
          {
            goto LABEL_58;
          }

          goto LABEL_59;
        case 2:
          v9 = 0xE800000000000000;
          if (v8 != 0x7261457468676972)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 3:
          v9 = 0xE800000000000000;
          if (v8 != 0x6579457468676972)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1801676142)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 5:
          v9 = 0xE400000000000000;
          if (v8 != 1702063982)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 6:
          v9 = 0xEC0000007265646CLL;
          if (v8 != 0x756F68537466656CLL)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 7:
          v9 = 0xE900000000000077;
          if (v8 != 0x6F626C457466656CLL)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 8:
          v9 = 0xE900000000000074;
          if (v8 != 0x736972577466656CLL)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 9:
          v9 = 0xED00007265646C75;
          if (v8 != 0x6F68537468676972)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 10:
          v10 = 0x626C457468676972;
          v9 = 0xEA0000000000776FLL;
          goto LABEL_57;
        case 11:
          v9 = 0xEA00000000007473;
          if (v8 != 0x6972577468676972)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1953460082)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 13:
          if (v8 != 0x7069487466656CLL)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 14:
          v9 = 0xE800000000000000;
          if (v8 != 0x65656E4B7466656CLL)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 15:
          v11 = 0x6C6B6E417466656CLL;
          goto LABEL_46;
        case 16:
          v9 = 0xE800000000000000;
          if (v8 != 0x7069487468676972)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 17:
          v11 = 0x656E4B7468676972;
LABEL_46:
          v9 = 0xE900000000000065;
          if (v8 != v11)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        case 18:
          v9 = 0xEA0000000000656CLL;
          if (v8 != 0x6B6E417468676972)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        default:
LABEL_57:
          if (v8 != v10)
          {
            goto LABEL_59;
          }

LABEL_58:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_59:
          v12 = sub_1A5FD4B0C();

          if (v12)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_1A5BC39F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0EE8);
  v33 = a2;
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(v5 + 56) + 40 * v23;
      v35 = *v25;
      v26 = *(v25 + 24);
      v34 = *(v25 + 16);
      v27 = *(v25 + 32);
      if ((v33 & 1) == 0)
      {
      }

      sub_1A5FD4C1C();
      sub_1A5FD3DBC();

      result = sub_1A5FD4C6C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v15) >> 6;
        while (++v17 != v29 || (v28 & 1) == 0)
        {
          v30 = v17 == v29;
          if (v17 == v29)
          {
            v17 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v17);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = *(v7 + 56) + 40 * v18;
      *v19 = v35;
      *(v19 + 16) = v34;
      *(v19 + 24) = v26;
      *(v19 + 32) = v27;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1A5BC3EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0EE8);
  v2 = *v0;
  v3 = sub_1A5FD485C();
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
        v18 = *(v2 + 56) + 40 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v22;
        *(v23 + 16) = v20;
        *(v23 + 24) = v19;
        *(v23 + 32) = v21;
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

void *sub_1A5BC4040(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0EF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A5BC40B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BC40FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BC416C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _s6Vision24HumanBodyPoseObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanHandPoseObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0DE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0EF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  if ((sub_1A5FD364C() & 1) == 0)
  {
    return 0;
  }

  v50 = v5;
  v20 = type metadata accessor for HumanBodyPoseObservation();
  if (*(a1 + *(v20 + 20)) != *(a2 + *(v20 + 20)))
  {
    return 0;
  }

  v21 = v20;
  v22 = *(v20 + 24);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 48);
  v25 = (a2 + v22);
  if (v24)
  {
    if (!*(v25 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (v25[3])
    {
      return 0;
    }

    v26 = *v23;
    v27 = v23[1];
    v28 = v23[2];
    v29 = v25[1];
    v30 = v25[2];
    v56 = *v25;
    v57 = v29;
    v58 = v30;
    v53 = v26;
    v54 = v27;
    v55 = v28;
    if ((sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v21[7];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 <= 0xFFF7)
  {
    v52 = v32;
    if (v33 > 0xFFF7)
    {
      return 0;
    }

    v51 = v33;
    sub_1A5B0BB44();
    v49 = v4;
    v34 = sub_1A5FD3D0C();
    v4 = v49;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33 <= 0xFFF7)
  {
    return 0;
  }

  if ((sub_1A5BC0220(*(a1 + v21[8]), *(a2 + v21[8])) & 1) == 0)
  {
    return 0;
  }

  v48 = v21[9];
  v49 = v4;
  v35 = *(v14 + 48);
  sub_1A5BC40FC(v48 + a1, v19);
  v47 = v35;
  sub_1A5BC40FC(v48 + a2, &v19[v35]);
  v36 = v50 + 48;
  v48 = *(v50 + 48);
  v37 = v48(v19, 1, v49);
  v50 = v36;
  if (v37 == 1)
  {
    v38 = v48;
    if (v48(&v19[v47], 1, v49) == 1)
    {
      sub_1A5B10168(v19, &qword_1EB1F0DE0);
      v39 = v49;
      goto LABEL_21;
    }

LABEL_19:
    v40 = v19;
LABEL_27:
    sub_1A5B10168(v40, &qword_1EB1F0EF0);
    return 0;
  }

  sub_1A5BC40FC(v19, v13);
  if (v48(&v19[v47], 1, v49) == 1)
  {
    sub_1A5BC4930(v13, type metadata accessor for HumanHandPoseObservation);
    goto LABEL_19;
  }

  sub_1A5BC57F8(&v19[v47], v7);
  sub_1A5BC40B4(&qword_1EB1EFE50, type metadata accessor for HumanHandPoseObservation);
  LODWORD(v47) = sub_1A5FD3D0C();
  sub_1A5BC4930(v7, type metadata accessor for HumanHandPoseObservation);
  sub_1A5BC4930(v13, type metadata accessor for HumanHandPoseObservation);
  v41 = v19;
  v39 = v49;
  sub_1A5B10168(v41, &qword_1EB1F0DE0);
  v38 = v48;
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v42 = v21[10];
  v43 = *(v14 + 48);
  sub_1A5BC40FC(a1 + v42, v16);
  sub_1A5BC40FC(a2 + v42, &v16[v43]);
  if (v38(v16, 1, v39) != 1)
  {
    sub_1A5BC40FC(v16, v10);
    if (v38(&v16[v43], 1, v39) == 1)
    {
      sub_1A5BC4930(v10, type metadata accessor for HumanHandPoseObservation);
      goto LABEL_26;
    }

    sub_1A5BC57F8(&v16[v43], v7);
    sub_1A5BC40B4(&qword_1EB1EFE50, type metadata accessor for HumanHandPoseObservation);
    v45 = sub_1A5FD3D0C();
    sub_1A5BC4930(v7, type metadata accessor for HumanHandPoseObservation);
    sub_1A5BC4930(v10, type metadata accessor for HumanHandPoseObservation);
    sub_1A5B10168(v16, &qword_1EB1F0DE0);
    return (v45 & 1) != 0;
  }

  if (v38(&v16[v43], 1, v39) != 1)
  {
LABEL_26:
    v40 = v16;
    goto LABEL_27;
  }

  sub_1A5B10168(v16, &qword_1EB1F0DE0);
  return 1;
}

unint64_t sub_1A5BC47D0()
{
  result = qword_1EB21E350[0];
  if (!qword_1EB21E350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21E350);
  }

  return result;
}

unint64_t sub_1A5BC4824()
{
  result = qword_1EB1F0E10;
  if (!qword_1EB1F0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E10);
  }

  return result;
}

unint64_t sub_1A5BC4878()
{
  result = qword_1EB1F0E18;
  if (!qword_1EB1F0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E18);
  }

  return result;
}

uint64_t sub_1A5BC48CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanBodyPoseObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BC4930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5BC4990(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F0E00);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5BC4A20()
{
  result = qword_1EB1F0E40;
  if (!qword_1EB1F0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E40);
  }

  return result;
}

unint64_t sub_1A5BC4A74()
{
  result = qword_1EB1F0E48;
  if (!qword_1EB1F0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E48);
  }

  return result;
}

uint64_t sub_1A5BC4AC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F0DE0);
    sub_1A5BC40B4(a2, type metadata accessor for HumanHandPoseObservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5BC4B64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F4A6C6C61 && a2 == 0xE900000000000073 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E61487466656CLL && a2 == 0xE800000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E61487468676972 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

unint64_t sub_1A5BC4CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0EE8);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 72); ; i += 12)
    {
      v5 = *(i - 40);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;

      result = sub_1A5BC3428(v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v13 = v3[7] + 40 * result;
      *v13 = v6;
      *(v13 + 8) = v7;
      *(v13 + 16) = v9;
      *(v13 + 24) = v8;
      *(v13 + 32) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1A5BC4E28()
{
  result = qword_1EB1F0E60;
  if (!qword_1EB1F0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E60);
  }

  return result;
}

unint64_t sub_1A5BC4E80()
{
  result = qword_1EB1F0E68;
  if (!qword_1EB1F0E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F0E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E68);
  }

  return result;
}

unint64_t sub_1A5BC4EE8()
{
  result = qword_1EB1F0E78;
  if (!qword_1EB1F0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E78);
  }

  return result;
}

uint64_t sub_1A5BC4F3C(void *a1)
{
  a1[1] = sub_1A5BC40B4(&qword_1EB1F0E80, type metadata accessor for HumanBodyPoseObservation);
  a1[2] = sub_1A5BC40B4(&qword_1EB1F0E88, type metadata accessor for HumanBodyPoseObservation);
  a1[3] = sub_1A5BC40B4(&qword_1EB1F0E90, type metadata accessor for HumanBodyPoseObservation);
  result = sub_1A5BC40B4(&qword_1EB1F0DF0, type metadata accessor for HumanBodyPoseObservation);
  a1[4] = result;
  return result;
}

unint64_t sub_1A5BC501C()
{
  result = qword_1EB1F0E98;
  if (!qword_1EB1F0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0E98);
  }

  return result;
}

unint64_t sub_1A5BC5074()
{
  result = qword_1EB1F0EA0;
  if (!qword_1EB1F0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0EA0);
  }

  return result;
}

unint64_t sub_1A5BC50CC()
{
  result = qword_1EB1F0EA8;
  if (!qword_1EB1F0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0EA8);
  }

  return result;
}

unint64_t sub_1A5BC5124()
{
  result = qword_1EB1F0EB0;
  if (!qword_1EB1F0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0EB0);
  }

  return result;
}

uint64_t sub_1A5BC51C0(uint64_t a1)
{
  result = sub_1A5BC40B4(&qword_1EB1F0EB8, type metadata accessor for HumanBodyPoseObservation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5BC5218(uint64_t a1)
{
  result = sub_1A5BC40B4(&qword_1EB1F0DE8, type metadata accessor for HumanBodyPoseObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BC5298()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5BC542C(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange);
    if (v1 <= 0x3F)
    {
      sub_1A5BC5934(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5BC53C8();
        if (v3 <= 0x3F)
        {
          sub_1A5BC542C(319, &qword_1EB1F0EC8, type metadata accessor for HumanHandPoseObservation);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A5BC53C8()
{
  if (!qword_1EB1F0EC0)
  {
    sub_1A5BC501C();
    v0 = sub_1A5FD3C5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F0EC0);
    }
  }
}

void sub_1A5BC542C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5FD456C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HumanBodyPoseObservation.JointName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HumanBodyPoseObservation.JointName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5BC55F4()
{
  result = qword_1EB21EDF0[0];
  if (!qword_1EB21EDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21EDF0);
  }

  return result;
}

unint64_t sub_1A5BC5724()
{
  result = qword_1EB21F080;
  if (!qword_1EB21F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21F080);
  }

  return result;
}

unint64_t sub_1A5BC577C()
{
  result = qword_1EB21F088[0];
  if (!qword_1EB21F088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21F088);
  }

  return result;
}

uint64_t sub_1A5BC57F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanHandPoseObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A5BC5934(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A5BC59C4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  sub_1A5FD3FFC();
  swift_getWitnessTable();
  return sub_1A5FD476C();
}

uint64_t static DetectHumanHeadRectanglesRequest.Revision.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_1A5BC5BB4(*a2, &unk_1F19588F0);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F1958918) < v3;
  return (v7 & 1) != 0 || v6;
}

uint64_t sub_1A5BC5BB4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A5BC5C10(uint64_t a1)
{
  v2 = sub_1A5BC629C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC5C4C(uint64_t a1)
{
  v2 = sub_1A5BC629C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BC5C88(uint64_t a1)
{
  v2 = sub_1A5BC6248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC5CC4(uint64_t a1)
{
  v2 = sub_1A5BC6248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BC5D00(uint64_t a1)
{
  v2 = sub_1A5BC61F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC5D3C(uint64_t a1)
{
  v2 = sub_1A5BC61F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BC5D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BC7BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BC5DBC(uint64_t a1)
{
  v2 = sub_1A5BC61A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC5DF8(uint64_t a1)
{
  v2 = sub_1A5BC61A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectHumanHeadRectanglesRequest.Revision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F18);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F20);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F28);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F30);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BC61A0();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5BC6248();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5BC61F4();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5BC629C();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1A5BC61A0()
{
  result = qword_1EB21F420;
  if (!qword_1EB21F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21F420);
  }

  return result;
}

unint64_t sub_1A5BC61F4()
{
  result = qword_1EB21F428;
  if (!qword_1EB21F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21F428);
  }

  return result;
}

unint64_t sub_1A5BC6248()
{
  result = qword_1EB21F430;
  if (!qword_1EB21F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB21F430);
  }

  return result;
}

unint64_t sub_1A5BC629C()
{
  result = qword_1EB21F438[0];
  if (!qword_1EB21F438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21F438);
  }

  return result;
}

uint64_t DetectHumanHeadRectanglesRequest.Revision.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t DetectHumanHeadRectanglesRequest.Revision.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F38);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F40);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F48);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0F50);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BC61A0();
  v13 = v43;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1A5BC6248();
          v27 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1A5BC61F4();
          v31 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1A5BC629C();
        v29 = v34;
        sub_1A5FD48CC();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_1A5FD471C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
  *v23 = &type metadata for DetectHumanHeadRectanglesRequest.Revision;
  sub_1A5FD48DC();
  sub_1A5FD470C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1A5BC6924(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_1A5BC5BB4(*a2, &unk_1F19588F0);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F1958918) < v3;
  return (v7 & 1) != 0 || v6;
}

uint64_t sub_1A5BC6988(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1A5BC5BB4(*a1, &unk_1F19588F0);
  if (v4)
  {
    return 1;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F1958918) >= v3;
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1A5BC69E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_1A5BC5BB4(*a2, &unk_1F19588F0);
  if (v4)
  {
    return 1;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F1958918) >= v3;
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1A5BC6A48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1A5BC5BB4(*a1, &unk_1F19588F0);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1A5BC5BB4(v2, &unk_1F1958918) < v3;
  return (v7 & 1) != 0 || v6;
}

unint64_t DetectHumanHeadRectanglesRequest.init(revision:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(a2);
  a2[2].n128_u32[1] = 0;
  a2[2].n128_u8[8] = 1;
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a2[3].n128_u64[0] = result;
  a2[2].n128_u8[0] = v3;
  return result;
}

double DetectHumanHeadRectanglesRequest.init(_:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  DWORD1(v9) = 0;
  BYTE8(v9) = 1;
  v4 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v10 = v4;
  if (v3 == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3;
  }

  LOBYTE(v9) = v5;
  *(a2 + 48) = v4;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = *&v9;
  *(a2 + 32) = v9;
  return result;
}

__n128 DetectHumanHeadRectanglesRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DetectHumanHeadRectanglesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5BC6BE0()
{
  sub_1A5BC7E78();
  result = sub_1A5D4EC2C();
  qword_1EB21F418 = result;
  return result;
}

uint64_t static DetectHumanHeadRectanglesRequest.allSupportedRevisions.getter()
{
  if (qword_1EB21F410 != -1)
  {
    swift_once();
  }
}

uint64_t DetectHumanHeadRectanglesRequest.supportsPrecisionRecallThresholdOverride.getter()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v1;
  v16[2] = *(v0 + 32);
  v17 = *(v0 + 48);
  v2 = sub_1A5BC7DD4();
  sub_1A5BD9578(0, &type metadata for DetectHumanHeadRectanglesRequest, v2);
  v4 = v3;
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(v4);

  v6 = sub_1A5FD3BDC();

  *&v16[0] = 0;
  v7 = [ObjCClassFromMetadata defaultFilterThresholdsForOptions:v6 error:v16];

  v8 = *&v16[0];
  if (!v7)
  {
    v13 = *&v16[0];
    v14 = sub_1A5FD348C();

    swift_willThrow();
LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

  type metadata accessor for VNShotflowDetectorFilterThresholdKey();
  sub_1A5B16F58(0, &qword_1EB1F3E80);
  sub_1A5BC86C8(&qword_1EB1F0F60, type metadata accessor for VNShotflowDetectorFilterThresholdKey);
  v9 = sub_1A5FD3C0C();
  v10 = v8;

  if (!*(v9 + 16))
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1A5BC794C(@"VNShotflowDetectorFilterThresholdKey_HumanHead");
  v12 = v11;

  return v12 & 1;
}

uint64_t DetectHumanHeadRectanglesRequest.precisionRecallThresholdOverride.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t static DetectHumanHeadRectanglesRequest.precisionRecallThresholdOverrideSupportingRevisions.getter()
{
  v29 = *MEMORY[0x1E69E9840];
  if (qword_1EB21F410 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1EB21F418 + 16);
  if (v0)
  {
    v1 = (qword_1EB21F418 + 32);
    v23 = MEMORY[0x1E69E7CC0];
    v2 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v4 = *v1++;
      v3 = v4;
      static NormalizedRect.fullImage.getter(v24);
      DWORD1(v25) = 0;
      BYTE8(v25) = 1;
      LOBYTE(v25) = v4;
      v28 = v2;
      v27[0] = v24[0];
      v27[1] = v24[1];
      v27[2] = v25;
      v26 = v2;
      v5 = sub_1A5BC7DD4();
      sub_1A5BD9578(0, &type metadata for DetectHumanHeadRectanglesRequest, v5);
      v7 = v6;
      sub_1A5B16F58(0, &qword_1EB1F0B70);
      if (swift_dynamicCastMetatype())
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_1A5B37FAC(v7);

        v9 = sub_1A5FD3BDC();

        v24[0].n128_u64[0] = 0;
        v10 = [ObjCClassFromMetadata defaultFilterThresholdsForOptions:v9 error:v24];

        v11 = v24[0].n128_u64[0];
        if (!v10)
        {
          v20 = v24[0].n128_u64[0];
          v21 = sub_1A5FD348C();

          swift_willThrow();
          sub_1A5B66F10(v27);
          goto LABEL_5;
        }

        type metadata accessor for VNShotflowDetectorFilterThresholdKey();
        sub_1A5B16F58(0, &qword_1EB1F3E80);
        sub_1A5BC86C8(&qword_1EB1F0F60, type metadata accessor for VNShotflowDetectorFilterThresholdKey);
        v12 = sub_1A5FD3C0C();
        v13 = v11;

        if (*(v12 + 16))
        {
          sub_1A5BC794C(@"VNShotflowDetectorFilterThresholdKey_HumanHead");
          v15 = v14;

          sub_1A5B66F10(v27);
          if (v15)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v17 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A5BC7AE4(0, *(v23 + 16) + 1, 1);
              v17 = v23;
            }

            v19 = *(v17 + 16);
            v18 = *(v17 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_1A5BC7AE4((v18 > 1), v19 + 1, 1);
              v17 = v23;
            }

            *(v17 + 16) = v19 + 1;
            v23 = v17;
            *(v17 + v19 + 32) = v3;
          }

          goto LABEL_5;
        }
      }

      sub_1A5B66F10(v27);
LABEL_5:
      if (!--v0)
      {
        return v23;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t DetectHumanHeadRectanglesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5BC7E78();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectHumanHeadRectanglesRequest, v3);
}

uint64_t DetectHumanHeadRectanglesRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](v3);
  sub_1A5FD4C3C();
  if (v4 != 1)
  {
    sub_1A5FD4C4C();
  }

  return sub_1A5B0ED0C(a1, v5);
}

uint64_t DetectHumanHeadRectanglesRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  DetectHumanHeadRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BC7430(uint64_t a1)
{
  v2 = sub_1A5BC7DD4();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5BC746C(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5BC7E78();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5BC74DC(uint64_t a1)
{
  v2 = sub_1A5B5EB24();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5BC7518()
{
  sub_1A5FD4C1C();
  DetectHumanHeadRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BC755C()
{
  sub_1A5FD4C1C();
  DetectHumanHeadRectanglesRequest.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BC75A8(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EB24();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5BC75F4@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v7);
  DWORD1(v8) = 0;
  BYTE8(v8) = 1;
  v4 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  LOBYTE(v8) = v3;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1A5BC7658(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 9);
  v7 = *(v2 + 40);
  sub_1A5B16F58(0, &qword_1EB1F0B70);
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v9 = v2[1];
    v17 = *v2;
    v18 = v9;
    v19 = *(v2 + 8);
    v20 = v6;
    v21 = v7;
    v22[0] = *(v2 + 41);
    *(v22 + 7) = *(v2 + 6);
    v10 = sub_1A5BC7ECC();
    result = sub_1A5D23E14(a1, a2, &type metadata for DetectHumanHeadRectanglesRequest, v10);
    if (!v3)
    {
      v11 = sub_1A5FD3D5C();
      v13 = v12;
      if (v7)
      {
        v14 = 0;
        v17 = 0uLL;
        *&v18 = 0;
      }

      else
      {
        LODWORD(v17) = v6;
        v14 = MEMORY[0x1E69E6448];
      }

      *(&v18 + 1) = v14;
      v15 = (*(*a1 + 208))(v16);
      sub_1A5B0DE30(&v17, v11, v13);
      return v15(v16, 0);
    }
  }

  return result;
}

uint64_t sub_1A5BC7850@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result - 3737841664) >= 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2030100u >> (8 * result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1A5BC7890(uint64_t a1)
{
  v2 = sub_1A5BC86C8(&qword_1EB1F0F60, type metadata accessor for VNShotflowDetectorFilterThresholdKey);
  v3 = sub_1A5BC86C8(&qword_1EB1F0FC8, type metadata accessor for VNShotflowDetectorFilterThresholdKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1A5BC794C(uint64_t a1)
{
  sub_1A5FD3D5C();
  sub_1A5FD4C1C();
  sub_1A5FD3DBC();
  v2 = sub_1A5FD4C6C();

  return sub_1A5BC79E0(a1, v2);
}

unint64_t sub_1A5BC79E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A5FD3D5C();
      v8 = v7;
      if (v6 == sub_1A5FD3D5C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A5FD4B0C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1A5BC7AE4(char *a1, int64_t a2, char a3)
{
  result = sub_1A5BC7B04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5BC7B04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A5BC7BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x3376444F4E41 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3476444F4E41 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3576444F4E41 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

uint64_t _s6Vision32DetectHumanHeadRectanglesRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 32);
  v7 = *(a2 + 36);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a1 + 16);
  v15.origin = *a1;
  v15.size = v10;
  v11 = *(a2 + 16);
  v14.origin = *a2;
  v14.size = v11;
  if (!static NormalizedRect.== infix(_:_:)(&v15, &v14) || v2 != v6)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v13 = v8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return sub_1A5B0D3C4(v5, v9);
}

unint64_t sub_1A5BC7DD4()
{
  result = qword_1EB1F0F58;
  if (!qword_1EB1F0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F58);
  }

  return result;
}

void type metadata accessor for VNShotflowDetectorFilterThresholdKey()
{
  if (!qword_1EB1F0FA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB1F0FA8);
    }
  }
}

unint64_t sub_1A5BC7E78()
{
  result = qword_1EB1F0F68;
  if (!qword_1EB1F0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F68);
  }

  return result;
}

unint64_t sub_1A5BC7ECC()
{
  result = qword_1EB1F0F70;
  if (!qword_1EB1F0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F70);
  }

  return result;
}

unint64_t sub_1A5BC7F20()
{
  result = qword_1EB1F0F78;
  if (!qword_1EB1F0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F78);
  }

  return result;
}

unint64_t sub_1A5BC7F78(uint64_t a1)
{
  result = sub_1A5B5EB24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BC7FCC()
{
  result = qword_1EB1F0F80;
  if (!qword_1EB1F0F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F80);
  }

  return result;
}

unint64_t sub_1A5BC8024()
{
  result = qword_1EB1F0F88;
  if (!qword_1EB1F0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F88);
  }

  return result;
}

unint64_t sub_1A5BC807C()
{
  result = qword_1EB1F0F90;
  if (!qword_1EB1F0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F90);
  }

  return result;
}

uint64_t sub_1A5BC80FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5BC8138()
{
  result = qword_1EB1F0F98;
  if (!qword_1EB1F0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0F98);
  }

  return result;
}

unint64_t sub_1A5BC81D4(uint64_t a1)
{
  result = sub_1A5BC7E78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BC81FC(uint64_t a1)
{
  result = sub_1A5BC8224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5BC8224()
{
  result = qword_1EB1F0FA0;
  if (!qword_1EB1F0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0FA0);
  }

  return result;
}

unint64_t sub_1A5BC82DC()
{
  result = qword_1EB21FF40[0];
  if (!qword_1EB21FF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB21FF40);
  }

  return result;
}

unint64_t sub_1A5BC840C()
{
  result = qword_1EB220050;
  if (!qword_1EB220050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220050);
  }

  return result;
}

unint64_t sub_1A5BC8464()
{
  result = qword_1EB220058[0];
  if (!qword_1EB220058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB220058);
  }

  return result;
}

unint64_t sub_1A5BC84BC()
{
  result = qword_1EB2200E0;
  if (!qword_1EB2200E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2200E0);
  }

  return result;
}

unint64_t sub_1A5BC8514()
{
  result = qword_1EB2200E8[0];
  if (!qword_1EB2200E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2200E8);
  }

  return result;
}

unint64_t sub_1A5BC856C()
{
  result = qword_1EB220170;
  if (!qword_1EB220170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220170);
  }

  return result;
}

unint64_t sub_1A5BC85C4()
{
  result = qword_1EB220178;
  if (!qword_1EB220178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220178);
  }

  return result;
}

unint64_t sub_1A5BC861C()
{
  result = qword_1EB220200;
  if (!qword_1EB220200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220200);
  }

  return result;
}

unint64_t sub_1A5BC8674()
{
  result = qword_1EB220208[0];
  if (!qword_1EB220208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB220208);
  }

  return result;
}

uint64_t sub_1A5BC86C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5BC8718()
{
  v0 = sub_1A5BC8848(&unk_1F1958C98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0FE8);
  result = swift_arrayDestroy();
  qword_1EB1F9A38 = v0;
  return result;
}

uint64_t sub_1A5BC8774(uint64_t a1, uint64_t a2)
{
  if (qword_1EB1F9A30 != -1)
  {
    v10 = a1;
    v11 = a2;
    swift_once();
    a1 = v10;
    a2 = v11;
  }

  v2 = qword_1EB1F9A38;
  if (*(qword_1EB1F9A38 + 16) && (v3 = a1, v4 = a2, v5 = sub_1A5B0E2A4(a1, a2), a1 = v3, v7 = v6, a2 = v4, (v7 & 1) != 0))
  {
    v8 = *(*(v2 + 56) + 16 * v5);

    return v8;
  }

  else
  {
    MEMORY[0x1AC554600](a1, a2);
    return 20054;
  }
}

unint64_t sub_1A5BC8848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0FE0);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A5B0E2A4(v5, v6);
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

uint64_t sub_1A5BC8970()
{
  v1 = 0x4C6F547468676972;
  if (*v0 != 1)
  {
    v1 = 0x746F426F54706F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69526F547466656CLL;
  }
}

uint64_t sub_1A5BC89DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BCD2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BC8A04(uint64_t a1)
{
  v2 = sub_1A5BC8F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC8A40(uint64_t a1)
{
  v2 = sub_1A5BC8F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BC8A7C(uint64_t a1)
{
  v2 = sub_1A5BC904C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC8AB8(uint64_t a1)
{
  v2 = sub_1A5BC904C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BC8AF4(uint64_t a1)
{
  v2 = sub_1A5BC8FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC8B30(uint64_t a1)
{
  v2 = sub_1A5BC8FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5BC8B6C(uint64_t a1)
{
  v2 = sub_1A5BC8FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BC8BA8(uint64_t a1)
{
  v2 = sub_1A5BC8FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizedTextObservation.Direction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0FF0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0FF8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1000);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1008);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BC8F50();
  sub_1A5FD4CDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A5BC8FF8();
      v9 = v21;
      sub_1A5FD49EC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A5BC8FA4();
      v9 = v24;
      sub_1A5FD49EC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A5BC904C();
    sub_1A5FD49EC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1A5BC8F50()
{
  result = qword_1EB220290;
  if (!qword_1EB220290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220290);
  }

  return result;
}

unint64_t sub_1A5BC8FA4()
{
  result = qword_1EB220298;
  if (!qword_1EB220298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220298);
  }

  return result;
}

unint64_t sub_1A5BC8FF8()
{
  result = qword_1EB2202A0;
  if (!qword_1EB2202A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2202A0);
  }

  return result;
}

unint64_t sub_1A5BC904C()
{
  result = qword_1EB2202A8;
  if (!qword_1EB2202A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2202A8);
  }

  return result;
}

uint64_t RecognizedTextObservation.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t RecognizedTextObservation.Direction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1010);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1018);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1020);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1028);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BC8F50();
  v13 = v43;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1A5BC8FF8();
          v27 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1A5BC8FA4();
          v31 = v34;
          sub_1A5FD48CC();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1A5BC904C();
        v29 = v34;
        sub_1A5FD48CC();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_1A5FD471C();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
  *v23 = &type metadata for RecognizedTextObservation.Direction;
  sub_1A5FD48DC();
  sub_1A5FD470C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

id RecognizedTextObservation.transcript.getter()
{
  if (*(*(v0 + *(type metadata accessor for RecognizedTextObservation() + 64)) + 16))
  {
    return RecognizedText.string.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for RecognizedTextObservation()
{
  result = qword_1EB220840;
  if (!qword_1EB220840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecognizedTextObservation.boundingRegion.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for RecognizedTextObservation();
  sub_1A5BC98FC(v1 + *(v6 + 68), v5);
  v7 = type metadata accessor for ContoursObservation.Contour(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    return sub_1A5BC996C(v5, a1);
  }

  sub_1A5B10168(v5, &qword_1EB1F1030);
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  v9 = v1[3];
  v11 = v1[4];
  v12 = v9;
  return sub_1A5C8BE38(&v14, &v13, &v12, &v11, a1);
}

uint64_t sub_1A5BC98FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BC996C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContoursObservation.Contour(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 RecognizedTextObservation.topLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 RecognizedTextObservation.topRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 RecognizedTextObservation.bottomRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

__n128 RecognizedTextObservation.bottomLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[4];
  *a1 = result;
  return result;
}

uint64_t RecognizedTextObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecognizedTextObservation() + 48);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 RecognizedTextObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecognizedTextObservation() + 56);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t RecognizedTextObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RecognizedTextObservation();
  *a1 = *(v1 + *(result + 60));
  return result;
}

unint64_t RecognizedTextObservation.description.getter()
{
  sub_1A5FD46AC();

  v0 = type metadata accessor for RecognizedTextObservation();
  v1 = sub_1A5C64D80(v0, &protocol witness table for RecognizedTextObservation);
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v2 = sub_1A5BCEB70(&qword_1EB1F1038, type metadata accessor for RecognizedTextObservation);
  v3 = sub_1A5C29408(v0, &off_1F1958EF0, v2);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t RecognizedTextObservation.topCandidates(_:)(uint64_t a1)
{
  if (a1 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1;
  v3 = *(v1 + *(type metadata accessor for RecognizedTextObservation() + 64));
  if (*(v3 + 16) < v2)
  {
    v2 = *(v3 + 16);
  }

  sub_1A5FD4B1C();
  swift_unknownObjectRetain_n();

  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);

  if (v5 != v2)
  {
    swift_unknownObjectRelease();
    sub_1A5BCD19C(v3, v3 + 32, 0, (2 * v2) | 1);
    v8 = v9;
    goto LABEL_9;
  }

  v6 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v6;
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_9:
    swift_unknownObjectRelease();
    return v8;
  }

  return result;
}

void sub_1A5BC9D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_1A5B333A0();
    v5 = a1 + 40;
    v6 = a2 + 40;
    do
    {
      v11 = *(v5 - 8);
      v7 = *(v6 - 8);
      v10 = v7;
      v8 = v11;
      v9 = v7;
      LOBYTE(v7) = sub_1A5FD3D0C();

      if ((v7 & 1) == 0)
      {
        break;
      }

      v5 += 16;
      v6 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t RecognizedTextObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for RecognizedTextObservation();
  sub_1A5BCEB70(&qword_1EB1F1040, type metadata accessor for RecognizedTextObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5BC9EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1A5FD367C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 sub_1A5BC9F3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 56);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 sub_1A5BC9F70@<Q0>(__n128 *a1@<X8>)
{
  result = v1[4];
  *a1 = result;
  return result;
}

uint64_t sub_1A5BC9F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5BCEB70(&qword_1EB1F1038, type metadata accessor for RecognizedTextObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

unint64_t sub_1A5BCA00C()
{
  v1 = *v0;
  v2 = 0x656A624F74786574;
  v3 = 0x6C676E6174636572;
  if (v1 != 6)
  {
    v3 = 0x746176726573626FLL;
  }

  v4 = 0x656C7469547369;
  if (v1 != 4)
  {
    v4 = 0x6E6F69676572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0x6572694474786574;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A5BCA12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5BCE8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5BCA160(uint64_t a1)
{
  v2 = sub_1A5BCD8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5BCA19C(uint64_t a1)
{
  v2 = sub_1A5BCD8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecognizedTextObservation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED20);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v27 - v7;
  v8 = type metadata accessor for ContoursObservation.Contour(0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1048);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5BCD8F8();
  v15 = v38;
  sub_1A5FD4CDC();
  v16 = type metadata accessor for RecognizedTextObservation();
  v41 = *(v15 + *(v16 + 64));
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1050);
  sub_1A5BCDC6C(&qword_1EB1F1058, sub_1A5BCD94C);
  v17 = v39;
  sub_1A5FD4A5C();
  if (v17)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v39 = v8;
  v29 = v10;
  v41 = *v15;
  v40 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF48);
  sub_1A5BCD9A0(&qword_1EB1EFF50, &qword_1EB1EFF58);
  sub_1A5FD4A5C();
  LOBYTE(v41) = *(v15 + 9);
  v40 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1068);
  sub_1A5BCDA3C();
  sub_1A5FD4A5C();
  LOBYTE(v41) = *(v15 + 10);
  v40 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1078);
  sub_1A5BCDAB8();
  sub_1A5FD4A5C();
  LOBYTE(v41) = 4;
  sub_1A5FD4A2C();
  v27 = v14;
  v28 = v11;
  v19 = v36;
  sub_1A5BC98FC(v15 + *(v16 + 68), v36);
  if ((*(v35 + 48))(v19, 1, v39) == 1)
  {
    sub_1A5B10168(v19, &qword_1EB1F1030);
  }

  else
  {
    v20 = v29;
    sub_1A5BC996C(v19, v29);
    v39 = ContoursObservation.Contour.normalizedPoints.getter();
    v41 = v39;
    v40 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1090);
    sub_1A5BCDB90(&qword_1EB1F1098, &qword_1EB1F10A0);
    sub_1A5FD4A5C();
    sub_1A5BCDDF0(v20, type metadata accessor for ContoursObservation.Contour);
  }

  LOBYTE(v41) = 6;
  sub_1A5B289B8();
  v21 = v37;
  v23 = v27;
  v22 = v28;
  sub_1A5FD49EC();
  sub_1A5C15020(v21, v16, &protocol witness table for RecognizedTextObservation);
  v24 = v33;
  LOBYTE(v41) = 7;
  sub_1A5B0A360();
  v25 = v32;
  sub_1A5FD49EC();
  v26 = sub_1A5BCEB70(&qword_1EB1F1038, type metadata accessor for RecognizedTextObservation);
  sub_1A5BBD46C(v25, v16, &off_1F1958EF0, v26);
  (*(v30 + 8))(v25, v31);
  (*(v24 + 8))(v37, v34);
  return (*(v12 + 8))(v23, v22);
}

uint64_t RecognizedTextObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v57 = sub_1A5FD367C();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v52 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v47 - v4;
  v5 = type metadata accessor for RectangleObservation();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = (&v47 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED38);
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F10B0);
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for RecognizedTextObservation();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A5BCD8F8();
  v19 = v62;
  sub_1A5FD4CCC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v62 = v11;
  v50 = v9;
  v20 = v61;
  v21 = v17;
  LOBYTE(v66) = 2;
  v17[9] = sub_1A5FD48FC();
  LOBYTE(v65) = 3;
  sub_1A5BCDC18();
  sub_1A5FD492C();
  v17[10] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF48);
  LOBYTE(v65) = 1;
  sub_1A5BCD9A0(&qword_1EB1EFF80, &qword_1EB1EFF88);
  sub_1A5FD492C();
  v23 = v66;
  if (!v66)
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v49 = v23;
  *v17 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1050);
  LOBYTE(v65) = 0;
  sub_1A5BCDC6C(&qword_1EB1F10C0, sub_1A5BCDCE4);
  sub_1A5FD497C();
  *&v17[v15[16]] = v66;
  LOBYTE(v66) = 4;
  v17[8] = sub_1A5FD494C() & 1;
  LOBYTE(v66) = 6;
  sub_1A5B289B8();
  sub_1A5FD48CC();
  v49 = v14;
  LOBYTE(v65) = 0;
  v48 = sub_1A5B23E38();
  sub_1A5FD497C();
  v24 = v66;
  *(v17 + 1) = v66;
  LOBYTE(v65) = 1;
  sub_1A5FD497C();
  v25 = v66;
  *(v17 + 2) = v66;
  LOBYTE(v65) = 3;
  sub_1A5FD497C();
  v26 = v12;
  v27 = v66;
  *(v17 + 4) = v66;
  LOBYTE(v65) = 2;
  sub_1A5FD497C();
  v28 = v66;
  *(v17 + 3) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1090);
  LOBYTE(v65) = 5;
  sub_1A5BCDB90(&qword_1EB1F10D0, &qword_1EB1F10D8);
  sub_1A5FD492C();
  v29 = v66;
  if (v66)
  {
    v66 = v24;
    v65 = v25;
    v64 = v28;
    v63 = v27;
    RectangleObservation.init(topLeft:topRight:bottomRight:bottomLeft:)(&v66, &v65, &v64, &v63, v58);
    v30 = *(v29 + 16);
    if (v30)
    {
      *&v66 = MEMORY[0x1E69E7CC0];
      sub_1A5BCCD74(0, v30, 0);
      v31 = v66;
      v32 = *(v66 + 16);
      v33 = 32;
      do
      {
        v34 = *(v29 + v33);
        *&v66 = v31;
        v35 = *(v31 + 24);
        v36 = v32 + 1;
        if (v32 >= v35 >> 1)
        {
          v48 = v32 + 1;
          v47 = v32;
          sub_1A5BCCD74((v35 > 1), v32 + 1, 1);
          v36 = v48;
          v32 = v47;
          v31 = v66;
        }

        *(v31 + 16) = v36;
        *(v31 + 16 * v32 + 32) = vcvtq_f64_f32(v34);
        v33 += 8;
        v32 = v36;
        --v30;
      }

      while (v30);
      v48 = v31;
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
    }

    v39 = v15[17];
    v40 = v58;
    v41 = v54;
    sub_1A5BCDD88(v58, v54, type metadata accessor for RectangleObservation);
    v42 = sub_1A5C8B384();
    sub_1A5C8B38C(v48, v41, (v21 + v39), v42);
    sub_1A5BCDDF0(v40, type metadata accessor for RectangleObservation);
    v43 = type metadata accessor for ContoursObservation.Contour(0);
    (*(*(v43 - 8) + 56))(v21 + v39, 0, 1, v43);
  }

  else
  {
    v37 = v15[17];
    v38 = type metadata accessor for ContoursObservation.Contour(0);
    (*(*(v38 - 8) + 56))(v21 + v37, 1, 1, v38);
  }

  LOBYTE(v66) = 7;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  LOBYTE(v66) = 0;
  sub_1A5BCEB70(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  (*(v55 + 32))(v21 + v15[12], v53, v57);
  LOBYTE(v66) = 1;
  sub_1A5FD495C();
  *(v21 + v15[13]) = v44;
  LOBYTE(v65) = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  *(v21 + v15[15]) = v66;
  sub_1A5BBDB04(v67);
  (*(v52 + 8))(v59, v56);
  (*(v60 + 8))(v62, v50);
  (*(v20 + 8))(v49, v26);
  v45 = v21 + v15[14];
  v46 = v67[1];
  *v45 = v67[0];
  *(v45 + 16) = v46;
  *(v45 + 32) = v67[2];
  *(v45 + 48) = v68;
  sub_1A5BCDD88(v21, v51, type metadata accessor for RecognizedTextObservation);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return sub_1A5BCDDF0(v21, type metadata accessor for RecognizedTextObservation);
}

char *sub_1A5BCB7E8@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A5FD367C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = [a1 isTitle];
  v15 = a1;
  [v15 topLeft];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v17, v16));
  *&v18 = v82;
  v71 = v18;
  *&v18 = v83;
  v70 = v18;
  [v15 topRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v20, v19));
  *&v21 = v80;
  v69 = v21;
  *&v21 = v81;
  v68 = v21;
  [v15 bottomRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v23, v22));
  *&v24 = v78;
  v67 = v24;
  *&v24 = v79;
  v66 = v24;
  [v15 bottomLeft];
  v26 = v25;
  v28 = v27;

  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v28, v26));
  *&v29 = v76;
  v65 = v29;
  *&v29 = v77;
  v64 = v29;
  v30 = v15;
  v31 = [v30 uuid];
  sub_1A5FD365C();

  [v30 confidence];
  v33 = v32;

  v34 = [v30 textObjects];
  v35 = MEMORY[0x1E69E7CC0];
  v72 = v14;
  if (!v34)
  {

LABEL_17:
    v48 = type metadata accessor for RecognizedTextObservation();
    v49 = v48[17];
    v50 = type metadata accessor for ContoursObservation.Contour(0);
    (*(*(v50 - 8) + 56))(a4 + v49, 1, 1, v50);
    *&v51 = v71;
    *(&v51 + 1) = v70;
    *&v52 = v69;
    *(&v52 + 1) = v68;
    *&v53 = v67;
    *(&v53 + 1) = v66;
    *(a4 + 16) = v51;
    *(a4 + 32) = v52;
    *&v51 = v65;
    *(&v51 + 1) = v64;
    *(a4 + 48) = v53;
    *(a4 + 64) = v51;
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = v72;
    *(a4 + 9) = 770;
    result = (*(v9 + 32))(a4 + v48[12], v12, v8);
    *(a4 + v48[13]) = v33;
    v54 = a4 + v48[14];
    v55 = *(a3 + 16);
    *v54 = *a3;
    *(v54 + 16) = v55;
    *(v54 + 32) = *(a3 + 32);
    *(v54 + 48) = *(a3 + 48);
    *(a4 + v48[15]) = v13;
    *(a4 + v48[16]) = v35;
    return result;
  }

  v36 = v34;
  v63 = v30;
  v61 = v12;
  v62 = v9;
  sub_1A5B16F58(0, &qword_1EB1F10E0);
  v37 = sub_1A5FD3F4C();

  if (v37 >> 62)
  {
    v38 = sub_1A5FD484C();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {

LABEL_16:
    v9 = v62;
    v12 = v61;
    goto LABEL_17;
  }

  v75 = v35;
  result = sub_1A5BCCD94(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v57 = v13;
    v58 = v8;
    v59 = a3;
    v60 = a4;
    v40 = 0;
    v35 = v75;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1AC554EE0](v40, v37);
      }

      else
      {
        v41 = *(v37 + 8 * v40 + 32);
      }

      v42 = v41;
      sub_1A5B32600([v41 crOutput], &v73);

      v43 = v73;
      v44 = v74;
      v75 = v35;
      v46 = *(v35 + 16);
      v45 = *(v35 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1A5BCCD94((v45 > 1), v46 + 1, 1);
        v35 = v75;
      }

      ++v40;
      *(v35 + 16) = v46 + 1;
      v47 = v35 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
    }

    while (v38 != v40);

    a4 = v60;
    a3 = v59;
    v8 = v58;
    LOWORD(v13) = v57;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *RecognizedTextObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NormalizedRect.fullImage.getter(&v84);
  v8 = a1;
  [v8 timeRange];
  v69 = v81;
  v70 = v80;
  v9 = v82;
  v10 = v83;
  v11 = [v8 isTitle];
  v12 = v8;
  [v12 topLeft];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v14, v13));
  *&v15 = v80;
  v67 = v15;
  *&v15 = *(&v80 + 1);
  v66 = v15;
  [v12 topRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v17, v16));
  *&v18 = v78;
  v65 = v18;
  *&v18 = v79;
  v64 = v18;
  [v12 bottomRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v20, v19));
  *&v21 = v76;
  v63 = v21;
  *&v21 = v77;
  v62 = v21;
  [v12 bottomLeft];
  v23 = v22;
  v25 = v24;

  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v25, v23));
  *&v26 = v74;
  v61 = v26;
  *&v26 = v75;
  v60 = v26;
  v27 = [v12 uuid];
  sub_1A5FD365C();

  [v12 confidence];
  v29 = v28;

  v30 = [v12 textObjects];
  v68 = v11;
  if (!v30)
  {

    v36 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v44 = type metadata accessor for RecognizedTextObservation();
    v45 = v44[17];
    v46 = type metadata accessor for ContoursObservation.Contour(0);
    (*(*(v46 - 8) + 56))(a2 + v45, 1, 1, v46);
    *&v47 = v67;
    *(&v47 + 1) = v66;
    *&v48 = v65;
    *(&v48 + 1) = v64;
    *&v49 = v63;
    *(&v49 + 1) = v62;
    *(a2 + 16) = v47;
    *(a2 + 32) = v48;
    *&v47 = v61;
    *(&v47 + 1) = v60;
    *(a2 + 48) = v49;
    *(a2 + 64) = v47;
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = v68;
    *(a2 + 9) = 770;
    result = (*(v5 + 32))(a2 + v44[12], v7, v4);
    *(a2 + v44[13]) = v29;
    v50 = a2 + v44[14];
    v51 = v69;
    *v50 = v70;
    *(v50 + 16) = v51;
    *(v50 + 32) = v9;
    *(v50 + 40) = v10;
    *(v50 + 48) = 0;
    *(a2 + v44[15]) = -8;
    *(a2 + v44[16]) = v36;
    return result;
  }

  v31 = v30;
  v58 = v10;
  v59 = v9;
  sub_1A5B16F58(0, &qword_1EB1F10E0);
  v32 = sub_1A5FD3F4C();

  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_4;
    }

LABEL_15:

    v36 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v9 = v59;
    v10 = v58;
    goto LABEL_17;
  }

  v33 = sub_1A5FD484C();
  if (!v33)
  {
    goto LABEL_15;
  }

LABEL_4:
  v73 = MEMORY[0x1E69E7CC0];
  result = sub_1A5BCCD94(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v53 = v12;
    v54 = v7;
    v55 = v5;
    v56 = v4;
    v57 = a2;
    v35 = 0;
    v36 = v73;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1AC554EE0](v35, v32);
      }

      else
      {
        v37 = *(v32 + 8 * v35 + 32);
      }

      v38 = v37;
      sub_1A5B32600([v37 crOutput], &v71);

      v39 = v71;
      v40 = v72;
      v73 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1A5BCCD94((v41 > 1), v42 + 1, 1);
        v36 = v73;
      }

      ++v35;
      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
    }

    while (v33 != v35);

    a2 = v57;
    v4 = v56;
    v5 = v55;
    v7 = v54;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1A5BCC230@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, _OWORD *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v71 = a3;
  v72 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1030);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  *&v74 = &v66 - v11;
  v12 = sub_1A5FD370C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  *&v73 = a1;
  v17 = [a1 recognizedLocale];
  v18 = MEMORY[0x1E69E7CC0];
  v69 = v16;
  if (v17)
  {
    v19 = v17;
    sub_1A5FD3D5C();

    sub_1A5FD36DC();
    v20 = sub_1A5BCCFC4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1A5BCCFC4(v21 > 1, v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    v24 = *(v13 + 32);
    v23 = v13 + 32;
    v25 = (*(v23 + 48) + 32) & ~*(v23 + 48);
    v68 = v20;
    v24(v20 + v25 + *(v23 + 40) * v22, v15, v12);
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v26 = v73;
  result = [v73 boundingQuad];
  v28 = v74;
  if (!result)
  {
    goto LABEL_32;
  }

  v29 = result;
  v30 = type metadata accessor for ContoursObservation.Contour(0);
  v31 = *(*(v30 - 8) + 56);
  v31(v28, 1, 1, v30);
  v32 = [v26 polygon];
  if (v32)
  {
    sub_1A5C8B994(v32, v29, v10);
    sub_1A5B10168(v28, &qword_1EB1F1030);
    v31(v10, 0, 1, v30);
    sub_1A5BCD274(v10, v28);
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = [v33 shouldWrapToNextLine];
  }

  else
  {
    v34 = 0;
  }

  v35 = [v26 candidates];
  if (v35)
  {
    v36 = v35;
    *&v67 = v29;
    sub_1A5B16F58(0, &qword_1EB1EF040);
    v37 = sub_1A5FD3F4C();

    if (v37 >> 62)
    {
      v38 = sub_1A5FD484C();
      if (v38)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
LABEL_15:
        *&v79 = v18;
        result = sub_1A5BCCD94(0, v38 & ~(v38 >> 63), 0);
        if ((v38 & 0x8000000000000000) == 0)
        {
          LODWORD(v66) = v34;
          v39 = 0;
          v18 = v79;
          do
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v40 = MEMORY[0x1AC554EE0](v39, v37);
            }

            else
            {
              v40 = *(v37 + 8 * v39 + 32);
            }

            sub_1A5B3260C(v40, &v80);
            v41 = v80;
            v42 = BYTE8(v80);
            *&v79 = v18;
            v44 = *(v18 + 16);
            v43 = *(v18 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1A5BCCD94((v43 > 1), v44 + 1, 1);
              v18 = v79;
            }

            ++v39;
            *(v18 + 16) = v44 + 1;
            v45 = v18 + 16 * v44;
            *(v45 + 32) = v41;
            *(v45 + 40) = v42;
          }

          while (v38 != v39);

          v28 = v74;
          v26 = v73;
          v29 = v67;
          LOBYTE(v34) = v66;
          goto LABEL_27;
        }

        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }
    }

    v28 = v74;
    v26 = v73;
    v29 = v67;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F10E8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1A5FF36F0;
    sub_1A5B3260C(v26, v18 + 32);
  }

LABEL_27:
  v46 = [v26 layoutDirection];
  if (v46 >= 6)
  {
    v47 = 3;
  }

  else
  {
    v47 = 0x20100010003uLL >> (8 * v46);
  }

  [v29 topLeft];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v49, v48));
  v78 = v79;
  NormalizedPoint.verticallyFlipped()();
  v74 = v80;
  [v29 topRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v51, v50));
  v77 = v78;
  NormalizedPoint.verticallyFlipped()();
  v73 = v79;
  [v29 bottomRight];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v53, v52));
  v76 = v77;
  NormalizedPoint.verticallyFlipped()();
  v67 = v78;
  [v29 bottomLeft];
  NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v55, v54));
  v75 = v76;
  NormalizedPoint.verticallyFlipped()();
  v66 = v77;
  v56 = [v26 uuid];
  v57 = type metadata accessor for RecognizedTextObservation();
  v58 = v72;
  sub_1A5FD365C();

  [v26 rawConfidence];
  v60 = v59;

  v61 = v73;
  *(v58 + 16) = v74;
  *(v58 + 32) = v61;
  v62 = v66;
  *(v58 + 48) = v67;
  *(v58 + 64) = v62;
  *v58 = v68;
  *(v58 + 8) = v70 & 1;
  *(v58 + 9) = v34;
  *(v58 + 10) = v47;
  *(v58 + v57[13]) = v60;
  v63 = v58 + v57[14];
  v64 = v71;
  v65 = v71[1];
  *v63 = *v71;
  *(v63 + 16) = v65;
  *(v63 + 32) = v64[2];
  *(v63 + 48) = *(v64 + 48);
  *(v58 + v57[15]) = v69;
  *(v58 + v57[16]) = v18;
  return sub_1A5BCD274(v28, v58 + v57[17]);
}

char *sub_1A5BCC958@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v7 = *a2;
  v8 = [a1 candidates];
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F10E8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A5FF36F0;
    sub_1A5B32600(v5, v15 + 32);
LABEL_17:
    v22 = [v5 isTitle];
    [v5 topLeft];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v24, v23));
    NormalizedPoint.verticallyFlipped()();
    v41 = v43;
    [v5 topRight];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v26, v25));
    NormalizedPoint.verticallyFlipped()();
    [v5 bottomRight];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v28, v27));
    NormalizedPoint.verticallyFlipped()();
    [v5 bottomLeft];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v30, v29));
    NormalizedPoint.verticallyFlipped()();
    v31 = type metadata accessor for RecognizedTextObservation();
    sub_1A5FD366C();
    v32 = sub_1A5B321E4([v5 confidence]);

    v33 = v31[17];
    v34 = type metadata accessor for ContoursObservation.Contour(0);
    result = (*(*(v34 - 8) + 56))(a4 + v33, 1, 1, v34);
    *(a4 + 16) = v41;
    *(a4 + 32) = v42;
    *(a4 + 48) = v42;
    *(a4 + 64) = v42;
    *a4 = v9;
    *(a4 + 8) = v22;
    *(a4 + 9) = 770;
    *(a4 + v31[13]) = v32;
    v35 = a4 + v31[14];
    v36 = *(a3 + 16);
    *v35 = *a3;
    *(v35 + 16) = v36;
    *(v35 + 32) = *(a3 + 32);
    *(v35 + 48) = *(a3 + 48);
    *(a4 + v31[15]) = v7;
    *(a4 + v31[16]) = v15;
    return result;
  }

  v10 = v8;
  v40 = v5;
  sub_1A5B16F58(0, &qword_1EB1EF048);
  v11 = sub_1A5FD3F4C();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:

    v15 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v5 = v40;
    goto LABEL_17;
  }

  v12 = sub_1A5FD484C();
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1A5BCCD94(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    LODWORD(v37) = v7;
    v38 = a3;
    v39 = a4;
    v14 = 0;
    v15 = v9;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1AC554EE0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      sub_1A5B32600(v16, &v43);
      v17 = v43;
      v18 = BYTE8(v43);
      *&v42 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A5BCCD94((v19 > 1), v20 + 1, 1);
      }

      ++v14;
      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
    }

    while (v12 != v14);

    a4 = v39;
    a3 = v38;
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1A5BCCD74(char *a1, int64_t a2, char a3)
{
  result = sub_1A5BCCDB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5BCCD94(char *a1, int64_t a2, char a3)
{
  result = sub_1A5BCCEB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5BCCDB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1A5BCCEB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F10E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1A5BCCFC4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFF30);
  v10 = *(sub_1A5FD370C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A5FD370C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1A5BCD19C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F10E8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A5BCD274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BCD2E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69526F547466656CLL && a2 == 0xEB00000000746867 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C6F547468676972 && a2 == 0xEB00000000746665 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F426F54706F74 && a2 == 0xEB000000006D6F74)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

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

uint64_t _s6Vision25RecognizedTextObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContoursObservation.Contour(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1030);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F1138);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  if ((sub_1A5B73D5C(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v15 = *(a1 + 9);
  v16 = *(a2 + 9);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  result = 0;
  if (v16 != 2 && ((v16 ^ v15) & 1) == 0)
  {
LABEL_10:
    v17 = *(a1 + 10);
    v18 = *(a2 + 10);
    if (v17 == 3)
    {
      if (v18 != 3)
      {
        return 0;
      }
    }

    else if (v17 != v18)
    {
      return 0;
    }

    v39[0] = *(a1 + 16);
    v38[0] = *(a2 + 16);
    if (!static NormalizedPoint.== infix(_:_:)(v39, v38))
    {
      return 0;
    }

    v39[0] = *(a1 + 32);
    v38[0] = *(a2 + 32);
    if (!static NormalizedPoint.== infix(_:_:)(v39, v38))
    {
      return 0;
    }

    v39[0] = *(a1 + 48);
    v38[0] = *(a2 + 48);
    if (!static NormalizedPoint.== infix(_:_:)(v39, v38))
    {
      return 0;
    }

    v39[0] = *(a1 + 64);
    v38[0] = *(a2 + 64);
    if (!static NormalizedPoint.== infix(_:_:)(v39, v38))
    {
      return 0;
    }

    v19 = type metadata accessor for RecognizedTextObservation();
    if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v19[13]) != *(a2 + v19[13]))
    {
      return 0;
    }

    v20 = v19[14];
    v21 = (a1 + v20);
    v22 = *(a1 + v20 + 48);
    v23 = a2 + v20;
    if (v22)
    {
      if (!*(v23 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (*(v23 + 48))
      {
        return 0;
      }

      v24 = *v21;
      v25 = v21[1];
      v26 = v21[2];
      v27 = *(v23 + 16);
      v28 = *(v23 + 32);
      v39[0] = *v23;
      v39[1] = v27;
      v39[2] = v28;
      v38[0] = v24;
      v38[1] = v25;
      v38[2] = v26;
      if ((sub_1A5FD42BC() & 1) == 0)
      {
        return 0;
      }
    }

    v29 = v19[15];
    v30 = *(a1 + v29);
    v31 = *(a2 + v29);
    if (v30 <= 0xFFF7)
    {
      v37[7] = v30;
      if (v31 > 0xFFF7)
      {
        return 0;
      }

      v37[6] = v31;
      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v31 <= 0xFFF7)
    {
      return 0;
    }

    sub_1A5BC9D3C(*(a1 + v19[16]), *(a2 + v19[16]));
    if (v32)
    {
      v33 = v19[17];
      v34 = *(v11 + 48);
      sub_1A5BC98FC(a1 + v33, v13);
      sub_1A5BC98FC(a2 + v33, &v13[v34]);
      v35 = *(v5 + 48);
      if (v35(v13, 1, v4) == 1)
      {
        if (v35(&v13[v34], 1, v4) == 1)
        {
          sub_1A5B10168(v13, &qword_1EB1F1030);
          return 1;
        }

        goto LABEL_36;
      }

      sub_1A5BC98FC(v13, v10);
      if (v35(&v13[v34], 1, v4) == 1)
      {
        sub_1A5BCDDF0(v10, type metadata accessor for ContoursObservation.Contour);
LABEL_36:
        sub_1A5B10168(v13, &qword_1EB1F1138);
        return 0;
      }

      sub_1A5BC996C(&v13[v34], v7);
      sub_1A5BCEB70(&qword_1EB1F1140, type metadata accessor for ContoursObservation.Contour);
      v36 = sub_1A5FD3D0C();
      sub_1A5BCDDF0(v7, type metadata accessor for ContoursObservation.Contour);
      sub_1A5BCDDF0(v10, type metadata accessor for ContoursObservation.Contour);
      sub_1A5B10168(v13, &qword_1EB1F1030);
      if (v36)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1A5BCD8F8()
{
  result = qword_1EB2202B0[0];
  if (!qword_1EB2202B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2202B0);
  }

  return result;
}

unint64_t sub_1A5BCD94C()
{
  result = qword_1EB1F1060;
  if (!qword_1EB1F1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1060);
  }

  return result;
}

uint64_t sub_1A5BCD9A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EFF48);
    sub_1A5BCEB70(a2, MEMORY[0x1E6969720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5BCDA3C()
{
  result = qword_1EB1F1070;
  if (!qword_1EB1F1070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1070);
  }

  return result;
}

unint64_t sub_1A5BCDAB8()
{
  result = qword_1EB1F1080;
  if (!qword_1EB1F1080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1078);
    sub_1A5BCDB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1080);
  }

  return result;
}

unint64_t sub_1A5BCDB3C()
{
  result = qword_1EB1F1088;
  if (!qword_1EB1F1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1088);
  }

  return result;
}

uint64_t sub_1A5BCDB90(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1090);
    sub_1A5BCDD38(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5BCDC18()
{
  result = qword_1EB1F10B8;
  if (!qword_1EB1F10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F10B8);
  }

  return result;
}

uint64_t sub_1A5BCDC6C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F1050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A5BCDCE4()
{
  result = qword_1EB1F10C8;
  if (!qword_1EB1F10C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F10C8);
  }

  return result;
}

uint64_t sub_1A5BCDD38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F10A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5BCDD88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5BCDDF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A5BCDE54()
{
  result = qword_1EB1F10F0;
  if (!qword_1EB1F10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F10F0);
  }

  return result;
}

uint64_t sub_1A5BCDEA8(void *a1)
{
  a1[1] = sub_1A5BCEB70(&qword_1EB1F10F8, type metadata accessor for RecognizedTextObservation);
  a1[2] = sub_1A5BCEB70(&qword_1EB1F1100, type metadata accessor for RecognizedTextObservation);
  a1[3] = sub_1A5BCEB70(&qword_1EB1F1108, type metadata accessor for RecognizedTextObservation);
  result = sub_1A5BCEB70(&qword_1EB1F1040, type metadata accessor for RecognizedTextObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5BCDFC4(uint64_t a1)
{
  result = sub_1A5BCEB70(&qword_1EB1F1038, type metadata accessor for RecognizedTextObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5BCE044()
{
  sub_1A5BCE294(319, &qword_1EB1F1110, MEMORY[0x1E6969720], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A5BCEBB8(319, &qword_1EB1F1118, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A5BCEBB8(319, &qword_1EB1F1120, &type metadata for RecognizedTextObservation.Direction, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5FD367C();
        if (v3 <= 0x3F)
        {
          sub_1A5BCE294(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A5BCEBB8(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A5BCEBB8(319, &qword_1EB1F1128, &type metadata for RecognizedText, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1A5BCE294(319, &qword_1EB1F1130, type metadata accessor for ContoursObservation.Contour, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
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

void sub_1A5BCE294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RecognizedTextObservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecognizedTextObservation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5BCE49C()
{
  result = qword_1EB220C50[0];
  if (!qword_1EB220C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB220C50);
  }

  return result;
}

unint64_t sub_1A5BCE4F4()
{
  result = qword_1EB220E60[0];
  if (!qword_1EB220E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB220E60);
  }

  return result;
}

unint64_t sub_1A5BCE54C()
{
  result = qword_1EB220F70;
  if (!qword_1EB220F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220F70);
  }

  return result;
}

unint64_t sub_1A5BCE5A4()
{
  result = qword_1EB220F78;
  if (!qword_1EB220F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB220F78);
  }

  return result;
}

unint64_t sub_1A5BCE5FC()
{
  result = qword_1EB221000;
  if (!qword_1EB221000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB221000);
  }

  return result;
}

unint64_t sub_1A5BCE654()
{
  result = qword_1EB221008[0];
  if (!qword_1EB221008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB221008);
  }

  return result;
}