void FlowStatistics.setMetadata<A>(_:flag:)(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BBC8);
    if (swift_dynamicCastClass())
    {
      v4 = qword_1EA837298;

      if (v4 == -1)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        swift_once();
        if ((a2 & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (!HIDWORD(a2))
          {
            v5 = swift_modifyAtWritableKeyPath();
            v6 = swift_modifyAtWritableKeyPath();
            *v7 |= a2;
            v6(&v8, 0);
            v5(v9, 0);

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void FlowStatistics.clearMetadata<A>(_:flag:)(uint64_t a1, unint64_t a2)
{
  if (*v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BBC8);
    if (swift_dynamicCastClass())
    {
      v4 = qword_1EA837298;

      if (v4 == -1)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        swift_once();
        if ((a2 & 0x8000000000000000) == 0)
        {
LABEL_5:
          if (!HIDWORD(a2))
          {
            v5 = swift_modifyAtWritableKeyPath();
            v6 = swift_modifyAtWritableKeyPath();
            *v7 &= ~a2;
            v6(&v8, 0);
            v5(v9, 0);

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

Swift::Void __swiftcall FlowStatistics.setProbeStatus(probeActivated:writeProbeFailed:readProbeFailed:connProbeFailed:)(Swift::Int probeActivated, Swift::Int writeProbeFailed, Swift::Int readProbeFailed, Swift::Int connProbeFailed)
{
  if (*v4)
  {
    if (qword_1EA8372A0 == -1)
    {
      if ((probeActivated & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      swift_once();
      if ((probeActivated & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (!HIDWORD(probeActivated))
        {
          v9 = swift_modifyAtWritableKeyPath();
          v11 = v10;
          v12 = sub_1822A1A34(*v10);
          sub_1822A1A3C(v12 | probeActivated, v11);
          v9(v25, 0);
          if ((writeProbeFailed & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(writeProbeFailed))
            {
              v13 = swift_modifyAtWritableKeyPath();
              v15 = v14;
              v16 = sub_1822A1A4C(*v14);
              sub_1822A1A54(v16 | writeProbeFailed, v15);
              v13(v25, 0);
              if ((readProbeFailed & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(readProbeFailed))
                {
                  v17 = swift_modifyAtWritableKeyPath();
                  v19 = v18;
                  v20 = sub_1822A1A6C(*v18);
                  sub_1822A1A74(v20 | readProbeFailed, v19);
                  v17(v25, 0);
                  if ((connProbeFailed & 0x8000000000000000) == 0)
                  {
                    if (!HIDWORD(connProbeFailed))
                    {
                      v21 = swift_modifyAtWritableKeyPath();
                      v23 = v22;
                      v24 = sub_1822A1A8C(*v22);
                      sub_1822A1A94(v24 | connProbeFailed, v23);
                      v21(v25, 0);
                      return;
                    }

LABEL_21:
                    __break(1u);
                    return;
                  }

LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

LABEL_19:
                __break(1u);
                goto LABEL_20;
              }

LABEL_18:
              __break(1u);
              goto LABEL_19;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_1822A18C0(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a2;
  result = sub_182258BF8(v4, v5, isUniquelyReferenced_nonNull_native);
  *a2 = v8;
  return result;
}

unint64_t (*Statistics.subscript.modify(uint64_t a1, unsigned __int8 *a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  v4 = *a2;
  *(a1 + 16) = v4;
  v5 = *v2;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_181A41ED0(v4);
    if (v8)
    {
      v6 = *(*(v5 + 56) + 8 * v7);
    }

    else
    {
      v6 = 0;
    }
  }

  *a1 = v6;
  return sub_1822A1994;
}

unint64_t sub_1822A1994(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v3;
  result = sub_182258BF8(v2, *(a1 + 16), isUniquelyReferenced_nonNull_native);
  *v3 = v6;
  return result;
}

uint64_t Statistics.setSSRToken(_:)(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

unint64_t sub_1822A1AB0()
{
  result = qword_1EA83BBD8;
  if (!qword_1EA83BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BBD8);
  }

  return result;
}

unint64_t sub_1822A1B08()
{
  result = qword_1EA83BBE0;
  if (!qword_1EA83BBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83BBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionStatistics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAA)
  {
    goto LABEL_17;
  }

  if (a2 + 86 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 86) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 86;
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

      return (*a1 | (v4 << 8)) - 86;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 86;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x57;
  v8 = v6 - 87;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionStatistics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 86 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 86) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAA)
  {
    v4 = 0;
  }

  if (a2 > 0xA9)
  {
    v5 = ((a2 - 170) >> 8) + 1;
    *result = a2 + 86;
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
    *result = a2 + 86;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1822A1D3C()
{
  sub_182AD2258();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NWActorID();
    if (v1 <= 0x3F)
    {
      sub_18206FB08(319, &unk_1EA836A08);
      if (v2 <= 0x3F)
      {
        sub_18206FB08(319, &qword_1EA839D98);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1822A1E28()
{
  v1 = v0;
  v2 = type metadata accessor for NWActorSystemProtobuf_ActorID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NWActorSystemProtobuf_RemoteCall(0);
  v20[1] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[2] = 0;
  v8[3] = 0xE000000000000000;
  v9 = MEMORY[0x1E69E7CC0];
  v8[4] = MEMORY[0x1E69E7CC0];
  v8[5] = v9;
  v8[6] = 0;
  sub_182AD23B8();
  v10 = *(v6 + 40);
  v20[0] = *(v3 + 56);
  (v20[0])(v8 + v10, 1, 1, v2);
  *v8 = sub_182AD2208();
  v8[1] = v11;
  v12 = type metadata accessor for RemoteCallEnvelope(0);
  v13 = (v0 + v12[5]);
  sub_182AD23B8();
  v14 = v13[1];
  *v5 = *v13;
  v5[1] = v14;
  type metadata accessor for NWActorID();

  v5[2] = sub_182AD2208();
  v5[3] = v15;
  sub_181F49A88(v8 + v10, &qword_1EA839D28);
  sub_1822A3CE8(v5, v8 + v10, type metadata accessor for NWActorSystemProtobuf_ActorID);
  (v20[0])(v8 + v10, 0, 1, v2);
  v16 = (v1 + v12[6]);
  v17 = v16[1];
  v8[2] = *v16;
  v8[3] = v17;
  v8[4] = *(v1 + v12[7]);
  v8[5] = *(v1 + v12[8]);
  v8[6] = *(v1 + v12[9]);
  sub_1822A3D50(&qword_1EA839CC8, type metadata accessor for NWActorSystemProtobuf_RemoteCall);

  v18 = sub_182AD24C8();
  sub_1822A391C(v8, type metadata accessor for NWActorSystemProtobuf_RemoteCall);
  return v18;
}

uint64_t sub_1822A2100@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839D28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v47 - v6;
  v7 = type metadata accessor for NWActorSystemProtobuf_ActorID(0);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v47 - v16;
  v17 = sub_182AD2258();
  v56 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NWActorSystemProtobuf_RemoteCall(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  v61 = a2;
  v23 = sub_182AD23E8();
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_181F49B58(a1, a2);
  sub_182AD23D8();
  sub_1822A3D50(&qword_1EA839CC8, type metadata accessor for NWActorSystemProtobuf_RemoteCall);
  v24 = v62;
  sub_182AD24D8();
  if (v24)
  {
    return sub_181C1F2E4(a1, a2);
  }

  v48 = v19;
  v49 = v11;
  v62 = a1;
  v26 = v55;
  sub_182AD21F8();
  sub_181AB5D28(v26, v14, &qword_1EA8394C0);
  v27 = v56;
  if ((*(v56 + 48))(v14, 1, v17) == 1)
  {
    sub_181F49A88(v14, &qword_1EA8394C0);
    sub_182168BA0();
    swift_allocError();
    strcpy(v28, "Missing callID");
    v28[15] = -18;
    swift_willThrow();
    sub_181C1F2E4(v62, a2);
    sub_181F49A88(v26, &qword_1EA8394C0);
    return sub_1822A391C(v22, type metadata accessor for NWActorSystemProtobuf_RemoteCall);
  }

  else
  {
    v47 = a2;
    sub_181F49A88(v26, &qword_1EA8394C0);
    v29 = v27;
    v30 = v50;
    v31 = v22;
    v32 = *(v29 + 32);
    v33 = v48;
    v32(v48, v14, v17);
    v34 = v30;
    v55 = v17;
    v32(v30, v33, v17);
    v35 = v54;
    sub_181AB5D28(v31 + *(v20 + 40), v54, &qword_1EA839D28);
    v36 = v52;
    v37 = *(v51 + 48);
    if (v37(v35, 1, v52) == 1)
    {
      v38 = v53;
      *v53 = 0;
      v38[1] = 0xE000000000000000;
      v38[2] = 0;
      v38[3] = 0xE000000000000000;
      sub_182AD23B8();
      v39 = v37(v35, 1, v36);
      v40 = v62;
      v41 = v49;
      if (v39 != 1)
      {
        sub_181F49A88(v35, &qword_1EA839D28);
      }
    }

    else
    {
      v38 = v53;
      sub_1822A3CE8(v35, v53, type metadata accessor for NWActorSystemProtobuf_ActorID);
      v40 = v62;
      v41 = v49;
    }

    sub_182168854(v38, v41);
    sub_181C1F2E4(v40, v47);
    v42 = type metadata accessor for RemoteCallEnvelope(0);
    sub_1822A3CE8(v41, &v34[v42[5]], type metadata accessor for NWActorID);
    v43 = v31[3];
    v44 = &v34[v42[6]];
    *v44 = v31[2];
    *(v44 + 1) = v43;
    v45 = v31[5];
    *&v34[v42[7]] = v31[4];
    *&v34[v42[8]] = v45;
    v46 = v31[6];

    result = sub_1822A391C(v31, type metadata accessor for NWActorSystemProtobuf_RemoteCall);
    *&v34[v42[9]] = v46;
  }

  return result;
}

uint64_t sub_1822A2878(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BC68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822A3810();
  sub_182AD4638();
  LOBYTE(v12) = 0;
  sub_182AD2258();
  sub_1822A3D50(&unk_1EA839600, MEMORY[0x1E69695A8]);
  sub_182AD4118();
  if (!v2)
  {
    v9 = type metadata accessor for RemoteCallEnvelope(0);
    LOBYTE(v12) = 1;
    type metadata accessor for NWActorID();
    sub_1822A3D50(&qword_1EA83BC70, type metadata accessor for NWActorID);
    sub_182AD4118();
    LOBYTE(v12) = 2;
    sub_182AD40E8();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530);
    sub_181F9AB20(&qword_1EA838FB8);
    sub_182AD4118();
    v12 = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BC50);
    sub_1822A397C(&qword_1EA83BC78, sub_181C675F8);
    sub_182AD4118();
    v12 = *(v3 + v9[9]);
    HIBYTE(v11) = 5;
    sub_1822A39F4();
    sub_182AD4118();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1822A2BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for NWActorID();
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_182AD2258();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BC38);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for RemoteCallEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822A3810();
  v26 = v9;
  v13 = v27;
  sub_182AD45E8();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v23;
  LOBYTE(v29) = 0;
  sub_1822A3D50(&qword_1EA8395E8, MEMORY[0x1E69695A8]);
  sub_182AD3FF8();
  (*(v22 + 32))(v12, v25, v5);
  LOBYTE(v29) = 1;
  sub_1822A3D50(&qword_1EA83BC48, type metadata accessor for NWActorID);
  sub_182AD3FF8();
  sub_1822A3CE8(v4, &v12[v10[5]], type metadata accessor for NWActorID);
  LOBYTE(v29) = 2;
  v15 = sub_182AD3FC8();
  v16 = &v12[v10[6]];
  *v16 = v15;
  v16[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530);
  v28 = 3;
  sub_181F9AB20(&qword_1EA838F90);
  sub_182AD3FF8();
  *&v12[v10[7]] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BC50);
  v28 = 4;
  sub_1822A397C(&qword_1EA83BC58, sub_181C67934);
  sub_182AD3FF8();
  *&v12[v10[8]] = v29;
  v28 = 5;
  sub_1822A3864();
  sub_182AD3FF8();
  (*(v14 + 8))(v26, v24);
  *&v12[v10[9]] = v29;
  sub_1822A38B8(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1822A391C(v12, type metadata accessor for RemoteCallEnvelope);
}

uint64_t sub_1822A3284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_182AD2258();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BCC0);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CancelRemoteCall(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822A4170();
  sub_182AD45E8();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1822A3D50(&qword_1EA8395E8, MEMORY[0x1E69695A8]);
    sub_182AD3FF8();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1822A3CE8(v11, v13, type metadata accessor for CancelRemoteCall);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1822A3524()
{
  result = qword_1EA83BC18;
  if (!qword_1EA83BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC18);
  }

  return result;
}

unint64_t sub_1822A357C()
{
  result = qword_1EA83BC20;
  if (!qword_1EA83BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC20);
  }

  return result;
}

unint64_t sub_1822A35D4()
{
  result = qword_1EA83BC28;
  if (!qword_1EA83BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC28);
  }

  return result;
}

unint64_t sub_1822A362C()
{
  result = qword_1EA83BC30;
  if (!qword_1EA83BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC30);
  }

  return result;
}

uint64_t sub_1822A3680()
{
  v1 = *v0;
  v2 = 0x44496C6C6163;
  v3 = 0x53636972656E6567;
  v4 = 1936159329;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E65697069636572;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_1822A3740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1822A3F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1822A3768(uint64_t a1)
{
  v2 = sub_1822A3810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822A37A4(uint64_t a1)
{
  v2 = sub_1822A3810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1822A3810()
{
  result = qword_1EA83BC40;
  if (!qword_1EA83BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC40);
  }

  return result;
}

unint64_t sub_1822A3864()
{
  result = qword_1EA83BC60;
  if (!qword_1EA83BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC60);
  }

  return result;
}

uint64_t sub_1822A38B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteCallEnvelope(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1822A391C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1822A397C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83BC50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1822A39F4()
{
  result = qword_1EA83BC80;
  if (!qword_1EA83BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC80);
  }

  return result;
}

uint64_t sub_1822A3A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496C6C6163 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1822A3AE0(uint64_t a1)
{
  v2 = sub_1822A4170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1822A3B1C(uint64_t a1)
{
  v2 = sub_1822A4170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1822A3B70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83BCB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1822A4170();
  sub_182AD4638();
  sub_182AD2258();
  sub_1822A3D50(&unk_1EA839600, MEMORY[0x1E69695A8]);
  sub_182AD4118();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1822A3CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1822A3D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1822A3DE0()
{
  result = sub_182AD2258();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1822A3E60()
{
  result = qword_1EA83BC98;
  if (!qword_1EA83BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BC98);
  }

  return result;
}

unint64_t sub_1822A3EB8()
{
  result = qword_1EA83BCA0;
  if (!qword_1EA83BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCA0);
  }

  return result;
}

unint64_t sub_1822A3F10()
{
  result = qword_1EA83BCA8;
  if (!qword_1EA83BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCA8);
  }

  return result;
}

uint64_t sub_1822A3F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496C6C6163 && a2 == 0xE600000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xE900000000000074 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000182BDC480 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53636972656E6567 && a2 == 0xEB00000000736275 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1936159329 && a2 == 0xE400000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_182AD4268();

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

unint64_t sub_1822A4170()
{
  result = qword_1EA83BCB8;
  if (!qword_1EA83BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCB8);
  }

  return result;
}

unint64_t sub_1822A41D8()
{
  result = qword_1EA83BCC8;
  if (!qword_1EA83BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCC8);
  }

  return result;
}

unint64_t sub_1822A4230()
{
  result = qword_1EA83BCD0;
  if (!qword_1EA83BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCD0);
  }

  return result;
}

unint64_t sub_1822A4288()
{
  result = qword_1EA83BCD8;
  if (!qword_1EA83BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCD8);
  }

  return result;
}

uint64_t sub_1822A42DC()
{
  close(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1822A4324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1822A43D4();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_1822A4380()
{
  result = qword_1EA83BCE0;
  if (!qword_1EA83BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCE0);
  }

  return result;
}

unint64_t sub_1822A43D4()
{
  result = qword_1EA83BCE8;
  if (!qword_1EA83BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCE8);
  }

  return result;
}

void sub_1822A4428(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = 0;
  v3 = a1 + 32 + *(a1 + 16);
  v18 = a1 + 32;
  v19 = v3;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  Deserializer.uint8(_:)(&v23, v17);
  v4 = v21;
  v5 = v22;
  if (v22 != 1)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (v21)
  {
    if (v21 != 1)
    {
      v4 = 2;
    }

    goto LABEL_5;
  }

  if (v18)
  {
    v16 = v19 - v18;
  }

  else
  {
    v16 = 0;
  }

  v4 = v16 - v20;
  if (__OFSUB__(v16, v20))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {

    if (!v4)
    {
      v15 = 0;
      v14 = v23;
LABEL_11:
      *a2 = v14;
      a2[1] = v15;
      return;
    }

    v5 = 0;
LABEL_6:
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      v18 = v4;
      LOBYTE(v19) = v5;
      v11 = DeserializationResult.description.getter();
      v13 = sub_181C64FFC(v11, v12, v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_181A37000, v7, v8, "Failed to deserialize: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    v14 = 0;
    v15 = 1;
    goto LABEL_11;
  }

  __break(1u);
}

Swift::OpaquePointer_optional __swiftcall CustomIPProtocol.CustomIPOptions.serialize()()
{
  v6[0] = *v0;
  v6[40] = 0;
  sub_181F80BF8(v6, v5);
  v4 = MEMORY[0x1E69E7CC0];
  sub_181F80BF8(v5, v3);
  sub_181F80C54(v5);
  sub_1822A69B4(&v4);
  sub_181F80C54(v3);
  sub_181F80C54(v6);
  v2 = v4;
  result.value._rawValue = v2;
  result.is_nil = v1;
  return result;
}

uint64_t CustomIPProtocol.CustomIPInstance.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t CustomIPProtocol.CustomIPInstance.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t CustomIPProtocol.CustomIPInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t CustomIPProtocol.CustomIPInstance.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

void CustomIPProtocol.newPerProtocolOptions(from:)(_BYTE *a1@<X8>)
{

  sub_1822A4428(v2, a1);
}

uint64_t CustomIPProtocol.newProtocolInstance()()
{
  type metadata accessor for CustomIPProtocol.CustomIPInstance();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

void sub_1822A4918(_BYTE *a1@<X8>)
{

  sub_1822A4428(v2, a1);
}

unint64_t sub_1822A498C(uint64_t a1)
{
  result = sub_1822A49B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1822A49B4()
{
  result = qword_1EA83BCF0;
  if (!qword_1EA83BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCF0);
  }

  return result;
}

unint64_t sub_1822A4A08(uint64_t a1)
{
  result = sub_1822A4A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1822A4A30()
{
  result = qword_1EA83BCF8;
  if (!qword_1EA83BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BCF8);
  }

  return result;
}

unint64_t sub_1822A4A88()
{
  result = qword_1EA83BD00;
  if (!qword_1EA83BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BD00);
  }

  return result;
}

unint64_t sub_1822A4AE0()
{
  result = qword_1EA83BD08;
  if (!qword_1EA83BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BD08);
  }

  return result;
}

uint64_t Serializer.uint8(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[40] = 0;
  return result;
}

uint64_t Serializer.buffer(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 40) = 11;
}

{
  result = sub_181F75240(a1, a2);
  *(a2 + 40) = 13;
  return result;
}

uint64_t Serializer.uint32NetworkByteOrder(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 6;
  return result;
}

uint64_t static Serializer.buildArray(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result + 32;
    do
    {
      result = sub_1822A69B4(&v6);
      v5 += 48;
      --v4;
    }

    while (v4);
    v3 = v6;
  }

  *a2 = v3;
  *(a2 + 40) = 11;
  return result;
}

{
  v3 = *(result + 16);
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_19:
    *a2 = v5;
    *(a2 + 40) = 11;
    return result;
  }

  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 16);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v9 <= *(v5 + 24) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v10 = v8 + v7;
      }

      else
      {
        v10 = v8;
      }

      result = sub_181ADBA10(result, v10, 1, v5);
      v5 = result;
      if (*(v6 + 16))
      {
LABEL_14:
        v11 = *(v5 + 16);
        if ((*(v5 + 24) >> 1) - v11 < v7)
        {
          goto LABEL_22;
        }

        memcpy((v5 + v11 + 32), (v6 + 32), v7);

        if (v7)
        {
          v12 = *(v5 + 16);
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_23;
          }

          *(v5 + 16) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_21;
    }

LABEL_4:
    v4 += 8;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static Serializer.buildBlock(_:)(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1822A69B4(&v5);
      v4 += 48;
      --v3;
    }

    while (v3);
    return v5;
  }

  return result;
}

uint64_t InPlaceSerializer.buffer(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v6 = v2[1] - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 < v3)
    {
LABEL_7:
      v9 = 2;
      v2[3] = 2;
      v10 = 1;
      *(v2 + 32) = 1;
LABEL_10:
      *a2 = v9;
      *(a2 + 8) = v10;
      return result;
    }

    if (v4)
    {
      v11 = a2;
      memmove((v4 + v5), (result + 32), v3);
      result = sub_1822A6F0C(v3);
      v9 = v2[3];
      v10 = *(v2 + 32);
      a2 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Int static Serializer.serialize(_:claim:offset:_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *(*a4)(uint64_t *__return_ptr, __int128 *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v39 - v13;
  if (*(a1 + 24) == 2)
  {
    v15 = swift_projectBox();
    sub_181AB5D28(v15, v14, &qword_1EA8398E0);
    v16 = sub_182AD2868();
    (*(*(v16 - 8) + 8))(v14, v16);
    return sub_1822AFFE4(a1, a2 & 1, a4, a5, a6);
  }

  v18 = *(a1 + 16);
  v40 = *a1;
  v41 = v18;
  v42 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v55 = *(a1 + 208);
  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = *(a1 + 192);
  v53 = *(a1 + 176);
  v54 = v23;
  v24 = *(a1 + 128);
  v49 = *(a1 + 112);
  v50 = v24;
  v25 = *(a1 + 160);
  v51 = *(a1 + 144);
  v52 = v25;
  v26 = *(a1 + 96);
  v47 = *(a1 + 80);
  v48 = v26;
  v43 = v19;
  v44 = v20;
  v45 = v22;
  v46 = v21;
  result = Frame.unclaimedBytes.getter();
  if (v28)
  {
    *a6 = 2;
    *(a6 + 8) = 1;
    return result;
  }

  if (*(a1 + 24) == 5)
  {
    v29 = result;
    v30 = v27;
    v31 = nw_frame_unclaimed_length(*a1);
    v27 = v30;
    v32 = v31;
    result = v29;
    v33 = v32;
    if (!v29)
    {
      goto LABEL_7;
    }

LABEL_13:
    if (v27 - result < a3)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (v21)
  {
    v35 = v20 + v22;
    if (__OFADD__(v20, v22))
    {
      __break(1u);
    }

    else
    {
      v33 = v21 - v35;
      if (!__OFSUB__(v21, v35))
      {
        if (result)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v33 = 0;
  if (result)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
LABEL_8:
    a3 = 0;
    v34 = 2;
    goto LABEL_15;
  }

LABEL_14:
  v34 = 0;
LABEL_15:
  *&v40 = result;
  *(&v40 + 1) = v27;
  *&v41 = a3;
  *(&v41 + 1) = v34;
  LOBYTE(v42) = 1;
  result = a4(v39, &v40);
  v36 = *(&v41 + 1);
  if (v42 == 1)
  {
    if (*(&v41 + 1))
    {
      v37 = 1;
      goto LABEL_22;
    }

    if (v40)
    {
      v38 = *(&v40 + 1) - v40;
    }

    else
    {
      v38 = 0;
    }

    v36 = v38 - v41;
    if (__OFSUB__(v38, v41))
    {
      goto LABEL_40;
    }

    if (v36 < 0)
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v37 = v38 == v41;
    if ((a2 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (!v36)
    {
      v37 = 1;
      result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v33, 0, 1);
      if ((result & 1) == 0)
      {
        *a6 = 2;
        goto LABEL_23;
      }

      v36 = 0;
LABEL_22:
      *a6 = v36;
LABEL_23:
      *(a6 + 8) = v37;
      return result;
    }
  }

  else if ((a2 & 1) == 0)
  {
LABEL_21:
    v37 = 0;
    goto LABEL_22;
  }

  result = v33 - v36;
  if (__OFSUB__(v33, v36))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
  if (result)
  {
    goto LABEL_21;
  }

  *a6 = 2;
  *(a6 + 8) = 1;
  return result;
}

uint64_t Serializer.uint32(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 3;
  return result;
}

unint64_t sub_1822A5094(unint64_t result, unint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = a3;
  v4 = a2;
  v7 = result;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v8 = v6 << 16;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    result = v8 | 0xB;
    v5 = -v7;
LABEL_9:
    v9 = (a2 >> 59) & 1;
    goto LABEL_11;
  }

  v5 = -result;
  result = v8 | 7;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_9;
  }

  LOBYTE(v9) = 1;
LABEL_11:
  if ((result & 0xC) != 4 << v9)
  {
    if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v12 = sub_182AD3198();
    if (v13)
    {
      v11 = 15;
    }

    else
    {
      v11 = v12;
    }

    return sub_1822B0B98(0xFuLL, v11, v4, v3);
  }

LABEL_22:
  result = sub_18208A330(result, v4, v3);
  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v10 = v5 + (result >> 16);
  if (v5 < 0)
  {
    if (v10 < 0)
    {
LABEL_16:
      v11 = 15;
      return sub_1822B0B98(0xFuLL, v11, v4, v3);
    }
  }

  else if (!(result >> 16) && v10 > 0)
  {
    goto LABEL_16;
  }

  if (v6 >= v10)
  {
    v11 = (v10 << 16) | 4;
    return sub_1822B0B98(0xFuLL, v11, v4, v3);
  }

  __break(1u);
  return result;
}

void *sub_1822A51AC(void *result, void *__dst)
{
  if (__dst)
  {
    return memmove(__dst, result + 4, result[2]);
  }

  return result;
}

uint64_t InPlaceSerializer.uint16NetworkByteOrder(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= 2)
    {
      v10 = a2;
      if (v3)
      {
        *(v3 + v4) = bswap32(result) >> 16;
      }

      result = sub_1822A6F0C(2);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 2;
    v2[3] = 2;
    v9 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static SerializationBuilder.buildPartialBlock(accumulated:next:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  if (v4 == 1 && v3 >= 2)
  {
    *a3 = 2;
    *(a3 + 8) = 1;
  }

  else
  {
    v6 = *(a2 + 8);
    if (*a2 == 1)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      *a3 = v3;
      *(a3 + 8) = v4;
    }

    else
    {
      *a3 = *a2;
      *(a3 + 8) = v6;
    }
  }

  return result;
}

uint64_t InPlaceSerializer.vle(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0x40)
  {
    v4 = 1;
  }

  else if (a1 < 0x4000)
  {
    v4 = 2;
  }

  else if (a1 >> 30)
  {
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  result = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (*(v2 + 32) == 1 && *(v2 + 24) > 1uLL)
  {
    goto LABEL_15;
  }

  v8 = v6 - result;
  if (!result)
  {
    v8 = 0;
  }

  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (!v9)
  {
    if (v10 >= v4)
    {
      v13 = a2;
      sub_18207A3BC(result, v6, v7, a1);
      result = sub_1822A6F0C(v4);
      a2 = v13;
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      goto LABEL_17;
    }

LABEL_15:
    v11 = 2;
    *(v2 + 24) = 2;
    v12 = 1;
    *(v2 + 32) = 1;
LABEL_17:
    *a2 = v11;
    *(a2 + 8) = v12;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

Swift::Int __swiftcall SerializeCounter.vle(_:)(Swift::UInt64 a1)
{
  if (a1 < 0x40)
  {
    return 1;
  }

  if (a1 < 0x4000)
  {
    return 2;
  }

  if (!(a1 >> 30))
  {
    return 4;
  }

  if (!(a1 >> 62))
  {
    return 8;
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t InPlaceSerializer.vle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  result = sub_18207A220(a2);
  v15 = *v4;
  v16 = *(v4 + 8);
  v17 = *(v4 + 16);
  if (*(v4 + 32) == 1 && *(v4 + 24) > 1uLL)
  {
    goto LABEL_7;
  }

  v18 = v16 - v15;
  if (!v15)
  {
    v18 = 0;
  }

  v19 = __OFSUB__(v18, v17);
  v20 = v18 - v17;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v20 < result)
    {
LABEL_7:
      v21 = 2;
      *(v4 + 24) = 2;
      v22 = 1;
      *(v4 + 32) = 1;
LABEL_21:
      v30 = v37;
      *v37 = v21;
      *(v30 + 8) = v22;
      return result;
    }

    v32 = *(v4 + 16);
    v33 = v16;
    v34 = v15;
    v35 = result;
    v23 = v36;
    (*(v36 + 16))(v13, a1, a2);
    if (sub_182AD3A78() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_182AD43D8(), sub_182AD4238(), v24 = sub_182AD2EF8(), result = (*(v23 + 8))(v10, a2), (v24))
    {
      if (sub_182AD3A68() <= 63)
      {
        goto LABEL_20;
      }

      v38 = -1;
      v25 = sub_182AD3A78();
      v26 = sub_182AD3A68();
      if (v25)
      {
        if (v26 <= 64)
        {
LABEL_18:
          swift_getAssociatedConformanceWitness();
          sub_182AD43D8();
          sub_182AD4238();
          v28 = sub_182AD2ED8();
          v23 = v36;
          (*(v36 + 8))(v10, a2);
          if (v28)
          {
            goto LABEL_19;
          }

LABEL_20:
          v29 = sub_182AD3A58();
          (*(v23 + 8))(v13, a2);
          sub_18207A3BC(v34, v33, v32, v29);
          result = sub_1822A6F0C(v35);
          v21 = *(v4 + 24);
          v22 = *(v4 + 32);
          goto LABEL_21;
        }

        sub_181F7D8D8();
        sub_182AD3A48();
        v27 = sub_182AD2EE8();
        v23 = v36;
      }

      else
      {
        v23 = v36;
        if (v26 < 65)
        {
LABEL_19:
          sub_182AD3A58();
          goto LABEL_20;
        }

        sub_181F7D8D8();
        sub_182AD3A48();
        v27 = sub_182AD2EE8();
      }

      (*(v23 + 8))(v10, a2);
      if ((v27 & 1) == 0)
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t static SerializationBuilder.buildArray(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = 1;
  v5 = 1;
LABEL_2:
  v6 = (result + 40 + 16 * v2);
  v7 = v2;
  while (1)
  {
    if (v3 == v7)
    {
      v8 = v4;
LABEL_12:
      *a2 = v8;
      *(a2 + 8) = v5 & 1;
      return result;
    }

    if (v7 >= v3)
    {
      break;
    }

    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

    v8 = *(v6 - 1);
    if (*v6 != 1)
    {
      v4 = *(v6 - 1);
      v5 = *v6;
      goto LABEL_2;
    }

    v6 += 16;
    ++v7;
    if (v8 != 1)
    {
      v4 = v8;
      v5 = 1;
      if (!v8)
      {
        goto LABEL_2;
      }

      v5 = 1;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t static SerializeCounter.buildPartialBlock(accumulated:next:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static SerializeCounter.buildArray(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  while (1)
  {
    v5 = *v4++;
    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      break;
    }

    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Serializer.vle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - v13;
  (*(v7 + 16))(v23 - v13, a1, a2, v12);
  if (sub_182AD3A78() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_182AD43D8(), sub_182AD4238(), v15 = sub_182AD2EF8(), result = (*(v7 + 8))(v10, a2), (v15))
  {
    if (sub_182AD3A68() <= 63)
    {
      goto LABEL_13;
    }

    v23[0] = a3;
    v23[1] = -1;
    v17 = sub_182AD3A78();
    v18 = sub_182AD3A68();
    if (v17)
    {
      if (v18 <= 64)
      {
        goto LABEL_11;
      }

      sub_181F7D8D8();
      sub_182AD3A48();
      v19 = sub_182AD2EE8();
      (*(v7 + 8))(v10, a2);
      a3 = v23[0];
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a3 = v23[0];
      if (v18 < 65)
      {
LABEL_12:
        sub_182AD3A58();
        goto LABEL_13;
      }

      sub_181F7D8D8();
      sub_182AD3A48();
      v20 = sub_182AD2EE8();
      (*(v7 + 8))(v10, a2);
      if ((v20 & 1) == 0)
      {
LABEL_13:
        v22 = sub_182AD3A58();
        result = (*(v7 + 8))(v14, a2);
        *a3 = v22;
        *(a3 + 40) = 8;
        return result;
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    sub_182AD43D8();
    sub_182AD4238();
    v21 = sub_182AD2ED8();
    (*(v7 + 8))(v10, a2);
    a3 = v23[0];
    if (v21)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static SerializeCounter.buildOptional(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t *static SerializationBuilder.buildOptional(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 9))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v2 = *result;
    v3 = *(result + 8);
  }

  *a2 = v2;
  *(a2 + 8) = v3 & 1;
  return result;
}

void static Serializer.serialize(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v8 = 0uLL;
  v9 = 1;
  a3(v5, &v7);
  v5[0] = v7;
  v5[1] = v8;
  v6 = v9;
  sub_1820E2C14(a4);
}

uint64_t sub_1822A6070@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_16;
  }

  v4 = v2[2];
  v5 = *v2;
  v6 = v2[1] - *v2;
  if (!*v2)
  {
    v6 = 0;
  }

  v7 = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = *result;
  v9 = *(*result + 16);
  if (v7 <= v9)
  {
LABEL_16:
    v12 = 2;
    v2[3] = 2;
    v13 = 1;
    *(v2 + 32) = 1;
    goto LABEL_17;
  }

  if (v9 > 0xFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = a2;
  if (v5)
  {
    *(v5 + v4) = v9;
  }

  result = sub_1822A6F0C(1);
  if (v11)
  {
    goto LABEL_15;
  }

  if (*v2)
  {
    memmove((*v2 + result), (v8 + 32), *(v8 + 16));
    result = sub_1822A6F0C(*(v8 + 16));
LABEL_15:
    v12 = v2[3];
    v13 = *(v2 + 32);
    a2 = v10;
LABEL_17:
    *a2 = v12;
    *(a2 + 8) = v13;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t InPlaceSerializer.uint64(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= 8)
    {
      v10 = a2;
      if (v3)
      {
        *(v3 + v4) = result;
      }

      result = sub_1822A6F0C(8);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 2;
    v2[3] = 2;
    v9 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t InPlaceSerializer.fixedLengthUTF8(_:byteCount:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  v8 = v4[2];
  if (*(v4 + 32) == 1 && v4[3] > 1)
  {
    goto LABEL_7;
  }

  v9 = v4[1] - v7;
  if (!v7)
  {
    v9 = 0;
  }

  v14 = __OFSUB__(v9, v8);
  v10 = v9 - v8;
  if (v14)
  {
    goto LABEL_19;
  }

  if (v10 < a3)
  {
LABEL_7:
    v11 = 2;
    v4[3] = 2;
    v12 = 1;
    *(v4 + 32) = 1;
LABEL_28:
    *a4 = v11;
    *(a4 + 8) = v12;
    return result;
  }

  v34 = a4;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v13 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a2) & 0xF;
  }

  v14 = __OFSUB__(v13, a3);
  v15 = v13 <= a3;
  v16 = v13 - a3;
  if (!v15)
  {
    while (!v14)
    {
      v17 = sub_1822A5094(v16, result, a2);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      swift_bridgeObjectRetain_n();
      v24 = sub_182AD39C8();
      if (v24)
      {
        v25 = v24;
        v26 = sub_181AC1BE8(v24, 0);
        v27 = v21;
        v28 = v26;
        v29 = sub_1822B072C(v35, (v26 + 4), v25, v17, v19, v27, v23);

        if (v29 != v25)
        {
          goto LABEL_30;
        }

        if (v7)
        {
LABEL_16:
          memmove((v7 + v8), v28 + 4, v28[2]);

          goto LABEL_27;
        }
      }

      else
      {

        v28 = MEMORY[0x1E69E7CC0];
        if (v7)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v30 = result;
      v31 = sub_182AD3168();
      result = v30;
      v14 = __OFSUB__(v31, a3);
      v15 = v31 <= a3;
      v16 = v31 - a3;
      if (v15)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_22:
  result = sub_1822B094C(result, a2);
  if (v7)
  {
    v32 = result;
    memmove((v7 + v8), (result + 32), *(result + 16));
    v33 = *(v32 + 16);

    if (a3 > v33)
    {
      if (__OFADD__(v8, v33))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (a3 - v33 < 0)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      bzero((v7 + v8 + v33), a3 - v33);
    }

LABEL_27:

    result = sub_1822A6F0C(a3);
    v11 = v4[3];
    v12 = *(v4 + 32);
    a4 = v34;
    goto LABEL_28;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t static SerializationBuilder.buildEither(first:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t InPlaceSerializer.uint8(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_10;
  }

  v6 = v2[1] - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (!v7)
  {
    if (v8 >= 1)
    {
      if (v4)
      {
        *(v4 + v5) = result;
      }

      result = sub_1822A6F0C(1);
      v9 = v2[3];
      v10 = *(v2 + 32);
      goto LABEL_11;
    }

LABEL_10:
    v9 = 2;
    v2[3] = 2;
    v10 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v9;
    *(a2 + 8) = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Serializer.uint64(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 4;
  return result;
}

uint64_t Serializer.int16(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 2;
  return result;
}

uint64_t Serializer.uint16(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 1;
  return result;
}

uint64_t InPlaceSerializer.uint32NetworkByteOrder(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= 4)
    {
      v10 = a2;
      if (v3)
      {
        *(v3 + v4) = bswap32(result);
      }

      result = sub_1822A6F0C(4);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 2;
    v2[3] = 2;
    v9 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1822A65C4@<X0>(unint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *v3;
  v5 = v3[2];
  if (*(v3 + 32) == 1 && v3[3] > 1)
  {
    goto LABEL_10;
  }

  v6 = v3[1] - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
  }

  v9 = a2;
  if (v8 <= a2)
  {
LABEL_10:
    v11 = 2;
    v3[3] = 2;
    v12 = 1;
    *(v3 + 32) = 1;
  }

  else
  {
    v10 = a3;
    v13[0] = bswap64(result);
    if (v4)
    {
      memcpy((v4 + v5), v13 - a2 + 7, a2 + 1);
    }

    result = sub_1822A6F0C(v9 + 1);
    v11 = v3[3];
    v12 = *(v3 + 32);
    a3 = v10;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
  return result;
}

uint64_t InPlaceSerializer.buffer(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_182AD37D8();
  v6 = *v2;
  v7 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    v8 = v2[1] - v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v9)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < result)
  {
LABEL_8:
    v11 = 2;
    v2[3] = 2;
    v12 = 1;
    *(v2 + 32) = 1;
LABEL_12:
    *a2 = v11;
    *(a2 + 8) = v12;
    return result;
  }

  if (v6)
  {
    if (!__OFSUB__(v2[1] - v6, v7))
    {
      v13 = result;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_182AD3A18();
      result = sub_1822A6F0C(v13);
      v11 = v2[3];
      v12 = *(v2 + 32);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t SerializationResult.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x7974706D45;
    if (v1 != 1)
    {
      v2 = 0xD000000000000010;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x73736563637553;
    }
  }

  else
  {
    sub_182AD3BA8();
    v4 = sub_182AD41B8();

    MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDDC00);
    return v4;
  }
}

BOOL static SerializationResult.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

BOOL sub_1822A6950(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1822A69B4(uint64_t a1)
{
  v3 = v1;
  v29 = *MEMORY[0x1E69E9840];
  sub_181F80BF8(v3, &v26);
  switch(v28)
  {
    case 1:
    case 2:
      LOWORD(v5) = v26;
      goto LABEL_16;
    case 3:
      v11 = v26;
      goto LABEL_19;
    case 4:
      v7 = v26;
      goto LABEL_14;
    case 5:
      v5 = bswap32(v26) >> 16;
LABEL_16:
      LOWORD(v23) = v5;
      return sub_1820D47C4(&v23, &v23 + 2);
    case 6:
      v11 = bswap32(v26);
LABEL_19:
      LODWORD(v23) = v11;
      return sub_1820D47C4(&v23, &v23 + 4);
    case 7:
      v7 = bswap64(v26);
LABEL_14:
      *&v23 = v7;
      return sub_1820D47C4(&v23, &v23 + 8);
    case 8:
      return sub_18207A290(a1, v26);
    case 9:
      goto LABEL_10;
    case 10:
      v8 = *(&v26 + 1);
      v9 = v26;
      v2 = v27;
      if ((*(&v26 + 1) & 0x1000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if ((*(&v26 + 1) & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(*(&v26 + 1)) & 0xFLL;
      }

      else
      {
        v16 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v27 < v16)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    case 11:
      return sub_1820D46D8(v26);
    case 12:
      v9 = *(&v26 + 1);
      v8 = v26;
      if ((*(&v26 + 1) & 0x1000000000000000) != 0)
      {
        v10 = sub_182AD3168();
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          v16 = sub_182AD3168();
          if (v2 < v16)
          {
LABEL_25:
            if (!__OFSUB__(v16, v2))
            {
              v17 = sub_1822A5094(v16 - v2, v9, v8);
              return sub_1820D4974(v17, v18, v19, v20);
            }

            __break(1u);
          }

          else
          {
LABEL_33:

            sub_1820D4BB0(v9, v8);
            v21 = v2 - v16;
            if (!__OFSUB__(v2, v16))
            {
              if (v21 >= 1)
              {
                v22 = sub_182AD3428();
                *(v22 + 16) = v21;
                bzero((v22 + 32), v21);
                sub_1820D46D8(v22);
              }
            }
          }

          __break(1u);
        }
      }

      else
      {
        if ((*(&v26 + 1) & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(*(&v26 + 1)) & 0xFLL;
          goto LABEL_29;
        }

        v10 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (!(v10 >> 16))
      {
LABEL_29:
        LOWORD(v23) = v10;
        sub_1820D47C4(&v23, &v23 + 2);
        return sub_1820D4BB0(v8, v9);
      }

      __break(1u);
LABEL_10:
      v23 = v26;
      return sub_1820D47C4(&v23, v24);
    case 13:
      sub_181F3CF20(&v26, &v23);
      v12 = __swift_project_boxed_opaque_existential_1(&v23, v25);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(v15 + 16))(&v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 16], v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
      sub_182AD3458();
      return __swift_destroy_boxed_opaque_existential_1(&v23);
    default:
      LOBYTE(v23) = v26;
      return sub_1820D47C4(&v23, &v23 + 1);
  }
}

uint64_t static Serializer.buildExpression(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[40] = 0;
  return result;
}

uint64_t static Serializer.buildExpression(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 1;
  return result;
}

{
  *a2 = result;
  *(a2 + 40) = 2;
  return result;
}

{
  *a2 = result;
  *(a2 + 40) = 3;
  return result;
}

{
  *a2 = result;
  *(a2 + 40) = 4;
  return result;
}

__n128 static Serializer.buildExpression(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[2].n128_u8[8] = 9;
  return result;
}

uint64_t static Serializer.buildOptional(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_181AB5D28(a1, &v5, &qword_1EA83BD10);
  if (v6[24] == 255)
  {
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 40) = 11;
  }

  else
  {
    v4 = *v6;
    *a2 = v5;
    *(a2 + 16) = v4;
    *(a2 + 25) = *&v6[9];
  }

  return result;
}

uint64_t static Serializer.buildEither(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 40) = 11;
}

uint64_t Serializer.uint16NetworkByteOrder(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 5;
  return result;
}

uint64_t Serializer.uint64NetworkByteOrder(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 40) = 7;
  return result;
}

__n128 Serializer.uuid(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[2].n128_u8[8] = 9;
  return result;
}

uint64_t Serializer.fixedLengthUTF8(_:byteCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 40) = 10;
}

Swift::Int __swiftcall SerializeCounter.string(_:)(Swift::String a1)
{
  if ((a1._object & 0x1000000000000000) != 0)
  {
    return sub_182AD3168();
  }

  if ((a1._object & 0x2000000000000000) != 0)
  {
    return HIBYTE(a1._object) & 0xF;
  }

  return a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
}

uint64_t sub_1822A6F0C(uint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  if (*v1)
  {
    v2 = v1[1] - v2;
  }

  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v5 >= result)
    {
      v6 = v3 + result;
      v1[2] = v6;
    }

    else
    {
      v6 = 0;
      v1[3] = 2;
      *(v1 + 32) = 1;
    }

    return v6;
  }

  return result;
}

uint64_t sub_1822A6F68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= 2)
    {
      v10 = a2;
      if (v3)
      {
        *(v3 + v4) = result;
      }

      result = sub_1822A6F0C(2);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 2;
    v2[3] = 2;
    v9 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t InPlaceSerializer.uint32(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= 4)
    {
      v10 = a2;
      if (v3)
      {
        *(v3 + v4) = result;
      }

      result = sub_1822A6F0C(4);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 2;
    v2[3] = 2;
    v9 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t InPlaceSerializer.uint64NetworkByteOrder(_:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= 8)
    {
      v10 = a2;
      if (v3)
      {
        *(v3 + v4) = bswap64(result);
      }

      result = sub_1822A6F0C(8);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 2;
    v2[3] = 2;
    v9 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

_OWORD *InPlaceSerializer.uuid(_:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[2];
  if (*(v2 + 32) == 1 && v2[3] > 1)
  {
    goto LABEL_7;
  }

  v5 = v2[1] - v3;
  if (!v3)
  {
    v5 = 0;
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (!v6)
  {
    if (v7 >= 16)
    {
      v10 = a2;
      if (v3)
      {
        *(v3 + v4) = *result;
      }

      result = sub_1822A6F0C(16);
      v8 = v2[3];
      v9 = *(v2 + 32);
      a2 = v10;
      goto LABEL_11;
    }

LABEL_7:
    v8 = 2;
    v2[3] = 2;
    v9 = 1;
    *(v2 + 32) = 1;
LABEL_11:
    *a2 = v8;
    *(a2 + 8) = v9;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t InPlaceSerializer.string(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  result = HIBYTE(a2) & 0xF;
  v10 = *(v3 + 32);
  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = a1;
    v27 = HIBYTE(a2) & 0xF;
    v28 = a2;
    v29 = a3;
    v30 = sub_182AD3168();
    a2 = v28;
    a3 = v29;
    v31 = v30;
    result = v27;
    a1 = v26;
    v12 = __OFADD__(v31, 2);
    v13 = v31 + 2;
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  v12 = __OFADD__(v11, 2);
  v13 = v11 + 2;
  if (v12)
  {
    goto LABEL_30;
  }

LABEL_5:
  if (v8 > 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    goto LABEL_13;
  }

  v15 = v6 - v5;
  if (!v5)
  {
    v15 = 0;
  }

  v12 = __OFSUB__(v15, v7);
  v16 = v15 - v7;
  if (v12)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
LABEL_13:
    v17 = 2;
    v3[3] = 2;
    v18 = 1;
    *(v3 + 32) = 1;
LABEL_25:
    *a3 = v17;
    *(a3 + 8) = v18;
    return result;
  }

  v19 = a3;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v21 = a1;
    v20 = a2;
    result = sub_182AD3168();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v21 = a1;
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v21 = a1;
  result = a1 & 0xFFFFFFFFFFFFLL;
LABEL_18:
  if (result >> 16)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v5)
  {
LABEL_20:
    *(v5 + v7) = result;
  }

LABEL_21:
  result = sub_1822A6F0C(2);
  if (v22)
  {
LABEL_24:
    v17 = v3[3];
    v18 = *(v3 + 32);
    a3 = v19;
    goto LABEL_25;
  }

  v23 = result;
  result = sub_1822B094C(v21, v20);
  if (*v3)
  {
    v24 = result;
    memmove((*v3 + v23), (result + 32), *(result + 16));
    v25 = *(v24 + 16);

    result = sub_1822A6F0C(v25);
    goto LABEL_24;
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_1822A7368@<X0>(uint64_t a1@<X0>, int a2@<W1>, _WORD *a3@<X3>, void *a4@<X8>)
{
  v41 = a3;
  v38 = a2;
  v44 = a4;
  v40 = sub_182AD2868();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = *(a1 + 16);
  v46 = *a1;
  v47 = v15;
  v48 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v61 = *(a1 + 208);
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = *(a1 + 192);
  v59 = *(a1 + 176);
  v60 = v20;
  v21 = *(a1 + 128);
  v55 = *(a1 + 112);
  v56 = v21;
  v22 = *(a1 + 160);
  v57 = *(a1 + 144);
  v58 = v22;
  v23 = *(a1 + 96);
  v53 = *(a1 + 80);
  v54 = v23;
  v49 = v16;
  v50 = v17;
  v51 = v19;
  v52 = v18;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_181F49A88(v8, &qword_1EA839BA8);
    v25 = v44;
    *v44 = 2;
    *(v25 + 8) = 1;
    return result;
  }

  result = sub_182022420(v8, v14);
  if (*(a1 + 24) == 5)
  {
    v26 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v27 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = v18 - v27;
  if (__OFSUB__(v18, v27))
  {
    __break(1u);
LABEL_10:
    v26 = 0;
  }

LABEL_11:
  v28 = v42;
  v29 = swift_slowAlloc();
  *&v46 = v29;
  *(&v46 + 1) = v29 + v26;
  v47 = 0uLL;
  LOBYTE(v48) = 1;
  result = sub_181FD7F58(&v46, v41, v45);
  v30 = *(&v47 + 1);
  v37 = v29 + v26;
  if (v48 == 1)
  {
    if (*(&v47 + 1))
    {
      v31 = 1;
    }

    else
    {
      if (v46)
      {
        v32 = *(&v46 + 1) - v46;
      }

      else
      {
        v32 = 0;
      }

      v30 = v32 - v47;
      if (__OFSUB__(v32, v47))
      {
        goto LABEL_34;
      }

      if (v30 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v31 = v32 == v47;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = v39;
  sub_181AB5D28(v14, v39, &unk_1EA83A980);
  v34 = v40;
  (*(v43 + 32))(v28, v33, v40);
  if (!v31)
  {
    v35 = v44;
    if ((v38 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v26 - v30;
    if (!__OFSUB__(v26, v30))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v14, &unk_1EA83A980);
        *v35 = 2;
        *(v35 + 8) = 1;
        return (*(v43 + 8))(v42, v34);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v35 = v44;
  if (!v30)
  {
    if (v38)
    {
      result = v26;
      goto LABEL_27;
    }

LABEL_28:
    v28 = v42;
    sub_1822B0518(v29, v37, v42, a1);
  }

  MEMORY[0x1865DF520](v29, -1, -1);
  sub_181F49A88(v14, &unk_1EA83A980);
  *v35 = v30;
  *(v35 + 8) = v31;
  return (*(v43 + 8))(v28, v34);
}

Swift::Int sub_1822A7888@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v43 = a4;
  v47 = a3;
  v41 = a2;
  v46 = a5;
  v42 = sub_182AD2868();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-v15];
  v17 = *(a1 + 16);
  v49 = *a1;
  v50 = v17;
  v51 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v64 = *(a1 + 208);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 192);
  v62 = *(a1 + 176);
  v63 = v22;
  v23 = *(a1 + 128);
  v58 = *(a1 + 112);
  v59 = v23;
  v24 = *(a1 + 160);
  v60 = *(a1 + 144);
  v61 = v24;
  v25 = *(a1 + 96);
  v56 = *(a1 + 80);
  v57 = v25;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA839BA8);

    v27 = v46;
    *v46 = 2;
    *(v27 + 8) = 1;
    return result;
  }

  v28 = v47;
  result = sub_182022420(v9, v16);
  if (*(a1 + 24) == 5)
  {
    v29 = v16;
    v30 = nw_frame_unclaimed_length(*a1);
  }

  else
  {
    if (v21)
    {
      v31 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        __break(1u);
      }

      else
      {
        v30 = v21 - v31;
        v32 = v44;
        if (!__OFSUB__(v21, v31))
        {
          v29 = v16;
          v33 = v28;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v29 = v16;
    v30 = 0;
  }

  v33 = v28;
  v32 = v44;
LABEL_11:
  v34 = swift_slowAlloc();
  *&v49 = v34;
  *(&v49 + 1) = v34 + v30;
  v50 = 0uLL;
  LOBYTE(v51) = 1;
  result = sub_182098908(v33, v43, v48);
  v35 = *(&v50 + 1);
  if (v51 == 1)
  {
    if (*(&v50 + 1))
    {
      v36 = 1;
    }

    else
    {
      if (v49)
      {
        v37 = *(&v49 + 1) - v49;
      }

      else
      {
        v37 = 0;
      }

      v35 = v37 - v50;
      if (__OFSUB__(v37, v50))
      {
        goto LABEL_36;
      }

      if (v35 < 0)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v36 = v37 == v50;
    }
  }

  else
  {
    v36 = 0;
  }

  sub_181AB5D28(v29, v13, &unk_1EA83A980);
  v38 = v42;
  (*(v45 + 32))(v32, v13, v42);
  if (!v36)
  {
    v39 = v46;
    if ((v41 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v30 - v35;
    if (!__OFSUB__(v30, v35))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v29, &unk_1EA83A980);
        *v39 = 2;
        *(v39 + 8) = 1;
        (*(v45 + 8))(v44, v38);
      }

      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v39 = v46;
  if (!v35)
  {
    if (v41)
    {
      result = v30;
      goto LABEL_27;
    }

LABEL_28:
    v32 = v44;
    sub_1822B0518(v34, v34 + v30, v44, a1);
  }

  MEMORY[0x1865DF520](v34, -1, -1);
  sub_181F49A88(v29, &unk_1EA83A980);
  *v39 = v35;
  *(v39 + 8) = v36;
  (*(v45 + 8))(v32, v38);
}

Swift::Int sub_1822A7DD4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, void *a4@<X8>)
{
  v41 = a3;
  v38 = a2;
  v44 = a4;
  v40 = sub_182AD2868();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = *(a1 + 16);
  v46 = *a1;
  v47 = v15;
  v48 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v61 = *(a1 + 208);
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = *(a1 + 192);
  v59 = *(a1 + 176);
  v60 = v20;
  v21 = *(a1 + 128);
  v55 = *(a1 + 112);
  v56 = v21;
  v22 = *(a1 + 160);
  v57 = *(a1 + 144);
  v58 = v22;
  v23 = *(a1 + 96);
  v53 = *(a1 + 80);
  v54 = v23;
  v49 = v16;
  v50 = v17;
  v51 = v19;
  v52 = v18;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_181F49A88(v8, &qword_1EA839BA8);
    v25 = v44;
    *v44 = 2;
    *(v25 + 8) = 1;
    return result;
  }

  result = sub_182022420(v8, v14);
  if (*(a1 + 24) == 5)
  {
    v26 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v27 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = v18 - v27;
  if (__OFSUB__(v18, v27))
  {
    __break(1u);
LABEL_10:
    v26 = 0;
  }

LABEL_11:
  v28 = v42;
  v29 = swift_slowAlloc();
  *&v46 = v29;
  *(&v46 + 1) = v29 + v26;
  v47 = 0uLL;
  LOBYTE(v48) = 1;
  result = sub_182098A6C(&v46, v41, v45);
  v30 = *(&v47 + 1);
  v37 = v29 + v26;
  if (v48 == 1)
  {
    if (*(&v47 + 1))
    {
      v31 = 1;
    }

    else
    {
      if (v46)
      {
        v32 = *(&v46 + 1) - v46;
      }

      else
      {
        v32 = 0;
      }

      v30 = v32 - v47;
      if (__OFSUB__(v32, v47))
      {
        goto LABEL_34;
      }

      if (v30 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v31 = v32 == v47;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = v39;
  sub_181AB5D28(v14, v39, &unk_1EA83A980);
  v34 = v40;
  (*(v43 + 32))(v28, v33, v40);
  if (!v31)
  {
    v35 = v44;
    if ((v38 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v26 - v30;
    if (!__OFSUB__(v26, v30))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v14, &unk_1EA83A980);
        *v35 = 2;
        *(v35 + 8) = 1;
        return (*(v43 + 8))(v42, v34);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v35 = v44;
  if (!v30)
  {
    if (v38)
    {
      result = v26;
      goto LABEL_27;
    }

LABEL_28:
    v28 = v42;
    sub_1822B0518(v29, v37, v42, a1);
  }

  MEMORY[0x1865DF520](v29, -1, -1);
  sub_181F49A88(v14, &unk_1EA83A980);
  *v35 = v30;
  *(v35 + 8) = v31;
  return (*(v43 + 8))(v28, v34);
}

Swift::Int sub_1822A82F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v47 = a2;
  v51 = a5;
  v6 = sub_182AD2868();
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = *(a1 + 16);
  v61 = *a1;
  v62 = v18;
  v63 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v76 = *(a1 + 208);
  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = *(a1 + 192);
  v74 = *(a1 + 176);
  v75 = v23;
  v24 = *(a1 + 128);
  v70 = *(a1 + 112);
  v71 = v24;
  v25 = *(a1 + 160);
  v72 = *(a1 + 144);
  v73 = v25;
  v26 = *(a1 + 96);
  v68 = *(a1 + 80);
  v69 = v26;
  v64 = v19;
  v65 = v20;
  v66 = v22;
  v67 = v21;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    result = sub_181C1F2E4(v53, v54);
    v28 = v51;
    *v51 = 2;
    *(v28 + 8) = 1;
    return result;
  }

  v29 = v54;
  result = sub_182022420(v11, v17);
  v30 = v17;
  if (*(a1 + 24) == 5)
  {
    v31 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v21)
  {
    goto LABEL_10;
  }

  v32 = v20 + v22;
  if (__OFADD__(v20, v22))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = v21 - v32;
  if (__OFSUB__(v21, v32))
  {
    __break(1u);
LABEL_10:
    v31 = 0;
  }

LABEL_11:
  v33 = v53;
  v34 = swift_slowAlloc();
  v56 = v34;
  v57 = v34 + v31;
  v58 = 0;
  v59 = 0;
  v60 = 1;
  *(&v62 + 1) = MEMORY[0x1E6969080];
  *&v63 = sub_181F7D470();
  *&v61 = v33;
  *(&v61 + 1) = v29;
  sub_181F49B58(v33, v29);
  InPlaceSerializer.buffer(_:)(&v61, &v55);
  result = __swift_destroy_boxed_opaque_existential_1(&v61);
  v35 = v59;
  v46 = v34 + v31;
  if (v60 != 1)
  {
    v37 = v30;
    v38 = 0;
    v36 = v49;
    goto LABEL_21;
  }

  v36 = v49;
  if (v59)
  {
    v37 = v30;
    v38 = 1;
LABEL_21:
    v40 = v48;
    sub_181AB5D28(v37, v48, &unk_1EA83A980);
    (*(v50 + 32))(v52, v40, v36);
    if (v38)
    {
      v41 = v51;
      if (v35)
      {
LABEL_30:
        MEMORY[0x1865DF520](v34, -1, -1);
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = v35;
        *(v41 + 8) = v38;
        (*(v50 + 8))(v52, v36);
        v44 = v33;
        return sub_181C1F2E4(v44, v54);
      }

      if (v47)
      {
        v42 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v31, 0, 1);
        v36 = v49;
        if (!v42)
        {
          goto LABEL_32;
        }
      }

LABEL_29:
      sub_1822B0518(v34, v46, v52, a1);
      v33 = v53;
      goto LABEL_30;
    }

    v41 = v51;
    if ((v47 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = v31 - v35;
    if (!__OFSUB__(v31, v35))
    {
      v43 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v36 = v49;
      if (!v43)
      {
LABEL_32:
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = 2;
        *(v41 + 8) = 1;
        (*(v50 + 8))(v52, v36);
        v44 = v53;
        return sub_181C1F2E4(v44, v54);
      }

      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v56)
  {
    v39 = v57 - v56;
  }

  else
  {
    v39 = 0;
  }

  v35 = v39 - v58;
  if (__OFSUB__(v39, v58))
  {
    goto LABEL_35;
  }

  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = v30;
    v38 = v39 == v58;
    goto LABEL_21;
  }

LABEL_36:
  __break(1u);
  return result;
}

Swift::Int sub_1822A8814@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v43 = a3;
  v40 = a2;
  v42 = sub_182AD2868();
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = *(a1 + 16);
  v47 = *a1;
  v48 = v16;
  v49 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v62 = *(a1 + 208);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 192);
  v60 = *(a1 + 176);
  v61 = v21;
  v22 = *(a1 + 128);
  v56 = *(a1 + 112);
  v57 = v22;
  v23 = *(a1 + 160);
  v58 = *(a1 + 144);
  v59 = v23;
  v24 = *(a1 + 96);
  v54 = *(a1 + 80);
  v55 = v24;
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = v20;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_181F49A88(v9, &qword_1EA839BA8);
    *a4 = 2;
    *(a4 + 8) = 1;
    return result;
  }

  result = sub_182022420(v9, v15);
  if (*(a1 + 24) == 5)
  {
    v26 = nw_frame_unclaimed_length(*a1);
LABEL_11:
    v28 = v45;
    goto LABEL_12;
  }

  if (!v20)
  {
LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

  v27 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v26 = v20 - v27;
  v28 = v45;
  if (__OFSUB__(v20, v27))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v29 = swift_slowAlloc();
  *&v47 = v29;
  *(&v47 + 1) = v29 + v26;
  v48 = 0uLL;
  LOBYTE(v49) = 1;
  result = InPlaceSerializer.buffer(_:)(*v43, v46);
  v30 = *(&v48 + 1);
  v39 = v29 + v26;
  if (v49 == 1)
  {
    v33 = v44;
    if (*(&v48 + 1))
    {
      v31 = v15;
      v32 = 1;
    }

    else
    {
      if (v47)
      {
        v34 = *(&v47 + 1) - v47;
      }

      else
      {
        v34 = 0;
      }

      v30 = v34 - v48;
      if (__OFSUB__(v34, v48))
      {
        goto LABEL_35;
      }

      if (v30 < 0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v31 = v15;
      v32 = v34 == v48;
    }
  }

  else
  {
    v31 = v15;
    v32 = 0;
    v33 = v44;
  }

  v35 = v41;
  sub_181AB5D28(v31, v41, &unk_1EA83A980);
  v36 = v35;
  v37 = v42;
  (*(v33 + 32))(v28, v36, v42);
  if (!v32)
  {
    if ((v40 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = v26 - v30;
    if (!__OFSUB__(v26, v30))
    {
LABEL_28:
      v38 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v33 = v44;
      if (!v38)
      {
        sub_181F49A88(v31, &unk_1EA83A980);
        *a4 = 2;
        *(a4 + 8) = 1;
        return (*(v33 + 8))(v45, v37);
      }

      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (!v30)
  {
    if (v40)
    {
      result = v26;
      goto LABEL_28;
    }

LABEL_29:
    v28 = v45;
    sub_1822B0518(v29, v39, v45, a1);
  }

  MEMORY[0x1865DF520](v29, -1, -1);
  sub_181F49A88(v31, &unk_1EA83A980);
  *a4 = v30;
  *(a4 + 8) = v32;
  return (*(v33 + 8))(v28, v37);
}

Swift::Int sub_1822A8D34@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X3>, int a4@<W4>, void *a5@<X8>)
{
  v43 = a4;
  v44 = a3;
  v41 = a2;
  v48 = a5;
  v47 = sub_182AD2868();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40[-v14];
  v16 = *(a1 + 16);
  v50 = *a1;
  v51 = v16;
  v52 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v65 = *(a1 + 208);
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *(a1 + 192);
  v63 = *(a1 + 176);
  v64 = v21;
  v22 = *(a1 + 128);
  v59 = *(a1 + 112);
  v60 = v22;
  v23 = *(a1 + 160);
  v61 = *(a1 + 144);
  v62 = v23;
  v24 = *(a1 + 96);
  v57 = *(a1 + 80);
  v58 = v24;
  v53 = v17;
  v54 = v18;
  v55 = v20;
  v56 = v19;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_181F49A88(v9, &qword_1EA839BA8);
    v26 = v48;
    *v48 = 2;
    *(v26 + 8) = 1;
    return result;
  }

  result = sub_182022420(v9, v15);
  v27 = v15;
  if (*(a1 + 24) == 5)
  {
    v28 = nw_frame_unclaimed_length(*a1);
LABEL_11:
    v30 = v47;
    v31 = v45;
    goto LABEL_12;
  }

  if (!v19)
  {
LABEL_10:
    v28 = 0;
    goto LABEL_11;
  }

  v29 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v19 - v29;
  v30 = v47;
  v31 = v45;
  if (__OFSUB__(v19, v29))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v32 = v46;
  v33 = swift_slowAlloc();
  *&v50 = v33;
  *(&v50 + 1) = v33 + v28;
  v51 = 0uLL;
  LOBYTE(v52) = 1;
  result = sub_181F3D400(v44, v43, v49);
  v34 = *(&v51 + 1);
  v45 = v33 + v28;
  if (v52 == 1)
  {
    if (*(&v51 + 1))
    {
      v35 = v27;
      v36 = 1;
    }

    else
    {
      if (v50)
      {
        v37 = *(&v50 + 1) - v50;
      }

      else
      {
        v37 = 0;
      }

      v34 = v37 - v51;
      if (__OFSUB__(v37, v51))
      {
        goto LABEL_35;
      }

      if (v34 < 0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v35 = v27;
      v36 = v37 == v51;
    }
  }

  else
  {
    v35 = v27;
    v36 = 0;
  }

  v38 = v42;
  sub_181AB5D28(v35, v42, &unk_1EA83A980);
  (*(v31 + 32))(v32, v38, v30);
  if (!v36)
  {
    v39 = v48;
    if ((v41 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = v28 - v34;
    if (!__OFSUB__(v28, v34))
    {
LABEL_28:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v35, &unk_1EA83A980);
        *v39 = 2;
        *(v39 + 8) = 1;
        return (*(v31 + 8))(v46, v47);
      }

      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v39 = v48;
  if (!v34)
  {
    if (v41)
    {
      result = v28;
      goto LABEL_28;
    }

LABEL_29:
    v32 = v46;
    sub_1822B0518(v33, v45, v46, a1);
  }

  MEMORY[0x1865DF520](v33, -1, -1);
  sub_181F49A88(v35, &unk_1EA83A980);
  *v39 = v34;
  *(v39 + 8) = v36;
  return (*(v31 + 8))(v32, v47);
}

Swift::Int sub_1822A9284@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v51 = a6;
  v48 = a5;
  v47 = a4;
  v46 = a3;
  v44 = a2;
  v49 = sub_182AD2868();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = *(a1 + 16);
  v54 = *a1;
  v55 = v19;
  v56 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v69 = *(a1 + 208);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a1 + 192);
  v67 = *(a1 + 176);
  v68 = v24;
  v25 = *(a1 + 128);
  v63 = *(a1 + 112);
  v64 = v25;
  v26 = *(a1 + 160);
  v65 = *(a1 + 144);
  v66 = v26;
  v27 = *(a1 + 96);
  v61 = *(a1 + 80);
  v62 = v27;
  v57 = v20;
  v58 = v21;
  v59 = v22;
  v60 = v23;
  sub_1821438A8(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_181F49A88(v12, &qword_1EA839BA8);

    *a7 = 2;
    *(a7 + 8) = 1;
    return result;
  }

  v29 = v51;
  result = sub_182022420(v12, v18);
  if (*(a1 + 24) == 5)
  {
    v30 = v18;
    v31 = nw_frame_unclaimed_length(*a1);
    goto LABEL_10;
  }

  if (v23)
  {
    v32 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
    }

    else
    {
      v31 = v23 - v32;
      if (!__OFSUB__(v23, v32))
      {
        v30 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v18;
  v31 = 0;
LABEL_10:
  v33 = a7;
  v34 = swift_slowAlloc();
  *&v54 = v34;
  *(&v54 + 1) = v34 + v31;
  v55 = 0uLL;
  LOBYTE(v56) = 1;
  result = sub_18210A264(v46, v47, v48, v29, v53);
  v35 = *(&v55 + 1);
  v36 = v49;
  v43 = v33;
  if (v56 == 1)
  {
    if (*(&v55 + 1))
    {
      v37 = 1;
    }

    else
    {
      if (v54)
      {
        v38 = *(&v54 + 1) - v54;
      }

      else
      {
        v38 = 0;
      }

      v35 = v38 - v55;
      if (__OFSUB__(v38, v55))
      {
        goto LABEL_35;
      }

      if (v35 < 0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v37 = v38 == v55;
    }
  }

  else
  {
    v37 = 0;
  }

  v39 = v45;
  sub_181AB5D28(v30, v45, &unk_1EA83A980);
  (*(v50 + 32))(v52, v39, v36);
  if (!v37)
  {
    if ((v44 & 1) == 0)
    {
      goto LABEL_27;
    }

    result = v31 - v35;
    if (!__OFSUB__(v31, v35))
    {
LABEL_26:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v30, &unk_1EA83A980);
        v41 = v43;
        *v43 = 2;
        *(v41 + 8) = 1;
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_34;
  }

  if (!v35)
  {
    if (v44)
    {
      result = v31;
      goto LABEL_26;
    }

LABEL_27:
    sub_1822B0518(v34, v34 + v31, v52, a1);
  }

  MEMORY[0x1865DF520](v34, -1, -1);
  sub_181F49A88(v30, &unk_1EA83A980);
  v40 = v43;
  *v43 = v35;
  *(v40 + 8) = v37;
LABEL_29:
  (*(v50 + 8))(v52, v36);
}

Swift::Int sub_1822A9808@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v45 = a3;
  v40 = a2;
  v44 = a4;
  v41 = sub_182AD2868();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39[-v14];
  v16 = *(a1 + 16);
  v47 = *a1;
  v48 = v16;
  v49 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v62 = *(a1 + 208);
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *(a1 + 192);
  v60 = *(a1 + 176);
  v61 = v21;
  v22 = *(a1 + 128);
  v56 = *(a1 + 112);
  v57 = v22;
  v23 = *(a1 + 160);
  v58 = *(a1 + 144);
  v59 = v23;
  v24 = *(a1 + 96);
  v54 = *(a1 + 80);
  v55 = v24;
  v50 = v17;
  v51 = v18;
  v52 = v20;
  v53 = v19;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_181F49A88(v8, &qword_1EA839BA8);
    result = sub_18201A4B4(v45);
    v26 = v44;
    *v44 = 2;
    *(v26 + 8) = 1;
    return result;
  }

  v27 = v45;
  result = sub_182022420(v8, v15);
  if (*(a1 + 24) == 5)
  {
    v28 = v15;
    v29 = nw_frame_unclaimed_length(*a1);
  }

  else
  {
    if (v19)
    {
      v30 = v18 + v20;
      if (__OFADD__(v18, v20))
      {
        __break(1u);
      }

      else
      {
        v29 = v19 - v30;
        if (!__OFSUB__(v19, v30))
        {
          v31 = v27;
          v28 = v15;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v28 = v15;
    v29 = 0;
  }

  v31 = v27;
LABEL_11:
  v32 = v42;
  v33 = swift_slowAlloc();
  *&v47 = v33;
  *(&v47 + 1) = v33 + v29;
  v48 = 0uLL;
  LOBYTE(v49) = 1;
  result = sub_1821060E4(&v47, v31, v46);
  v34 = *(&v48 + 1);
  if (v49 == 1)
  {
    if (*(&v48 + 1))
    {
      v35 = 1;
    }

    else
    {
      if (v47)
      {
        v36 = *(&v47 + 1) - v47;
      }

      else
      {
        v36 = 0;
      }

      v34 = v36 - v48;
      if (__OFSUB__(v36, v48))
      {
        goto LABEL_36;
      }

      if (v34 < 0)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v35 = v36 == v48;
    }
  }

  else
  {
    v35 = 0;
  }

  sub_181AB5D28(v28, v12, &unk_1EA83A980);
  v37 = v41;
  (*(v43 + 32))(v32, v12, v41);
  if (!v35)
  {
    v38 = v44;
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v29 - v34;
    if (!__OFSUB__(v29, v34))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v28, &unk_1EA83A980);
        *v38 = 2;
        *(v38 + 8) = 1;
        (*(v43 + 8))(v42, v37);
        return sub_18201A4B4(v45);
      }

      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v38 = v44;
  if (!v34)
  {
    if (v40)
    {
      result = v29;
      goto LABEL_27;
    }

LABEL_28:
    v32 = v42;
    sub_1822B0518(v33, v33 + v29, v42, a1);
  }

  MEMORY[0x1865DF520](v33, -1, -1);
  sub_181F49A88(v28, &unk_1EA83A980);
  *v38 = v34;
  *(v38 + 8) = v35;
  (*(v43 + 8))(v32, v37);
  return sub_18201A4B4(v45);
}

Swift::Int sub_1822A9D68@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v41 = a3;
  v38 = a2;
  v44 = a4;
  v40 = sub_182AD2868();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = *(a1 + 16);
  v46 = *a1;
  v47 = v15;
  v48 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v61 = *(a1 + 208);
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = *(a1 + 192);
  v59 = *(a1 + 176);
  v60 = v20;
  v21 = *(a1 + 128);
  v55 = *(a1 + 112);
  v56 = v21;
  v22 = *(a1 + 160);
  v57 = *(a1 + 144);
  v58 = v22;
  v23 = *(a1 + 96);
  v53 = *(a1 + 80);
  v54 = v23;
  v49 = v16;
  v50 = v17;
  v51 = v19;
  v52 = v18;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_181F49A88(v8, &qword_1EA839BA8);
    v25 = v44;
    *v44 = 2;
    *(v25 + 8) = 1;
    return result;
  }

  result = sub_182022420(v8, v14);
  if (*(a1 + 24) == 5)
  {
    v26 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v27 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = v18 - v27;
  if (__OFSUB__(v18, v27))
  {
    __break(1u);
LABEL_10:
    v26 = 0;
  }

LABEL_11:
  v28 = v42;
  v29 = swift_slowAlloc();
  *&v46 = v29;
  *(&v46 + 1) = v29 + v26;
  v47 = 0uLL;
  LOBYTE(v48) = 1;
  result = sub_182107FDC(v41, v45);
  v30 = *(&v47 + 1);
  v37 = v29 + v26;
  if (v48 == 1)
  {
    if (*(&v47 + 1))
    {
      v31 = 1;
    }

    else
    {
      if (v46)
      {
        v32 = *(&v46 + 1) - v46;
      }

      else
      {
        v32 = 0;
      }

      v30 = v32 - v47;
      if (__OFSUB__(v32, v47))
      {
        goto LABEL_34;
      }

      if (v30 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v31 = v32 == v47;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = v39;
  sub_181AB5D28(v14, v39, &unk_1EA83A980);
  v34 = v40;
  (*(v43 + 32))(v28, v33, v40);
  if (!v31)
  {
    v35 = v44;
    if ((v38 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v26 - v30;
    if (!__OFSUB__(v26, v30))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v14, &unk_1EA83A980);
        *v35 = 2;
        *(v35 + 8) = 1;
        return (*(v43 + 8))(v42, v34);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v35 = v44;
  if (!v30)
  {
    if (v38)
    {
      result = v26;
      goto LABEL_27;
    }

LABEL_28:
    v28 = v42;
    sub_1822B0518(v29, v37, v42, a1);
  }

  MEMORY[0x1865DF520](v29, -1, -1);
  sub_181F49A88(v14, &unk_1EA83A980);
  *v35 = v30;
  *(v35 + 8) = v31;
  return (*(v43 + 8))(v28, v34);
}

Swift::Int sub_1822AA288@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v53 = a6;
  v54 = a5;
  v49 = a4;
  v48 = a3;
  v46 = a2;
  v50 = sub_182AD2868();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = *(a1 + 16);
  v58 = *a1;
  v59 = v17;
  v60 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v73 = *(a1 + 208);
  v21 = *(a1 + 64);
  v20 = *(a1 + 72);
  v22 = *(a1 + 192);
  v71 = *(a1 + 176);
  v72 = v22;
  v23 = *(a1 + 128);
  v67 = *(a1 + 112);
  v68 = v23;
  v24 = *(a1 + 160);
  v69 = *(a1 + 144);
  v70 = v24;
  v25 = *(a1 + 96);
  v65 = *(a1 + 80);
  v66 = v25;
  v61 = v18;
  v62 = v19;
  v63 = v21;
  v64 = v20;
  sub_1821438A8(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_181F49A88(v10, &qword_1EA839BA8);

    v27 = v53;
    *v53 = 2;
    *(v27 + 8) = 1;
    return result;
  }

  v28 = v54;
  result = sub_182022420(v10, v16);
  v29 = v16;
  if (*(a1 + 24) == 5)
  {
    v30 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v20)
  {
    goto LABEL_10;
  }

  v31 = v19 + v21;
  if (__OFADD__(v19, v21))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v20 - v31;
  if (__OFSUB__(v20, v31))
  {
    __break(1u);
LABEL_10:
    v30 = 0;
  }

LABEL_11:
  v32 = v51;
  v33 = swift_slowAlloc();
  *&v58 = v33;
  *(&v58 + 1) = v33 + v30;
  v59 = 0uLL;
  LOBYTE(v60) = 1;
  v34 = sub_182104788(v48, v49);
  InPlaceSerializer.vle(_:)(v34, &v57);
  sub_1821065FC(*(v28 + 16), &v56);
  result = InPlaceSerializer.buffer(_:)(v28, &v55);
  v35 = *(&v59 + 1);
  v45 = v33 + v30;
  if (v60 != 1)
  {
    v37 = v29;
    v38 = 0;
    v36 = v50;
    goto LABEL_21;
  }

  v36 = v50;
  if (*(&v59 + 1))
  {
    v37 = v29;
    v38 = 1;
LABEL_21:
    v40 = v47;
    sub_181AB5D28(v37, v47, &unk_1EA83A980);
    (*(v52 + 32))(v32, v40, v36);
    if (v38)
    {
      v41 = v53;
      if (v35)
      {
LABEL_30:
        MEMORY[0x1865DF520](v33, -1, -1);
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = v35;
        *(v41 + 8) = v38;
        (*(v52 + 8))(v32, v36);
      }

      if (v46)
      {
        v42 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v30, 0, 1);
        v36 = v50;
        if (!v42)
        {
          goto LABEL_32;
        }
      }

LABEL_29:
      v32 = v51;
      sub_1822B0518(v33, v45, v51, a1);
      goto LABEL_30;
    }

    v41 = v53;
    if ((v46 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = v30 - v35;
    if (!__OFSUB__(v30, v35))
    {
      v43 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v36 = v50;
      if (!v43)
      {
LABEL_32:
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = 2;
        *(v41 + 8) = 1;
        (*(v52 + 8))(v51, v36);
      }

      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v58)
  {
    v39 = *(&v58 + 1) - v58;
  }

  else
  {
    v39 = 0;
  }

  v35 = v39 - v59;
  if (__OFSUB__(v39, v59))
  {
    goto LABEL_35;
  }

  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = v29;
    v38 = v39 == v59;
    goto LABEL_21;
  }

LABEL_36:
  __break(1u);
  return result;
}

Swift::Int sub_1822AA798@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, unint64_t a5@<X5>, unint64_t a6@<X6>, void *a7@<X8>)
{
  v54 = a5;
  v55 = a6;
  v53 = a4;
  v52 = a3;
  v49 = a2;
  v59 = a7;
  v8 = sub_182AD2868();
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48[-v18];
  v20 = *(a1 + 16);
  v63 = *a1;
  v64 = v20;
  v65 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v78 = *(a1 + 208);
  v24 = *(a1 + 64);
  v23 = *(a1 + 72);
  v25 = *(a1 + 192);
  v76 = *(a1 + 176);
  v77 = v25;
  v26 = *(a1 + 128);
  v72 = *(a1 + 112);
  v73 = v26;
  v27 = *(a1 + 160);
  v74 = *(a1 + 144);
  v75 = v27;
  v28 = *(a1 + 96);
  v70 = *(a1 + 80);
  v71 = v28;
  v66 = v21;
  v67 = v22;
  v68 = v24;
  v69 = v23;
  sub_1821438A8(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    result = sub_181F49A88(v13, &qword_1EA839BA8);
    v30 = v59;
    *v59 = 2;
    *(v30 + 8) = 1;
    return result;
  }

  result = sub_182022420(v13, v19);
  v31 = *(a1 + 24);
  v50 = v19;
  if (v31 == 5)
  {
    v32 = nw_frame_unclaimed_length(*a1);
LABEL_11:
    v34 = v56;
    goto LABEL_12;
  }

  if (!v23)
  {
LABEL_10:
    v32 = 0;
    goto LABEL_11;
  }

  v33 = v22 + v24;
  if (__OFADD__(v22, v24))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v32 = v23 - v33;
  v34 = v56;
  if (__OFSUB__(v23, v33))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v35 = v58;
  v36 = swift_slowAlloc();
  *&v63 = v36;
  *(&v63 + 1) = v36 + v32;
  v64 = 0uLL;
  LOBYTE(v65) = 1;
  v37 = sub_182104788(v52, v53);
  InPlaceSerializer.vle(_:)(v37, &v62);
  InPlaceSerializer.vle(_:)(v54, &v61);
  result = InPlaceSerializer.vle(_:)(v55, &v60);
  v38 = *(&v64 + 1);
  v56 = v36 + v32;
  if (v65 != 1)
  {
    v40 = 0;
    v39 = v57;
    goto LABEL_22;
  }

  v39 = v57;
  if (*(&v64 + 1))
  {
    v40 = 1;
LABEL_22:
    v42 = v51;
    sub_181AB5D28(v50, v51, &unk_1EA83A980);
    v43 = v42;
    v44 = v34;
    (*(v39 + 32))(v35, v43, v34);
    if (v40)
    {
      v45 = v59;
      if (v38)
      {
LABEL_31:
        MEMORY[0x1865DF520](v36, -1, -1);
        sub_181F49A88(v50, &unk_1EA83A980);
        *v45 = v38;
        *(v45 + 8) = v40;
        return (*(v39 + 8))(v35, v44);
      }

      if (v49)
      {
        v46 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v32, 0, 1);
        v39 = v57;
        if (!v46)
        {
          goto LABEL_32;
        }
      }

LABEL_30:
      v35 = v58;
      sub_1822B0518(v36, v56, v58, a1);
      goto LABEL_31;
    }

    v45 = v59;
    if ((v49 & 1) == 0)
    {
      goto LABEL_30;
    }

    result = v32 - v38;
    if (!__OFSUB__(v32, v38))
    {
      v47 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v39 = v57;
      if (!v47)
      {
LABEL_32:
        sub_181F49A88(v50, &unk_1EA83A980);
        *v45 = 2;
        *(v45 + 8) = 1;
        return (*(v39 + 8))(v58, v44);
      }

      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v63)
  {
    v41 = *(&v63 + 1) - v63;
  }

  else
  {
    v41 = 0;
  }

  v38 = v41 - v64;
  if (__OFSUB__(v41, v64))
  {
    goto LABEL_35;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    v40 = v41 == v64;
    goto LABEL_22;
  }

LABEL_36:
  __break(1u);
  return result;
}

Swift::Int sub_1822AAC88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v50 = a5;
  v49 = a4;
  v48 = a3;
  v46 = a2;
  v54 = a6;
  v53 = sub_182AD2868();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = *(a1 + 16);
  v57 = *a1;
  v58 = v17;
  v59 = *(a1 + 32);
  v18 = *(a1 + 176);
  v19 = *(a1 + 192);
  v20 = *(a1 + 144);
  v69 = *(a1 + 160);
  v70 = v18;
  v71 = v19;
  v21 = *(a1 + 112);
  v22 = *(a1 + 128);
  v23 = *(a1 + 80);
  v65 = *(a1 + 96);
  v66 = v21;
  v67 = v22;
  v68 = v20;
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  v72 = *(a1 + 208);
  v64 = v23;
  v60 = v24;
  v61 = v25;
  v62 = v26;
  v63 = v27;
  sub_1821438A8(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_181F49A88(v10, &qword_1EA839BA8);
    v29 = v54;
    *v54 = 2;
    *(v29 + 8) = 1;
    return result;
  }

  result = sub_182022420(v10, v16);
  if (*(a1 + 24) == 5)
  {
    v30 = nw_frame_unclaimed_length(*a1);
LABEL_11:
    v32 = v52;
    goto LABEL_12;
  }

  if (!v27)
  {
LABEL_10:
    v30 = 0;
    goto LABEL_11;
  }

  v31 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v27 - v31;
  v32 = v52;
  if (__OFSUB__(v27, v31))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v33 = swift_slowAlloc();
  *&v57 = v33;
  *(&v57 + 1) = v33 + v30;
  v58 = 0uLL;
  LOBYTE(v59) = 1;
  v34 = sub_182104788(v48, v49);
  InPlaceSerializer.vle(_:)(v34, &v56);
  result = InPlaceSerializer.vle(_:)(v50, &v55);
  v35 = *(&v58 + 1);
  v45 = v33 + v30;
  if (v59 != 1)
  {
    v37 = v16;
    v38 = 0;
    v36 = v51;
    goto LABEL_22;
  }

  v36 = v51;
  if (*(&v58 + 1))
  {
    v37 = v16;
    v38 = 1;
LABEL_22:
    v40 = v47;
    sub_181AB5D28(v37, v47, &unk_1EA83A980);
    (*(v36 + 32))(v32, v40, v53);
    if (v38)
    {
      v41 = v54;
      if (v35)
      {
LABEL_31:
        MEMORY[0x1865DF520](v33, -1, -1);
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = v35;
        *(v41 + 8) = v38;
        return (*(v36 + 8))(v32, v53);
      }

      if (v46)
      {
        v42 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v30, 0, 1);
        v36 = v51;
        if (!v42)
        {
          goto LABEL_32;
        }
      }

LABEL_30:
      v32 = v52;
      sub_1822B0518(v33, v45, v52, a1);
      goto LABEL_31;
    }

    v41 = v54;
    if ((v46 & 1) == 0)
    {
      goto LABEL_30;
    }

    result = v30 - v35;
    if (!__OFSUB__(v30, v35))
    {
      v43 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v36 = v51;
      if (!v43)
      {
LABEL_32:
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = 2;
        *(v41 + 8) = 1;
        return (*(v36 + 8))(v52, v53);
      }

      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v57)
  {
    v39 = *(&v57 + 1) - v57;
  }

  else
  {
    v39 = 0;
  }

  v35 = v39 - v58;
  if (__OFSUB__(v39, v58))
  {
    goto LABEL_35;
  }

  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = v16;
    v38 = v39 == v58;
    goto LABEL_22;
  }

LABEL_36:
  __break(1u);
  return result;
}

Swift::Int sub_1822AB174@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v55 = a6;
  v56 = a7;
  v51 = a5;
  v50 = a4;
  v49 = a3;
  v46 = a2;
  v52 = sub_182AD2868();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45[-v16];
  v18 = *(a1 + 16);
  v59 = *a1;
  v60 = v18;
  v61 = *(a1 + 32);
  v19 = *(a1 + 176);
  v20 = *(a1 + 192);
  v21 = *(a1 + 144);
  v71 = *(a1 + 160);
  v72 = v19;
  v73 = v20;
  v22 = *(a1 + 112);
  v23 = *(a1 + 128);
  v24 = *(a1 + 80);
  v67 = *(a1 + 96);
  v68 = v22;
  v69 = v23;
  v70 = v21;
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = *(a1 + 72);
  v74 = *(a1 + 208);
  v66 = v24;
  v62 = v25;
  v63 = v26;
  v64 = v27;
  v65 = v28;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);

    v30 = v56;
    *v56 = 2;
    *(v30 + 8) = 1;
    return result;
  }

  v31 = v56;
  result = sub_182022420(v11, v17);
  v32 = *(a1 + 24);
  v47 = v17;
  if (v32 == 5)
  {
    v33 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v28)
  {
    goto LABEL_10;
  }

  v34 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = v28 - v34;
  if (__OFSUB__(v28, v34))
  {
    __break(1u);
LABEL_10:
    v33 = 0;
  }

LABEL_11:
  v35 = v31;
  v36 = v53;
  v37 = swift_slowAlloc();
  *&v59 = v37;
  *(&v59 + 1) = v37 + v33;
  v56 = (v37 + v33);
  v60 = 0uLL;
  LOBYTE(v61) = 1;
  v38 = sub_182104788(v49, v50);
  InPlaceSerializer.vle(_:)(v38, &v58);
  result = InPlaceSerializer.uint64(_:)(v51, &v57);
  v39 = *(&v60 + 1);
  if (v61 == 1)
  {
    v40 = v52;
    if (*(&v60 + 1))
    {
      v41 = 1;
    }

    else
    {
      if (v59)
      {
        v42 = *(&v59 + 1) - v59;
      }

      else
      {
        v42 = 0;
      }

      v39 = v42 - v60;
      if (__OFSUB__(v42, v60))
      {
        goto LABEL_35;
      }

      if (v39 < 0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v41 = v42 == v60;
    }
  }

  else
  {
    v41 = 0;
    v40 = v52;
  }

  v43 = v48;
  sub_181AB5D28(v47, v48, &unk_1EA83A980);
  (*(v54 + 32))(v36, v43, v40);
  if (!v41)
  {
    if ((v46 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v33 - v39;
    if (!__OFSUB__(v33, v39))
    {
LABEL_27:
      v44 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v40 = v52;
      if (!v44)
      {
        sub_181F49A88(v47, &unk_1EA83A980);
        *v35 = 2;
        *(v35 + 8) = 1;
        (*(v54 + 8))(v53, v40);
      }

      goto LABEL_28;
    }

    goto LABEL_34;
  }

  if (!v39)
  {
    if (v46)
    {
      result = v33;
      goto LABEL_27;
    }

LABEL_28:
    v36 = v53;
    sub_1822B0518(v37, v56, v53, a1);
  }

  MEMORY[0x1865DF520](v37, -1, -1);
  sub_181F49A88(v47, &unk_1EA83A980);
  *v35 = v39;
  *(v35 + 8) = v41;
  (*(v54 + 8))(v36, v40);
}

void *sub_1822AB654@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, void *(*a5)(uint64_t *__return_ptr, __int128 *, uint64_t)@<X5>, void *a6@<X8>)
{
  v41 = a5;
  v44 = a4;
  v45 = a3;
  v40 = a2;
  v46 = a6;
  v43 = sub_182AD2868();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39[-v16];
  v18 = *(a1 + 16);
  v49 = *a1;
  v50 = v18;
  v51 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v64 = *(a1 + 208);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = *(a1 + 192);
  v62 = *(a1 + 176);
  v63 = v23;
  v24 = *(a1 + 128);
  v58 = *(a1 + 112);
  v59 = v24;
  v25 = *(a1 + 160);
  v60 = *(a1 + 144);
  v61 = v25;
  v26 = *(a1 + 96);
  v56 = *(a1 + 80);
  v57 = v26;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  sub_1821438A8(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_181F49A88(v10, &qword_1EA839BA8);
    result = v44(v45);
    v28 = v46;
    *v46 = 2;
    *(v28 + 8) = 1;
    return result;
  }

  v29 = v45;
  result = sub_182022420(v10, v17);
  if (*(a1 + 24) == 5)
  {
    v30 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v22)
  {
    goto LABEL_10;
  }

  v31 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v22 - v31;
  if (__OFSUB__(v22, v31))
  {
    __break(1u);
LABEL_10:
    v30 = 0;
  }

LABEL_11:
  v32 = swift_slowAlloc();
  *&v49 = v32;
  *(&v49 + 1) = v32 + v30;
  v50 = 0uLL;
  LOBYTE(v51) = 1;
  result = v41(&v48, &v49, v29);
  v33 = *(&v50 + 1);
  if (v51 == 1)
  {
    if (*(&v50 + 1))
    {
      v34 = 1;
    }

    else
    {
      if (v49)
      {
        v35 = *(&v49 + 1) - v49;
      }

      else
      {
        v35 = 0;
      }

      v33 = v35 - v50;
      if (__OFSUB__(v35, v50))
      {
        goto LABEL_35;
      }

      if (v33 < 0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v34 = v35 == v50;
    }
  }

  else
  {
    v34 = 0;
  }

  sub_181AB5D28(v17, v14, &unk_1EA83A980);
  (*(v42 + 32))(v47, v14, v43);
  if (!v34)
  {
    v36 = v44;
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = (v30 - v33);
    if (!__OFSUB__(v30, v33))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v17, &unk_1EA83A980);
        v38 = v46;
        *v46 = 2;
        *(v38 + 8) = 1;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    goto LABEL_34;
  }

  v36 = v44;
  v37 = v46;
  if (!v33)
  {
    if (v40)
    {
      result = v30;
      goto LABEL_27;
    }

LABEL_28:
    sub_1822B0518(v32, v32 + v30, v47, a1);
    v37 = v46;
  }

  MEMORY[0x1865DF520](v32, -1, -1);
  sub_181F49A88(v17, &unk_1EA83A980);
  *v37 = v33;
  *(v37 + 8) = v34;
LABEL_30:
  (*(v42 + 8))(v47, v43);
  return v36(v29);
}

void *sub_1822ABBC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, void *(*a5)(uint64_t *__return_ptr, __int128 *, uint64_t)@<X5>, void *a6@<X8>)
{
  v41 = a5;
  v44 = a4;
  v45 = a3;
  v40 = a2;
  v46 = a6;
  v43 = sub_182AD2868();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39[-v16];
  v18 = *(a1 + 16);
  v49 = *a1;
  v50 = v18;
  v51 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v64 = *(a1 + 208);
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = *(a1 + 192);
  v62 = *(a1 + 176);
  v63 = v23;
  v24 = *(a1 + 128);
  v58 = *(a1 + 112);
  v59 = v24;
  v25 = *(a1 + 160);
  v60 = *(a1 + 144);
  v61 = v25;
  v26 = *(a1 + 96);
  v56 = *(a1 + 80);
  v57 = v26;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  sub_1821438A8(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_181F49A88(v10, &qword_1EA839BA8);
    result = v44(v45);
    v28 = v46;
    *v46 = 2;
    *(v28 + 8) = 1;
    return result;
  }

  v29 = v45;
  result = sub_182022420(v10, v17);
  if (*(a1 + 24) == 5)
  {
    v30 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v22)
  {
    goto LABEL_10;
  }

  v31 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v22 - v31;
  if (__OFSUB__(v22, v31))
  {
    __break(1u);
LABEL_10:
    v30 = 0;
  }

LABEL_11:
  v32 = swift_slowAlloc();
  *&v49 = v32;
  *(&v49 + 1) = v32 + v30;
  v50 = 0uLL;
  LOBYTE(v51) = 1;
  result = v41(&v48, &v49, v29);
  v33 = *(&v50 + 1);
  if (v51 == 1)
  {
    if (*(&v50 + 1))
    {
      v34 = 1;
    }

    else
    {
      if (v49)
      {
        v35 = *(&v49 + 1) - v49;
      }

      else
      {
        v35 = 0;
      }

      v33 = v35 - v50;
      if (__OFSUB__(v35, v50))
      {
        goto LABEL_35;
      }

      if (v33 < 0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v34 = v35 == v50;
    }
  }

  else
  {
    v34 = 0;
  }

  sub_181AB5D28(v17, v14, &unk_1EA83A980);
  (*(v42 + 32))(v47, v14, v43);
  if (!v34)
  {
    v36 = v44;
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = (v30 - v33);
    if (!__OFSUB__(v30, v33))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v17, &unk_1EA83A980);
        v38 = v46;
        *v46 = 2;
        *(v38 + 8) = 1;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    goto LABEL_34;
  }

  v36 = v44;
  v37 = v46;
  if (!v33)
  {
    if (v40)
    {
      result = v30;
      goto LABEL_27;
    }

LABEL_28:
    sub_1822B0518(v32, v32 + v30, v47, a1);
    v37 = v46;
  }

  MEMORY[0x1865DF520](v32, -1, -1);
  sub_181F49A88(v17, &unk_1EA83A980);
  *v37 = v33;
  *(v37 + 8) = v34;
LABEL_30:
  (*(v42 + 8))(v47, v43);
  return v36(v29);
}

Swift::Int sub_1822AC128@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v45 = a3;
  v40 = a2;
  v44 = a4;
  v41 = sub_182AD2868();
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39[-v14];
  v16 = *(a1 + 16);
  v47 = *a1;
  v48 = v16;
  v49 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v62 = *(a1 + 208);
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *(a1 + 192);
  v60 = *(a1 + 176);
  v61 = v21;
  v22 = *(a1 + 128);
  v56 = *(a1 + 112);
  v57 = v22;
  v23 = *(a1 + 160);
  v58 = *(a1 + 144);
  v59 = v23;
  v24 = *(a1 + 96);
  v54 = *(a1 + 80);
  v55 = v24;
  v50 = v17;
  v51 = v18;
  v52 = v20;
  v53 = v19;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_181F49A88(v8, &qword_1EA839BA8);
    result = sub_1821233E4(v45);
    v26 = v44;
    *v44 = 2;
    *(v26 + 8) = 1;
    return result;
  }

  v27 = v45;
  result = sub_182022420(v8, v15);
  if (*(a1 + 24) == 5)
  {
    v28 = v15;
    v29 = nw_frame_unclaimed_length(*a1);
  }

  else
  {
    if (v19)
    {
      v30 = v18 + v20;
      if (__OFADD__(v18, v20))
      {
        __break(1u);
      }

      else
      {
        v29 = v19 - v30;
        if (!__OFSUB__(v19, v30))
        {
          v31 = v27;
          v28 = v15;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v28 = v15;
    v29 = 0;
  }

  v31 = v27;
LABEL_11:
  v32 = v42;
  v33 = swift_slowAlloc();
  *&v47 = v33;
  *(&v47 + 1) = v33 + v29;
  v48 = 0uLL;
  LOBYTE(v49) = 1;
  result = sub_18210CB28(v31, v46);
  v34 = *(&v48 + 1);
  if (v49 == 1)
  {
    if (*(&v48 + 1))
    {
      v35 = 1;
    }

    else
    {
      if (v47)
      {
        v36 = *(&v47 + 1) - v47;
      }

      else
      {
        v36 = 0;
      }

      v34 = v36 - v48;
      if (__OFSUB__(v36, v48))
      {
        goto LABEL_36;
      }

      if (v34 < 0)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v35 = v36 == v48;
    }
  }

  else
  {
    v35 = 0;
  }

  sub_181AB5D28(v28, v12, &unk_1EA83A980);
  v37 = v41;
  (*(v43 + 32))(v32, v12, v41);
  if (!v35)
  {
    v38 = v44;
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v29 - v34;
    if (!__OFSUB__(v29, v34))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v28, &unk_1EA83A980);
        *v38 = 2;
        *(v38 + 8) = 1;
        (*(v43 + 8))(v42, v37);
        return sub_1821233E4(v45);
      }

      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v38 = v44;
  if (!v34)
  {
    if (v40)
    {
      result = v29;
      goto LABEL_27;
    }

LABEL_28:
    v32 = v42;
    sub_1822B0518(v33, v33 + v29, v42, a1);
  }

  MEMORY[0x1865DF520](v33, -1, -1);
  sub_181F49A88(v28, &unk_1EA83A980);
  *v38 = v34;
  *(v38 + 8) = v35;
  (*(v43 + 8))(v32, v37);
  return sub_1821233E4(v45);
}

Swift::Int sub_1822AC65C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v41 = a3;
  v38 = a2;
  v44 = a4;
  v40 = sub_182AD2868();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = *(a1 + 16);
  v46 = *a1;
  v47 = v15;
  v48 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v61 = *(a1 + 208);
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = *(a1 + 192);
  v59 = *(a1 + 176);
  v60 = v20;
  v21 = *(a1 + 128);
  v55 = *(a1 + 112);
  v56 = v21;
  v22 = *(a1 + 160);
  v57 = *(a1 + 144);
  v58 = v22;
  v23 = *(a1 + 96);
  v53 = *(a1 + 80);
  v54 = v23;
  v49 = v16;
  v50 = v17;
  v51 = v19;
  v52 = v18;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_181F49A88(v8, &qword_1EA839BA8);
    v25 = v44;
    *v44 = 2;
    *(v25 + 8) = 1;
    return result;
  }

  result = sub_182022420(v8, v14);
  if (*(a1 + 24) == 5)
  {
    v26 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v27 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = v18 - v27;
  if (__OFSUB__(v18, v27))
  {
    __break(1u);
LABEL_10:
    v26 = 0;
  }

LABEL_11:
  v28 = v42;
  v29 = swift_slowAlloc();
  *&v46 = v29;
  *(&v46 + 1) = v29 + v26;
  v47 = 0uLL;
  LOBYTE(v48) = 1;
  result = sub_18210D010(v41, v45);
  v30 = *(&v47 + 1);
  v37 = v29 + v26;
  if (v48 == 1)
  {
    if (*(&v47 + 1))
    {
      v31 = 1;
    }

    else
    {
      if (v46)
      {
        v32 = *(&v46 + 1) - v46;
      }

      else
      {
        v32 = 0;
      }

      v30 = v32 - v47;
      if (__OFSUB__(v32, v47))
      {
        goto LABEL_34;
      }

      if (v30 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v31 = v32 == v47;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = v39;
  sub_181AB5D28(v14, v39, &unk_1EA83A980);
  v34 = v40;
  (*(v43 + 32))(v28, v33, v40);
  if (!v31)
  {
    v35 = v44;
    if ((v38 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v26 - v30;
    if (!__OFSUB__(v26, v30))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v14, &unk_1EA83A980);
        *v35 = 2;
        *(v35 + 8) = 1;
        return (*(v43 + 8))(v42, v34);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v35 = v44;
  if (!v30)
  {
    if (v38)
    {
      result = v26;
      goto LABEL_27;
    }

LABEL_28:
    v28 = v42;
    sub_1822B0518(v29, v37, v42, a1);
  }

  MEMORY[0x1865DF520](v29, -1, -1);
  sub_181F49A88(v14, &unk_1EA83A980);
  *v35 = v30;
  *(v35 + 8) = v31;
  return (*(v43 + 8))(v28, v34);
}

void *sub_1822ACB7C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, unsigned int a4@<W4>, void *(*a5)(uint64_t *__return_ptr, __int128 *, uint64_t, void)@<X5>, void *a6@<X8>)
{
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v40 = a2;
  v48 = a6;
  v47 = sub_182AD2868();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39[-v15];
  v17 = *(a1 + 16);
  v50 = *a1;
  v51 = v17;
  v52 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v65 = *(a1 + 208);
  v21 = *(a1 + 64);
  v20 = *(a1 + 72);
  v22 = *(a1 + 192);
  v63 = *(a1 + 176);
  v64 = v22;
  v23 = *(a1 + 128);
  v59 = *(a1 + 112);
  v60 = v23;
  v24 = *(a1 + 160);
  v61 = *(a1 + 144);
  v62 = v24;
  v25 = *(a1 + 96);
  v57 = *(a1 + 80);
  v58 = v25;
  v53 = v18;
  v54 = v19;
  v55 = v21;
  v56 = v20;
  sub_1821438A8(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_181F49A88(v10, &qword_1EA839BA8);
    v27 = v48;
    *v48 = 2;
    *(v27 + 8) = 1;
    return result;
  }

  result = sub_182022420(v10, v16);
  if (*(a1 + 24) == 5)
  {
    v28 = nw_frame_unclaimed_length(*a1);
LABEL_11:
    v30 = v45;
    goto LABEL_12;
  }

  if (!v20)
  {
LABEL_10:
    v28 = 0;
    goto LABEL_11;
  }

  v29 = v19 + v21;
  if (__OFADD__(v19, v21))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v20 - v29;
  v30 = v45;
  if (__OFSUB__(v20, v29))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v31 = v46;
  v32 = swift_slowAlloc();
  *&v50 = v32;
  *(&v50 + 1) = v32 + v28;
  v51 = 0uLL;
  LOBYTE(v52) = 1;
  result = v44(&v49, &v50, v42, v43);
  v33 = *(&v51 + 1);
  if (v52 == 1)
  {
    if (*(&v51 + 1))
    {
      v34 = v16;
      v35 = 1;
    }

    else
    {
      if (v50)
      {
        v36 = *(&v50 + 1) - v50;
      }

      else
      {
        v36 = 0;
      }

      v33 = v36 - v51;
      if (__OFSUB__(v36, v51))
      {
        goto LABEL_35;
      }

      if (v33 < 0)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v34 = v16;
      v35 = v36 == v51;
    }
  }

  else
  {
    v34 = v16;
    v35 = 0;
  }

  v37 = v41;
  sub_181AB5D28(v34, v41, &unk_1EA83A980);
  (*(v30 + 32))(v31, v37, v47);
  if (!v35)
  {
    v38 = v48;
    if ((v40 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = (v28 - v33);
    if (!__OFSUB__(v28, v33))
    {
LABEL_28:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v34, &unk_1EA83A980);
        *v38 = 2;
        *(v38 + 8) = 1;
        return (*(v30 + 8))(v46, v47);
      }

      goto LABEL_29;
    }

    goto LABEL_34;
  }

  v38 = v48;
  if (!v33)
  {
    if (v40)
    {
      result = v28;
      goto LABEL_28;
    }

LABEL_29:
    v31 = v46;
    sub_1822B0518(v32, v32 + v28, v46, a1);
  }

  MEMORY[0x1865DF520](v32, -1, -1);
  sub_181F49A88(v34, &unk_1EA83A980);
  *v38 = v33;
  *(v38 + 8) = v35;
  return (*(v30 + 8))(v31, v47);
}

Swift::Int sub_1822AD0BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, unint64_t *a4@<X4>, void *a5@<X8>)
{
  v43 = a4;
  v47 = a3;
  v41 = a2;
  v46 = a5;
  v42 = sub_182AD2868();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-v15];
  v17 = *(a1 + 16);
  v49 = *a1;
  v50 = v17;
  v51 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v64 = *(a1 + 208);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 192);
  v62 = *(a1 + 176);
  v63 = v22;
  v23 = *(a1 + 128);
  v58 = *(a1 + 112);
  v59 = v23;
  v24 = *(a1 + 160);
  v60 = *(a1 + 144);
  v61 = v24;
  v25 = *(a1 + 96);
  v56 = *(a1 + 80);
  v57 = v25;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA839BA8);
    result = sub_18212344C(v47);
    v27 = v46;
    *v46 = 2;
    *(v27 + 8) = 1;
    return result;
  }

  v28 = v47;
  result = sub_182022420(v9, v16);
  if (*(a1 + 24) == 5)
  {
    v29 = v16;
    v30 = nw_frame_unclaimed_length(*a1);
  }

  else
  {
    if (v21)
    {
      v31 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        __break(1u);
      }

      else
      {
        v30 = v21 - v31;
        v32 = v44;
        if (!__OFSUB__(v21, v31))
        {
          v29 = v16;
          v33 = v28;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v29 = v16;
    v30 = 0;
  }

  v33 = v28;
  v32 = v44;
LABEL_11:
  v34 = swift_slowAlloc();
  *&v49 = v34;
  *(&v49 + 1) = v34 + v30;
  v50 = 0uLL;
  LOBYTE(v51) = 1;
  result = sub_18211477C(&v49, v33, v43, v48);
  v35 = *(&v50 + 1);
  if (v51 == 1)
  {
    if (*(&v50 + 1))
    {
      v36 = 1;
    }

    else
    {
      if (v49)
      {
        v37 = *(&v49 + 1) - v49;
      }

      else
      {
        v37 = 0;
      }

      v35 = v37 - v50;
      if (__OFSUB__(v37, v50))
      {
        goto LABEL_36;
      }

      if (v35 < 0)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v36 = v37 == v50;
    }
  }

  else
  {
    v36 = 0;
  }

  sub_181AB5D28(v29, v13, &unk_1EA83A980);
  v38 = v42;
  (*(v45 + 32))(v32, v13, v42);
  if (!v36)
  {
    v39 = v46;
    if ((v41 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v30 - v35;
    if (!__OFSUB__(v30, v35))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v29, &unk_1EA83A980);
        *v39 = 2;
        *(v39 + 8) = 1;
        (*(v45 + 8))(v44, v38);
        return sub_18212344C(v47);
      }

      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v39 = v46;
  if (!v35)
  {
    if (v41)
    {
      result = v30;
      goto LABEL_27;
    }

LABEL_28:
    v32 = v44;
    sub_1822B0518(v34, v34 + v30, v44, a1);
  }

  MEMORY[0x1865DF520](v34, -1, -1);
  sub_181F49A88(v29, &unk_1EA83A980);
  *v39 = v35;
  *(v39 + 8) = v36;
  (*(v45 + 8))(v32, v38);
  return sub_18212344C(v47);
}

Swift::Int sub_1822AD608@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, unint64_t *a4@<X4>, void *a5@<X8>)
{
  v43 = a4;
  v47 = a3;
  v41 = a2;
  v46 = a5;
  v42 = sub_182AD2868();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-v15];
  v17 = *(a1 + 16);
  v49 = *a1;
  v50 = v17;
  v51 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v64 = *(a1 + 208);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 192);
  v62 = *(a1 + 176);
  v63 = v22;
  v23 = *(a1 + 128);
  v58 = *(a1 + 112);
  v59 = v23;
  v24 = *(a1 + 160);
  v60 = *(a1 + 144);
  v61 = v24;
  v25 = *(a1 + 96);
  v56 = *(a1 + 80);
  v57 = v25;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v21;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA839BA8);
    result = sub_1821231A4(v47);
    v27 = v46;
    *v46 = 2;
    *(v27 + 8) = 1;
    return result;
  }

  v28 = v47;
  result = sub_182022420(v9, v16);
  if (*(a1 + 24) == 5)
  {
    v29 = v16;
    v30 = nw_frame_unclaimed_length(*a1);
  }

  else
  {
    if (v21)
    {
      v31 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        __break(1u);
      }

      else
      {
        v30 = v21 - v31;
        v32 = v44;
        if (!__OFSUB__(v21, v31))
        {
          v29 = v16;
          v33 = v28;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v29 = v16;
    v30 = 0;
  }

  v33 = v28;
  v32 = v44;
LABEL_11:
  v34 = swift_slowAlloc();
  *&v49 = v34;
  *(&v49 + 1) = v34 + v30;
  v50 = 0uLL;
  LOBYTE(v51) = 1;
  result = sub_182114FD4(&v49, v33, v43, v48);
  v35 = *(&v50 + 1);
  if (v51 == 1)
  {
    if (*(&v50 + 1))
    {
      v36 = 1;
    }

    else
    {
      if (v49)
      {
        v37 = *(&v49 + 1) - v49;
      }

      else
      {
        v37 = 0;
      }

      v35 = v37 - v50;
      if (__OFSUB__(v37, v50))
      {
        goto LABEL_36;
      }

      if (v35 < 0)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v36 = v37 == v50;
    }
  }

  else
  {
    v36 = 0;
  }

  sub_181AB5D28(v29, v13, &unk_1EA83A980);
  v38 = v42;
  (*(v45 + 32))(v32, v13, v42);
  if (!v36)
  {
    v39 = v46;
    if ((v41 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v30 - v35;
    if (!__OFSUB__(v30, v35))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v29, &unk_1EA83A980);
        *v39 = 2;
        *(v39 + 8) = 1;
        (*(v45 + 8))(v44, v38);
        return sub_1821231A4(v47);
      }

      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v39 = v46;
  if (!v35)
  {
    if (v41)
    {
      result = v30;
      goto LABEL_27;
    }

LABEL_28:
    v32 = v44;
    sub_1822B0518(v34, v34 + v30, v44, a1);
  }

  MEMORY[0x1865DF520](v34, -1, -1);
  sub_181F49A88(v29, &unk_1EA83A980);
  *v39 = v35;
  *(v39 + 8) = v36;
  (*(v45 + 8))(v32, v38);
  return sub_1821231A4(v47);
}

Swift::Int sub_1822ADB80@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v41 = a3;
  v38 = a2;
  v44 = a4;
  v40 = sub_182AD2868();
  v43 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = *(a1 + 16);
  v46 = *a1;
  v47 = v15;
  v48 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v61 = *(a1 + 208);
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = *(a1 + 192);
  v59 = *(a1 + 176);
  v60 = v20;
  v21 = *(a1 + 128);
  v55 = *(a1 + 112);
  v56 = v21;
  v22 = *(a1 + 160);
  v57 = *(a1 + 144);
  v58 = v22;
  v23 = *(a1 + 96);
  v53 = *(a1 + 80);
  v54 = v23;
  v49 = v16;
  v50 = v17;
  v51 = v19;
  v52 = v18;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_181F49A88(v8, &qword_1EA839BA8);
    v25 = v44;
    *v44 = 2;
    *(v25 + 8) = 1;
    return result;
  }

  result = sub_182022420(v8, v14);
  if (*(a1 + 24) == 5)
  {
    v26 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v27 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = v18 - v27;
  if (__OFSUB__(v18, v27))
  {
    __break(1u);
LABEL_10:
    v26 = 0;
  }

LABEL_11:
  v28 = v42;
  v29 = swift_slowAlloc();
  *&v46 = v29;
  *(&v46 + 1) = v29 + v26;
  v47 = 0uLL;
  LOBYTE(v48) = 1;
  result = sub_18210DD38(v41, v45);
  v30 = *(&v47 + 1);
  v37 = v29 + v26;
  if (v48 == 1)
  {
    if (*(&v47 + 1))
    {
      v31 = 1;
    }

    else
    {
      if (v46)
      {
        v32 = *(&v46 + 1) - v46;
      }

      else
      {
        v32 = 0;
      }

      v30 = v32 - v47;
      if (__OFSUB__(v32, v47))
      {
        goto LABEL_34;
      }

      if (v30 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v31 = v32 == v47;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = v39;
  sub_181AB5D28(v14, v39, &unk_1EA83A980);
  v34 = v40;
  (*(v43 + 32))(v28, v33, v40);
  if (!v31)
  {
    v35 = v44;
    if ((v38 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v26 - v30;
    if (!__OFSUB__(v26, v30))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v14, &unk_1EA83A980);
        *v35 = 2;
        *(v35 + 8) = 1;
        return (*(v43 + 8))(v42, v34);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v35 = v44;
  if (!v30)
  {
    if (v38)
    {
      result = v26;
      goto LABEL_27;
    }

LABEL_28:
    v28 = v42;
    sub_1822B0518(v29, v37, v42, a1);
  }

  MEMORY[0x1865DF520](v29, -1, -1);
  sub_181F49A88(v14, &unk_1EA83A980);
  *v35 = v30;
  *(v35 + 8) = v31;
  return (*(v43 + 8))(v28, v34);
}

Swift::Int sub_1822AE0A0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v46 = a3;
  v41 = a2;
  v44 = a4;
  v42 = sub_182AD2868();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = *(a1 + 16);
  v48 = *a1;
  v49 = v16;
  v50 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v63 = *(a1 + 208);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 192);
  v61 = *(a1 + 176);
  v62 = v21;
  v22 = *(a1 + 128);
  v57 = *(a1 + 112);
  v58 = v22;
  v23 = *(a1 + 160);
  v59 = *(a1 + 144);
  v60 = v23;
  v24 = *(a1 + 96);
  v55 = *(a1 + 80);
  v56 = v24;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_181F49A88(v8, &qword_1EA839BA8);

    v26 = v44;
    *v44 = 2;
    *(v26 + 8) = 1;
    return result;
  }

  result = sub_182022420(v8, v15);
  if (*(a1 + 24) == 5)
  {
    v27 = nw_frame_unclaimed_length(*a1);
LABEL_11:
    v29 = v46;
    goto LABEL_12;
  }

  if (!v20)
  {
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v28 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v27 = v20 - v28;
  v29 = v46;
  if (__OFSUB__(v20, v28))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v30 = swift_slowAlloc();
  *&v48 = v30;
  *(&v48 + 1) = v30 + v27;
  v49 = 0uLL;
  LOBYTE(v50) = 1;
  result = InPlaceSerializer.buffer(_:)(v29, v47);
  v31 = *(&v49 + 1);
  v40 = v30 + v27;
  if (v50 != 1)
  {
    v32 = v15;
    v33 = 0;
    v34 = v43;
LABEL_22:
    sub_181AB5D28(v32, v12, &unk_1EA83A980);
    v36 = v42;
    (*(v34 + 32))(v45, v12, v42);
    if (v33)
    {
      v37 = v44;
      if (v31)
      {
LABEL_31:
        MEMORY[0x1865DF520](v30, -1, -1);
        sub_181F49A88(v32, &unk_1EA83A980);
        *v37 = v31;
        *(v37 + 8) = v33;
        (*(v34 + 8))(v45, v36);
      }

      if (v41)
      {
        v38 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v27, 0, 1);
        v34 = v43;
        if (!v38)
        {
          goto LABEL_33;
        }
      }

LABEL_30:
      sub_1822B0518(v30, v40, v45, a1);
      goto LABEL_31;
    }

    v37 = v44;
    if ((v41 & 1) == 0)
    {
      goto LABEL_30;
    }

    result = v27 - v31;
    if (!__OFSUB__(v27, v31))
    {
      v39 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v34 = v43;
      if (!v39)
      {
LABEL_33:
        sub_181F49A88(v32, &unk_1EA83A980);
        *v37 = 2;
        *(v37 + 8) = 1;
        (*(v34 + 8))(v45, v36);
      }

      goto LABEL_30;
    }

    goto LABEL_35;
  }

  v34 = v43;
  if (*(&v49 + 1))
  {
    v32 = v15;
    v33 = 1;
    goto LABEL_22;
  }

  if (v48)
  {
    v35 = *(&v48 + 1) - v48;
  }

  else
  {
    v35 = 0;
  }

  v31 = v35 - v49;
  if (__OFSUB__(v35, v49))
  {
    goto LABEL_36;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = v15;
    v33 = v35 == v49;
    goto LABEL_22;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1822AE638@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, unsigned __int8 *a4@<X4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v59 = a7;
  v52 = a5;
  v53 = a6;
  v50 = a4;
  v51 = a3;
  v48 = a2;
  v56 = a8;
  v57 = a9;
  v10 = sub_182AD2868();
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = *(a1 + 16);
  v66 = *a1;
  v67 = v22;
  v68 = *(a1 + 32);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v81 = *(a1 + 208);
  v26 = *(a1 + 64);
  v25 = *(a1 + 72);
  v27 = *(a1 + 192);
  v79 = *(a1 + 176);
  v80 = v27;
  v28 = *(a1 + 128);
  v75 = *(a1 + 112);
  v76 = v28;
  v29 = *(a1 + 160);
  v77 = *(a1 + 144);
  v78 = v29;
  v30 = *(a1 + 96);
  v73 = *(a1 + 80);
  v74 = v30;
  v69 = v23;
  v70 = v24;
  v71 = v26;
  v72 = v25;
  sub_1821438A8(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_181F49A88(v15, &qword_1EA839BA8);

    v31 = v56;
    *v56 = 2;
    *(v31 + 8) = 1;
  }

  result = sub_182022420(v15, v21);
  v33 = v21;
  if (*(a1 + 24) == 5)
  {
    v34 = nw_frame_unclaimed_length(*a1);
LABEL_11:
    v36 = v57;
    goto LABEL_12;
  }

  if (!v25)
  {
LABEL_10:
    v34 = 0;
    goto LABEL_11;
  }

  v35 = v24 + v26;
  if (__OFADD__(v24, v26))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v34 = v25 - v35;
  v36 = v57;
  if (__OFSUB__(v25, v35))
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  v37 = v59;
  v38 = swift_slowAlloc();
  *&v66 = v38;
  *(&v66 + 1) = v38 + v34;
  v67 = 0uLL;
  LOBYTE(v68) = 1;
  InPlaceSerializer.uint8(_:)(v51 | (4 * v52) | v53 | (16 * *v50), &v65);
  InPlaceSerializer.uint32NetworkByteOrder(_:)(1, &v64);
  result = *(v37 + 16);
  if (result > 0xFF)
  {
    __break(1u);
    goto LABEL_37;
  }

  InPlaceSerializer.uint8(_:)(result, &v63);
  InPlaceSerializer.buffer(_:)(v37, &v62);
  result = *(v36 + 16);
  if (result > 0xFF)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  InPlaceSerializer.uint8(_:)(result, &v61);
  result = InPlaceSerializer.buffer(_:)(v36, &v60);
  v39 = *(&v67 + 1);
  v57 = v38 + v34;
  v47 = v34;
  if (v68 != 1)
  {
    v41 = 0;
    v40 = v54;
    goto LABEL_24;
  }

  v40 = v54;
  if (*(&v67 + 1))
  {
    v41 = 1;
LABEL_24:
    v43 = v49;
    sub_181AB5D28(v33, v49, &unk_1EA83A980);
    (*(v55 + 32))(v58, v43, v40);
    if (v41)
    {
      v44 = v56;
      if (v39)
      {
LABEL_32:
        MEMORY[0x1865DF520](v38, -1, -1);
        sub_181F49A88(v33, &unk_1EA83A980);
        *v44 = v39;
        *(v44 + 8) = v41;
        (*(v55 + 8))(v58, v40);
LABEL_33:
      }

      if (v48)
      {
        result = v47;
        goto LABEL_30;
      }

LABEL_31:
      sub_1822B0518(v38, v57, v58, a1);
      goto LABEL_32;
    }

    v44 = v56;
    if ((v48 & 1) == 0)
    {
      goto LABEL_31;
    }

    result = v47 - v39;
    if (!__OFSUB__(v47, v39))
    {
LABEL_30:
      v45 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v40 = v54;
      if (!v45)
      {
        sub_181F49A88(v33, &unk_1EA83A980);
        *v44 = 2;
        *(v44 + 8) = 1;
        (*(v55 + 8))(v58, v40);
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v66)
  {
    v42 = *(&v66 + 1) - v66;
  }

  else
  {
    v42 = 0;
  }

  v39 = v42 - v67;
  if (__OFSUB__(v42, v67))
  {
    goto LABEL_40;
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
    v41 = v42 == v67;
    goto LABEL_24;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_1822AEB88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v51 = a4;
  v52 = a3;
  v46 = a2;
  v48 = sub_182AD2868();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = *(a1 + 16);
  v55 = *a1;
  v56 = v15;
  v57 = *(a1 + 32);
  v16 = *(a1 + 176);
  v17 = *(a1 + 192);
  v18 = *(a1 + 144);
  v67 = *(a1 + 160);
  v68 = v16;
  v69 = v17;
  v19 = *(a1 + 112);
  v20 = *(a1 + 128);
  v21 = *(a1 + 80);
  v63 = *(a1 + 96);
  v64 = v19;
  v65 = v20;
  v66 = v18;
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v25 = *(a1 + 64);
  v24 = *(a1 + 72);
  v70 = *(a1 + 208);
  v62 = v21;
  v58 = v22;
  v59 = v23;
  v60 = v25;
  v61 = v24;
  sub_1821438A8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_181F49A88(v8, &qword_1EA839BA8);

    v27 = v51;
    *v51 = 2;
    *(v27 + 8) = 1;
    return result;
  }

  v28 = v52;
  result = sub_182022420(v8, v14);
  v29 = v14;
  if (*(a1 + 24) == 5)
  {
    v30 = nw_frame_unclaimed_length(*a1);
LABEL_10:
    v33 = v28;
    v32 = v49;
    goto LABEL_11;
  }

  if (!v24)
  {
    v30 = 0;
    goto LABEL_10;
  }

  v31 = v23 + v25;
  if (__OFADD__(v23, v25))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v24 - v31;
  v32 = v49;
  if (__OFSUB__(v24, v31))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v33 = v28;
LABEL_11:
  v34 = swift_slowAlloc();
  *&v55 = v34;
  *(&v55 + 1) = v34 + v30;
  v56 = 0uLL;
  LOBYTE(v57) = 1;
  result = *(v33 + 16);
  if (result >> 16)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_182106734(result, &v54);
  result = InPlaceSerializer.buffer(_:)(v33, &v53);
  v35 = *(&v56 + 1);
  v45 = v34 + v30;
  if (v57 != 1)
  {
    v37 = v29;
    v38 = 0;
    v36 = v48;
    goto LABEL_22;
  }

  v36 = v48;
  if (*(&v56 + 1))
  {
    v37 = v29;
    v38 = 1;
LABEL_22:
    v40 = v47;
    sub_181AB5D28(v37, v47, &unk_1EA83A980);
    (*(v50 + 32))(v32, v40, v36);
    if (v38)
    {
      v41 = v51;
      if (v35)
      {
LABEL_31:
        MEMORY[0x1865DF520](v34, -1, -1);
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = v35;
        *(v41 + 8) = v38;
        (*(v50 + 8))(v32, v36);
      }

      if (v46)
      {
        v42 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v30, 0, 1);
        v36 = v48;
        if (!v42)
        {
          goto LABEL_33;
        }
      }

LABEL_30:
      v32 = v49;
      sub_1822B0518(v34, v45, v49, a1);
      goto LABEL_31;
    }

    v41 = v51;
    if ((v46 & 1) == 0)
    {
      goto LABEL_30;
    }

    result = v30 - v35;
    if (!__OFSUB__(v30, v35))
    {
      v43 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v36 = v48;
      if (!v43)
      {
LABEL_33:
        sub_181F49A88(v37, &unk_1EA83A980);
        *v41 = 2;
        *(v41 + 8) = 1;
        (*(v50 + 8))(v49, v36);
      }

      goto LABEL_30;
    }

    goto LABEL_37;
  }

  if (v55)
  {
    v39 = *(&v55 + 1) - v55;
  }

  else
  {
    v39 = 0;
  }

  v35 = v39 - v56;
  if (__OFSUB__(v39, v56))
  {
    goto LABEL_38;
  }

  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = v29;
    v38 = v39 == v56;
    goto LABEL_22;
  }

LABEL_39:
  __break(1u);
  return result;
}

Swift::Int sub_1822AF094@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v36 = a2;
  v41 = a3;
  v38 = sub_182AD2868();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = *(a1 + 16);
  v43 = *a1;
  v44 = v14;
  v45 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v58 = *(a1 + 208);
  v18 = *(a1 + 64);
  v17 = *(a1 + 72);
  v19 = *(a1 + 192);
  v56 = *(a1 + 176);
  v57 = v19;
  v20 = *(a1 + 128);
  v52 = *(a1 + 112);
  v53 = v20;
  v21 = *(a1 + 160);
  v54 = *(a1 + 144);
  v55 = v21;
  v22 = *(a1 + 96);
  v50 = *(a1 + 80);
  v51 = v22;
  v46 = v15;
  v47 = v16;
  v48 = v18;
  v49 = v17;
  sub_1821438A8(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_181F49A88(v7, &qword_1EA839BA8);
    v24 = v41;
    *v41 = 2;
    *(v24 + 8) = 1;
    return result;
  }

  result = sub_182022420(v7, v13);
  if (*(a1 + 24) == 5)
  {
    v25 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v17)
  {
    goto LABEL_10;
  }

  v26 = v16 + v18;
  if (__OFADD__(v16, v18))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = v17 - v26;
  if (__OFSUB__(v17, v26))
  {
    __break(1u);
LABEL_10:
    v25 = 0;
  }

LABEL_11:
  v27 = v39;
  v28 = swift_slowAlloc();
  *&v43 = v28;
  *(&v43 + 1) = v28 + v25;
  v44 = 0uLL;
  LOBYTE(v45) = 1;
  result = sub_182224978(&v43, v42);
  v29 = *(&v44 + 1);
  v35 = v28 + v25;
  if (v45 == 1)
  {
    if (*(&v44 + 1))
    {
      v30 = 1;
    }

    else
    {
      if (v43)
      {
        v31 = *(&v43 + 1) - v43;
      }

      else
      {
        v31 = 0;
      }

      v29 = v31 - v44;
      if (__OFSUB__(v31, v44))
      {
        goto LABEL_34;
      }

      if (v29 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v30 = v31 == v44;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = v37;
  sub_181AB5D28(v13, v37, &unk_1EA83A980);
  v33 = v38;
  (*(v40 + 32))(v27, v32, v38);
  if (!v30)
  {
    v34 = v41;
    if ((v36 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = v25 - v29;
    if (!__OFSUB__(v25, v29))
    {
LABEL_27:
      if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1))
      {
        sub_181F49A88(v13, &unk_1EA83A980);
        *v34 = 2;
        *(v34 + 8) = 1;
        return (*(v40 + 8))(v39, v33);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v34 = v41;
  if (!v29)
  {
    if (v36)
    {
      result = v25;
      goto LABEL_27;
    }

LABEL_28:
    v27 = v39;
    sub_1822B0518(v28, v35, v39, a1);
  }

  MEMORY[0x1865DF520](v28, -1, -1);
  sub_181F49A88(v13, &unk_1EA83A980);
  *v34 = v29;
  *(v34 + 8) = v30;
  return (*(v40 + 8))(v27, v33);
}

uint64_t sub_1822AF5A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, unint64_t a4@<X4>, int a5@<W5>, void *a6@<X8>)
{
  v50 = a5;
  v49 = a4;
  v51 = a3;
  v47 = a2;
  v55 = a6;
  v54 = sub_182AD2868();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = *(a1 + 16);
  v58 = *a1;
  v59 = v17;
  v60 = *(a1 + 32);
  v18 = *(a1 + 176);
  v19 = *(a1 + 192);
  v20 = *(a1 + 144);
  v70 = *(a1 + 160);
  v71 = v18;
  v72 = v19;
  v21 = *(a1 + 112);
  v22 = *(a1 + 128);
  v23 = *(a1 + 80);
  v66 = *(a1 + 96);
  v67 = v21;
  v68 = v22;
  v69 = v20;
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v27 = *(a1 + 64);
  v26 = *(a1 + 72);
  v73 = *(a1 + 208);
  v65 = v23;
  v61 = v24;
  v62 = v25;
  v63 = v27;
  v64 = v26;
  sub_1821438A8(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_181F49A88(v10, &qword_1EA839BA8);
    v29 = v55;
    *v55 = 2;
    *(v29 + 8) = 1;
    return result;
  }

  result = sub_182022420(v10, v16);
  v30 = v16;
  if (*(a1 + 24) == 5)
  {
    v31 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v26)
  {
    goto LABEL_10;
  }

  v32 = v25 + v27;
  if (__OFADD__(v25, v27))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v31 = v26 - v32;
  if (__OFSUB__(v26, v32))
  {
    __break(1u);
LABEL_10:
    v31 = 0;
  }

LABEL_11:
  v33 = v53;
  result = swift_slowAlloc();
  v34 = result + v31;
  *&v58 = result;
  *(&v58 + 1) = result + v31;
  v59 = 0uLL;
  LOBYTE(v60) = 1;
  if (v51 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v35 = result;
  result = v51 | 0x4000;
  if ((v51 | 0x4000) >= 0x10000)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  InPlaceSerializer.uint16NetworkByteOrder(_:)(result, &v57);
  result = sub_1822A65C4(v49, v50, &v56);
  v36 = *(&v59 + 1);
  v46 = v34;
  if (v60 != 1)
  {
    v38 = v30;
    v39 = 0;
    v37 = v52;
    goto LABEL_23;
  }

  v37 = v52;
  if (*(&v59 + 1))
  {
    v38 = v30;
    v39 = 1;
LABEL_23:
    v41 = v48;
    sub_181AB5D28(v38, v48, &unk_1EA83A980);
    (*(v37 + 32))(v33, v41, v54);
    if (v39)
    {
      v42 = v55;
      if (v36)
      {
LABEL_32:
        MEMORY[0x1865DF520](v35, -1, -1);
        sub_181F49A88(v38, &unk_1EA83A980);
        *v42 = v36;
        *(v42 + 8) = v39;
        return (*(v37 + 8))(v33, v54);
      }

      if (v47)
      {
        v43 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v31, 0, 1);
        v37 = v52;
        if (!v43)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v33 = v53;
      sub_1822B0518(v35, v46, v53, a1);
      goto LABEL_32;
    }

    v42 = v55;
    if ((v47 & 1) == 0)
    {
      goto LABEL_31;
    }

    result = v31 - v36;
    if (!__OFSUB__(v31, v36))
    {
      v44 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v37 = v52;
      if (!v44)
      {
LABEL_33:
        sub_181F49A88(v38, &unk_1EA83A980);
        *v42 = 2;
        *(v42 + 8) = 1;
        return (*(v37 + 8))(v53, v54);
      }

      goto LABEL_31;
    }

    goto LABEL_37;
  }

  if (v58)
  {
    v40 = *(&v58 + 1) - v58;
  }

  else
  {
    v40 = 0;
  }

  v36 = v40 - v59;
  if (__OFSUB__(v40, v59))
  {
    goto LABEL_38;
  }

  if ((v36 & 0x8000000000000000) == 0)
  {
    v38 = v30;
    v39 = v40 == v59;
    goto LABEL_23;
  }

LABEL_39:
  __break(1u);
  return result;
}

Swift::Int sub_1822AFAA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v49 = a2;
  v55 = a5;
  v52 = sub_182AD2868();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = *(a1 + 16);
  v65 = *a1;
  v66 = v16;
  v67 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v80 = *(a1 + 208);
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *(a1 + 192);
  v78 = *(a1 + 176);
  v79 = v21;
  v22 = *(a1 + 128);
  v74 = *(a1 + 112);
  v75 = v22;
  v23 = *(a1 + 160);
  v76 = *(a1 + 144);
  v77 = v23;
  v24 = *(a1 + 96);
  v72 = *(a1 + 80);
  v73 = v24;
  v68 = v17;
  v69 = v18;
  v70 = v20;
  v71 = v19;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA839BA8);
    result = sub_181C1F2E4(v56, v57);
    v26 = v55;
    *v55 = 2;
    *(v26 + 8) = 1;
    return result;
  }

  result = sub_182022420(v9, v15);
  v27 = *(a1 + 24);
  v50 = v15;
  if (v27 == 5)
  {
    v28 = nw_frame_unclaimed_length(*a1);
    goto LABEL_11;
  }

  if (!v19)
  {
    goto LABEL_10;
  }

  v29 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = v19 - v29;
  if (__OFSUB__(v19, v29))
  {
    __break(1u);
LABEL_10:
    v28 = 0;
  }

LABEL_11:
  v30 = swift_slowAlloc();
  v60 = v30;
  v61 = v30 + v28;
  v48 = v30 + v28;
  v62 = 0;
  v63 = 0;
  v64 = 1;
  v31 = sub_182AD2B18();
  v33 = v32;
  v34 = MEMORY[0x1E6969080];
  *(&v66 + 1) = MEMORY[0x1E6969080];
  v35 = sub_181F7D470();
  *&v67 = v35;
  *&v65 = v31;
  *(&v65 + 1) = v33;
  InPlaceSerializer.buffer(_:)(&v65, &v59);
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v36 = sub_182AD2B28();
  *(&v66 + 1) = v34;
  *&v67 = v35;
  *&v65 = v36;
  *(&v65 + 1) = v37;
  InPlaceSerializer.buffer(_:)(&v65, &v58);
  result = __swift_destroy_boxed_opaque_existential_1(&v65);
  v38 = v63;
  if (v64 != 1)
  {
    v42 = 0;
    v39 = v55;
    v40 = v52;
    v41 = v53;
    goto LABEL_21;
  }

  v39 = v55;
  v40 = v52;
  v41 = v53;
  if (v63)
  {
    v42 = 1;
LABEL_21:
    v44 = v51;
    sub_181AB5D28(v50, v51, &unk_1EA83A980);
    (*(v54 + 32))(v41, v44, v40);
    if (v42)
    {
      v45 = v56;
      if (v38)
      {
LABEL_30:
        MEMORY[0x1865DF520](v30, -1, -1);
        sub_181F49A88(v50, &unk_1EA83A980);
        *v39 = v38;
        *(v39 + 8) = v42;
        (*(v54 + 8))(v41, v40);
        return sub_181C1F2E4(v45, v57);
      }

      if (v49)
      {
        v46 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v28, 0, 1);
        v40 = v52;
        if (!v46)
        {
          goto LABEL_32;
        }
      }

LABEL_29:
      v41 = v53;
      sub_1822B0518(v30, v48, v53, a1);
      goto LABEL_30;
    }

    v45 = v56;
    if ((v49 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = v28 - v38;
    if (!__OFSUB__(v28, v38))
    {
      v47 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v40 = v52;
      if (!v47)
      {
LABEL_32:
        sub_181F49A88(v50, &unk_1EA83A980);
        *v39 = 2;
        *(v39 + 8) = 1;
        (*(v54 + 8))(v53, v40);
        return sub_181C1F2E4(v45, v57);
      }

      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v60)
  {
    v43 = v61 - v60;
  }

  else
  {
    v43 = 0;
  }

  v38 = v43 - v62;
  if (__OFSUB__(v43, v62))
  {
    goto LABEL_35;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    v42 = v43 == v62;
    goto LABEL_21;
  }

LABEL_36:
  __break(1u);
  return result;
}

void *sub_1822AFFE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *(*a3)(uint64_t *__return_ptr, __int128 *)@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v44 = a4;
  v45 = a3;
  v42 = a2;
  v48 = a5;
  v43 = sub_182AD2868();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = *(a1 + 16);
  v50 = *a1;
  v51 = v17;
  v52 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v65 = *(a1 + 208);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 192);
  v63 = *(a1 + 176);
  v64 = v22;
  v23 = *(a1 + 128);
  v59 = *(a1 + 112);
  v60 = v23;
  v24 = *(a1 + 160);
  v61 = *(a1 + 144);
  v62 = v24;
  v25 = *(a1 + 96);
  v57 = *(a1 + 80);
  v58 = v25;
  v53 = v18;
  v54 = v19;
  v55 = v20;
  v56 = v21;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_181F49A88(v9, &qword_1EA839BA8);
    v27 = v48;
    *v48 = 2;
    *(v27 + 8) = 1;
    return result;
  }

  result = sub_182022420(v9, v16);
  if (*(a1 + 24) == 5)
  {
    v21 = nw_frame_unclaimed_length(*a1);
LABEL_10:
    v30 = v47;
    goto LABEL_11;
  }

  if (!v21)
  {
    goto LABEL_10;
  }

  v28 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = __OFSUB__(v21, v28);
  v21 -= v28;
  v30 = v47;
  if (v29)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v31 = swift_slowAlloc();
  *&v50 = v31;
  *(&v50 + 1) = v31 + v21;
  v51 = 0uLL;
  LOBYTE(v52) = 1;
  result = v45(&v49, &v50);
  v32 = *(&v51 + 1);
  v41 = v31 + v21;
  if (v52 == 1)
  {
    v35 = v46;
    if (*(&v51 + 1))
    {
      v33 = v16;
      v34 = 1;
    }

    else
    {
      if (v50)
      {
        v36 = *(&v50 + 1) - v50;
      }

      else
      {
        v36 = 0;
      }

      v32 = v36 - v51;
      if (__OFSUB__(v36, v51))
      {
        goto LABEL_34;
      }

      if (v32 < 0)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v33 = v16;
      v34 = v36 == v51;
    }
  }

  else
  {
    v33 = v16;
    v34 = 0;
    v35 = v46;
  }

  sub_181AB5D28(v33, v13, &unk_1EA83A980);
  v37 = v43;
  (*(v35 + 32))(v30, v13, v43);
  if (!v34)
  {
    v38 = v48;
    if ((v42 & 1) == 0)
    {
      goto LABEL_28;
    }

    result = (v21 - v32);
    if (!__OFSUB__(v21, v32))
    {
LABEL_27:
      v39 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(result, 0, 1);
      v35 = v46;
      if (!v39)
      {
        sub_181F49A88(v33, &unk_1EA83A980);
        *v38 = 2;
        *(v38 + 8) = 1;
        return (*(v35 + 8))(v47, v37);
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v38 = v48;
  if (!v32)
  {
    if (v42)
    {
      result = v21;
      goto LABEL_27;
    }

LABEL_28:
    v30 = v47;
    sub_1822B0518(v31, v41, v47, a1);
  }

  MEMORY[0x1865DF520](v31, -1, -1);
  sub_181F49A88(v33, &unk_1EA83A980);
  *v38 = v32;
  *(v38 + 8) = v34;
  return (*(v35 + 8))(v30, v37);
}

uint64_t sub_1822B0518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_182AD2868();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6, v8);
  sub_1822B0C6C();
  sub_182AD37B8();
  sub_182AD37E8();
  (*(v7 + 8))(v10, v6);
  if (*&v24[0] != v26)
  {
    return sub_182AD2858();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  sub_182AD2828();
  v16 = *(a4 + 176);
  v24[10] = *(a4 + 160);
  v24[11] = v16;
  v24[12] = *(a4 + 192);
  v25 = *(a4 + 208);
  v17 = *(a4 + 112);
  v24[6] = *(a4 + 96);
  v24[7] = v17;
  v18 = *(a4 + 144);
  v24[8] = *(a4 + 128);
  v24[9] = v18;
  v19 = *(a4 + 48);
  v24[2] = *(a4 + 32);
  v20 = *(a4 + 64);
  v21 = *(a4 + 80);
  v24[3] = v19;
  v24[4] = v20;
  v24[5] = v21;
  v22 = *(a4 + 16);
  v24[0] = *a4;
  v24[1] = v22;
  *(v14 + v15) = Frame.bufferLength.getter();
  result = sub_181F68EF4(*a4, *(a4 + 8), *(a4 + 16), *(a4 + 24));
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = v12;
  *(a4 + 24) = 2;
  return result;
}

unint64_t sub_1822B072C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_18208A330(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_182AD31C8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_182AD3CF8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_18208A330(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_182AD3178();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1822B094C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_181AC1BE8(v5, 0);
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

  result = sub_182AD3CF8();
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
        v10 = sub_182AD3168();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_181AC1BE8(v10, 0);
        result = sub_182AD3B68();
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

uint64_t sub_1822B0A98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xE)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1822B0AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1822B0B20(uint64_t result, unsigned int a2)
{
  if (a2 > 0xD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1822B0B98(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2 & 0xC) == 4 << v4)
  {
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10 = sub_18208A330(a2, a3, a4);
    a3 = v8;
    a4 = v9;
    a2 = v10;
    result = v7;
  }

  if ((result & 0xC) == v5)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    result = sub_18208A330(result, a3, a4);
    a3 = v12;
    a4 = v13;
    a2 = v11;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2 >> 14 > 4 * v6 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1822B0C6C()
{
  result = qword_1EA83BD18;
  if (!qword_1EA83BD18)
  {
    sub_182AD2868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83BD18);
  }

  return result;
}

uint64_t ProtocolOptions.matches(protocolInstance:)(uint64_t *a1)
{
  v2 = *(v1 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v3 = *(v1 + 48);
    v5 = *a1;
    v4 = a1[1];
    sub_1822B330C(v3, v2);
    v9[0] = v5;
    v9[1] = v4;
    v8[0] = v3;
    v8[1] = v2;
    v6 = _s7Network25ProtocolInstanceReferenceV2eeoiySbAC_ACtFZ_0(v9, v8);
    sub_1822B2F9C(v3, v2);
  }

  return v6 & 1;
}

uint64_t ProtocolOptions.__allocating_init(definition:serializedBytes:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1822B3004(a1, a2);
  v5 = type metadata accessor for ProtocolDefinition();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t ProtocolOptions.__allocating_init(protocolIdentifier:perProtocolOptions:)(__int16 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProtocolOptions.init(protocolIdentifier:perProtocolOptions:)(a1, a2);
  return v4;
}