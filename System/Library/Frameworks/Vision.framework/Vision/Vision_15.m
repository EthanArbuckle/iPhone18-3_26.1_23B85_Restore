void CoreMLModelContainer.init(model:featureProvider:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = [a1 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_1A5B16F58(0, &qword_1EB1F2F20);
  v5 = sub_1A5FD3C0C();

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(v5 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v5 + 56) + 8 * v12);

    v17 = v16;
    if ([v17 type] == 4)
    {
      v18 = [v17 imageConstraint];
      if (v18)
      {
        v19 = v18;

        v20 = [v17 imageConstraint];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 pixelsWide];
          v23 = [v21 pixelsHigh];
          v24 = [v21 pixelFormatType];

          *a3 = v14;
          *(a3 + 8) = v15;
          *(a3 + 16) = v22;
          *(a3 + 24) = v23;
          *(a3 + 32) = v24;
          *(a3 + 40) = a2;
          *(a3 + 48) = a1;
        }

        else
        {

LABEL_15:

          sub_1A5B16774();
          swift_allocError();
          *v25 = 0xD00000000000003BLL;
          *(v25 + 8) = 0x80000001A6057A80;
          *(v25 + 16) = 0;
          *(v25 + 20) = 5;
          swift_willThrow();

          swift_unknownObjectRelease();
        }

        return;
      }
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      goto LABEL_15;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t CoreMLModelContainer.inputImageFeatureName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreMLModelContainer.inputImageFeatureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

size_t sub_1A5C5482C()
{
  v16 = sub_1A5FD3B5C();
  v1 = *(v16 - 8);
  *&v2 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + 48) configuration];
  v6 = [v5 computeUnits];

  v7 = objc_opt_self();
  v8 = [v7 computeDevicesOfTypes_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F0140);
  v9 = sub_1A5FD3F4C();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1A5FD484C();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1A5B53F20(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v17;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1AC554EE0](v12, v9);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_1A5FD3B4C();
      v17 = v13;
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A5B53F20(v14 > 1, v15 + 1, 1);
        v13 = v17;
      }

      ++v12;
      *(v13 + 16) = v15 + 1;
      (*(v1 + 32))(v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v15, v4, v16);
    }

    while (v10 != v12);

    return v13;
  }

  __break(1u);
  return result;
}

void CoreMLModelContainer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[3];
  v6 = v2[5];
  v5 = v2[6];
  MEMORY[0x1AC555420](v2[2]);
  MEMORY[0x1AC555420](v4);
  sub_1A5FD4C4C();
  sub_1A5FD3DBC();
  if (v6)
  {
    v7 = [v6 featureNames];
    v8 = sub_1A5FD421C();

    sub_1A5FD4C3C();
    sub_1A5C560B4(a1, v8);
  }

  else
  {
    sub_1A5FD4C3C();
  }

  v9 = [v5 configuration];
  sub_1A5FD44AC();
}

uint64_t CoreMLModelContainer.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1A5FD4C1C();
  CoreMLModelContainer.hash(into:)(v6);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C54C2C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1A5FD4C1C();
  CoreMLModelContainer.hash(into:)(v6);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C54C94()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1A5FD4C1C();
  CoreMLModelContainer.hash(into:)(v6);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C54D04(uint64_t a1)
{
  v2 = sub_1A5C56574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C54D40(uint64_t a1)
{
  v2 = sub_1A5C56574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C54D7C(uint64_t a1)
{
  v2 = sub_1A5C565C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C54DB8(uint64_t a1)
{
  v2 = sub_1A5C565C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreMLRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2F28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2F30);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C56574();
  sub_1A5FD4CDC();
  sub_1A5C565C8();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t CoreMLRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t CoreMLRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2F38);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F2F40);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C56574();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C565C8();
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
      *v13 = &type metadata for CoreMLRequest.Revision;
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

uint64_t sub_1A5C55344(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2F28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2F30);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C56574();
  sub_1A5FD4CDC();
  sub_1A5C565C8();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t CoreMLRequest.init(model:_:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v9 = a1[5];
  v10 = a1[6];
  v11 = *a2;
  BYTE8(v18) = 2;
  static NormalizedRect.fullImage.getter(v19);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v20 = result;
  if (v11 == 1 && (sub_1A5C567AC(), result = sub_1A5D4E900(), (v14 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    *&v15 = v4;
    *(&v15 + 1) = v5;
    *&v16 = v6;
    *(&v16 + 1) = v7;
    LODWORD(v17) = v8;
    *(&v17 + 1) = v9;
    *&v18 = v10;
    v13 = v19[1];
    *(a3 + 64) = v19[0];
    *(a3 + 80) = v13;
    *(a3 + 96) = v20;
    *a3 = v15;
    *(a3 + 16) = v16;
    *(a3 + 32) = v17;
    *(a3 + 48) = v18;
  }

  return result;
}

uint64_t CoreMLRequest.modelContainer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  swift_unknownObjectRetain();
  v6 = v5;
}

void *CoreMLRequest.supportedIdentifiers.getter()
{
  v1 = [*(v0 + 48) modelDescription];
  v2 = [v1 classLabels];

  if (v2)
  {
    v3 = sub_1A5FD3F4C();

    v4 = *(v3 + 16);
    if (v4)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_1A5B76AEC(0, v4, 0);
      v2 = v15;
      v5 = v3 + 32;
      do
      {
        sub_1A5B101D8(v5, v14);
        sub_1A5B101D8(v14, v13);
        v6 = sub_1A5FD3D7C();
        v8 = v7;
        __swift_destroy_boxed_opaque_existential_1(v14);
        v15 = v2;
        v10 = v2[2];
        v9 = v2[3];
        if (v10 >= v9 >> 1)
        {
          sub_1A5B76AEC((v9 > 1), v10 + 1, 1);
          v2 = v15;
        }

        v2[2] = v10 + 1;
        v11 = &v2[2 * v10];
        v11[4] = v6;
        v11[5] = v8;
        v5 += 32;
        --v4;
      }

      while (v4);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

__n128 CoreMLRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 CoreMLRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  return result;
}

unint64_t CoreMLRequest.supportedComputeStageDevices.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  *(inited + 32) = 0;
  *(inited + 40) = sub_1A5C5482C();
  v1 = sub_1A5B54118(inited);
  swift_setDeallocating();
  sub_1A5B5420C(inited + 32);
  return v1;
}

uint64_t sub_1A5C55910()
{
  sub_1A5C567AC();
  result = sub_1A5D4EB30();
  qword_1EB245088 = result;
  return result;
}

uint64_t CoreMLRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C567AC();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for CoreMLRequest, v3);
}

uint64_t sub_1A5C559C8()
{
  sub_1A5C567AC();
  result = sub_1A5D4EC2C();
  qword_1EB245098 = result;
  return result;
}

uint64_t CoreMLRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 96);
  CoreMLModelContainer.hash(into:)(a1);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t CoreMLRequest.hashValue.getter()
{
  v1 = *(v0 + 96);
  sub_1A5FD4C1C();
  CoreMLModelContainer.hash(into:)(v3);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

unint64_t sub_1A5C55BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A5FF36F0;
  *(inited + 32) = 0;
  *(inited + 40) = sub_1A5C5482C();
  v1 = sub_1A5B54118(inited);
  swift_setDeallocating();
  sub_1A5B5420C(inited + 32);
  return v1;
}

uint64_t sub_1A5C55CAC(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C567AC();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C55D0C(uint64_t a1)
{
  v2 = sub_1A5B5EE84();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C55D50()
{
  v1 = *(v0 + 96);
  sub_1A5FD4C1C();
  CoreMLModelContainer.hash(into:)(v3);
  sub_1A5B22AB4();
  sub_1A5FD3CBC();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C55E50(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EE84();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C55E9C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1A5C55EFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1A5FD4C1C();

    sub_1A5FD3DBC();
    v16 = sub_1A5FD4C6C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1A5FD4B0C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5C560B4(uint64_t a1, uint64_t a2)
{
  sub_1A5FD4C6C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC555420](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1A5FD4C1C();

        sub_1A5FD3DBC();
        v11 = sub_1A5FD4C6C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

void _s6Vision20CoreMLModelContainerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    v4 = *(a2 + 40);
    v5 = *(a2 + 48);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) modelDescription];
    v8 = [v5 modelDescription];
    sub_1A5B16F58(0, &qword_1EB1F3030);
    LOBYTE(v5) = sub_1A5FD449C();

    if ((v5 & 1) != 0 && v6 && v4)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v6 featureNames];
      v10 = sub_1A5FD421C();

      v11 = [v4 featureNames];
      v12 = sub_1A5FD421C();

      LOBYTE(v11) = sub_1A5C55EFC(v10, v12);

      if (v11)
      {
        v13 = [v6 featureNames];
        v14 = sub_1A5FD421C();

        v15 = 0;
        v16 = v14 + 56;
        v17 = 1 << *(v14 + 32);
        v18 = -1;
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        v19 = v18 & *(v14 + 56);
        v20 = (v17 + 63) >> 6;
        while (v19)
        {
LABEL_23:
          v19 &= v19 - 1;

          v22 = sub_1A5FD3D2C();
          v23 = [v6 featureValueForName_];

          v24 = sub_1A5FD3D2C();

          v25 = [v4 featureValueForName_];

          if (v23)
          {
            if (!v25)
            {

LABEL_32:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              return;
            }

            sub_1A5B16F58(0, &qword_1EB1F3038);
            v26 = sub_1A5FD449C();

            if ((v26 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else if (v25)
          {

            goto LABEL_32;
          }
        }

        while (1)
        {
          v21 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v21 >= v20)
          {

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return;
          }

          v19 = *(v16 + 8 * v21);
          ++v15;
          if (v19)
          {
            v15 = v21;
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }
}

unint64_t sub_1A5C56574()
{
  result = qword_1EB2450A0;
  if (!qword_1EB2450A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2450A0);
  }

  return result;
}

unint64_t sub_1A5C565C8()
{
  result = qword_1EB2450A8[0];
  if (!qword_1EB2450A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2450A8);
  }

  return result;
}

uint64_t _s6Vision13CoreMLRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v21.origin = *(a1 + 64);
  v21.size = *(a1 + 80);
  v7 = *(a1 + 96);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v19 = *(a2 + 80);
  v20 = *(a2 + 64);
  v14 = *(a2 + 96);
  v26.origin.x = *a1;
  v26.origin.y = v2;
  v26.size = *(a1 + 16);
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size = *(a2 + 16);
  v23 = v10;
  v24 = v11;
  v25 = v12;
  swift_unknownObjectRetain();
  v15 = v12;

  swift_unknownObjectRetain();
  v16 = v5;

  _s6Vision20CoreMLModelContainerV2eeoiySbAC_ACtFZ_0(&v26, &v22);
  LOBYTE(v2) = v17;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if ((LOBYTE(v2) & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v26.origin.x) = v6;
  LOBYTE(v22.origin.x) = v13;
  if ((static ImageCropAndScaleAction.== infix(_:_:)(&v26, &v22) & 1) == 0)
  {
    return 0;
  }

  v26 = v21;
  v22.origin = v20;
  v22.size = v19;
  if (!static NormalizedRect.== infix(_:_:)(&v26, &v22))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v7, v14);
}

unint64_t sub_1A5C567AC()
{
  result = qword_1EB1F2F50;
  if (!qword_1EB1F2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2F50);
  }

  return result;
}

unint64_t sub_1A5C56804()
{
  result = qword_1EB1F2F68;
  if (!qword_1EB1F2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2F68);
  }

  return result;
}

unint64_t sub_1A5C5685C()
{
  result = qword_1EB1F2F70;
  if (!qword_1EB1F2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2F70);
  }

  return result;
}

unint64_t sub_1A5C568B0()
{
  result = qword_1EB1F2F78;
  if (!qword_1EB1F2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2F78);
  }

  return result;
}

unint64_t sub_1A5C56908(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B67258();
  result = sub_1A5C56938();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C56938()
{
  result = qword_1EB1F2F90;
  if (!qword_1EB1F2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2F90);
  }

  return result;
}

unint64_t sub_1A5C56994()
{
  result = qword_1EB1F2FA0;
  if (!qword_1EB1F2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2FA0);
  }

  return result;
}

unint64_t sub_1A5C569E8(uint64_t a1)
{
  result = sub_1A5B5EE84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C56A10(uint64_t a1)
{
  result = sub_1A5C56A38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C56A38()
{
  result = qword_1EB1F2FA8;
  if (!qword_1EB1F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2FA8);
  }

  return result;
}

uint64_t sub_1A5C56A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A5C56AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
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

uint64_t getEnumTagSinglePayload for CoreMLModelContainer.InputImage(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CoreMLModelContainer.InputImage(uint64_t result, int a2, int a3)
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

unint64_t sub_1A5C56BE4()
{
  result = qword_1EB245AB0[0];
  if (!qword_1EB245AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB245AB0);
  }

  return result;
}

unint64_t sub_1A5C56C3C()
{
  result = qword_1EB245BC0;
  if (!qword_1EB245BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB245BC0);
  }

  return result;
}

unint64_t sub_1A5C56C94()
{
  result = qword_1EB245BC8[0];
  if (!qword_1EB245BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB245BC8);
  }

  return result;
}

unint64_t sub_1A5C56CEC()
{
  result = qword_1EB245C50;
  if (!qword_1EB245C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB245C50);
  }

  return result;
}

unint64_t sub_1A5C56D44()
{
  result = qword_1EB245C58[0];
  if (!qword_1EB245C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB245C58);
  }

  return result;
}

uint64_t ImagePrint.data.getter()
{
  v1 = *v0;
  sub_1A5B06670(*v0, *(v0 + 8));
  return v1;
}

uint64_t ImagePrint.init(data:descriptor:elementType:elementCount:confidence:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, __int16 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v10 = result;
  v12 = *a3;
  v13 = *a4;
  if ((a6 & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v17 = *(result + 16);
    v16 = *(result + 24);
    v15 = v16 - v17;
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(a2);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_19;
  }

  v15 = HIDWORD(result) - result;
LABEL_12:
  result = sub_1A5C0F7EC();
  if (result)
  {
    if (v15 != 0x8000000000000000 || result != -1)
    {
      a5 = v15 / result;
LABEL_16:
      *a7 = v10;
      *(a7 + 8) = a2;
      *(a7 + 16) = a5;
      *(a7 + 24) = v13;
      *(a7 + 28) = a8;
      *(a7 + 32) = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

float ImagePrint.distance(to:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 7);
  v5 = *(a1 + 16);
  v6 = *(v1 + 2);
  v7 = *(v1 + 24);
  v8 = *(v1 + 7);
  v9 = *(v1 + 16);
  v16 = *v1;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v21 = 0;
  sub_1A5BB157C(&v11, &v21, &type metadata for ImagePrint, &off_1F1962250);
  return result;
}

uint64_t ImagePrint.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A6057AC0);
  v0 = sub_1A5FD358C();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](0xD000000000000010, 0x80000001A6052B80);
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0x6E656D656C65202CLL, 0xEF203A6570795474);
  sub_1A5FD481C();
  MEMORY[0x1AC554600](0x6469666E6F632029, 0xEE00203A65636E65);
  sub_1A5FD420C();
  return 0;
}

void sub_1A5C57118(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a1;
  v6 = [v5 descriptorData];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = sub_1A5FD35DC();
  v10 = v9;

  sub_1A5C103FC([v5 elementType], &v15);
  v11 = v15;
  if (v15 != 3)
  {
    v12 = [v5 elementCount];

    if ((v12 & 0x8000000000000000) == 0)
    {
      [v5 confidence];
      v14 = v13;

      *a3 = v8;
      *(a3 + 8) = v10;
      *(a3 + 16) = v12;
      *(a3 + 24) = v11;
      *(a3 + 28) = v14;
      *(a3 + 32) = v4;
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A5C57214()
{
  v1 = *v0;
  v2 = 1635017060;
  v3 = 0x54746E656D656C65;
  v4 = 0x6E656469666E6F63;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x43746E656D656C65;
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

uint64_t sub_1A5C572C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C57E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C572E8(uint64_t a1)
{
  v2 = sub_1A5C57C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C57324(uint64_t a1)
{
  v2 = sub_1A5C57C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImagePrint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3040);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v16 = *(v1 + 16);
  v9 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B06670(v7, v8);
  sub_1A5C57C00();
  sub_1A5FD4CDC();
  v19 = v7;
  v20 = v8;
  v18 = 0;
  sub_1A5B0A6B8();
  v10 = v17;
  sub_1A5FD4A5C();
  if (v10)
  {
    sub_1A5B066DC(v19, v20);
  }

  else
  {
    v11 = v14;
    v12 = v15;
    sub_1A5B066DC(v19, v20);
    LOBYTE(v19) = 1;
    sub_1A5FD4A4C();
    LOBYTE(v19) = v12;
    v18 = 2;
    sub_1A5B0A70C();
    sub_1A5FD4A5C();
    LOBYTE(v19) = 3;
    sub_1A5FD4A3C();
    LOWORD(v19) = v11;
    v18 = 4;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ImagePrint.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1A5FD35EC();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0A808();
  sub_1A5FD3CBC();
  sub_1A5FD4C4C();
  if (v2 >= 0xFFF8)
  {
    return sub_1A5FD4C3C();
  }

  sub_1A5FD4C3C();
  sub_1A5B0A85C();
  return sub_1A5FD3CBC();
}

uint64_t ImagePrint.hashValue.getter()
{
  sub_1A5FD4C1C();
  ImagePrint.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t ImagePrint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3048);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C57C00();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_1A5B0A8B0();
  sub_1A5FD497C();
  v10 = v19;
  v9 = v20;
  LOBYTE(v19) = 1;
  v17 = sub_1A5FD496C();
  v18 = 2;
  sub_1A5B0A904();
  sub_1A5FD497C();
  v16 = v19;
  LOBYTE(v19) = 3;
  sub_1A5FD495C();
  v13 = v12;
  v18 = 4;
  sub_1A5B0A454();
  sub_1A5FD492C();
  (*(v6 + 8))(v8, v5);
  v14 = v19;
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v17;
  *(a2 + 24) = v16;
  *(a2 + 28) = v13;
  *(a2 + 32) = v14;
  sub_1A5B06670(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1A5B066DC(v10, v9);
}

uint64_t sub_1A5C57A18()
{
  sub_1A5FD4C1C();
  ImagePrint.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C57A88()
{
  sub_1A5FD4C1C();
  ImagePrint.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t _s6Vision10ImagePrintV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 28);
  v9 = *(a2 + 32);
  v10 = sub_1A5B09C58(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    v14 = v3;
    v13 = v7;
    v12 = static ElementType.== infix(_:_:)(&v14, &v13);
    result = 0;
    if (v12 && v4 == v8)
    {
      if (v5 <= 0xFFF7)
      {
        if (v9 > 0xFFF7)
        {
          return 0;
        }

        sub_1A5B0BB44();
        if ((sub_1A5FD3D0C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9 <= 0xFFF7)
      {
        return 0;
      }

      return 1;
    }
  }

  return result;
}

unint64_t sub_1A5C57C00()
{
  result = qword_1EB245CE0[0];
  if (!qword_1EB245CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB245CE0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A5C57C6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 3 >= 0x3F7 && *(a1 + 34))
  {
    return (*a1 + 8120);
  }

  v3 = (*(a1 + 32) >> 3) | (32 * *(a1 + 33));
  v4 = v3 ^ 0x1FF8;
  v5 = 8190 - v3;
  if (v4 >> 3 >= 0x3F7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A5C57CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 3 > 0x3F6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 8120;
    *(result + 8) = 0;
    if (a3 >> 3 >= 0x3F7)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >> 3 >= 0x3F7)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = __PAIR16__((8 * ~a2) >> 24, 8 * ~a2);
    }
  }

  return result;
}

unint64_t sub_1A5C57D5C()
{
  result = qword_1EB246070[0];
  if (!qword_1EB246070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB246070);
  }

  return result;
}

unint64_t sub_1A5C57DB4()
{
  result = qword_1EB246180;
  if (!qword_1EB246180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB246180);
  }

  return result;
}

unint64_t sub_1A5C57E0C()
{
  result = qword_1EB246188[0];
  if (!qword_1EB246188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB246188);
  }

  return result;
}

uint64_t sub_1A5C57E60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43746E656D656C65 && a2 == 0xEC000000746E756FLL || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E656D656C65 && a2 == 0xEB00000000657079 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6052B00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C58038(uint64_t a1)
{
  v2 = sub_1A5C58300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C58074(uint64_t a1)
{
  v2 = sub_1A5C58300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C580B0(uint64_t a1)
{
  v2 = sub_1A5C58354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C580EC(uint64_t a1)
{
  v2 = sub_1A5C58354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlignFaceRectanglesRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3050);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3058);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C58300();
  sub_1A5FD4CDC();
  sub_1A5C58354();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C58300()
{
  result = qword_1EB246210;
  if (!qword_1EB246210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB246210);
  }

  return result;
}

unint64_t sub_1A5C58354()
{
  result = qword_1EB246218[0];
  if (!qword_1EB246218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB246218);
  }

  return result;
}

uint64_t AlignFaceRectanglesRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t AlignFaceRectanglesRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3060);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3068);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C58300();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C58354();
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
      *v13 = &type metadata for AlignFaceRectanglesRequest.Revision;
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

uint64_t sub_1A5C58720(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3050);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3058);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C58300();
  sub_1A5FD4CDC();
  sub_1A5C58354();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t AlignFaceRectanglesRequest.init(faceObservations:revision:)@<X0>(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  static NormalizedRect.fullImage.getter(a2);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  a2[2].n128_u64[0] = a1;
  a2[2].n128_u64[1] = result;
  return result;
}

__n128 AlignFaceRectanglesRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 AlignFaceRectanglesRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t AlignFaceRectanglesRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C58EC8();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for AlignFaceRectanglesRequest, v3);
}

uint64_t AlignFaceRectanglesRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v9;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  if (v8)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v8 + 16));
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v12 = *(v4 + 72);
      do
      {
        sub_1A5B0F60C(v11, v6);
        sub_1A5B102F8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
        sub_1A5FD3CBC();
        sub_1A5B0F670(v6);
        v11 += v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  return sub_1A5B0ED0C(a1, v7);
}

uint64_t AlignFaceRectanglesRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v5[14] = v2;
  sub_1A5FD4C1C();
  AlignFaceRectanglesRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C58BCC(uint64_t a1)
{
  v2 = sub_1A5C5936C();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C58C08(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C58EC8();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C58C68(uint64_t a1)
{
  v2 = sub_1A5B5E658();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5C58CA4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v5[14] = v2;
  sub_1A5FD4C1C();
  AlignFaceRectanglesRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C58CFC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  *&v5[9] = *v0;
  *&v5[11] = v3;
  v5[13] = v1;
  v5[14] = v2;
  sub_1A5FD4C1C();
  AlignFaceRectanglesRequest.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C58D78(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E658();

  return sub_1A5D4E6C8(a1, a2);
}

double sub_1A5C58DC4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s6Vision26AlignFaceRectanglesRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  v6 = *(a1 + 16);
  v11.origin = *a1;
  v11.size = v6;
  v7 = *(a2 + 16);
  v10.origin = *a2;
  v10.size = v7;
  if (!static NormalizedRect.== infix(_:_:)(&v11, &v10))
  {
    return 0;
  }

  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = sub_1A5B0E074(v3, v5);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_5:

  return sub_1A5B0D3C4(v2, v4);
}

unint64_t sub_1A5C58EC8()
{
  result = qword_1EB1F3070;
  if (!qword_1EB1F3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3070);
  }

  return result;
}

unint64_t sub_1A5C58F1C()
{
  result = qword_1EB1F3078;
  if (!qword_1EB1F3078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3078);
  }

  return result;
}

unint64_t sub_1A5C58F74(uint64_t a1)
{
  result = sub_1A5B5E658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C58F9C(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B66928();
  result = sub_1A5C58FCC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C58FCC()
{
  result = qword_1EB1F3080;
  if (!qword_1EB1F3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3080);
  }

  return result;
}

unint64_t sub_1A5C59024()
{
  result = qword_1EB1F3088;
  if (!qword_1EB1F3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3088);
  }

  return result;
}

unint64_t sub_1A5C5907C()
{
  result = qword_1EB1F3090;
  if (!qword_1EB1F3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3090);
  }

  return result;
}

unint64_t sub_1A5C590D0(uint64_t a1)
{
  result = sub_1A5C58EC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C590F8(uint64_t a1)
{
  result = sub_1A5C59120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C59120()
{
  result = qword_1EB1F3098;
  if (!qword_1EB1F3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3098);
  }

  return result;
}

unint64_t sub_1A5C591B8()
{
  result = qword_1EB246AA0[0];
  if (!qword_1EB246AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB246AA0);
  }

  return result;
}

unint64_t sub_1A5C59210()
{
  result = qword_1EB246BB0;
  if (!qword_1EB246BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB246BB0);
  }

  return result;
}

unint64_t sub_1A5C59268()
{
  result = qword_1EB246BB8[0];
  if (!qword_1EB246BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB246BB8);
  }

  return result;
}

unint64_t sub_1A5C592C0()
{
  result = qword_1EB246C40;
  if (!qword_1EB246C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB246C40);
  }

  return result;
}

unint64_t sub_1A5C59318()
{
  result = qword_1EB246C48[0];
  if (!qword_1EB246C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB246C48);
  }

  return result;
}

unint64_t sub_1A5C5936C()
{
  result = qword_1EB1F30A0;
  if (!qword_1EB1F30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F30A0);
  }

  return result;
}

uint64_t sub_1A5C593C8(uint64_t a1)
{
  v2 = sub_1A5FD3D5C();
  v5[3] = MEMORY[0x1E69E6810];
  v5[0] = a1;
  return sub_1A5B0DE30(v5, v2, v3);
}

id sub_1A5C59428(uint64_t a1)
{
  v54 = sub_1A5FD3B5C();
  v3 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3010);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  if (a1)
  {
    v52 = v8;
    v45 = v1;
    result = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
    v12 = 0;
    v48 = v3;
    v49 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v46 = v10;
    v47 = v3 + 16;
    v53 = (v3 + 32);
    v50 = (v3 + 8);
    v51 = result;
    if ((v17 & v13) != 0)
    {
      while (1)
      {
        v20 = v12;
LABEL_13:
        v24 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v25 = v24 | (v20 << 6);
        v26 = v48;
        v27 = *(*(v49 + 48) + v25);
        v28 = v54;
        (*(v48 + 16))(v5, *(v49 + 56) + *(v48 + 72) * v25, v54);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F1670);
        v30 = *(v29 + 48);
        v31 = v52;
        *v52 = v27;
        v32 = v28;
        v23 = v31;
        (*(v26 + 32))(&v31[v30], v5, v32);
        (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
        v22 = v20;
        v10 = v46;
LABEL_14:
        sub_1A5B10234(v23, v10);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F1670);
        if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
        {
          break;
        }

        v34 = *v10;
        v35 = v54;
        (*v53)(v5, &v10[*(v33 + 48)], v54);
        LOBYTE(v55) = v34;
        v36 = sub_1A5B3BEEC();
        v37 = sub_1A5FD3B2C();
        *&v55 = v36;
        type metadata accessor for VNComputeStage();
        swift_unknownObjectRetain();
        v38 = v36;
        [v51 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        result = (*v50)(v5, v35);
        v12 = v22;
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      v40 = sub_1A5FD3D5C();
      v42 = v41;
      v56 = sub_1A5B16F58(0, &qword_1EB1EE5B8);
      *&v55 = v51;
      return sub_1A5B0DE30(&v55, v40, v42);
    }

    else
    {
LABEL_6:
      if (v19 <= v12 + 1)
      {
        v21 = v12 + 1;
      }

      else
      {
        v21 = v19;
      }

      v22 = v21 - 1;
      v23 = v52;
      while (1)
      {
        v20 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v20 >= v19)
        {
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F1670);
          (*(*(v39 - 8) + 56))(v23, 1, 1, v39);
          v18 = 0;
          goto LABEL_14;
        }

        v18 = *(v14 + 8 * v20);
        ++v12;
        if (v18)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v43 = sub_1A5FD3D5C();
    sub_1A5B0E4A0(v43, v44, &v55);

    return sub_1A5B10168(&v55, &qword_1EB1F2E50);
  }

  return result;
}

uint64_t sub_1A5C59904(unsigned __int8 a1)
{
  v2 = a1;
  v4 = sub_1A5FD3D5C();
  if (v2 == 2)
  {
    v5 = 0;
    memset(v7, 0, 24);
  }

  else
  {
    LOBYTE(v7[0]) = a1 & 1;
    v5 = MEMORY[0x1E69E6370];
  }

  v7[3] = v5;
  return sub_1A5B0DE30(v7, v4, v3);
}

uint64_t sub_1A5C599A8(uint64_t a1)
{
  v2 = sub_1A5FD3D5C();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v4 = sub_1A5B0E2A4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1A5B101D8(*(a1 + 56) + 32 * v4, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0800);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v10 >> 62)
  {
    result = sub_1A5FD484C();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    return 0;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1AC554EE0](0);
    goto LABEL_9;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v10 + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1A5C59AD8(void *a1)
{
  if (!a1)
  {
    goto LABEL_19;
  }

  v3 = sub_1A5FD3D5C();
  v5 = v4;
  v6 = *v1;
  if (!*(*v1 + 16))
  {
    v12 = a1;

LABEL_12:
    v13 = sub_1A5FD3D5C();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A5FF3930;
    *(v16 + 32) = a1;
    v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0800);
    v19[0] = v16;
    sub_1A5B0DE30(v19, v13, v15);

    return;
  }

  v7 = v3;
  v8 = a1;
  v9 = sub_1A5B0E2A4(v7, v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1A5B101D8(*(v6 + 56) + 32 * v9, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0800);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v18 >> 62)
  {
    if (sub_1A5FD484C() == 1)
    {
      if (!sub_1A5FD484C())
      {
        __break(1u);
LABEL_16:
        v17 = MEMORY[0x1AC554EE0](0);
        swift_unknownObjectRelease();
        if (v17 == v8)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_7:
      if ((v18 & 0xC000000000000001) == 0)
      {
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          if (*(v18 + 32) == v8)
          {
LABEL_10:

            return;
          }
        }

        else
        {
          __break(1u);
        }

        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_7;
  }

LABEL_19:
  sub_1A5FD483C();
  __break(1u);
}

uint64_t sub_1A5C59D6C(uint64_t a1)
{
  v2 = sub_1A5FD3D5C();
  if (*(a1 + 16))
  {
    v4 = sub_1A5B0E2A4(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_1A5B101D8(*(a1 + 56) + 32 * v4, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1A5C59E30(uint64_t a1, char a2)
{
  v5 = sub_1A5FD3D5C();
  if (a2)
  {
    a1 = 0;
    v6 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v6 = MEMORY[0x1E69E6810];
  }

  v8[0] = a1;
  v8[3] = v6;
  return sub_1A5B0DE30(v8, v5, v4);
}

uint64_t sub_1A5C59EC4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = sub_1A5FD3D5C();
  v7 = v6;
  v8 = 0;
  if (a1)
  {
    v8 = sub_1A5B16F58(0, a3);
  }

  else
  {
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = a1;
  v10[3] = v8;
  return sub_1A5B0DE30(v10, v5, v7);
}

id sub_1A5C59F64(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A5B37FAC(a1);
  v5 = sub_1A5FD3BDC();

  v6 = [ObjCClassFromMetadata keyForDetectorWithConfigurationOptions_];

  sub_1A5B37FAC(a2);
  v7 = sub_1A5FD3BDC();

  v8 = [ObjCClassFromMetadata keyForDetectorWithConfigurationOptions_];

  v9 = [v6 isEqual_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1A5C5A134(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v6 + 56) = a1;
  *(v6 + 64) = v5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A5C5A1CC, 0, 0);
}

uint64_t sub_1A5C5A1CC()
{
  v2 = *(v0 + 7);
  v1 = *(v0 + 8);
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  sub_1A5B37FAC(v2);
  v8 = sub_1A5FD3BDC();

  [v7 setDictionary_];

  v9 = qos_class_self();
  v0[2] = 0.0;
  v10 = [v1 processUsingQualityOfServiceClass:v9 options:v7 regionOfInterest:0 warningRecorder:v0 + 2 error:0 progressHandler:{v6, v5, v4, v3}];
  v11 = *(v0 + 2);
  if (v10)
  {
    v12 = v10;
    v13 = sub_1A5FD3F4C();
    v14 = v11;

    v15 = *(v0 + 1);

    return v15(v13);
  }

  else
  {
    v17 = v11;
    sub_1A5FD348C();

    swift_willThrow();
    v18 = *(v0 + 1);

    return v18();
  }
}

uint64_t sub_1A5C5A58C(int a1, void *aBlock, double a3, double a4, double a5, double a6, void *a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v13 = sub_1A5FD3C0C();
  v7[4] = v13;
  a7;
  v14 = swift_task_alloc();
  v7[5] = v14;
  *v14 = v7;
  v14[1] = sub_1A5C5A6A4;

  return sub_1A5C5A134(v13, a3, a4, a5, a6);
}

uint64_t sub_1A5C5A6A4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_1A5FD347C();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_1A5FD3F3C();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v3 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1A5C5A854(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A5B10404;

  return v6();
}

uint64_t sub_1A5C5A93C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A5B0CE78;

  return v7();
}

uint64_t sub_1A5C5AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A5B31A34(a3, v23 - v10, &unk_1EB1F30E0);
  v12 = sub_1A5FD40AC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A5B10168(v11, &unk_1EB1F30E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A5FD409C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1A5FD404C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1A5FD3D8C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1A5B10168(a3, &unk_1EB1F30E0);

    return v21;
  }

LABEL_8:
  sub_1A5B10168(a3, &unk_1EB1F30E0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1A5C5AD20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = *(v0 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A5B10404;

  return sub_1A5C5A58C(v6, v7, v2, v3, v4, v5, v8);
}

uint64_t sub_1A5C5ADFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A5B10404;

  return sub_1A5C5A854(v2, v3, v4);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A5C5AEFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A5B0CE78;

  return sub_1A5C5A93C(a1, v4, v5, v6);
}

uint64_t sub_1A5C5AFC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B10404;

  return sub_1A5BB82D0(a1, v4);
}

uint64_t sub_1A5C5B080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A5B0CE78;

  return sub_1A5BB82D0(a1, v4);
}

uint64_t ClassificationObservation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ClassificationObservation()
{
  result = qword_1EB247060;
  if (!qword_1EB247060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClassificationObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClassificationObservation() + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ClassificationObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClassificationObservation() + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ClassificationObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ClassificationObservation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

unint64_t ClassificationObservation.description.getter()
{
  sub_1A5FD46AC();

  MEMORY[0x1AC554600](*v0, v0[1]);
  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v1 = type metadata accessor for ClassificationObservation();
  v2 = sub_1A5C5C9A0(&qword_1EB1F30F8, type metadata accessor for ClassificationObservation);
  v3 = sub_1A5C29408(v1, &off_1F19627B8, v2);
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD000000000000026;
}

Swift::Bool __swiftcall ClassificationObservation.hasMinimumRecall(_:forPrecision:)(Swift::Float _, Swift::Float forPrecision)
{
  v5 = type metadata accessor for ClassificationObservation();
  v6 = *(v2 + *(v5 + 36));
  if (!v6)
  {
    return 0;
  }

  v7 = *(v2 + *(v5 + 24));
  if (v7 <= 0.0)
  {
    return 0;
  }

  v8 = v6;
  *&v9 = forPrecision;
  [v8 confidenceThresholdForPrecision_];
  if (v7 <= v10)
  {

    return 0;
  }

  else
  {
    if (_ <= 0.0)
    {
    }

    else
    {
      [v8 recallOfConfidence_];
      v12 = v11;

      if (v12 < _)
      {
        return 0;
      }
    }

    return 1;
  }
}

Swift::Bool __swiftcall ClassificationObservation.hasMinimumPrecision(_:forRecall:)(Swift::Float _, Swift::Float forRecall)
{
  v5 = type metadata accessor for ClassificationObservation();
  v6 = *(v2 + *(v5 + 36));
  if (!v6)
  {
    return 0;
  }

  v7 = *(v2 + *(v5 + 24));
  if (v7 <= 0.0)
  {
    return 0;
  }

  v8 = v6;
  *&v9 = forRecall;
  [v8 confidenceThresholdForRecall_];
  if (v7 < v10)
  {

    return 0;
  }

  if (_ <= 0.0)
  {
  }

  else
  {
    [v8 precisionOfConfidence_];
    v13 = v12;

    if (v13 < _)
    {
      return 0;
    }
  }

  return 1;
}

double ClassificationObservation.init(identifier:confidence:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v8 = type metadata accessor for ClassificationObservation();
  sub_1A5FD366C();
  *a3 = a1;
  a3[1] = a2;
  *(a3 + v8[6]) = a4;
  v9 = a3 + v8[7];
  result = 0.0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v9[48] = 1;
  *(a3 + v8[8]) = -8;
  *(a3 + v8[9]) = 0;
  return result;
}

uint64_t ClassificationObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ClassificationObservation();
  sub_1A5C5C9A0(&qword_1EB1F3100, type metadata accessor for ClassificationObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C5B688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5C5C9A0(&qword_1EB1F30F8, type metadata accessor for ClassificationObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5C5B70C()
{
  v1 = 0x7363697274656DLL;
  if (*v0 != 1)
  {
    v1 = 0x746176726573626FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1A5C5B774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C5CCD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C5B79C(uint64_t a1)
{
  v2 = sub_1A5C5C770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C5B7D8(uint64_t a1)
{
  v2 = sub_1A5C5C770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3108);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C5C770();
  sub_1A5FD4CDC();
  LOBYTE(v33[0]) = 0;
  v11 = v31;
  sub_1A5FD4A1C();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v31 = v6;
  v29 = type metadata accessor for ClassificationObservation();
  v13 = *(v2 + *(v29 + 36));
  if (v13)
  {
    v14 = objc_opt_self();
    v33[0] = 0;
    v15 = v13;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:0 error:v33];
    v17 = v33[0];
    v18 = v8;
    if (!v16)
    {
      v23 = v17;
      sub_1A5FD348C();

      swift_willThrow();
      return (*(v8 + 8))(v10, v7);
    }

    v28 = v2;
    v19 = v15;
    v20 = sub_1A5FD35DC();
    v22 = v21;

    v33[0] = v20;
    v33[1] = v22;
    v32 = 1;
    sub_1A5B0A6B8();
    sub_1A5FD4A5C();
    v24 = v7;

    sub_1A5B066DC(v20, v22);
    v25 = v30;
    v26 = v31;
  }

  else
  {
    v24 = v7;
    v25 = v30;
    v26 = v31;
    v18 = v8;
  }

  LOBYTE(v33[0]) = 2;
  sub_1A5B0A360();
  sub_1A5FD49EC();
  v27 = sub_1A5C5C9A0(&qword_1EB1F30F8, type metadata accessor for ClassificationObservation);
  sub_1A5BBD46C(v26, v29, &off_1F19627B8, v27);
  (*(v25 + 8))(v26, v4);
  return (*(v18 + 8))(v10, v24);
}

void ClassificationObservation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1A5FD367C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3110);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for ClassificationObservation();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A5C5C770();
  v15 = v43;
  sub_1A5FD4CCC();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v43 = v7;
    v36 = v5;
    v16 = v40;
    v17 = v41;
    v18 = v42;
    LOBYTE(v45) = 0;
    v19 = v10;
    v20 = v13;
    *v13 = sub_1A5FD493C();
    v13[1] = v21;
    v49 = 1;
    sub_1A5B0A8B0();
    sub_1A5FD492C();
    v35 = v19;
    v22 = v46;
    if (v46 >> 60 == 15)
    {
      v23 = 0;
    }

    else
    {
      v24 = v45;
      v32[1] = sub_1A5B16F58(0, &qword_1EB1EF038);
      sub_1A5B16F58(0, &qword_1EB1F3118);
      v33 = v24;
      v34 = v22;
      v23 = sub_1A5FD435C();
      sub_1A5B33704(v33, v34);
    }

    *(v20 + *(v11 + 36)) = v23;
    LOBYTE(v45) = 2;
    sub_1A5B0A360();
    sub_1A5FD48CC();
    v34 = v11;
    LOBYTE(v45) = 0;
    sub_1A5C5C9A0(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
    v25 = v38;
    sub_1A5FD497C();
    (*(v17 + 32))(v20 + *(v34 + 20), v25, v18);
    LOBYTE(v45) = 1;
    sub_1A5FD495C();
    v26 = v34;
    *(v20 + *(v34 + 24)) = v27;
    v49 = 3;
    sub_1A5B0A454();
    sub_1A5FD492C();
    v28 = v39;
    *(v20 + *(v26 + 32)) = v45;
    v29 = v43;
    sub_1A5BBDB04(v47);
    (*(v28 + 8))(v29, v36);
    (*(v16 + 8))(v35, v8);
    v30 = v20 + *(v26 + 28);
    v31 = v47[1];
    *v30 = v47[0];
    *(v30 + 16) = v31;
    *(v30 + 32) = v47[2];
    *(v30 + 48) = v48;
    sub_1A5C5C7C4(v20, v37);
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_1A5C5C828(v20);
  }
}

__n128 sub_1A5C5C324@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  v8 = [a1 identifier];
  v9 = sub_1A5FD3D5C();
  v11 = v10;

  v12 = a1;
  v13 = [v12 uuid];
  v14 = type metadata accessor for ClassificationObservation();
  sub_1A5FD365C();

  [v12 confidence];
  v16 = v15;

  v17 = [v12 classificationMetrics];
  *a4 = v9;
  a4[1] = v11;
  *(a4 + v14[6]) = v16;
  v18 = a4 + v14[7];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  result = *(a3 + 32);
  *(v18 + 2) = result;
  v18[48] = *(a3 + 48);
  *(a4 + v14[8]) = v7;
  *(a4 + v14[9]) = v17;
  return result;
}

__n128 ClassificationObservation.init(_:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  static NormalizedRect.fullImage.getter(v20);
  v4 = a1;
  [v4 timeRange];
  v5 = [v4 identifier];
  v6 = sub_1A5FD3D5C();
  v8 = v7;

  v9 = [v4 uuid];
  v10 = type metadata accessor for ClassificationObservation();
  sub_1A5FD365C();

  [v4 confidence];
  v12 = v11;

  v13 = [v4 classificationMetrics];
  *a2 = v6;
  a2[1] = v8;
  *(a2 + v10[6]) = v12;
  v14 = a2 + v10[7];
  result = v16;
  *v14 = v16;
  *(v14 + 1) = v17;
  *(v14 + 4) = v18;
  *(v14 + 5) = v19;
  v14[48] = 0;
  *(a2 + v10[8]) = -8;
  *(a2 + v10[9]) = v13;
  return result;
}

double sub_1A5C5C59C@<D0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  *&result = sub_1A5C5C324(a1, &v5, a3, a4).n128_u64[0];
  return result;
}

BOOL _s6Vision25ClassificationObservationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A5FD4B0C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ClassificationObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v5[6]) != *(a2 + v5[6]))
  {
    return 0;
  }

  v6 = v5[7];
  v7 = *(a1 + v6 + 48);
  v8 = a2 + v6;
  if (v7)
  {
    if (!v8[48])
    {
      return 0;
    }
  }

  else if ((v8[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
  {
    return 0;
  }

  v9 = v5[8];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 <= 0xFFF7)
  {
    if (v11 > 0xFFF7)
    {
      return 0;
    }

    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11 <= 0xFFF7)
  {
    return 0;
  }

  v12 = v5[9];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    sub_1A5B16F58(0, &qword_1EB1F3118);
    v15 = v14;
    v16 = v13;
    v17 = sub_1A5FD449C();

    return (v17 & 1) != 0;
  }

  return !v14;
}

unint64_t sub_1A5C5C770()
{
  result = qword_1EB246CD0[0];
  if (!qword_1EB246CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB246CD0);
  }

  return result;
}

uint64_t sub_1A5C5C7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5C5C828(uint64_t a1)
{
  v2 = type metadata accessor for ClassificationObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5C5C884(void *a1)
{
  a1[1] = sub_1A5C5C9A0(&qword_1EB1F3120, type metadata accessor for ClassificationObservation);
  a1[2] = sub_1A5C5C9A0(&qword_1EB1F17B0, type metadata accessor for ClassificationObservation);
  a1[3] = sub_1A5C5C9A0(&qword_1EB1F1778, type metadata accessor for ClassificationObservation);
  result = sub_1A5C5C9A0(&qword_1EB1F3100, type metadata accessor for ClassificationObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5C5C9A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C5C9E8(uint64_t a1)
{
  result = sub_1A5C5C9A0(&qword_1EB1F30F8, type metadata accessor for ClassificationObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5C5CA68()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5B0AD5C();
    if (v1 <= 0x3F)
    {
      sub_1A5B1217C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A5C5CB58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A5C5CB58()
{
  if (!qword_1EB1F3128)
  {
    sub_1A5B16F58(255, &qword_1EB1F3118);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F3128);
    }
  }
}

unint64_t sub_1A5C5CBD4()
{
  result = qword_1EB247170[0];
  if (!qword_1EB247170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB247170);
  }

  return result;
}

unint64_t sub_1A5C5CC2C()
{
  result = qword_1EB247280;
  if (!qword_1EB247280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB247280);
  }

  return result;
}

unint64_t sub_1A5C5CC84()
{
  result = qword_1EB247288[0];
  if (!qword_1EB247288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB247288);
  }

  return result;
}

uint64_t sub_1A5C5CCD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
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

__n128 ImageHomographicAlignmentObservation.warpTransform.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t ImageHomographicAlignmentObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageHomographicAlignmentObservation() + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImageHomographicAlignmentObservation()
{
  result = qword_1EB2476A0;
  if (!qword_1EB2476A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ImageHomographicAlignmentObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageHomographicAlignmentObservation() + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ImageHomographicAlignmentObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ImageHomographicAlignmentObservation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ImageHomographicAlignmentObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000034, 0x80000001A6057C10);
  MEMORY[0x1AC554600](0x6F6C665F646D6973, 0xED00003378337461);
  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v0 = type metadata accessor for ImageHomographicAlignmentObservation();
  v1 = sub_1A5C5EBC0(&qword_1EB1F3130, type metadata accessor for ImageHomographicAlignmentObservation);
  v2 = sub_1A5C29408(v0, &off_1F19628A0, v1);
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

CIImage __swiftcall ImageHomographicAlignmentObservation.applyTransform(to:)(CIImage to)
{
  isa = to.super.isa;
  [(objc_class *)to.super.isa extent];
  MinX = CGRectGetMinX(v34);
  [(objc_class *)isa extent];
  MaxY = CGRectGetMaxY(v35);
  v5 = MinX;
  *&MaxY = MaxY;
  v32 = v1[1];
  v30 = *v1;
  v31 = v1[2];
  v6 = vaddq_f32(v31, vmlaq_n_f32(vmulq_n_f32(*v1, v5), v32, *&MaxY));
  v29 = vcvtq_f64_f32(vdiv_f32(*v6.i8, vdup_laneq_s32(v6, 2)));
  [(objc_class *)isa extent];
  MaxX = CGRectGetMaxX(v36);
  [(objc_class *)isa extent];
  v8 = CGRectGetMaxY(v37);
  v9 = MaxX;
  *&v8 = v8;
  v10 = vaddq_f32(v31, vmlaq_n_f32(vmulq_n_f32(v30, v9), v32, *&v8));
  v28 = vcvtq_f64_f32(vdiv_f32(*v10.i8, vdup_laneq_s32(v10, 2)));
  [(objc_class *)isa extent];
  v11 = CGRectGetMinX(v38);
  [(objc_class *)isa extent];
  MinY = CGRectGetMinY(v39);
  v13 = v11;
  *&MinY = MinY;
  v14 = vaddq_f32(v31, vmlaq_n_f32(vmulq_n_f32(v30, v13), v32, *&MinY));
  v27 = vcvtq_f64_f32(vdiv_f32(*v14.i8, vdup_laneq_s32(v14, 2)));
  [(objc_class *)isa extent];
  v15 = CGRectGetMaxX(v40);
  [(objc_class *)isa extent];
  v16 = CGRectGetMinY(v41);
  v17 = v15;
  *&v16 = v16;
  v18 = vaddq_f32(v31, vmlaq_n_f32(vmulq_n_f32(v30, v17), v32, *&v16));
  v33 = vcvtq_f64_f32(vdiv_f32(*v18.i8, vdup_laneq_s32(v18, 2)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A600F570;
  strcpy((inited + 32), "inputTopLeft");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithCGPoint_];
  strcpy((inited + 56), "inputTopRight");
  *(inited + 70) = -4864;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithCGPoint_];
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001A6057C50;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithCGPoint_];
  *(inited + 104) = 0x746F427475706E69;
  *(inited + 112) = 0xEF7466654C6D6F74;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithCGPoint_];
  v20 = sub_1A5C5E69C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3140);
  swift_arrayDestroy();
  v21 = sub_1A5FD3D2C();
  sub_1A5C5D418(v20);

  v22 = sub_1A5FD3BDC();

  v23 = [(objc_class *)isa imageByApplyingFilter:v21 withInputParameters:v22];

  v25 = v23;
  result._priv = v24;
  result.super.isa = v25;
  return result;
}

unint64_t sub_1A5C5D418(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F13A0);
    v2 = sub_1A5FD487C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1A5C5EE80();

        v19 = v18;
        swift_dynamicCast();
        sub_1A5B101C8(&v25, v27);
        sub_1A5B101C8(v27, v28);
        sub_1A5B101C8(v28, &v26);
        result = sub_1A5B0E2A4(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1A5B101C8(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1A5B101C8(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

__n128 sub_1A5C5D674@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, char *a5@<X8>, float a6@<S0>)
{
  v10 = *a4;
  v11 = a1[1];
  *a5 = *a1;
  *(a5 + 1) = v11;
  *(a5 + 2) = a1[2];
  v12 = type metadata accessor for ImageHomographicAlignmentObservation();
  v13 = v12[5];
  v14 = sub_1A5FD367C();
  (*(*(v14 - 8) + 32))(&a5[v13], a2, v14);
  *&a5[v12[6]] = a6;
  v15 = &a5[v12[7]];
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 1) = v16;
  result = *(a3 + 32);
  *(v15 + 2) = result;
  v15[48] = *(a3 + 48);
  *&a5[v12[8]] = v10;
  return result;
}

uint64_t ImageHomographicAlignmentObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ImageHomographicAlignmentObservation();
  sub_1A5C5EBC0(&qword_1EB1F3148, type metadata accessor for ImageHomographicAlignmentObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C5D7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5C5EBC0(&qword_1EB1F3130, type metadata accessor for ImageHomographicAlignmentObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5C5D858()
{
  if (*v0)
  {
    return 0x6E61725470726177;
  }

  else
  {
    return 0x746176726573626FLL;
  }
}

uint64_t sub_1A5C5D8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E61725470726177 && a2 == 0xED00006D726F6673)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C5D990(uint64_t a1)
{
  v2 = sub_1A5C5E908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C5D9CC(uint64_t a1)
{
  v2 = sub_1A5C5E908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageHomographicAlignmentObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3150);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C5E908();
  sub_1A5FD4CDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2298);
  v12 = swift_allocObject();
  v13 = *v3;
  v14 = v3[1];
  v12[1] = xmmword_1A600FCE0;
  v12[2] = v13;
  v15 = v3[2];
  v12[3] = v14;
  v12[4] = v15;
  v24 = v12;
  v23 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2230);
  sub_1A5C5E95C(&qword_1EB1F22A0, &qword_1EB1EEC90);
  sub_1A5FD4A5C();

  if (!v2)
  {
    v22 = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v16 = type metadata accessor for ImageHomographicAlignmentObservation();
    v17 = sub_1A5C5EBC0(&qword_1EB1F3130, type metadata accessor for ImageHomographicAlignmentObservation);
    sub_1A5BBD46C(v7, v16, &off_1F19628A0, v17);
    (*(v20 + 8))(v7, v21);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ImageHomographicAlignmentObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v49 = sub_1A5FD367C();
  v44 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3158);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ImageHomographicAlignmentObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C5E908();
  v13 = v50;
  sub_1A5FD4CCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v6;
  v40 = v10;
  v41 = v4;
  v42 = v12;
  v50 = a1;
  v15 = v47;
  v16 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2230);
  v51 = 1;
  sub_1A5C5E95C(&qword_1EB1F2238, &qword_1EB1EECB0);
  v17 = v48;
  sub_1A5FD497C();
  result = v54;
  v19 = *(v54 + 16);
  if (v19)
  {
    v20 = v42;
    if (v19 != 1)
    {
      if (v19 >= 3)
      {
        v21 = *(v54 + 48);
        v39 = *(v54 + 32);
        v38 = v21;
        v37 = *(v54 + 64);

        v22 = v38;
        *v20 = v39;
        v20[1] = v22;
        v20[2] = v37;
        LOBYTE(v54) = 0;
        sub_1A5B0A360();
        v23 = v14;
        sub_1A5FD48CC();
        *&v39 = v9;
        LOBYTE(v54) = 0;
        sub_1A5C5EBC0(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
        v24 = v45;
        sub_1A5FD497C();
        v25 = v23;
        v26 = v40;
        v27 = v42;
        (*(v44 + 32))(v42 + *(v40 + 20), v24, v16);
        LOBYTE(v54) = 1;
        sub_1A5FD495C();
        *(v27 + *(v26 + 24)) = v28;
        v51 = 3;
        sub_1A5B0A454();
        sub_1A5FD492C();
        v29 = v15;
        v30 = v25;
        v31 = v50;
        v32 = v46;
        v33 = v40;
        v34 = v42;
        *(v42 + *(v40 + 32)) = v54;
        sub_1A5BBDB04(v52);
        (*(v32 + 8))(v30, v41);
        (*(v29 + 8))(v39, v17);
        v35 = v34 + *(v33 + 28);
        v36 = v52[1];
        *v35 = v52[0];
        *(v35 + 16) = v36;
        *(v35 + 32) = v52[2];
        *(v35 + 48) = v53;
        sub_1A5C5E9E4(v34, v43);
        __swift_destroy_boxed_opaque_existential_1(v31);
        return sub_1A5C5EA48(v34);
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

__n128 sub_1A5C5E398@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = *a2;
  [a1 warpTransform];
  v20 = v9;
  v21 = v8;
  v19 = v10;
  v11 = a1;
  v12 = [v11 uuid];
  v13 = type metadata accessor for ImageHomographicAlignmentObservation();
  sub_1A5FD365C();

  [v11 confidence];
  v15 = v14;

  *a4 = v21;
  a4[1] = v20;
  a4[2] = v19;
  *(a4 + v13[6]) = v15;
  v16 = a4 + v13[7];
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 1) = v17;
  result = *(a3 + 32);
  *(v16 + 2) = result;
  v16[48] = *(a3 + 48);
  *(a4 + v13[8]) = v7;
  return result;
}

__n128 ImageHomographicAlignmentObservation.init(_:)@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  static NormalizedRect.fullImage.getter(v21);
  v4 = a1;
  [v4 timeRange];
  [v4 warpTransform];
  v15 = v6;
  v16 = v5;
  v14 = v7;
  v8 = [v4 uuid];
  v9 = type metadata accessor for ImageHomographicAlignmentObservation();
  sub_1A5FD365C();

  [v4 confidence];
  v11 = v10;

  *a2 = v16;
  a2[1] = v15;
  a2[2] = v14;
  *(a2 + v9[6]) = v11;
  v12 = a2 + v9[7];
  result = v17;
  *v12 = v17;
  *(v12 + 1) = v18;
  *(v12 + 4) = v19;
  *(v12 + 5) = v20;
  v12[48] = 0;
  *(a2 + v9[8]) = -8;
  return result;
}

__n128 sub_1A5C5E5B0@<Q0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, int *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *a2;
  [a1 warpTransform];
  v22 = v11;
  v23 = v10;
  v21 = v12;
  v13 = a1;
  v14 = [v13 uuid];
  sub_1A5FD365C();

  [v13 confidence];
  v16 = v15;

  *a5 = v23;
  a5[1] = v22;
  a5[2] = v21;
  v17 = a4[7];
  *(a5 + a4[6]) = v16;
  v18 = a5 + v17;
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 1) = v19;
  result = *(a3 + 32);
  *(v18 + 2) = result;
  v18[48] = *(a3 + 48);
  *(a5 + a4[8]) = v9;
  return result;
}

unint64_t sub_1A5C5E69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3180);
    v3 = sub_1A5FD487C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A5B0E2A4(v5, v6);
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

uint64_t _s6Vision36ImageHomographicAlignmentObservationV2eeoiySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vceqq_f32(a1[2], a2[2]));
  v2.i32[3] = v2.i32[2];
  if ((vminvq_u32(v2) & 0x80000000) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ImageHomographicAlignmentObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1->f32 + v6[6]) != *(a2->f32 + v6[6]))
  {
    return 0;
  }

  v7 = v6[7];
  v8 = a1[3].i8[v7];
  v9 = a2 + v7;
  if ((v8 & 1) == 0)
  {
    if ((v9[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v10 = v6[8];
    v11 = *(a1->u16 + v10);
    v12 = *(a2->u16 + v10);
    if (v11 <= 0xFFF7)
    {
      if (v12 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (v9[48])
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1A5C5E908()
{
  result = qword_1EB247310[0];
  if (!qword_1EB247310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB247310);
  }

  return result;
}

uint64_t sub_1A5C5E95C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F2230);
    sub_1A5B26398(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5C5E9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageHomographicAlignmentObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5C5EA48(uint64_t a1)
{
  v2 = type metadata accessor for ImageHomographicAlignmentObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5C5EAA4(void *a1)
{
  a1[1] = sub_1A5C5EBC0(&qword_1EB1EFA78, type metadata accessor for ImageHomographicAlignmentObservation);
  a1[2] = sub_1A5C5EBC0(&qword_1EB1F3160, type metadata accessor for ImageHomographicAlignmentObservation);
  a1[3] = sub_1A5C5EBC0(&qword_1EB1F3168, type metadata accessor for ImageHomographicAlignmentObservation);
  result = sub_1A5C5EBC0(&qword_1EB1F3148, type metadata accessor for ImageHomographicAlignmentObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5C5EBC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C5EC08(uint64_t a1)
{
  result = sub_1A5C5EBC0(&qword_1EB1F3130, type metadata accessor for ImageHomographicAlignmentObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5C5EC88()
{
  type metadata accessor for simd_float3x3(319);
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5B0AD5C();
      if (v2 <= 0x3F)
      {
        sub_1A5B2F560(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A5C5ED7C()
{
  result = qword_1EB2477B0[0];
  if (!qword_1EB2477B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2477B0);
  }

  return result;
}

unint64_t sub_1A5C5EDD4()
{
  result = qword_1EB2478C0;
  if (!qword_1EB2478C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2478C0);
  }

  return result;
}

unint64_t sub_1A5C5EE2C()
{
  result = qword_1EB2478C8[0];
  if (!qword_1EB2478C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2478C8);
  }

  return result;
}

unint64_t sub_1A5C5EE80()
{
  result = qword_1EB1F3178;
  if (!qword_1EB1F3178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F3178);
  }

  return result;
}

uint64_t sub_1A5C5EECC()
{
  if (*v0)
  {
    return 0x746176726573626FLL;
  }

  else
  {
    return 0x6675426C65786970;
  }
}

uint64_t sub_1A5C5EF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6675426C65786970 && a2 == 0xEB00000000726566;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5C5EFFC(uint64_t a1)
{
  v2 = sub_1A5C5F614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C5F038(uint64_t a1)
{
  v2 = sub_1A5C5F614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1A5C5F074(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 + 24);
  v11 = v10(a2, a4);
  CVPixelBufferLockBaseAddress(v11, 1uLL);

  v12 = v10(a2, a4);
  BaseAddress = CVPixelBufferGetBaseAddress(v12);

  if (BaseAddress)
  {
    (*(*(a3 - 8) + 16))(a5, &BaseAddress[*(*(a3 - 8) + 72) * a1], a3);
    v14 = v10(a2, a4);
    CVPixelBufferUnlockBaseAddress(v14, 1uLL);
  }

  else
  {
    sub_1A5FD483C();
    __break(1u);
  }
}

void sub_1A5C5F1D8(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v4 = v3;
  v47 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = v31 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3188);
  v10 = *(v39 - 8);
  v11 = MEMORY[0x1EEE9AC00](v39);
  v13 = v31 - v12;
  v14 = *(a3 + 8);
  v15 = *(v14 + 8);
  v40 = a2;
  v15(&v42, a2, v14, v11);
  if (v42 > 0xFFF7u)
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = v14;
  v36 = v10;
  v41 = v42;
  v16 = sub_1A5C752E0();
  if (!v16)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v17 = v16;
  v18 = v40;
  v19 = (*(a3 + 24))(v40, a3);
  v20 = [objc_allocWithZone(VNPixelBufferObservation) initWithOriginatingRequestSpecifier:v17 featureName:0 CVPixelBuffer:v19];

  if (!v20)
  {
    goto LABEL_14;
  }

  (*(a3 + 32))(&v42, v18, a3);
  if ((v46 & 1) == 0)
  {
    [(VNPixelBufferObservation *)v20 setCroppedBoundingBox:v43, v44, v45];
  }

  v21 = objc_opt_self();
  v42 = 0;
  v22 = [v21 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v42];
  v23 = v42;
  if (v22)
  {
    v31[1] = v4;
    v32 = v8;
    v33 = v7;
    v24 = sub_1A5FD35DC();
    v26 = v25;

    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    sub_1A5C5F614();
    sub_1A5FD4CDC();
    v42 = v24;
    v43 = *&v26;
    LOBYTE(v41) = 0;
    sub_1A5B0A6B8();
    v27 = v38;
    v28 = v39;
    sub_1A5FD4A5C();
    if (v27)
    {
      (*(v36 + 8))(v13, v28);

      sub_1A5B066DC(v24, v26);
    }

    else
    {
      LOBYTE(v42) = 1;
      sub_1A5B0A360();
      v30 = v35;
      sub_1A5FD49EC();
      sub_1A5BBD46C(v30, v40, v34, *(a3 + 16));
      sub_1A5B066DC(v24, v26);

      (*(v32 + 8))(v30, v33);
      (*(v36 + 8))(v13, v28);
    }
  }

  else
  {
    v29 = v23;
    sub_1A5FD348C();

    swift_willThrow();
  }
}

unint64_t sub_1A5C5F614()
{
  result = qword_1EB1F3190;
  if (!qword_1EB1F3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3190);
  }

  return result;
}

void *sub_1A5C5F668@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v49 = a4;
  v50 = a2;
  v55 = sub_1A5FD367C();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3198);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v16 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A5C5F614();
  v17 = v56;
  sub_1A5FD4CCC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v48 = v8;
  v56 = v11;
  v18 = v13;
  LOBYTE(v61) = 0;
  sub_1A5B0A8B0();
  sub_1A5FD497C();
  v47 = v15;
  v19 = v12;
  v20 = v58;
  sub_1A5B16F58(0, &qword_1EB1EF038);
  sub_1A5B16F58(0, &qword_1EB1EEF48);
  result = sub_1A5FD435C();
  v45 = v20;
  if (result)
  {
    v46 = *(&v20 + 1);
    v22 = result;
    v44 = [result pixelBuffer];
    v23 = v22;
    [v22 croppedBoundingBox];
    IsEmpty = CGRectIsEmpty(v63);
    v25 = 0uLL;
    v26 = 0uLL;
    v43 = v9;
    v27 = v19;
    v42 = IsEmpty;
    if (!IsEmpty)
    {
      [v22 croppedBoundingBox];
      NormalizedRect.init(normalizedRect:)(v64);
      v25 = v58;
      v26 = v59;
    }

    v40 = v26;
    v41 = v25;
    LOBYTE(v58) = 1;
    sub_1A5B0A360();
    v28 = v47;
    sub_1A5FD48CC();
    v39 = v27;
    LOBYTE(v58) = 0;
    sub_1A5C5FD38();
    sub_1A5FD497C();
    LOBYTE(v58) = 1;
    sub_1A5FD495C();
    v30 = v29;
    LOBYTE(v61) = 3;
    sub_1A5B0A454();
    sub_1A5FD492C();
    v31 = v53;
    v32 = v58;
    v33 = v52;
    v34 = v55;
    v35 = v56;
    sub_1A5BBDB04(v62);
    v36 = v33;
    v37 = v48;
    (*(v31 + 16))(v36, v48, v34);
    v61 = v32;
    v58 = v41;
    v59 = v40;
    v60 = v42;
    (*(v51 + 56))(v52, v62, &v61, v44, &v58, v50, v30);

    sub_1A5B066DC(v45, v46);
    (*(v31 + 8))(v37, v34);
    (*(v54 + 8))(v35, v43);
    (*(v18 + 8))(v28, v39);
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A5C5FD38()
{
  result = qword_1EB1EE7A8;
  if (!qword_1EB1EE7A8)
  {
    sub_1A5FD367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE7A8);
  }

  return result;
}

double sub_1A5C5FD90@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

unint64_t sub_1A5C5FDA8()
{
  result = qword_1EB1F31A0;
  if (!qword_1EB1F31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F31A0);
  }

  return result;
}

unint64_t sub_1A5C5FE00()
{
  result = qword_1EB1F31A8;
  if (!qword_1EB1F31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F31A8);
  }

  return result;
}

unint64_t sub_1A5C5FE58()
{
  result = qword_1EB1F31B0;
  if (!qword_1EB1F31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F31B0);
  }

  return result;
}

uint64_t sub_1A5C5FEBC()
{
  if (sub_1A5FD349C())
  {
    result = sub_1A5FD350C();
    if (!v0)
    {
      return v3;
    }
  }

  else
  {
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD00000000000001ELL, 0x80000001A6057CC0, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A5C5FF70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    result = sub_1A5FD3D1C();
    if (v4)
    {
      *a2 = result;
      a2[1] = v4;
      return result;
    }

    sub_1A5BF63A0(0, 0xD000000000000032, 0x80000001A6057D20);
    sub_1A5B16774();
    swift_allocError();
    v7 = v9;
    v8 = 0x80000001A6057D60;
    v5 = 0xD000000000000015;
  }

  else
  {
    sub_1A5BF63A0(0, 0xD000000000000031, 0x80000001A6057CE0);
    sub_1A5B16774();
    swift_allocError();
    v5 = 0x204C525520656854;
    v7 = v6;
    v8 = 0xEE006C696E207369;
  }

  sub_1A5D286A4(v5, v8, v7);
  return swift_willThrow();
}

char *sub_1A5C60084()
{
  if (sub_1A5FD349C())
  {
    sub_1A5FD350C();
    if (!v1)
    {
      sub_1A5FD34DC();
      sub_1A5B32264();
      v0 = sub_1A5FD45BC();
    }
  }

  else
  {
    v0 = "erProviding.swift";
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0xD00000000000001ELL, 0x80000001A6057CC0, v2);
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1A5C601C0(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFSUB__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 - 1 < result)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5C60224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PixelBufferObservation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 DetectedDocumentObservation.topLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for DetectedDocumentObservation() + 20));
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for DetectedDocumentObservation()
{
  result = qword_1EB247F60;
  if (!qword_1EB247F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DetectedDocumentObservation.topLeft.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for DetectedDocumentObservation();
  v5 = (v1 + *(result + 20));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

__n128 DetectedDocumentObservation.topRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for DetectedDocumentObservation() + 24));
  *a1 = result;
  return result;
}

uint64_t DetectedDocumentObservation.topRight.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for DetectedDocumentObservation();
  v5 = (v1 + *(result + 24));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

__n128 DetectedDocumentObservation.bottomRight.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for DetectedDocumentObservation() + 28));
  *a1 = result;
  return result;
}

uint64_t DetectedDocumentObservation.bottomRight.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for DetectedDocumentObservation();
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

__n128 DetectedDocumentObservation.bottomLeft.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for DetectedDocumentObservation() + 32));
  *a1 = result;
  return result;
}

uint64_t DetectedDocumentObservation.bottomLeft.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for DetectedDocumentObservation();
  v5 = (v1 + *(result + 32));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t DetectedDocumentObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DetectedDocumentObservation() + 36);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 DetectedDocumentObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DetectedDocumentObservation() + 44);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t DetectedDocumentObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD00000000000001CLL, 0x80000001A6057D80);
  v0 = type metadata accessor for DetectedDocumentObservation();
  v1 = sub_1A5C64D80(v0, &protocol witness table for DetectedDocumentObservation);
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A6057DA0);
  type metadata accessor for PixelBufferObservation();
  sub_1A5C6254C(&qword_1EB1EF5A0, type metadata accessor for PixelBufferObservation);
  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v3 = sub_1A5C6254C(&qword_1EB1F31B8, type metadata accessor for DetectedDocumentObservation);
  v4 = sub_1A5C29408(v0, &off_1F1962A48, v3);
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t DetectedDocumentObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for DetectedDocumentObservation();
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t DetectedDocumentObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for DetectedDocumentObservation();
  sub_1A5C6254C(&qword_1EB1F31C0, type metadata accessor for DetectedDocumentObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C60904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1A5FD367C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 sub_1A5C60984@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

__n128 sub_1A5C609B8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 20));
  *a2 = result;
  return result;
}

__n128 sub_1A5C609C8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 24));
  *a2 = result;
  return result;
}

__n128 sub_1A5C609D8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

__n128 sub_1A5C609E8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_1A5C609F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5C6254C(&qword_1EB1F31B8, type metadata accessor for DetectedDocumentObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5C60A88()
{
  v1 = 0x6C676E6174636572;
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
    return 0x746176726573626FLL;
  }
}

uint64_t sub_1A5C60AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C62820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C60B1C(uint64_t a1)
{
  v2 = sub_1A5C62314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C60B58(uint64_t a1)
{
  v2 = sub_1A5C62314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectedDocumentObservation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED20);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v21 = &v17 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F31C8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C62314();
  sub_1A5FD4CDC();
  v25 = 2;
  type metadata accessor for PixelBufferObservation();
  sub_1A5C6254C(&qword_1EB1F1788, type metadata accessor for PixelBufferObservation);
  v12 = v22;
  sub_1A5FD4A5C();
  if (!v12)
  {
    v22 = v6;
    v24 = 1;
    sub_1A5B289B8();
    v13 = v21;
    sub_1A5FD49EC();
    v14 = type metadata accessor for DetectedDocumentObservation();
    sub_1A5C15020(v13, v14, &protocol witness table for DetectedDocumentObservation);
    v23 = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v15 = sub_1A5C6254C(&qword_1EB1F31B8, type metadata accessor for DetectedDocumentObservation);
    sub_1A5BBD46C(v5, v14, &off_1F1962A48, v15);
    (*(v19 + 8))(v5, v18);
    (*(v20 + 8))(v21, v22);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t DetectedDocumentObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_1A5FD367C();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EED38);
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F31D0);
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for DetectedDocumentObservation();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A5C62314();
  v18 = v40;
  sub_1A5FD4CCC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v28 = v14;
  v40 = v8;
  v19 = v38;
  LOBYTE(v42) = 2;
  sub_1A5C6254C(&qword_1EB1F17B8, type metadata accessor for PixelBufferObservation);
  v20 = v39;
  sub_1A5FD497C();
  sub_1A5BD0E58(v20, v16);
  LOBYTE(v42) = 1;
  sub_1A5B289B8();
  sub_1A5FD48CC();
  v45 = 0;
  sub_1A5B23E38();
  sub_1A5FD497C();
  *&v16[v28[5]] = v42;
  v45 = 1;
  sub_1A5FD497C();
  *&v16[v28[6]] = v42;
  v45 = 3;
  sub_1A5FD497C();
  *&v16[v28[8]] = v42;
  v45 = 2;
  sub_1A5FD497C();
  *&v16[v28[7]] = v42;
  LOBYTE(v42) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v39 = v13;
  LOBYTE(v42) = 0;
  sub_1A5C6254C(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  v22 = v32;
  sub_1A5FD497C();
  v27 = v11;
  (*(v30 + 32))(&v16[v28[9]], v34, v22);
  LOBYTE(v42) = 1;
  sub_1A5FD495C();
  *&v16[v28[10]] = v23;
  v45 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  *&v16[v28[12]] = v42;
  sub_1A5BBDB04(v43);
  (*(v31 + 8))(v35, v33);
  (*(v37 + 8))(v40, v36);
  (*(v19 + 8))(v39, v27);
  v24 = &v16[v28[11]];
  v25 = v43[1];
  *v24 = v43[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v43[2];
  v24[48] = v44;
  sub_1A5C62368(v16, v29, type metadata accessor for DetectedDocumentObservation);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1A5C623D0(v16, type metadata accessor for DetectedDocumentObservation);
}

id sub_1A5C61904@<X0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A5FD367C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  result = [a1 globalSegmentationMask];
  if (result)
  {
    v16 = result;
    v17 = [result pixelBuffer];

    v18 = a1;
    v19 = [v18 uuid];
    sub_1A5FD365C();

    [v18 confidence];
    v21 = v20;
    LOWORD(v57[0]) = v14;
    memset(v58, 0, sizeof(v58));
    v59 = 1;
    v22 = v17;
    sub_1A5BF327C(v10, a3, v57, v22, v58, v13, v21);
    sub_1A5C62368(v13, a4, type metadata accessor for PixelBufferObservation);
    [v18 topLeft];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v24, v23));
    v25 = *(&v58[0] + 1);
    v52 = *&v58[0];
    [v18 topRight];
    v28 = NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v27, v26));
    v29 = v57[0];
    v30 = v57[1];
    [v18 bottomRight];
    v33 = NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v32, v31));
    v34 = v55;
    v35 = v56;
    [v18 bottomLeft];
    v38 = NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v37, v36));
    v40 = v53;
    v39 = v54;
    v41 = [v18 uuid];
    v42 = type metadata accessor for DetectedDocumentObservation();
    sub_1A5FD365C();

    [v18 confidence];
    v44 = v43;

    result = sub_1A5C623D0(v13, type metadata accessor for PixelBufferObservation);
    v45 = (a4 + v42[5]);
    *v45 = v52;
    v45[1] = v25;
    v46 = (a4 + v42[6]);
    *v46 = v29;
    v46[1] = v30;
    v47 = (a4 + v42[7]);
    *v47 = v34;
    v47[1] = v35;
    v48 = (a4 + v42[8]);
    *v48 = v40;
    v48[1] = v39;
    *(a4 + v42[10]) = v44;
    v49 = a4 + v42[11];
    v50 = *(a3 + 16);
    *v49 = *a3;
    *(v49 + 16) = v50;
    *(v49 + 32) = *(a3 + 32);
    *(v49 + 48) = *(a3 + 48);
    *(a4 + v42[12]) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DetectedDocumentObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v56 - v13;
  v15 = [a1 globalSegmentationMask];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 pixelBuffer];

    v20 = sub_1A5B3AB70();
    v21 = a1;
    v22 = [v21 uuid];
    sub_1A5FD365C();

    [v21 confidence];
    v24 = v23;
    [v21 timeRange];
    v72 = 0;
    LOWORD(v70[0]) = -8;
    v61 = 0u;
    v60 = 0u;
    LOBYTE(v62) = 1;
    v59 = v20;
    sub_1A5BF327C(v7, &v71, v70, v59, &v60, v14, v24);
    sub_1A5C62368(v14, v10, type metadata accessor for PixelBufferObservation);
    [v21 topLeft];
    NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v26, v25));
    v27 = v70[1];
    v58 = v70[0];
    [v21 topRight];
    v30 = NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v29, v28));
    v31 = v68;
    v32 = v69;
    [v21 bottomRight];
    v35 = NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v34, v33));
    v36 = v66;
    v37 = v67;
    [v21 bottomLeft];
    v40 = NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v39, v38));
    v41 = v64;
    v42 = v65;
    v43 = [v21 uuid];
    sub_1A5FD365C();

    [v21 confidence];
    v45 = v44;
    [v21 timeRange];
    v46 = v62;
    v47 = v63;
    v57 = v60;
    v56 = v61;

    sub_1A5C623D0(v14, type metadata accessor for PixelBufferObservation);
    sub_1A5BD0E58(v10, a2);
    v48 = type metadata accessor for DetectedDocumentObservation();
    v49 = (a2 + v48[5]);
    *v49 = v58;
    v49[1] = v27;
    v50 = (a2 + v48[6]);
    *v50 = v31;
    v50[1] = v32;
    v51 = (a2 + v48[7]);
    *v51 = v36;
    v51[1] = v37;
    v52 = (a2 + v48[8]);
    *v52 = v41;
    v52[1] = v42;
    (*(v5 + 32))(a2 + v48[9], v7, v4);
    *(a2 + v48[10]) = v45;
    v53 = a2 + v48[11];
    v54 = v56;
    *v53 = v57;
    *(v53 + 16) = v54;
    *(v53 + 32) = v46;
    *(v53 + 40) = v47;
    *(v53 + 48) = 0;
    *(a2 + v48[12]) = -8;
    return (*(*(v48 - 1) + 56))(a2, 0, 1, v48);
  }

  else
  {

    v18 = type metadata accessor for DetectedDocumentObservation();
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }
}

uint64_t _s6Vision27DetectedDocumentObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static PixelBufferObservation.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DetectedDocumentObservation();
  v5 = v4[5];
  v23[0] = *(a1 + v5);
  v22[0] = *(a2 + v5);
  if (!static NormalizedPoint.== infix(_:_:)(v23, v22))
  {
    return 0;
  }

  v6 = v4[6];
  v23[0] = *(a1 + v6);
  v22[0] = *(a2 + v6);
  if (!static NormalizedPoint.== infix(_:_:)(v23, v22))
  {
    return 0;
  }

  v7 = v4[7];
  v23[0] = *(a1 + v7);
  v22[0] = *(a2 + v7);
  if (!static NormalizedPoint.== infix(_:_:)(v23, v22))
  {
    return 0;
  }

  v8 = v4[8];
  v23[0] = *(a1 + v8);
  v22[0] = *(a2 + v8);
  if (!static NormalizedPoint.== infix(_:_:)(v23, v22) || (sub_1A5FD364C() & 1) == 0 || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v9 = v4[11];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 48);
  v12 = a2 + v9;
  if ((v11 & 1) == 0)
  {
    if (*(v12 + 48))
    {
      return 0;
    }

    v13 = *v10;
    v14 = v10[1];
    v15 = v10[2];
    v16 = *(v12 + 16);
    v17 = *(v12 + 32);
    v23[0] = *v12;
    v23[1] = v16;
    v23[2] = v17;
    v22[0] = v13;
    v22[1] = v14;
    v22[2] = v15;
    if ((sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    v18 = v4[12];
    v19 = *(a1 + v18);
    v20 = *(a2 + v18);
    if (v19 <= 0xFFF7)
    {
      if (v20 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (*(v12 + 48))
  {
    goto LABEL_13;
  }

  return 0;
}

unint64_t sub_1A5C62314()
{
  result = qword_1EB247BD0[0];
  if (!qword_1EB247BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB247BD0);
  }

  return result;
}

uint64_t sub_1A5C62368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5C623D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5C62430(void *a1)
{
  a1[1] = sub_1A5C6254C(&qword_1EB1F31D8, type metadata accessor for DetectedDocumentObservation);
  a1[2] = sub_1A5C6254C(&qword_1EB1F31E0, type metadata accessor for DetectedDocumentObservation);
  a1[3] = sub_1A5C6254C(&qword_1EB1F31E8, type metadata accessor for DetectedDocumentObservation);
  result = sub_1A5C6254C(&qword_1EB1F31C0, type metadata accessor for DetectedDocumentObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5C6254C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5C62594(uint64_t a1)
{
  result = sub_1A5C6254C(&qword_1EB1F31B8, type metadata accessor for DetectedDocumentObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5C62614()
{
  type metadata accessor for PixelBufferObservation();
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5B0AD5C();
      if (v2 <= 0x3F)
      {
        sub_1A5B1217C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A5C6271C()
{
  result = qword_1EB248070[0];
  if (!qword_1EB248070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB248070);
  }

  return result;
}

unint64_t sub_1A5C62774()
{
  result = qword_1EB248180;
  if (!qword_1EB248180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB248180);
  }

  return result;
}

unint64_t sub_1A5C627CC()
{
  result = qword_1EB248188[0];
  if (!qword_1EB248188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB248188);
  }

  return result;
}

uint64_t sub_1A5C62820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C676E6174636572 && a2 == 0xE900000000000065 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A6055E10 == a2)
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

uint64_t sub_1A5C62960(uint64_t a1)
{
  v2 = sub_1A5C62C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6299C(uint64_t a1)
{
  v2 = sub_1A5C62C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C629D8(uint64_t a1)
{
  v2 = sub_1A5C62C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C62A14(uint64_t a1)
{
  v2 = sub_1A5C62C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateSkySegmentationRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F31F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F31F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C62C28();
  sub_1A5FD4CDC();
  sub_1A5C62C7C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5C62C28()
{
  result = qword_1EB248220;
  if (!qword_1EB248220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB248220);
  }

  return result;
}

unint64_t sub_1A5C62C7C()
{
  result = qword_1EB248228;
  if (!qword_1EB248228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB248228);
  }

  return result;
}

uint64_t GenerateSkySegmentationRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t GenerateSkySegmentationRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3200);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3208);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C62C28();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5C62C7C();
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
      *v13 = &type metadata for GenerateSkySegmentationRequest.Revision;
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

uint64_t sub_1A5C63048(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F31F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F31F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C62C28();
  sub_1A5FD4CDC();
  sub_1A5C62C7C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t GenerateSkySegmentationRequest.init(revision:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1278226488;
  *(a1 + 4) = 256;
  static NormalizedRect.fullImage.getter((a1 + 8));
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1A5C63284(uint64_t a1)
{
  v2 = sub_1A5C643B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C632C0(uint64_t a1)
{
  v2 = sub_1A5C643B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C632FC(uint64_t a1)
{
  v2 = sub_1A5C64364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C63338(uint64_t a1)
{
  v2 = sub_1A5C64364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C63374(uint64_t a1)
{
  v2 = sub_1A5C64310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C633B0(uint64_t a1)
{
  v2 = sub_1A5C64310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerateSkySegmentationRequest.QualityLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3210);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3218);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3220);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C64310();
  sub_1A5FD4CDC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A5C64364();
    v14 = v18;
    sub_1A5FD49EC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A5C643B8();
    sub_1A5FD49EC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t GenerateSkySegmentationRequest.QualityLevel.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t GenerateSkySegmentationRequest.QualityLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3228);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3230);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3238);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C64310();
  v13 = v31;
  sub_1A5FD4CCC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A5FD49BC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A5FD471C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v21 = &type metadata for GenerateSkySegmentationRequest.QualityLevel;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A5C64364();
    sub_1A5FD48CC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A5C643B8();
    sub_1A5FD48CC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

__n128 GenerateSkySegmentationRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 GenerateSkySegmentationRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5C63C8C()
{
  sub_1A5C6440C();
  result = sub_1A5D4EC2C();
  qword_1EB248218 = result;
  return result;
}

uint64_t static GenerateSkySegmentationRequest.allSupportedRevisions.getter()
{
  if (qword_1EB248210 != -1)
  {
    swift_once();
  }
}

uint64_t GenerateSkySegmentationRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5C6440C();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for GenerateSkySegmentationRequest, v3);
}

uint64_t GenerateSkySegmentationRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 5);
  v4 = *(v1 + 40);
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  MEMORY[0x1AC555420](v3);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v4);
}

uint64_t GenerateSkySegmentationRequest.hashValue.getter()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 40);
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  MEMORY[0x1AC555420](v1);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v4, v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5C63EE8(uint64_t a1)
{
  v2 = sub_1A5C644B4();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5C63F24(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5C6440C();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5C63F84(uint64_t a1)
{
  v2 = sub_1A5B5E268();

  return VisionRequest.description.getter(a1, v2);
}

_OWORD *sub_1A5C63FC8@<X0>(void *a1@<X8>)
{
  if (*(v1 + 5))
  {
    result = 0;
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v6 = sub_1A5C64460();
    v4 = &type metadata for GenerateSkySegmentationRequest;
    sub_1A5CC066C(&type metadata for GenerateSkySegmentationRequest, v6, v8);
    BYTE5(v8[0]) = 1;
    v5 = sub_1A5C6440C();
    result = swift_allocObject();
    v7 = v8[1];
    result[1] = v8[0];
    result[2] = v7;
    result[3] = v8[2];
  }

  *a1 = result;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

uint64_t sub_1A5C6409C(uint64_t a1, uint64_t a2)
{
  sub_1A5B5E268();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5C640EC(uint64_t a1)
{
  *v16 = *v1;
  v16[4] = *(v1 + 4);
  v3 = *(v1 + 5);
  *&v16[6] = *(v1 + 6);
  *v17 = *(v1 + 22);
  *&v17[10] = *(v1 + 32);
  v4 = sub_1A5C644B4();
  v5 = sub_1A5BDA35C(a1, &type metadata for GenerateSkySegmentationRequest, v4);
  v6 = sub_1A5FD3D5C();
  v8 = v7;
  *&v17[2] = MEMORY[0x1E69E6530];
  *v16 = v3 & 1;
  sub_1A5B101C8(v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v15, v6, v8, isUniquelyReferenced_nonNull_native);

  v10 = sub_1A5FD3D5C();
  v12 = v11;
  *&v17[2] = MEMORY[0x1E69E63B0];
  *v16 = 0;
  sub_1A5B101C8(v16, v15);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v15, v10, v12, v13);

  return v5;
}

void sub_1A5C642A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5C64460();

  sub_1A5CBFC30(a1, a2, a3, v6);
}

unint64_t sub_1A5C64310()
{
  result = qword_1EB248230;
  if (!qword_1EB248230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB248230);
  }

  return result;
}

unint64_t sub_1A5C64364()
{
  result = qword_1EB248238;
  if (!qword_1EB248238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB248238);
  }

  return result;
}

unint64_t sub_1A5C643B8()
{
  result = qword_1EB248240[0];
  if (!qword_1EB248240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB248240);
  }

  return result;
}

unint64_t sub_1A5C6440C()
{
  result = qword_1EB1F3240;
  if (!qword_1EB1F3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3240);
  }

  return result;
}

unint64_t sub_1A5C64460()
{
  result = qword_1EB1F3248;
  if (!qword_1EB1F3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3248);
  }

  return result;
}

unint64_t sub_1A5C644B4()
{
  result = qword_1EB1F3250;
  if (!qword_1EB1F3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3250);
  }

  return result;
}

unint64_t sub_1A5C64508()
{
  result = qword_1EB1F3258;
  if (!qword_1EB1F3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3258);
  }

  return result;
}

unint64_t sub_1A5C64564()
{
  result = qword_1EB1F3260;
  if (!qword_1EB1F3260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F3268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3260);
  }

  return result;
}

unint64_t sub_1A5C645CC()
{
  result = qword_1EB1F3270;
  if (!qword_1EB1F3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3270);
  }

  return result;
}

unint64_t sub_1A5C64620(uint64_t a1)
{
  result = sub_1A5B5E268();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C64674()
{
  result = qword_1EB1F3278;
  if (!qword_1EB1F3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3278);
  }

  return result;
}

unint64_t sub_1A5C646CC()
{
  result = qword_1EB1F3280;
  if (!qword_1EB1F3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3280);
  }

  return result;
}

unint64_t sub_1A5C64724()
{
  result = qword_1EB1F3288;
  if (!qword_1EB1F3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3288);
  }

  return result;
}

uint64_t sub_1A5C647A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5C647E0()
{
  result = qword_1EB1F3290;
  if (!qword_1EB1F3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3290);
  }

  return result;
}

unint64_t sub_1A5C64834(uint64_t a1)
{
  result = sub_1A5C6440C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C6485C(uint64_t a1)
{
  result = sub_1A5C64884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5C64884()
{
  result = qword_1EB1F3298;
  if (!qword_1EB1F3298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F3298);
  }

  return result;
}

unint64_t sub_1A5C6495C()
{
  result = qword_1EB248DD0[0];
  if (!qword_1EB248DD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB248DD0);
  }

  return result;
}

unint64_t sub_1A5C649B4()
{
  result = qword_1EB2491E0[0];
  if (!qword_1EB2491E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2491E0);
  }

  return result;
}

unint64_t sub_1A5C64A0C()
{
  result = qword_1EB2492F0;
  if (!qword_1EB2492F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2492F0);
  }

  return result;
}

unint64_t sub_1A5C64A64()
{
  result = qword_1EB2492F8[0];
  if (!qword_1EB2492F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2492F8);
  }

  return result;
}

unint64_t sub_1A5C64ABC()
{
  result = qword_1EB249380;
  if (!qword_1EB249380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249380);
  }

  return result;
}

unint64_t sub_1A5C64B14()
{
  result = qword_1EB249388[0];
  if (!qword_1EB249388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB249388);
  }

  return result;
}

unint64_t sub_1A5C64B6C()
{
  result = qword_1EB249410;
  if (!qword_1EB249410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249410);
  }

  return result;
}

unint64_t sub_1A5C64BC4()
{
  result = qword_1EB249418[0];
  if (!qword_1EB249418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB249418);
  }

  return result;
}

unint64_t sub_1A5C64C1C()
{
  result = qword_1EB2494A0;
  if (!qword_1EB2494A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2494A0);
  }

  return result;
}

unint64_t sub_1A5C64C74()
{
  result = qword_1EB2494A8[0];
  if (!qword_1EB2494A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2494A8);
  }

  return result;
}

unint64_t sub_1A5C64CCC()
{
  result = qword_1EB249530;
  if (!qword_1EB249530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB249530);
  }

  return result;
}

unint64_t sub_1A5C64D24()
{
  result = qword_1EB249538[0];
  if (!qword_1EB249538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB249538);
  }

  return result;
}

uint64_t sub_1A5C64D80(uint64_t a1, uint64_t a2)
{
  strcpy(v5, "boundingBox: ");
  HIWORD(v5[1]) = -4864;
  (*(a2 + 8))(&v4);
  sub_1A5B06A88();
  v2 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v2);

  return v5[0];
}

uint64_t RequestDescriptor.description.getter()
{
  v0 = sub_1A5C66384();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](46, 0xE100000000000000);
  sub_1A5FD481C();
  return 0;
}

uint64_t sub_1A5C66384()
{
  v1 = sub_1A5FD4C9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v3) = *v0;
  v32 = &type metadata for RequestDescriptor;
  LOWORD(v29) = v3;
  sub_1A5FD4C7C();
  sub_1A5FD4C8C();
  (*(v2 + 8))(v4, v1);
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_1A5FD46BC();
  swift_getObjectType();
  result = sub_1A5FD46BC();
  if (v5 == result)
  {
    v7 = 0x526E776F6E6B6E55;
    v8 = sub_1A5FD46CC();
    swift_unknownObjectRelease();
    if (v8)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1A5FD482C();
      swift_unknownObjectRelease();

      v10 = v33;
      v9 = v34;
      __swift_destroy_boxed_opaque_existential_1(v35);
      if (v9)
      {

        v11 = sub_1A5C758A4(1);
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v33 = v11;
        v34 = v13;
        v35[0] = v15;
        v35[1] = v17;
        sub_1A5C75940();
        v18 = sub_1A5FD45AC();
        v20 = v19;

        v21 = sub_1A5C75994(1uLL, v10, v9);
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28[0] = v18;
        v28[1] = v20;
        v29 = v21;
        v30 = v23;
        v31 = v25;
        v32 = v27;
        sub_1A5C75A44();
        sub_1A5FD3DFC();

        return v28[0];
      }
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5C66644(uint64_t a1)
{
  v2 = sub_1A5C77B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66680(uint64_t a1)
{
  v2 = sub_1A5C77B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A5C666BC(char a1)
{
  result = 0x65524C4D65726F63;
  switch(a1)
  {
    case 1:
    case 13:
    case 48:
    case 61:
      result = 0xD00000000000001CLL;
      break;
    case 2:
    case 11:
    case 27:
      result = 0xD000000000000014;
      break;
    case 3:
    case 21:
      result = 0xD000000000000025;
      break;
    case 4:
      return result;
    case 6:
    case 7:
    case 31:
    case 49:
    case 50:
      result = 0xD000000000000015;
      break;
    case 8:
    case 23:
    case 24:
    case 53:
      result = 0xD000000000000021;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
    case 12:
    case 14:
    case 40:
    case 52:
    case 65:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 17:
    case 26:
    case 37:
    case 41:
    case 56:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 19:
    case 32:
    case 58:
      result = 0xD00000000000002ALL;
      break;
    case 20:
    case 47:
    case 51:
    case 55:
    case 62:
      result = 0xD000000000000020;
      break;
    case 22:
      result = 0xD00000000000002BLL;
      break;
    case 25:
      result = 0xD000000000000017;
      break;
    case 28:
      result = 0xD000000000000028;
      break;
    case 29:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0xD000000000000017;
      break;
    case 33:
      result = 0xD000000000000017;
      break;
    case 34:
      result = 0xD000000000000017;
      break;
    case 35:
      result = 0xD000000000000017;
      break;
    case 36:
    case 45:
    case 46:
      result = 0xD000000000000018;
      break;
    case 38:
      result = 0xD000000000000023;
      break;
    case 39:
    case 42:
    case 67:
    case 68:
      result = 0xD00000000000001DLL;
      break;
    case 43:
    case 44:
    case 59:
    case 69:
    case 70:
    case 71:
      result = 0xD00000000000001ELL;
      break;
    case 57:
      result = 0xD000000000000022;
      break;
    case 63:
      result = 0xD000000000000017;
      break;
    case 64:
      result = 0xD000000000000024;
      break;
    case 66:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_1A5C66C44(uint64_t a1)
{
  v2 = sub_1A5C77A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66C80(uint64_t a1)
{
  v2 = sub_1A5C77A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C66CBC(uint64_t a1)
{
  v2 = sub_1A5C779D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66CF8(uint64_t a1)
{
  v2 = sub_1A5C779D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C66D34(uint64_t a1)
{
  v2 = sub_1A5C77C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66D70(uint64_t a1)
{
  v2 = sub_1A5C77C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C66DAC(uint64_t a1)
{
  v2 = sub_1A5C79370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66DE8(uint64_t a1)
{
  v2 = sub_1A5C79370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C66E24(uint64_t a1)
{
  v2 = sub_1A5C77930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66E60(uint64_t a1)
{
  v2 = sub_1A5C77930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C66E9C(uint64_t a1)
{
  v2 = sub_1A5C77BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66ED8(uint64_t a1)
{
  v2 = sub_1A5C77BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C66F14(uint64_t a1)
{
  v2 = sub_1A5C77888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66F50(uint64_t a1)
{
  v2 = sub_1A5C77888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C66F8C(uint64_t a1)
{
  v2 = sub_1A5C79418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C66FC8(uint64_t a1)
{
  v2 = sub_1A5C79418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67004(uint64_t a1)
{
  v2 = sub_1A5C777E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67040(uint64_t a1)
{
  v2 = sub_1A5C777E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C6707C(uint64_t a1)
{
  v2 = sub_1A5C77738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C670B8(uint64_t a1)
{
  v2 = sub_1A5C77738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C670F4(uint64_t a1)
{
  v2 = sub_1A5C77690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67130(uint64_t a1)
{
  v2 = sub_1A5C77690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5C81830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5C671A8(uint64_t a1)
{
  v2 = sub_1A5C7667C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C671E4(uint64_t a1)
{
  v2 = sub_1A5C7667C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67220(uint64_t a1)
{
  v2 = sub_1A5C792C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6725C(uint64_t a1)
{
  v2 = sub_1A5C792C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67298(uint64_t a1)
{
  v2 = sub_1A5C79220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C672D4(uint64_t a1)
{
  v2 = sub_1A5C79220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67310(uint64_t a1)
{
  v2 = sub_1A5C79178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6734C(uint64_t a1)
{
  v2 = sub_1A5C79178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67388(uint64_t a1)
{
  v2 = sub_1A5C77E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C673C4(uint64_t a1)
{
  v2 = sub_1A5C77E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67400(uint64_t a1)
{
  v2 = sub_1A5C790D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6743C(uint64_t a1)
{
  v2 = sub_1A5C790D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67478(uint64_t a1)
{
  v2 = sub_1A5C77F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C674B4(uint64_t a1)
{
  v2 = sub_1A5C77F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C674F0(uint64_t a1)
{
  v2 = sub_1A5C79028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6752C(uint64_t a1)
{
  v2 = sub_1A5C79028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67568(uint64_t a1)
{
  v2 = sub_1A5C78F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C675A4(uint64_t a1)
{
  v2 = sub_1A5C78F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C675E0(uint64_t a1)
{
  v2 = sub_1A5C775E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6761C(uint64_t a1)
{
  v2 = sub_1A5C775E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67658(uint64_t a1)
{
  v2 = sub_1A5C77540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67694(uint64_t a1)
{
  v2 = sub_1A5C77540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C676D0(uint64_t a1)
{
  v2 = sub_1A5C78ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6770C(uint64_t a1)
{
  v2 = sub_1A5C78ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67748(uint64_t a1)
{
  v2 = sub_1A5C77498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67784(uint64_t a1)
{
  v2 = sub_1A5C77498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C677C0(uint64_t a1)
{
  v2 = sub_1A5C79568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C677FC(uint64_t a1)
{
  v2 = sub_1A5C79568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67838(uint64_t a1)
{
  v2 = sub_1A5C78E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67874(uint64_t a1)
{
  v2 = sub_1A5C78E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C678B0(uint64_t a1)
{
  v2 = sub_1A5C78CE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C678EC(uint64_t a1)
{
  v2 = sub_1A5C78CE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67928(uint64_t a1)
{
  v2 = sub_1A5C78D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67964(uint64_t a1)
{
  v2 = sub_1A5C78D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C679A0(uint64_t a1)
{
  v2 = sub_1A5C78C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C679DC(uint64_t a1)
{
  v2 = sub_1A5C78C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67A18(uint64_t a1)
{
  v2 = sub_1A5C773F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67A54(uint64_t a1)
{
  v2 = sub_1A5C773F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67A90(uint64_t a1)
{
  v2 = sub_1A5C794C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67ACC(uint64_t a1)
{
  v2 = sub_1A5C794C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67B08(uint64_t a1)
{
  v2 = sub_1A5C78998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67B44(uint64_t a1)
{
  v2 = sub_1A5C78998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67B80(uint64_t a1)
{
  v2 = sub_1A5C78B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67BBC(uint64_t a1)
{
  v2 = sub_1A5C78B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67BF8(uint64_t a1)
{
  v2 = sub_1A5C77FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67C34(uint64_t a1)
{
  v2 = sub_1A5C77FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67C70(uint64_t a1)
{
  v2 = sub_1A5C78AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67CAC(uint64_t a1)
{
  v2 = sub_1A5C78AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67CE8(uint64_t a1)
{
  v2 = sub_1A5C78A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67D24(uint64_t a1)
{
  v2 = sub_1A5C78A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67D60(uint64_t a1)
{
  v2 = sub_1A5C77348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67D9C(uint64_t a1)
{
  v2 = sub_1A5C77348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67DD8(uint64_t a1)
{
  v2 = sub_1A5C772A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67E14(uint64_t a1)
{
  v2 = sub_1A5C772A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67E50(uint64_t a1)
{
  v2 = sub_1A5C788F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67E8C(uint64_t a1)
{
  v2 = sub_1A5C788F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67EC8(uint64_t a1)
{
  v2 = sub_1A5C76970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67F04(uint64_t a1)
{
  v2 = sub_1A5C76970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67F40(uint64_t a1)
{
  v2 = sub_1A5C77DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67F7C(uint64_t a1)
{
  v2 = sub_1A5C77DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C67FB8(uint64_t a1)
{
  v2 = sub_1A5C771F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C67FF4(uint64_t a1)
{
  v2 = sub_1A5C771F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68030(uint64_t a1)
{
  v2 = sub_1A5C787A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6806C(uint64_t a1)
{
  v2 = sub_1A5C787A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C680A8(uint64_t a1)
{
  v2 = sub_1A5C77000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C680E4(uint64_t a1)
{
  v2 = sub_1A5C77000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68120(uint64_t a1)
{
  v2 = sub_1A5C76F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6815C(uint64_t a1)
{
  v2 = sub_1A5C76F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68198(uint64_t a1)
{
  v2 = sub_1A5C78848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C681D4(uint64_t a1)
{
  v2 = sub_1A5C78848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68210(uint64_t a1)
{
  v2 = sub_1A5C77150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6824C(uint64_t a1)
{
  v2 = sub_1A5C77150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68288(uint64_t a1)
{
  v2 = sub_1A5C770A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C682C4(uint64_t a1)
{
  v2 = sub_1A5C770A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68300(uint64_t a1)
{
  v2 = sub_1A5C786F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6833C(uint64_t a1)
{
  v2 = sub_1A5C786F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68378(uint64_t a1)
{
  v2 = sub_1A5C785A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C683B4(uint64_t a1)
{
  v2 = sub_1A5C785A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C683F0(uint64_t a1)
{
  v2 = sub_1A5C78650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6842C(uint64_t a1)
{
  v2 = sub_1A5C78650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68468(uint64_t a1)
{
  v2 = sub_1A5C76EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C684A4(uint64_t a1)
{
  v2 = sub_1A5C76EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C684E0(uint64_t a1)
{
  v2 = sub_1A5C77D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6851C(uint64_t a1)
{
  v2 = sub_1A5C77D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68558(uint64_t a1)
{
  v2 = sub_1A5C76E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68594(uint64_t a1)
{
  v2 = sub_1A5C76E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C685D0(uint64_t a1)
{
  v2 = sub_1A5C78500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C6860C(uint64_t a1)
{
  v2 = sub_1A5C78500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68648(uint64_t a1)
{
  v2 = sub_1A5C76CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68684(uint64_t a1)
{
  v2 = sub_1A5C76CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C686C0(uint64_t a1)
{
  v2 = sub_1A5C78458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C686FC(uint64_t a1)
{
  v2 = sub_1A5C78458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68738(uint64_t a1)
{
  v2 = sub_1A5C76D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68774(uint64_t a1)
{
  v2 = sub_1A5C76D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C687B0(uint64_t a1)
{
  v2 = sub_1A5C76C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C687EC(uint64_t a1)
{
  v2 = sub_1A5C76C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68828(uint64_t a1)
{
  v2 = sub_1A5C76B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68864(uint64_t a1)
{
  v2 = sub_1A5C76B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C688A0(uint64_t a1)
{
  v2 = sub_1A5C76AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C688DC(uint64_t a1)
{
  v2 = sub_1A5C76AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68918(uint64_t a1)
{
  v2 = sub_1A5C783B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68954(uint64_t a1)
{
  v2 = sub_1A5C783B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68990(uint64_t a1)
{
  v2 = sub_1A5C766D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C689CC(uint64_t a1)
{
  v2 = sub_1A5C766D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68A08(uint64_t a1)
{
  v2 = sub_1A5C76820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68A44(uint64_t a1)
{
  v2 = sub_1A5C76820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68A80(uint64_t a1)
{
  v2 = sub_1A5C76778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68ABC(uint64_t a1)
{
  v2 = sub_1A5C76778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68AF8(uint64_t a1)
{
  v2 = sub_1A5C768C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68B34(uint64_t a1)
{
  v2 = sub_1A5C768C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68B70(uint64_t a1)
{
  v2 = sub_1A5C78308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68BAC(uint64_t a1)
{
  v2 = sub_1A5C78308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68BE8(uint64_t a1)
{
  v2 = sub_1A5C76A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68C24(uint64_t a1)
{
  v2 = sub_1A5C76A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68C64(uint64_t a1)
{
  v2 = sub_1A5C78260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68CA0(uint64_t a1)
{
  v2 = sub_1A5C78260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68CDC(uint64_t a1)
{
  v2 = sub_1A5C781B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68D18(uint64_t a1)
{
  v2 = sub_1A5C781B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68D54(uint64_t a1)
{
  v2 = sub_1A5C78110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68D90(uint64_t a1)
{
  v2 = sub_1A5C78110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5C68DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5C68E4C(uint64_t a1)
{
  v2 = sub_1A5C78068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5C68E88(uint64_t a1)
{
  v2 = sub_1A5C78068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestDescriptor.encode(to:)(void *a1)
{
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32A0);
  v318 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v245 = &v106 - v3;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32A8);
  v317 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v243 = &v106 - v4;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32B0);
  v316 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v241 = &v106 - v5;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32B8);
  v315 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v106 - v6;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32C0);
  v314 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v237 = &v106 - v7;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32C8);
  v313 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v106 - v8;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32D0);
  v312 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v233 = &v106 - v9;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32D8);
  v311 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v231 = &v106 - v10;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32E0);
  v310 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v229 = &v106 - v11;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32E8);
  v309 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v106 - v12;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32F0);
  v308 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v106 - v13;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F32F8);
  v307 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v223 = &v106 - v14;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3300);
  v306 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v221 = &v106 - v15;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3308);
  v305 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v106 - v16;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3310);
  v304 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = &v106 - v17;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3318);
  v303 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v215 = &v106 - v18;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3320);
  v302 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v213 = &v106 - v19;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3328);
  v301 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v211 = &v106 - v20;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3330);
  v300 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v106 - v21;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3338);
  v299 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v207 = &v106 - v22;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3340);
  v298 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v205 = &v106 - v23;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3348);
  v297 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v203 = &v106 - v24;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3350);
  v296 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v106 - v25;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3358);
  v295 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v106 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3360);
  v294 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v197 = &v106 - v27;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3368);
  v293 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v106 - v28;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3370);
  v292 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v193 = &v106 - v29;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3378);
  v291 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v106 - v30;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3380);
  v290 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v106 - v31;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3388);
  v289 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v106 - v32;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3390);
  v288 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v185 = &v106 - v33;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3398);
  v287 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v183 = &v106 - v34;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33A0);
  v286 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v106 - v35;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33A8);
  v285 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v106 - v36;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33B0);
  v284 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v177 = &v106 - v37;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33B8);
  v283 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v106 - v38;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33C0);
  v282 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v106 - v39;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33C8);
  v281 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v106 - v40;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33D0);
  v280 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v106 - v41;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33D8);
  v279 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v106 - v42;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33E0);
  v278 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v106 - v43;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33E8);
  v277 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v106 - v44;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33F0);
  v276 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v106 - v45;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F33F8);
  v275 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v106 - v46;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3400);
  v274 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v106 - v47;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3408);
  v273 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v106 - v48;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3410);
  v272 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v106 - v49;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3418);
  v271 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v106 - v50;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3420);
  v270 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v106 - v51;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3428);
  v269 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v106 - v52;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3430);
  v268 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v106 - v53;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3438);
  v267 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v106 - v54;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3440);
  v266 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v106 - v55;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3448);
  v265 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v106 - v56;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3450);
  v264 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v106 - v57;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3458);
  v263 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v106 - v58;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3460);
  v262 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v106 - v59;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3468);
  v261 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v106 - v60;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3470);
  v260 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v106 - v61;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3478);
  v259 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v106 - v62;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3480);
  v258 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v106 - v63;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3488);
  v257 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v106 - v64;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3490);
  v256 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v106 - v65;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3498);
  v255 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v106 - v66;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34A0);
  v254 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v106 - v67;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34A8);
  v253 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v106 - v68;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34B0);
  v252 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v106 - v69;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34B8);
  v251 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v106 - v70;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34C0);
  v250 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v106 - v71;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34C8);
  v249 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v106 - v72;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34D0);
  v248 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v74 = &v106 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34D8);
  v247 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v106 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F34E0);
  v79 = *(v78 - 8);
  v320 = v78;
  v321 = v79;
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v106 - v80;
  v82 = *v1;
  v83 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5C7667C();
  v319 = v81;
  sub_1A5FD4CDC();
  HIDWORD(v84) = v83;
  LODWORD(v84) = v82 << 24;
  switch((v84 >> 27))
  {
    case 1u:
      v324 = 1;
      sub_1A5C794C0();
      v100 = v319;
      v99 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 7;
      sub_1A5C79514();
      v101 = v106;
      sub_1A5FD4A5C();
      (*(v248 + 8))(v74, v101);
      return (*(v321 + 8))(v100, v99);
    case 2u:
      v98 = v82 & 7;
      v324 = 2;
      sub_1A5C79418();
      v91 = v107;
      v93 = v319;
      v92 = v320;
      sub_1A5FD49EC();
      v324 = v98;
      sub_1A5C7946C();
      v94 = v108;
      sub_1A5FD4A5C();
      v97 = &v281;
      goto LABEL_73;
    case 3u:
      v324 = 3;
      sub_1A5C79370();
      v87 = v109;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C793C4();
      v88 = v110;
      sub_1A5FD4A5C();
      v89 = v250;
      goto LABEL_76;
    case 4u:
      v324 = 4;
      sub_1A5C792C8();
      v87 = v111;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7931C();
      v88 = v112;
      sub_1A5FD4A5C();
      v89 = v251;
      goto LABEL_76;
    case 5u:
      v324 = 5;
      sub_1A5C79220();
      v87 = v113;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C79274();
      v88 = v114;
      sub_1A5FD4A5C();
      v89 = v252;
      goto LABEL_76;
    case 6u:
      v324 = 6;
      sub_1A5C79178();
      v87 = v115;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C791CC();
      v88 = v116;
      sub_1A5FD4A5C();
      v89 = v253;
      goto LABEL_76;
    case 7u:
      v324 = 7;
      sub_1A5C790D0();
      v87 = v117;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C79124();
      v88 = v118;
      sub_1A5FD4A5C();
      v89 = v254;
      goto LABEL_76;
    case 8u:
      v324 = 8;
      sub_1A5C79028();
      v87 = v119;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7907C();
      v88 = v120;
      sub_1A5FD4A5C();
      v89 = v255;
      goto LABEL_76;
    case 9u:
      v324 = 9;
      sub_1A5C78F80();
      v87 = v121;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78FD4();
      v88 = v122;
      sub_1A5FD4A5C();
      v89 = v256;
      goto LABEL_76;
    case 0xAu:
      v324 = 10;
      sub_1A5C78ED8();
      v87 = v123;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78F2C();
      v88 = v124;
      sub_1A5FD4A5C();
      v89 = v257;
      goto LABEL_76;
    case 0xBu:
      v324 = 11;
      sub_1A5C78E30();
      v87 = v125;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78E84();
      v88 = v126;
      sub_1A5FD4A5C();
      v89 = v258;
      goto LABEL_76;
    case 0xCu:
      v324 = 12;
      sub_1A5C78D88();
      v87 = v127;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78DDC();
      v88 = v128;
      sub_1A5FD4A5C();
      v89 = v259;
      goto LABEL_76;
    case 0xDu:
      v324 = 13;
      sub_1A5C78CE0();
      v87 = v129;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78D34();
      v88 = v130;
      sub_1A5FD4A5C();
      v89 = v260;
      goto LABEL_76;
    case 0xEu:
      v324 = 14;
      sub_1A5C78C38();
      v87 = v131;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78C8C();
      v88 = v132;
      sub_1A5FD4A5C();
      v89 = v261;
      goto LABEL_76;
    case 0xFu:
      v324 = 15;
      sub_1A5C78B90();
      v87 = v133;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78BE4();
      v88 = v134;
      sub_1A5FD4A5C();
      v89 = v262;
      goto LABEL_76;
    case 0x10u:
      v324 = 16;
      sub_1A5C78AE8();
      v87 = v135;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78B3C();
      v88 = v136;
      sub_1A5FD4A5C();
      v89 = v263;
      goto LABEL_76;
    case 0x11u:
      v324 = 17;
      sub_1A5C78A40();
      v87 = v137;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78A94();
      v88 = v138;
      sub_1A5FD4A5C();
      v89 = v264;
      goto LABEL_76;
    case 0x12u:
      v324 = 18;
      sub_1A5C78998();
      v87 = v139;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C789EC();
      v88 = v140;
      sub_1A5FD4A5C();
      v89 = v265;
      goto LABEL_76;
    case 0x13u:
      v324 = 19;
      sub_1A5C788F0();
      v87 = v141;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78944();
      v88 = v142;
      sub_1A5FD4A5C();
      v89 = v266;
      goto LABEL_76;
    case 0x14u:
      v324 = 20;
      sub_1A5C78848();
      v87 = v143;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C7889C();
      v88 = v144;
      sub_1A5FD4A5C();
      v89 = v267;
      goto LABEL_76;
    case 0x15u:
      v324 = 21;
      sub_1A5C787A0();
      v87 = v145;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C787F4();
      v88 = v146;
      sub_1A5FD4A5C();
      v89 = v268;
      goto LABEL_76;
    case 0x16u:
      v324 = 22;
      sub_1A5C786F8();
      v87 = v147;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7874C();
      v88 = v148;
      sub_1A5FD4A5C();
      v89 = v269;
      goto LABEL_76;
    case 0x17u:
      v324 = 23;
      sub_1A5C78650();
      v87 = v149;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C786A4();
      v88 = v150;
      sub_1A5FD4A5C();
      v89 = v270;
      goto LABEL_76;
    case 0x18u:
      v324 = 24;
      sub_1A5C785A8();
      v87 = v151;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C785FC();
      v88 = v152;
      sub_1A5FD4A5C();
      v89 = v271;
      goto LABEL_76;
    case 0x19u:
      v324 = 25;
      sub_1A5C78500();
      v87 = v153;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C78554();
      v88 = v154;
      sub_1A5FD4A5C();
      v89 = v272;
      goto LABEL_76;
    case 0x1Au:
      v324 = 26;
      sub_1A5C78458();
      v87 = v155;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C784AC();
      v88 = v156;
      sub_1A5FD4A5C();
      v89 = v273;
      goto LABEL_76;
    case 0x1Bu:
      v324 = 27;
      sub_1A5C783B0();
      v87 = v157;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78404();
      v88 = v158;
      sub_1A5FD4A5C();
      v89 = v274;
      goto LABEL_76;
    case 0x1Cu:
      v324 = 28;
      sub_1A5C78308();
      v87 = v159;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7835C();
      v88 = v160;
      sub_1A5FD4A5C();
      v89 = v275;
      goto LABEL_76;
    case 0x1Du:
      v324 = 29;
      sub_1A5C78260();
      v87 = v161;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C782B4();
      v88 = v162;
      sub_1A5FD4A5C();
      v89 = v276;
      goto LABEL_76;
    case 0x1Eu:
      v324 = 30;
      sub_1A5C781B8();
      v87 = v163;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7820C();
      v88 = v164;
      sub_1A5FD4A5C();
      v89 = v277;
      goto LABEL_76;
    case 0x1Fu:
      v324 = 31;
      sub_1A5C78110();
      v87 = v165;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78164();
      v88 = v166;
      sub_1A5FD4A5C();
      v89 = v278;
      goto LABEL_76;
    case 0x20u:
      v324 = 32;
      sub_1A5C78068();
      v87 = v167;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C780BC();
      v88 = v168;
      sub_1A5FD4A5C();
      v89 = v279;
      goto LABEL_76;
    case 0x21u:
      v324 = 33;
      sub_1A5C77FC0();
      v87 = v169;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C78014();
      v88 = v170;
      sub_1A5FD4A5C();
      v89 = v280;
      goto LABEL_76;
    case 0x22u:
      v324 = 34;
      sub_1A5C77F18();
      v87 = v171;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77F6C();
      v88 = v172;
      sub_1A5FD4A5C();
      v89 = v281;
      goto LABEL_76;
    case 0x23u:
      v324 = 35;
      sub_1A5C77E70();
      v87 = v173;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77EC4();
      v88 = v174;
      sub_1A5FD4A5C();
      v89 = v282;
      goto LABEL_76;
    case 0x24u:
      v324 = 36;
      sub_1A5C77DC8();
      v87 = v175;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C77E1C();
      v88 = v176;
      sub_1A5FD4A5C();
      v89 = v283;
      goto LABEL_76;
    case 0x25u:
      v324 = 37;
      sub_1A5C77D20();
      v87 = v177;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77D74();
      v88 = v178;
      sub_1A5FD4A5C();
      v89 = v284;
      goto LABEL_76;
    case 0x26u:
      v324 = 38;
      sub_1A5C77C78();
      v87 = v179;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C77CCC();
      v88 = v180;
      sub_1A5FD4A5C();
      v89 = v285;
      goto LABEL_76;
    case 0x27u:
      v104 = v82 & 7;
      v324 = 39;
      sub_1A5C77BD0();
      v91 = v181;
      v93 = v319;
      v92 = v320;
      sub_1A5FD49EC();
      v324 = v104;
      sub_1A5C77C24();
      v94 = v182;
      sub_1A5FD4A5C();
      v97 = &v318;
      goto LABEL_73;
    case 0x28u:
      v324 = 40;
      sub_1A5C77B28();
      v87 = v183;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77B7C();
      v88 = v184;
      sub_1A5FD4A5C();
      v89 = v287;
      goto LABEL_76;
    case 0x29u:
      v324 = 41;
      sub_1A5C77A80();
      v87 = v185;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77AD4();
      v88 = v186;
      sub_1A5FD4A5C();
      v89 = v288;
      goto LABEL_76;
    case 0x2Au:
      v324 = 42;
      sub_1A5C779D8();
      v87 = v187;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77A2C();
      v88 = v188;
      sub_1A5FD4A5C();
      v89 = v289;
      goto LABEL_76;
    case 0x2Bu:
      v324 = 43;
      sub_1A5C77930();
      v87 = v189;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C77984();
      v88 = v190;
      sub_1A5FD4A5C();
      v89 = v290;
      goto LABEL_76;
    case 0x2Cu:
      v96 = v82 & 7;
      v324 = 44;
      sub_1A5C77888();
      v91 = v191;
      v93 = v319;
      v92 = v320;
      sub_1A5FD49EC();
      v324 = v96;
      sub_1A5C778DC();
      v94 = v192;
      sub_1A5FD4A5C();
      v97 = &v322;
      goto LABEL_73;
    case 0x2Du:
      v103 = v82 & 7;
      v324 = 45;
      sub_1A5C777E0();
      v91 = v193;
      v93 = v319;
      v92 = v320;
      sub_1A5FD49EC();
      v324 = v103;
      sub_1A5C77834();
      v94 = v194;
      sub_1A5FD4A5C();
      v97 = &v323;
      goto LABEL_73;
    case 0x2Eu:
      v324 = 46;
      sub_1A5C77738();
      v87 = v195;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7778C();
      v88 = v196;
      sub_1A5FD4A5C();
      v89 = v293;
      goto LABEL_76;
    case 0x2Fu:
      v324 = 47;
      sub_1A5C77690();
      v87 = v197;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C776E4();
      v88 = v198;
      sub_1A5FD4A5C();
      v89 = v294;
      goto LABEL_76;
    case 0x30u:
      v324 = 48;
      sub_1A5C775E8();
      v87 = v199;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7763C();
      v88 = v200;
      sub_1A5FD4A5C();
      v89 = v295;
      goto LABEL_76;
    case 0x31u:
      v324 = 49;
      sub_1A5C77540();
      v87 = v201;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77594();
      v88 = v202;
      sub_1A5FD4A5C();
      v89 = v296;
      goto LABEL_76;
    case 0x32u:
      v324 = 50;
      sub_1A5C77498();
      v87 = v203;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C774EC();
      v88 = v204;
      sub_1A5FD4A5C();
      v89 = v297;
      goto LABEL_76;
    case 0x33u:
      v105 = v82 & 7;
      v324 = 51;
      sub_1A5C773F0();
      v91 = v205;
      v93 = v319;
      v92 = v320;
      sub_1A5FD49EC();
      v324 = v105;
      sub_1A5C77444();
      v94 = v206;
      sub_1A5FD4A5C();
      v97 = &v325;
LABEL_73:
      v95 = *(v97 - 32);
      goto LABEL_74;
    case 0x34u:
      v324 = 52;
      sub_1A5C77348();
      v87 = v207;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7739C();
      v88 = v208;
      sub_1A5FD4A5C();
      v89 = v299;
      goto LABEL_76;
    case 0x35u:
      v324 = 53;
      sub_1A5C772A0();
      v87 = v209;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C772F4();
      v88 = v210;
      sub_1A5FD4A5C();
      v89 = v300;
      goto LABEL_76;
    case 0x36u:
      v324 = 54;
      sub_1A5C771F8();
      v87 = v211;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7724C();
      v88 = v212;
      sub_1A5FD4A5C();
      v89 = v301;
      goto LABEL_76;
    case 0x37u:
      v324 = 55;
      sub_1A5C77150();
      v87 = v213;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C771A4();
      v88 = v214;
      sub_1A5FD4A5C();
      v89 = v302;
      goto LABEL_76;
    case 0x38u:
      v324 = 56;
      sub_1A5C770A8();
      v87 = v215;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C770FC();
      v88 = v216;
      sub_1A5FD4A5C();
      v89 = v303;
      goto LABEL_76;
    case 0x39u:
      v324 = 57;
      sub_1A5C77000();
      v87 = v217;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C77054();
      v88 = v218;
      sub_1A5FD4A5C();
      v89 = v304;
      goto LABEL_76;
    case 0x3Au:
      v324 = 58;
      sub_1A5C76F58();
      v87 = v219;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76FAC();
      v88 = v220;
      sub_1A5FD4A5C();
      v89 = v305;
      goto LABEL_76;
    case 0x3Bu:
      v324 = 59;
      sub_1A5C76EB0();
      v87 = v221;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76F04();
      v88 = v222;
      sub_1A5FD4A5C();
      v89 = v306;
      goto LABEL_76;
    case 0x3Cu:
      v324 = 60;
      sub_1A5C76E08();
      v87 = v223;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76E5C();
      v88 = v224;
      sub_1A5FD4A5C();
      v89 = v307;
      goto LABEL_76;
    case 0x3Du:
      v324 = 61;
      sub_1A5C76D60();
      v87 = v225;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76DB4();
      v88 = v226;
      sub_1A5FD4A5C();
      v89 = v308;
      goto LABEL_76;
    case 0x3Eu:
      v324 = 62;
      sub_1A5C76CB8();
      v87 = v227;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76D0C();
      v88 = v228;
      sub_1A5FD4A5C();
      v89 = v309;
      goto LABEL_76;
    case 0x3Fu:
      v324 = 63;
      sub_1A5C76C10();
      v87 = v229;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C76C64();
      v88 = v230;
      sub_1A5FD4A5C();
      v89 = v310;
      goto LABEL_76;
    case 0x40u:
      v324 = 64;
      sub_1A5C76B68();
      v87 = v231;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76BBC();
      v88 = v232;
      sub_1A5FD4A5C();
      v89 = v311;
      goto LABEL_76;
    case 0x41u:
      v324 = 65;
      sub_1A5C76AC0();
      v87 = v233;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76B14();
      v88 = v234;
      sub_1A5FD4A5C();
      v89 = v312;
      goto LABEL_76;
    case 0x42u:
      v324 = 66;
      sub_1A5C76A18();
      v87 = v235;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C76A6C();
      v88 = v236;
      sub_1A5FD4A5C();
      v89 = v313;
      goto LABEL_76;
    case 0x43u:
      v324 = 67;
      sub_1A5C76970();
      v87 = v237;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C769C4();
      v88 = v238;
      sub_1A5FD4A5C();
      v89 = v314;
      goto LABEL_76;
    case 0x44u:
      v324 = 68;
      sub_1A5C768C8();
      v87 = v239;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      sub_1A5C7691C();
      v88 = v240;
      sub_1A5FD4A5C();
      v89 = v315;
      goto LABEL_76;
    case 0x45u:
      v90 = v82 & 7;
      v324 = 69;
      sub_1A5C76820();
      v91 = v241;
      v93 = v319;
      v92 = v320;
      sub_1A5FD49EC();
      v324 = v90;
      sub_1A5C76874();
      v94 = v242;
      sub_1A5FD4A5C();
      v95 = v316;
LABEL_74:
      (*(v95 + 8))(v91, v94);
      return (*(v321 + 8))(v93, v92);
    case 0x46u:
      v324 = 70;
      sub_1A5C76778();
      v87 = v243;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C767CC();
      v88 = v244;
      sub_1A5FD4A5C();
      v89 = v317;
      goto LABEL_76;
    case 0x47u:
      v324 = 71;
      sub_1A5C766D0();
      v87 = v245;
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82 & 1;
      sub_1A5C76724();
      v88 = v246;
      sub_1A5FD4A5C();
      v89 = v318;
LABEL_76:
      (*(v89 + 8))(v87, v88);
      break;
    default:
      v324 = 0;
      sub_1A5C79568();
      v86 = v319;
      v85 = v320;
      sub_1A5FD49EC();
      v324 = v82;
      sub_1A5C795BC();
      sub_1A5FD4A5C();
      (*(v247 + 8))(v77, v75);
      break;
  }

  return (*(v321 + 8))(v86, v85);
}

uint64_t RequestDescriptor.hash(into:)()
{
  HIDWORD(v1) = v0[1];
  LODWORD(v1) = *v0 << 24;
  switch((v1 >> 27))
  {
    case 1u:
      MEMORY[0x1AC555420](1);
      sub_1A5C7AD08();
      break;
    case 2u:
      MEMORY[0x1AC555420](2);
      sub_1A5C7ACB4();
      break;
    case 3u:
      MEMORY[0x1AC555420](3);
      sub_1A5C7AC60();
      break;
    case 4u:
      MEMORY[0x1AC555420](4);
      sub_1A5C7AC0C();
      break;
    case 5u:
      MEMORY[0x1AC555420](5);
      sub_1A5C7ABB8();
      break;
    case 6u:
      MEMORY[0x1AC555420](6);
      sub_1A5C7AB64();
      break;
    case 7u:
      MEMORY[0x1AC555420](7);
      sub_1A5C7AB10();
      break;
    case 8u:
      MEMORY[0x1AC555420](8);
      sub_1A5C7AABC();
      break;
    case 9u:
      MEMORY[0x1AC555420](9);
      sub_1A5C7AA68();
      break;
    case 0xAu:
      MEMORY[0x1AC555420](10);
      sub_1A5C7AA14();
      break;
    case 0xBu:
      MEMORY[0x1AC555420](11);
      sub_1A5C7A9C0();
      break;
    case 0xCu:
      MEMORY[0x1AC555420](12);
      sub_1A5C7A96C();
      break;
    case 0xDu:
      MEMORY[0x1AC555420](13);
      sub_1A5C7A918();
      break;
    case 0xEu:
      MEMORY[0x1AC555420](14);
      sub_1A5C7A8C4();
      break;
    case 0xFu:
      MEMORY[0x1AC555420](15);
      sub_1A5C7A870();
      break;
    case 0x10u:
      MEMORY[0x1AC555420](16);
      sub_1A5C7A81C();
      break;
    case 0x11u:
      MEMORY[0x1AC555420](17);
      sub_1A5C7A7C8();
      break;
    case 0x12u:
      MEMORY[0x1AC555420](18);
      sub_1A5C7A774();
      break;
    case 0x13u:
      MEMORY[0x1AC555420](19);
      sub_1A5C7A720();
      break;
    case 0x14u:
      MEMORY[0x1AC555420](20);
      sub_1A5C7A6CC();
      break;
    case 0x15u:
      MEMORY[0x1AC555420](21);
      sub_1A5C7A678();
      break;
    case 0x16u:
      MEMORY[0x1AC555420](22);
      sub_1A5C7A624();
      break;
    case 0x17u:
      MEMORY[0x1AC555420](23);
      sub_1A5C7A5D0();
      break;
    case 0x18u:
      MEMORY[0x1AC555420](24);
      sub_1A5C7A57C();
      break;
    case 0x19u:
      MEMORY[0x1AC555420](25);
      sub_1A5C7A528();
      break;
    case 0x1Au:
      MEMORY[0x1AC555420](26);
      sub_1A5C7A4D4();
      break;
    case 0x1Bu:
      MEMORY[0x1AC555420](27);
      sub_1A5C7A480();
      break;
    case 0x1Cu:
      MEMORY[0x1AC555420](28);
      sub_1A5C7A42C();
      break;
    case 0x1Du:
      MEMORY[0x1AC555420](29);
      sub_1A5C7A3D8();
      break;
    case 0x1Eu:
      MEMORY[0x1AC555420](30);
      sub_1A5C7A384();
      break;
    case 0x1Fu:
      MEMORY[0x1AC555420](31);
      sub_1A5C7A330();
      break;
    case 0x20u:
      MEMORY[0x1AC555420](32);
      sub_1A5C7A2DC();
      break;
    case 0x21u:
      MEMORY[0x1AC555420](33);
      sub_1A5C7A288();
      break;
    case 0x22u:
      MEMORY[0x1AC555420](34);
      sub_1A5C7A234();
      break;
    case 0x23u:
      MEMORY[0x1AC555420](35);
      sub_1A5C7A1E0();
      break;
    case 0x24u:
      MEMORY[0x1AC555420](36);
      sub_1A5C7A18C();
      break;
    case 0x25u:
      MEMORY[0x1AC555420](37);
      sub_1A5C7A138();
      break;
    case 0x26u:
      MEMORY[0x1AC555420](38);
      sub_1A5C7A0E4();
      break;
    case 0x27u:
      MEMORY[0x1AC555420](39);
      sub_1A5C7A090();
      break;
    case 0x28u:
      MEMORY[0x1AC555420](40);
      sub_1A5C7A03C();
      break;
    case 0x29u:
      MEMORY[0x1AC555420](41);
      sub_1A5C79FE8();
      break;
    case 0x2Au:
      MEMORY[0x1AC555420](42);
      sub_1A5C79F94();
      break;
    case 0x2Bu:
      MEMORY[0x1AC555420](43);
      sub_1A5C79F40();
      break;
    case 0x2Cu:
      MEMORY[0x1AC555420](44);
      sub_1A5C79EEC();
      break;
    case 0x2Du:
      MEMORY[0x1AC555420](45);
      sub_1A5C79E98();
      break;
    case 0x2Eu:
      MEMORY[0x1AC555420](46);
      sub_1A5C79E44();
      break;
    case 0x2Fu:
      MEMORY[0x1AC555420](47);
      sub_1A5C79DF0();
      break;
    case 0x30u:
      MEMORY[0x1AC555420](48);
      sub_1A5C79D9C();
      break;
    case 0x31u:
      MEMORY[0x1AC555420](49);
      sub_1A5C79D48();
      break;
    case 0x32u:
      MEMORY[0x1AC555420](50);
      sub_1A5C79CF4();
      break;
    case 0x33u:
      MEMORY[0x1AC555420](51);
      sub_1A5C79CA0();
      break;
    case 0x34u:
      MEMORY[0x1AC555420](52);
      sub_1A5C79C4C();
      break;
    case 0x35u:
      MEMORY[0x1AC555420](53);
      sub_1A5C79BF8();
      break;
    case 0x36u:
      MEMORY[0x1AC555420](54);
      sub_1A5C79BA4();
      break;
    case 0x37u:
      MEMORY[0x1AC555420](55);
      sub_1A5C79B50();
      break;
    case 0x38u:
      MEMORY[0x1AC555420](56);
      sub_1A5C79AFC();
      break;
    case 0x39u:
      MEMORY[0x1AC555420](57);
      sub_1A5C79AA8();
      break;
    case 0x3Au:
      MEMORY[0x1AC555420](58);
      sub_1A5C79A54();
      break;
    case 0x3Bu:
      MEMORY[0x1AC555420](59);
      sub_1A5C79A00();
      break;
    case 0x3Cu:
      MEMORY[0x1AC555420](60);
      sub_1A5C799AC();
      break;
    case 0x3Du:
      MEMORY[0x1AC555420](61);
      sub_1A5C79958();
      break;
    case 0x3Eu:
      MEMORY[0x1AC555420](62);
      sub_1A5C79904();
      break;
    case 0x3Fu:
      MEMORY[0x1AC555420](63);
      sub_1A5C798B0();
      break;
    case 0x40u:
      MEMORY[0x1AC555420](64);
      sub_1A5C7985C();
      break;
    case 0x41u:
      MEMORY[0x1AC555420](65);
      sub_1A5C79808();
      break;
    case 0x42u:
      MEMORY[0x1AC555420](66);
      sub_1A5C797B4();
      break;
    case 0x43u:
      MEMORY[0x1AC555420](67);
      sub_1A5C79760();
      break;
    case 0x44u:
      MEMORY[0x1AC555420](68);
      sub_1A5C7970C();
      break;
    case 0x45u:
      MEMORY[0x1AC555420](69);
      sub_1A5C796B8();
      break;
    case 0x46u:
      MEMORY[0x1AC555420](70);
      sub_1A5C79664();
      break;
    case 0x47u:
      MEMORY[0x1AC555420](71);
      sub_1A5C79610();
      break;
    default:
      MEMORY[0x1AC555420](0);
      sub_1A5C7AD5C();
      break;
  }

  return sub_1A5FD3CBC();
}

uint64_t RequestDescriptor.hashValue.getter()
{
  sub_1A5FD4C1C();
  RequestDescriptor.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t RequestDescriptor.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v677 = a2;
  v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3968);
  v606 = *(v605 - 8);
  MEMORY[0x1EEE9AC00](v605);
  v672 = &v459 - v3;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3970);
  v603 = *(v604 - 8);
  MEMORY[0x1EEE9AC00](v604);
  v676 = &v459 - v4;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3978);
  v601 = *(v602 - 8);
  MEMORY[0x1EEE9AC00](v602);
  v671 = &v459 - v5;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3980);
  v599 = *(v600 - 8);
  MEMORY[0x1EEE9AC00](v600);
  v670 = &v459 - v6;
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3988);
  v597 = *(v598 - 8);
  MEMORY[0x1EEE9AC00](v598);
  v669 = &v459 - v7;
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3990);
  v595 = *(v596 - 8);
  MEMORY[0x1EEE9AC00](v596);
  v668 = &v459 - v8;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3998);
  v593 = *(v594 - 8);
  MEMORY[0x1EEE9AC00](v594);
  v667 = &v459 - v9;
  v592 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39A0);
  v591 = *(v592 - 8);
  MEMORY[0x1EEE9AC00](v592);
  v666 = &v459 - v10;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39A8);
  v589 = *(v590 - 8);
  MEMORY[0x1EEE9AC00](v590);
  v665 = &v459 - v11;
  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39B0);
  v587 = *(v588 - 8);
  MEMORY[0x1EEE9AC00](v588);
  v664 = &v459 - v12;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39B8);
  v585 = *(v586 - 8);
  MEMORY[0x1EEE9AC00](v586);
  v663 = &v459 - v13;
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39C0);
  v583 = *(v584 - 8);
  MEMORY[0x1EEE9AC00](v584);
  v662 = &v459 - v14;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39C8);
  v581 = *(v582 - 8);
  MEMORY[0x1EEE9AC00](v582);
  v661 = &v459 - v15;
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39D0);
  v579 = *(v580 - 8);
  MEMORY[0x1EEE9AC00](v580);
  v660 = &v459 - v16;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39D8);
  v577 = *(v578 - 8);
  MEMORY[0x1EEE9AC00](v578);
  v659 = &v459 - v17;
  v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39E0);
  v575 = *(v576 - 8);
  MEMORY[0x1EEE9AC00](v576);
  v658 = &v459 - v18;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39E8);
  v573 = *(v574 - 8);
  MEMORY[0x1EEE9AC00](v574);
  v657 = &v459 - v19;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39F0);
  v571 = *(v572 - 8);
  MEMORY[0x1EEE9AC00](v572);
  v656 = &v459 - v20;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F39F8);
  v569 = *(v570 - 8);
  MEMORY[0x1EEE9AC00](v570);
  v655 = &v459 - v21;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A00);
  v567 = *(v568 - 8);
  MEMORY[0x1EEE9AC00](v568);
  v654 = &v459 - v22;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A08);
  v565 = *(v566 - 8);
  MEMORY[0x1EEE9AC00](v566);
  v653 = &v459 - v23;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A10);
  v563 = *(v564 - 8);
  MEMORY[0x1EEE9AC00](v564);
  v652 = &v459 - v24;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A18);
  v561 = *(v562 - 8);
  MEMORY[0x1EEE9AC00](v562);
  v651 = &v459 - v25;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A20);
  v559 = *(v560 - 8);
  MEMORY[0x1EEE9AC00](v560);
  v650 = &v459 - v26;
  v558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A28);
  v557 = *(v558 - 8);
  MEMORY[0x1EEE9AC00](v558);
  v649 = &v459 - v27;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A30);
  v555 = *(v556 - 8);
  MEMORY[0x1EEE9AC00](v556);
  v648 = &v459 - v28;
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A38);
  v553 = *(v554 - 8);
  MEMORY[0x1EEE9AC00](v554);
  v647 = &v459 - v29;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A40);
  v551 = *(v552 - 8);
  MEMORY[0x1EEE9AC00](v552);
  v646 = &v459 - v30;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A48);
  v549 = *(v550 - 8);
  MEMORY[0x1EEE9AC00](v550);
  v645 = &v459 - v31;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A50);
  v547 = *(v548 - 8);
  MEMORY[0x1EEE9AC00](v548);
  v644 = &v459 - v32;
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A58);
  v545 = *(v546 - 8);
  MEMORY[0x1EEE9AC00](v546);
  v643 = &v459 - v33;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A60);
  v543 = *(v544 - 8);
  MEMORY[0x1EEE9AC00](v544);
  v642 = &v459 - v34;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A68);
  v541 = *(v542 - 8);
  MEMORY[0x1EEE9AC00](v542);
  v641 = &v459 - v35;
  v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A70);
  v539 = *(v540 - 8);
  MEMORY[0x1EEE9AC00](v540);
  v640 = &v459 - v36;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A78);
  v537 = *(v538 - 8);
  MEMORY[0x1EEE9AC00](v538);
  v639 = &v459 - v37;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A80);
  v535 = *(v536 - 8);
  MEMORY[0x1EEE9AC00](v536);
  v638 = &v459 - v38;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A88);
  v533 = *(v534 - 8);
  MEMORY[0x1EEE9AC00](v534);
  v637 = &v459 - v39;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A90);
  v531 = *(v532 - 8);
  MEMORY[0x1EEE9AC00](v532);
  v636 = &v459 - v40;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3A98);
  v529 = *(v530 - 8);
  MEMORY[0x1EEE9AC00](v530);
  v635 = &v459 - v41;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AA0);
  v527 = *(v528 - 8);
  MEMORY[0x1EEE9AC00](v528);
  v634 = &v459 - v42;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AA8);
  v525 = *(v526 - 8);
  MEMORY[0x1EEE9AC00](v526);
  v633 = &v459 - v43;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AB0);
  v523 = *(v524 - 8);
  MEMORY[0x1EEE9AC00](v524);
  v632 = &v459 - v44;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AB8);
  v521 = *(v522 - 8);
  MEMORY[0x1EEE9AC00](v522);
  v631 = &v459 - v45;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AC0);
  v519 = *(v520 - 8);
  MEMORY[0x1EEE9AC00](v520);
  v630 = &v459 - v46;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AC8);
  v517 = *(v518 - 8);
  MEMORY[0x1EEE9AC00](v518);
  v629 = &v459 - v47;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AD0);
  v515 = *(v516 - 8);
  MEMORY[0x1EEE9AC00](v516);
  v628 = &v459 - v48;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AD8);
  v513 = *(v514 - 8);
  MEMORY[0x1EEE9AC00](v514);
  v627 = &v459 - v49;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AE0);
  v511 = *(v512 - 8);
  MEMORY[0x1EEE9AC00](v512);
  v626 = &v459 - v50;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AE8);
  v509 = *(v510 - 8);
  MEMORY[0x1EEE9AC00](v510);
  v625 = &v459 - v51;
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AF0);
  v507 = *(v508 - 8);
  MEMORY[0x1EEE9AC00](v508);
  v624 = &v459 - v52;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3AF8);
  v505 = *(v506 - 8);
  MEMORY[0x1EEE9AC00](v506);
  v623 = &v459 - v53;
  v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B00);
  v503 = *(v504 - 8);
  MEMORY[0x1EEE9AC00](v504);
  v622 = &v459 - v54;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B08);
  v501 = *(v502 - 8);
  MEMORY[0x1EEE9AC00](v502);
  v621 = &v459 - v55;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B10);
  v499 = *(v500 - 8);
  MEMORY[0x1EEE9AC00](v500);
  v620 = &v459 - v56;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B18);
  v497 = *(v498 - 8);
  MEMORY[0x1EEE9AC00](v498);
  v619 = &v459 - v57;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B20);
  v495 = *(v496 - 8);
  MEMORY[0x1EEE9AC00](v496);
  v618 = &v459 - v58;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B28);
  v493 = *(v494 - 8);
  MEMORY[0x1EEE9AC00](v494);
  v615 = &v459 - v59;
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B30);
  v492 = *(v491 - 8);
  MEMORY[0x1EEE9AC00](v491);
  v675 = &v459 - v60;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B38);
  v489 = *(v490 - 8);
  MEMORY[0x1EEE9AC00](v490);
  v674 = &v459 - v61;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B40);
  v487 = *(v488 - 8);
  MEMORY[0x1EEE9AC00](v488);
  v617 = &v459 - v62;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B48);
  v485 = *(v486 - 8);
  MEMORY[0x1EEE9AC00](v486);
  v616 = &v459 - v63;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B50);
  v483 = *(v484 - 8);
  MEMORY[0x1EEE9AC00](v484);
  v673 = &v459 - v64;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B58);
  v481 = *(v482 - 8);
  MEMORY[0x1EEE9AC00](v482);
  v614 = &v459 - v65;
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B60);
  v479 = *(v480 - 8);
  MEMORY[0x1EEE9AC00](v480);
  v613 = &v459 - v66;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B68);
  v477 = *(v478 - 8);
  MEMORY[0x1EEE9AC00](v478);
  v612 = &v459 - v67;
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B70);
  v475 = *(v476 - 8);
  MEMORY[0x1EEE9AC00](v476);
  v611 = &v459 - v68;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B78);
  v473 = *(v474 - 8);
  MEMORY[0x1EEE9AC00](v474);
  v610 = &v459 - v69;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B80);
  v471 = *(v472 - 8);
  MEMORY[0x1EEE9AC00](v472);
  v609 = &v459 - v70;
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B88);
  v469 = *(v470 - 8);
  MEMORY[0x1EEE9AC00](v470);
  v608 = &v459 - v71;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B90);
  v467 = *(v468 - 8);
  MEMORY[0x1EEE9AC00](v468);
  v607 = &v459 - v72;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3B98);
  v465 = *(v466 - 8);
  MEMORY[0x1EEE9AC00](v466);
  v74 = &v459 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3BA0);
  v464 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v459 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F3BA8);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v459 - v80;
  v82 = a1[3];
  v678 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v82);
  sub_1A5C7667C();
  v83 = v679;
  sub_1A5FD4CCC();
  if (v83)
  {
LABEL_8:
    v104 = v678;
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v461 = v77;
  v460 = v75;
  v462 = v74;
  v84 = v673;
  v85 = v674;
  v86 = v675;
  v87 = v676;
  v463 = 0;
  v679 = v79;
  v88 = v677;
  v89 = sub_1A5FD49BC();
  if (*(v89 + 16) != 1 || (v90 = *(v89 + 32), v90 == 72))
  {
    v100 = v81;
    v101 = sub_1A5FD471C();
    swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
    *v103 = &type metadata for RequestDescriptor;
    sub_1A5FD48DC();
    sub_1A5FD470C();
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69E6AF8], v101);
    swift_willThrow();
    (*(v679 + 8))(v100, v78);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v459 = v89;
  switch(v90)
  {
    case 1:
      v680 = 1;
      sub_1A5C794C0();
      v281 = v462;
      v282 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v282)
      {
        goto LABEL_83;
      }

      v453 = v93;
      sub_1A5C7C4A8();
      v454 = v466;
      sub_1A5FD497C();
      (*(v465 + 8))(v281, v454);
      (*(v679 + 8))(v453, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = v680 | 8;
      goto LABEL_158;
    case 2:
      v680 = 2;
      sub_1A5C79418();
      v259 = v607;
      v260 = v463;
      sub_1A5FD48CC();
      if (v260)
      {
        (*(v679 + 8))(v81, v78);
        swift_unknownObjectRelease();
        v104 = v678;
        return __swift_destroy_boxed_opaque_existential_1(v104);
      }

      sub_1A5C7C454();
      v451 = v468;
      sub_1A5FD497C();
      v452 = v679;
      (*(v467 + 8))(v259, v451);
      (*(v452 + 8))(v81, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = v680 | 0x10;
      v458 = v678;
      goto LABEL_159;
    case 3:
      v680 = 3;
      sub_1A5C79370();
      v271 = v608;
      v272 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v272)
      {
        goto LABEL_83;
      }

      v273 = v93;
      sub_1A5C7C400();
      v274 = v470;
      sub_1A5FD497C();
      v275 = v679;
      (*(v469 + 8))(v271, v274);
      (*(v275 + 8))(v273, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 24;
      goto LABEL_158;
    case 4:
      v680 = 4;
      sub_1A5C792C8();
      v219 = v609;
      v220 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v220)
      {
        goto LABEL_83;
      }

      v221 = v93;
      sub_1A5C7C3AC();
      v222 = v472;
      sub_1A5FD497C();
      v223 = v679;
      (*(v471 + 8))(v219, v222);
      (*(v223 + 8))(v221, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      goto LABEL_157;
    case 5:
      v680 = 5;
      sub_1A5C79220();
      v308 = v610;
      v309 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v309)
      {
        goto LABEL_83;
      }

      v310 = v93;
      sub_1A5C7C358();
      v311 = v474;
      sub_1A5FD497C();
      v312 = v679;
      (*(v473 + 8))(v308, v311);
      (*(v312 + 8))(v310, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 40;
      goto LABEL_158;
    case 6:
      v680 = 6;
      sub_1A5C79178();
      v332 = v611;
      v333 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v333)
      {
        goto LABEL_83;
      }

      v334 = v93;
      sub_1A5C7C304();
      v335 = v476;
      sub_1A5FD497C();
      v336 = v679;
      (*(v475 + 8))(v332, v335);
      (*(v336 + 8))(v334, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 48;
      goto LABEL_158;
    case 7:
      v680 = 7;
      sub_1A5C790D0();
      v276 = v612;
      v277 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v277)
      {
        goto LABEL_83;
      }

      v278 = v93;
      sub_1A5C7C2B0();
      v279 = v478;
      sub_1A5FD497C();
      v280 = v679;
      (*(v477 + 8))(v276, v279);
      (*(v280 + 8))(v278, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 56;
      goto LABEL_158;
    case 8:
      v680 = 8;
      sub_1A5C79028();
      v346 = v613;
      v347 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v347)
      {
        goto LABEL_83;
      }

      v348 = v93;
      sub_1A5C7C25C();
      v349 = v480;
      sub_1A5FD497C();
      v350 = v679;
      (*(v479 + 8))(v346, v349);
      (*(v350 + 8))(v348, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 64;
      goto LABEL_158;
    case 9:
      v680 = 9;
      sub_1A5C78F80();
      v244 = v614;
      v245 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v245)
      {
        goto LABEL_83;
      }

      v246 = v93;
      sub_1A5C7C208();
      v247 = v482;
      sub_1A5FD497C();
      v248 = v679;
      (*(v481 + 8))(v244, v247);
      (*(v248 + 8))(v246, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 72;
      goto LABEL_158;
    case 10:
      v680 = 10;
      sub_1A5C78ED8();
      v342 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v342)
      {
        goto LABEL_83;
      }

      v343 = v93;
      sub_1A5C7C1B4();
      v344 = v484;
      sub_1A5FD497C();
      v345 = v679;
      (*(v483 + 8))(v84, v344);
      (*(v345 + 8))(v343, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 80;
      goto LABEL_158;
    case 11:
      v680 = 11;
      sub_1A5C78E30();
      v209 = v616;
      v210 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v210)
      {
        goto LABEL_83;
      }

      v211 = v93;
      sub_1A5C7C160();
      v212 = v486;
      sub_1A5FD497C();
      v213 = v679;
      (*(v485 + 8))(v209, v212);
      (*(v213 + 8))(v211, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 88;
      goto LABEL_158;
    case 12:
      v680 = 12;
      sub_1A5C78D88();
      v239 = v617;
      v240 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v240)
      {
        goto LABEL_83;
      }

      v241 = v93;
      sub_1A5C7C10C();
      v242 = v488;
      sub_1A5FD497C();
      v243 = v679;
      (*(v487 + 8))(v239, v242);
      (*(v243 + 8))(v241, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 96;
      goto LABEL_158;
    case 13:
      v680 = 13;
      sub_1A5C78CE0();
      v328 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v328)
      {
        goto LABEL_83;
      }

      v329 = v93;
      sub_1A5C7C0B8();
      v330 = v490;
      sub_1A5FD497C();
      v331 = v679;
      (*(v489 + 8))(v85, v330);
      (*(v331 + 8))(v329, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 104;
      goto LABEL_158;
    case 14:
      v680 = 14;
      sub_1A5C78C38();
      v189 = v86;
      v190 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v190)
      {
        goto LABEL_83;
      }

      v191 = v93;
      sub_1A5C7C064();
      v192 = v491;
      sub_1A5FD497C();
      v193 = v679;
      (*(v492 + 8))(v189, v192);
      (*(v193 + 8))(v191, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 112;
      goto LABEL_158;
    case 15:
      v680 = 15;
      sub_1A5C78B90();
      v261 = v615;
      v262 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v262)
      {
        goto LABEL_83;
      }

      v263 = v93;
      sub_1A5C7C010();
      v264 = v494;
      sub_1A5FD497C();
      v265 = v679;
      (*(v493 + 8))(v261, v264);
      (*(v265 + 8))(v263, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 120;
      goto LABEL_158;
    case 16:
      v680 = 16;
      sub_1A5C78AE8();
      v174 = v618;
      v175 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v175)
      {
        goto LABEL_83;
      }

      v176 = v93;
      sub_1A5C7BFBC();
      v177 = v496;
      sub_1A5FD497C();
      v178 = v679;
      (*(v495 + 8))(v174, v177);
      (*(v178 + 8))(v176, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = 0x80;
      goto LABEL_158;
    case 17:
      v680 = 17;
      sub_1A5C78A40();
      v288 = v619;
      v289 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v289)
      {
        goto LABEL_83;
      }

      v290 = v93;
      sub_1A5C7BF68();
      v291 = v498;
      sub_1A5FD497C();
      v292 = v679;
      (*(v497 + 8))(v288, v291);
      (*(v292 + 8))(v290, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -120;
      goto LABEL_158;
    case 18:
      v680 = 18;
      sub_1A5C78998();
      v337 = v620;
      v338 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v338)
      {
        goto LABEL_83;
      }

      v339 = v93;
      sub_1A5C7BF14();
      v340 = v500;
      sub_1A5FD497C();
      v341 = v679;
      (*(v499 + 8))(v337, v340);
      (*(v341 + 8))(v339, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -112;
      goto LABEL_158;
    case 19:
      v680 = 19;
      sub_1A5C788F0();
      v376 = v621;
      v377 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v377)
      {
        goto LABEL_83;
      }

      v378 = v93;
      sub_1A5C7BEC0();
      v379 = v502;
      sub_1A5FD497C();
      v380 = v679;
      (*(v501 + 8))(v376, v379);
      (*(v380 + 8))(v378, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -104;
      goto LABEL_158;
    case 20:
      v680 = 20;
      sub_1A5C78848();
      v298 = v622;
      v299 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v299)
      {
        goto LABEL_83;
      }

      v300 = v93;
      sub_1A5C7BE6C();
      v301 = v504;
      sub_1A5FD497C();
      v302 = v679;
      (*(v503 + 8))(v298, v301);
      (*(v302 + 8))(v300, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = v680 | 0xA0;
      goto LABEL_158;
    case 21:
      v680 = 21;
      sub_1A5C787A0();
      v323 = v623;
      v324 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v324)
      {
        goto LABEL_83;
      }

      v325 = v93;
      sub_1A5C7BE18();
      v326 = v506;
      sub_1A5FD497C();
      v327 = v679;
      (*(v505 + 8))(v323, v326);
      (*(v327 + 8))(v325, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -88;
      goto LABEL_158;
    case 22:
      v680 = 22;
      sub_1A5C786F8();
      v366 = v624;
      v367 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v367)
      {
        goto LABEL_83;
      }

      v368 = v93;
      sub_1A5C7BDC4();
      v369 = v508;
      sub_1A5FD497C();
      v370 = v679;
      (*(v507 + 8))(v366, v369);
      (*(v370 + 8))(v368, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -80;
      goto LABEL_158;
    case 23:
      v680 = 23;
      sub_1A5C78650();
      v396 = v625;
      v397 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v397)
      {
        goto LABEL_83;
      }

      v398 = v93;
      sub_1A5C7BD70();
      v399 = v510;
      sub_1A5FD497C();
      v400 = v679;
      (*(v509 + 8))(v396, v399);
      (*(v400 + 8))(v398, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = v680 | 0xB8;
      goto LABEL_158;
    case 24:
      v680 = 24;
      sub_1A5C785A8();
      v254 = v626;
      v255 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v255)
      {
        goto LABEL_83;
      }

      v256 = v93;
      sub_1A5C7BD1C();
      v257 = v512;
      sub_1A5FD497C();
      v258 = v679;
      (*(v511 + 8))(v254, v257);
      (*(v258 + 8))(v256, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -64;
      goto LABEL_158;
    case 25:
      v680 = 25;
      sub_1A5C78500();
      v249 = v627;
      v250 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v250)
      {
        goto LABEL_83;
      }

      v251 = v93;
      sub_1A5C7BCC8();
      v252 = v514;
      sub_1A5FD497C();
      v253 = v679;
      (*(v513 + 8))(v249, v252);
      (*(v253 + 8))(v251, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = v680 | 0xC8;
      goto LABEL_158;
    case 26:
      v680 = 26;
      sub_1A5C78458();
      v416 = v628;
      v417 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v417)
      {
        goto LABEL_83;
      }

      v418 = v93;
      sub_1A5C7BC74();
      v419 = v516;
      sub_1A5FD497C();
      v420 = v679;
      (*(v515 + 8))(v416, v419);
      (*(v420 + 8))(v418, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -48;
      goto LABEL_158;
    case 27:
      v680 = 27;
      sub_1A5C783B0();
      v164 = v629;
      v165 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v165)
      {
        goto LABEL_83;
      }

      v166 = v93;
      sub_1A5C7BC20();
      v167 = v518;
      sub_1A5FD497C();
      v168 = v679;
      (*(v517 + 8))(v164, v167);
      (*(v168 + 8))(v166, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -40;
      goto LABEL_158;
    case 28:
      v680 = 28;
      sub_1A5C78308();
      v401 = v630;
      v402 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v402)
      {
        goto LABEL_83;
      }

      v403 = v93;
      sub_1A5C7BBCC();
      v404 = v520;
      sub_1A5FD497C();
      v405 = v679;
      (*(v519 + 8))(v401, v404);
      (*(v405 + 8))(v403, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -32;
      goto LABEL_158;
    case 29:
      v680 = 29;
      sub_1A5C78260();
      v406 = v631;
      v407 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v407)
      {
        goto LABEL_83;
      }

      v408 = v93;
      sub_1A5C7BB78();
      v409 = v522;
      sub_1A5FD497C();
      v410 = v679;
      (*(v521 + 8))(v406, v409);
      (*(v410 + 8))(v408, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -24;
      goto LABEL_158;
    case 30:
      v680 = 30;
      sub_1A5C781B8();
      v351 = v632;
      v352 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v352)
      {
        goto LABEL_83;
      }

      v353 = v93;
      sub_1A5C7BB24();
      v354 = v524;
      sub_1A5FD497C();
      v355 = v679;
      (*(v523 + 8))(v351, v354);
      (*(v355 + 8))(v353, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -16;
      goto LABEL_158;
    case 31:
      v680 = 31;
      sub_1A5C78110();
      v283 = v633;
      v284 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v284)
      {
        goto LABEL_83;
      }

      v285 = v93;
      sub_1A5C7BAD0();
      v286 = v526;
      sub_1A5FD497C();
      v287 = v679;
      (*(v525 + 8))(v283, v286);
      (*(v287 + 8))(v285, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = -8;
      goto LABEL_158;
    case 32:
      v680 = 32;
      sub_1A5C78068();
      v356 = v634;
      v357 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v357)
      {
        goto LABEL_83;
      }

      v358 = v93;
      sub_1A5C7BA7C();
      v359 = v528;
      sub_1A5FD497C();
      v360 = v679;
      (*(v527 + 8))(v356, v359);
      (*(v360 + 8))(v358, v78);
      swift_unknownObjectRelease();
      v99 = 0;
      v98 = 1;
      goto LABEL_158;
    case 33:
      v680 = 33;
      sub_1A5C77FC0();
      v194 = v635;
      v195 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v195)
      {
        goto LABEL_83;
      }

      v196 = v93;
      sub_1A5C7BA28();
      v197 = v530;
      sub_1A5FD497C();
      v198 = v679;
      (*(v529 + 8))(v194, v197);
      (*(v198 + 8))(v196, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 8;
      goto LABEL_158;
    case 34:
      v680 = 34;
      sub_1A5C77F18();
      v169 = v636;
      v170 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v170)
      {
        goto LABEL_83;
      }

      v171 = v93;
      sub_1A5C7B9D4();
      v172 = v532;
      sub_1A5FD497C();
      v173 = v679;
      (*(v531 + 8))(v169, v172);
      (*(v173 + 8))(v171, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 16;
      goto LABEL_158;
    case 35:
      v680 = 35;
      sub_1A5C77E70();
      v149 = v637;
      v150 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v150)
      {
        goto LABEL_83;
      }

      v151 = v93;
      sub_1A5C7B980();
      v152 = v534;
      sub_1A5FD497C();
      v153 = v679;
      (*(v533 + 8))(v149, v152);
      (*(v153 + 8))(v151, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 24;
      goto LABEL_158;
    case 36:
      v680 = 36;
      sub_1A5C77DC8();
      v154 = v638;
      v155 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v155)
      {
        goto LABEL_83;
      }

      v156 = v93;
      sub_1A5C7B92C();
      v157 = v536;
      sub_1A5FD497C();
      v158 = v679;
      (*(v535 + 8))(v154, v157);
      (*(v158 + 8))(v156, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x20;
      v98 = 1;
      goto LABEL_158;
    case 37:
      v680 = 37;
      sub_1A5C77D20();
      v129 = v639;
      v130 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v130)
      {
        goto LABEL_83;
      }

      v131 = v93;
      sub_1A5C7B8D8();
      v132 = v538;
      sub_1A5FD497C();
      v133 = v679;
      (*(v537 + 8))(v129, v132);
      (*(v133 + 8))(v131, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 40;
      goto LABEL_158;
    case 38:
      v680 = 38;
      sub_1A5C77C78();
      v411 = v640;
      v412 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v412)
      {
        goto LABEL_83;
      }

      v413 = v93;
      sub_1A5C7B884();
      v414 = v540;
      sub_1A5FD497C();
      v415 = v679;
      (*(v539 + 8))(v411, v414);
      (*(v415 + 8))(v413, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x30;
      v98 = 1;
      goto LABEL_158;
    case 39:
      v680 = 39;
      sub_1A5C77BD0();
      v371 = v641;
      v372 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v372)
      {
        goto LABEL_83;
      }

      v373 = v93;
      sub_1A5C7B830();
      v374 = v542;
      sub_1A5FD497C();
      v375 = v679;
      (*(v541 + 8))(v371, v374);
      (*(v375 + 8))(v373, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x38;
      v98 = 1;
      goto LABEL_158;
    case 40:
      v680 = 40;
      sub_1A5C77B28();
      v224 = v642;
      v225 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v225)
      {
        goto LABEL_83;
      }

      v226 = v93;
      sub_1A5C7B7DC();
      v227 = v544;
      sub_1A5FD497C();
      v228 = v679;
      (*(v543 + 8))(v224, v227);
      (*(v228 + 8))(v226, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 64;
      goto LABEL_158;
    case 41:
      v680 = 41;
      sub_1A5C77A80();
      v293 = v643;
      v294 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v294)
      {
        goto LABEL_83;
      }

      v295 = v93;
      sub_1A5C7B788();
      v296 = v546;
      sub_1A5FD497C();
      v297 = v679;
      (*(v545 + 8))(v293, v296);
      (*(v297 + 8))(v295, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 72;
      goto LABEL_158;
    case 42:
      v680 = 42;
      sub_1A5C779D8();
      v386 = v644;
      v387 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v387)
      {
        goto LABEL_83;
      }

      v388 = v93;
      sub_1A5C7B734();
      v389 = v548;
      sub_1A5FD497C();
      v390 = v679;
      (*(v547 + 8))(v386, v389);
      (*(v390 + 8))(v388, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 80;
      goto LABEL_158;
    case 43:
      v680 = 43;
      sub_1A5C77930();
      v115 = v645;
      v116 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v116)
      {
        goto LABEL_83;
      }

      v117 = v93;
      sub_1A5C7B6E0();
      v118 = v550;
      sub_1A5FD497C();
      v119 = v679;
      (*(v549 + 8))(v115, v118);
      (*(v119 + 8))(v117, v78);
      swift_unknownObjectRelease();
      v120 = v680;
      v121 = 88;
      goto LABEL_150;
    case 44:
      v680 = 44;
      sub_1A5C77888();
      v184 = v646;
      v185 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v185)
      {
        goto LABEL_83;
      }

      v186 = v93;
      sub_1A5C7B68C();
      v187 = v552;
      sub_1A5FD497C();
      v188 = v679;
      (*(v551 + 8))(v184, v187);
      (*(v188 + 8))(v186, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x60;
      v98 = 1;
      goto LABEL_158;
    case 45:
      v680 = 45;
      sub_1A5C777E0();
      v361 = v647;
      v362 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v362)
      {
        goto LABEL_83;
      }

      v363 = v93;
      sub_1A5C7B638();
      v364 = v554;
      sub_1A5FD497C();
      v365 = v679;
      (*(v553 + 8))(v361, v364);
      (*(v365 + 8))(v363, v78);
      swift_unknownObjectRelease();
      v120 = v680;
      v121 = 104;
      goto LABEL_150;
    case 46:
      v680 = 46;
      sub_1A5C77738();
      v436 = v648;
      v437 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v437)
      {
        goto LABEL_83;
      }

      v438 = v93;
      sub_1A5C7B5E4();
      v439 = v556;
      sub_1A5FD497C();
      v440 = v679;
      (*(v555 + 8))(v436, v439);
      (*(v440 + 8))(v438, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 112;
      goto LABEL_158;
    case 47:
      v680 = 47;
      sub_1A5C77690();
      v139 = v649;
      v140 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v140)
      {
        goto LABEL_83;
      }

      v141 = v93;
      sub_1A5C7B590();
      v142 = v558;
      sub_1A5FD497C();
      v143 = v679;
      (*(v557 + 8))(v139, v142);
      (*(v143 + 8))(v141, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 120;
      goto LABEL_158;
    case 48:
      v680 = 48;
      sub_1A5C775E8();
      v199 = v650;
      v200 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v200)
      {
        goto LABEL_83;
      }

      v201 = v93;
      sub_1A5C7B53C();
      v202 = v560;
      sub_1A5FD497C();
      v203 = v679;
      (*(v559 + 8))(v199, v202);
      (*(v203 + 8))(v201, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = 0x80;
      goto LABEL_158;
    case 49:
      v680 = 49;
      sub_1A5C77540();
      v214 = v651;
      v215 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v215)
      {
        goto LABEL_83;
      }

      v216 = v93;
      sub_1A5C7B4E8();
      v217 = v562;
      sub_1A5FD497C();
      v218 = v679;
      (*(v561 + 8))(v214, v217);
      (*(v218 + 8))(v216, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -120;
      goto LABEL_158;
    case 50:
      v680 = 50;
      sub_1A5C77498();
      v110 = v652;
      v111 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v111)
      {
        goto LABEL_83;
      }

      v112 = v93;
      sub_1A5C7B494();
      v113 = v564;
      sub_1A5FD497C();
      v114 = v679;
      (*(v563 + 8))(v110, v113);
      (*(v114 + 8))(v112, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -112;
      goto LABEL_158;
    case 51:
      v680 = 51;
      sub_1A5C773F0();
      v441 = v653;
      v442 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v442)
      {
        goto LABEL_83;
      }

      v443 = v93;
      sub_1A5C7B440();
      v444 = v566;
      sub_1A5FD497C();
      v445 = v679;
      (*(v565 + 8))(v441, v444);
      (*(v445 + 8))(v443, v78);
      swift_unknownObjectRelease();
      v120 = v680;
      v121 = -104;
LABEL_150:
      v99 = v120 | v121;
      v98 = 1;
      goto LABEL_158;
    case 52:
      v680 = 52;
      sub_1A5C77348();
      v431 = v654;
      v432 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v432)
      {
        goto LABEL_83;
      }

      v433 = v93;
      sub_1A5C7B3EC();
      v434 = v568;
      sub_1A5FD497C();
      v435 = v679;
      (*(v567 + 8))(v431, v434);
      (*(v435 + 8))(v433, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -96;
      goto LABEL_158;
    case 53:
      v680 = 53;
      sub_1A5C772A0();
      v134 = v655;
      v135 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v135)
      {
        goto LABEL_83;
      }

      v136 = v93;
      sub_1A5C7B398();
      v137 = v570;
      sub_1A5FD497C();
      v138 = v679;
      (*(v569 + 8))(v134, v137);
      (*(v138 + 8))(v136, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -88;
      goto LABEL_158;
    case 54:
      v680 = 54;
      sub_1A5C771F8();
      v421 = v656;
      v422 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v422)
      {
        goto LABEL_83;
      }

      v423 = v93;
      sub_1A5C7B344();
      v424 = v572;
      sub_1A5FD497C();
      v425 = v679;
      (*(v571 + 8))(v421, v424);
      (*(v425 + 8))(v423, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -80;
      goto LABEL_158;
    case 55:
      v680 = 55;
      sub_1A5C77150();
      v426 = v657;
      v427 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v427)
      {
        goto LABEL_83;
      }

      v428 = v93;
      sub_1A5C7B2F0();
      v429 = v574;
      sub_1A5FD497C();
      v430 = v679;
      (*(v573 + 8))(v426, v429);
      (*(v430 + 8))(v428, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -72;
      goto LABEL_158;
    case 56:
      v680 = 56;
      sub_1A5C770A8();
      v144 = v658;
      v145 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v145)
      {
        goto LABEL_83;
      }

      v146 = v93;
      sub_1A5C7B29C();
      v147 = v576;
      sub_1A5FD497C();
      v148 = v679;
      (*(v575 + 8))(v144, v147);
      (*(v148 + 8))(v146, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -64;
      goto LABEL_158;
    case 57:
      v680 = 57;
      sub_1A5C77000();
      v381 = v659;
      v382 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v382)
      {
        goto LABEL_83;
      }

      v383 = v93;
      sub_1A5C7B248();
      v384 = v578;
      sub_1A5FD497C();
      v385 = v679;
      (*(v577 + 8))(v381, v384);
      (*(v385 + 8))(v383, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -56;
      goto LABEL_158;
    case 58:
      v680 = 58;
      sub_1A5C76F58();
      v204 = v660;
      v205 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v205)
      {
        goto LABEL_83;
      }

      v206 = v93;
      sub_1A5C7B1F4();
      v207 = v580;
      sub_1A5FD497C();
      v208 = v679;
      (*(v579 + 8))(v204, v207);
      (*(v208 + 8))(v206, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -48;
      goto LABEL_158;
    case 59:
      v680 = 59;
      sub_1A5C76EB0();
      v391 = v661;
      v392 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v392)
      {
        goto LABEL_83;
      }

      v393 = v93;
      sub_1A5C7B1A0();
      v394 = v582;
      sub_1A5FD497C();
      v395 = v679;
      (*(v581 + 8))(v391, v394);
      (*(v395 + 8))(v393, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -40;
      goto LABEL_158;
    case 60:
      v680 = 60;
      sub_1A5C76E08();
      v229 = v662;
      v230 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v230)
      {
        goto LABEL_83;
      }

      v231 = v93;
      sub_1A5C7B14C();
      v232 = v584;
      sub_1A5FD497C();
      v233 = v679;
      (*(v583 + 8))(v229, v232);
      (*(v233 + 8))(v231, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -32;
      goto LABEL_158;
    case 61:
      v680 = 61;
      sub_1A5C76D60();
      v303 = v663;
      v304 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v304)
      {
        goto LABEL_83;
      }

      v305 = v93;
      sub_1A5C7B0F8();
      v306 = v586;
      sub_1A5FD497C();
      v307 = v679;
      (*(v585 + 8))(v303, v306);
      (*(v307 + 8))(v305, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -24;
      goto LABEL_158;
    case 62:
      v680 = 62;
      sub_1A5C76CB8();
      v318 = v664;
      v319 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v319)
      {
        goto LABEL_83;
      }

      v320 = v93;
      sub_1A5C7B0A4();
      v321 = v588;
      sub_1A5FD497C();
      v322 = v679;
      (*(v587 + 8))(v318, v321);
      (*(v322 + 8))(v320, v78);
      swift_unknownObjectRelease();
      v98 = 1;
      v99 = -16;
      goto LABEL_158;
    case 63:
      v680 = 63;
      sub_1A5C76C10();
      v266 = v665;
      v267 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v267)
      {
        goto LABEL_83;
      }

      v268 = v93;
      sub_1A5C7B050();
      v269 = v590;
      sub_1A5FD497C();
      v270 = v679;
      (*(v589 + 8))(v266, v269);
      (*(v270 + 8))(v268, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0xF8;
      v98 = 1;
      goto LABEL_158;
    case 64:
      v680 = 64;
      sub_1A5C76B68();
      v234 = v666;
      v235 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v235)
      {
        goto LABEL_83;
      }

      v236 = v93;
      sub_1A5C7AFFC();
      v237 = v592;
      sub_1A5FD497C();
      v238 = v679;
      (*(v591 + 8))(v234, v237);
      (*(v238 + 8))(v236, v78);
      swift_unknownObjectRelease();
      v99 = 0;
      v98 = 2;
      goto LABEL_158;
    case 65:
      v680 = 65;
      sub_1A5C76AC0();
      v313 = v667;
      v314 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v314)
      {
        goto LABEL_83;
      }

      v315 = v93;
      sub_1A5C7AFA8();
      v316 = v594;
      sub_1A5FD497C();
      v317 = v679;
      (*(v593 + 8))(v313, v316);
      (*(v317 + 8))(v315, v78);
      swift_unknownObjectRelease();
      v98 = 2;
      v99 = 8;
      goto LABEL_158;
    case 66:
      v680 = 66;
      sub_1A5C76A18();
      v122 = v668;
      v123 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v123)
      {
        goto LABEL_83;
      }

      v124 = v93;
      sub_1A5C7AF54();
      v125 = v596;
      sub_1A5FD497C();
      v126 = v679;
      (*(v595 + 8))(v122, v125);
      (*(v126 + 8))(v124, v78);
      swift_unknownObjectRelease();
      v98 = 2;
      v99 = 16;
      goto LABEL_158;
    case 67:
      v680 = 67;
      sub_1A5C76970();
      v179 = v669;
      v180 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v180)
      {
        goto LABEL_83;
      }

      v181 = v93;
      sub_1A5C7AF00();
      v182 = v598;
      sub_1A5FD497C();
      v183 = v679;
      (*(v597 + 8))(v179, v182);
      (*(v183 + 8))(v181, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x18;
      v98 = 2;
      goto LABEL_158;
    case 68:
      v680 = 68;
      sub_1A5C768C8();
      v446 = v670;
      v447 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v447)
      {
        goto LABEL_83;
      }

      v455 = v93;
      sub_1A5C7AEAC();
      v456 = v600;
      sub_1A5FD497C();
      v457 = v679;
      (*(v599 + 8))(v446, v456);
      (*(v457 + 8))(v455, v78);
      swift_unknownObjectRelease();
      v98 = 2;
LABEL_157:
      v99 = 32;
      goto LABEL_158;
    case 69:
      v680 = 69;
      sub_1A5C76820();
      v159 = v671;
      v160 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v160)
      {
        goto LABEL_83;
      }

      v161 = v93;
      sub_1A5C7AE58();
      v162 = v602;
      sub_1A5FD497C();
      v163 = v679;
      (*(v601 + 8))(v159, v162);
      (*(v163 + 8))(v161, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x28;
      v98 = 2;
      goto LABEL_158;
    case 70:
      v680 = 70;
      sub_1A5C76778();
      v106 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v106)
      {
        goto LABEL_83;
      }

      v107 = v93;
      sub_1A5C7AE04();
      v108 = v604;
      sub_1A5FD497C();
      v109 = v679;
      (*(v603 + 8))(v87, v108);
      (*(v109 + 8))(v107, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x30;
      v98 = 2;
      goto LABEL_158;
    case 71:
      v680 = 71;
      sub_1A5C766D0();
      v127 = v672;
      v128 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v128)
      {
        goto LABEL_83;
      }

      v448 = v93;
      sub_1A5C7ADB0();
      v449 = v605;
      sub_1A5FD497C();
      v450 = v679;
      (*(v606 + 8))(v127, v449);
      (*(v450 + 8))(v448, v78);
      swift_unknownObjectRelease();
      v99 = v680 | 0x38;
      v98 = 2;
      goto LABEL_158;
    default:
      v680 = 0;
      sub_1A5C79568();
      v91 = v461;
      v92 = v463;
      sub_1A5FD48CC();
      v93 = v81;
      v94 = v678;
      if (v92)
      {
LABEL_83:
        (*(v679 + 8))(v93, v78);
        swift_unknownObjectRelease();
        v104 = v94;
        return __swift_destroy_boxed_opaque_existential_1(v104);
      }

      v95 = v93;
      sub_1A5C7C4FC();
      v96 = v460;
      sub_1A5FD497C();
      v97 = v679;
      (*(v464 + 8))(v91, v96);
      (*(v97 + 8))(v95, v78);
      swift_unknownObjectRelease();
      v98 = 0;
      v99 = v680;
LABEL_158:
      v458 = v94;
LABEL_159:
      *v88 = v99;
      v88[1] = v98;
      result = __swift_destroy_boxed_opaque_existential_1(v458);
      break;
  }

  return result;
}