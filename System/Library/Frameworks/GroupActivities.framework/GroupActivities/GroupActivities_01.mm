void (*GroupSession.playbackSyncerLink.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return GroupSession.playbackSyncerLink.modify;
}

void GroupSession.playbackSyncerLink.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    specialized GroupSession.playbackSyncerLink.setter(v5);

    v6 = *v3;
  }

  else
  {
    specialized GroupSession.playbackSyncerLink.setter(*v3);
  }

  free(v2);
}

uint64_t GroupSession.playbackSyncerLink.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t GroupSession.playbackSyncMessenger.setter(uint64_t a1)
{
  v3 = direct field offset for GroupSession.playbackSyncMessenger;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double GroupSession.attachmentDownloadBytes.getter()
{
  v1 = direct field offset for GroupSession.attachmentDownloadBytes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentDownloadBytes.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentDownloadBytes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GroupSession.attachmentUploadBytes.getter()
{
  v1 = direct field offset for GroupSession.attachmentUploadBytes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentUploadBytes.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentUploadBytes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GroupSession.attachmentDownloadTime.getter()
{
  v1 = direct field offset for GroupSession.attachmentDownloadTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentDownloadTime.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentDownloadTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GroupSession.attachmentUploadTime.getter()
{
  v1 = direct field offset for GroupSession.attachmentUploadTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentUploadTime.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentUploadTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for GroupSession.receivedDataHandler : <A>GroupSession<A>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v4);
}

uint64_t key path setter for GroupSession.receivedDataHandler : <A>GroupSession<A>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8);
}

uint64_t GroupSession.receivedDataHandler.getter()
{
  v1 = (v0 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v3;
}

uint64_t GroupSession.receivedDataHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6);
}

uint64_t specialized Subject.wrappedValue.getter(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  if (v3[1])
  {
    v5 = v3[1];
  }

  else
  {
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](a3, a1, a2);
    v5 = Publisher.eraseToAnyPublisher()();
    v3[1] = v5;
  }

  return v5;
}

uint64_t (*GroupSession.receivedDataPublisher.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for GroupSession._receivedDataPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = specialized Subject.wrappedValue.getter(&_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR, &lazy protocol witness table cache variable for type PassthroughSubject<(Data, Participant, SendReliability), Never> and conformance PassthroughSubject<A, B>);
  return GroupSession.receivedDataPublisher.modify;
}

uint64_t GroupSession.$receivedDataPublisher.getter()
{
  specialized GroupSession.$receivedDataPublisher.getter();
}

uint64_t (*GroupSession.receivedAttachmentPublisher.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for GroupSession._receivedAttachmentPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = specialized Subject.wrappedValue.getter(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, &lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>);
  return GroupSession.receivedAttachmentPublisher.modify;
}

uint64_t GroupSession.$receivedAttachmentPublisher.getter()
{
  specialized GroupSession.$receivedAttachmentPublisher.getter();
}

uint64_t GroupSession.attachmentsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v9 - v5;
  v9[1] = (*((*MEMORY[0x1E69E7D40] & **(v0 + direct field offset for GroupSession.linkManager)) + 0x148))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[LinkManager.Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMR);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<CurrentValueSubject<[LinkManager.Attachment], Never>, [UUID]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMR);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t closure #1 in GroupSession.attachmentsPublisher.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LinkManager.Attachment(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(*a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v22[0] = a2;
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v24;
    v18 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = *(v5 + 72);
    v22[1] = v10 + 32;
    v23 = v19;
    do
    {
      outlined init with copy of Participant(v18, v8, type metadata accessor for LinkManager.Attachment);
      (*(v10 + 16))(v14, v8, v9);
      outlined destroy of Participant(v8, type metadata accessor for LinkManager.Attachment);
      v24 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v17 = v24;
      }

      *(v17 + 16) = v21 + 1;
      result = (*(v10 + 32))(v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v14, v9);
      v18 += v23;
      --v16;
    }

    while (v16);
    a2 = v22[0];
  }

  *a2 = v17;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVys6UInt64V15GroupActivities19InternalParticipantV_G_AJ0I0Vs5NeverOTg504_s15f29Activities0A7SessionC32updateh26ActiveParticipantsyyySDys6e7VAA0E11I67VGzXEFAA0I0VAHcfu2_33_64ff5b9e04bfd4295e50d2b41d46dfcaAhKTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for InternalParticipant();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Participant();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v31[1] = v1;
  v40 = MEMORY[0x1E69E7CC0];
  v33 = v8;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v40;
  v13 = -1 << *(v33 + 32);
  v39 = v33 + 64;
  result = _HashTable.startBucket.getter();
  v15 = result;
  v16 = v33;
  v17 = 0;
  v32 = v33 + 72;
  v34 = v11;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v16 + 32))
  {
    v19 = v15 >> 6;
    if ((*(v39 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v38 = *(v16 + 36);
    v20 = v36;
    outlined init with copy of Participant(*(v16 + 56) + *(v37 + 72) * v15, v36, type metadata accessor for InternalParticipant);
    outlined init with copy of Participant(v20, v10, type metadata accessor for Participant);
    outlined destroy of Participant(v20, type metadata accessor for InternalParticipant);
    v40 = v12;
    v22 = *(v12 + 16);
    v21 = *(v12 + 24);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
      v12 = v40;
    }

    *(v12 + 16) = v22 + 1;
    v23 = v10;
    result = outlined init with take of Participant(v10, v12 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v22, type metadata accessor for Participant);
    v18 = 1 << *(v16 + 32);
    if (v15 >= v18)
    {
      goto LABEL_22;
    }

    v24 = *(v39 + 8 * v19);
    if ((v24 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(v16 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v15 & 0x3F));
    if (v25)
    {
      v18 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v19 << 6;
      v27 = v19 + 1;
      v28 = (v32 + 8 * v19);
      while (v27 < (v18 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = outlined consume of Set<TUHandle>.Index._Variant(v15, v38, 0);
          v16 = v33;
          v18 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<TUHandle>.Index._Variant(v15, v38, 0);
      v16 = v33;
    }

LABEL_4:
    ++v17;
    v15 = v18;
    v10 = v23;
    if (v17 == v34)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_s6UInt64Vs5NeverOTg504_s15d111Activities0A7SessionC12sendResource5atURL2to8metadata10completiony10Foundation0G0V_AA12ParticipantsOAI4DataVys5c52_pSgctFyyXEfU_y14CopresenceCore08ActivityC7XPCHost_py4U_s6g5VAA11F7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Participant();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v34 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v34;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v27 = a1 + 64;
  v28 = v6;
  v29 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v33 = *(a1 + 36);
    v15 = v30;
    outlined init with copy of Participant(*(a1 + 48) + *(v31 + 72) * v11, v30, type metadata accessor for Participant);
    v16 = *(v15 + *(v32 + 24));
    result = outlined destroy of Participant(v15, type metadata accessor for Participant);
    v34 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v7 = v34;
    }

    *(v7 + 16) = v18 + 1;
    *(v7 + 8 * v18 + 32) = v16;
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v29;
    v19 = *(v29 + 8 * v14);
    if ((v19 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v11 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v14 << 6;
      v22 = v14 + 1;
      v23 = (v27 + 8 * v14);
      while (v22 < (v13 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = outlined consume of Set<TUHandle>.Index._Variant(v11, v33, 0);
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<TUHandle>.Index._Variant(v11, v33, 0);
    }

LABEL_4:
    ++v12;
    v11 = v13;
    if (v12 == v28)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t GroupSession.receivedDataPublisher.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = specialized Subject.wrappedValue.getter(a2, a3, a4);
  swift_endAccess();
  return v8;
}

uint64_t GroupSession.receivedDataPublisher.setter(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *(v4 + 8) = a1;
}

uint64_t (*GroupSession.catchupNeededPublisher.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for GroupSession._catchupNeededPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = specialized Subject.wrappedValue.getter(&_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMR, &lazy protocol witness table cache variable for type PassthroughSubject<Participant, Never> and conformance PassthroughSubject<A, B>);
  return GroupSession.receivedAttachmentPublisher.modify;
}

void GroupSession.receivedDataPublisher.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = v2[4] + v2[5];
  v4 = *(v3 + 8);
  *(v3 + 8) = *(*a1 + 24);
  if (a2)
  {

    v5 = v2[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v2);
}

uint64_t GroupSession.$catchupNeededPublisher.getter()
{
  specialized GroupSession.$catchupNeededPublisher.getter();
}

uint64_t key path getter for GroupSession.state : <A>GroupSession<A>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.state.getter();
  *a2 = v5;
  return result;
}

uint64_t GroupSession.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t GroupSession.$state.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for GroupSession.State();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t property wrapper backing initializer of GroupSession.activity(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  Published.init(wrappedValue:)(v7, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t GroupSession.activity.getter()
{
  return GroupSession.activity.getter();
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t GroupSession.activity.setter(uint64_t a1)
{
  v3 = *v1;
  specialized GroupSession.activity.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void GroupSession.activity.didset(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v40 - v4;
  v43 = type metadata accessor for Optional();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v40 - v8;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Log.default);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v42 = v11;
    v17 = v16;
    v47 = v16;
    *v15 = 136315394;
    v18 = GroupSession.description.getter();
    v41 = v5;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v47);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    GroupSession.activity.getter();
    (*(v44 + 56))(v9, 0, 1, v2);
    v22 = >> prefix<A>(_:)(v9, v2);
    v24 = v23;
    (*(v6 + 8))(v9, v43);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v47);
    v5 = v41;

    *(v15 + 14) = v25;
    _os_log_impl(&dword_1AEE80000, v12, v13, "Observed activity mutation on GroupSession %s to %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v17, -1, -1);
    v26 = v15;
    v10 = v40;
    MEMORY[0x1B2715BA0](v26, -1, -1);
  }

  else
  {
  }

  GroupSession.state.getter();
  v27 = v47;
  v45 = 1;
  v46 = v47;
  v28 = static GroupSession.State.== infix(_:_:)(&v46, &v45);
  outlined consume of GroupSession<A>.State<A>(v27);
  if (v28)
  {
    GroupSession.activity.getter();
    GroupSession.invalidateIfWaiting()(partial apply for closure #1 in GroupSession.updateActivity(_:), &block_descriptor_692);
    (*(v44 + 8))(v5, v2);
  }

  else
  {
    if (one-time initialization token for runtimeIssues != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, static Logger.runtimeIssues);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1AEE80000, v29, v30, "Attempted activity update on non-joined GroupSession", v31, 2u);
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136315138;
      v36 = GroupSession.description.getter();
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v47);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1AEE80000, v32, v33, "Attempted activity update on non-joined GroupSession %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B2715BA0](v35, -1, -1);
      MEMORY[0x1B2715BA0](v34, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static GroupSession.State.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 1)
  {
    if (v3 == 1)
    {
      goto LABEL_10;
    }
  }

  else if (v2)
  {
    if (v3 >= 2)
    {
      v5 = v2;
LABEL_10:
      v4 = 1;
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    goto LABEL_10;
  }

  outlined copy of GroupSession<A>.State<A>(*a1);
  v4 = 0;
LABEL_11:
  outlined copy of GroupSession<A>.State<A>(v3);
  outlined consume of GroupSession<A>.State<A>(v2);
  outlined consume of GroupSession<A>.State<A>(v3);
  return v4;
}

void (*GroupSession.activity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  GroupSession.activity.getter();
  return GroupSession.activity.modify;
}

uint64_t GroupSession.$activity.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  swift_beginAccess();
  v3 = *(v1 + 80);
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t GroupSession.$activity.setter(uint64_t a1)
{
  v3 = *v1;
  specialized GroupSession.$activity.setter(a1);
  v4 = *(v3 + 80);
  v5 = type metadata accessor for Published.Publisher();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*GroupSession.$activity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Published.Publisher();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  GroupSession.$activity.getter();
  return GroupSession.$activity.modify;
}

uint64_t GroupSession.activeParticipants.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v4;
}

uint64_t key path getter for GroupSession.activeParticipants : <A>GroupSession<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.activeParticipants.getter();
  *a2 = result;
  return result;
}

void key path setter for GroupSession.activeParticipants : <A>GroupSession<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  GroupSession.activeParticipants.setter();
}

void GroupSession.activeParticipants.setter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  GroupSession.activeParticipants.didset();
}

void GroupSession.activeParticipants.didset()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);
  swift_retain_n();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v12 = v3;
    *v2 = 136315394;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v12);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2080;
    GroupSession.activeParticipants.getter();

    type metadata accessor for Participant();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
    v7 = Set.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v12);

    *(v2 + 14) = v10;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "Did set new active participants on group session %s: %s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t GroupSession.$activeParticipants.getter()
{
  v1 = *(*v0 + 224);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GroupSession.$activeParticipants : <A>GroupSession<A>(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return GroupSession.$activeParticipants.setter(v7);
}

uint64_t GroupSession.$activeParticipants.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v9 - v6, a1, v3);
  v7 = *(*v1 + 224);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t GroupSession.sceneSessionIdentifier.getter()
{
  v1 = (v0 + *(*v0 + 232));
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t GroupSession.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 240);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupSession.timestamps.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for GroupSession.Timestamps();
  v7 = *(*(v6 - 8) + 16);

  return v7(a1, v1 + v3, v6);
}

uint64_t property wrapper backing initializer of GroupSession.messageQueue(uint64_t a1)
{
  v2 = type metadata accessor for GroupSession.MessageQueue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2);
  Published.init(wrappedValue:)(v6, v2);
  return (*(v3 + 8))(a1, v2);
}

uint64_t GroupSession.$messageQueue.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for GroupSession.MessageQueue();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

id GroupSession.remoteEndpoint.getter()
{
  v1 = *(*v0 + 256);
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void GroupSession.remoteEndpoint.setter(uint64_t a1)
{
  v3 = *(*v1 + 256);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*GroupSession.remoteEndpoint.modify())()
{
  v1 = *(*v0 + 256);
  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

uint64_t GroupSession.isFirstJoin.getter()
{
  v1 = *(*v0 + 280);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.isFirstJoin.setter(char a1)
{
  v3 = *(*v1 + 280);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*GroupSession.isFirstJoin.modify())()
{
  v1 = *(*v0 + 280);
  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

id GroupSession.connection.getter()
{
  v1 = *(*v0 + 288);
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void GroupSession.connection.setter(uint64_t a1)
{
  v3 = *(*v1 + 288);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*GroupSession.connection.modify())()
{
  v1 = *(*v0 + 288);
  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

void *GroupSession.publishQueue.getter()
{
  v1 = *(*v0 + 304);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GroupSession.publishQueue.setter(uint64_t a1)
{
  v3 = *(*v1 + 304);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*GroupSession.publishQueue.modify())()
{
  v1 = *(*v0 + 304);
  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

uint64_t GroupSession.capabilities.getter()
{
  v1 = *(*v0 + 368);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.capabilities.setter(uint64_t a1)
{
  v3 = *(*v1 + 368);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return GroupSession.capabilities.didset(v4);
}

uint64_t specialized GroupSession.capabilities.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + *(*v2 + 296));
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v11 = *(*v2 + 368);
  result = swift_beginAccess();
  if (*(v2 + v11) == a1)
  {
    return result;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v2 + v11);

    _os_log_impl(&dword_1AEE80000, v14, v15, "Updating capabilities to %ld", v16, 0xCu);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {
  }

  v17 = *(*v2 + 288);
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = XPCClient.queue.getter();

  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for specialized closure #1 in GroupSession.capabilities.didset;
  *(v20 + 24) = v2;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_556;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v19, v21);

  _Block_release(v21);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

uint64_t GroupSession.capabilities.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + *(*v2 + 296));
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v11 = *(*v2 + 368);
  result = swift_beginAccess();
  if (*(v2 + v11) == a1)
  {
    return result;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v2 + v11);

    _os_log_impl(&dword_1AEE80000, v14, v15, "Updating capabilities to %ld", v16, 0xCu);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {
  }

  v17 = *(*v2 + 288);
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = XPCClient.queue.getter();

  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for specialized closure #1 in GroupSession.capabilities.didset;
  *(v20 + 24) = v2;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_689;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v19, v21);

  _Block_release(v21);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

void (*GroupSession.capabilities.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(*v1 + 368);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return GroupSession.capabilities.modify;
}

void GroupSession.capabilities.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  GroupSession.capabilities.setter(*(*a1 + 24));

  free(v1);
}

uint64_t GroupSession.internalActiveParticipants.getter()
{
  v1 = v0 + *(*v0 + 384);
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void GroupSession.updateInternalActiveParticipants(_:)(void (*a1)(uint64_t *))
{
  v2 = v1;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(*v2 + 384);
  os_unfair_lock_lock(v11);
  aBlock = *(v11 + 8);

  a1(&aBlock);
  v12 = aBlock;
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities19InternalParticipantVTt1g5(*(v11 + 8), aBlock))
  {

    os_unfair_lock_unlock(v11);
  }

  else
  {
    v13 = *(v11 + 8);

    *(v11 + 8) = v12;

    os_unfair_lock_unlock(v11);
    if (v12)
    {
      v45 = v8;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.default);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      v17 = os_log_type_enabled(v15, v16);
      v46 = v7;
      v47 = v6;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock = v19;
        *v18 = 136315394;
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &aBlock);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2080;
        type metadata accessor for InternalParticipant();
        v24 = Dictionary.description.getter();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &aBlock);

        *(v18 + 14) = v26;
        _os_log_impl(&dword_1AEE80000, v15, v16, "Updated internal active participants for group session %s: %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v19, -1, -1);
        MEMORY[0x1B2715BA0](v18, -1, -1);
      }

      else
      {
      }

      v27 = *(*v2 + 304);
      swift_beginAccess();
      v28 = *(v2 + v27);
      if (v28)
      {
        v48 = v28;
      }

      else
      {
        v48 = *(v2 + *(*v2 + 296));
      }

      v29 = v28;
      active = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVys6UInt64V15GroupActivities19InternalParticipantV_G_AJ0I0Vs5NeverOTg504_s15f29Activities0A7SessionC32updateh26ActiveParticipantsyyySDys6e7VAA0E11I67VGzXEFAA0I0VAHcfu2_33_64ff5b9e04bfd4295e50d2b41d46dfcaAhKTf3nnnpk_nTf1cn_n(v12);

      aBlock = active;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11ParticipantVGMd, &_sSay15GroupActivities11ParticipantVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [Participant] and conformance [A], &_sSay15GroupActivities11ParticipantVGMd, &_sSay15GroupActivities11ParticipantVGMR);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
      v31 = Sequence<>.asSet()();

      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      *(v32 + 24) = v31;
      v57 = partial apply for closure #2 in GroupSession.updateInternalActiveParticipants(_:);
      v58 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v44 = &v55;
      v55 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v56 = &block_descriptor_0;
      v33 = _Block_copy(&aBlock);

      v34 = v50;
      static DispatchQoS.unspecified.getter();
      v52 = MEMORY[0x1E69E7CC0];
      v42[1] = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      v42[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v42[2] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v35 = v47;
      v36 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27147B0](0, v34, v35, v33);
      _Block_release(v33);
      v37 = *(v51 + 8);
      v51 += 8;
      v43 = v37;
      v37(v35, v36);
      v38 = v46;
      v39 = *(v45 + 8);
      v39(v34, v46);

      v45 = *(v2 + *(*v2 + 296));
      v40 = swift_allocObject();
      *(v40 + 16) = v2;
      *(v40 + 24) = v12;
      v57 = partial apply for closure #3 in GroupSession.updateInternalActiveParticipants(_:);
      v58 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v56 = &block_descriptor_28;
      v41 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v52 = MEMORY[0x1E69E7CC0];
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27147B0](0, v34, v35, v41);
      _Block_release(v41);

      v43(v35, v36);
      v39(v34, v38);
    }
  }
}

void closure #2 in GroupSession.updateInternalActiveParticipants(_:)()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315394;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v12);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2080;
    type metadata accessor for Participant();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
    v9 = Set.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v3 + 14) = v11;
    _os_log_impl(&dword_1AEE80000, v1, v2, "Publishing new active participants for group session %s: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  else
  {
  }

  GroupSession.activeParticipants.setter();
}

uint64_t GroupSession.internalActiveParticipantsPublisher.getter()
{
  v2 = *(v0 + *(*v0 + 392));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[UInt64 : InternalParticipant], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t key path getter for GroupSession.internalState : <A>GroupSession<A>@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = GroupSession.internalState.getter();
  *a2 = v5;
  return result;
}

uint64_t key path setter for GroupSession.state : <A>GroupSession<A>(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id *))
{
  v6 = *a2;
  v8 = *a1;
  outlined copy of GroupSession<A>.State<A>(v8);
  return a5(&v8);
}

void GroupSession.internalState.setter(void **a1)
{
  v2 = *v1;
  v6 = *a1;
  v3 = v6;
  GroupSession.internalState.willset(&v6);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3;

  static Published.subscript.setter();
  GroupSession.updatePublicState()();
}

void specialized GroupSession.internalState.willset(void *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  outlined copy of GroupSession<A>.State<A>(a1);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined consume of GroupSession<A>.State<A>(a1);
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315394;
    v6 = specialized GroupSession.description.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v14);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    outlined copy of GroupSession<A>.State<A>(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v4 + 14) = v12;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "%s changing internal state: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  else
  {
  }
}

void GroupSession.internalState.willset(void **a1)
{
  v2 = *v1;
  v3 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  outlined copy of GroupSession<A>.State<A>(v3);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined consume of GroupSession<A>.State<A>(v3);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315394;
    v8 = GroupSession.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v20 = v3;
    outlined copy of GroupSession<A>.State<A>(v3);
    v12 = *(v2 + 80);
    v13 = *(v2 + 88);
    v14 = type metadata accessor for GroupSession.State();
    v15 = >> prefix<A>(_:)(&v20, v14);
    v17 = v16;
    outlined consume of GroupSession<A>.State?<A>(v20);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v6 + 14) = v18;
    _os_log_impl(&dword_1AEE80000, oslog, v5, "%s changing internal state: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized GroupSession.updatePublicState()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v2 + 304);
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (v14)
  {
    v15 = *(v2 + v13);
  }

  else
  {
    v15 = *(v2 + *(*v2 + 296));
  }

  aBlock[4] = a1;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v8, v16);
  _Block_release(v16);

  (*(v20 + 8))(v8, v5);
  (*(v9 + 8))(v12, v19);
}

void (*GroupSession.internalState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  GroupSession.internalState.getter();
  return GroupSession.internalState.modify;
}

void GroupSession.internalState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    outlined copy of GroupSession<A>.State<A>(v2);
    GroupSession.internalState.setter(&v4);

    outlined consume of GroupSession<A>.State<A>(v2);
  }

  else
  {
    v4 = *a1;
    GroupSession.internalState.setter(&v4);
  }
}

uint64_t GroupSession.$internalState.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for GroupSession.State();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t GroupSession.$internalState.setter(uint64_t a1)
{
  v3 = *v1;
  specialized GroupSession.$internalState.setter(a1);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for GroupSession.State();
  v6 = type metadata accessor for Published.Publisher();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*GroupSession.$internalState.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  type metadata accessor for GroupSession.State();
  v8 = type metadata accessor for Published.Publisher();
  v5[1] = v8;
  v9 = *(v8 - 8);
  v5[2] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[4] = v11;
  GroupSession.$internalState.getter();
  return GroupSession.$internalState.modify;
}

void GroupSession.activity.modify(uint64_t **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[3], v6, v7);
    a3(v5);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3((*a1)[4]);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

BOOL GroupSession.isInvalid.getter()
{
  GroupSession.internalState.getter();
  outlined consume of GroupSession<A>.State<A>(v1);
  return v1 > 1;
}

uint64_t GroupSession.__allocating_init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, void *a13, uint64_t a14, void *a15, uint64_t a16, char *a17, uint64_t a18, uint64_t *a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22)
{
  v24 = *(v22 + 48);
  v25 = *(v22 + 52);
  v26 = swift_allocObject();
  GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  return v26;
}

char *GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, void *a13, uint64_t a14, void *a15, uint64_t a16, char *a17, uint64_t a18, uint64_t *a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22)
{
  v23 = v22;
  v486 = a8;
  v484 = a7;
  v485 = a6;
  v516 = a5;
  v527 = a4;
  v520 = a3;
  v512 = a2;
  v522 = a1;
  v525 = a18;
  v507 = a15;
  v511 = a11;
  v24 = *v22;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v449 = *(v450 - 8);
  v25 = *(v449 + 64);
  MEMORY[0x1EEE9AC00](v450);
  v448 = &v430 - v26;
  v27 = *(v24 + 80);
  v529 = *(v24 + 88);
  type metadata accessor for GroupSession.State();
  v447 = type metadata accessor for Published.Publisher();
  v446 = *(v447 - 8);
  v28 = *(v446 + 64);
  MEMORY[0x1EEE9AC00](v447);
  v445 = &v430 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v432 = &v430 - v32;
  v33 = type metadata accessor for GroupSession.MessageQueue();
  v456 = type metadata accessor for Published.Publisher();
  v444 = *(v456 - 8);
  v34 = *(v444 + 64);
  MEMORY[0x1EEE9AC00](v456);
  v455 = &v430 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v441 = *(v36 - 8);
  v37 = *(v441 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v438 = &v430 - v38;
  v39 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<PubSubTopic.QueueState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v442 = v36;
  v436 = v39;
  v440 = type metadata accessor for Publishers.Map();
  v439 = *(v440 - 8);
  v40 = *(v439 + 64);
  MEMORY[0x1EEE9AC00](v440);
  v437 = &v430 - v41;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMR);
  v451 = *(v457 - 8);
  v42 = *(v451 + 64);
  v43 = MEMORY[0x1EEE9AC00](v457);
  v431 = &v430 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v498 = &v430 - v45;
  v435 = type metadata accessor for SharePlayLatencyLogger.Event();
  v434 = *(v435 - 8);
  v46 = *(v434 + 64);
  MEMORY[0x1EEE9AC00](v435);
  v433 = &v430 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = type metadata accessor for Published.Publisher();
  v515 = *(v505 - 8);
  v48 = *(v515 + 64);
  MEMORY[0x1EEE9AC00](v505);
  v504 = &v430 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v497 = &v430 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
  v54 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<TUConversationActivity, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
  v488 = v53;
  v487 = v54;
  v55 = type metadata accessor for Publishers.CompactMap();
  v495 = *(v55 - 8);
  v56 = *(v495 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v494 = &v430 - v57;
  v58 = type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  WitnessTable = swift_getWitnessTable();
  v60 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v496 = v55;
  v532 = v55;
  v533 = v58;
  v508 = v58;
  v490 = WitnessTable;
  v534 = WitnessTable;
  v535 = v60;
  v489 = v60;
  v493 = type metadata accessor for Publishers.ReceiveOn();
  v492 = *(v493 - 8);
  v61 = *(v492 + 64);
  MEMORY[0x1EEE9AC00](v493);
  v491 = &v430 - v62;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR);
  v482 = *(v483 - 1);
  v63 = *(v482 + 64);
  MEMORY[0x1EEE9AC00](v483);
  v481 = &v430 - v64;
  v480 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v479 = *(v480 - 8);
  v65 = *(v479 + 64);
  MEMORY[0x1EEE9AC00](v480);
  v478 = &v430 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = type metadata accessor for OS_dispatch_queue.Attributes();
  v67 = *(*(v476 - 8) + 64);
  MEMORY[0x1EEE9AC00](v476);
  v477 = &v430 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v475 = &v430 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v459 = *(v460 - 8);
  v72 = *(v459 + 64);
  MEMORY[0x1EEE9AC00](v460);
  v458 = &v430 - v73;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v453 = *(v454 - 8);
  v74 = *(v453 + 64);
  MEMORY[0x1EEE9AC00](v454);
  v452 = &v430 - v75;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v499 = *(v500 - 8);
  v76 = *(v499 + 64);
  MEMORY[0x1EEE9AC00](v500);
  v470 = &v430 - v77;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v468 = *(v469 - 8);
  v78 = *(v468 + 64);
  MEMORY[0x1EEE9AC00](v469);
  v467 = &v430 - v79;
  v528 = type metadata accessor for UUID();
  v526 = *(v528 - 8);
  v80 = *(v526 + 64);
  v81 = MEMORY[0x1EEE9AC00](v528);
  v503 = &v430 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x1EEE9AC00](v81);
  v524 = &v430 - v84;
  v502 = v85;
  v86 = MEMORY[0x1EEE9AC00](v83);
  v523 = &v430 - v87;
  v510 = *(v27 - 8);
  v88 = *(v510 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v519 = &v430 - v89;
  v506 = type metadata accessor for Participant();
  v471 = *(v506 - 8);
  v90 = v471[8];
  v91 = MEMORY[0x1EEE9AC00](v506);
  v518 = &v430 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v514 = &v430 - v94;
  v501 = v95;
  MEMORY[0x1EEE9AC00](v93);
  v517 = &v430 - v96;
  v472 = type metadata accessor for Published();
  v466 = *(v472 - 1);
  v97 = *(v466 + 64);
  MEMORY[0x1EEE9AC00](v472);
  v465 = &v430 - v98;
  v99 = type metadata accessor for PubSubTopic.QueueState();
  v100 = *(*(v99 - 8) + 64);
  v101 = MEMORY[0x1EEE9AC00](v99 - 8);
  v464 = &v430 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = v33;
  v103 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v101);
  v463 = &v430 - v104;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v105 = *(v473 - 8);
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v473);
  v108 = &v430 - v107;
  v109 = type metadata accessor for Published();
  v110 = *(v109 - 8);
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v430 - v112;
  *&v23[direct field offset for GroupSession.playbackSyncerLink] = 0;
  *&v23[direct field offset for GroupSession.playbackSyncMessenger] = 0;
  *&v23[direct field offset for GroupSession.attachmentDownloadBytes] = 0;
  *&v23[direct field offset for GroupSession.attachmentUploadBytes] = 0;
  *&v23[direct field offset for GroupSession.attachmentDownloadTime] = 0;
  *&v23[direct field offset for GroupSession.attachmentUploadTime] = 0;
  v114 = &v23[direct field offset for GroupSession.receivedDataHandler];
  *v114 = 0;
  *(v114 + 1) = 0;
  v115 = &v23[direct field offset for GroupSession._receivedDataPublisher];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  swift_allocObject();
  *v115 = PassthroughSubject.init()();
  v115[1] = 0;
  v119 = &v23[direct field offset for GroupSession._receivedAttachmentPublisher];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  v121 = *(v120 + 48);
  v122 = *(v120 + 52);
  v474 = v120;
  swift_allocObject();
  *v119 = PassthroughSubject.init()();
  v119[1] = 0;
  v123 = &v23[direct field offset for GroupSession._catchupNeededPublisher];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMR);
  v125 = *(v124 + 48);
  v126 = *(v124 + 52);
  swift_allocObject();
  *v123 = PassthroughSubject.init()();
  v123[1] = 0;
  v127 = *(*v23 + 208);
  v532 = 0;
  v462 = type metadata accessor for GroupSession.State();
  Published.init(wrappedValue:)(&v532, v462);
  v128 = *(v110 + 32);
  v513 = v109;
  v509 = (v110 + 32);
  v461 = v128;
  v128(&v23[v127], v113, v109);
  v129 = *(*v23 + 224);
  v130 = MEMORY[0x1E69E7CD0];
  v532 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  Published.init(initialValue:)();
  v131 = &v23[v129];
  v132 = v506;
  (*(v105 + 32))(v131, v108, v473);
  v133 = v525;
  v134 = &v23[*(*v23 + 232)];
  *v134 = 0;
  *(v134 + 1) = 0;
  v473 = v134;
  v135 = *(*v23 + 248);
  v136 = v464;
  PubSubTopic.QueueState.init()();
  v137 = v463;
  GroupSession.MessageQueue.init(queueState:)(v136, v463);
  v138 = v465;
  property wrapper backing initializer of GroupSession.messageQueue(v137);
  (*(v466 + 32))(&v23[v135], v138, v472);
  v472 = &v23[*(*v23 + 304)];
  *v472 = 0;
  v139 = v517;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v130 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v133 = v525;
    v139 = v517;
  }

  *&v23[*(*v23 + 312)] = v130;
  *&v23[*(*v23 + 328)] = 0;
  v140 = *(*v23 + 336);
  v141 = type metadata accessor for SharePlayLatencyLogger.Interval();
  (*(*(v141 - 8) + 56))(&v23[v140], 1, 1, v141);
  *&v23[*(*v23 + 344)] = 0;
  *&v23[*(*v23 + 368)] = 0;
  *&v23[*(*v23 + 376)] = 0;
  v142 = &v23[*(*v23 + 384)];
  v143 = MEMORY[0x1E69E7CC0];
  v144 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v142 = 0;
  *(v142 + 1) = v144;
  v145 = *(*v23 + 392);
  v532 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(v143);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  v147 = *(v146 + 48);
  v148 = *(v146 + 52);
  swift_allocObject();
  *&v23[v145] = CurrentValueSubject.init(_:)();
  v149 = *(*v23 + 400);
  v532 = 0;
  Published.init(wrappedValue:)(&v532, v462);
  v461(&v23[v149], v113, v513);
  v150 = &v23[*(*v23 + 416)];
  *v150 = 0;
  *(v150 + 1) = 0;
  *&v23[*(*v23 + 424)] = 0;
  v151 = v526 + 16;
  v152 = *(v526 + 16);
  v153 = v522;
  (v152)(&v23[direct field offset for GroupSession.id], v522, v528);
  UUID.init()();
  v154 = (v139 + v132[5]);
  v155 = v527;
  *v154 = v520;
  v154[1] = v155;
  *(v139 + v132[6]) = 0;
  *(v139 + v132[8]) = 0;
  v156 = (v139 + v132[7]);
  *v156 = 0;
  v156[1] = 0;
  *(v139 + v132[9]) = 0;
  outlined init with take of Participant(v139, &v23[direct field offset for GroupSession.initiator], type metadata accessor for Participant);
  v157 = v519;
  (*(v510 + 16))(v519, v516, v27);
  v158 = *(*v23 + 216);
  swift_beginAccess();
  v521 = v27;
  property wrapper backing initializer of GroupSession.activity(v157, v27);
  swift_endAccess();
  *&v23[direct field offset for GroupSession.topicManager] = v133;

  v159 = UUID.uuidString.getter();
  v160 = v512;
  v527 = (*(*v133 + 248))(v512, v159, v161);

  v162 = [*(v133 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) nearbyFaceTimeEnabled];
  v163 = v153;
  v520 = v151;
  v519 = v152;
  LODWORD(v463) = v162;
  if (v162)
  {
    v164 = v132;
    v165 = v132[6];
    v166 = (v511 + v132[5]);
    v167 = *v166;
    v168 = v166[1];
    v169 = (v511 + v132[7]);
    v171 = *v169;
    v170 = v169[1];
    v172 = v514;
    *(v514 + v165) = *(v511 + v165);

    UUID.init(_:)();
    v173 = (v172 + v164[5]);
    *v173 = v167;
    v173[1] = v168;
    v152 = v519;
    v174 = (v172 + v164[7]);
    *v174 = v171;
    v174[1] = v170;
    *(v172 + v164[8]) = 1;
    *(v172 + v164[9]) = 0;
  }

  else
  {
    v172 = v514;
    outlined init with copy of Participant(v511, v514, type metadata accessor for Participant);
  }

  v175 = v524;
  v513 = a20;
  v509 = a19;
  v176 = v528;
  (v152)(v523, v163, v528);
  (v152)(v175, v160, v176);
  outlined init with copy of Participant(v172, v518, type metadata accessor for Participant);
  v177 = objc_allocWithZone(MEMORY[0x1E6997708]);

  v178 = v507;
  v179 = [v177 init];
  v180 = type metadata accessor for LinkManager(0);
  v181 = objc_allocWithZone(v180);
  v182 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
  *&v181[v182] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
  v183 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v532 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  v184 = v467;
  CurrentSubject.init(wrappedValue:)();
  (*(v468 + 32))(&v181[v183], v184, v469);
  *&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
  v185 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
  v186 = MEMORY[0x1E69E7CC0];
  v532 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
  v187 = v470;
  CurrentSubject.init(wrappedValue:)();
  (*(v499 + 32))(&v181[v185], v187, v500);
  if (v186 >> 62 && __CocoaSet.count.getter())
  {
    v188 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v188 = MEMORY[0x1E69E7CD0];
  }

  v189 = v527;
  v190 = v523;
  LODWORD(v499) = a22;
  LODWORD(v500) = a21;
  v470 = a17;
  v469 = a16;
  v468 = a14;
  v507 = a13;
  LODWORD(v467) = a12;
  LODWORD(v466) = a10;
  LODWORD(v465) = a9;
  *&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v188;
  v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
  v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
  v191 = &v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
  *v191 = 0;
  v191[1] = 0;
  v192 = &v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
  *v192 = 0;
  v192[1] = 0;
  v193 = &v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
  *v193 = 0;
  v193[1] = 0;
  v194 = &v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
  *v194 = 0;
  v194[1] = 0;
  v195 = v528;
  v196 = v519;
  (v519)(&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v190, v528);
  (v196)(&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v524, v195);
  *&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = v189;
  v197 = v518;
  outlined init with copy of Participant(v518, &v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
  *&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v178;
  *&v181[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v179;
  v531.receiver = v181;
  v531.super_class = v180;

  v198 = v178;
  v199 = v179;
  v200 = objc_msgSendSuper2(&v531, sel_init);
  v201 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v202 = v517;
  outlined init with copy of Participant(v197, v517, type metadata accessor for Participant);
  v203 = *(v471 + 80);
  v204 = (v203 + 24) & ~v203;
  v464 = v203;
  v462 = v203 | 7;
  v205 = swift_allocObject();
  *(v205 + 16) = v201;
  outlined init with take of Participant(v202, v205 + v204, type metadata accessor for Participant);
  v206 = *(*v189 + 336);
  v207 = v200;

  v206(partial apply for closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v205);
  v208 = v527;

  v471 = v199;
  if ([v199 unreliableMessengerEnabled])
  {
    v209 = UUID.uuidString.getter();
    v211 = v210;
    v212 = *&v197[*(v506 + 24)];
    v213 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager);
    v214 = (*(*v525 + 256))(v524, v209, v211, v212, v198, v207, v213);

    v216 = v458;
    (*(*v208 + 448))(v215);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
    v217 = v452;
    v218 = v460;
    Publisher.map<A>(_:)();
    (*(v459 + 8))(v216, v218);
    v219 = UnreliableMessenger.$activeReliableSubscribers.modify();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
    v220 = v454;
    Publisher<>.assign(to:)();
    v221 = v217;
    v197 = v518;
    (*(v453 + 8))(v221, v220);
    v219(&v532, 0);
    v222 = *&v207[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger];
    *&v207[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v214;
  }

  v223 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v224 = *(*v208 + 360);

  v224(partial apply for closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v223);

  v518 = v198;

  outlined destroy of Participant(v197, type metadata accessor for Participant);
  v225 = (v526 + 8);
  v226 = *(v526 + 8);
  v227 = v528;
  v226(v524, v528);
  v228 = v523;
  v523 = v225;
  v506 = v226;
  v226(v228, v227);

  *&v23[direct field offset for GroupSession.linkManager] = v207;
  v532 = 0;
  v533 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v532 = 0xD000000000000025;
  v533 = 0x80000001AF01A5B0;
  MEMORY[0x1B27141F0](v484, v486);

  static DispatchQoS.unspecified.getter();
  v532 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v479 + 104))(v478, *MEMORY[0x1E69E8090], v480);
  *&v23[*(*v23 + 296)] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v229 = v472;
  swift_beginAccess();
  v230 = *v229;
  v231 = v507;
  *v229 = v507;
  v484 = v231;

  v232 = v485;
  *&v23[*(*v23 + 256)] = v485;
  v233 = *(*v23 + 240);
  v234 = v521;
  v235 = v529;
  v236 = type metadata accessor for GroupSession.Timestamps();
  v486 = *(v236 - 8);
  v237 = *(v486 + 16);
  v524 = v236;
  v237(&v23[v233], v513);
  v23[*(*v23 + 264)] = v465 & 1;
  v23[*(*v23 + 272)] = v466 & 1;
  v23[*(*v23 + 280)] = v467 & 1;
  *&v23[*(*v23 + 408)] = v468;
  v238 = v473;
  swift_beginAccess();
  v239 = v238[1];
  v240 = v470;
  *v238 = v469;
  v238[1] = v240;
  v241 = v232;

  outlined init with copy of Transferable(v509, &v23[*(*v23 + 320)]);
  v23[*(*v23 + 352)] = v500 & 1;
  v23[*(*v23 + 360)] = v499 & 1;
  type metadata accessor for ActivitySessionClientConnection();
  v485 = v241;
  v242 = XPCClient.__allocating_init(listenerEndpoint:)();
  v243 = &v23[*(*v23 + 288)];
  *v243 = v242;
  v244 = direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  v532 = *&v23[v244];
  v245 = swift_allocObject();
  swift_weakInit();
  v246 = swift_allocObject();
  v246[2] = v234;
  v246[3] = v235;
  v246[4] = v245;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);

  v247 = v481;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v248 = v235;

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<PassthroughSubject<(UUID, URL, Participant), Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR);
  v249 = v483;
  v250 = Publisher.eraseToAnyPublisher()();
  (*(v482 + 8))(v247, v249);
  v251 = &v23[direct field offset for GroupSession._receivedAttachmentPublisher];
  swift_beginAccess();
  v252 = *(v251 + 1);
  *(v251 + 1) = v250;

  swift_beginAccess();
  v253 = *v243;
  v254 = swift_allocObject();
  swift_weakInit();
  v255 = swift_allocObject();
  v255[2] = v234;
  v255[3] = v248;
  v255[4] = v254;
  v256 = v253;

  ActivitySessionClientConnection.serverDisconnectedCallback.setter();

  v257 = *v243;
  v258 = swift_allocObject();
  swift_weakInit();
  v259 = swift_allocObject();
  v259[2] = v234;
  v259[3] = v248;
  v259[4] = v258;
  v260 = v257;

  ActivitySessionClientConnection.setAssociatedSceneCallback.setter();

  v261 = *v243;
  v262 = swift_allocObject();
  swift_weakInit();
  v263 = swift_allocObject();
  v263[2] = v234;
  v263[3] = v248;
  v263[4] = v262;
  v264 = v261;

  ActivitySessionClientConnection.setExternalParticipantsCallback.setter();

  v265 = *v243;
  v266 = swift_allocObject();
  swift_weakInit();
  v267 = swift_allocObject();
  v267[2] = v234;
  v267[3] = v248;
  v267[4] = v266;
  v268 = v265;

  ActivitySessionClientConnection.setStateCallback.setter();

  v269 = *v243;
  v270 = swift_allocObject();
  swift_weakInit();
  v271 = swift_allocObject();
  v271[2] = v234;
  v271[3] = v248;
  v271[4] = v270;
  v272 = v269;

  ActivitySessionClientConnection.setDataCryptorCallback.setter();

  v273 = *v243;
  v274 = swift_allocObject();
  swift_weakInit();
  v275 = swift_allocObject();
  v275[2] = v234;
  v275[3] = v248;
  v275[4] = v274;
  v276 = v273;

  ActivitySessionClientConnection.receivedResourceCallback.setter();

  v483 = v243;
  v277 = *v243;
  v278 = ActivitySessionClientConnection.setActivityPublisher.getter();

  v530 = v278;
  v279 = swift_allocObject();
  *(v279 + 16) = v234;
  *(v279 + 24) = v248;
  v280 = v494;
  Publisher.compactMap<A>(_:)();
  v281 = v484;

  v282 = v281;
  if (!v507)
  {
    v282 = *&v23[*(*v23 + 296)];
  }

  v530 = v282;
  v283 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v284 = v497;
  (*(*(v283 - 8) + 56))(v497, 1, 1, v283);
  v507 = v281;
  v285 = v491;
  v286 = v496;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v284, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v495 + 8))(v280, v286);
  v287 = v504;
  GroupSession.$activity.getter();
  v288 = v493;
  swift_getWitnessTable();
  Publisher<>.assign(to:)();
  (*(v492 + 8))(v285, v288);
  specialized GroupSession.$activity.setter(v287);
  v289 = *(v515 + 8);
  v515 += 8;
  v497 = v289;
  (v289)(v287, v505);
  v508 = direct field offset for GroupSession.linkManager;
  v290 = *&v23[direct field offset for GroupSession.linkManager];
  v291 = swift_allocObject();
  swift_weakInit();
  v292 = v503;
  v293 = v528;
  (v519)(v503, v522, v528);
  v294 = v526;
  v295 = (*(v526 + 80) + 32) & ~*(v526 + 80);
  v296 = (v502 + v295 + 7) & 0xFFFFFFFFFFFFFFF8;
  v495 = *(v526 + 80);
  v297 = swift_allocObject();
  v298 = v529;
  *(v297 + 16) = v234;
  *(v297 + 24) = v298;
  v299 = *(v294 + 32);
  v526 = v294 + 32;
  v496 = v299;
  v299(v297 + v295, v292, v293);
  *(v297 + v296) = v291;
  v300 = MEMORY[0x1E69E7D40];
  v301 = *((*MEMORY[0x1E69E7D40] & *v290) + 0x1B8);

  v301(partial apply for closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v297);

  v302 = v508;
  v303 = *&v23[v508];
  v304 = swift_allocObject();
  swift_weakInit();
  v305 = swift_allocObject();
  v306 = v521;
  v307 = v529;
  v305[2] = v521;
  v305[3] = v307;
  v305[4] = v304;
  v308 = *((*v300 & *v303) + 0x1D0);
  v309 = v303;

  v308(partial apply for closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v305);

  v310 = *&v23[v302];
  v311 = swift_allocObject();
  swift_weakInit();
  v312 = swift_allocObject();
  v313 = v529;
  v312[2] = v306;
  v312[3] = v313;
  v312[4] = v311;
  v314 = *((*MEMORY[0x1E69E7D40] & *v310) + 0x200);
  v315 = v310;

  v314(partial apply for closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v312);

  v316 = *&v23[v302];
  v317 = v302;
  v318 = swift_allocObject();
  swift_weakInit();
  v319 = swift_allocObject();
  v320 = v529;
  v319[2] = v306;
  v319[3] = v320;
  v319[4] = v318;
  v321 = *((*MEMORY[0x1E69E7D40] & *v316) + 0x1E8);
  v322 = v316;

  v321(partial apply for closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v319);
  v323 = v529;

  v324 = *&v23[v317];
  v325 = swift_allocObject();
  swift_weakInit();
  v326 = swift_allocObject();
  v326[2] = v306;
  v326[3] = v323;
  v327 = v306;
  v326[4] = v325;
  v328 = *((*MEMORY[0x1E69E7D40] & *v324) + 0x218);
  v329 = v324;

  v328(partial apply for closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v326);

  v330 = swift_allocObject();
  swift_weakInit();
  v331 = swift_allocObject();
  v332 = v527;
  v331[2] = v327;
  v331[3] = v323;
  v331[4] = v330;
  v333 = *(*v332 + 528);

  v333(partial apply for closure #14 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v331);

  v334 = swift_allocObject();
  swift_weakInit();
  v335 = swift_allocObject();
  v335[2] = v327;
  v335[3] = v323;
  v335[4] = v334;
  v336 = *(*v332 + 552);

  v336(partial apply for closure #15 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v335);

  type metadata accessor for AnyGroupActivity(0);
  if (swift_dynamicCastMetatype())
  {

    (*(v486 + 8))(v513, v524);
    __swift_destroy_boxed_opaque_existential_0(v509);
    outlined destroy of Participant(v511, type metadata accessor for Participant);
    (*(v510 + 8))(v516, v327);
    v337 = v528;
    v338 = v506;
    (v506)(v512, v528);
    v338(v522, v337);
  }

  else
  {
    v494 = ~v464;
    v339 = v495;
    v508 = ~v495;
    v340 = v434;
    v341 = v433;
    v342 = v435;
    (*(v434 + 104))(v433, *MEMORY[0x1E6997548], v435);
    v343 = v513 + *(v524 + 9);
    static SharePlayLatencyLogger.logInterval<A>(for:activity:localStartTime:)();
    (*(v340 + 8))(v341, v342);
    v344 = *v483;
    v345 = swift_allocObject();
    swift_weakInit();
    v346 = swift_allocObject();
    v346[2] = v327;
    v346[3] = v323;
    v346[4] = v345;
    v347 = v344;

    ActivitySessionClientConnection.setNearbyParticipantsCallback.setter();

    v349 = v458;
    (*(*v332 + 448))(v348);
    v350 = v517;
    outlined init with copy of Participant(v514, v517, type metadata accessor for Participant);
    v351 = v503;
    v352 = v528;
    (v519)(v503, v522, v528);
    v353 = (v464 + 17) & v494;
    v354 = (v353 + v501 + v339) & v508;
    v355 = swift_allocObject();
    LODWORD(v339) = v463;
    *(v355 + 16) = v463;
    outlined init with take of Participant(v350, v355 + v353, type metadata accessor for Participant);
    v496(v355 + v354, v351, v352);
    v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V15GroupActivities19InternalParticipantVGMd, &_sSDys6UInt64V15GroupActivities19InternalParticipantVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
    v357 = v460;
    Publisher.map<A>(_:)();

    v358 = v349;
    v359 = v339;
    v360 = (*(v459 + 8))(v358, v357);
    v361 = v438;
    (*(*v332 + 496))(v360);
    v362 = swift_allocObject();
    v363 = v529;
    *(v362 + 16) = v521;
    *(v362 + 24) = v363;
    v364 = v437;
    v365 = v442;
    Publisher.map<A>(_:)();

    (*(v441 + 8))(v361, v365);
    v366 = v455;
    GroupSession.$messageQueue.getter();
    v367 = v440;
    swift_getWitnessTable();
    Publisher<>.assign(to:)();
    (*(v439 + 8))(v364, v367);
    specialized GroupSession.$messageQueue.setter(v366);
    v526 = *(v444 + 8);
    (v526)(v366, v456);
    if (v499 & 1) != 0 && (v368 = *v483, v369 = ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter(), v368, ((v359 | v369)))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v520 = v356;
      v370 = type metadata accessor for Logger();
      __swift_project_value_buffer(v370, static Log.default);

      v371 = Logger.logObject.getter();
      v372 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v371, v372))
      {
        v373 = swift_slowAlloc();
        v374 = swift_slowAlloc();
        v530 = v374;
        *v373 = 136315138;
        v375 = GroupSession.description.getter();
        v377 = v376;

        v378 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v375, v377, &v530);

        *(v373 + 4) = v378;
        _os_log_impl(&dword_1AEE80000, v371, v372, "[Translation] Enabling participant translation for %s", v373, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v374);
        MEMORY[0x1B2715BA0](v374, -1, -1);
        MEMORY[0x1B2715BA0](v373, -1, -1);
      }

      else
      {
      }

      v392 = swift_allocObject();
      swift_weakInit();
      v393 = swift_allocObject();
      v394 = v521;
      v395 = v529;
      *(v393 + 16) = v521;
      *(v393 + 24) = v395;
      *(v393 + 32) = v392;
      *(v393 + 40) = v359;
      v396 = v431;
      v397 = v457;
      Publishers.Map.map<A>(_:)();

      v398 = swift_allocObject();
      swift_weakInit();

      v399 = swift_allocObject();
      v399[2] = v394;
      v399[3] = v395;
      v399[4] = v398;
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64 : InternalParticipant]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMR);
      v391 = Publisher<>.sink(receiveValue:)();

      (*(v451 + 8))(v396, v397);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v379 = type metadata accessor for Logger();
      __swift_project_value_buffer(v379, static Log.default);

      v380 = Logger.logObject.getter();
      v381 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v380, v381))
      {
        v382 = swift_slowAlloc();
        v383 = swift_slowAlloc();
        v530 = v383;
        *v382 = 136315138;
        v384 = GroupSession.description.getter();
        v386 = v385;

        v387 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v384, v386, &v530);

        *(v382 + 4) = v387;
        _os_log_impl(&dword_1AEE80000, v380, v381, "[Translation] Skipping participant translation for %s", v382, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v383);
        MEMORY[0x1B2715BA0](v383, -1, -1);
        MEMORY[0x1B2715BA0](v382, -1, -1);
      }

      else
      {
      }

      v388 = swift_allocObject();
      swift_weakInit();

      v389 = swift_allocObject();
      v390 = v529;
      v389[2] = v521;
      v389[3] = v390;
      v389[4] = v388;
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64 : InternalParticipant]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMR);
      v391 = Publisher<>.sink(receiveValue:)();
    }

    v400 = *(*v23 + 376);
    v401 = *&v23[v400];
    *&v23[v400] = v391;

    v402 = v505;
    if (v500)
    {
      v403 = type metadata accessor for TaskPriority();
      v404 = v432;
      (*(*(v403 - 8) + 56))(v432, 1, 1, v403);
      type metadata accessor for MainActor();

      v405 = static MainActor.shared.getter();
      v406 = swift_allocObject();
      v407 = MEMORY[0x1E69E85E0];
      v406[2] = v405;
      v406[3] = v407;
      v406[4] = v23;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v404, &async function pointer to partial apply for closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v406);
    }

    v408 = v445;
    GroupSession.$state.getter();
    v409 = *(v446 + 8);
    v410 = v447;
    v409(v408, v447);
    v411 = v504;
    GroupSession.$activity.getter();
    (v497)(v411, v402);
    v412 = v448;
    GroupSession.$activeParticipants.getter();
    (*(v449 + 8))(v412, v450);
    v413 = v455;
    GroupSession.$messageQueue.getter();
    (v526)(v413, v456);
    GroupSession.$internalState.getter();
    v409(v408, v410);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v414 = type metadata accessor for Logger();
    __swift_project_value_buffer(v414, static Logger.client);

    v415 = Logger.logObject.getter();
    v416 = static os_log_type_t.default.getter();
    v417 = os_log_type_enabled(v415, v416);
    v418 = v522;
    v419 = v512;
    v420 = v521;
    if (v417)
    {
      v421 = swift_slowAlloc();
      v422 = swift_slowAlloc();
      v530 = v422;
      *v421 = 136315138;
      v423 = GroupSession.description.getter();
      v425 = v424;

      v426 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v423, v425, &v530);

      *(v421 + 4) = v426;
      _os_log_impl(&dword_1AEE80000, v415, v416, "Init GroupSession %s", v421, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v422);
      MEMORY[0x1B2715BA0](v422, -1, -1);
      MEMORY[0x1B2715BA0](v421, -1, -1);
    }

    else
    {
    }

    (*(v486 + 8))(v513, v524);
    __swift_destroy_boxed_opaque_existential_0(v509);
    outlined destroy of Participant(v511, type metadata accessor for Participant);
    (*(v510 + 8))(v516, v420);
    v427 = v528;
    v428 = v506;
    (v506)(v419, v528);
    v428(v418, v427);
    (*(v451 + 8))(v498, v457);
  }

  outlined destroy of Participant(v514, type metadata accessor for Participant);
  return v23;
}

uint64_t specialized closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + *(*result + 296));
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply for specialized closure #1 in closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    *(v3 + 24) = v2;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_549;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v1, v4);

    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + *(*result + 296));
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply for closure #1 in closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    *(v3 + 24) = v2;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_682;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v1, v4);

    _Block_release(v4);
    LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

    if (v1)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized GroupSession.handleNewAttachmentSubscriber()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v36 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + *(*v1 + 296));
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1AEE80000, v18, v19, "Received new attachment subscriber", v20, 2u);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  v21 = *(*v1 + 368);
  swift_beginAccess();
  v22 = *(v1 + v21);
  *(v1 + v21) = v22 | 1;
  specialized GroupSession.capabilities.didset(v22);
  v23 = *(v1 + direct field offset for GroupSession.topicManager);
  v24 = *(v1 + direct field offset for GroupSession.linkManager);
  v25 = v3[2];
  v25(v9, &v24[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v2);
  v25(v7, &v24[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v2);
  v26 = UUID.uuidString.getter();
  v28 = v27;
  v29 = v3[1];
  v29(v7, v2);
  (*(*v23 + 240))(v9, v26, v28);

  v29(v9, v2);
  v30 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x100);

  v30(v31);
  v32 = (v1 + direct field offset for GroupSession._receivedAttachmentPublisher);
  swift_beginAccess();
  v36[1] = *v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  v33 = Publisher.eraseToAnyPublisher()();

  v34 = v32[1];
  v32[1] = v33;
}

Swift::Void __swiftcall GroupSession.handleNewAttachmentSubscriber()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v35 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + *(*v1 + 296));
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1AEE80000, v18, v19, "Received new attachment subscriber", v20, 2u);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  v21 = *(*v1 + 368);
  swift_beginAccess();
  GroupSession.capabilities.setter(*(v1 + v21) | 1);
  v22 = *(v1 + direct field offset for GroupSession.topicManager);
  v23 = *(v1 + direct field offset for GroupSession.linkManager);
  v24 = v3[2];
  v24(v9, &v23[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v2);
  v24(v7, &v23[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v2);
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v28 = v3[1];
  v28(v7, v2);
  (*(*v22 + 240))(v9, v25, v27);

  v28(v9, v2);
  v29 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x100);

  v29(v30);
  v31 = direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  v35[7] = *(v1 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  v32 = Publisher.eraseToAnyPublisher()();
  v33 = v1 + direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  v34 = *(v33 + 8);
  *(v33 + 8) = v32;
}

uint64_t specialized closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + *(*result + 296));
    aBlock[4] = partial apply for specialized closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_542;
    v14 = result;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v16 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v13 = v5;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v9, v4, v11);
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v13);
  }

  return result;
}

uint64_t closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + *(*result + 296));
    aBlock[4] = partial apply for closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_675;
    v14 = result;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v16 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v13 = v5;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v9, v4, v11);
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v13);
  }

  return result;
}

void specialized closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined consume of GroupSession<A>.State<A>(v2);
  if (v2 <= 1)
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v0 = swift_allocError();
    *v1 = 4;
    specialized GroupSession.invalidate(reason:)(v0);
  }
}

void closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  GroupSession.internalState.getter();
  outlined consume of GroupSession<A>.State<A>(v2);
  if (v2 <= 1)
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v0 = swift_allocError();
    *v1 = 4;
    GroupSession.invalidate(reason:)(v0);
  }
}

uint64_t specialized GroupSession.invalidate(reason:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.playback);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51 = v9;
    *v8 = 136315138;
    v50[13] = a1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v51);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Invalidating GroupSession with reason:%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v14 = specialized GroupSession.cleanUpPlaybackSyncer()();
  v15 = *(v2 + direct field offset for GroupSession.linkManager);
  v16 = MEMORY[0x1E69E7D40];
  v17 = *((*((*MEMORY[0x1E69E7D40] & *v15) + 0x130))(v14) + 16);

  v18 = direct field offset for GroupSession.attachmentDownloadBytes;
  swift_beginAccess();
  v19 = *(v2 + v18);
  v20 = direct field offset for GroupSession.attachmentUploadBytes;
  swift_beginAccess();
  v21 = *(v2 + v20);
  v22 = direct field offset for GroupSession.attachmentDownloadTime;
  swift_beginAccess();
  v23 = *(v2 + v22);
  v24 = direct field offset for GroupSession.attachmentUploadTime;
  swift_beginAccess();
  v25 = v21 / *(v2 + v24);
  v26 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
  v27 = AttachmentDataReport.init(totalAttachments:totalDownloadBytes:totalUploadBytes:downloadSpeed:uploadSpeed:)();
  specialized GroupSession.logAttachmentEvent(report:reportEvent:)(v27, 0xD000000000000023, 0x80000001AF01A6B0, &unk_1F24BB248, partial apply for specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:), &block_descriptor_500);

  v28 = (*((*v16 & *v15) + 0x238))();
  specialized GroupSession.logAttachmentEvent(report:reportEvent:)(v28, 0xD000000000000027, 0x80000001AF01A5E0, &unk_1F24BB248, partial apply for specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:), &block_descriptor_500);

  v29 = *(*v2 + 288);
  swift_beginAccess();
  v30 = *(v2 + v29);
  dispatch thunk of XPCClient.destroyConnection()();

  MEMORY[0x1EEE9AC00](v31);
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined consume of GroupSession<A>.State<A>(v50[0]);
  if (v50[0] >= 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, static Log.default);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v41 = 136315138;
      v43 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v44 = String.init<A>(reflecting:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v50);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1AEE80000, v39, v40, "Received invalidation reason %s after already being invalidated.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2715BA0](v42, -1, -1);
      MEMORY[0x1B2715BA0](v41, -1, -1);
    }
  }

  else
  {
    v33 = direct field offset for GroupSession._receivedDataPublisher;
    swift_beginAccess();
    v34 = *(v2 + v33);

    PassthroughSubject.send(completion:)();

    v35 = a1;
    specialized GroupSession.internalState.willset(a1);
    MEMORY[0x1EEE9AC00](v36);
    v37 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v37);
    swift_getKeyPath();

    static Published.subscript.setter();
    specialized GroupSession.updatePublicState()(partial apply for specialized closure #1 in GroupSession.updatePublicState(), &block_descriptor_494);
  }

  v47 = *(*v2 + 328);
  v48 = *(v2 + v47);
  *(v2 + v47) = 0;
}

uint64_t GroupSession.invalidate(reason:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.playback);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34[0] = v9;
    *v8 = 136315138;
    v33[1] = a1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v34);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Invalidating GroupSession with reason:%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  GroupSession.cleanUpPlaybackSyncer()();
  GroupSession.logAttachmentSessionReport()();
  v14 = (*((*MEMORY[0x1E69E7D40] & **(v2 + direct field offset for GroupSession.linkManager)) + 0x238))();
  GroupSession.logAttachmentEvent(report:reportEvent:)(v14, 0xD000000000000027, 0x80000001AF01A5E0);

  v15 = *(*v2 + 288);
  swift_beginAccess();
  v16 = *(v2 + v15);
  dispatch thunk of XPCClient.destroyConnection()();

  GroupSession.internalState.getter();
  v17 = v34[0];
  outlined consume of GroupSession<A>.State<A>(v34[0]);
  if (v17 <= 1)
  {
    v27 = direct field offset for GroupSession._receivedDataPublisher;
    swift_beginAccess();
    v28 = *(v2 + v27);

    PassthroughSubject.send(completion:)();

    v33[0] = a1;
    v29 = a1;
    GroupSession.internalState.setter(v33);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, static Log.default);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 136315138;
      v33[0] = a1;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v34);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1AEE80000, v19, v20, "Received invalidation reason %s after already being invalidated.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B2715BA0](v22, -1, -1);
      MEMORY[0x1B2715BA0](v21, -1, -1);
    }
  }

  v30 = *(*v2 + 328);
  v31 = *(v2 + v30);
  *(v2 + v30) = 0;
}

uint64_t specialized closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v15 = *(*Strong + 304), v16 = Strong, swift_beginAccess(), v17 = *(v16 + v15), v18 = v17, , !v17))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = *(result + *(*result + 296));
  }

  v20 = v18;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a1;
  v21[4] = a2;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_539;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v13, v9, v22);
  _Block_release(v22);

  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);
}

uint64_t closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v17 = Strong, v18 = *(*Strong + 304), swift_beginAccess(), v19 = *(v17 + v18), v20 = v19, , !v19))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v20 = *(result + *(*result + 296));
  }

  v22 = v20;
  v23 = swift_allocObject();
  v24 = v28;
  v25 = v29;
  v23[2] = a4;
  v23[3] = v25;
  v23[4] = a3;
  v23[5] = v24;
  v23[6] = a2;
  aBlock[4] = partial apply for closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_672;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v15, v11, v26);
  _Block_release(v26);

  (*(v31 + 8))(v11, v8);
  (*(v12 + 8))(v15, v30);
}

uint64_t specialized closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = (result + *(*result + 232));
    swift_beginAccess();
    v7 = v6[1];
    *v6 = a2;
    v6[1] = a3;
  }

  return result;
}

uint64_t specialized closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v14 = *(*Strong + 304), v15 = Strong, swift_beginAccess(), v16 = *(v15 + v14), v17 = v16, , v16))
  {
    v22 = v5;
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v22 = v5;
    v17 = *(result + *(*result + 296));
  }

  v19 = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  aBlock[4] = partial apply for specialized closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_533;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v8, v21);
  _Block_release(v21);

  (*(v22 + 8))(v8, v4);
  (*(v9 + 8))(v12, v23);
}

uint64_t closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v16 = *(*Strong + 304), v17 = Strong, swift_beginAccess(), v18 = *(v17 + v16), v19 = v18, , !v18))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v19 = *(result + *(*result + 296));
  }

  v21 = v19;
  v22 = swift_allocObject();
  v23 = v25;
  v22[2] = a3;
  v22[3] = v23;
  v22[4] = a1;
  v22[5] = a2;
  aBlock[4] = partial apply for closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_666;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v14, v10, v24);
  _Block_release(v24);

  (*(v27 + 8))(v10, v7);
  (*(v11 + 8))(v14, v26);
}

uint64_t specialized closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v29 = a1;
    v1 = __CocoaSet.count.getter();
    a1 = v29;
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      v2 = v34;
      v5 = v3;
      v30 = v3 & 0xC000000000000001;
      v31 = v1;
      v32 = v3;
      while (1)
      {
        v6 = v2;
        v7 = v30 ? MEMORY[0x1B2714B30](v4, v5) : *(v5 + 8 * v4 + 32);
        v8 = v7;
        v9 = [v7 identifier];
        v33 = MEMORY[0x1B27150D0]();

        v10 = [v8 displayName];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = [v8 info];
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = lazy protocol witness table accessor for type Data and conformance Data();
        v19 = [v8 status];
        if (v19 >= 3)
        {
          break;
        }

        v2 = v6;
        v35 = v6;
        v20 = *(v6 + 16);
        v21 = *(v2 + 24);
        if (v20 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
          v2 = v35;
        }

        ++v4;
        *(v2 + 16) = v20 + 1;
        v22 = v2 + 72 * v20;
        v5 = v32;
        *(v22 + 32) = v33;
        *(v22 + 40) = v11;
        *(v22 + 48) = v13;
        *(v22 + 56) = v15;
        *(v22 + 64) = v17;
        *(v22 + 80) = MEMORY[0x1E6969080];
        *(v22 + 88) = v18;
        *(v22 + 96) = v19;
        if (v31 == v4)
        {
          goto LABEL_13;
        }
      }
    }

    type metadata accessor for TUExternalParticipantStatus(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
LABEL_13:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = (Strong + *(*Strong + 416));
      v25 = *v24;
      if (*v24)
      {
        v26 = v2;
        v27 = v24[1];
        outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*v24);

        v25(v26);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v25);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t specialized closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + *(*result + 296));
    v15 = result;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = v15;
    v21 = v15;
    v16[4] = a2;
    aBlock[4] = partial apply for specialized closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_527;
    v17 = _Block_copy(aBlock);

    v18 = a2;
    static DispatchQoS.unspecified.getter();
    v23 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v20 = v9;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v13, v8, v17);
    _Block_release(v17);
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v20);
  }

  return result;
}

uint64_t closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + *(*result + 296));
    v15 = result;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = v15;
    v21 = v15;
    v16[4] = a2;
    aBlock[4] = partial apply for closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_660;
    v17 = _Block_copy(aBlock);

    v18 = a2;
    static DispatchQoS.unspecified.getter();
    v23 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v20 = v9;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v13, v8, v17);
    _Block_release(v17);
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v20);
  }

  return result;
}

void specialized closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, int a2, id a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_32;
      }

      MEMORY[0x1EEE9AC00](1);
      type metadata accessor for AnyGroupActivity(0);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_getKeyPath();
      static Published.subscript.getter();

      outlined consume of GroupSession<A>.State<A>(v26);
      if (v26 < 2)
      {
        specialized GroupSession.internalState.willset(1);
        MEMORY[0x1EEE9AC00](v12);
        v13 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v13);
        swift_getKeyPath();
        v26 = 1;
        goto LABEL_16;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.default);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 136315138;
        v26 = v18;
        goto LABEL_25;
      }
    }

    else
    {
      v7 = MEMORY[0x1EEE9AC00](0);
      type metadata accessor for AnyGroupActivity(v7);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
      v8 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v8);
      swift_getKeyPath();
      static Published.subscript.getter();

      outlined consume of GroupSession<A>.State<A>(v26);
      if (v26 < 2)
      {
        specialized GroupSession.internalState.willset(0);
        MEMORY[0x1EEE9AC00](v9);
        v10 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v10);
        swift_getKeyPath();
        v26 = 0;
LABEL_16:

        static Published.subscript.setter();
        specialized GroupSession.updatePublicState()(partial apply for specialized closure #1 in GroupSession.updatePublicState(), &block_descriptor_494);
        return;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.default);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
LABEL_25:
        type metadata accessor for CPActivitySessionState(0);
        v20 = String.init<A>(reflecting:)();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_1AEE80000, v15, v16, "Received state update (%s) while session is invalid, ignoring this update", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1B2715BA0](v18, -1, -1);
        MEMORY[0x1B2715BA0](v17, -1, -1);
      }
    }

    return;
  }

  if (a1 == 2)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      v23 = swift_allocError();
      a3 = 0;
      v5 = v23;
      *v24 = 2;
    }

    v25 = a3;
    v3 = v5;
    goto LABEL_29;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      v3 = swift_allocError();
      v5 = v3;
      v6 = 8;
      goto LABEL_12;
    }

LABEL_32:
    _StringGuts.grow(_:)(17);
    MEMORY[0x1B27141F0](0x206E776F6E6B6E55, 0xEF203A6574617473);
    type metadata accessor for CPActivitySessionState(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
  v3 = swift_allocError();
  v5 = v3;
  v6 = 6;
LABEL_12:
  *v4 = v6;
LABEL_29:
  specialized GroupSession.invalidate(reason:)(v3);
}

void closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, int a2, NSObject *a3)
{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        if (a3)
        {
          v5 = a3;
        }

        else
        {
          lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
          v16 = swift_allocError();
          a3 = 0;
          v5 = v16;
          *v17 = 2;
        }

        v18 = a3;
        v3 = v5;
        goto LABEL_31;
      case 4:
        lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
        v3 = swift_allocError();
        v5 = v3;
        v6 = 6;
LABEL_15:
        *v4 = v6;
LABEL_31:
        GroupSession.invalidate(reason:)(v3);
        v15 = v5;

LABEL_26:

        return;
      case 5:
        lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
        v3 = swift_allocError();
        v5 = v3;
        v6 = 8;
        goto LABEL_15;
    }

    goto LABEL_34;
  }

  if (!a1)
  {
    GroupSession.internalState.getter();
    outlined consume of GroupSession<A>.State<A>(v20);
    if (v20 > 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.default);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v20 = v10;
        *v9 = 136315138;
LABEL_22:
        type metadata accessor for CPActivitySessionState(0);
        v12 = String.init<A>(reflecting:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_1AEE80000, oslog, v8, "Received state update (%s) while session is invalid, ignoring this update", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x1B2715BA0](v10, -1, -1);
        MEMORY[0x1B2715BA0](v9, -1, -1);

        return;
      }

      goto LABEL_24;
    }

    v20 = 0;
    goto LABEL_28;
  }

  if (a1 == 1)
  {
    GroupSession.internalState.getter();
    outlined consume of GroupSession<A>.State<A>(v20);
    if (v20 > 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 136315138;
        v20 = v10;
        goto LABEL_22;
      }

LABEL_24:
      v15 = oslog;

      goto LABEL_26;
    }

    v20 = 1;
LABEL_28:
    GroupSession.internalState.setter(&v20);
    return;
  }

LABEL_34:
  _StringGuts.grow(_:)(17);
  MEMORY[0x1B27141F0](0x206E776F6E6B6E55, 0xEF203A6574617473);
  type metadata accessor for CPActivitySessionState(0);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized closure #6 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + direct field offset for GroupSession.linkManager);
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x170);
    v3 = v1;
    v4 = swift_unknownObjectRetain();
    v2(v4);
  }
}

uint64_t specialized closure #7 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v94 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  v4 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v6 = &v89 - v5;
  v7 = type metadata accessor for URL();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v89 - v12;
  v13 = type metadata accessor for Participant();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v89 - v25;
  v27 = type metadata accessor for UUID();
  v100 = *(v27 - 8);
  v101 = v27;
  v28 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v99 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for String.Encoding();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v33 = result;
  static String.Encoding.utf8.getter();
  v34 = String.init(data:encoding:)();
  if (!v35)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_9:
      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Log.default);
      v40 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v40, v47))
      {
LABEL_29:
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1AEE80000, v40, v47, "Failed to find attachmentID from metadata", v48, 2u);
      v45 = v48;
LABEL_11:
      MEMORY[0x1B2715BA0](v45, -1, -1);
      goto LABEL_29;
    }

LABEL_37:
    swift_once();
    goto LABEL_9;
  }

  v36 = v35;
  v90 = v34;
  UUID.init(uuidString:)();
  v37 = v100;
  v38 = v101;
  if ((*(v100 + 48))(v26, 1, v101) == 1)
  {
    outlined destroy of NSObject?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Log.default);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v40, v41))
    {

      goto LABEL_29;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v102[0] = v43;
    *v42 = 136315138;
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v36, v102);

    *(v42 + 4) = v44;
    _os_log_impl(&dword_1AEE80000, v40, v41, "Failed to convert attachmentID: %s to UUID.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B2715BA0](v43, -1, -1);
    v45 = v42;
    goto LABEL_11;
  }

  v89 = v6;

  v49 = (*(v37 + 32))(v99, v26, v38);
  MEMORY[0x1EEE9AC00](v49);
  v50 = type metadata accessor for AnyGroupActivity(0);
  *(&v89 - 2) = v50;
  v51 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  *(&v89 - 1) = v51;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v89 - 2) = v50;
  *(&v89 - 1) = v51;
  swift_getKeyPath();
  v90 = v33;
  static Published.subscript.getter();

  v53 = v102[0];
  v54 = v102[0] + 56;
  v55 = 1 << *(v102[0] + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v102[0] + 56);
  v58 = (v55 + 63) >> 6;

  v59 = 0;
  v60 = v98;
  if (!v57)
  {
LABEL_16:
    while (1)
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v61 >= v58)
      {

        v62 = v91;
        (*(v14 + 56))(v91, 1, 1, v13);
        goto LABEL_23;
      }

      v57 = *(v54 + 8 * v61);
      ++v59;
      if (v57)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  while (1)
  {
    v61 = v59;
LABEL_19:
    outlined init with copy of Participant(*(v53 + 48) + *(v14 + 72) * (__clz(__rbit64(v57)) | (v61 << 6)), v21, type metadata accessor for Participant);
    outlined init with take of Participant(v21, v18, type metadata accessor for Participant);
    if (*&v18[v13[6]] == v60)
    {
      break;
    }

    v57 &= v57 - 1;
    outlined destroy of Participant(v18, type metadata accessor for Participant);
    v59 = v61;
    if (!v57)
    {
      goto LABEL_16;
    }
  }

  v62 = v91;
  outlined init with take of Participant(v18, v91, type metadata accessor for Participant);
  (*(v14 + 56))(v62, 0, 1, v13);
LABEL_23:

  v63 = (*(v14 + 48))(v62, 1, v13);
  v64 = v92;
  if (v63 == 1)
  {
    outlined destroy of NSObject?(v62, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Log.default);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v102[0] = v69;
      *v68 = 134218242;
      v70 = v98;
      *(v68 + 4) = v98;
      *(v68 + 12) = 2080;
      v71 = specialized GroupSession.description.getter();
      v73 = v72;

      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v102);

      *(v68 + 14) = v74;
      v75 = v70;
      _os_log_impl(&dword_1AEE80000, v66, v67, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v68, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x1B2715BA0](v69, -1, -1);
      MEMORY[0x1B2715BA0](v68, -1, -1);
    }

    else
    {

      v75 = v98;
    }

    v76 = v100;
    UUID.init(_:)();
    *(v64 + v13[6]) = v75;
    v77 = (v64 + v13[5]);
    *v77 = 0;
    v77[1] = 0xE000000000000000;
    *(v64 + v13[8]) = 0;
    v78 = (v64 + v13[7]);
    *v78 = 0;
    v78[1] = 0;
    *(v64 + v13[9]) = 0;
  }

  else
  {
    outlined init with take of Participant(v62, v92, type metadata accessor for Participant);
    v76 = v100;
  }

  v79 = direct field offset for GroupSession._receivedAttachmentPublisher;
  v80 = v90;
  swift_beginAccess();
  v81 = *(v80 + v79);

  v82 = [v94 URL];
  v83 = v93;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = *(v97 + 48);
  v85 = *(v97 + 64);
  v86 = v89;
  v87 = v99;
  v88 = v101;
  (*(v76 + 16))(v89, v99, v101);
  (*(v95 + 32))(v86 + v84, v83, v96);
  outlined init with copy of Participant(v64, v86 + v85, type metadata accessor for Participant);
  PassthroughSubject.send(_:)();

  outlined destroy of NSObject?(v86, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  outlined destroy of Participant(v64, type metadata accessor for Participant);
  return (*(v76 + 8))(v87, v88);
}

uint64_t closure #7 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v93 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  v4 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v90 - v5;
  v6 = type metadata accessor for URL();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v90 - v11;
  v102 = type metadata accessor for Participant();
  v13 = *(v102 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v102);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v90 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v90 - v24;
  v26 = type metadata accessor for UUID();
  v99 = *(v26 - 8);
  v100 = v26;
  v27 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for String.Encoding();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v32 = result;
  static String.Encoding.utf8.getter();
  v33 = String.init(data:encoding:)();
  if (!v34)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_9:
      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Log.default);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1AEE80000, v46, v47, "Failed to find attachmentID from metadata", v48, 2u);
        MEMORY[0x1B2715BA0](v48, -1, -1);
      }
    }

LABEL_38:
    swift_once();
    goto LABEL_9;
  }

  v35 = v33;
  v36 = v34;
  v90 = v12;
  UUID.init(uuidString:)();
  v38 = v99;
  v37 = v100;
  if ((*(v99 + 48))(v25, 1, v100) == 1)
  {
    outlined destroy of NSObject?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Log.default);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v103[0] = v43;
      *v42 = 136315138;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v103);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_1AEE80000, v40, v41, "Failed to convert attachmentID: %s to UUID.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B2715BA0](v43, -1, -1);
      MEMORY[0x1B2715BA0](v42, -1, -1);
    }

    else
    {
    }
  }

  (*(v38 + 32))(v98, v25, v37);
  v49 = GroupSession.activeParticipants.getter();
  v50 = v49;
  v51 = v49 + 56;
  v52 = 1 << *(v49 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v49 + 56);
  v55 = (v52 + 63) >> 6;

  v56 = 0;
  v57 = v90;
  if (!v54)
  {
LABEL_16:
    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v58 >= v55)
      {

        v59 = *(v13 + 56);
        v60 = v57;
        v61 = 1;
        goto LABEL_23;
      }

      v54 = *(v51 + 8 * v58);
      ++v56;
      if (v54)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  while (1)
  {
    v58 = v56;
LABEL_19:
    outlined init with copy of Participant(*(v50 + 48) + *(v13 + 72) * (__clz(__rbit64(v54)) | (v58 << 6)), v20, type metadata accessor for Participant);
    outlined init with take of Participant(v20, v17, type metadata accessor for Participant);
    if (*&v17[*(v102 + 24)] == v101)
    {
      break;
    }

    v54 &= v54 - 1;
    outlined destroy of Participant(v17, type metadata accessor for Participant);
    v56 = v58;
    if (!v54)
    {
      goto LABEL_16;
    }
  }

  outlined init with take of Participant(v17, v57, type metadata accessor for Participant);
  v59 = *(v13 + 56);
  v60 = v57;
  v61 = 0;
LABEL_23:
  v62 = v102;
  v59(v60, v61, 1, v102);
  v63 = v32;

  v64 = (*(v13 + 48))(v57, 1, v62);
  v65 = v91;
  if (v64 == 1)
  {
    outlined destroy of NSObject?(v57, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    v66 = v99;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Log.default);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v101;
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v103[0] = v73;
      *v72 = 134218242;
      *(v72 + 4) = v71;
      *(v72 + 12) = 2080;
      v74 = GroupSession.description.getter();
      v76 = v75;

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v103);

      *(v72 + 14) = v77;
      _os_log_impl(&dword_1AEE80000, v68, v69, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v72, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x1B2715BA0](v73, -1, -1);
      v78 = v72;
      v62 = v102;
      MEMORY[0x1B2715BA0](v78, -1, -1);
    }

    else
    {
    }

    UUID.init(_:)();
    *(v65 + v62[6]) = v71;
    v79 = (v65 + v62[5]);
    *v79 = 0;
    v79[1] = 0xE000000000000000;
    *(v65 + v62[8]) = 0;
    v80 = (v65 + v62[7]);
    *v80 = 0;
    v80[1] = 0;
    *(v65 + v62[9]) = 0;
  }

  else
  {
    outlined init with take of Participant(v57, v91, type metadata accessor for Participant);
    v66 = v99;
  }

  v81 = direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  v82 = *(v63 + v81);

  v83 = [v93 URL];
  v84 = v92;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = v97;
  v86 = *(v96 + 48);
  v87 = *(v96 + 64);
  v88 = v98;
  v89 = v100;
  (*(v66 + 16))(v97, v98, v100);
  (*(v94 + 32))(v85 + v86, v84, v95);
  outlined init with copy of Participant(v65, v85 + v87, type metadata accessor for Participant);
  PassthroughSubject.send(_:)();

  outlined destroy of NSObject?(v85, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  outlined destroy of Participant(v65, type metadata accessor for Participant);
  return (*(v66 + 8))(v88, v89);
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v23 = type metadata accessor for Participant();
  v26 = *(v23 - 8);
  v5 = *(v26 + 64);
  v6 = MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      outlined init with copy of Participant(*(a2 + 48) + *(v26 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10, type metadata accessor for Participant);
      outlined init with take of Participant(v10, v8, type metadata accessor for Participant);
      v18 = v25(v8);
      if (v3)
      {
        outlined destroy of Participant(v8, type metadata accessor for Participant);
      }

      if (v18)
      {
        break;
      }

      v13 &= v13 - 1;
      result = outlined destroy of Participant(v8, type metadata accessor for Participant);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    outlined init with take of Participant(v8, v24, type metadata accessor for Participant);
    v20 = v21;
    v19 = 0;
    return (*(v26 + 56))(v20, v19, 1, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v19 = 1;
        v20 = v24;
        return (*(v26 + 56))(v20, v19, 1, v23);
      }

      v13 = *(a2 + 56 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AnyGroupActivity(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1AEE80000, v15, v16, "GroupSession updating activity to %@", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v18, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v20);
  tryLog<A>(_:_:function:line:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  else
  {
    v22 = outlined init with take of Participant(v7, v12, type metadata accessor for AnyGroupActivity);
    MEMORY[0x1EEE9AC00](v22);
    tryLog<A>(_:_:function:line:)();
    return outlined destroy of Participant(v12, type metadata accessor for AnyGroupActivity);
  }
}

uint64_t closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for AnyGroupActivity(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = a3;
    v22 = a2;
    v23 = a4;
    v24 = v21;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v18;
    *v25 = v18;
    v26 = v18;
    _os_log_impl(&dword_1AEE80000, v19, v20, "GroupSession updating activity to %@", v24, 0xCu);
    outlined destroy of NSObject?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v25, -1, -1);
    v27 = v24;
    a4 = v23;
    a2 = v22;
    a3 = v33;
    MEMORY[0x1B2715BA0](v27, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v28);
  v32 = v12;
  tryLog<A>(_:_:function:line:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v11, &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  else
  {
    v30 = v34;
    v31 = outlined init with take of Participant(v11, v34, type metadata accessor for AnyGroupActivity);
    MEMORY[0x1EEE9AC00](v31);
    *(&v33 - 4) = a2;
    *(&v33 - 3) = a3;
    v32 = a2;
    tryLog<A>(_:_:function:line:)();
    return outlined destroy of Participant(v30, type metadata accessor for AnyGroupActivity);
  }
}

uint64_t specialized implicit closure #3 in closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyGroupActivity(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Participant(a1, v7, type metadata accessor for AnyGroupActivity);
  return _s15GroupActivities0A8ActivityPAAE8activityxAA03AnyaC0V_tKcfCAF_Tt1g5(v7, a2);
}

uint64_t implicit closure #3 in closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AnyGroupActivity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Participant(a1, v11, type metadata accessor for AnyGroupActivity);
  return GroupActivity.init(activity:)(v11, a2, a3, a4);
}

uint64_t _s15GroupActivities0A8ActivityPAAE8activityxAA03AnyaC0V_tKcfCAF_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for AnyGroupActivity(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = swift_conformsToProtocol2();
  if (v8 && (v16 = v15) != 0)
  {
    v26 = v9;
    MEMORY[0x1EEE9AC00](v15);
    outlined init with copy of Participant(a1, v14, type metadata accessor for AnyGroupActivity);
    (*(v16 + 8))(v14, v8, v16);
    if (v2)
    {
      return outlined destroy of Participant(a1, type metadata accessor for AnyGroupActivity);
    }

    else if (swift_dynamicCast())
    {
      outlined destroy of Participant(a1, type metadata accessor for AnyGroupActivity);
      (*(v26 + 56))(v7, 0, 1, v8);
      return outlined init with take of Participant(v7, v29, type metadata accessor for AnyGroupActivity);
    }

    else
    {
      (*(v26 + 56))(v7, 1, 1, v8);
      outlined destroy of NSObject?(v7, &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v27 = 0xD00000000000001DLL;
      v28 = 0x80000001AF01AEE0;
      swift_getMetatypeMetadata();
      v24 = _typeName(_:qualified:)();
      MEMORY[0x1B27141F0](v24);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v18 = type metadata accessor for PropertyListDecoder();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v21 = (a1 + *(v8 + 24));
    v22 = *v21;
    v23 = v21[1];
    outlined copy of Data._Representation(*v21, v23);
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined destroy of Participant(a1, type metadata accessor for AnyGroupActivity);
    outlined consume of Data._Representation(v22, v23);

    if (!v2)
    {
      return outlined init with take of Participant(v12, v29, type metadata accessor for AnyGroupActivity);
    }
  }

  return result;
}

uint64_t *specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v103 = a6;
  v100 = a4;
  v108 = a3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
  v9 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v90 - v10;
  v11 = type metadata accessor for InternalParticipant();
  v96 = *(v11 - 8);
  v12 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Participant();
  v14 = *(*(v98 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v98);
  v95 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v90 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for OSSignpostID();
  v105 = *(v102 - 8);
  v23 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OSSignposter();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signposts.messenger.getter();
  static Signposts.messengerSignpostIdentifier(forPayload:)();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v31);
  (*(v19 + 16))(v22, a5, v18);
  v32 = OSSignposter.logHandle.getter();
  v99 = static os_signpost_type_t.event.getter();
  v106 = a1;
  v33 = a1;
  v34 = a2;
  outlined consume of Data._Representation(v33, a2);
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v19 + 8))(v22, v18);
    (*(v105 + 8))(v25, v102);
    (*(v27 + 8))(v30, v26);
    v43 = v104;
    goto LABEL_15;
  }

  v91 = v32;
  v92 = v22;
  v35 = v19;
  v93 = v30;
  v36 = v105;
  v37 = swift_slowAlloc();
  result = swift_slowAlloc();
  v90 = result;
  v110 = result;
  *v37 = 134218498;
  v39 = v34 >> 62;
  v94 = v34;
  if ((v34 >> 62) <= 1)
  {
    v40 = v36;
    v41 = v18;
    if (!v39)
    {
      v42 = BYTE6(v34);
LABEL_13:
      v47 = v26;
      v49 = v27;
      v48 = v35;
      goto LABEL_14;
    }

    LODWORD(v42) = HIDWORD(v106) - v106;
    if (!__OFSUB__(HIDWORD(v106), v106))
    {
      v47 = v26;
      v48 = v35;
      v42 = v42;
      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v40 = v36;
  v41 = v18;
  if (v39 != 2)
  {
    v42 = 0;
    goto LABEL_13;
  }

  v45 = *(v106 + 16);
  v44 = *(v106 + 24);
  v46 = __OFSUB__(v44, v45);
  v42 = v44 - v45;
  if (v46)
  {
    __break(1u);
    goto LABEL_31;
  }

  v47 = v26;
  v48 = v35;
LABEL_11:
  v49 = v27;
LABEL_14:
  v50 = v92;
  *(v37 + 4) = v42;
  *(v37 + 12) = 2080;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v52;
  (*(v48 + 8))(v50, v41);
  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v110);

  *(v37 + 14) = v54;
  *(v37 + 22) = 2048;
  *(v37 + 24) = v108;
  v55 = OSSignpostID.rawValue.getter();
  v56 = v91;
  _os_signpost_emit_with_name_impl(&dword_1AEE80000, v91, v99, v55, "group-session-messenger-receive", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu", v37, 0x20u);
  v57 = v90;
  __swift_destroy_boxed_opaque_existential_0(v90);
  MEMORY[0x1B2715BA0](v57, -1, -1);
  MEMORY[0x1B2715BA0](v37, -1, -1);

  (*(v40 + 8))(v25, v102);
  (*(v49 + 8))(v93, v47);
  v43 = v104;
  v34 = v94;
LABEL_15:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v58 = v107;
  if (result)
  {
    v59 = result;
    v60 = v100 & 1;
    v61 = v108;
    if ((v100 & 1) == 0)
    {
      v62 = result + direct field offset for GroupSession.receivedDataHandler;
      swift_beginAccess();
      v63 = *v62;
      if (*v62)
      {
        v64 = *(v62 + 1);

        v63(v106, v34, v61);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v63);
      }
    }

    v65 = (v59 + *(*v59 + 384));
    os_unfair_lock_lock(v65);
    v66 = *&v65[2]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v65);
    if (*(v66 + 16) && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v61), (v68 & 1) != 0))
    {
      v69 = v97;
      outlined init with copy of Participant(*(v66 + 56) + *(v96 + 72) * v67, v97, type metadata accessor for InternalParticipant);

      v70 = v95;
      outlined init with take of Participant(v69, v95, type metadata accessor for Participant);
      outlined init with take of Participant(v70, v58, type metadata accessor for Participant);
    }

    else
    {

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static Log.default);

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v109 = v75;
        *v74 = 134218242;
        *(v74 + 4) = v61;
        *(v74 + 12) = 2080;
        v76 = specialized GroupSession.description.getter();
        v77 = v34;
        v79 = v78;

        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v79, &v109);
        v34 = v77;
        v61 = v108;

        *(v74 + 14) = v80;
        _os_log_impl(&dword_1AEE80000, v72, v73, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v74, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v75);
        v81 = v75;
        v58 = v107;
        MEMORY[0x1B2715BA0](v81, -1, -1);
        MEMORY[0x1B2715BA0](v74, -1, -1);
      }

      else
      {
      }

      UUID.init(_:)();
      v82 = v98;
      *(v58 + *(v98 + 24)) = v61;
      v83 = (v58 + v82[5]);
      *v83 = 0;
      v83[1] = 0xE000000000000000;
      *(v58 + v82[8]) = 0;
      v84 = (v58 + v82[7]);
      *v84 = 0;
      v84[1] = 0;
      *(v58 + v82[9]) = 0;
    }

    v85 = direct field offset for GroupSession._receivedDataPublisher;
    swift_beginAccess();
    v86 = *(v59 + v85);
    v87 = *(v101 + 48);
    v88 = *(v101 + 64);
    v89 = v106;
    *v43 = v106;
    v43[1] = v34;
    outlined init with copy of Participant(v58, v43 + v87, type metadata accessor for Participant);
    *(v43 + v88) = v60;
    outlined copy of Data._Representation(v89, v34);

    PassthroughSubject.send(_:)();

    outlined destroy of NSObject?(v43, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
    return outlined destroy of Participant(v58, type metadata accessor for Participant);
  }

  return result;
}

uint64_t *closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v99 = a6;
  v102 = a5;
  v103 = a3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
  v9 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v101 = &v85 - v10;
  v11 = type metadata accessor for InternalParticipant();
  v92 = *(v11 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Participant();
  v14 = *(*(v94 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v94);
  v91 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v85 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OSSignpostID();
  v97 = *(v23 - 8);
  v98 = v23;
  v24 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OSSignposter();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *a4;
  static Signposts.messenger.getter();
  static Signposts.messengerSignpostIdentifier(forPayload:)();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v32);
  (*(v19 + 16))(v22, v102, v18);
  v33 = OSSignposter.logHandle.getter();
  v95 = static os_signpost_type_t.event.getter();
  v102 = a1;
  v34 = a1;
  v35 = a2;
  outlined consume of Data._Representation(v34, a2);
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v19 + 8))(v22, v18);
    (*(v97 + 8))(v26, v98);
    (*(v28 + 8))(v31, v27);
    v40 = v103;
    v43 = v101;
    goto LABEL_15;
  }

  v88 = v33;
  v36 = v19;
  v89 = v31;
  v37 = swift_slowAlloc();
  result = swift_slowAlloc();
  v86 = result;
  v105[0] = result;
  *v37 = 134218498;
  v39 = a2 >> 62;
  v90 = a2;
  v87 = v27;
  if ((a2 >> 62) <= 1)
  {
    v40 = v103;
    v41 = v18;
    if (!v39)
    {
      v42 = BYTE6(v35);
LABEL_13:
      v47 = v28;
      v49 = v26;
      v48 = v36;
      goto LABEL_14;
    }

    LODWORD(v42) = HIDWORD(v102) - v102;
    if (!__OFSUB__(HIDWORD(v102), v102))
    {
      v47 = v28;
      v48 = v36;
      v42 = v42;
      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v40 = v103;
  v41 = v18;
  if (v39 != 2)
  {
    v42 = 0;
    goto LABEL_13;
  }

  v45 = *(v102 + 16);
  v44 = *(v102 + 24);
  v46 = __OFSUB__(v44, v45);
  v42 = v44 - v45;
  if (v46)
  {
    __break(1u);
    goto LABEL_31;
  }

  v47 = v28;
  v48 = v36;
LABEL_11:
  v49 = v26;
LABEL_14:
  *(v37 + 4) = v42;
  *(v37 + 12) = 2080;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  v52 = v51;
  (*(v48 + 8))(v22, v41);
  v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v105);

  *(v37 + 14) = v53;
  *(v37 + 22) = 2048;
  *(v37 + 24) = v40;
  v54 = OSSignpostID.rawValue.getter();
  v55 = v88;
  _os_signpost_emit_with_name_impl(&dword_1AEE80000, v88, v95, v54, "group-session-messenger-receive", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu", v37, 0x20u);
  v56 = v86;
  __swift_destroy_boxed_opaque_existential_0(v86);
  MEMORY[0x1B2715BA0](v56, -1, -1);
  MEMORY[0x1B2715BA0](v37, -1, -1);

  (*(v97 + 8))(v49, v98);
  (*(v47 + 8))(v89, v87);
  v43 = v101;
  v35 = v90;
LABEL_15:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v57 = v100;
  if (result)
  {
    v58 = result;
    if ((v104 & 1) == 0)
    {
      v59 = result + direct field offset for GroupSession.receivedDataHandler;
      swift_beginAccess();
      v60 = *v59;
      if (*v59)
      {
        v61 = *(v59 + 1);

        v60(v102, v35, v40);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v60);
      }
    }

    active = GroupSession.internalActiveParticipants.getter();
    if (*(active + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(v40), (v64 & 1) != 0))
    {
      v65 = v93;
      outlined init with copy of Participant(*(active + 56) + *(v92 + 72) * v63, v93, type metadata accessor for InternalParticipant);

      v66 = v91;
      outlined init with take of Participant(v65, v91, type metadata accessor for Participant);
      outlined init with take of Participant(v66, v57, type metadata accessor for Participant);
    }

    else
    {

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Log.default);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v105[0] = v71;
        *v70 = 134218242;
        *(v70 + 4) = v40;
        *(v70 + 12) = 2080;
        v72 = GroupSession.description.getter();
        v73 = v35;
        v75 = v74;

        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v75, v105);
        v35 = v73;
        v40 = v103;

        *(v70 + 14) = v76;
        _os_log_impl(&dword_1AEE80000, v68, v69, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v70, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x1B2715BA0](v71, -1, -1);
        MEMORY[0x1B2715BA0](v70, -1, -1);
      }

      else
      {
      }

      UUID.init(_:)();
      v77 = v94;
      *(v57 + *(v94 + 24)) = v40;
      v78 = (v57 + v77[5]);
      *v78 = 0;
      v78[1] = 0xE000000000000000;
      *(v57 + v77[8]) = 0;
      v79 = (v57 + v77[7]);
      *v79 = 0;
      v79[1] = 0;
      *(v57 + v77[9]) = 0;
    }

    v80 = direct field offset for GroupSession._receivedDataPublisher;
    swift_beginAccess();
    v81 = *(v58 + v80);
    v82 = *(v96 + 48);
    v83 = *(v96 + 64);
    v84 = v102;
    *v43 = v102;
    v43[1] = v35;
    outlined init with copy of Participant(v57, v43 + v82, type metadata accessor for Participant);
    *(v43 + v83) = v104;
    outlined copy of Data._Representation(v84, v35);

    PassthroughSubject.send(_:)();

    outlined destroy of NSObject?(v43, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
    return outlined destroy of Participant(v57, type metadata accessor for Participant);
  }

  return result;
}

uint64_t specialized closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    specialized GroupSession.updatePublicState()(partial apply for specialized closure #1 in GroupSession.updatePublicState(), &block_descriptor_494);
    v14 = *(*v13 + 336);
    swift_beginAccess();
    outlined init with copy of URL?(v13 + v14, v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return outlined destroy of NSObject?(v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      MEMORY[0x1B2712F70](v11);
      (*(v8 + 8))(v11, v7);
      (*(v8 + 56))(v4, 1, 1, v7);
      swift_beginAccess();
      outlined assign with take of SharePlayLatencyLogger.Interval?(v4, v13 + v14);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    GroupSession.updatePublicState()();
    v14 = *(*v13 + 336);
    swift_beginAccess();
    outlined init with copy of URL?(v13 + v14, v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return outlined destroy of NSObject?(v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      MEMORY[0x1B2712F70](v11);
      (*(v8 + 8))(v11, v7);
      (*(v8 + 56))(v4, 1, 1, v7);
      swift_beginAccess();
      outlined assign with take of SharePlayLatencyLogger.Interval?(v4, v13 + v14);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t specialized closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InternalParticipant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v44 = v8;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v45 = __swift_project_value_buffer(v21, static Log.default);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = v3;
      v25 = v11;
      v26 = v18;
      v27 = v2;
      v28 = v6;
      v29 = a1;
      v30 = v24;
      *v24 = 134217984;
      *(v24 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v22, v23, "Catchup needed. Leader participant id:%llu", v24, 0xCu);
      v31 = v30;
      a1 = v29;
      v6 = v28;
      v2 = v27;
      v18 = v26;
      v11 = v25;
      v3 = v43;
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    v32 = v20 + *(*v20 + 384);
    os_unfair_lock_lock(v32);
    v33 = *(v32 + 8);

    os_unfair_lock_unlock(v32);
    if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v35 & 1) != 0))
    {
      outlined init with copy of Participant(*(v33 + 56) + *(v44 + 72) * v34, v11, type metadata accessor for InternalParticipant);

      outlined init with take of Participant(v11, v18, type metadata accessor for Participant);
      v36 = 0;
    }

    else
    {

      v36 = 1;
    }

    (*(v3 + 56))(v18, v36, 1, v2);
    outlined init with copy of URL?(v18, v16, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    if ((*(v3 + 48))(v16, 1, v2) == 1)
    {
      outlined destroy of NSObject?(v16, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = a1;
        _os_log_impl(&dword_1AEE80000, v37, v38, "ParticipantID:%llu was not found.", v39, 0xCu);
        MEMORY[0x1B2715BA0](v39, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      outlined init with take of Participant(v16, v6, type metadata accessor for Participant);
      v40 = direct field offset for GroupSession._catchupNeededPublisher;
      swift_beginAccess();
      v41 = *(v20 + v40);

      PassthroughSubject.send(_:)();

      outlined destroy of Participant(v6, type metadata accessor for Participant);
    }

    return outlined destroy of NSObject?(v18, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  }

  return result;
}

uint64_t closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InternalParticipant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v44 = v8;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v45 = __swift_project_value_buffer(v21, static Log.default);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = v20;
      v25 = v11;
      v26 = v3;
      v27 = v18;
      v28 = v2;
      v29 = v6;
      v30 = a1;
      v31 = v24;
      *v24 = 134217984;
      *(v24 + 4) = v30;
      _os_log_impl(&dword_1AEE80000, v22, v23, "Catchup needed. Leader participant id:%llu", v24, 0xCu);
      v32 = v31;
      a1 = v30;
      v6 = v29;
      v2 = v28;
      v18 = v27;
      v3 = v26;
      v11 = v25;
      v20 = v43;
      MEMORY[0x1B2715BA0](v32, -1, -1);
    }

    active = GroupSession.internalActiveParticipants.getter();
    if (*(active + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v35 & 1) != 0))
    {
      outlined init with copy of Participant(*(active + 56) + *(v44 + 72) * v34, v11, type metadata accessor for InternalParticipant);

      outlined init with copy of Participant(v11, v18, type metadata accessor for Participant);
      outlined destroy of Participant(v11, type metadata accessor for InternalParticipant);
      v36 = 0;
    }

    else
    {

      v36 = 1;
    }

    (*(v3 + 56))(v18, v36, 1, v2);
    outlined init with copy of URL?(v18, v16, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    if ((*(v3 + 48))(v16, 1, v2) == 1)
    {
      outlined destroy of NSObject?(v16, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = a1;
        _os_log_impl(&dword_1AEE80000, v37, v38, "ParticipantID:%llu was not found.", v39, 0xCu);
        MEMORY[0x1B2715BA0](v39, -1, -1);
      }
    }

    else
    {
      outlined init with take of Participant(v16, v6, type metadata accessor for Participant);
      v40 = direct field offset for GroupSession._catchupNeededPublisher;
      swift_beginAccess();
      v41 = *(v20 + v40);

      PassthroughSubject.send(_:)();

      outlined destroy of Participant(v6, type metadata accessor for Participant);
    }

    return outlined destroy of NSObject?(v18, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  }

  return result;
}

uint64_t specialized closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        v9 = String.init<A>(reflecting:)();
        v11 = v10;
      }

      else
      {
        v11 = 0xE300000000000000;
        v9 = 7104878;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, aBlock);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Requesting encryption-keys for participantIDs=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v13 = *(v3 + *(*v3 + 296));
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = a1;
    v15 = swift_allocObject();
    *(v15 + 16) = closure #1 in GroupSession.requestEncryptionKey(for:)specialized partial apply;
    *(v15 + 24) = v14;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_515;
    v16 = _Block_copy(aBlock);

    dispatch_sync(v13, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall GroupSession.requestEncryptionKey(for:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = *(v1 + *(*v1 + 296));
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = rawValue;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in GroupSession.requestEncryptionKey(for:);
  *(v5 + 24) = v4;
  v7[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_140;
  v6 = _Block_copy(v7);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

uint64_t specialized closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v40 = v14;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = v13;
    v42 = v9;
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = a6;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39 = v8;
      v27 = v26;
      v46 = a1;
      aBlock[0] = v26;
      *v25 = 136315138;
      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, aBlock);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v22, v23, v43, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v32 = v27;
      v8 = v39;
      MEMORY[0x1B2715BA0](v32, -1, -1);
      v33 = v25;
      a6 = v38;
      MEMORY[0x1B2715BA0](v33, -1, -1);
    }

    v34 = *(v19 + *(*v19 + 296));
    v35 = swift_allocObject();
    *(v35 + 16) = v19;
    *(v35 + 24) = a1;
    aBlock[4] = v45;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = a6;
    v36 = _Block_copy(aBlock);
    v37 = a1;

    static DispatchQoS.unspecified.getter();
    v46 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v17, v12, v36);
    _Block_release(v36);
    (*(v42 + 8))(v12, v8);
    (*(v40 + 8))(v17, v41);
  }

  return result;
}

uint64_t closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a6;
  v47 = a7;
  v45 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v42 = v16;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = v15;
    v44 = v11;
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.default);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = a8;
      v27 = v26;
      v28 = swift_slowAlloc();
      v41 = v10;
      v29 = v28;
      v48 = a1;
      aBlock[0] = v28;
      *v27 = 136315138;
      v30 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v31 = String.init<A>(reflecting:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, aBlock);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1AEE80000, v24, v25, v45, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v34 = v29;
      v10 = v41;
      MEMORY[0x1B2715BA0](v34, -1, -1);
      v35 = v27;
      a8 = v40;
      MEMORY[0x1B2715BA0](v35, -1, -1);
    }

    v36 = *(v21 + *(*v21 + 296));
    v37 = swift_allocObject();
    *(v37 + 16) = v21;
    *(v37 + 24) = a1;
    aBlock[4] = v47;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = a8;
    v38 = _Block_copy(aBlock);
    v39 = a1;

    static DispatchQoS.unspecified.getter();
    v48 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v19, v14, v38);
    _Block_release(v38);
    (*(v44 + 8))(v14, v10);
    (*(v42 + 8))(v19, v43);
  }

  return result;
}

uint64_t specialized closure #15 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        v9 = String.init<A>(reflecting:)();
        v11 = v10;
      }

      else
      {
        v11 = 0xE300000000000000;
        v9 = 7104878;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, aBlock);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Requesting encryption-keys for participantIDs=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v13 = *(v3 + *(*v3 + 296));
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = a1;
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for specialized closure #1 in GroupSession.requestEncryptionKey(for:);
    *(v15 + 24) = v14;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_475;
    v16 = _Block_copy(aBlock);

    dispatch_sync(v13, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        v8 = String.init<A>(reflecting:)();
        v10 = v9;
      }

      else
      {
        v10 = 0xE300000000000000;
        v8 = 7104878;
      }

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Requesting encryption-keys for participantIDs=%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B2715BA0](v7, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    v13.value._rawValue = a1;
    GroupSession.requestEncryptionKey(for:)(v13);
  }

  return result;
}

uint64_t closure #16 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    GroupSession.updateNearbyParticipants(_:)(a1);
  }

  return result;
}

uint64_t GroupSession.updateNearbyParticipants(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + v4[37]);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v4[10];
  v14[3] = v4[11];
  v14[4] = v13;
  v14[5] = a1;
  aBlock[4] = partial apply for closure #1 in GroupSession.updateNearbyParticipants(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_147;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v8, v15);
  _Block_release(v15);
  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

void closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v33[16] = a2;
  v34 = a3;
  v16 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #1 in closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v33, v15);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.default);
  (*(v11 + 16))(v14, a4, v10);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = a5;
    v22 = v21;
    v35[0] = v21;
    *v20 = 136315394;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v14, v10);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v35);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    type metadata accessor for InternalParticipant();
    v27 = Dictionary.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_1AEE80000, v18, v19, "New subscribed participants for group session %s: %s", v20, 0x16u);
    swift_arrayDestroy();
    v30 = v22;
    a5 = v32;
    MEMORY[0x1B2715BA0](v30, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  *a5 = v16;
}

int *closure #1 in closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Participant();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PubSubTopic.Participant();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13);
  LOBYTE(a3) = PubSubTopic.Participant.participantID.getter() == *(a3 + v9[8]);
  *&v12[v9[8]] = PubSubTopic.Participant.participantID.getter();
  UUID.init(_:)();
  v18 = &v12[v9[7]];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v19 = &v12[v9[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v12[v9[10]] = a2 & a3;
  v12[v9[11]] = 0;
  LOBYTE(a1) = PubSubTopic.Participant.isSaltVerified.getter();
  (*(v14 + 8))(v17, v13);
  outlined init with take of Participant(v12, a4, type metadata accessor for Participant);
  result = type metadata accessor for InternalParticipant();
  *(a4 + result[5]) = 0;
  *(a4 + result[6]) = a1 & 1;
  *(a4 + result[7]) = a3;
  return result;
}

int *InternalParticipant.init(_:isNearbyFaceTimeEnabled:isLocalParticipant:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Participant();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12[v9[8]] = PubSubTopic.Participant.participantID.getter();
  UUID.init(_:)();
  v13 = &v12[v9[7]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v12[v9[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v12[v9[10]] = a2 & a3;
  v12[v9[11]] = 0;
  v15 = PubSubTopic.Participant.isSaltVerified.getter();
  v16 = type metadata accessor for PubSubTopic.Participant();
  (*(*(v16 - 8) + 8))(a1, v16);
  outlined init with take of Participant(v12, a4, type metadata accessor for Participant);
  result = type metadata accessor for InternalParticipant();
  *(a4 + result[5]) = 0;
  *(a4 + result[6]) = v15 & 1;
  *(a4 + result[7]) = a3;
  return result;
}

uint64_t closure #18 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return GroupSession.MessageQueue.init(queueState:)(v7, a2);
}

uint64_t closure #20 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t *a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:)(v5, a2 & 1);
  }

  else
  {
  }

  *a3 = v5;
  return result;
}

uint64_t GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:)(uint64_t a1, int a2)
{
  v3 = v2;
  v131 = a2;
  v130 = type metadata accessor for Participant();
  v5 = *(*(v130 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v130);
  v129 = v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v128 = v125 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
  v9 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v11 = (v125 - v10);
  active = GroupSession.internalActiveParticipants.getter();
  v140 = a1;
  v13 = 0;
  v14 = specialized _NativeDictionary.filter(_:)(active, partial apply for closure #1 in GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143[0] = v14;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v143);

  v142 = v143[0];
  if (one-time initialization token for default != -1)
  {
    goto LABEL_65;
  }

LABEL_2:
  v16 = type metadata accessor for Logger();
  v137 = __swift_project_value_buffer(v16, static Log.default);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v136 = v3;
  v135 = v13;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v143[0] = v21;
    *v20 = 136315138;
    swift_beginAccess();
    type metadata accessor for InternalParticipant();

    v22 = Dictionary.description.getter();
    v24 = v23;

    v3 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v143);

    *(v20 + 4) = v3;
    _os_log_impl(&dword_1AEE80000, v17, v18, "[Translation] Updated internal participants %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  swift_beginAccess();
  v25 = v142;
  v26 = MEMORY[0x1E69E7CC0];
  v143[0] = MEMORY[0x1E69E7CC0];
  v27 = 1 << *(v142 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v13 = v28 & *(v142 + 64);
  v29 = (v27 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v30 = 0;
  v138 = v26;
  while (1)
  {
    v31 = v30;
    if (!v13)
    {
      break;
    }

LABEL_11:
    v32 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v33 = v32 | (v30 << 6);
    v34 = *(v25 + 56);
    v35 = *(*(v25 + 48) + 8 * v33);
    v36 = type metadata accessor for InternalParticipant();
    v37 = v34 + *(*(v36 - 1) + 72) * v33;
    v3 = v11 + *(v139 + 48);
    outlined init with copy of Participant(v37, v3, type metadata accessor for InternalParticipant);
    *v11 = v35;
    if (*(v3 + v36[5]) == 1)
    {
      outlined destroy of NSObject?(v11, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
    }

    else
    {
      v38 = *(v3 + v36[6]);
      v3 = *(v3 + v36[7]);
      v39 = objc_allocWithZone(type metadata accessor for ParticipantTranslationRequest());
      ParticipantTranslationRequest.init(aliasedIdentifier:isSaltVerified:isLocalParticipant:)();
      v40 = outlined destroy of NSObject?(v11, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      MEMORY[0x1B27142A0](v40);
      if (*((v143[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v3 = *((v143[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v138 = v143[0];
    }
  }

  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v30 >= v29)
    {
      break;
    }

    v13 = *(v25 + 64 + 8 * v30);
    ++v31;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v143[0] = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore29ParticipantTranslationRequestCGMd, &_sSay14CopresenceCore29ParticipantTranslationRequestCGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [ParticipantTranslationRequest] and conformance [A], &_sSay14CopresenceCore29ParticipantTranslationRequestCGMd, &_sSay14CopresenceCore29ParticipantTranslationRequestCGMR);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, MEMORY[0x1E69976A0]);
  v41 = Sequence<>.asSet()();

  if ((v41 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_18;
    }
  }

  else if (*(v41 + 16))
  {
LABEL_18:

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v143[0] = v45;
      *v44 = 136315138;
      type metadata accessor for ParticipantTranslationRequest();
      v46 = Set.description.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v143);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1AEE80000, v42, v43, "[Translation] New translation requests: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1B2715BA0](v45, -1, -1);
      MEMORY[0x1B2715BA0](v44, -1, -1);
    }

    v49 = v136;
    v50 = v135;
    v51 = *(*v136 + 288);
    swift_beginAccess();
    v52 = *&v49[v51];
    v53 = ActivitySessionClientConnection.requestParticipantTranslations(_:)();
    if (v50)
    {

      v54 = v50;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v143[0] = v58;
        *v57 = 136315394;
        type metadata accessor for ParticipantTranslationRequest();
        v59 = v50;
        v60 = Set.description.getter();
        v62 = v61;

        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v143);

        *(v57 + 4) = v63;
        *(v57 + 12) = 2080;
        v141[0] = v59;
        v64 = v59;
        v65 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v66 = String.init<A>(reflecting:)();
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v143);

        *(v57 + 14) = v68;
        _os_log_impl(&dword_1AEE80000, v55, v56, "[Translation] Failed to translate participants: %s, error: %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v58, -1, -1);
        MEMORY[0x1B2715BA0](v57, -1, -1);
      }

      else
      {
        v64 = v50;
      }

      if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore30ParticipantTranslationResponseC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v3 = v124;
      }

      else
      {

        v3 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v3 = v53;
    }

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    v71 = os_log_type_enabled(v69, v70);
    v125[1] = 0;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v143[0] = v73;
      *v72 = 136315138;
      type metadata accessor for ParticipantTranslationResponse();
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, MEMORY[0x1E69976B0]);
      v74 = Set.description.getter();
      v76 = v3;
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v143);

      *(v72 + 4) = v77;
      v3 = v76;
      _os_log_impl(&dword_1AEE80000, v69, v70, "[Translation] Translation results: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x1B2715BA0](v73, -1, -1);
      MEMORY[0x1B2715BA0](v72, -1, -1);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for ParticipantTranslationResponse();
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, MEMORY[0x1E69976B0]);
      Set.Iterator.init(_cocoa:)();
      v3 = v143[0];
      v11 = v143[1];
      v78 = v143[2];
      v13 = v143[3];
      v79 = v143[4];
    }

    else
    {
      v13 = 0;
      v80 = -1 << *(v3 + 32);
      v11 = (v3 + 56);
      v78 = ~v80;
      v81 = -v80;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      else
      {
        v82 = -1;
      }

      v79 = v82 & *(v3 + 56);
    }

    v125[2] = v78;
    v83 = (v78 + 64) >> 6;
    v127 = v3;
    v126 = v11;
    v138 = v83;
    while (1)
    {
      if (v3 < 0)
      {
        v89 = __CocoaSet.Iterator.next()();
        if (!v89 || (v141[4] = v89, type metadata accessor for ParticipantTranslationResponse(), swift_dynamicCast(), v88 = v141[0], v86 = v13, v87 = v79, !v141[0]))
        {
LABEL_59:
          outlined consume of [UUID : Conversation].Iterator._Variant();
          v115 = Logger.logObject.getter();
          v116 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            v141[0] = v118;
            *v117 = 136315138;
            type metadata accessor for InternalParticipant();

            v119 = Dictionary.description.getter();
            v121 = v120;

            v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v141);

            *(v117 + 4) = v122;
            _os_log_impl(&dword_1AEE80000, v115, v116, "[Translation] Updated internal participants after translation %s", v117, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v118);
            MEMORY[0x1B2715BA0](v118, -1, -1);
            MEMORY[0x1B2715BA0](v117, -1, -1);
          }

          return v142;
        }
      }

      else
      {
        v84 = v13;
        v85 = v79;
        v86 = v13;
        if (!v79)
        {
          while (1)
          {
            v86 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              break;
            }

            if (v86 >= v83)
            {
              goto LABEL_59;
            }

            v85 = v11[v86];
            ++v84;
            if (v85)
            {
              goto LABEL_44;
            }
          }

LABEL_64:
          __break(1u);
LABEL_65:
          swift_once();
          goto LABEL_2;
        }

LABEL_44:
        v87 = (v85 - 1) & v85;
        v88 = *(*(v3 + 48) + ((v86 << 9) | (8 * __clz(__rbit64(v85)))));
        if (!v88)
        {
          goto LABEL_59;
        }
      }

      v139 = v87;
      v90 = ParticipantTranslationResponse.aliasedIdentifier.getter();
      swift_beginAccess();
      v91 = specialized Dictionary.subscript.modify(v141, v90);
      v93 = v92;
      v94 = type metadata accessor for InternalParticipant();
      v95 = *(*(v94 - 8) + 48);
      if (v95(v93, 1, v94))
      {
        (v91)(v141, 0);
      }

      else
      {
        v136 = v91;
        v96 = ParticipantTranslationResponse.unaliasedIdentifier.getter();
        if (v97)
        {
          v96 = ParticipantTranslationResponse.aliasedIdentifier.getter();
        }

        v98 = v96;
        v133 = ParticipantTranslationResponse.handle.getter();
        v100 = v99;
        v135 = ParticipantTranslationResponse.stableDeviceIdentifier.getter();
        v134 = v101;
        v132 = ParticipantTranslationResponse.isNearby.getter() & v131;
        v102 = v130;
        v103 = v129;
        *&v129[*(v130 + 24)] = v98;
        UUID.init(_:)();
        v104 = v133;
        if (!v100)
        {
          v104 = 0;
        }

        v105 = 0xE000000000000000;
        if (v100)
        {
          v105 = v100;
        }

        v106 = &v103[v102[5]];
        *v106 = v104;
        v106[1] = v105;
        v107 = &v103[v102[7]];
        v108 = v134;
        *v107 = v135;
        v107[1] = v108;
        v103[v102[8]] = v132 & 1;
        v103[v102[9]] = 0;
        v109 = v103;
        v110 = v128;
        outlined init with take of Participant(v109, v128, type metadata accessor for Participant);
        outlined assign with take of Participant(v110, v93, type metadata accessor for Participant);
        (v136)(v141, 0);
        v3 = v127;
        v11 = v126;
      }

      v83 = v138;
      swift_endAccess();
      v111 = ParticipantTranslationResponse.aliasedIdentifier.getter();
      swift_beginAccess();
      v112 = specialized Dictionary.subscript.modify(v141, v111);
      v114 = v113;
      if (!v95(v113, 1, v94))
      {
        *(v114 + *(v94 + 20)) = 1;
      }

      (v112)(v141, 0);
      swift_endAccess();

      v13 = v86;
      v79 = v139;
    }
  }

  return v142;
}

uint64_t closure #19 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    GroupSession.updateInternalActiveParticipants(_:)(partial apply for closure #1 in GroupSession.setInternalActiveParticipants(to:));
  }

  return result;
}

uint64_t closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v6, v5);
}

uint64_t closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v2 = v0[2];
  v1 = v0[3];

  GroupSession.configureWithGroupActivityAssociationCoordinator()();
  v3 = v0[1];

  return v3();
}

uint64_t GroupSession.configureWithGroupActivityAssociationCoordinator()()
{
  v1 = *v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupActivityAssociationCoordinatorTable();
  v12[1] = static GroupActivityAssociationCoordinatorTable.shared.getter();
  v6 = direct field offset for GroupSession.id;
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v5, &v0[v6], v2);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + 80);
  *(v10 + 24) = *(v1 + 88);
  (*(v3 + 32))(v10 + v8, v5, v2);
  *(v10 + v9) = v7;

  GroupActivityAssociationCoordinatorTable.configureWithCoordinator(sessionID:_:)();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of URL?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
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

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC15GroupActivities17SystemCoordinatorCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of URL?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
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

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

char *GroupSession.deinit()
{
  v1 = v0;
  v69 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.client);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = GroupSession.description.getter();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, aBlock);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Deinit groupSession %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {
  }

  v18 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v19 = *&v1[v18];
  if (v19)
  {
    v20 = *&v1[*(*v1 + 296)];
    aBlock[4] = partial apply for closure #1 in GroupSession.deinit;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_150;
    v65 = _Block_copy(aBlock);
    swift_retain_n();
    v64 = v20;
    v21 = v8;
    static DispatchQoS.unspecified.getter();
    v70 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v22 = v66;
    v63 = v5;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v23 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v64;
    v25 = v65;
    MEMORY[0x1B27147B0](0, v21, v23, v65);
    _Block_release(v25);

    (*(v22 + 8))(v23, v2);
    (*(v67 + 8))(v21, v63);
  }

  v26 = *(*v1 + 288);
  swift_beginAccess();
  v27 = *&v1[v26];
  dispatch thunk of XPCClient.destroyConnection()();

  outlined destroy of Participant(&v1[direct field offset for GroupSession.initiator], type metadata accessor for Participant);
  v28 = *&v1[v18];

  v29 = *&v1[direct field offset for GroupSession.playbackSyncMessenger];

  v30 = direct field offset for GroupSession.id;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 8))(&v1[v30], v31);
  v32 = *&v1[direct field offset for GroupSession.topicManager];

  v33 = *&v1[direct field offset for GroupSession.receivedDataHandler + 8];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*&v1[direct field offset for GroupSession.receivedDataHandler]);
  v34 = *&v1[direct field offset for GroupSession._receivedDataPublisher];
  v35 = *&v1[direct field offset for GroupSession._receivedDataPublisher + 8];

  v36 = *&v1[direct field offset for GroupSession._receivedAttachmentPublisher];
  v37 = *&v1[direct field offset for GroupSession._receivedAttachmentPublisher + 8];

  v38 = *&v1[direct field offset for GroupSession._catchupNeededPublisher];
  v39 = *&v1[direct field offset for GroupSession._catchupNeededPublisher + 8];

  v40 = *(*v1 + 208);
  v42 = *(v69 + 80);
  v41 = *(v69 + 88);
  type metadata accessor for GroupSession.State();
  v43 = type metadata accessor for Published();
  v44 = *(*(v43 - 8) + 8);
  v44(&v1[v40], v43);
  v45 = *(*v1 + 216);
  v46 = type metadata accessor for Published();
  (*(*(v46 - 8) + 8))(&v1[v45], v46);
  v47 = *(*v1 + 224);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  (*(*(v48 - 8) + 8))(&v1[v47], v48);
  v49 = *&v1[*(*v1 + 232) + 8];

  v50 = *(*v1 + 240);
  v51 = type metadata accessor for GroupSession.Timestamps();
  (*(*(v51 - 8) + 8))(&v1[v50], v51);
  v52 = *(*v1 + 248);
  type metadata accessor for GroupSession.MessageQueue();
  v53 = type metadata accessor for Published();
  (*(*(v53 - 8) + 8))(&v1[v52], v53);

  v54 = *&v1[*(*v1 + 312)];

  __swift_destroy_boxed_opaque_existential_0(&v1[*(*v1 + 320)]);
  v55 = *&v1[*(*v1 + 328)];

  outlined destroy of NSObject?(&v1[*(*v1 + 336)], &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v56 = *&v1[*(*v1 + 344)];

  v57 = *&v1[*(*v1 + 376)];

  outlined destroy of NSObject?(&v1[*(*v1 + 384) + 8], &_sSDys6UInt64V15GroupActivities19InternalParticipantVGMd, &_sSDys6UInt64V15GroupActivities19InternalParticipantVGMR);
  v58 = *&v1[*(*v1 + 392)];

  v44(&v1[*(*v1 + 400)], v43);
  v59 = &v1[*(*v1 + 416)];
  v60 = v59[1];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*v59);
  return v1;
}

void closure #1 in GroupSession.deinit(uint64_t a1)
{
  (*(**(a1 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 512))();
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.playback);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1AEE80000, oslog, v2, "Cleaned up playback syncer in deinit", v3, 2u);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }
}

Swift::Void __swiftcall GroupSession.join()()
{
  v1 = v0;
  v2 = *v0;
  v47 = *(*v0 + 80);
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v38 - v4;
  v42 = type metadata accessor for SharePlayLatencyLogger.Event();
  v44 = *(v42 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v38 - v12;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v2;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;

    v19 = GroupSession.description.getter();
    v39 = v8;
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, aBlock);
    v8 = v39;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1AEE80000, v14, v15, "Application called join on %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v23 = v18;
    v2 = v40;
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {
  }

  v24 = v44;
  v25 = v41;
  v26 = v42;
  (*(v44 + 104))(v41, *MEMORY[0x1E6997540], v42);
  GroupSession.activity.getter();
  v27 = *(v2 + 88);
  v28 = v47;
  v29 = v48;
  static SharePlayLatencyLogger.beginInterval<A>(for:activity:)();
  (*(v45 + 8))(v5, v28);
  (*(v24 + 8))(v25, v26);
  v30 = *(v1 + *(*v1 + 296));
  v31 = v46;
  v32 = v49;
  (*(v8 + 16))(v46, v29, v49);
  v33 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = v28;
  *(v34 + 3) = v27;
  *(v34 + 4) = v1;
  (*(v8 + 32))(&v34[v33], v31, v32);
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in GroupSession.join();
  *(v35 + 24) = v34;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_160;
  v36 = _Block_copy(aBlock);

  dispatch_sync(v30, v36);
  _Block_release(v36);
  (*(v8 + 8))(v29, v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in GroupSession.join()(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *(*a1 + 336);
  swift_beginAccess();
  outlined assign with take of SharePlayLatencyLogger.Interval?(v8, a1 + v11);
  v12 = swift_endAccess();
  if (*(v4 + 80) == &type metadata for StaticGroupActivity)
  {
    v14 = 0;
  }

  else
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 opaqueSessionID];
  }

  MEMORY[0x1EEE9AC00](v12);
  *(&v17 - 2) = a1;
  *(&v17 - 2) = v14;
  *(&v17 - 4) = v15;
  return GroupSession.invalidationBlock(execute:)(partial apply for closure #1 in closure #1 in GroupSession.join());
}

void closure #1 in closure #1 in GroupSession.join()(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v5 + 288);
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = XPCClient.queue.getter();

  v35 = a1;
  v36 = a2;
  v37 = BYTE4(a2) & 1;
  OS_dispatch_queue.sync<A>(execute:)();

  if (!v2)
  {
    v15 = *(v6 + 80);
    v16 = *MEMORY[0x1E69D8F98];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = (*(*(v6 + 88) + 40))(v17);

    if (v18)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.default);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_14;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not creating AVAudioSession because ScreenSharing doesn't support it";
    }

    else
    {
      if (v15 != &type metadata for StaticGroupActivity)
      {
        v24 = *(v8 + 16);
        v24(v11, a1 + direct field offset for GroupSession.id, v7);
        outlined init with copy of Transferable(a1 + *(*a1 + 320), v38);
        v25 = type metadata accessor for AVAudioSessionAssertion();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        v28 = swift_allocObject();
        v24((v28 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id), v11, v7);
        outlined init with copy of Transferable(v38, v28 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager);
        v29 = v39;
        v30 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        (*(v30 + 8))(v11, v29, v30);
        (*(v8 + 8))(v11, v7);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v31 = *(*a1 + 328);
        v32 = *(a1 + v31);
        *(a1 + v31) = v28;

        return;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Log.default);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_14;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not creating AVAudioSession because static group activities don't support it";
    }

    _os_log_impl(&dword_1AEE80000, v20, v21, v23, v22, 2u);
    MEMORY[0x1B2715BA0](v22, -1, -1);
LABEL_14:
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GroupSession.join()(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(*a1 + 288);
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = v4;

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v7)
  {
    swift_willThrow();
    v8 = v7;
  }
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.join()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v7.super.super.isa = 0;
  }

  else
  {
    v7.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.join();
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CPDataCryptor?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_611;
  v9 = _Block_copy(v10);

  [v6 joinWithAudioSessionID:v7.super.super.isa completion:v9];
  _Block_release(v9);
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.join()(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *a3;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = a3;
      v28 = v12;
      *v11 = 136315138;
      v13 = *(v7 + 80);
      v14 = *(v7 + 88);
      v15 = type metadata accessor for GroupSession();
      v16 = >> prefix<A>(_:)(&v27, v15);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v28);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_1AEE80000, v9, v10, "Error joining session %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B2715BA0](v12, -1, -1);
      MEMORY[0x1B2715BA0](v11, -1, -1);
    }

    swift_beginAccess();
    v19 = *(a4 + 16);
    *(a4 + 16) = a2;
    v20 = a2;
  }

  else
  {
    v21 = *(a3 + direct field offset for GroupSession.linkManager);
    v22 = MEMORY[0x1E69E7D40];
    v23 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x170);
    v24 = swift_unknownObjectRetain();
    v25 = v23(v24);
    v26 = (*((*v22 & *v21) + 0x230))(v25);
    GroupSession.logAttachmentEvent(report:reportEvent:)(v26, 0xD000000000000025, 0x80000001AF01AF60);
  }
}

uint64_t specialized GroupSession.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v7 = v6;
  v28 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*v6 + 288);
  swift_beginAccess();
  v19 = *(v7 + v18);
  v20 = XPCClient.queue.getter();

  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  v21[2] = v7;
  v21[3] = v23;
  v21[4] = a3;
  v21[5] = a1;
  aBlock[4] = v22;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);

  v25 = a1;
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v17, v13, v24);
  _Block_release(v24);

  (*(v32 + 8))(v13, v10);
  (*(v14 + 8))(v17, v31);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CPDataCryptor?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

id closure #2 in closure #1 in closure #1 in closure #1 in GroupSession.join()(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315394;
    v11 = GroupSession.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1AEE80000, v7, v8, "%s connection error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v19 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

Swift::Void __swiftcall GroupSession.leave()()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;

    v7 = GroupSession.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Application called leave on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + *(*v1 + 296));
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in GroupSession.leave();
  *(v12 + 24) = v1;
  v14[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_173;
  v13 = _Block_copy(v14);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in GroupSession.leave()(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = XPCClient.queue.getter();

  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in closure #1 in GroupSession.leave();
  *(v5 + 24) = a1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_595;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v4, v6);

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*a1 + 328);
    v9 = *(a1 + v8);
    *(a1 + v8) = 0;
  }

  return result;
}

void specialized closure #1 in GroupSession.capabilities.didset(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.leave()(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.leave();
  v4[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v4[3] = &block_descriptor_598;
  v3 = _Block_copy(v4);

  [v2 leaveWithCompletion_];
  _Block_release(v3);
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.leave()(void *a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = *a2;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = a2;
      v17 = v9;
      *v8 = 136315138;
      v10 = >> prefix<A>(_:)(&v16, v4);
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Error leaving session %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    GroupSession.invalidate(reason:)(a1);
  }

  else
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & **(a2 + direct field offset for GroupSession.linkManager)) + 0x238))();
    GroupSession.logAttachmentEvent(report:reportEvent:)(v13, 0xD000000000000027, 0x80000001AF01A5E0);

    v14 = *(*a2 + 288);
    swift_beginAccess();
    v15 = *(a2 + v14);
    dispatch thunk of XPCClient.destroyConnection()();
  }
}

Swift::Void __swiftcall GroupSession.end()()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;

    v7 = GroupSession.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Application called end on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + *(*v1 + 296));
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in GroupSession.end();
  *(v12 + 24) = v1;
  v16[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed () -> ();
  v16[3] = &block_descriptor_180;
  v13 = _Block_copy(v16);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v14 = *(*v1 + 328);
    v15 = *(v1 + v14);
    *(v1 + v14) = 0;
  }
}

uint64_t closure #1 in GroupSession.end()(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = XPCClient.queue.getter();

  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in GroupSession.end();
  *(v5 + 24) = a1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_588;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v4, v6);

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall GroupSession.requestForegroundPresentation()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.default);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v3;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;

    v17 = GroupSession.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, aBlock);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1AEE80000, v12, v13, "Application called requestForegroundPresentation on %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v21 = v16;
    v3 = v24;
    MEMORY[0x1B2715BA0](v21, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  else
  {
  }

  v22 = *(v1 + *(*v1 + 296));
  aBlock[4] = partial apply for closure #1 in GroupSession.requestForegroundPresentation();
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_183;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v10, v6, v23);
  _Block_release(v23);
  (*(v3 + 8))(v6, v2);
  (*(v25 + 8))(v10, v26);
}

uint64_t closure #1 in GroupSession.requestForegroundPresentation()(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = XPCClient.queue.getter();

  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in GroupSession.requestForegroundPresentation();
  *(v5 + 24) = a1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_581;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v4, v6);

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in GroupSession.end()(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

Swift::Void __swiftcall GroupSession.updateParticipants(participants:)(Swift::OpaquePointer participants)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v2[*(*v2 + 296)];
  v13 = swift_allocObject();
  v13[2]._rawValue = v2;
  v13[3]._rawValue = participants._rawValue;
  aBlock[4] = partial apply for closure #1 in GroupSession.updateParticipants(participants:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_189;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v16);
}

uint64_t closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(*a1 + 344);
  if (*(a1 + v8))
  {
    v9 = *(a1 + v8);

    MEMORY[0x1B27144E0](v10, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;

  v13 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in GroupSession.updateParticipants(participants:), v12);
  v14 = *(a1 + v8);
  *(a1 + v8) = v13;
}

uint64_t closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in GroupSession.updateParticipants(participants:), 0, 0);
}

uint64_t closure #1 in closure #1 in GroupSession.updateParticipants(participants:)()
{
  v0[20] = MEMORY[0x1E69E7CC0];
  v1 = v0[21];
  v2 = *(v1 + 16);
  v0[24] = v2;
  if (v2)
  {
    v0[25] = 0;
    v3 = v0[23];
    outlined init with copy of ActivityExternalParticipant(v1 + 32, (v0 + 2));
    v4 = v0[8];
    v5 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
    v6 = type metadata accessor for UTType();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = *(MEMORY[0x1E6965BB0] + 4);
    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    v9 = v0[23];
    v10 = v4;
    v11 = v5;

    return MEMORY[0x1EEDBF598](v9, v10, v11);
  }

  static Task<>.checkCancellation()();
  v12 = v0[22];
  v13 = *(*v12 + 288);
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = XPCClient.queue.getter();

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v0 + 20;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
  *(v17 + 24) = v16;
  v0[15] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[16] = v17;
  v0[11] = MEMORY[0x1E69E9820];
  v0[12] = 1107296256;
  v0[13] = thunk for @escaping @callee_guaranteed () -> ();
  v0[14] = &block_descriptor_574;
  v18 = _Block_copy(v0 + 11);
  v19 = v0[16];

  dispatch_sync(v15, v18);

  _Block_release(v18);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return MEMORY[0x1EEDBF598](v9, v10, v11);
  }

  v20 = v0[23];
  v21 = v0[20];

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:));

  v22 = v0[1];

  return v22();
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to unwrap participant info as Data", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  outlined destroy of ActivityExternalParticipant((v0 + 2));
  v5 = v0[23];
  v6 = v0[20];

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(0);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = objc_allocWithZone(MEMORY[0x1E69D8BE0]);
  outlined copy of Data._Representation(v4, v3);
  v9 = MEMORY[0x1B2714130](v6, v7);
  v10 = Data._bridgeToObjectiveC()().super.isa;
  [v8 initWithIdentifier:isa displayName:v9 info:v10 status:v2];

  outlined consume of Data._Representation(v4, v3);
  MEMORY[0x1B27142A0]();
  if (*((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 192);
  v14 = *(v0 + 200) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined consume of Data._Representation(v12, v11);
  outlined destroy of ActivityExternalParticipant(v0 + 16);
  if (v14 != v13)
  {
    v17 = *(v0 + 200);
    *(v0 + 200) = v17 + 1;
    v18 = *(v0 + 184);
    outlined init with copy of ActivityExternalParticipant(*(v0 + 168) + 72 * v17 + 104, v0 + 16);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    __swift_project_boxed_opaque_existential_1((v0 + 40), v19);
    v21 = type metadata accessor for UTType();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    v22 = *(MEMORY[0x1E6965BB0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 208) = v23;
    *v23 = v0;
    v23[1] = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    v24 = *(v0 + 184);
    v25 = v19;
    v26 = v20;

    return MEMORY[0x1EEDBF598](v24, v25, v26);
  }

  v15 = *(v0 + 232);
  static Task<>.checkCancellation()();
  if (!v15)
  {
    v27 = *(v0 + 176);
    v28 = *(*v27 + 288);
    swift_beginAccess();
    v29 = *(v27 + v28);
    v30 = XPCClient.queue.getter();

    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    *(v31 + 24) = v0 + 160;
    v32 = swift_allocObject();
    v16 = partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    *(v32 + 16) = partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    *(v32 + 24) = v31;
    *(v0 + 120) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v0 + 128) = v32;
    *(v0 + 88) = MEMORY[0x1E69E9820];
    *(v0 + 96) = 1107296256;
    *(v0 + 104) = thunk for @escaping @callee_guaranteed () -> ();
    *(v0 + 112) = &block_descriptor_574;
    v33 = _Block_copy((v0 + 88));
    v34 = *(v0 + 128);

    dispatch_sync(v30, v33);

    _Block_release(v33);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    return MEMORY[0x1EEDBF598](v24, v25, v26);
  }

  v16 = 0;
LABEL_10:
  v35 = *(v0 + 184);
  v36 = *(v0 + 160);

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v16);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 208);
  v7 = *v3;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = v2;

  v8 = v4[23];
  if (v2)
  {

    outlined destroy of NSObject?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v9 = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
  }

  else
  {
    outlined destroy of NSObject?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v9 = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for TUExternalParticipant();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 updateParticipantsInfoFor_];
}

uint64_t GroupSession.registerParticipantsInvitationUpdate(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(*v2 + 416));
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6);
}

uint64_t closure #1 in closure #1 in GroupSession.updateActivity(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v31 - v6;
  v8 = type metadata accessor for AnyGroupActivity(0);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - v11);
  GroupSession.state.getter();
  v13 = v37;
  v35 = 1;
  v36 = v37;
  v14 = *(v2 + 88);
  v15 = static GroupSession.State.== infix(_:_:)(&v36, &v35);
  outlined consume of GroupSession<A>.State<A>(v13);
  if (v15)
  {
    GroupSession.activity.getter();
    v16 = v34;
    GroupActivity.eraseToAnyGroupActivity()(v3, v14, v12);
    result = (*(v4 + 8))(v7, v3);
    if (!v16)
    {
      v18 = *(*a1 + 424);
      v19 = *(a1 + v18);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        *(a1 + v18) = v21;
        v22 = v12;
        v23 = v12;
        v24 = v33;
        outlined init with copy of Participant(v23, v33, type metadata accessor for AnyGroupActivity);
        v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
        v26 = swift_allocObject();
        outlined init with take of Participant(v24, v26 + v25, type metadata accessor for AnyGroupActivity);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();
        v37 = Future.init(_:)();
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
        swift_retain_n();
        Publisher.sinkOnce(_:onError:)();

        return outlined destroy of Participant(v22, type metadata accessor for AnyGroupActivity);
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v30 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in GroupSession.updateActivity(_:)(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(*a2 + 288);
  swift_beginAccess();
  v14 = *(a2 + v13);
  v15 = XPCClient.queue.getter();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v12;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.updateActivity(_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_701;
  v17 = _Block_copy(aBlock);

  v18 = v12;
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v11, v7, v17);
  _Block_release(v17);

  (*(v27 + 8))(v7, v4);
  (*(v25 + 8))(v11, v26);

  v20 = *(*a2 + 424);
  v21 = *(a2 + v20);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + v20) = v23;
  }

  return result;
}

void closure #2 in closure #1 in closure #1 in GroupSession.updateActivity(_:)(void **a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = *a1;
  v12 = *(v4 + 424);
  v13 = *(a2 + v12);
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a2 + v12) = v15;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);

  v17 = v11;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v20 = 136315394;
    GroupSession.activity.getter();
    (*(*(v5 - 8) + 56))(v10, 0, 1, v5);
    v21 = >> prefix<A>(_:)(v10, v5);
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v35);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v34 = v11;
    v25 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v35);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1AEE80000, v18, v19, "Failed to set activity %s error: %s", v20, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v29, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
  v30 = swift_allocError();
  *v31 = 3;
  GroupSession.invalidate(reason:)(v30);
}

void specialized closure #1 in GroupSession.updatePublicState()(uint64_t a1)
{
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20 == 1)
  {
    if (v19 == 1)
    {
      return;
    }

LABEL_6:
    outlined consume of GroupSession<A>.State<A>(v19);
    goto LABEL_8;
  }

  if (!v20)
  {
    if (!v19)
    {
      return;
    }

    goto LABEL_6;
  }

  outlined consume of GroupSession<A>.State<A>(v20);
  outlined consume of GroupSession<A>.State<A>(v19);
  if (v19 >= 2)
  {
    return;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v20;
  if (!v20)
  {
LABEL_18:
    MEMORY[0x1EEE9AC00](v11);
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    swift_getKeyPath();
    static Published.subscript.getter();

    MEMORY[0x1EEE9AC00](v17);
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    swift_getKeyPath();

    static Published.subscript.setter();
    return;
  }

  if (v20 != 1)
  {
    outlined consume of GroupSession<A>.State<A>(v20);
    goto LABEL_18;
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & **(a1 + direct field offset for GroupSession.linkManager)) + 0x198))(1, v4, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    goto LABEL_18;
  }

  v11 = TUSimulatedModeEnabled();
  if (v11)
  {
    goto LABEL_18;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1AEE80000, v13, v14, "Internal state has joined but waiting for PubSubTopic to subscribe", v15, 2u);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }
}

void closure #1 in GroupSession.updatePublicState()(uint64_t a1)
{
  GroupSession.internalState.getter();
  v2 = v14;
  v13 = v14;
  GroupSession.state.getter();
  v3 = v12;
  v11 = v12;
  v4 = static GroupSession.State.== infix(_:_:)(&v13, &v11);
  outlined consume of GroupSession<A>.State<A>(v3);
  outlined consume of GroupSession<A>.State<A>(v2);
  if ((v4 & 1) == 0)
  {
    GroupSession.internalState.getter();
    v5 = v14;
    v12 = 1;
    v13 = v14;
    v6 = static GroupSession.State.== infix(_:_:)(&v13, &v12);
    outlined consume of GroupSession<A>.State<A>(v5);
    if (v6 & 1) == 0 || ((*((*MEMORY[0x1E69E7D40] & **(a1 + direct field offset for GroupSession.linkManager)) + 0x198))() & 1) != 0 || (TUSimulatedModeEnabled())
    {
      GroupSession.internalState.getter();
      GroupSession.state.setter(&v14);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.default);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1AEE80000, oslog, v8, "Internal state has joined but waiting for PubSubTopic to subscribe", v9, 2u);
        MEMORY[0x1B2715BA0](v9, -1, -1);
      }
    }
  }
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void (*specialized Dictionary.subscript.modify(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t closure #1 in GroupSession.updateNearbyParticipants(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Participant();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = Set.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1AEE80000, v10, v11, "[Nearby] Received new nearby participants: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B2715BA0](v13, -1, -1);
      MEMORY[0x1B2715BA0](v12, -1, -1);
    }

    outlined init with copy of Participant(*(v8 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v6, type metadata accessor for Participant);
    v17 = *&v6[*(v3 + 24)];
    outlined destroy of Participant(v6, type metadata accessor for Participant);
    v22 = a2;

    v18 = specialized Set._Variant.insert(_:)(&v21, v17);
    v19 = v22;
    MEMORY[0x1EEE9AC00](v18);
    *(&v20 - 2) = v19;
    GroupSession.updateInternalActiveParticipants(_:)(partial apply for closure #1 in closure #1 in GroupSession.updateNearbyParticipants(_:));
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.updateNearbyParticipants(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v3;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_11:
    v13 = *(*(v24 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
    if (*(a2 + 16) && (v14 = MEMORY[0x1B2715020](*(a2 + 40), v13), v15 = -1 << *(a2 + 32), v16 = v14 & ~v15, ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
    {
      v17 = ~v15;
      do
      {
        v18 = *(*(a2 + 48) + 8 * v16);
        v19 = v18 == v13;
        if (v18 == v13)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
      }

      while (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
    }

    else
    {
      v19 = 0;
    }

    v7 &= v7 - 1;
    v20 = specialized Dictionary.subscript.modify(v25, v13);
    v22 = v21;
    v23 = type metadata accessor for InternalParticipant();
    if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
    {
      *(v22 + *(type metadata accessor for Participant() + 32)) = v19;
    }

    result = (v20)(v25, 0);
    v11 = v12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in GroupSession.requestEncryptionKey(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = v5;

  v7 = XPCClient.queue.getter();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:);
  *(v9 + 24) = v8;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_485;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v7, v10);

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = XPCClient.queue.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:);
  *(v8 + 24) = v7;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_622;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.updateActivity(_:)(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a2)
    {
      v9 = MEMORY[0x1B27142D0](a2, MEMORY[0x1E69E76D8]);
      v11 = v10;
    }

    else
    {
      v11 = 0xE500000000000000;
      v9 = 0x3E6C696E3CLL;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Requesting encryption keys for participantIDs=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  if (a2)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  [v3 requestEncryptionKeysFor_];
}

uint64_t closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[1] = a3;
  v29 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.groupActivityAssociation);
  (*(v9 + 16))(v12, a2, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28[0] = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v30);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1AEE80000, v14, v15, "Configuring group session %s with the spatial template anchor coordinator.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1B2715BA0](v18, -1, -1);
    v23 = v17;
    a5 = v28[0];
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v26 = swift_allocObject();
  v26[2] = v29;
  v26[3] = a5;
  v26[4] = v25;

  dispatch thunk of GroupActivityAssociationCoordinating.setOnGroupActivityAssociationChangeHandler(_:)();
}

uint64_t closure #1 in closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for groupActivityAssociation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.groupActivityAssociation);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = type metadata accessor for GroupActivityAssociation();
      v9 = MEMORY[0x1B27142D0](a1._rawValue, v8);
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Group session received new scene association: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B2715BA0](v7, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    GroupSession.setGroupActivityAssociations(_:)(a1);
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GroupSession<A>@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void GroupSession.sendData(_:to:messageTypeIdentifier:reliability:completion:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, void (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v71 = a4;
  v61 = type metadata accessor for Participant();
  v17 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for OSSignpostID();
  v69 = *(v19 - 8);
  v70 = v19;
  v20 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for OSSignposter();
  v67 = *(v22 - 8);
  v68 = v22;
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = *a3;
  v65 = *a6;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.default);
  outlined copy of Data._Representation(a1, a2);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v63 = a7;
  v64 = a8;
  v62 = a5;
  if (!v29)
  {
    outlined consume of Data._Representation(a1, a2);

    goto LABEL_16;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v74 = v31;
  *v30 = 134218242;
  v32 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v32 != 2)
    {
      v33 = 0;
      goto LABEL_15;
    }

    v35 = *(a1 + 16);
    v34 = *(a1 + 24);
    v36 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (!v36)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v33) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v33 = v33;
    goto LABEL_15;
  }

  if (v32)
  {
    goto LABEL_12;
  }

  v33 = BYTE6(a2);
LABEL_15:
  *(v30 + 4) = v33;
  outlined consume of Data._Representation(a1, a2);
  *(v30 + 12) = 2080;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  v39 = v38;

  v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v74);

  *(v30 + 14) = v40;
  _os_log_impl(&dword_1AEE80000, v27, v28, "Request to send data of length %ld over %s ", v30, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v31);
  MEMORY[0x1B2715BA0](v31, -1, -1);
  MEMORY[0x1B2715BA0](v30, -1, -1);

  a7 = v63;
  a8 = v64;
  a5 = v62;
LABEL_16:
  v41 = v72;
  static Signposts.messenger.getter();
  static Signposts.messengerSignpostIdentifier(forPayload:)();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v42);
  swift_retain_n();
  v43 = OSSignposter.logHandle.getter();
  v59 = static os_signpost_type_t.event.getter();
  outlined consume of Data._Representation(a1, a2);
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v69 + 8))(v41, v70);
    (*(v67 + 8))(v25, v68);
LABEL_28:
    v57 = *(v9 + direct field offset for GroupSession.linkManager);
    v74 = v66;
    v73 = v65;
    LinkManager.sendData(_:to:messageTypeIdentifier:reliability:completion:)(a1, a2, &v74, v71, a5, &v73, a7, a8);
    return;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v74 = v45;
  *v44 = 134218498;
  v46 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v46 != 2)
    {
      v47 = 0;
      goto LABEL_27;
    }

    v49 = *(a1 + 16);
    v48 = *(a1 + 24);
    v36 = __OFSUB__(v48, v49);
    v47 = v48 - v49;
    if (!v36)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (!v46)
  {
    v47 = BYTE6(a2);
LABEL_27:
    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v74);

    *(v44 + 14) = v52;
    *(v44 + 22) = 2048;
    v53 = v60;
    outlined init with copy of Participant(*(v9 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v60, type metadata accessor for Participant);
    v54 = *&v53[*(v61 + 24)];
    outlined destroy of Participant(v53, type metadata accessor for Participant);

    *(v44 + 24) = v54;

    v55 = v72;
    v56 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEE80000, v43, v59, v56, "group-session-messenger-send", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu", v44, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1B2715BA0](v45, -1, -1);
    MEMORY[0x1B2715BA0](v44, -1, -1);

    (*(v69 + 8))(v55, v70);
    (*(v67 + 8))(v25, v68);
    a7 = v63;
    a8 = v64;
    a5 = v62;
    goto LABEL_28;
  }

  LODWORD(v47) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v47 = v47;
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
}

uint64_t protocol witness for AnyTransportSession.uploadAttachment(id:attachment:developerMetadata:) in conformance GroupSession<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return GroupSession.uploadAttachment(id:attachment:developerMetadata:)(a1, a2, a3, a4);
}

uint64_t GroupSession.uploadAttachment(id:attachment:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = type metadata accessor for UUID();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = type metadata accessor for String.Encoding();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v12 = type metadata accessor for URLResourceValues();
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v5[30] = v15;
  v16 = *(v15 - 8);
  v5[31] = v16;
  v17 = *(v16 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v19 = type metadata accessor for URL();
  v5[36] = v19;
  v20 = *(v19 - 8);
  v5[37] = v20;
  v21 = *(v20 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSession.uploadAttachment(id:attachment:developerMetadata:), 0, 0);
}

uint64_t GroupSession.uploadAttachment(id:attachment:developerMetadata:)()
{
  v86 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = v3;
  v9 = *(v2 + 16);
  v9(v1, v6, v8);
  outlined copy of Data?(v5, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined consume of Data?(v5, v4);
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[40];
  v15 = v0[36];
  v14 = v0[37];
  if (v12)
  {
    v82 = v11;
    v16 = v0[34];
    v17 = v0[35];
    v18 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v85[0] = v83;
    *v18 = 136315394;
    v9(v17, v13, v15);
    (*(v14 + 56))(v17, 0, 1, v15);
    outlined init with copy of URL?(v17, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v22 = v0[38];
      v21 = v0[39];
      v24 = v0[36];
      v23 = v0[37];
      (*(v23 + 32))(v21, v0[34], v24);
      v9(v22, v21, v24);
      v20 = String.init<A>(reflecting:)();
      v19 = v25;
      (*(v23 + 8))(v21, v24);
    }

    v26 = v0[40];
    v28 = v0[36];
    v27 = v0[37];
    v29 = v0[19];
    outlined destroy of NSObject?(v0[35], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v27 + 8))(v26, v28);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v85);

    *(v18 + 4) = v30;
    *(v18 + 12) = 2080;
    if (v29 >> 60 == 15)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v33 = v0[18];
      v34 = v0[19];
      v0[13] = v33;
      v0[14] = v34;
      outlined copy of Data._Representation(v33, v34);
      v32 = String.init<A>(reflecting:)();
      v31 = v35;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, v85);

    *(v18 + 14) = v36;
    _os_log_impl(&dword_1AEE80000, v10, v82, "Request to upload attachment: %s, developerMetadata: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v83, -1, -1);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  if ([*(*(v0[20] + direct field offset for GroupSession.topicManager) + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) sharePlayAttachmentLedgerEnabled])
  {
    v37 = v0[33];
    v38 = v0[20];
    static Date.now.getter();
    v39 = *(v38 + direct field offset for GroupSession.linkManager);
    v40 = swift_task_alloc();
    v0[41] = v40;
    *v40 = v0;
    v40[1] = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
    v41 = v0[18];
    v42 = v0[19];
    v44 = v0[16];
    v43 = v0[17];

    return LinkManager.uploadAttachment(id:file:developerMetadata:)(v44, v43, v41, v42);
  }

  else
  {
    v47 = v0[25];
    v46 = v0[26];
    v48 = v0[24];
    v49 = v0[16];
    UUID.uuidString.getter();
    static String.Encoding.utf8.getter();
    v50 = String.data(using:allowLossyConversion:)();
    v52 = v51;

    v0[43] = v50;
    v0[44] = v52;
    (*(v47 + 8))(v46, v48);
    if (v52 >> 60 == 15)
    {
      (*(v0[22] + 16))(v0[23], v0[16], v0[21]);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      v55 = os_log_type_enabled(v53, v54);
      v57 = v0[22];
      v56 = v0[23];
      v58 = v0[21];
      if (v55)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v85[0] = v60;
        *v59 = 136315138;
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        (*(v57 + 8))(v56, v58);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v85);

        *(v59 + 4) = v64;
        _os_log_impl(&dword_1AEE80000, v53, v54, "Failed to convert attachmentID %s to Data", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x1B2715BA0](v60, -1, -1);
        MEMORY[0x1B2715BA0](v59, -1, -1);
      }

      else
      {

        (*(v57 + 8))(v56, v58);
      }

      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      swift_allocError();
      *v71 = 2;
      swift_willThrow();
      v73 = v0[39];
      v72 = v0[40];
      v74 = v0[38];
      v76 = v0[34];
      v75 = v0[35];
      v78 = v0[32];
      v77 = v0[33];
      v79 = v0[29];
      v80 = v0[26];
      v84 = v0[23];

      v81 = v0[1];

      return v81();
    }

    else
    {
      v65 = v0[20];
      v66 = v0[17];
      v67 = swift_task_alloc();
      v0[45] = v67;
      v67[2] = v65;
      v67[3] = v66;
      v67[4] = v50;
      v67[5] = v52;
      v68 = *(MEMORY[0x1E69E8920] + 4);
      v69 = swift_task_alloc();
      v0[46] = v69;
      *v69 = v0;
      v69[1] = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
      v70 = MEMORY[0x1E69E6370];

      return MEMORY[0x1EEE6DE38](v0 + 48, 0, 0, 0xD000000000000032, 0x80000001AF01A630, partial apply for closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:), v67, v70);
    }
  }
}

{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  else
  {
    v3 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v6 = v5;
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);
  v10 = v0[42];
  v11 = v0[29];
  v12 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AF00CA60;
  v14 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v15 = v14;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Participant(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();
  if (v10)
  {

LABEL_7:
    v33 = v0[39];
    v32 = v0[40];
    v34 = v0[38];
    v36 = v0[34];
    v35 = v0[35];
    v38 = v0[32];
    v37 = v0[33];
    v39 = v0[29];
    v40 = v0[26];
    v53 = v0[23];

    v41 = v0[1];
    goto LABEL_8;
  }

  v17 = v0[28];
  v16 = v0[29];
  v18 = v0[27];

  v19 = URLResourceValues.fileSize.getter();
  v21 = v20;
  (*(v17 + 8))(v16, v18);
  if ((v21 & 1) == 0)
  {
    v22 = v0[42];
    v23 = v0[20];
    v24 = direct field offset for GroupSession.attachmentUploadBytes;
    swift_beginAccess();
    *(v23 + v24) = *(v23 + v24) + v19;
    v25 = direct field offset for GroupSession.attachmentUploadTime;
    swift_beginAccess();
    *(v23 + v25) = v6 - v8 + *(v23 + v25);
    v26 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v27 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
    GroupSession.logAttachmentEvent(report:reportEvent:)(v27, 0xD000000000000017, 0x80000001AF01A670);
  }

  if (v0[42])
  {
    v28 = v0[20];
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v29 = swift_allocError();
    *v30 = 10;
    GroupSession.invalidate(reason:)(v29);

    swift_allocError();
    *v31 = 10;
    swift_willThrow();
    goto LABEL_7;
  }

  v44 = v0[39];
  v43 = v0[40];
  v45 = v0[38];
  v47 = v0[34];
  v46 = v0[35];
  v49 = v0[32];
  v48 = v0[33];
  v50 = v0[29];
  v51 = v0[26];
  v52 = v0[23];

  v41 = v0[1];
LABEL_8:

  return v41();
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  else
  {
    v5 = *(v2 + 360);

    v4 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  outlined consume of Data?(v0[43], v0[44]);
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[23];

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 336);
  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 385) != 1)
  {

    v46 = *(v0 + 336);
LABEL_5:
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 232);
    v16 = *(v0 + 208);
    v17 = *(v0 + 184);

    v18 = *(v0 + 8);
    goto LABEL_6;
  }

  v3 = *(v0 + 232);
  v4 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AF00CA60;
  v6 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v7 = v6;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Participant(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 216);

  v23 = URLResourceValues.fileSize.getter();
  v25 = v24;
  (*(v21 + 8))(v20, v22);
  if ((v25 & 1) == 0)
  {
    v26 = *(v0 + 336);
    v27 = *(v0 + 160);
    v28 = direct field offset for GroupSession.attachmentUploadBytes;
    swift_beginAccess();
    *(v27 + v28) = *(v27 + v28) + v23;
    v29 = direct field offset for GroupSession.attachmentUploadTime;
    swift_beginAccess();
    *(v27 + v29) = *(v27 + v29) + 0.0;
    v30 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v31 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
    GroupSession.logAttachmentEvent(report:reportEvent:)(v31, 0xD000000000000017, 0x80000001AF01A670);
  }

  if (*(v0 + 336))
  {
    v32 = *(v0 + 160);
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v33 = swift_allocError();
    *v34 = 10;
    GroupSession.invalidate(reason:)(v33);

    swift_allocError();
    *v35 = 10;
    swift_willThrow();
    goto LABEL_5;
  }

  v37 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 304);
  v40 = *(v0 + 272);
  v39 = *(v0 + 280);
  v42 = *(v0 + 256);
  v41 = *(v0 + 264);
  v43 = *(v0 + 232);
  v44 = *(v0 + 208);
  v45 = *(v0 + 184);

  v18 = *(v0 + 8);
LABEL_6:

  return v18();
}

{
  v1 = v0[45];
  outlined consume of Data?(v0[43], v0[44]);

  v14 = v0[47];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[29];
  v10 = v0[26];
  v11 = v0[23];

  v12 = v0[1];

  return v12();
}