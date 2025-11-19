uint64_t sub_181F4D100(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWProtocolWebSocket.Response.Status(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NWProtocolWebSocket.Response.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t BrowseResult.Change.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v15 = *(swift_getTupleTypeMetadata2() + 48);
      v16 = *(v2 + 32);
      v16(v7, v11, v1);
      v16(v4, &v11[v15], v1);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x6465676E6168632ELL, 0xE900000000000028);
      sub_182AD4228();
      MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
      sub_182AD4228();
      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      v14 = v19;
      v17 = *(v2 + 8);
      v17(v4, v1);
      v17(v7, v1);
      return v14;
    }

    (*(v2 + 32))(v7, v11, v1);
    v19 = 0;
    v20 = 0xE000000000000000;
    MEMORY[0x1865D9CA0](0x6465766F6D65722ELL, 0xE900000000000028);
    sub_182AD4228();
  }

  else
  {
    (*(v2 + 32))(v7, v11, v1);
    v19 = 0;
    v20 = 0xE000000000000000;
    MEMORY[0x1865D9CA0](0x2864656464612ELL, 0xE700000000000000);
    sub_182AD4228();
    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  }

  v14 = v19;
  (*(v2 + 8))(v7, v1);
  return v14;
}

uint64_t BrowseResult.endpoints.getter()
{
  sub_181F5B674();
}

uint64_t BrowseResult.changes.getter()
{
  sub_181F5B67C();
}

uint64_t BrowseResult.init(endpoints:changes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t BrowseResult.description.getter()
{
  v1 = type metadata accessor for BrowseResult.Change();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - v4;
  v6 = *(v0 + 8);

  if (!sub_182AD3478())
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530);
    sub_181F5B69C();
    v19 = sub_182AD2EC8();

    return v19;
  }

  v7 = 0;
  v24 = (v2 + 16);
  v21 = v3;
  v22 = (v2 + 8);
  v8 = MEMORY[0x1E69E7CC0];
  v23 = v2;
  while (1)
  {
    v9 = sub_182AD3438();
    sub_182AD33E8();
    if ((v9 & 1) == 0)
    {
      break;
    }

    result = (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v1);
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_18;
    }

LABEL_5:
    v12 = BrowseResult.Change.description.getter(v1);
    v14 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_181E59474(0, *(v8 + 2) + 1, 1, v8);
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    if (v16 >= v15 >> 1)
    {
      v8 = sub_181E59474((v15 > 1), v16 + 1, 1, v8);
    }

    (*v22)(v5, v1);
    *(v8 + 2) = v16 + 1;
    v17 = &v8[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
    ++v7;
    v18 = v11 == sub_182AD3478();
    v2 = v23;
    if (v18)
    {

      goto LABEL_17;
    }
  }

  result = sub_182AD3C18();
  if (v21 != 8)
  {
    goto LABEL_19;
  }

  v25 = result;
  (*v24)(v5, &v25, v1);
  result = swift_unknownObjectRelease();
  v11 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_5;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t BrowseResult.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t BrowseResult.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = sub_182AD3478();
  v7 = v2[1];
  if (v7 != v6)
  {
    v10 = sub_182AD3438();
    sub_182AD33E8();
    if (v10)
    {
      v11 = *(v5 - 8);
      result = (*(v11 + 16))(a2, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, v5);
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
LABEL_7:
        v2[1] = v12;
        return (*(v11 + 56))(a2, 0, 1, v5);
      }
    }

    else
    {
      result = sub_182AD3C18();
      v11 = *(v5 - 8);
      if (*(v11 + 64) != 8)
      {
LABEL_12:
        __break(1u);
        return result;
      }

      v13 = result;
      (*(v11 + 16))(a2, &v13, v5);
      result = swift_unknownObjectRelease();
      v12 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = *(*(v5 - 8) + 56);

  return v8(a2, 1, 1, v5);
}

Swift::Int __swiftcall BrowseResult.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181F4DC98@<X0>(void *a1@<X8>)
{
  BrowseResult.makeIterator()(a1);
}

uint64_t sub_181F4DCD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_181F4DD30()
{
  swift_getWitnessTable();
  v0 = sub_181F5B700();

  return v0;
}

uint64_t sub_181F4DDCC@<X0>(uint64_t *a1@<X8>)
{
  result = BrowseResult.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_181F4DDF4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_181F4DEC4(v6, *a2, a3);
  return sub_181F4DE7C;
}

void sub_181F4DE7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_181F4DEC4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_182AD3498();
  return sub_181F4DF98;
}

void sub_181F4DF98(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_181F4DFE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

void *sub_181F4E0E0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_181F4E0F8(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_181F4E12C()
{
  sub_181F5B674();
}

uint64_t sub_181F4E154()
{
  sub_181F5B67C();
}

uint64_t sub_181F4E180()
{
  swift_getWitnessTable();

  return sub_182AD3778();
}

uint64_t sub_181F4E2D8(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = a3;
  v49 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  v44 = a2;
  v6 = v4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD36C8();
  v45 = *(v7 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = a2[2];
  (*(v10 + 16))(v13, v21 + *(*v21 + 96), v6, v18);
  (*(v3 + 32))(v6, v3);
  (*(v10 + 8))(v13, v6);
  v47 = v20;
  sub_181D8E118(v20, v16, type metadata accessor for NWBrowser.Descriptor);
  v22 = *(v21 + *(*v21 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v23 = sub_181F9A300(v16, v22);

  v24 = swift_allocObject();
  v24[2] = v6;
  v24[3] = v3;
  v40 = v6;
  v41 = v3;
  v25 = v3;
  v43 = v23;
  v24[4] = v23;

  v26 = v49;
  sub_182AD3688();
  v27 = v45;
  v42 = *(v45 + 16);
  v28 = v9;
  v42(v9, v26, v7);
  v29 = *(v27 + 80);
  v30 = (v29 + 32) & ~v29;
  v46 += 7;
  v31 = (v46 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v6;
  *(v32 + 24) = v25;
  v45 = *(v27 + 32);
  v33 = v28;
  (v45)(v32 + v30, v28, v7);
  v34 = v44;
  *(v32 + v31) = v44;

  sub_181AA39C0(sub_181F5E1E4);
  NWBrowser.stateUpdateHandler.setter(sub_181F5E1E4, v32);

  v42(v33, v49, v7);
  v35 = (v29 + 40) & ~v29;
  v36 = (v46 + v35) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v41;
  v37[2] = v40;
  v37[3] = v38;
  v37[4] = v34;
  (v45)(v37 + v35, v33, v7);
  *(v37 + v36) = v48;

  sub_181AA39C0(sub_181F5E57C);
  NWBrowser.browseResultsChangedHandler.setter(sub_181F5E57C, v37);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWBrowser.start(queue:)(qword_1EA8433A8);

  return sub_181F5E1FC(v47, type metadata accessor for NWBrowser.Descriptor);
}

uint64_t Browser1.AsyncSequenceBrowseResults.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181F4E870@<X0>(uint64_t a1@<X8>)
{
  Browser1.AsyncSequenceBrowseResults.makeAsyncIterator()(a1);
}

uint64_t sub_181F4E908(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_181F5BBD4(a1, a2, a3);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_181F4E990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = a3();

  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_181F4EA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_allocObject();
  v7 = a3(a1, a2);

  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_181F4EAF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = (v3 + *(*v3 + 112));
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  a3(v7, v6);
}

uint64_t sub_181F4EB70@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v2 = *v1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = sub_182AD3698();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = sub_182AD3728();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8790], v3, v9);
  v14 = v1;
  v15 = v2;
  sub_182AD3738();
  sub_182AD35B8();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_181F4EDC0(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = a3;
  v49 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  v44 = a2;
  v6 = v4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD36C8();
  v45 = *(v7 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = a2[2];
  (*(v10 + 16))(v13, v21 + *(*v21 + 96), v6, v18);
  (*(v3 + 32))(v6, v3);
  (*(v10 + 8))(v13, v6);
  v47 = v20;
  sub_181D8E118(v20, v16, type metadata accessor for NWBrowser.Descriptor);
  v22 = *(v21 + *(*v21 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v23 = sub_181F9A300(v16, v22);

  v24 = swift_allocObject();
  v24[2] = v6;
  v24[3] = v3;
  v40 = v6;
  v41 = v3;
  v25 = v3;
  v43 = v23;
  v24[4] = v23;

  v26 = v49;
  sub_182AD3688();
  v27 = v45;
  v42 = *(v45 + 16);
  v28 = v9;
  v42(v9, v26, v7);
  v29 = *(v27 + 80);
  v30 = (v29 + 32) & ~v29;
  v46 += 7;
  v31 = (v46 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v6;
  *(v32 + 24) = v25;
  v45 = *(v27 + 32);
  v33 = v28;
  (v45)(v32 + v30, v28, v7);
  v34 = v44;
  *(v32 + v31) = v44;

  sub_181AA39C0(sub_181F5E1E4);
  NWBrowser.stateUpdateHandler.setter(sub_181F5E1E4, v32);

  v42(v33, v49, v7);
  v35 = (v29 + 40) & ~v29;
  v36 = (v46 + v35) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v41;
  v37[2] = v40;
  v37[3] = v38;
  v37[4] = v34;
  (v45)(v37 + v35, v33, v7);
  *(v37 + v36) = v48;

  sub_181AA39C0(sub_181F5EB8C);
  NWBrowser.browseResultsChangedHandler.setter(sub_181F5EB8C, v37);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWBrowser.start(queue:)(qword_1EA8433A8);

  return sub_181F5E1FC(v47, type metadata accessor for NWBrowser.Descriptor);
}

unsigned int *sub_181F4F300(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  v6 = *(result + 4);
  v7 = *result | (v6 << 32);
  v8 = v6 >> 6;
  if (v8)
  {
    if (v8 == 1 || v7 < 0xFFFFFF8000000002)
    {
      goto LABEL_7;
    }

    v15 = 0;
  }

  else
  {
    sub_181F4B3B8();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 4) = BYTE4(v7);
    v15 = v9;
  }

  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();
  result = sub_182AD36B8();
LABEL_7:
  v11 = *(a3 + 16);
  v12 = v11 + *(*v11 + 112);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    BYTE4(v15) = BYTE4(v7);
    LODWORD(v15) = v7;

    v13(v11, &v15);
    return a4(v13, v14);
  }

  return result;
}

uint64_t sub_181F4F490(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v143 = a4;
  v154 = a2;
  v5 = *a3;
  v174 = *(*a3 + 88);
  v169 = a3;
  v6 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for BrowseResult.Change();
  MEMORY[0x1EEE9AC00](v8);
  v145 = v126 - v9;
  v10 = type metadata accessor for BrowseResult();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v142 = v10;
  v141 = v11;
  v134 = sub_182AD3678();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = v126 - v12;
  v13 = type metadata accessor for NWBrowser.Result.Change(0);
  v162 = *(v13 - 8);
  v163 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v153 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v161 = v126 - v16;
  v168 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v131 = v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v140 = v126 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v139 = v126 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v138 = v126 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v126 - v27);
  v160 = sub_182AD39B8();
  v29 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v130 = v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v137 = v126 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v136 = v126 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v135 = v126 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v126 - v38;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v41);
  v127 = v126 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v144 = v126 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v129 = v126 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v128 = v126 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v151 = (v126 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v150 = v126 - v52;
  v53 = type metadata accessor for NWBrowser.Result(0);
  v164 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v152 = v126 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v147 = v126 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v149 = v126 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v148 = v126 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v165 = v126 - v62;
  v167 = AssociatedTypeWitness;
  v178 = sub_182AD3418();
  v146 = v8;
  v63 = sub_182AD3418();
  v65 = a1 + 56;
  v64 = *(a1 + 56);
  v66 = 1 << *(a1 + 32);
  v67 = -1;
  v126[1] = v63;
  v177 = v63;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v64;
  v69 = (v66 + 63) >> 6;
  v171 = v174 + 40;
  v172 = (v17 + 2);
  v173 = (v17 + 1);
  v170 = (v40 + 48);
  v159 = (v40 + 32);
  v156 = (v40 + 16);
  v157 = (v40 + 8);
  v158 = (v29 + 8);
  v166 = a1;

  v70 = 0;
  v71 = 0;
  while (v68)
  {
    v72 = v70;
    v73 = v165;
LABEL_12:
    sub_181D8E118(*(v166 + 48) + *(v164 + 9) * (__clz(__rbit64(v68)) | (v72 << 6)), v73, type metadata accessor for NWBrowser.Result);
    v74 = v168;
    (*v172)(v28, v169[2] + *(*v169[2] + 96), v168);
    v17 = v28;
    (*(v174 + 40))(v73, v74);
    if (v71)
    {
      sub_181F5E1FC(v73, type metadata accessor for NWBrowser.Result);

      (*v173)(v28, v74);
LABEL_57:

      v175 = v71;
      sub_182AD36C8();
      return sub_182AD36B8();
    }

    v68 &= v68 - 1;
    sub_181F5E1FC(v73, type metadata accessor for NWBrowser.Result);
    (*v173)(v28, v74);
    v75 = v167;
    if ((*v170)(v39, 1, v167) == 1)
    {
      (*v158)(v39, v160);
    }

    else
    {
      v76 = v150;
      (*v159)(v150, v39, v75);
      v77 = *v156;
      v155 = 0;
      v77(v151, v76, v75);
      sub_182AD3488();
      v17 = &v178;
      v71 = v155;
      sub_182AD3468();
      (*v157)(v76, v75);
    }

    v70 = v72;
  }

  v73 = v165;
  while (1)
  {
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);

      v164(v17, v39);
      (*v157)(v144, v73);
LABEL_55:
      sub_181F5E1FC(v152, type metadata accessor for NWBrowser.Result);
      v125 = v147;
LABEL_56:
      sub_181F5E1FC(v125, type metadata accessor for NWBrowser.Result);
      goto LABEL_57;
    }

    if (v72 >= v69)
    {
      break;
    }

    v68 = *(v65 + 8 * v72);
    ++v70;
    if (v68)
    {
      goto LABEL_12;
    }
  }

  v78 = v154;
  v79 = (v154 + 56);
  v80 = 1 << *(v154 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & *(v154 + 56);
  v83 = (v80 + 63) >> 6;

  v85 = 0;
  v86 = v167;
  v87 = v168;
  v88 = v153;
  v165 = v79;
  v166 = v83;
  while (v82)
  {
    v89 = v85;
LABEL_23:
    v90 = __clz(__rbit64(v82));
    v82 &= v82 - 1;
    v91 = v161;
    sub_181D8E118(*(v78 + 48) + *(v162 + 72) * (v90 | (v89 << 6)), v161, type metadata accessor for NWBrowser.Result.Change);
    sub_181D8DC88(v91, v88, type metadata accessor for NWBrowser.Result.Change);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result != 2)
      {
        v85 = v89;
        continue;
      }

      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18) + 48);
      v96 = v147;
      sub_181D8DC88(v88, v147, type metadata accessor for NWBrowser.Result);
      sub_181D8DC88(v88 + v95, v152, type metadata accessor for NWBrowser.Result);
      v97 = v169[2];
      v98 = *(*v97 + 96);
      v99 = *v172;
      v100 = v140;
      (*v172)(v140, v97 + v98, v87);
      v101 = v87;
      v102 = *(v174 + 40);
      v103 = v137;
      v104 = v96;
      v105 = v101;
      v102(v104, v101);
      if (v71)
      {

        (*v173)(v100, v105);
        goto LABEL_55;
      }

      v164 = *v173;
      v164(v100, v105);
      v106 = v167;
      v155 = *v170;
      if (v155(v103, 1, v167) == 1)
      {
        sub_181F5E1FC(v152, type metadata accessor for NWBrowser.Result);
        sub_181F5E1FC(v147, type metadata accessor for NWBrowser.Result);
        result = (*v158)(v103, v160);
        v85 = v89;
        v87 = v105;
        v78 = v154;
        v86 = v106;
      }

      else
      {
        v112 = v103;
        v113 = v106;
        v151 = *v159;
        v151(v144, v112, v106);
        v114 = v131;
        v99(v131, v97 + v98, v105);
        v115 = v130;
        (v102)(v152, v105, v174);
        v164(v114, v105);
        v87 = v105;
        v86 = v113;
        if (v155(v115, 1, v113) == 1)
        {
          (*v157)(v144, v113);
          sub_181F5E1FC(v152, type metadata accessor for NWBrowser.Result);
          sub_181F5E1FC(v147, type metadata accessor for NWBrowser.Result);
          result = (*v158)(v115, v160);
        }

        else
        {
          v118 = v127;
          v151(v127, v115, v113);
          v119 = *(swift_getTupleTypeMetadata2() + 48);
          v120 = *v156;
          v121 = v145;
          (*v156)(v145, v144, v113);
          v120(&v121[v119], v118, v113);
          swift_storeEnumTagMultiPayload();
          sub_182AD3488();
          sub_182AD3468();
          v122 = *v157;
          (*v157)(v118, v113);
          v122(v144, v113);
          sub_181F5E1FC(v152, type metadata accessor for NWBrowser.Result);
          result = sub_181F5E1FC(v147, type metadata accessor for NWBrowser.Result);
        }

        v85 = v89;
        v78 = v154;
      }

      v88 = v153;
      goto LABEL_46;
    }

    if (!result)
    {
      v92 = v148;
      sub_181D8DC88(v88, v148, type metadata accessor for NWBrowser.Result);
      v93 = v138;
      (*v172)(v138, v169[2] + *(*v169[2] + 96), v87);
      v94 = v135;
      (*(v174 + 40))(v92, v87);
      if (v71)
      {

        (*v173)(v93, v87);
        v124 = &v179;
LABEL_51:
        v125 = *(v124 - 32);
        goto LABEL_56;
      }

      (*v173)(v93, v87);
      if ((*v170)(v94, 1, v86) == 1)
      {
        sub_181F5E1FC(v148, type metadata accessor for NWBrowser.Result);
        result = (*v158)(v94, v160);
      }

      else
      {
        v111 = v128;
        (*v159)(v128, v94, v86);
        (*v156)(v145, v111, v86);
        swift_storeEnumTagMultiPayload();
        sub_182AD3488();
        v88 = v153;
        sub_182AD3468();
        (*v157)(v111, v86);
        result = sub_181F5E1FC(v148, type metadata accessor for NWBrowser.Result);
      }

      v85 = v89;
LABEL_46:
      v79 = v165;
      v83 = v166;
      continue;
    }

    v107 = v86;
    v108 = v149;
    sub_181D8DC88(v88, v149, type metadata accessor for NWBrowser.Result);
    v109 = v139;
    (*v172)(v139, v169[2] + *(*v169[2] + 96), v87);
    v110 = v136;
    (*(v174 + 40))(v108, v87);
    if (v71)
    {

      (*v173)(v109, v87);
      v124 = &v180;
      goto LABEL_51;
    }

    (*v173)(v109, v87);
    if ((*v170)(v110, 1, v107) == 1)
    {
      sub_181F5E1FC(v149, type metadata accessor for NWBrowser.Result);
      result = (*v158)(v110, v160);
    }

    else
    {
      v116 = v129;
      (*v159)(v129, v110, v107);
      (*v156)(v145, v116, v107);
      swift_storeEnumTagMultiPayload();
      sub_182AD3488();
      v88 = v153;
      sub_182AD3468();
      v117 = v116;
      v79 = v165;
      (*v157)(v117, v107);
      result = sub_181F5E1FC(v149, type metadata accessor for NWBrowser.Result);
    }

    v85 = v89;
    v83 = v166;
    v86 = v107;
    v87 = v168;
    v78 = v154;
  }

  while (1)
  {
    v89 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v89 >= v83)
    {

      v175 = v178;
      v176 = v177;
      sub_182AD36C8();
      v123 = v132;
      sub_182AD36A8();
      return (*(v133 + 8))(v123, v134);
    }

    v82 = *&v79[8 * v89];
    ++v85;
    if (v82)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181F509D8@<X0>(uint64_t a1@<X8>)
{
  Browser2.AsyncSequenceBrowseResults.makeAsyncIterator()(a1);
}

uint64_t sub_181F50A28(void (*a1)(void, void, void))
{
  a1(0, *(*v1 + 80), *(*v1 + 88));
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t sub_181F50AB8(void (*a1)(void, void))
{
  (*(*(*(*v1 + 80) - 8) + 8))(v1 + *(*v1 + 96));

  a1(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8));
  return v1;
}

uint64_t sub_181F50B8C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t Browser3.__allocating_init(provider:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_181F5BBD4(a1, a2, sub_181F5B9E0);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_181F50C78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = type metadata accessor for NWBrowser.Descriptor(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v5 + 88) + 32))(*(v5 + 80), v7);
  v10 = *(a3 + *(*a3 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v11 = sub_181F9A300(v9, v10);

  *(a1 + 16) = v11;
  return result;
}

void sub_181F50DA0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t Browser3.__allocating_init(for:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_181F5B9E0(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t _s7Network8Browser3C18stateUpdateHandleryACyxGXDyAE_AA9NWBrowserC5StateOtYbYAcSgF()
{
  v1 = *(v0 + *(*v0 + 112));
  type metadata accessor for Browser3.LockedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181F5BC28((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t _s7Network8Browser3C3runyyySay8EndpointQzGYaYbKYAcYaKF(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181F51008, 0, 0);
}

uint64_t sub_181F51008()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_181F510FC;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_181F510FC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_181F51218;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F51218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F5127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = type metadata accessor for Browser3.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v5 = sub_182AD3698();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_182AD3728();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F5141C, 0, 0);
}

uint64_t sub_181F5141C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v6 = *(v0 + 24);
  (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x1E69E8790], *(v0 + 48));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_181F51570;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_181F51570()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_181F51714;
  }

  else
  {

    v2 = sub_181F5168C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F5168C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181F51714()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_181F517B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  type metadata accessor for Browser3.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = sub_182AD36C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;

  v12 = a1;
  sub_182AD3688();
  v13 = *(a2 + *(*a2 + 112));
  v43 = v4;
  v44 = v5;
  v41 = v5;
  v42 = v4;
  type metadata accessor for Browser3.LockedState();
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  sub_181F5E02C(v13 + v14, aBlock);
  os_unfair_lock_unlock((v13 + v15));
  v16 = aBlock[0];
  if (aBlock[0])
  {
    v17 = *(v7 + 16);
    v37 = v7 + 16;
    v38 = v17;
    v34 = v12;
    v17(v11, v12, v6);
    v35 = v6;
    v18 = *(v7 + 80);
    v19 = swift_allocObject();
    v20 = v41;
    *(v19 + 16) = v42;
    *(v19 + 24) = v20;
    v36 = *(v7 + 32);
    v21 = v36(v19 + ((v18 + 32) & ~v18), v11, v6);
    v22 = *(v16 + 24);
    MEMORY[0x1EEE9AC00](v21);
    *(&v33 - 2) = sub_181F5E04C;
    *(&v33 - 1) = v19;
    os_unfair_lock_lock(v22 + 20);
    sub_181F5EB94(&v22[4]);
    os_unfair_lock_unlock(v22 + 20);
    v23 = *(v16 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_181F5E04C;
    *(v24 + 24) = v19;
    aBlock[4] = sub_181F5EB0C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F91420;
    aBlock[3] = &block_descriptor_150;
    v25 = _Block_copy(aBlock);

    nw_browser_set_state_changed_handler(v23, v25);
    _Block_release(v25);

    v26 = v39;
    v27 = v35;
    v38(v39, v34, v35);
    v28 = swift_allocObject();
    v29 = v41;
    v28[2] = v42;
    v28[3] = v29;
    v28[4] = a2;
    v36(v28 + ((v18 + 40) & ~v18), v26, v27);

    NWBrowser.browseResultsChangedHandler.setter(sub_181F5E110, v28);
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    NWBrowser.start(queue:)(qword_1EA8433A8);
  }

  else
  {
    sub_181F4B3B8();
    v31 = swift_allocError();
    *v32 = 22;
    *(v32 + 4) = 0;
    aBlock[0] = v31;
    return sub_182AD36B8();
  }
}

void sub_181F51C7C()
{
  v1 = *(v0 + *(*v0 + 112));
  type metadata accessor for Browser3.LockedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181F5EB40(v1 + v2, &v4);
  os_unfair_lock_unlock((v1 + v3));
  if (v4)
  {
    NWBrowser.cancel()();
  }
}

uint64_t sub_181F51D78(unsigned int *a1)
{
  type metadata accessor for Browser3.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v2 = sub_182AD3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = *(a1 + 4);
  v7 = *a1 | (*(a1 + 4) << 32);
  v11 = v7;
  v12 = 1;
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v3 + 8))(v5, v2);
  if (!(v6 >> 6))
  {
    sub_181F4B3B8();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 4) = BYTE4(v7);
    v11 = v9;
    return sub_182AD36B8();
  }

  if (v6 >> 6 == 2 && v7 == 0x8000000002)
  {
    v11 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_181F51F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45 = a4;
  v6 = *(*a3 + 80);
  v7 = *(*a3 + 88);
  v44 = type metadata accessor for Browser3.Event();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v42 = sub_182AD3678();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v39 - v8;
  v58 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = sub_182AD39B8();
  v10 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v39 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v39 - v17;
  v18 = type metadata accessor for NWBrowser.Result(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v60 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_182AD2E28();
  v21 = a1;
  v24 = *(a1 + 56);
  v23 = a1 + 56;
  v22 = v24;
  v25 = v21;
  v26 = 1 << *(v21 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v22;
  v29 = *a3;
  v59 = a3;
  v56 = *(v29 + 96);
  v57 = v7;
  v30 = (v26 + 63) >> 6;
  v54 = (v13 + 48);
  v55 = v7 + 40;
  v48 = (v13 + 16);
  v49 = (v13 + 32);
  v46 = (v10 + 8);
  v47 = (v13 + 8);
  v61 = v25;

  v32 = 0;
  v50 = v19;
  while (v28)
  {
    v33 = v32;
    v34 = v60;
LABEL_12:
    sub_181D8E118(*(v61 + 48) + *(v19 + 72) * (__clz(__rbit64(v28)) | (v33 << 6)), v34, type metadata accessor for NWBrowser.Result);
    (*(v57 + 40))(v34, v58);
    v28 &= v28 - 1;
    sub_181F5E1FC(v34, type metadata accessor for NWBrowser.Result);
    if ((*v54)(v12, 1, AssociatedTypeWitness) == 1)
    {
      result = (*v46)(v12, v53);
    }

    else
    {
      v35 = v12;
      v36 = v51;
      (*v49)(v51, v35, AssociatedTypeWitness);
      (*v48)(v52, v36, AssociatedTypeWitness);
      sub_182AD3488();
      sub_182AD3468();
      v37 = v36;
      v12 = v35;
      v19 = v50;
      result = (*v47)(v37, AssociatedTypeWitness);
    }

    v32 = v33;
  }

  v34 = v60;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v30)
    {

      v62 = v64;
      v63 = 0;
      sub_182AD36C8();
      v38 = v40;
      sub_182AD36A8();
      return (*(v41 + 8))(v38, v42);
    }

    v28 = *(v23 + 8 * v33);
    ++v32;
    if (v28)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181F52518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for Browser3.Event();
  v6[20] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD3708();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F52694, 0, 0);
}

uint64_t sub_181F52694()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_181F52764;
  v2 = *(v0 + 168);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 88);
}

uint64_t sub_181F52764()
{

  if (v0)
  {
    v1 = sub_181F52C14;
  }

  else
  {
    v1 = sub_181F52874;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_181F52874()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v2 == 255)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 120);
    v21 = *(v0 + 112);
    v22 = *(v0 + 128);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v1;
    *(v8 + 40) = v2 & 1;
    *(v8 + 48) = v21;
    *(v8 + 56) = v5;
    *(v8 + 64) = v22;
    sub_181F5D9BC(v3, v4);
    LODWORD(v3) = (*(v7 + 48))(v4, 1, v6);

    v9 = *(v0 + 136);
    if (v3 == 1)
    {
      sub_181F49A88(*(v0 + 136), &unk_1EA839850);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 96);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 144);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    *v19 = v0;
    v19[1] = sub_181F52764;
    v20 = *(v0 + 168);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 88);
  }
}

uint64_t sub_181F52C14()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181F52CB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 141) = a4;
  *(v7 + 48) = a3;
  *(v7 + 56) = a5;
  *(v7 + 80) = *a7;
  *(v7 + 88) = *a7;
  return MEMORY[0x1EEE6DFA0](sub_181F52D28, 0, 0);
}

uint64_t sub_181F52D28()
{
  if (*(v0 + 141))
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(*(v0 + 72) + *(**(v0 + 72) + 112));
    v4 = swift_task_alloc();
    *(v4 + 16) = *(v1 + 80);
    *(v4 + 24) = *(v1 + 88);
    type metadata accessor for Browser3.LockedState();
    *(v0 + 32) = v2;
    *(v0 + 40) = &type metadata for NWBrowser.State;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
    v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v6));
    sub_181F5DFA4((v3 + v5), (v0 + 16));
    os_unfair_lock_unlock((v3 + v6));

    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    *(v0 + 104) = v7;
    *(v0 + 112) = v8;
    if (v7)
    {
      v9 = *(v0 + 48);
      v10 = *(v8 + 16);
      *(v0 + 120) = v10;
      v11 = *(v8 + 24);
      v12 = swift_allocObject();
      *(v0 + 128) = v12;
      v12[2] = v10;
      v12[3] = v11;
      v12[4] = v7;
      v12[5] = v8;
      *(v0 + 140) = BYTE4(v9);
      *(v0 + 136) = v9;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v7);
      if (v10)
      {
        swift_getObjectType();
        v13 = sub_182AD34A8();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_181F53124, v13, v15);
    }

    else
    {
      v19 = *(v0 + 8);

      return v19();
    }
  }

  else
  {
    v16 = *(v0 + 48);
    v20 = (*(v0 + 56) + **(v0 + 56));
    v17 = swift_task_alloc();
    *(v0 + 96) = v17;
    *v17 = v0;
    v17[1] = sub_181F53030;

    return v20(v16);
  }
}

uint64_t sub_181F53030()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181F53124()
{
  v4 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v1(&v3, v0 + 136);
  swift_unknownObjectRelease();
  sub_181A554F4(v1);

  return MEMORY[0x1EEE6DFA0](sub_181F531C0, 0, 0);
}

uint64_t sub_181F531C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F53224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_181F5E000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return sub_181AA39C0(v5);
}

uint64_t Browser3.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

BOOL static NetworkBrowser.State.== infix(_:_:)(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 4);
  v3 = *a1 | (*(a1 + 4) << 32);
  v4 = *a2 | (*(a2 + 4) << 32);
  v5 = v2 >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      if (((v4 >> 38) & 3) == 1)
      {
        v6 = HIDWORD(v4) & 0x3F;
        v7 = HIDWORD(v3) & 0x3F;
        if ((BYTE4(v3) & 0x3Fu) <= 1)
        {
          if (!v7)
          {
LABEL_6:
            if (v6)
            {
              return 0;
            }

            v8 = sub_182AD2768();
            return v8 == sub_182AD2768();
          }

          return v6 == 1 && v3 == *a2;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0x8000000000;
      if (v3 == 0x8000000000 || (v10 = 0x8000000001, v3 == 0x8000000001))
      {
        if ((v4 & 0xFFFFFFFFFFLL) == v10)
        {
          return 1;
        }
      }

      else if ((v4 & 0xFFFFFFFFFFLL) == 0x8000000002)
      {
        return 1;
      }
    }
  }

  else if (((v4 >> 38) & 3) == 0)
  {
    v7 = HIDWORD(v3);
    LODWORD(v6) = BYTE4(v4);
    if (SHIDWORD(v3) <= 1)
    {
      if (!HIDWORD(v3))
      {
        goto LABEL_6;
      }

      return v6 == 1 && v3 == *a2;
    }

LABEL_21:
    if (v7 == 2)
    {
      if (v6 != 2 || v3 != *a2)
      {
        return 0;
      }
    }

    else if (v6 != 3 || v3 != *a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t NetworkBrowser.debugDescription.getter()
{
  v1 = *(v0 + *(*v0 + 112));
  type metadata accessor for NetworkBrowser.LockedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181F5BD54(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

void sub_181F535A0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = [*(v3 + 16) description];
    v5 = sub_182AD2F88();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t NetworkBrowser.__allocating_init(for:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = sub_181F5BD88(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_181F536C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = a3();
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_181F5373C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = type metadata accessor for NWBrowser.Descriptor(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v5 + 88) + 32))(*(v5 + 80), v7);
  v10 = *(a3 + *(*a3 + 104));
  type metadata accessor for NWBrowser(0);
  swift_allocObject();

  v11 = sub_181F9A300(v9, v10);

  *(a1 + 24) = v11;
  return result;
}

uint64_t _s7Network0A7BrowserC13onStateUpdateyACyxGXDyAE_AC0D0Oyx_GtYbYAcF()
{
  v1 = *(v0 + *(*v0 + 112));
  type metadata accessor for NetworkBrowser.LockedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181F5BF74((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t _s7Network0A7BrowserC3runyyySay8EndpointQzGYaYbKYAcYaKF(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_181F539B0, 0, 0);
}

uint64_t sub_181F539B0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = *(v1 + 80);
  v4[5] = *(v1 + 88);
  v4[6] = v3;
  v4[7] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_181F53AB4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return sub_181F53E80(v5, &unk_182AE5788, v4, v6);
}

uint64_t sub_181F53AB4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_181F53BD0;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F53BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F53C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a1;
  v9 = (a5 + *a5);
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_181F53D2C;

  return v9(a2);
}

uint64_t sub_181F53D2C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_181F53E5C, 0, 0);
  }
}

uint64_t sub_181F53E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for NetworkBrowser.Disposition();
  v5[10] = v6;
  v7 = sub_182AD39B8();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F53FEC, 0, 0);
}

uint64_t sub_181F53FEC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 48);
  v5 = swift_allocBox();
  *(v0 + 136) = v5;
  *(v0 + 144) = v6;
  (*(v1 + 56))(v6, 1, 1, v2);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v11;
  *(v7 + 48) = v5;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_181F54144;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_181F54144()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_181F544C4;
  }

  else
  {

    v2 = sub_181F54268;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F54268()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  swift_beginAccess();
  (*(v5 + 16))(v2, v1, v4);
  if ((*(v3 + 48))(v2, 1, v6) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_181F4B3B8();
    swift_allocError();
    *v7 = 22;
    *(v7 + 4) = 0;
    swift_willThrow();
LABEL_5:

    v17 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[14];
  v11 = v0[10];
  (*(v10 + 32))(v9, v0[13], v11);
  (*(v10 + 16))(v8, v9, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = v0[16];
  v15 = v0[14];
  v14 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v16 = v0[10];
    swift_willThrow();
    (*(v15 + 8))(v13, v16);
    goto LABEL_5;
  }

  v18 = v0[8];
  v19 = v0[5];
  (*(v15 + 8))(v0[16], v0[10]);
  (*(*(v18 - 8) + 32))(v19, v14, v18);

  v17 = v0[1];
LABEL_7:

  return v17();
}

uint64_t sub_181F544C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s7Network0A7BrowserC3runyqd__AC9RunResultOyx_qd__GSay8EndpointQzGYaYbKYAcYaKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_181F545B0, 0, 0);
}

uint64_t sub_181F545B0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = *(v1 + 80);
  v5[5] = v3;
  v5[6] = *(v1 + 88);
  v5[7] = v4;
  v5[8] = v2;

  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_181F546BC;
  v7 = v0[5];
  v8 = v0[2];

  return sub_181F53E80(v8, &unk_182AE57A8, v5, v7);
}

uint64_t sub_181F546BC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181F547F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_181F547F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F5485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_181F54964;

  return v10(a1, a2);
}

uint64_t sub_181F54964()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181F54A58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v7 = *a2;
  v6[8] = *(*a2 + 88);
  v6[9] = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  v6[10] = sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = sub_182AD3698();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_182AD3728();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for NetworkBrowser.State();
  v10 = sub_182AD3698();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();
  v11 = sub_182AD3728();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F54D14, 0, 0);
}

uint64_t sub_181F54D14()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 24) + *(**(v0 + 24) + 112));
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v1;
  type metadata accessor for NetworkBrowser.LockedState();
  v6 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_181F5D3A4(v4 + v6, (v0 + 16));
  os_unfair_lock_unlock((v4 + v7));

  v8 = *(v0 + 16);
  *(v0 + 192) = v8;
  if (v8)
  {
    v9 = *(v0 + 96);
    v25 = *(v0 + 104);
    v26 = *(v0 + 88);
    v10 = *(v0 + 56);
    v11 = *(v0 + 24);
    v12 = *MEMORY[0x1E69E8790];
    (*(*(v0 + 152) + 104))(*(v0 + 160), v12, *(v0 + 144));
    v13 = swift_task_alloc();
    v13[2] = v10;
    v13[3] = v11;
    v13[4] = v8;
    sub_182AD3738();

    (*(v9 + 104))(v25, v12, v26);
    v14 = swift_task_alloc();
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v8;
    sub_182AD3738();

    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 184);
    v16 = *(v0 + 128);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 24);
    v27 = *(v0 + 32);
    NWBrowser.start(queue:)(qword_1EA8433A8);
    v20 = swift_task_alloc();
    *(v0 + 200) = v20;
    *(v20 + 16) = v17;
    *(v20 + 24) = v15;
    *(v20 + 32) = v19;
    *(v20 + 40) = v16;
    *(v20 + 48) = v27;
    *(v20 + 64) = v18;
    *(v20 + 72) = v8;
    v21 = swift_task_alloc();
    *(v0 + 208) = v21;
    *v21 = v0;
    v21[1] = sub_181F550C8;

    return MEMORY[0x1EEE6DE40]();
  }

  else
  {
    sub_181F4B3B8();
    swift_allocError();
    *v22 = 22;
    *(v22 + 4) = 0;
    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_181F550C8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_181F552C0;
  }

  else
  {

    v2 = sub_181F551E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F551E4()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_181F552C0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_181F553B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = *(*a2 + 80);
  v8 = *(*a2 + 88);
  type metadata accessor for NetworkBrowser.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v9 = sub_182AD36C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a2;

  sub_182AD3688();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v7;
  *(v17 + 3) = a4;
  *(v17 + 4) = v8;
  (*(v10 + 32))(&v17[v15], v13, v9);
  *&v17[v16] = a2;
  v18 = v25;
  v19 = *(v25 + 24);
  v26 = sub_181F5DCA4;
  v27 = v17;

  os_unfair_lock_lock(v19 + 20);
  sub_181F5DD84(&v19[4]);
  os_unfair_lock_unlock(v19 + 20);
  v20 = *(v18 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_181F5DCA4;
  *(v21 + 24) = v17;
  aBlock[4] = sub_181F5DDA0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181F91420;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  nw_browser_set_state_changed_handler(v20, v22);
  _Block_release(v22);
}

void sub_181F55694()
{
  v1 = *(v0 + *(*v0 + 112));
  type metadata accessor for NetworkBrowser.LockedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181F5EB28(v1 + v2, &v4);
  os_unfair_lock_unlock((v1 + v3));
  if (v4)
  {
    NWBrowser.cancel()();
  }
}

uint64_t sub_181F55790(unsigned int *a1)
{
  type metadata accessor for NetworkBrowser.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v2 = sub_182AD3678();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  v6 = *a1 | (*(a1 + 4) << 32);
  v7 = *(a1 + 4) >> 6;
  v8 = *a1 | (*(a1 + 4) << 32) & 0x3FFFFFFFFFLL | 0x4000000000;
  if (v7 != 1)
  {
    v8 = *a1 | (*(a1 + 4) << 32);
  }

  LODWORD(v13) = v8;
  BYTE4(v13) = BYTE4(v8);
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v3 + 8))(v5, v2);
  if (!v7)
  {
    sub_181F4B3B8();
    v10 = swift_allocError();
    *v11 = v6;
    *(v11 + 4) = BYTE4(v6);
    v13 = v10;
    goto LABEL_8;
  }

  if (v7 == 2 && v6 == 0x8000000002)
  {
    v13 = 0;
LABEL_8:
    sub_182AD36B8();
    return sub_181F55988();
  }

  return result;
}

uint64_t sub_181F55988()
{
  v1 = *(v0 + *(*v0 + 112));
  type metadata accessor for NetworkBrowser.LockedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181F5DDA8(v1 + v2, &v9);
  os_unfair_lock_unlock((v1 + v3));
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = v9 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }
}

uint64_t sub_181F55AB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = *a2;
  v24 = *(*a2 + 88);
  v26 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = sub_182AD36C8();
  v9 = *(v8 - 8);
  v20[1] = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a2;
  v21 = a4;

  v23 = a1;
  sub_182AD3688();
  v22 = *(v9 + 16);
  v22(v11, a1, v8);
  v13 = *(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v26;
  *(v14 + 3) = a4;
  v15 = v24;
  *(v14 + 4) = v24;
  *(v14 + 5) = a2;
  v16 = *(v9 + 32);
  v16(&v14[(v13 + 48) & ~v13], v11, v8);

  NWBrowser.browseResultsChangedHandler.setter(sub_181F5DAB8, v14);
  v22(v11, v23, v8);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 2) = v26;
  *(v17 + 3) = v18;
  *(v17 + 4) = v15;
  v16(&v17[(v13 + 40) & ~v13], v11, v8);
  sub_181F563F4();
}

uint64_t sub_181F55D80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v38 = a4;
  v6 = *(*a3 + 88);
  v51 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = sub_182AD3488();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v36 = sub_182AD3678();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v34 - v8;
  v46 = sub_182AD39B8();
  v9 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v34 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v34 - v16;
  v17 = type metadata accessor for NWBrowser.Result(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v54 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_182AD2E28();
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = *a3;
  v53 = a3;
  v50 = *(v24 + 96);
  v25 = (v21 + 63) >> 6;
  v52 = v6;
  v48 = (v12 + 48);
  v49 = v6 + 40;
  v41 = (v12 + 16);
  v42 = (v12 + 32);
  v39 = (v9 + 8);
  v40 = (v12 + 8);
  v55 = a1;

  v27 = 0;
  v43 = v18;
  while (v23)
  {
    v28 = v27;
    v29 = v54;
LABEL_12:
    sub_181D8E118(*(v55 + 48) + *(v18 + 72) * (__clz(__rbit64(v23)) | (v28 << 6)), v29, type metadata accessor for NWBrowser.Result);
    (*(v52 + 40))(v29, v51);
    v23 &= v23 - 1;
    sub_181F5E1FC(v29, type metadata accessor for NWBrowser.Result);
    if ((*v48)(v11, 1, AssociatedTypeWitness) == 1)
    {
      result = (*v39)(v11, v46);
    }

    else
    {
      v30 = v11;
      v31 = v44;
      (*v42)(v44, v30, AssociatedTypeWitness);
      (*v41)(v45, v31, AssociatedTypeWitness);
      swift_checkMetadataState();
      sub_182AD3468();
      v32 = v31;
      v11 = v30;
      v18 = v43;
      result = (*v40)(v32, AssociatedTypeWitness);
    }

    v27 = v28;
  }

  v29 = v54;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {

      v56 = v57;
      sub_182AD36C8();
      v33 = v34;
      sub_182AD36A8();
      return (*(v35 + 8))(v33, v36);
    }

    v23 = *(v20 + 8 * v28);
    ++v27;
    if (v23)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181F5635C()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();
  return sub_182AD36B8();
}

void sub_181F563F4()
{
  v1 = *(v0 + *(*v0 + 112));
  type metadata accessor for NetworkBrowser.LockedState();
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_181F5DC7C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_181F564E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v16;
  v8[10] = v17;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = *a4;
  v8[11] = *(*a4 + 88);
  v8[12] = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v10 = sub_182AD3728();
  v8[13] = v10;
  v11 = *(v10 - 8);
  v8[14] = v11;
  v8[15] = *(v11 + 64);
  v8[16] = swift_task_alloc();
  type metadata accessor for NetworkBrowser.State();
  v12 = sub_182AD3728();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v8[19] = *(v13 + 64);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v8[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F56718, 0, 0);
}

uint64_t sub_181F56718()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[14];
  v22 = v0[16];
  v23 = v0[15];
  v21 = v0[13];
  v30 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v26 = v0[8];
  v27 = v0[9];
  v24 = v0[6];
  v25 = v0[7];
  v20 = v0[5];
  v18 = v0[4];
  v7 = v0[3];
  v8 = sub_182AD3548();
  v19 = *(*(v8 - 8) + 56);
  v19(v1, 1, 1, v8);
  (*(v4 + 16))(v2, v7, v5);
  v9 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v30;
  *(v10 + 5) = v29;
  *(v10 + 6) = v28;
  (*(v4 + 32))(&v10[v9], v2, v5);
  *&v10[(v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v18;

  sub_182271CA4(v1, &unk_182AE6158, v10);
  sub_181F49A88(v1, &unk_1EA839850);
  v19(v1, 1, 1, v8);
  (*(v6 + 16))(v22, v20, v21);
  v11 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v12 = (v23 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v30;
  *(v14 + 5) = v29;
  *(v14 + 6) = v28;
  (*(v6 + 32))(&v14[v11], v22, v21);
  v15 = &v14[v12];
  *v15 = v24;
  *(v15 + 1) = v25;
  *&v14[v13] = v26;
  *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;

  sub_182271CA4(v1, &unk_182AE6168, v14);
  sub_181F49A88(v1, &unk_1EA839850);

  v16 = v0[1];

  return v16();
}

uint64_t sub_181F56A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v6 = *a4;
  v5[11] = *(*a4 + 80);
  v5[12] = *(v6 + 88);
  v5[13] = type metadata accessor for NetworkBrowser.State();
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = sub_182AD3708();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F56B88, 0, 0);
}

uint64_t sub_181F56B88()
{
  v1 = v0[8];
  sub_182AD3728();
  sub_182AD35B8();
  v0[18] = *(*v1 + 112);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_181F56C78;
  v3 = v0[15];

  return MEMORY[0x1EEE6DB90](v0 + 25, 0, 0, v3, v0 + 6);
}

uint64_t sub_181F56C78()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_181F571FC;
  }

  else
  {
    v2 = sub_181F56D8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F56D8C()
{
  if (*(v0 + 204) >> 2 < 0x3FuLL)
  {
    v23 = *(v0 + 204);
    v24 = *(v0 + 200);
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 64) + *(v0 + 144));
    v9 = swift_task_alloc();
    v9[2] = v5;
    v9[3] = v7;
    v9[4] = v4;
    type metadata accessor for NetworkBrowser.LockedState();
    *(v0 + 32) = v6;
    *(v0 + 40) = v3;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    v10 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
    v11 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v11));
    sub_181F5DA2C((v8 + v10), (v0 + 16));
    os_unfair_lock_unlock((v8 + v11));

    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    *(v0 + 168) = v12;
    *(v0 + 176) = v13;
    if (v12)
    {
      v14 = *(v0 + 72);
      v15 = *(v13 + 16);
      *(v0 + 184) = v15;
      v16 = *(v13 + 24);
      v17 = swift_allocObject();
      *(v0 + 192) = v17;
      v17[2] = v15;
      v17[3] = v16;
      v17[4] = v14;
      v17[5] = v12;
      v17[6] = v13;
      *(v0 + 212) = (v24 & 0xFFFFFF00FFFFFFFFLL | (v23 << 32)) >> 32;
      *(v0 + 208) = v24;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v12);
      if (v15)
      {
        swift_getObjectType();
        v18 = sub_182AD34A8();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_181F570AC, v18, v20);
    }

    else
    {
      v21 = swift_task_alloc();
      *(v0 + 152) = v21;
      *v21 = v0;
      v21[1] = sub_181F56C78;
      v22 = *(v0 + 120);

      return MEMORY[0x1EEE6DB90](v0 + 200, 0, 0, v22, v0 + 48);
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_181F570AC()
{
  v4 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 64);
  v1(&v3, v0 + 208);
  swift_unknownObjectRelease();
  sub_181A554F4(v1);

  return MEMORY[0x1EEE6DFA0](sub_181F57148, 0, 0);
}

uint64_t sub_181F57148()
{

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_181F56C78;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 200, 0, 0, v2, v0 + 48);
}

uint64_t sub_181F571FC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181F5727C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v11 = *(v7 + 16);
    v12 = *(v7 + 24);
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = a4;
    v13[7] = v6;
    v13[8] = v7;
    swift_unknownObjectRetain();
    v14 = sub_181F5DA8C;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *a5 = v14;
  a5[1] = v13;
  return sub_181AA39C0(v6);
}

uint64_t sub_181F57338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a3;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F5736C, 0, 0);
}

uint64_t sub_181F5736C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v5;
  *(v3 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_181F57468;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_181F57468()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_181F5759C;
  }

  else
  {

    v2 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F5759C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F57600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v12;
  v8[19] = v13;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v8[22] = sub_182AD3488();
  v8[23] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v9 = sub_182AD3708();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F57784, 0, 0);
}

uint64_t sub_181F57784()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_181F57854;
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_181F57854()
{

  if (v0)
  {
    v1 = sub_181F57D1C;
  }

  else
  {
    v1 = sub_181F57964;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_181F57964()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 120);
    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v5 = *(v0 + 112);
    v22 = *(v0 + 104);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    v21 = *(v0 + 136);
    (*(v7 + 56))(v3, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = v21;
    *(v8 + 48) = v23;
    *(v8 + 56) = v22;
    *(v8 + 64) = v5;
    *(v8 + 72) = v1;
    *(v8 + 80) = v4;
    *(v8 + 88) = v24;
    sub_181F5D9BC(v3, v2);
    LODWORD(v2) = (*(v7 + 48))(v2, 1, v6);

    v9 = *(v0 + 160);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 160), &unk_1EA839850);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 168);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 216) = v19;
    *v19 = v0;
    v19[1] = sub_181F57854;
    v20 = *(v0 + 192);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_181F57D1C()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181F57DB8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a7;
  v7[9] = v16;
  v7[10] = type metadata accessor for NetworkBrowser.Disposition();
  v10 = sub_182AD39B8();
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = *(v16 - 8);
  v7[15] = swift_task_alloc();
  type metadata accessor for NetworkBrowser.RunResult();
  v11 = swift_task_alloc();
  v7[16] = v11;
  v7[17] = swift_projectBox();
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  v7[18] = v12;
  *v12 = v7;
  v12[1] = sub_181F57FF4;

  return v14(v11, a5);
}

uint64_t sub_181F57FF4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F582CC;
  }

  else
  {
    v2 = sub_181F58108;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F58108()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[9];
  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    v4 = v0[17];
    v5 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    (*(v2 + 32))(v5, v1, v3);
    (*(v2 + 16))(v6, v5, v3);
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    (*(v7 + 40))(v4, v6, v8);
    NWBrowser.cancel()();
    (*(v2 + 8))(v5, v3);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_181F582CC()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  swift_beginAccess();
  v7 = v1;
  (*(v4 + 40))(v2, v3, v5);
  NWBrowser.cancel()();

  v8 = v0[1];

  return v8();
}

uint64_t sub_181F58400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_181F5AEE4(0, v7[2] + 1, 1, v7, &qword_1EA838950);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_181F5AEE4((v9 > 1), v10 + 1, 1, v7, &qword_1EA838950);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_181F5DC9C;
  v11[5] = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t *NetworkBrowser.deinit()
{
  v1 = *v0;
  sub_181F55694();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t AsyncSequence<>.first.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  v4[7] = *(AssociatedTypeWitness - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_getAssociatedTypeWitness();
  sub_182AD39B8();
  v4[11] = swift_task_alloc();
  v4[12] = *(a2 - 8);
  v4[13] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F58804, 0, 0);
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  v4[7] = *(AssociatedTypeWitness - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_getAssociatedTypeWitness();
  sub_182AD39B8();
  v4[11] = swift_task_alloc();
  v4[12] = *(a2 - 8);
  v4[13] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181F58FA8, 0, 0);
}

uint64_t sub_181F58804()
{
  (*(v0[12] + 16))(v0[13], v0[5], v0[3]);
  sub_182AD3648();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[17] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_181F5892C;
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_181F5892C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F58C24;
  }

  else
  {
    v2 = sub_181F58A40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F58A40()
{
  v1 = v0[10];
  v2 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v4 = v0[19];
    sub_182AD3628();
    if (!v4)
    {
      return sub_182AD3EA8();
    }

    v5 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[11], v0[10]);

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_181F58C24()
{
  v1 = *(v0[7] + 32);
  v1(v0[8], v0[9], v0[6]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_182AD4218();
  v3 = v0[8];
  if (v2)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
  }

  else
  {
    v4 = v0[6];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[15] + 8))(v0[16], v0[14]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_181F58FA8()
{
  (*(v0[12] + 16))(v0[13], v0[5], v0[3]);
  sub_182AD3648();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[17] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_181F590D0;
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_181F590D0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F5EB24;
  }

  else
  {
    v2 = sub_181F591E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181F591E4()
{
  v1 = v0[10];
  v2 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v4 = v0[19];
    sub_182AD3628();
    if (!v4)
    {
      return sub_182AD3EA8();
    }

    v5 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[11], v0[10]);

    v5 = v0[1];
  }

  return v5();
}

uint64_t NWBrowser.Descriptor.Options.deviceFilter(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);

  *a2 = a1;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.scope(_:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  *(a2 + 8) = v4;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.deviceTypes(_:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  *(a2 + 12) = v4;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.applicationServiceEndpointsOnly(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  *(a2 + 16) = a1;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.predicate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_181D8E118(v2, a2, type metadata accessor for NWBrowser.Descriptor.Options);
  v5 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  sub_181F49A88(a2 + v5, &qword_1EA838D00);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0);
  v9 = *(v6 - 8);
  (*(v9 + 16))(a2 + v5, a1, v6);
  v7 = *(v9 + 56);

  return v7(a2 + v5, 0, 1, v6);
}

char *sub_181F59624(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_181F59790(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F598B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F599D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F59AF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389C0);
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

char *sub_181F59BF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838978);
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

char *sub_181F59D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838988);
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

void *sub_181F59E34(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F59F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3E0);
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

char *sub_181F5A0A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_181F5A1B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8389F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A310(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[56 * v9])
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_181F5A47C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A588(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838990);
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

void *sub_181F5A6A0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5A918(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_181F5AA14(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838958);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839C30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181F5AB5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1820F7980();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_181F5AC84(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

char *sub_181F5ADAC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_181F5AEE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397F0);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_181F5B080(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_181F5B1D8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_181F5B3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_181F5B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_182AD2F08();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F5B5A8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_182AD2F08();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_182AD3888();
  result = sub_182AD2F08();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_181F5B69C()
{
  result = qword_1EA836F88;
  if (!qword_1EA836F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F88);
  }

  return result;
}

char *sub_181F5B704(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = &v3[*(*v3 + 112)];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = *(v5 + 80);
  (*(*(v7 - 8) + 16))(&v3[*(*v3 + 96)], a1, v7);
  if (a2)
  {
    swift_beginAccess();
    a2 = *(a2 + 16);
  }

  v8 = (*(*(v5 + 88) + 24))(a2, v7);

  *&v3[*(*v3 + 104)] = v8;
  return v3;
}

uint64_t *sub_181F5B8A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = (v3 + *(*v3 + 112));
  *v6 = 0;
  v6[1] = 0;
  v7 = *(v5 + 80);
  (*(*(v7 - 8) + 16))(v3 + *(*v3 + 96), a1, v7);
  *(v3 + *(*v3 + 104)) = (*(*(v5 + 88) + 24))(a2, v7);
  return v3;
}

uint64_t sub_181F5B9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 112);
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  locked = type metadata accessor for Browser3.LockedState();
  memset(v15, 0, sizeof(v15));
  v10 = sub_1820C6414(v15, locked);
  sub_181A554F4(0);
  *(v3 + v6) = v10;
  (*(*(v7 - 8) + 16))(v3 + *(*v3 + 96), a1, v7);
  *(v3 + *(*v3 + 104)) = (*(v8 + 24))(a2, v7, v8);
  v11 = *(v3 + *(*v3 + 112));
  v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v11 + v13));
  sub_181F5E1C8(v11 + v12);
  os_unfair_lock_unlock((v11 + v13));

  return v3;
}

uint64_t sub_181F5BC28(uint64_t *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *a1;
  sub_181AA39C0(v4);
  result = sub_181A554F4(v5);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F5BC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_181F5127C(a1, v4, v5, v6);
}

uint64_t sub_181F5BD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 112);
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = MEMORY[0x1E69E7CC0];
  v15[3] = 0;
  locked = type metadata accessor for NetworkBrowser.LockedState();
  v10 = sub_1820C6414(v15, locked);
  sub_181A554F4(0);

  *(v3 + v6) = v10;
  (*(*(v7 - 8) + 16))(v3 + *(*v3 + 96), a1, v7);
  *(v3 + *(*v3 + 104)) = (*(v8 + 24))(a2, v7, v8);
  v11 = *(v3 + *(*v3 + 112));
  v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v11 + v13));
  sub_181F5DDC0(v11 + v12);
  os_unfair_lock_unlock((v11 + v13));

  return v3;
}

uint64_t sub_181F5BF74(uint64_t *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *a1;

  result = sub_181A554F4(v5);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F5BFCC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F5EB68;

  return sub_181F53C34(a1, a2, v6, v7, v8);
}

uint64_t sub_181F5C0A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[7];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_181F5EB68;

  return sub_181F5485C(a1, a2, v6, v7, v8);
}

unint64_t sub_181F5C210()
{
  result = qword_1EA838840;
  if (!qword_1EA838840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838840);
  }

  return result;
}

uint64_t sub_181F5C334(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_181F5C3C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838838);
    sub_181F5C210();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for UnexpectedEndpointType()
{
  result = qword_1EA838858;
  if (!qword_1EA838858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181F5C524()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_181F5C608()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5C650()
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_181F5C6E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_181F5C834(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_181F5CA24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5CBBC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_181F5CCC0()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_181F5CD1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_181F5CE9C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_181F5D0F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5D12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_181F5D174(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_181F5D1B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5D1F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_181F5D24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F5D2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F54964;

  return sub_181F54A58(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_181F5D3DC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_181F564E0(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_181F5D4CC()
{
  v2 = v0[5];
  type metadata accessor for NetworkBrowser.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = *(sub_182AD3728() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_181F56A30(v5, v6, v0 + v4, v7, v2);
}

uint64_t sub_181F5D61C()
{
  v15 = v0[4];
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v2 = *(sub_182AD3728() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = (v0 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v5);
  v12 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_181F5EB68;

  return sub_181F57338(v6, v7, v0 + v3, v9, v10, v11, v12, v15);
}

uint64_t sub_181F5D7DC(uint64_t a1, uint64_t a2)
{
  v13 = v2[2];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_181F57600(a1, a2, v6, v7, v8, v10, v9, v13);
}

uint64_t sub_181F5D8D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v7 = v0[11];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_181F5EB68;

  return sub_181F57DB8(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_181F5D9BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F5DAB8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v5 = *(sub_182AD36C8() - 8);
  v6 = *(v2 + 40);
  v7 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_181F55D80(a1, a2, v6, v7);
}

uint64_t sub_181F5DB9C()
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();

  return sub_181F5635C();
}

uint64_t sub_181F5DCA4(unsigned int *a1)
{
  type metadata accessor for NetworkBrowser.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();

  return sub_181F55790(a1);
}

uint64_t sub_181F5DDA8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *a2 = v2;
  return result;
}

uint64_t sub_181F5DDFC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_181F52518(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_181F5DEC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_181F5DED0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_181F5EB68;

  return sub_181F52CB0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F5E04C(unsigned int *a1)
{
  type metadata accessor for Browser3.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();

  return sub_181F51D78(a1);
}

uint64_t sub_181F5E110(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Browser3.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v5 = *(sub_182AD36C8() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_181F51F30(a1, a2, v6, v7);
}

uint64_t sub_181F5E1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_158Tm()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unsigned int *sub_181F5E36C(unsigned int *a1, uint64_t (*a2)(void, uint64_t))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v5 = *(sub_182AD36C8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_181F4F300(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_161Tm()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_181F5E580(int64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v5 = *(sub_182AD36C8() - 8);
  return sub_181F4F490(a1, a2, *(v2 + 32), v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));
}

uint64_t sub_181F5E674()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Frame.FrameTimestamp(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Frame.FrameTimestamp(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_181F5E75C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_181F5EAA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_181F5E7D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_181F5E8EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_181F5EAA4()
{
  result = qword_1EA838A28;
  if (!qword_1EA838A28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA838A28);
  }

  return result;
}

BOOL sub_181F5EBF4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *(a1 + 1) < *(a2 + 1);
  }

  else
  {
    return v5;
  }
}

BOOL sub_181F5EC1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *(a2 + 1) >= *(a1 + 1);
  }

  else
  {
    return v5;
  }
}

BOOL sub_181F5EC44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *(a1 + 1) >= *(a2 + 1);
  }

  else
  {
    return v5;
  }
}

BOOL sub_181F5EC6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *(a2 + 1) < *(a1 + 1);
  }

  else
  {
    return v5;
  }
}

uint64_t sub_181F5ECC0()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1 + 1);
  return sub_182AD4558();
}

uint64_t sub_181F5ED38()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1 + 1);
  return sub_182AD4558();
}

uint64_t sub_181F5ED7C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181F5F868(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F5EDC8(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 == -1)
  {
    goto LABEL_7;
  }

  if (a1 != -1)
  {
    if (a1 >= a3)
    {
      v16 = xmmword_182AE6270;
      v17 = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 11;
    }

    v5 = a3 - a1;
    if (!__OFSUB__(a3, a1))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_7:
    v16 = xmmword_182AE6290;
    v17 = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 12;
  }

  v5 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_17;
  }

LABEL_9:
  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (a2 == 4)
  {
    if (v5 <= 127)
    {
      return a3;
    }

    v6 = 2 * v5;
    if (v6 <= 0xFFFE)
    {
      return a3;
    }

    if (v6 <= 0xFFFFFE)
    {
      return a3 & 0xFFFFFFF;
    }

    if (v6 < 0xFFFFFFFF)
    {
      return a3;
    }

    v16 = xmmword_182AE6280;
    v17 = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 13;
  }

  v18 = v3;
  v4 = a3;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_28;
  }

LABEL_17:
  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);
  v8 = sub_182AD2678();
  v9 = sub_182AD38B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v16 = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v16);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_181C64FFC(0xD00000000000003ALL, 0x8000000182BD52D0, &v16);
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  return v4;
}

uint64_t sub_181F5F140()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](v1);
  return sub_182AD4558();
}

uint64_t sub_181F5F1B4()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](v1);
  return sub_182AD4558();
}

unint64_t sub_181F5F26C()
{
  result = qword_1EA838A40;
  if (!qword_1EA838A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A40);
  }

  return result;
}

uint64_t sub_181F5F2C0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 1701736302;
  }

  if (!a1)
  {
    return 0x6C616974696E69;
  }

  v3 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v3);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  return 0x74617069746C756DLL;
}

uint64_t sub_181F5F378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 < *a2;
}

uint64_t sub_181F5F3B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    if (v2)
    {
      return 1;
    }

    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (v2)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  return *a2 >= *a1;
}

uint64_t sub_181F5F400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1)
  {
    if (v3)
    {
      return 1;
    }

    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (v3)
  {
    return v2 & (v3 ^ 1) ^ 1u;
  }

  return *a1 >= *a2;
}

uint64_t sub_181F5F448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    if (v2)
    {
      return 0;
    }

    return v3 & (v2 ^ 1u);
  }

  if (v2)
  {
    return v3 & (v2 ^ 1u);
  }

  return *a2 < *a1;
}

unint64_t sub_181F5F494()
{
  result = qword_1EA839C40;
  if (!qword_1EA839C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839C40);
  }

  return result;
}

uint64_t sub_181F5F4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for PacketIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PacketIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodedPacketNumber(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EncodedPacketNumber(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_181F5F6AC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181F5F704()
{
  result = qword_1EA838A58;
  if (!qword_1EA838A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A58);
  }

  return result;
}

unint64_t sub_181F5F758()
{
  result = qword_1EA838A60;
  if (!qword_1EA838A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A60);
  }

  return result;
}

unint64_t sub_181F5F7BC()
{
  result = qword_1EA838A68;
  if (!qword_1EA838A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A68);
  }

  return result;
}

unint64_t sub_181F5F814()
{
  result = qword_1EA838A70;
  if (!qword_1EA838A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A70);
  }

  return result;
}

uint64_t sub_181F5F868(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

BOOL sub_181F5F894()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9 = 64;
  v10 = 0;
  if ((sysctlbyname("hw.memsize", &v10, &v9, 0, 0) & 0x80000000) == 0)
  {
    return v10 > 0xC0000000;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v1 = sub_182AD2698();
  __swift_project_value_buffer(v1, qword_1EA843418);
  v2 = sub_182AD2678();
  v3 = sub_182AD38B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136315650;
    v6 = sub_182AD3BF8();
    v8 = sub_181C64FFC(v6, v7, v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v11);
    *(v4 + 22) = 2080;
    *(v4 + 24) = sub_181C64FFC(0xD00000000000002DLL, 0x8000000182BD5330, v11);
    _os_log_impl(&dword_181A37000, v2, v3, "%s %s %s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v5, -1, -1);
    MEMORY[0x1865DF520](v4, -1, -1);
  }

  return 1;
}

uint64_t AdvertisedRoute.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_181F5FB48(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_flags;
  v3 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((v3 & 4) != 0)
  {
    *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v3 & 0xFFFB;
  }

  swift_beginAccess();
  sub_18224FFEC(0);

  v4 = *(a1 + v2);
  if ((v4 & 0x40) != 0)
  {
    *(a1 + v2) = v4 & 0xFFBF;
  }

  sub_18224FFEC(1u);
  swift_endAccess();
}

void *Endpoint.activeInstanceCount.getter()
{
  result = *(v0 + OBJC_IVAR____TtC7Network8Endpoint_registrar);
  if (result)
  {
    return nw_protocol_instance_registrar_get_instance_count(result);
  }

  return result;
}

unint64_t sub_181F5FC14()
{
  result = qword_1EA838A80;
  if (!qword_1EA838A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndpointStorageKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndpointStorageKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181F5FDC0(void *a1, NSObject *a2, void *a3, NSObject *a4)
{
  if (a1 == a3)
  {
    return 1;
  }

  v11 = v4;
  v12 = v5;
  if (&__block_literal_global_7016 == a1 || &__block_literal_global_7016 == a3)
  {
    return 0;
  }

  v10 = 0;
  if ((sub_181B0A11C(a3, &v10) & 1) == 0)
  {
    return 0;
  }

  result = (a2 | a4) == 0;
  if (a2)
  {
    if (a4)
    {
      return nw_protocol_definition_is_equal(a2, a4);
    }
  }

  return result;
}

void *sub_181F5FE60(void *result)
{
  v4 = result + 2;
  v5 = (result + 5);
  v6 = result[3];
  v7 = result[4];
  v8 = v6 + v7;
  if (result[2] < v6 + v7)
  {
    if (v6 <= 0)
    {
      return result;
    }

    v2 = result;
    v9 = *(*v1 + 3);
    v10 = v9 + v6;
    if (!__OFADD__(v9, v6))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v1;
      if (*(*v1 + 2) < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v10);
        v12 = *v1;
      }

      sub_18207F3A0(v12 + 2, (v12 + 5), &v68);
      result = sub_181F65B18(v6, &v69);
      v13 = v69;
      v1 = v70;
      if (v73)
      {
        v14 = v2[4];
        v15 = v2[3] + v14;
        if (v2[2] < v15)
        {
          v16 = sub_182080680(v4, v5, v69, v70, v2);
          v65 = v16;
          v66 = v17;
          v67 = v18;
          if (v17 != v18)
          {
            goto LABEL_83;
          }

          v1 = &v65;
          if (sub_181AC81FC(v16))
          {
            goto LABEL_83;
          }

          goto LABEL_66;
        }

LABEL_33:
        v33 = __OFSUB__(v15, v14);
        v34 = v15 < v14;
        v35 = &v15[-v14];
        if (v34)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v33)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v35)
        {
          if (v1 < v35)
          {
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          result = memcpy(v13, (v5 + 16 * v14), 16 * v35);
        }

        goto LABEL_66;
      }

      if (v70 < 0)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v2[3] < v70)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v63 = v72;
      v64 = v71;
      v23 = MEMORY[0x1EEE9AC00](result);
      v59 = v13;
      v60 = v1;
      v65 = 0;
      v66 = v1;
      v67 = v2;
      MEMORY[0x1EEE9AC00](v23);
      v56 = &v65;
      v57 = sub_181F67068;
      v58 = v24;

      v25 = sub_181F66144(v4, v5, sub_181F67080);
      if (v26)
      {
        v65 = 0;
        v66 = v1;
        v67 = v2;
        v27 = MEMORY[0x1EEE9AC00](v25);
        v59 = v13;
        v60 = v1;
        MEMORY[0x1EEE9AC00](v27);
        v3 = &v55;
        v56 = &v65;
        v57 = sub_181F670A0;
        v58 = v28;

        result = sub_181F661CC(v4, v5, sub_181F670CC);
        if (v30)
        {
          if (v13)
          {
            if (v1)
            {
              v14 = v2[3];
              if (v14 < 1)
              {
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

              v14 = 0;
              v15 = v1 - 1;
              while (1)
              {
                v31 = v2[4];
                v32 = (v31 + v14) >= v2[2] ? v2[2] : 0;
                *v13 = *(v5 + 16 * (v14 + v31 - v32));
                if (v15 == v14)
                {
                  break;
                }

                v13 += 16;
                if (++v14 >= v2[3])
                {
                  goto LABEL_32;
                }
              }
            }
          }

          else if (v1)
          {
LABEL_88:
            v29 = 0;
LABEL_89:
            if (v29 >= v1)
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            if (v29 >= v2[3])
            {
LABEL_95:
              __break(1u);
              return result;
            }

            __break(1u);
            goto LABEL_92;
          }
        }

        else if (v29 != v1)
        {
          goto LABEL_89;
        }
      }

      else
      {
      }

      v62 = v12;
      v3 = v2[3];
      if (v3 < v1)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v37 = MEMORY[0x1EEE9AC00](v36);
      v1 = v63;
      v59 = v64;
      v60 = v63;
      v61 = v38;
      v65 = v38;
      v66 = v3;
      v67 = v2;
      MEMORY[0x1EEE9AC00](v37);
      v56 = &v65;
      v57 = sub_181F676B0;
      v58 = v39;

      v40 = sub_181F66144(v4, v5, sub_181F676E0);
      if ((v41 & 1) == 0)
      {

        v12 = v62;
        goto LABEL_66;
      }

      v65 = v61;
      v66 = v3;
      v67 = v2;
      v42 = MEMORY[0x1EEE9AC00](v40);
      v59 = v64;
      v60 = v1;
      MEMORY[0x1EEE9AC00](v42);
      v56 = &v65;
      v57 = sub_181F676C8;
      v58 = v43;

      result = sub_181F661CC(v4, v5, sub_181F676F8);
      v12 = v62;
      if (v45)
      {
        v46 = v61;
        v47 = v64;
        if (v64 && v63)
        {
          if ((v63 & 0x8000000000000000) != 0)
          {
LABEL_82:
            __break(1u);
LABEL_83:

            __break(1u);
LABEL_84:
            if (v49 < v46 || v49 >= v3)
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            if (v49 >= v2[3])
            {
LABEL_93:
              __break(1u);
              goto LABEL_94;
            }

            __break(1u);
            goto LABEL_88;
          }

          if (v61 != v3)
          {
            v48 = (v63 - 1);
            v49 = v61;
            while (v3 != v49)
            {
              if (v49 >= v2[3])
              {
                goto LABEL_78;
              }

              v50 = v2[4];
              if ((v50 + v49) >= v2[2])
              {
                v51 = v2[2];
              }

              else
              {
                v51 = 0;
              }

              v52 = v49 + v50 - v51;
              v49 = (v49 + 1);
              *v47 = *(v5 + 16 * v52);
              if (!v48)
              {
                goto LABEL_64;
              }

              v47 += 16;
              --v48;
              if (v3 == v49)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_77;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v46 = v61;
        v49 = (v61 + v44);
        if (!__OFADD__(v61, v44))
        {
LABEL_64:
          if (v49 != v3)
          {
            goto LABEL_84;
          }

LABEL_65:

LABEL_66:
          v53 = v12[3];
          v33 = __OFADD__(v53, v6);
          v54 = v53 + v6;
          if (!v33)
          {
            v12[3] = v54;
            return result;
          }

          goto LABEL_73;
        }

        __break(1u);
      }

      v49 = v46;
      goto LABEL_64;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (__OFSUB__(v8, v7))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v19 = *(*v1 + 3);
  v20 = v19 + v6;
  if (__OFADD__(v19, v6))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v1;
  if (*(*v1 + 2) < v20 || (v21 & 1) == 0)
  {
    sub_181B8477C(v21, v20);
    v22 = *v1;
  }

  return sub_181CC4734(v22 + 16, v22 + 40, v5 + 16 * v7, v6, sub_181B64818, sub_181F65BC0);
}

void *sub_181F604FC(void *result)
{
  v3 = result + 2;
  v4 = (result + 5);
  v5 = result[3];
  v6 = result[4];
  v7 = v5 + v6;
  if (result[2] < v5 + v6)
  {
    if (v5 <= 0)
    {
      return result;
    }

    v2 = result;
    v8 = *(*v1 + 24);
    v9 = v8 + v5;
    if (__OFADD__(v8, v5))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    if (*(*v1 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181AA69D8(isUniquelyReferenced_nonNull_native, v9);
      v11 = *v1;
    }

    sub_18207F44C((v11 + 16), v11 + 40, v56);
    result = sub_181F65B18(v5, &v57);
    v12 = v57;
    v1 = v58;
    if (v61)
    {
      v13 = v2[4];
      v14 = v2[3] + v13;
      if (v2[2] < v14)
      {
        v15 = sub_182080930(v3, v4, v57, v58, v2);
        v53 = v15;
        v54 = v16;
        v55 = v17;
        if (v16 != v17)
        {
          goto LABEL_89;
        }

        v1 = &v53;
        if (sub_181AC81FC(v15))
        {
          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_33:
      v31 = v14 - v13;
      if (v14 < v13)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (__OFSUB__(v14, v13))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v31)
      {
        if (v1 < v31)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v1 = (v4 + 8 * v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
        result = swift_arrayInitWithCopy();
      }

      goto LABEL_67;
    }

    if (v58 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v2[3] < v58)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v51 = v60;
    v52 = v59;
    MEMORY[0x1EEE9AC00](result);
    v53 = 0;
    v54 = v1;
    v55 = v2;
    MEMORY[0x1EEE9AC00](v22);

    v23 = sub_181F66260(v3, v4, sub_181F67710);
    if (v24)
    {
      v53 = 0;
      v54 = v1;
      v55 = v2;
      MEMORY[0x1EEE9AC00](v23);
      MEMORY[0x1EEE9AC00](v25);

      result = sub_181F662E8(v3, v4, sub_181F67728);
      if (v27)
      {
        if (v12)
        {
          if (v1)
          {
            v13 = v2[3];
            if (v13 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v28 = 0;
            while (1)
            {
              v29 = v2[4];
              v30 = v28 + v29 >= v2[2] ? v2[2] : 0;
              *(v12 + 8 * v28) = *(v4 + 8 * (v28 + v29 - v30));
              if ((v1 - 1) == v28)
              {
                break;
              }

              result = swift_unknownObjectRetain();
              v13 = v2[3];
              if (++v28 >= v13)
              {
                goto LABEL_32;
              }
            }

            swift_unknownObjectRetain();
          }
        }

        else if (v1)
        {
LABEL_90:
          v26 = 0;
LABEL_91:
          if (v26 >= v1)
          {
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v26 >= v2[3])
          {
LABEL_97:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_94;
        }
      }

      else if (v26 != v1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v33 = v2[3];
    if (v33 < v1)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    MEMORY[0x1EEE9AC00](v32);
    v1 = v51;
    v50 = v34;
    v53 = v34;
    v54 = v33;
    v55 = v2;
    MEMORY[0x1EEE9AC00](v35);

    v36 = sub_181F66260(v3, v4, sub_181F67710);
    if ((v37 & 1) == 0)
    {

      goto LABEL_67;
    }

    v53 = v50;
    v54 = v33;
    v55 = v2;
    MEMORY[0x1EEE9AC00](v36);
    MEMORY[0x1EEE9AC00](v38);

    result = sub_181F662E8(v3, v4, sub_181F67728);
    if (v40)
    {
      v1 = v50;
      v41 = v52;
      if (v52 && v51)
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
LABEL_89:

          __break(1u);
          goto LABEL_90;
        }

        if (v50 != v33)
        {
          v42 = (v51 - 1);
          v43 = v50;
          while (v33 != v43)
          {
            if (v43 >= v2[3])
            {
              goto LABEL_84;
            }

            v44 = v2[4];
            if (v43 + v44 >= v2[2])
            {
              v45 = v2[2];
            }

            else
            {
              v45 = 0;
            }

            v46 = *(v4 + 8 * (v43 + v44 - v45));
            v43 = (v43 + 1);
            *v41 = v46;
            if (!v42)
            {
              result = swift_unknownObjectRetain();
              if (v43 == v33)
              {
                goto LABEL_66;
              }

              goto LABEL_71;
            }

            ++v41;
            swift_unknownObjectRetain();
            --v42;
            if (v33 == v43)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v1 = v50;
      v43 = (v50 + v39);
      if (!__OFADD__(v50, v39))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v43 = v1;
LABEL_65:
    if (v43 == v33)
    {
LABEL_66:

LABEL_67:
      v47 = *(v11 + 24);
      v48 = __OFADD__(v47, v5);
      v49 = v47 + v5;
      if (!v48)
      {
        *(v11 + 24) = v49;
        return result;
      }

      goto LABEL_79;
    }

LABEL_71:
    if (v43 < v1 || v43 >= v33)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v43 >= v2[3])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_75;
  }

  if (v7 < v6)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (__OFSUB__(v7, v6))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v18 = *(*v1 + 24);
  v19 = v18 + v5;
  if (__OFADD__(v18, v5))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v1;
  if (*(*v1 + 16) < v19 || (v20 & 1) == 0)
  {
    sub_181AA69D8(v20, v19);
    v21 = *v1;
  }

  return sub_181CC4734(v21 + 16, v21 + 40, v4 + 8 * v6, v5, sub_181D8977C, sub_181F65DC4);
}

void *sub_181F60BCC(void *result)
{
  v3 = result + 2;
  v4 = (result + 5);
  v5 = result[3];
  v6 = result[4];
  v7 = v5 + v6;
  if (result[2] < v5 + v6)
  {
    if (v5 <= 0)
    {
      return result;
    }

    v2 = result;
    v8 = *(*v1 + 24);
    v9 = v8 + v5;
    if (__OFADD__(v8, v5))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    if (*(*v1 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ADA6FC(isUniquelyReferenced_nonNull_native, v9);
      v11 = *v1;
    }

    sub_18207F44C((v11 + 16), v11 + 40, v59);
    result = sub_181F65B18(v5, &v60);
    v12 = v60;
    v1 = v61;
    if (v64)
    {
      v13 = v2[4];
      v14 = v2[3] + v13;
      if (v2[2] < v14)
      {
        v15 = sub_182080AAC(v3, v4, v60, v61, v2);
        v56 = v15;
        v57 = v16;
        v58 = v17;
        if (v16 != v17)
        {
          goto LABEL_89;
        }

        v1 = &v56;
        if (sub_181AC81FC(v15))
        {
          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_33:
      v32 = v14 - v13;
      if (v14 < v13)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (__OFSUB__(v14, v13))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v32)
      {
        if (v1 < v32)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v1 = (v4 + 8 * v13);
        type metadata accessor for Endpoint(0);
        result = swift_arrayInitWithCopy();
      }

      goto LABEL_67;
    }

    if (v61 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v2[3] < v61)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v54 = v63;
    v55 = v62;
    MEMORY[0x1EEE9AC00](result);
    v56 = 0;
    v57 = v1;
    v58 = v2;
    MEMORY[0x1EEE9AC00](v22);

    v23 = sub_181F66260(v3, v4, sub_181F67710);
    if (v24)
    {
      v56 = 0;
      v57 = v1;
      v58 = v2;
      MEMORY[0x1EEE9AC00](v23);
      MEMORY[0x1EEE9AC00](v25);

      result = sub_181F662E8(v3, v4, sub_181F67728);
      if (v27)
      {
        if (v12)
        {
          if (v1)
          {
            v13 = v2[3];
            if (v13 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v28 = 0;
            while (1)
            {
              v29 = v2[4];
              v30 = v28 + v29 >= v2[2] ? v2[2] : 0;
              v31 = *(v4 + 8 * (v28 + v29 - v30));
              *(v12 + 8 * v28) = v31;
              if ((v1 - 1) == v28)
              {
                break;
              }

              result = v31;
              v13 = v2[3];
              if (++v28 >= v13)
              {
                goto LABEL_32;
              }
            }

            v34 = v31;
          }
        }

        else if (v1)
        {
LABEL_90:
          v26 = 0;
LABEL_91:
          if (v26 >= v1)
          {
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v26 >= v2[3])
          {
LABEL_97:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_94;
        }
      }

      else if (v26 != v1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v35 = v2[3];
    if (v35 < v1)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    MEMORY[0x1EEE9AC00](v33);
    v1 = v54;
    v53 = v36;
    v56 = v36;
    v57 = v35;
    v58 = v2;
    MEMORY[0x1EEE9AC00](v37);

    v38 = sub_181F66260(v3, v4, sub_181F67710);
    if ((v39 & 1) == 0)
    {

      goto LABEL_67;
    }

    v56 = v53;
    v57 = v35;
    v58 = v2;
    MEMORY[0x1EEE9AC00](v38);
    MEMORY[0x1EEE9AC00](v40);

    result = sub_181F662E8(v3, v4, sub_181F67728);
    if (v42)
    {
      v1 = v53;
      v43 = v55;
      if (v55 && v54)
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
LABEL_89:

          __break(1u);
          goto LABEL_90;
        }

        if (v53 != v35)
        {
          v44 = (v54 - 1);
          v45 = v53;
          while (v35 != v45)
          {
            if (v45 >= v2[3])
            {
              goto LABEL_84;
            }

            v46 = v2[4];
            if (v45 + v46 >= v2[2])
            {
              v47 = v2[2];
            }

            else
            {
              v47 = 0;
            }

            v48 = *(v4 + 8 * (v45 + v46 - v47));
            v45 = (v45 + 1);
            *v43 = v48;
            if (!v44)
            {
              result = v48;
              if (v45 == v35)
              {
                goto LABEL_66;
              }

              goto LABEL_71;
            }

            ++v43;
            v49 = v48;
            --v44;
            if (v35 == v45)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v1 = v53;
      v45 = (v53 + v41);
      if (!__OFADD__(v53, v41))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v45 = v1;
LABEL_65:
    if (v45 == v35)
    {
LABEL_66:

LABEL_67:
      v50 = *(v11 + 24);
      v51 = __OFADD__(v50, v5);
      v52 = v50 + v5;
      if (!v51)
      {
        *(v11 + 24) = v52;
        return result;
      }

      goto LABEL_79;
    }

LABEL_71:
    if (v45 < v1 || v45 >= v35)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v45 >= v2[3])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_75;
  }

  if (v7 < v6)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (__OFSUB__(v7, v6))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v18 = *(*v1 + 24);
  v19 = v18 + v5;
  if (__OFADD__(v18, v5))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v1;
  if (*(*v1 + 16) < v19 || (v20 & 1) == 0)
  {
    sub_181ADA6FC(v20, v19);
    v21 = *v1;
  }

  return sub_181CC4734(v21 + 16, v21 + 40, v4 + 8 * v6, v5, sub_181D8977C, sub_181F65F10);
}

void *sub_181F61290(void *result)
{
  v3 = result + 2;
  v4 = (result + 5);
  v5 = result[3];
  v6 = result[4];
  v7 = v5 + v6;
  if (result[2] < v5 + v6)
  {
    if (v5 <= 0)
    {
      return result;
    }

    v2 = result;
    v8 = *(*v1 + 24);
    v9 = v8 + v5;
    if (__OFADD__(v8, v5))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    if (*(*v1 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181CA4444(isUniquelyReferenced_nonNull_native, v9);
      v11 = *v1;
    }

    sub_18207F44C((v11 + 16), v11 + 40, v56);
    result = sub_181F65B18(v5, &v57);
    v12 = v57;
    v1 = v58;
    if (v61)
    {
      v13 = v2[4];
      v14 = v2[3] + v13;
      if (v2[2] < v14)
      {
        v15 = sub_1820808FC(v3, v4, v57, v58, v2);
        v53 = v15;
        v54 = v16;
        v55 = v17;
        if (v16 != v17)
        {
          goto LABEL_89;
        }

        v1 = &v53;
        if (sub_181AC81FC(v15))
        {
          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_33:
      v31 = v14 - v13;
      if (v14 < v13)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (__OFSUB__(v14, v13))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v31)
      {
        if (v1 < v31)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        result = swift_arrayInitWithCopy();
      }

      goto LABEL_67;
    }

    if (v58 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v2[3] < v58)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v51 = v60;
    v52 = v59;
    MEMORY[0x1EEE9AC00](result);
    v53 = 0;
    v54 = v1;
    v55 = v2;
    MEMORY[0x1EEE9AC00](v22);

    v23 = sub_181F66260(v3, v4, sub_181F66F00);
    if (v24)
    {
      v53 = 0;
      v54 = v1;
      v55 = v2;
      MEMORY[0x1EEE9AC00](v23);
      MEMORY[0x1EEE9AC00](v25);

      result = sub_181F662E8(v3, v4, sub_181F66F4C);
      if (v27)
      {
        if (v12)
        {
          if (v1)
          {
            v13 = v2[3];
            if (v13 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v28 = 0;
            while (1)
            {
              v29 = v2[4];
              v30 = v28 + v29 >= v2[2] ? v2[2] : 0;
              *(v12 + 8 * v28) = *(v4 + 8 * (v28 + v29 - v30));
              if ((v1 - 1) == v28)
              {
                break;
              }

              result = swift_unknownObjectRetain();
              v13 = v2[3];
              if (++v28 >= v13)
              {
                goto LABEL_32;
              }
            }

            swift_unknownObjectRetain();
          }
        }

        else if (v1)
        {
LABEL_90:
          v26 = 0;
LABEL_91:
          if (v26 >= v1)
          {
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v26 >= v2[3])
          {
LABEL_97:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_94;
        }
      }

      else if (v26 != v1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v33 = v2[3];
    if (v33 < v1)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    MEMORY[0x1EEE9AC00](v32);
    v1 = v51;
    v50 = v34;
    v53 = v34;
    v54 = v33;
    v55 = v2;
    MEMORY[0x1EEE9AC00](v35);

    v36 = sub_181F66260(v3, v4, sub_181F67710);
    if ((v37 & 1) == 0)
    {

      goto LABEL_67;
    }

    v53 = v50;
    v54 = v33;
    v55 = v2;
    MEMORY[0x1EEE9AC00](v36);
    MEMORY[0x1EEE9AC00](v38);

    result = sub_181F662E8(v3, v4, sub_181F67728);
    if (v40)
    {
      v1 = v50;
      v41 = v52;
      if (v52 && v51)
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
LABEL_89:

          __break(1u);
          goto LABEL_90;
        }

        if (v50 != v33)
        {
          v42 = (v51 - 1);
          v43 = v50;
          while (v33 != v43)
          {
            if (v43 >= v2[3])
            {
              goto LABEL_84;
            }

            v44 = v2[4];
            if (v43 + v44 >= v2[2])
            {
              v45 = v2[2];
            }

            else
            {
              v45 = 0;
            }

            v46 = *(v4 + 8 * (v43 + v44 - v45));
            v43 = (v43 + 1);
            *v41 = v46;
            if (!v42)
            {
              result = swift_unknownObjectRetain();
              if (v43 == v33)
              {
                goto LABEL_66;
              }

              goto LABEL_71;
            }

            ++v41;
            swift_unknownObjectRetain();
            --v42;
            if (v33 == v43)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v1 = v50;
      v43 = (v50 + v39);
      if (!__OFADD__(v50, v39))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v43 = v1;
LABEL_65:
    if (v43 == v33)
    {
LABEL_66:

LABEL_67:
      v47 = *(v11 + 24);
      v48 = __OFADD__(v47, v5);
      v49 = v47 + v5;
      if (!v48)
      {
        *(v11 + 24) = v49;
        return result;
      }

      goto LABEL_79;
    }

LABEL_71:
    if (v43 < v1 || v43 >= v33)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v43 >= v2[3])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_75;
  }

  if (v7 < v6)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (__OFSUB__(v7, v6))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v18 = *(*v1 + 24);
  v19 = v18 + v5;
  if (__OFADD__(v18, v5))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v1;
  if (*(*v1 + 16) < v19 || (v20 & 1) == 0)
  {
    sub_181CA4444(v20, v19);
    v21 = *v1;
  }

  return sub_181CC4734(v21 + 16, v21 + 40, v4 + 8 * v6, v5, sub_181D8977C, sub_181F65CB8);
}