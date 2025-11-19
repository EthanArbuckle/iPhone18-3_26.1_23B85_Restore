uint64_t AttachmentUploadTask.description.getter()
{
  _StringGuts.grow(_:)(69);
  MEMORY[0x1B27141F0](0xD00000000000001BLL, 0x80000001AF01D0D0);
  v7 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x3A6369706F74202CLL, 0xE900000000000020);
  v1 = *(v0 + 112);
  v2 = AttachmentLedgerTopic.description.getter();
  MEMORY[0x1B27141F0](v2);

  MEMORY[0x1B27141F0](0x203A656C6966202CLL, 0xE800000000000000);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v4);

  MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  v5 = *(v7 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  dispatch thunk of StateMachine.currentState.getter();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t AssetSkeleton.uploadRequest(id:key:developerMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a2;
  v64 = a4;
  v68 = a3;
  v62 = a5;
  v6 = type metadata accessor for Asset.ID();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v57 - v12;
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for JSONEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = JSONEncoder.init()();
  v27 = *(v19 + 16);
  v71 = v22;
  v72 = v18;
  v28 = v18;
  v29 = v26;
  v27(v22, a1, v28);
  v30 = *(v14 + 16);
  v73 = v17;
  v30(v17, v69, v13);
  type metadata accessor for AssetSkeleton();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AssetSkeleton and conformance AssetSkeleton, MEMORY[0x1E6994708]);
  v31 = v70;
  v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v31)
  {

    (*(v14 + 8))(v73, v13);
    return (*(v19 + 8))(v71, v72);
  }

  else
  {
    v69 = v33;
    v70 = 0;
    v35 = v61;
    v60 = v32;
    AssetSkeleton.assetID.getter();
    v36 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
    v57 = v29;
    v37 = v36;
    v38 = v62;
    v39 = v62 + *(v36 + 32);
    Asset.ID.storageLocation.getter();
    v58 = v14;
    v59 = v13;
    v40 = *(v66 + 8);
    v41 = v35;
    v42 = v67;
    v40(v41, v67);
    v43 = v63;
    AssetSkeleton.assetID.getter();
    v66 = Asset.ID.signature.getter();
    v61 = v44;
    v40(v43, v42);
    v45 = v65;
    AssetSkeleton.assetID.getter();
    v46 = Asset.ID.referenceSignature.getter();
    v48 = v47;

    v40(v45, v42);
    (*(v19 + 32))(v38, v71, v72);
    (*(v58 + 32))(v38 + v37[5], v73, v59);
    v49 = (v38 + v37[6]);
    v50 = v68;
    v51 = v69;
    *v49 = v60;
    v49[1] = v51;
    v52 = (v38 + v37[7]);
    v53 = v64;
    *v52 = v50;
    v52[1] = v53;
    v54 = (v38 + v37[9]);
    v55 = v61;
    *v54 = v66;
    v54[1] = v55;
    v56 = (v38 + v37[10]);
    *v56 = v46;
    v56[1] = v48;
    return outlined copy of Data?(v50, v53);
  }
}

uint64_t closure #1 in AttachmentUploadTask.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentUploadTask.start(), a4, 0);
}

uint64_t closure #1 in AttachmentUploadTask.start()()
{
  v1 = *(v0[10] + 112);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = closure #1 in AttachmentUploadTask.start();
  v3 = v0[11];

  return AttachmentLedgerTopic.upload(request:)(v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 104);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 80);

    return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentUploadTask.start(), v8, 0);
  }
}

{
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for uploadTask != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.uploadTask);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEE80000, v2, v3, "UploadTask was cancelled after upload was successful.", v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of Transferable(v6, v0 + 16);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    outlined init with take of Transferable((v0 + 16), (v10 + 4));
    v10[9] = v9;
    v11 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in AttachmentUploadTask.start(), v10);
    v12 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    v13 = *(v7 + v12);
    *(v7 + v12) = v11;
  }

  v14 = *(v0 + 104);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #1 in closure #1 in AttachmentUploadTask.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = type metadata accessor for Signal();
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v14 = *(v13 + 64) + 15;
  v5[18] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset6SignalVSgMd, &_s10CloudAsset6SignalVSgMR) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy10CloudAsset6SignalVs5Error_pGMd, &_sScsy10CloudAsset6SignalVs5Error_pGMR);
  v5[20] = v16;
  v17 = *(v16 - 8);
  v5[21] = v17;
  v18 = *(v17 + 64) + 15;
  v5[22] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMR);
  v5[23] = v19;
  v20 = *(v19 - 8);
  v5[24] = v20;
  v21 = *(v20 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

uint64_t closure #1 in closure #1 in AttachmentUploadTask.start()()
{
  v1 = v0[8];
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[26] = JSONEncoder.init()();
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = *(v6 + 16);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v10 = v0[22];

  return v12(v10, v5, v6);
}

{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 72);
  MEMORY[0x1B27145A0](v4);
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  *(v0 + 296) = *MEMORY[0x1E6997498];
  v6 = *(MEMORY[0x1E69E87A8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = *(v0 + 152);

  return MEMORY[0x1EEE6DB90](v10, 0, 0, v9, v0 + 40);
}

{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  else
  {
    v3 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    (*(v0[24] + 8))(v0[25], v0[23]);

LABEL_7:
    v30 = v0[25];
    v31 = v0[22];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[15];
    v35 = v0[12];

    v22 = v0[1];
    goto LABEL_8;
  }

  v5 = v0[9];
  (*(v3 + 32))(v0[18], v1, v2);
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
    v24 = v0[25];
    v23 = v0[26];
    v25 = v0[23];
    v26 = v0[24];
    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];

    (*(v28 + 8))(v27, v29);
    (*(v26 + 8))(v24, v25);
    goto LABEL_7;
  }

  v7 = Strong;
  v8 = v0[29];
  static Task<>.checkCancellation()();
  v0[31] = v8;
  if (v8)
  {
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[23];
    v12 = v0[24];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];

    (*(v14 + 8))(v13, v15);
    (*(v12 + 8))(v10, v11);
    v16 = v0[25];
    v17 = v0[22];
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[15];
    v21 = v0[12];

    v22 = v0[1];
LABEL_8:

    return v22();
  }

  v0[32] = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), v7, 0);
}

{
  v0[33] = *(v0[30] + v0[32]);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

{
  v1 = *(v0 + 264);
  *(v0 + 300) = 7;
  v2 = dispatch thunk of StateMachine.execute(_:)();
  v3 = *(v0 + 240);
  if (v2)
  {
    v4 = *(v0 + 240);

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), v4, 0);
  }

  else
  {
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);

    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v6, v7);
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 96);

    v18 = *(v0 + 8);

    return v18();
  }
}

{
  *(v0 + 272) = *(*(v0 + 240) + 112);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

{
  v41 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 240) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id, *(v0 + 104));
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type Signal and conformance Signal, MEMORY[0x1E6994728]);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    if (one-time initialization token for uploadTask != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 240);
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.uploadTask);

    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 240);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = (*(v0 + 136) + 8);
    if (v10)
    {
      v39 = *(v0 + 128);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40[0] = v16;
      *v15 = 136315394;
      *(v0 + 48) = v11;
      type metadata accessor for AttachmentUploadTask();

      v17 = String.init<A>(reflecting:)();
      v38 = v12;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v40);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v0 + 56) = v1;
      v20 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v40);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1AEE80000, v8, v9, "%s failed to update progress blob, error: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);

      (*v14)(v38, v39);
    }

    else
    {

      (*v14)(v12, v13);
    }

    v33 = *(MEMORY[0x1E69E87A8] + 4);
    v34 = swift_task_alloc();
    *(v0 + 224) = v34;
    *v34 = v0;
    v34[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
    v35 = *(v0 + 200);
    v36 = *(v0 + 184);
    v37 = *(v0 + 152);

    return MEMORY[0x1EEE6DB90](v37, 0, 0, v36, v0 + 40);
  }

  else
  {
    v24 = *(v0 + 296);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v27 = *(v0 + 80);
    Attachment.UpdatingBlob.init(data:)();
    (*(v26 + 104))(v25, v24, v27);
    v28 = swift_task_alloc();
    *(v0 + 280) = v28;
    *v28 = v0;
    v28[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
    v29 = *(v0 + 272);
    v30 = *(v0 + 120);
    v31 = *(v0 + 96);

    return AttachmentLedgerTopic.updateProgress(on:with:)(v30, v31);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];
  (*(v2[11] + 8))(v2[12], v2[10]);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  else
  {
    v8 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

{
  v1 = v0[30];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E87A8] + 4);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[19];

  return MEMORY[0x1EEE6DB90](v9, 0, 0, v8, v0 + 5);
}

{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];

  (*(v4 + 8))(v2, v3);
  v5 = v0[5];
  v6 = v0[25];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[15];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

{
  v30 = v0;
  v1 = v0[36];
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.uploadTask);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  v9 = v0[18];
  v10 = v0[16];
  v11 = (v0[17] + 8);
  if (v7)
  {
    v28 = v0[16];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315394;
    v0[6] = v8;
    type metadata accessor for AttachmentUploadTask();

    v14 = String.init<A>(reflecting:)();
    v27 = v9;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[7] = v1;
    v17 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s failed to update progress blob, error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);

    (*v11)(v27, v28);
  }

  else
  {

    (*v11)(v9, v10);
  }

  v21 = *(MEMORY[0x1E69E87A8] + 4);
  v22 = swift_task_alloc();
  v0[28] = v22;
  *v22 = v0;
  v22[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v23 = v0[25];
  v24 = v0[23];
  v25 = v0[19];

  return MEMORY[0x1EEE6DB90](v25, 0, 0, v24, v0 + 5);
}

uint64_t AttachmentUploadTask.requestUploadToken()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TaskPriority();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.requestUploadToken(), v1, 0);
}

uint64_t AttachmentUploadTask.requestUploadToken()()
{
  v35 = v0;
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v2, static Log.uploadTask);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *v9 = 136315394;
    v10 = AttachmentUploadTask.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v34);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v6 + 8))(v5, v8);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v34);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Requesting upload token with priority: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v33, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  *(v0 + 64) = *(*(v0 + 24) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  *(v0 + 88) = 0;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v17 = *(*(v0 + 24) + 112);
    v18 = swift_task_alloc();
    *(v0 + 72) = v18;
    *v18 = v0;
    v18[1] = AttachmentUploadTask.requestUploadToken();
    v19 = *(v0 + 16);

    return AttachmentLedgerTopic.requestUploadToken()(v19);
  }

  else
  {
    v21 = *(v0 + 24);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 24);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      v27 = AttachmentUploadTask.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v34);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v22, v23, "%s Can't execute state change for .fetchToken event", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B2715BA0](v26, -1, -1);
      MEMORY[0x1B2715BA0](v25, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v30 = 0;
    v31 = *(v0 + 48);
    swift_willThrow();

    v32 = *(v0 + 8);

    return v32();
  }
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.requestUploadToken(), v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to fetch uploadToken for reason: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v11 = *(v0 + 64);

  *(v0 + 89) = 1;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    v12 = *(v0 + 56);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Failed to transition to a failure state from fetchTokenFailure", v15, 2u);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 48);
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t AttachmentUploadTask.createAssetUploadCoordinator(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for Date();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = *(*(type metadata accessor for Credential() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = type metadata accessor for Asset.Protector();
  v3[20] = v8;
  v9 = *(v8 - 8);
  v3[21] = v9;
  v10 = *(v9 + 64) + 15;
  v3[22] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v3[23] = v11;
  v12 = *(v11 - 8);
  v3[24] = v12;
  v13 = *(v12 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v14 = type metadata accessor for AssetUploadRequest();
  v3[27] = v14;
  v15 = *(v14 - 8);
  v3[28] = v15;
  v16 = *(v15 + 64) + 15;
  v3[29] = swift_task_alloc();
  v17 = type metadata accessor for TaskPriority();
  v3[30] = v17;
  v18 = *(v17 - 8);
  v3[31] = v18;
  v19 = *(v18 + 64) + 15;
  v3[32] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v21 = type metadata accessor for UploadToken();
  v3[35] = v21;
  v22 = *(v21 - 8);
  v3[36] = v22;
  v23 = *(v22 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.createAssetUploadCoordinator(_:), v2, 0);
}

uint64_t AttachmentUploadTask.createAssetUploadCoordinator(_:)()
{
  v113 = v0;
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v6, static Log.uploadTask);
  v7 = *(v2 + 16);
  v7(v1, v4, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 312);
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v108 = v7;
  if (v10)
  {
    v99 = v9;
    log = v8;
    v14 = *(v0 + 272);
    v105 = *(v0 + 264);
    v15 = *(v0 + 120);
    v16 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v112[0] = v97;
    *v16 = 136315650;
    v17 = AttachmentUploadTask.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v112);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    outlined init with copy of URL?(v14, v105, &_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
    if ((*(v12 + 48))(v105, 1, v13) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v23 = *(v0 + 296);
      v22 = *(v0 + 304);
      v25 = *(v0 + 280);
      v24 = *(v0 + 288);
      (*(v24 + 32))(v22, *(v0 + 264), v25);
      v7(v23, v22, v25);
      v21 = String.init<A>(reflecting:)();
      v20 = v26;
      (*(v24 + 8))(v22, v25);
    }

    v27 = *(v0 + 312);
    v29 = *(v0 + 280);
    v28 = *(v0 + 288);
    v30 = *(v0 + 248);
    v31 = *(v0 + 256);
    v32 = *(v0 + 240);
    outlined destroy of NSObject?(*(v0 + 272), &_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
    v106 = *(v28 + 8);
    v106(v27, v29);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v112);

    *(v16 + 14) = v33;
    *(v16 + 22) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v30 + 8))(v31, v32);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v112);

    *(v16 + 24) = v37;
    _os_log_impl(&dword_1AEE80000, log, v99, "%s Creating AssetUploadCoordinator for uploadToken: %s with priority: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v97, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {

    v106 = *(v12 + 8);
    v106(v11, v13);
  }

  *(v0 + 328) = *(*(v0 + 120) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  *(v0 + 352) = 2;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v38 = *(v0 + 304);
    v39 = *(v0 + 280);
    v98 = *(v0 + 288);
    v100 = *(v0 + 232);
    v40 = *(v0 + 208);
    v41 = *(v0 + 184);
    v42 = *(v0 + 192);
    v43 = *(v0 + 168);
    v91 = *(v0 + 176);
    v89 = *(v0 + 200);
    v90 = *(v0 + 160);
    v92 = *(v0 + 144);
    v93 = *(v0 + 136);
    v44 = *(v0 + 120);
    v94 = *(v0 + 128);
    v95 = *(v0 + 152);
    v45 = *(v0 + 112);
    v46 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
    swift_beginAccess();
    outlined init with copy of Transferable(v44 + v46, v0 + 16);
    v103 = *(v0 + 40);
    v96 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v103);
    (*(v42 + 16))(v40, v44 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file, v41);
    UploadToken.storageLocation.getter();
    v47 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
    swift_beginAccess();
    (*(v43 + 16))(v91, v44 + v47, v90);
    v108(v38, v45, v39);
    dispatch thunk of Token.accountID.getter();
    dispatch thunk of Token.token.getter();
    v48 = type metadata accessor for Credential.Builder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    Credential.Builder.init(tenantName:requestorID:accessToken:)();
    dispatch thunk of Token.expirationDate.getter();
    Credential.Builder.setExpirationDate(_:)();

    (*(v93 + 8))(v92, v94);
    Credential.Builder.build()();

    v106(v38, v39);
    AssetUploadRequest.init(fileURL:storageLocation:protector:credential:)();
    v51 = *(v96 + 16);
    v110 = (v51 + *v51);
    v52 = v51[1];
    v53 = swift_task_alloc();
    *(v0 + 336) = v53;
    *v53 = v0;
    v53[1] = AttachmentUploadTask.createAssetUploadCoordinator(_:);
    v54 = *(v0 + 232);
    v55 = *(v0 + 104);

    return v110(v55, v54, v103, v96);
  }

  else
  {
    v57 = *(v0 + 120);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 120);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v112[0] = v62;
      *v61 = 136315138;
      v63 = AttachmentUploadTask.description.getter();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v112);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1AEE80000, v58, v59, "%s Can't execute state change for .creatingAsset event", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x1B2715BA0](v62, -1, -1);
      MEMORY[0x1B2715BA0](v61, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    v66 = swift_allocError();
    *v67 = 0;
    swift_willThrow();
    v68 = *(v0 + 320);
    v69 = v66;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      v74 = v66;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v75;
      *v73 = v75;
      _os_log_impl(&dword_1AEE80000, v70, v71, "Failed to create assetUploadCoordinator for reason: %@", v72, 0xCu);
      outlined destroy of NSObject?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v73, -1, -1);
      MEMORY[0x1B2715BA0](v72, -1, -1);
    }

    v76 = *(v0 + 328);

    *(v0 + 353) = 3;
    if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
    {
      v77 = *(v0 + 320);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1AEE80000, v78, v79, "Failed to transition to a failure state from createAssetFailure", v80, 2u);
        MEMORY[0x1B2715BA0](v80, -1, -1);
      }
    }

    v82 = *(v0 + 304);
    v81 = *(v0 + 312);
    v83 = *(v0 + 296);
    v85 = *(v0 + 264);
    v84 = *(v0 + 272);
    v86 = *(v0 + 256);
    v87 = *(v0 + 232);
    loga = *(v0 + 208);
    v104 = *(v0 + 200);
    v107 = *(v0 + 176);
    v109 = *(v0 + 152);
    v111 = *(v0 + 144);
    swift_willThrow();

    v88 = *(v0 + 8);

    return v88();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  v8 = v2[15];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = AttachmentUploadTask.createAssetUploadCoordinator(_:);
  }

  else
  {
    v9 = AttachmentUploadTask.createAssetUploadCoordinator(_:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[18];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v10 = v0[1];

  return v10();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to create assetUploadCoordinator for reason: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v10 = *(v0 + 328);

  *(v0 + 353) = 3;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    v11 = *(v0 + 320);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Failed to transition to a failure state from createAssetFailure", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }
  }

  v16 = *(v0 + 304);
  v15 = *(v0 + 312);
  v17 = *(v0 + 296);
  v19 = *(v0 + 264);
  v18 = *(v0 + 272);
  v20 = *(v0 + 256);
  v21 = *(v0 + 232);
  v24 = *(v0 + 208);
  v25 = *(v0 + 200);
  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  v28 = *(v0 + 144);
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t AttachmentUploadTask.deinit()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata), *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata + 8));
  v4 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);

  v7 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key;
  v8 = type metadata accessor for SymmetricKey();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  v10 = type metadata accessor for Asset.Protector();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager));
  v11 = *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask);

  v12 = *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler);

  v13 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AttachmentUploadTask.__deallocating_deinit()
{
  AttachmentUploadTask.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
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

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a7;
  v60 = a4;
  v61 = a5;
  v58 = a2;
  v59 = a3;
  v54 = a1;
  v11 = type metadata accessor for Asset.Protector();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SymmetricKeySize();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SymmetricKey();
  v52 = *(v48 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  v50 = *(v47 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v42 - v20;
  v67 = a8;
  v68 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  swift_defaultActor_initialize();
  v46 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMR);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMR) - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v44 = 8 * *(v22 + 72);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1AF014AC0;
  LOBYTE(v62) = 0;
  v65 = 1;
  v64 = 0;
  lazy protocol witness table accessor for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State();
  lazy protocol witness table accessor for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 1;
  v65 = 2;
  v64 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 2;
  v65 = 5;
  v64 = 3;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 2;
  v65 = 2;
  v64 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 2;
  v65 = 2;
  v64 = 7;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 2;
  v65 = 5;
  v64 = 5;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 3;
  v65 = 3;
  v64 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 2;
  v65 = 3;
  v24 = v43;
  v64 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 1;
  v65 = 5;
  v64 = 1;
  v25 = v47;
  v26 = v48;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v62) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMR);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *(v24 + v46) = StateMachine.init(initialState:transitions:)();
  *(v24 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask) = 0;
  *(v24 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler) = 0;
  v30 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  LOBYTE(v62) = 0;
  v31 = v49;
  Published.init(initialValue:)();
  (*(v50 + 32))(v24 + v30, v31, v25);
  *(v24 + 112) = v54;

  static SymmetricKeySize.bits256.getter();
  v32 = v51;
  SymmetricKey.init(size:)();
  v33 = v52 + 16;
  (*(v52 + 16))(v24 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key, v32, v26);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  outlined copy of Data._Representation(v62, v63);
  v34 = v55;
  Asset.Protector.init(securityKey:privacyKey:)();
  (*(v33 - 8))(v32, v26);
  (*(v56 + 32))(v24 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector, v34, v57);
  outlined init with take of Transferable(&v66, v24 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager);
  v35 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file;
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 32))(v24 + v35, v58, v36);
  v37 = (v24 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  v38 = v60;
  *v37 = v59;
  v37[1] = v38;
  v39 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v40 = type metadata accessor for UUID();
  (*(*(v40 - 8) + 32))(v24 + v39, v61, v40);
  return v24;
}

unint64_t lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors()
{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors);
  }

  return result;
}

uint64_t type metadata accessor for AttachmentUploadTask()
{
  result = type metadata singleton initialization cache for AttachmentUploadTask;
  if (!type metadata singleton initialization cache for AttachmentUploadTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in AttachmentUploadTask.start()(uint64_t a1)
{
  v4 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentUploadTask.start()(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t keypath_get_18Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void type metadata completion function for AttachmentUploadTask()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = type metadata accessor for SymmetricKey();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Asset.Protector();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          type metadata accessor for Published<AttachmentUploadTask.State>();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of AttachmentUploadTask.start()()
{
  v2 = *(*v0 + 328);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v6();
}

void type metadata accessor for Published<AttachmentUploadTask.State>()
{
  if (!lazy cache variable for type metadata for Published<AttachmentUploadTask.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<AttachmentUploadTask.State>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AttachmentUploadTask.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttachmentUploadTask.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in closure #1 in AttachmentUploadTask.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in AttachmentUploadTask.start()(a1, v4, v5, (v1 + 4), v6);
}

uint64_t SceneAssociationBehavior.contentIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SceneAssociationBehavior.preferredSceneSessionRole.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SceneAssociationBehavior.preferredSceneSessionRole.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall SceneAssociationBehavior.init(shouldAssociateScene:contentIdentifier:preferredSceneSessionRole:)(GroupActivities::SceneAssociationBehavior *__return_ptr retstr, Swift::Bool shouldAssociateScene, Swift::String_optional contentIdentifier, Swift::String_optional preferredSceneSessionRole)
{
  retstr->shouldAssociateScene = shouldAssociateScene;
  retstr->contentIdentifier = contentIdentifier;
  retstr->preferredSceneSessionRole = preferredSceneSessionRole;
}

double one-time initialization function for default()
{
  static SceneAssociationBehavior.default = 1;
  result = 0.0;
  *&qword_1EDADC9F0 = 0u;
  *(&xmmword_1EDADC9F8 + 8) = 0u;
  return result;
}

uint64_t static SceneAssociationBehavior.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EDADC9F0;
  v2 = qword_1EDADCA08;
  *a1 = static SceneAssociationBehavior.default;
  *(a1 + 8) = v1;
  *(a1 + 16) = xmmword_1EDADC9F8;
  *(a1 + 32) = v2;
}

uint64_t static SceneAssociationBehavior.content(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
}

double one-time initialization function for none()
{
  static SceneAssociationBehavior.none = 0;
  result = 0.0;
  *&qword_1EB61B458 = 0u;
  *(&xmmword_1EB61B460 + 8) = 0u;
  return result;
}

uint64_t static SceneAssociationBehavior.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB61B458;
  v2 = qword_1EB61B470;
  *a1 = static SceneAssociationBehavior.none;
  *(a1 + 8) = v1;
  *(a1 + 16) = xmmword_1EB61B460;
  *(a1 + 32) = v2;
}

void SceneAssociationBehavior.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 shouldAssociateScene];
  v5 = [a1 targetContentIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 preferredSceneSessionRole];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
}

id SceneAssociationBehavior.tuSceneAssociationBehavior.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (!v0[2])
  {
    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = MEMORY[0x1B2714130](v0[1]);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = MEMORY[0x1B2714130](v2, v3);
LABEL_6:
  v6 = [objc_allocWithZone(MEMORY[0x1E69D8B50]) initWithTargetContentIdentifier:v4 shouldAssociateScene:v1 preferredSceneSessionRole:v5];

  return v6;
}

uint64_t specialized static SceneAssociationBehavior.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = a1[1] == a2[1] && v4 == v7;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v5 == v8 && v6 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for SceneAssociationBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SceneAssociationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

Swift::Int AuthorizationPromptOptions.PromptCondition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

uint64_t AuthorizationPromptOptions.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AuthorizationPromptOptions.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AuthorizationPromptOptions.startForEveryone.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AuthorizationPromptOptions.startForMe.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void __swiftcall AuthorizationPromptOptions.init(title:message:startForEveryone:startForMe:alwaysPrompt:confirmReplacement:)(GroupActivities::AuthorizationPromptOptions *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, Swift::String_optional startForEveryone, Swift::String_optional startForMe, Swift::Bool alwaysPrompt, Swift::Bool confirmReplacement)
{
  retstr->title = title;
  retstr->message = message;
  retstr->startForEveryone = startForEveryone;
  retstr->startForMe = startForMe;
  retstr->promptCondition = alwaysPrompt;
  retstr->confirmReplacement = confirmReplacement;
}

uint64_t AuthorizationPromptOptions.overrides.getter()
{
  v1 = type metadata accessor for AuthorizationRequestOverrides.PromptCondition();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[3];
  v18[2] = v0[2];
  v18[3] = v9;
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[7];
  v18[0] = v0[6];
  v18[1] = v12;
  v15 = *(v0 + 65);
  (*(v2 + 104))(v6, **(&unk_1E7A4B8F0 + *(v0 + 64)), v1);
  (*(v2 + 32))(v8, v6, v1);
  v16 = objc_allocWithZone(type metadata accessor for AuthorizationRequestOverrides());

  return AuthorizationRequestOverrides.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)();
}

unint64_t lazy protocol witness table accessor for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition()
{
  result = lazy protocol witness table cache variable for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition;
  if (!lazy protocol witness table cache variable for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition);
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for AuthorizationPromptOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
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

uint64_t storeEnumTagSinglePayload for AuthorizationPromptOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t SystemCoordinator.__allocating_init(clientProvider:)(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return SystemCoordinator.init(clientProvider:)(a1);
}

void specialized _Streamed.yield(_:)(uint64_t a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySi__GMd, &_sScS12ContinuationV11YieldResultOySi__GMR);
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *(v1 + 16);
  os_unfair_lock_lock((v11 + 40));
  if (*(v11 + 32) == a1)
  {

    os_unfair_lock_unlock((v11 + 40));
  }

  else
  {
    *(v11 + 32) = a1;
    v12 = *(v11 + 24);

    os_unfair_lock_unlock((v11 + 40));
    if (v12)
    {
      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 64);
      v16 = (v13 + 63) >> 6;
      v23 = v7 + 16;
      v24 = a1;
      v21[1] = v7 + 8;
      v22 = (v3 + 8);

      v17 = 0;
      while (v15)
      {
        v18 = v17;
LABEL_14:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        (*(v7 + 16))(v10, *(v12 + 56) + *(v7 + 72) * (v19 | (v18 << 6)), v6);
        v20 = v25;
        v27 = v24;
        AsyncStream.Continuation.yield(_:)();
        (*v22)(v20, v26);
        (*(v7 + 8))(v10, v6);
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {

          return;
        }

        v15 = *(v12 + 64 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void specialized _Streamed.finish()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - v4;
  v6 = *(v0 + 16);
  os_unfair_lock_lock((v6 + 40));
  v7 = *(v6 + 24);
  *(v6 + 24) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock((v6 + 40));
  v8 = 0;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v15[1] = v2 + 16;
  while (v11)
  {
    v13 = v8;
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v2 + 16))(v5, *(v7 + 56) + *(v2 + 72) * (v14 | (v13 << 6)), v1);
    AsyncStream.Continuation.finish()();
    (*(v2 + 8))(v5, v1);
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v11 = *(v7 + 64 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized _Streamed.projectedValue.getter()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySi__GMd, &_sScS12ContinuationV11YieldResultOySi__GMR);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySi__GMd, &_sScS12ContinuationV15BufferingPolicyOySi__GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8650], v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v9, v5);
  v15 = *(v0 + 16);
  v23 = v14;
  os_unfair_lock_lock((v15 + 40));
  partial apply for specialized closure #1 in _Streamed.projectedValue.getter((v15 + 16), v24);
  os_unfair_lock_unlock((v15 + 40));
  v16 = v24[0];
  v17 = v24[1];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v16;
  AsyncStream.Continuation.onTermination.setter();
  v24[0] = v17;
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v22);
  return (*(v11 + 8))(v14, v10);
}

uint64_t specialized closure #2 in _Streamed.projectedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 16);

    os_unfair_lock_lock(v9 + 10);
    specialized Dictionary.removeValue(forKey:)(a3, v7);
    outlined destroy of NSObject?(v7, &_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
    os_unfair_lock_unlock(v9 + 10);
  }

  return result;
}

uint64_t GroupSession.systemCoordinator.getter()
{
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = *v0;
  return MEMORY[0x1EEE6DFA0](GroupSession.systemCoordinator.getter, 0, 0);
}

{
  v13 = v0;
  v1 = v0[5];
  v2 = v0[3];
  GroupSession.state.getter();
  v12 = 0;
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  LOBYTE(v2) = static GroupSession.State.== infix(_:_:)(&v11, &v12);
  outlined consume of GroupSession<A>.State<A>(v11);
  if (v2 & 1) != 0 || (v5 = v0[3], GroupSession.state.getter(), v12 = 1, LOBYTE(v5) = static GroupSession.State.== infix(_:_:)(&v11, &v12), outlined consume of GroupSession<A>.State<A>(v11), (v5))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v6 = v0[4];
    v0[2] = v0[3];
    v7 = static SystemCoordinatorTable.shared;

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = GroupSession.systemCoordinator.getter;

    return specialized SystemCoordinatorTable.systemCoordinator(for:)((v0 + 2), v7, v6, &protocol witness table for GroupSession<A>);
  }

  else
  {
    v10 = v0[1];

    return v10(0);
  }
}

uint64_t GroupSession.systemCoordinator.getter(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 24);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

void SystemCoordinator.localParticipantState.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t SystemCoordinator.remoteParticipantStates.getter()
{
  swift_getKeyPath();
  v3 = v0;
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t SystemCoordinator.localParticipantStates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  swift_beginAccess();
  outlined init with copy of SystemCoordinator.ParticipantStates?(v1 + v10, v9);
  v11 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return outlined init with take of SystemCoordinator.ParticipantStates(v9, a1);
  }

  outlined destroy of NSObject?(v9, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  closure #1 in SystemCoordinator.localParticipantStates.getter(v1);
  outlined init with copy of SystemCoordinator.ParticipantStates(a1, v7, type metadata accessor for SystemCoordinator.ParticipantStates);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantStates?(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t key path setter for SystemCoordinator.localParticipantStates : SystemCoordinator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SystemCoordinator.ParticipantStates(a1, v12, type metadata accessor for SystemCoordinator.ParticipantStates);
  v13 = *a2;
  outlined init with take of SystemCoordinator.ParticipantStates(v12, v7);
  (*(v9 + 56))(v7, 0, 1, v8);
  v14 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantStates?(v7, v13 + v14);
  return swift_endAccess();
}

uint64_t closure #1 in SystemCoordinator.localParticipantStates.getter(uint64_t a1)
{
  swift_getKeyPath();
  v12 = a1;
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(a1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v2 + 4);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = CurrentValueSubject.init(_:)();
  v7 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher);
  *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher) = v6;

  v12 = v6;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<SystemCoordinator.ParticipantState, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  v11 = Publisher.eraseToAnyPublisher()();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  v9 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  MEMORY[0x1B2713BD0](&v11, v8, v9);
}

uint64_t SystemCoordinator.activeSpatialParticipantCount.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount) + 16);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t key path getter for SystemCoordinator.activeSpatialParticipantCount : SystemCoordinator@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount) + 16);

  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 32);
  os_unfair_lock_unlock((v3 + 40));

  *a2 = v4;
  return result;
}

uint64_t key path setter for SystemCoordinator.activeSpatialParticipantCount : SystemCoordinator(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount);

  specialized _Streamed.yield(_:)(v2);
}

uint64_t SystemCoordinator.$activeSpatialParticipantCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount);

  specialized _Streamed.projectedValue.getter();
}

void SystemCoordinator.Configuration.spatialTemplatePreference.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t SystemCoordinator.Configuration.spatialTemplatePreference.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t SystemCoordinator.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619638;
  v2 = HIBYTE(word_1EB619638);
  *a1 = static SpatialTemplatePreference.none;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  *(a1 + 10) = 0;
  return result;
}

void SystemCoordinator.configuration.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

void key path getter for SystemCoordinator.configuration : SystemCoordinator(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  SystemCoordinator.configuration.getter();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  *(a2 + 10) = v7;
  *(a2 + 11) = v8;
}

uint64_t key path setter for SystemCoordinator.configuration : SystemCoordinator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t SystemCoordinator.configuration.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void closure #1 in SystemCoordinator.configuration.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3 >> 8;
  v7 = *(a1 + 16);
  os_unfair_lock_lock(v7 + 4);
  v8 = (a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
  v9 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
  v10 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
  v11 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  *(v8 + 9) = v6;
  *(v8 + 10) = BYTE2(a3) & 1;
  *(v8 + 11) = HIBYTE(a3) & 1;
  SystemCoordinator.refreshConfiguration()();
  v12 = *(v8 + 8);
  v13 = *(v8 + 9);
  if (v11 != v13)
  {
    goto LABEL_9;
  }

  if (v10)
  {
    if (v8[1])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = v9 == *v8 ? *(v8 + 8) : 1;
  if (v14)
  {
LABEL_9:
    v15 = *v8;
    v16 = v12;
    v17 = v13;
    SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(&v15);
  }

LABEL_10:
  os_unfair_lock_unlock(v7 + 4);
}

void SystemCoordinator.refreshConfiguration()()
{
  v1 = v0;
  os_unfair_lock_assert_owner((*(v0 + 16) + 16));
  v2 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(*v3 + 128);

    v6 = v4(v5);

    if (one-time initialization token for systemCoordinator != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.systemCoordinator);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v6 > 0;
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v73[0] = v12;
        *v11 = 136315650;
        v13 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
        v14 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
        v15 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 10);
        v16 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 11);
        *&v74 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
        BYTE8(v74) = v13;
        BYTE9(v74) = v14;
        BYTE10(v74) = v15;
        BYTE11(v74) = v16;
        v17 = String.init<A>(reflecting:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v73);

        *(v11 + 4) = v19;
        *(v11 + 12) = 2080;
        LOBYTE(v74) = v10;
        v20 = String.init<A>(reflecting:)();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v73);

        *(v11 + 14) = v22;
        *(v11 + 22) = 2080;
        v23 = v10;
        v24 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
        *&v74 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
        *(&v74 + 1) = v24;
        outlined copy of SystemCoordinatorParticipantRoleRequest(v74, v24);
        v25 = String.init<A>(reflecting:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v73);

        *(v11 + 24) = v27;
        _os_log_impl(&dword_1AEE80000, v8, v9, "SystemCoordinator: Setting configuration %s, isObservingGroupImmersionStyle %s, localParticipantRoleAssignmentRequest: %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v12, -1, -1);
        MEMORY[0x1B2715BA0](v11, -1, -1);
      }

      else
      {
        v23 = v6 > 0;
      }

      v69 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
      v67 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
      v28 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
      v29 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 10);
      v30 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
      v31 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
      v32 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 11);
      v33 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
      swift_beginAccess();
      v34 = *(v1 + v33);
      v35 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplateRoles;
      swift_beginAccess();
      v36 = *(v1 + v35);

      v70 = v30;
      v68 = v31;
      outlined copy of SystemCoordinatorParticipantRoleRequest(v30, v31);
      v65 = specialized _NativeDictionary.mapValues<A>(_:)(v36);

      v66 = type metadata accessor for SystemCoordinatorConfiguration();
      v37 = objc_allocWithZone(v66);
      v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = v29;
      v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = v23;
      v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = v32;
      v64 = qword_1AF0157B8[v28];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
      v38 = static _DictionaryStorage.copy(original:)();
      v39 = v38;
      v40 = 0;
      v6 = 1;
      v41 = 1 << *(v34 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v34 + 64);
      v44 = (v41 + 63) >> 6;
      v45 = v38 + 64;
      if (!v43)
      {
        break;
      }

      while (1)
      {
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
LABEL_15:
        v49 = v46 | (v40 << 6);
        v50 = (*(v34 + 48) + 16 * v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = *(v34 + 56) + 16 * v49;
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = qword_1AF0157B8[*(v53 + 9)];
        *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        v57 = (v39[6] + 16 * v49);
        *v57 = v52;
        v57[1] = v51;
        v58 = v39[7] + 48 * v49;
        *v58 = v54;
        *(v58 + 8) = v55;
        *(v58 + 24) = 0;
        *(v58 + 32) = 0;
        *(v58 + 16) = v56;
        *(v58 + 40) = 2;
        v59 = v39[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          break;
        }

        v39[2] = v61;

        if (!v43)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_10:
    v47 = v40;
    while (1)
    {
      v40 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v40 >= v44)
      {
        break;
      }

      v48 = *(v34 + 64 + 8 * v40);
      ++v47;
      if (v48)
      {
        v46 = __clz(__rbit64(v48));
        v43 = (v48 - 1) & v48;
        goto LABEL_15;
      }
    }

    v72 = v67;
    *&v74 = v69;
    BYTE8(v74) = v67;
    v76 = 0;
    v77 = 0;
    v75 = v64;
    v78 = 2;
    v79 = v70;
    v80 = v68;
    v81 = v39;
    v82 = v65;
    v62 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR));
    *&v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = specialized XPCWrapper.init(_:)(&v74);
    v71.receiver = v37;
    v71.super_class = v66;
    v63 = objc_msgSendSuper2(&v71, sel_init);
    [*(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client) setConfiguration_];
  }

  else
  {
    __break(1u);
  }
}

void SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(v1 + 16);
  os_unfair_lock_assert_owner(v5 + 4);
  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState];
    if (*&v7[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8])
    {
      v8 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
      v9 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
      *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest) = xmmword_1AF00EBD0;
      v13 = v6;
      outlined consume of SystemCoordinatorParticipantRoleRequest(v8, v9);
      os_unfair_lock_assert_owner(v5 + 4);
      SystemCoordinator.refreshConfiguration()();
    }

    else
    {
      v14 = v2;
      v15 = v3;
      v16 = v4;
      v10 = v6;
      SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v7, &v14, v17);
      swift_beginAccess();
      outlined init with copy of SystemCoordinator.ParticipantState(v1 + 32, &v14);
      v11 = specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(&v14, v17);
      outlined destroy of SystemCoordinator.ParticipantState(&v14);
      if ((v11 & 1) == 0)
      {
        os_unfair_lock_unlock(v5 + 4);
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v14 = v1;
        lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        os_unfair_lock_lock(v5 + 4);
      }

      outlined destroy of SystemCoordinator.ParticipantState(v17);
    }
  }
}

void (*SystemCoordinator.configuration.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator___observationRegistrar;
  v4[2] = v1;
  v4[5] = lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v6 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  v4[6] = 0;
  os_unfair_lock_unlock(v6 + 4);
  return SystemCoordinator.configuration.modify;
}

void SystemCoordinator.configuration.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 9);
  v6 = *(*a1 + 10);
  v7 = *(*a1 + 11);
  swift_getKeyPath();
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[4];
  v1[2] = v1[3];
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

void SystemCoordinator.assignRole<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  SystemCoordinator._roleAssignmentDiagnostic<A>(for:)(a1, a2, a3, &v18);
  if (v19[24] == 255)
  {
    v14 = outlined destroy of NSObject?(&v18, &_s15GroupActivities17SystemCoordinatorC24RoleAssignmentDiagnosticOSgMd, &_s15GroupActivities17SystemCoordinatorC24RoleAssignmentDiagnosticOSgMR);
  }

  else
  {
    v20 = v18;
    v21[0] = *v19;
    *(v21 + 9) = *&v19[9];
    if (one-time initialization token for runtimeIssues != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.runtimeIssues);
    outlined init with copy of SystemCoordinator.RoleAssignmentDiagnostic(&v20, &v18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = SystemCoordinator.RoleAssignmentDiagnostic.description.getter();
      v12 = v11;
      outlined destroy of SystemCoordinator.RoleAssignmentDiagnostic(&v18);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1AEE80000, v6, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    else
    {

      outlined destroy of SystemCoordinator.RoleAssignmentDiagnostic(&v18);
    }

    v14 = outlined destroy of SystemCoordinator.RoleAssignmentDiagnostic(&v20);
  }

  v15 = *(v4 + 16);
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  os_unfair_lock_lock(v15 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v15 + 4);
}

void SystemCoordinator._roleAssignmentDiagnostic<A>(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v4 + 16);
  os_unfair_lock_lock(v9 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v9 + 4);
  if (v15 <= 1u)
  {
    if (v15)
    {
      v10 = 0x2D79622D65646973;
      v11 = 0xEC00000065646973;
    }

    else
    {
      v10 = 1701736302;
      v11 = 0xE400000000000000;
    }

    goto LABEL_10;
  }

  if (v15 == 2)
  {
    v10 = 0x61737265766E6F63;
    v11 = 0xEE006C616E6F6974;
    goto LABEL_10;
  }

  if (v15 == 3)
  {
    v10 = 0x646E756F72727573;
    v11 = 0xE800000000000000;
LABEL_10:
    *a4 = v10;
    *(a4 + 8) = v11;
    v14 = 1;
    goto LABEL_11;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock(v9 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v9 + 4);
  (*(a3 + 16))(a2, a3);

  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v14 = 0;
LABEL_11:
  *(a4 + 40) = v14;
}

void closure #1 in SystemCoordinator.assignRole<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 16))(a3, a4);
  v6 = (a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
  v7 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
  v8 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
  *v6 = v5;
  v6[1] = v9;
  outlined consume of SystemCoordinatorParticipantRoleRequest(v7, v8);
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

unint64_t SystemCoordinator.RoleAssignmentDiagnostic.description.getter()
{
  outlined init with copy of SystemCoordinator.RoleAssignmentDiagnostic(v0, v4);
  if (v5)
  {
    if (v5 == 1)
    {
      v1 = v4[0];
      v3[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x1B27141F0](39, 0xE100000000000000);
      MEMORY[0x1B27141F0](v1, *(&v1 + 1));

      MEMORY[0x1B27141F0](0xD000000000000033, 0x80000001AF01D1D0);
      return 0;
    }

    else
    {
      return 0xD00000000000005CLL;
    }
  }

  else
  {
    outlined init with take of Transferable(v4, v3);
    _StringGuts.grow(_:)(84);
    MEMORY[0x1B27141F0](0xD000000000000051, 0x80000001AF01D210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19SpatialTemplateRole_pMd, &_s15GroupActivities19SpatialTemplateRole_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B27141F0](39, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_0(v3);
    return 0;
  }
}

uint64_t SystemCoordinator._customTemplateDiagnostic<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5(a2, a3) + 16);

  if (v6 > 4)
  {
    return 0;
  }

  v7 = *(v5(a2, a3) + 16);

  swift_getDynamicType();
  return v7;
}

uint64_t SystemCoordinator.SpatialTemplateDiagnostic.description.getter(uint64_t a1)
{
  if (a1 >= 1)
  {
    if (a1 == 1)
    {
      v1 = 0x80000001AF01D4B0;
      v2 = 0xD00000000000002CLL;
    }

    else
    {
      _StringGuts.grow(_:)(42);
      v6 = Int.spelledOut.getter();
      v8 = v7;

      v20 = v8;
      MEMORY[0x1B27141F0](0xD000000000000028, 0x80000001AF01D370);
      v2 = v6;
      v1 = v20;
      if (a1 == 4)
      {
        _StringGuts.grow(_:)(18);
        v9 = Int.spelledOut.getter();
        v11 = v10;

        v19 = v9;
        v21 = v11;
        v12 = "as\n\nAdd at least ";
        v13 = 0xD000000000000010;
LABEL_9:
        MEMORY[0x1B27141F0](v13, v12 | 0x8000000000000000);
        _StringGuts.grow(_:)(222);
        MEMORY[0x1B27141F0](0xD000000000000049, 0x80000001AF01D3C0);
        MEMORY[0x1B27141F0](v2, v1);

        MEMORY[0x1B27141F0](0xD000000000000071, 0x80000001AF01D410);
        MEMORY[0x1B27141F0](v19, v21);

        v3 = 0x27206F7420;
        v4 = 0xE500000000000000;
        goto LABEL_10;
      }
    }

    _StringGuts.grow(_:)(19);
    v14 = Int.spelledOut.getter();
    v16 = v15;

    v19 = v14;
    v21 = v16;
    v12 = "th spatial Personas join";
    v13 = 0xD000000000000011;
    goto LABEL_9;
  }

  _StringGuts.grow(_:)(245);
  v3 = 0xD0000000000000DALL;
  v4 = 0x80000001AF01D270;
LABEL_10:
  MEMORY[0x1B27141F0](v3, v4);
  v17 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v17);

  MEMORY[0x1B27141F0](0xD000000000000019, 0x80000001AF01D350);
  return 0;
}

uint64_t Int.spelledOut.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setNumberStyle_];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = [v0 stringFromNumber_];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v3 = BinaryInteger.description.getter();
  }

  return v3;
}

Swift::Void __swiftcall SystemCoordinator.resignRole()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SystemCoordinator.resignRole()(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest;
  v3 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
  v4 = *(v2 + 8);
  *v2 = xmmword_1AF00EBD0;
  outlined consume of SystemCoordinatorParticipantRoleRequest(v3, v4);
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

uint64_t SystemCoordinator.spatialCatchupNeededHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v3;
}

uint64_t key path getter for SystemCoordinator.spatialCatchupNeededHandler : SystemCoordinator@<X0>(void *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
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

uint64_t key path setter for SystemCoordinator.spatialCatchupNeededHandler : SystemCoordinator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return SystemCoordinator.spatialCatchupNeededHandler.setter(v6, v5);
}

uint64_t SystemCoordinator.spatialCatchupNeededHandler.setter(void (*a1)(void), uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(a1);
  result = outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6);
  if (a1)
  {
    v9 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v9 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v10);
    os_unfair_lock_unlock(v9 + 4);
    if (v10 != 2)
    {
      a1(v10 & 1);
    }

    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1);
  }

  return result;
}

void (*SystemCoordinator.spatialCatchupNeededHandler.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return SystemCoordinator.spatialCatchupNeededHandler.modify;
}

void SystemCoordinator.spatialCatchupNeededHandler.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v5 + v3[4];
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);
      v9 = *(v5 + 16);
      MEMORY[0x1EEE9AC00](v4);

      os_unfair_lock_lock(v9 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v10);
      os_unfair_lock_unlock(v9 + 4);
      if (v10[0] != 2)
      {
        v7(v10[0] & 1);
      }

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v7);
    }
  }

  free(v3);
}

uint64_t SystemCoordinator._groupImmersionStyle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<SystemCoordinatorState.GroupImmersionStyle?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMR);
  lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<SystemCoordinatorState.GroupImmersionStyle?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMR);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t SystemCoordinator.groupImmersionStyleAssertionManager.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SystemCoordinator.groupImmersionStyleAssertionManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SystemCoordinator.client.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client + 8);
  return swift_unknownObjectRetain();
}

uint64_t SystemCoordinator.subscriptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*SystemCoordinator.defaultSpatialTemplatePreferences.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemCoordinator.defaultSpatialTemplatePreferences.modify;
}

void key path setter for SystemCoordinator.defaultSpatialTemplatePreferences : SystemCoordinator(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;

  os_unfair_lock_assert_owner((*(v6 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

void SystemCoordinator.defaultSpatialTemplatePreferences.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;

  os_unfair_lock_assert_owner((*(v2 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

uint64_t (*SystemCoordinator.defaultSpatialTemplateRoles.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemCoordinator.defaultSpatialTemplateRoles.modify;
}

void SystemCoordinator.defaultSpatialTemplatePreferences.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_assert_owner((*(*(a1 + 24) + 16) + 16));
    SystemCoordinator.refreshConfiguration()();
  }
}

uint64_t SystemCoordinator.init(clientProvider:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  v3 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SystemCoordinator.init(clientProvider:), 0, 0);
}

uint64_t SystemCoordinator.init(clientProvider:)()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 128) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 136) = xmmword_1AF00FCC0;
  *(v0 + 16) = 1;
  *(v3 + 32) = 0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 264) = 0;
  *(v3 + 248) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 224) = *(v0 + 16);
  *(v3 + 272) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities11ParticipantV_AC17SystemCoordinatorC0E5StateVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  *(v0 + 184) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  (*(v2 + 56))(v3 + v5, 1, 1, v1);
  v6 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount;
  *(v0 + 192) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities9_StreamedCySiGMd, &_s15GroupActivities9_StreamedCySiGMR);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15GroupActivities9_StreamedC5State33_C756016345F7491C1FEEEE20B6BEE88DLLVySi_GSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15GroupActivities9_StreamedC5State33_C756016345F7491C1FEEEE20B6BEE88DLLVySi_GSo16os_unfair_lock_sVGMR);
  v8 = swift_allocObject();
  *(v8 + 40) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 16) = 0;
  *(v8 + 24) = v9;
  *(v8 + 32) = 0;
  *(v7 + 16) = v8;
  *(v3 + v6) = v7;
  v10 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration;
  if (one-time initialization token for none != -1)
  {
    swift_once();
  }

  v11 = v3 + v10;
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = word_1EB619638;
  v15 = HIBYTE(word_1EB619638);
  *v11 = static SpatialTemplatePreference.none;
  *(v11 + 8) = v14;
  *(v11 + 9) = v15;
  *(v11 + 10) = 0;
  v16 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
  *(v0 + 200) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
  v17 = (v13 + v16);
  *v17 = 0;
  v17[1] = 0;
  *(v13 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_cachedSpatialCatchupNeededValue) = 2;
  v18 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject;
  *(v0 + 208) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject;
  *(v0 + 17) = 3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v13 + v18) = CurrentValueSubject.init(_:)();
  v22 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  *(v0 + 216) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  *(v13 + v22) = 0;
  v23 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState;
  *(v0 + 224) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState;
  *(v13 + v23) = 0;
  v24 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_subscriptions;
  *(v0 + 232) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_subscriptions;
  *(v13 + v24) = MEMORY[0x1E69E7CD0];
  v25 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher;
  *(v0 + 240) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher;
  *(v13 + v25) = 0;
  v26 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
  *(v0 + 248) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
  *(v13 + v26) = v9;
  v27 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest;
  *(v0 + 256) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest;
  v28 = (v13 + v27);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
  *(v0 + 264) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
  *(v13 + v29) = v9;
  v30 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplateRoles;
  *(v0 + 272) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplateRoles;
  *(v13 + v30) = v9;
  *(v0 + 280) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator___observationRegistrar;
  ObservationRegistrar.init()();
  v31 = v12[3];
  v32 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v31);
  v33 = *(v32 + 8);
  v37 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  *(v0 + 288) = v35;
  *v35 = v0;
  v35[1] = SystemCoordinator.init(clientProvider:);

  return v37(v31, v32);
}

{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 112);
    v62 = *(v0 + 176);
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_canBeInitialSpatialDriver) = (*(v6 + 32))(v5, v6) & 1;
    v7 = (v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
    *v7 = v1;
    v7[1] = v2;
    v8 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for AssertionManager();
    v9 = swift_allocObject();
    v10 = type metadata accessor for Lock();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();

    v9[4] = Lock.init()();
    v9[5] = 0;
    v9[2] = partial apply for closure #1 in SystemCoordinator.init(clientProvider:);
    v9[3] = v8;

    v13 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
    swift_beginAccess();
    v14 = *(v3 + v13);
    *(v3 + v13) = v9;

    v15 = (v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
    v16 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
    v17 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client + 8);
    ObjectType = swift_getObjectType();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = *(v17 + 16);
    swift_unknownObjectRetain();

    v20(partial apply for closure #2 in SystemCoordinator.init(clientProvider:), v19, ObjectType, v17);

    swift_unknownObjectRelease();
    v21 = *v15;
    v22 = v15[1];
    v23 = swift_getObjectType();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = *(v22 + 40);
    swift_unknownObjectRetain();

    v25(partial apply for closure #3 in SystemCoordinator.init(clientProvider:), v24, v23, v22);

    swift_unknownObjectRelease();
    v26 = v4[3];
    v27 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v26);
    *(v0 + 120) = (*(v27 + 16))(v26, v27);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v28 = v4[3];
    v29 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v28);
    *(v0 + 128) = (*(v29 + 40))(v28, v29);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UInt64 : Participant], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMR);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    SystemCoordinator.localParticipantStates.getter(v62);

    swift_unknownObjectRelease();
    outlined destroy of SystemCoordinator.ParticipantStates(v62, type metadata accessor for SystemCoordinator.ParticipantStates);
    v30 = *(v0 + 144);
  }

  else
  {
    v60 = *(v0 + 272);
    v61 = *(v0 + 280);
    v59 = *(v0 + 264);
    v57 = *(v0 + 240);
    v58 = *(v0 + 248);
    v31 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v35 = *(v0 + 192);
    v36 = *(v0 + 184);
    v37 = *(v0 + 144);
    v63 = *(v0 + 152);
    v38 = &v37[*(v0 + 256)];
    v39 = &v37[*(v0 + 200)];
    v40 = *(v37 + 2);

    outlined destroy of SystemCoordinator.ParticipantState((v37 + 32));
    v41 = *(v37 + 34);

    outlined destroy of NSObject?(&v37[v36], &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
    v42 = *&v37[v35];

    v43 = v39[1];
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*v39);
    v44 = *&v37[v34];

    v45 = *&v37[v33];

    v46 = *&v37[v32];

    v47 = *&v37[v57];

    v48 = *&v37[v58];

    outlined consume of SystemCoordinatorParticipantRoleRequest(*v38, *(v38 + 1));
    v49 = *&v37[v59];

    v50 = *&v37[v60];

    v51 = type metadata accessor for ObservationRegistrar();
    (*(*(v51 - 8) + 8))(&v37[v61], v51);
    v52 = *(*v37 + 48);
    v53 = *(*v37 + 52);
    swift_deallocPartialClassInstance();
    v30 = 0;
  }

  v54 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0(*(v0 + 136));

  v55 = *(v0 + 8);

  return v55(v30);
}

uint64_t SystemCoordinator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[36];
  v7 = *v2;
  v4[37] = a1;

  return MEMORY[0x1EEE6DFA0](SystemCoordinator.init(clientProvider:), 0, 0);
}

uint64_t closure #1 in SystemCoordinator.init(clientProvider:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);

    os_unfair_lock_lock(v1 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t closure #2 in SystemCoordinator.init(clientProvider:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for systemCoordinator != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.systemCoordinator);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEE80000, v2, v3, "Server disconnected", v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }

    SystemCoordinator.resetPublishedProperties()();
  }

  return result;
}

uint64_t SystemCoordinator.resetPublishedProperties()()
{
  v1 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Resetting published properties", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject);
  CurrentValueSubject.send(_:)();
  v8 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
  v7 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client + 8);
  ObjectType = swift_getObjectType();
  return (*(v7 + 56))(ObjectType, v7);
}

uint64_t closure #3 in SystemCoordinator.init(clientProvider:)(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SystemCoordinator.update(with:isInitial:)(a1, 0);
  }

  return result;
}

uint64_t SystemCoordinator.update(with:isInitial:)(void *a1, char a2)
{
  v3 = v2;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.systemCoordinator);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v10 = 136315138;
    v35 = v7;
    type metadata accessor for SystemCoordinatorState();
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v38);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Updating with state=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  v16 = *(v3 + 16);
  os_unfair_lock_lock(v16 + 4);
  v17 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState);
  *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState) = v7;

  v18 = v7;
  SystemCoordinator.updateRemoteParticipantStates()();
  v19 = *&v18[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState];
  v20 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
  v21 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
  v35 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
  v36 = v20;
  v37 = v21;
  v22 = v19;
  SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v22, &v35, v38);
  swift_beginAccess();
  outlined init with copy of SystemCoordinator.ParticipantState(v3 + 32, &v35);
  v23 = specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(&v35, v38);
  outlined destroy of SystemCoordinator.ParticipantState(&v35);
  if (v23)
  {
    os_unfair_lock_unlock(v16 + 4);
    goto LABEL_19;
  }

  if (*(v3 + 32))
  {
    v24 = 2;
    if (v38[0])
    {
      goto LABEL_16;
    }
  }

  else if (LOBYTE(v38[0]))
  {
    v25 = v22 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator;
    if (a2)
    {
      v25 = (v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_canBeInitialSpatialDriver);
    }

    v24 = (*v25 & 1) == 0;
  }

  else
  {
    v24 = 2;
  }

  *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_cachedSpatialCatchupNeededValue) = v24;
LABEL_16:
  os_unfair_lock_unlock(v16 + 4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v35 = v3;
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (v24 != 2)
  {
    v27 = v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {
      v29 = *(v27 + 8);

      v28(v24 & 1);
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v28);
    }
  }

LABEL_19:
  v30 = *&v18[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount];
  v31 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount);

  specialized _Streamed.yield(_:)(v30);

  v32 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject);
  v34 = v18[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle];
  CurrentValueSubject.send(_:)();
  return outlined destroy of SystemCoordinator.ParticipantState(v38);
}

uint64_t closure #4 in SystemCoordinator.init(clientProvider:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      SystemCoordinator.fetchInitialState()();
    }

    else
    {
      SystemCoordinator.finishPublishedProperties()();
    }
  }

  return result;
}

void SystemCoordinator.fetchInitialState()()
{
  v1 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Fetching initial state", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
  v8[4] = partial apply for closure #1 in SystemCoordinator.fetchInitialState();
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ();
  v8[3] = &block_descriptor_10;
  v7 = _Block_copy(v8);

  [v6 requestCurrentState_];
  _Block_release(v7);
}

uint64_t SystemCoordinator.finishPublishedProperties()()
{
  v1 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Finishing published properties", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher))
  {

    CurrentValueSubject.send(completion:)();
  }

  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject);
  CurrentValueSubject.send(completion:)();
  v7 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount);

  specialized _Streamed.finish()();

  v9 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
  v8 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client + 8);
  ObjectType = swift_getObjectType();
  return (*(v8 + 56))(ObjectType, v8);
}

uint64_t closure #5 in SystemCoordinator.init(clientProvider:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    v4 = MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v4);

    os_unfair_lock_lock(v3 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v3 + 4);
  }

  return result;
}

void closure #1 in closure #5 in SystemCoordinator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;

  SystemCoordinator.updateRemoteParticipantStates()();
}

void SystemCoordinator.updateRemoteParticipantStates()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v66 - v8;
  v10 = *(v0 + 16);
  os_unfair_lock_assert_owner(v10 + 4);
  v11 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState);
  if (v11)
  {
    v72 = v9;
    v73 = v7;
    v71 = v3;
    v69 = v2;
    v74 = v10;
    v12 = *&v11[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates];
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v77 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
    v70 = v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration;
    v16 = (v13 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v75 = v11;
    v17 = 0;
    v76 = MEMORY[0x1E69E7CC8];
    while (v15)
    {
LABEL_11:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = (v17 << 9) | (8 * v19);
      v21 = *(*(v12 + 48) + v20);
      v22 = *(*(v12 + 56) + v20);
      v23 = v77;
      swift_beginAccess();
      v24 = *(v1 + v23);
      if (*(v24 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v26 & 1) != 0))
      {
        v27 = *(v24 + 56);
        v28 = v72;
        v66 = *(v71 + 72);
        outlined init with copy of SystemCoordinator.ParticipantStates(v27 + v66 * v25, v72, type metadata accessor for Participant);
        swift_endAccess();
        v29 = v28;
        v30 = v73;
        outlined init with copy of SystemCoordinator.ParticipantStates(v29, v73, type metadata accessor for Participant);
        v31 = *(v70 + 8);
        v32 = *(v70 + 9);
        *&v79 = *v70;
        BYTE8(v79) = v31;
        BYTE9(v79) = v32;
        v33 = v22;
        SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v33, &v79, v94);
        v91 = v94[12];
        v92 = v94[13];
        v93 = v94[14];
        v87 = v94[8];
        v88 = v94[9];
        v89 = v94[10];
        v90 = v94[11];
        v83 = v94[4];
        v84 = v94[5];
        v85 = v94[6];
        v86 = v94[7];
        v79 = v94[0];
        v80 = v94[1];
        v81 = v94[2];
        v82 = v94[3];
        v34 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v34;
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v37 = *(v34 + 16);
        v38 = (v35 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v40 = *(v34 + 24);
        v67 = v33;
        if (v40 >= v39)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v59 = v35;
            specialized _NativeDictionary.copy()();
            LOBYTE(v35) = v59;
          }
        }

        else
        {
          LODWORD(v76) = v35;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(v73);
          v42 = v35 & 1;
          LOBYTE(v35) = v76;
          if ((v76 & 1) != v42)
          {
            goto LABEL_30;
          }

          v36 = v41;
        }

        v43 = v78;
        v76 = v78;
        if (v35)
        {
          outlined assign with take of SystemCoordinator.ParticipantState(&v79, *(v78 + 56) + 240 * v36);

          outlined destroy of SystemCoordinator.ParticipantStates(v73, type metadata accessor for Participant);
          outlined destroy of SystemCoordinator.ParticipantStates(v72, type metadata accessor for Participant);
        }

        else
        {
          *(v78 + 8 * (v36 >> 6) + 64) |= 1 << v36;
          outlined init with copy of SystemCoordinator.ParticipantStates(v73, v43[6] + v36 * v66, type metadata accessor for Participant);
          v44 = (v43[7] + 240 * v36);
          v46 = v92;
          v45 = v93;
          v47 = v91;
          v44[11] = v90;
          v44[12] = v47;
          v44[13] = v46;
          v44[14] = v45;
          v49 = v88;
          v48 = v89;
          v50 = v87;
          v44[7] = v86;
          v44[8] = v50;
          v44[9] = v49;
          v44[10] = v48;
          v52 = v84;
          v51 = v85;
          v53 = v83;
          v44[3] = v82;
          v44[4] = v53;
          v44[5] = v52;
          v44[6] = v51;
          v55 = v80;
          v54 = v81;
          *v44 = v79;
          v44[1] = v55;
          v44[2] = v54;

          outlined destroy of SystemCoordinator.ParticipantStates(v73, type metadata accessor for Participant);
          outlined destroy of SystemCoordinator.ParticipantStates(v72, type metadata accessor for Participant);
          v56 = v43[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_29;
          }

          v43[2] = v58;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v16)
      {
        break;
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_11;
      }
    }

    v60 = *(v1 + 272);

    v62 = v76;
    v63 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15GroupActivities11ParticipantV_AC17SystemCoordinatorC0D5StateVTt1g5(v61, v76);

    if (v63)
    {
    }

    else
    {
      v64 = v74;
      os_unfair_lock_unlock(v74 + 4);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v66 - 2) = v1;
      *(&v66 - 1) = v62;
      *&v94[0] = v1;
      lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      os_unfair_lock_lock(v64 + 4);
    }
  }
}

void closure #1 in SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

void closure #1 in SystemCoordinator.update(with:isInitial:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of SystemCoordinator.ParticipantState(a2, v5);
  if (*(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher))
  {
    v3 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher);

    CurrentValueSubject.send(_:)();
  }

  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantState(v5, a1 + 32);
  return swift_endAccess();
}

void closure #1 in SystemCoordinator.resetPublishedProperties()(uint64_t a1)
{
  v2 = *(a1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in SystemCoordinator.resetPublishedProperties()(uint64_t a1)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v11 = xmmword_1AF00FCC0;
  v20 = 1;
  v4[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v16 = 1;
  if (*(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher))
  {
    v2 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher);

    CurrentValueSubject.send(_:)();
  }

  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantState(v4, a1 + 32);
  return swift_endAccess();
}

void closure #2 in SystemCoordinator.updateRemoteParticipantStates()(uint64_t a1)
{
  v2 = *(a1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t SystemCoordinator.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of SystemCoordinator.ParticipantState(v0 + 32);
  v2 = *(v0 + 272);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount);

  v4 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler + 8);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler));
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject);

  v6 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager);

  v7 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_subscriptions);

  v9 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher);

  v10 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants);

  outlined consume of SystemCoordinatorParticipantRoleRequest(*(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest), *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8));
  v11 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences);

  v12 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplateRoles);

  v13 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator___observationRegistrar;
  v14 = type metadata accessor for ObservationRegistrar();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t SystemCoordinator.__deallocating_deinit()
{
  SystemCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  v31 = result;
  v32 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v29 = v5;
  v30 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v32 + 56);
      v16 = (*(v32 + 48) + 16 * v14);
      v17 = v16[1];
      v37 = *v16;
      outlined init with copy of Transferable(v15 + 40 * v14, v34);
      v18 = v35;
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v20 = *(v19 + 16);

      v21 = v20(v18, v19);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0(v34);
      result = v31;
      *(v30 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v24 = (v31[6] + 16 * v14);
      *v24 = v37;
      v24[1] = v17;
      v25 = (v31[7] + 16 * v14);
      *v25 = v21;
      v25[1] = v23;
      v26 = v31[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v31[2] = v28;
      v9 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v29 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v33 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for Participant();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InternalParticipant();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities11ParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities11ParticipantVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v10 = result;
  v11 = 0;
  v33 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v29 = result + 64;
  if ((v16 & v12) != 0)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v33 + 48) + 8 * v22);
      outlined init with copy of InternalParticipant(*(v33 + 56) + *(v30 + 72) * v22, v8, type metadata accessor for InternalParticipant);
      v24 = v31;
      outlined init with copy of InternalParticipant(v8, v31, type metadata accessor for Participant);
      outlined destroy of InternalParticipant(v8);
      *(v29 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(v10[6] + 8 * v22) = v23;
      result = outlined init with take of Participant(v24, v10[7] + *(v32 + 72) * v22);
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v10[2] = v27;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return v10;
      }

      v21 = *(v13 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator()
{
  result = lazy protocol witness table cache variable for type SystemCoordinator and conformance SystemCoordinator;
  if (!lazy protocol witness table cache variable for type SystemCoordinator and conformance SystemCoordinator)
  {
    type metadata accessor for SystemCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinator and conformance SystemCoordinator);
  }

  return result;
}

uint64_t type metadata accessor for SystemCoordinator()
{
  result = type metadata singleton initialization cache for SystemCoordinator;
  if (!type metadata singleton initialization cache for SystemCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t outlined init with copy of SystemCoordinator.ParticipantStates?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SystemCoordinator.ParticipantStates?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in SystemCoordinator.configuration.getter(uint64_t a1@<X8>)
{
  partial apply for closure #1 in SystemCoordinator.configuration.getter(a1);
}

{
  v2 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
  v4 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 10);
  v5 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 11);
  *a1 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
}

void partial apply for closure #1 in SystemCoordinator.configuration.setter()
{
  partial apply for closure #1 in SystemCoordinator.configuration.setter();
}

{
  if (*(v0 + 35))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 34))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in SystemCoordinator.configuration.setter(*(v0 + 16), *(v0 + 24), v2 | v1 | (*(v0 + 33) << 8) | *(v0 + 32));
}

uint64_t specialized closure #1 in _Streamed.projectedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v15 - v9;
  v11 = *a1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, a2, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    result = specialized Dictionary.subscript.setter(v10, v11);
    v14 = a1[2];
    *a3 = v11;
    a3[1] = v14;
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15GroupActivities22SystemCoordinatorStateC0A14ImmersionStyleOSgMd, &_s15GroupActivities22SystemCoordinatorStateC0A14ImmersionStyleOSgMR);
    lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?);
  }

  return result;
}

uint64_t keypath_get_32Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void type metadata completion function for SystemCoordinator()
{
  type metadata accessor for SystemCoordinator.ParticipantStates?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SystemCoordinator.__allocating_init(clientProvider:)(uint64_t a1)
{
  v4 = *(v1 + 240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return v8(a1);
}

void type metadata accessor for SystemCoordinator.ParticipantStates?()
{
  if (!lazy cache variable for type metadata for SystemCoordinator.ParticipantStates?)
  {
    type metadata accessor for SystemCoordinator.ParticipantStates(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SystemCoordinator.ParticipantStates?);
    }
  }
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinator.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemCoordinator.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities17SystemCoordinatorC24RoleAssignmentDiagnosticO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t destructiveInjectEnumTag for SystemCoordinator.RoleAssignmentDiagnostic(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t outlined init with copy of SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in SystemCoordinator.updateRemoteParticipantStates()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 272);
  *(v1 + 272) = *(v0 + 24);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t GroupSession.createClient()()
{
  v0[2] = 0xD00000000000002CLL;
  v0[3] = 0x80000001AF01BF70;
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = GroupSession.createClient();

  return GroupSession.requestEndpoint(with:)(v0 + 2);
}

{
  if (*(v0 + 48))
  {
    type metadata accessor for SystemCoordinatorClientConnection();
    v1 = XPCClient.__allocating_init(listenerEndpoint:)();
    v2 = &protocol witness table for SystemCoordinatorClientConnection;
  }

  else
  {
    if (one-time initialization token for systemCoordinator != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.systemCoordinator);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEE80000, v4, v5, "No available endpoint for coordinator", v6, 2u);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    v1 = 0;
    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v1, v2);
}

{
  v17 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[4] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed getting endpoint for coordinator: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0, 0);
}

uint64_t GroupSession.createClient()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(v4 + 48) = a1;
  *(v4 + 56) = v1;

  v7 = *(v3 + 24);

  if (v1)
  {
    v8 = GroupSession.createClient();
  }

  else
  {
    v8 = GroupSession.createClient();
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t GroupSession.isClientValidPublisher.getter()
{
  v1 = *v0;
  v22 = *(*v0 + 80);
  v21 = *(v1 + 88);
  type metadata accessor for GroupSession.State();
  v2 = type metadata accessor for Published.Publisher();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - v4;
  v20[2] = swift_getWitnessTable();
  v6 = type metadata accessor for Publishers.Map();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - v9;
  v20[1] = swift_getWitnessTable();
  v11 = type metadata accessor for Publishers.RemoveDuplicates();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - v14;
  GroupSession.$state.getter();
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v22;
  *(v16 + 24) = v17;
  Publisher.map<A>(_:)();

  (*(v23 + 8))(v5, v2);
  Publisher<>.removeDuplicates()();
  (*(v7 + 8))(v10, v6);
  swift_getWitnessTable();
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v12 + 8))(v15, v11);
  return v18;
}

uint64_t closure #1 in GroupSession.isClientValidPublisher.getter@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = 1;
  v6 = 1;
  v7 = v3;
  result = static GroupSession.State.== infix(_:_:)(&v7, &v6);
  if ((result & 1) == 0)
  {
    v6 = 0;
    v7 = v3;
    result = static GroupSession.State.== infix(_:_:)(&v7, &v6);
    v4 = result;
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t GroupSession.canBeInitialSpatialDriver.getter()
{
  if (*(v0 + *(*v0 + 264)) != 1)
  {
    return 0;
  }

  v1 = *(*v0 + 280);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.activeParticipantsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - v3;
  v7[1] = GroupSession.internalActiveParticipantsPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V15GroupActivities11ParticipantVGMd, &_sSDys6UInt64V15GroupActivities11ParticipantVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UInt64 : InternalParticipant], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UInt64 : InternalParticipant], Never>, [UInt64 : Participant]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMR);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t closure #1 in GroupSession.activeParticipantsPublisher.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized _NativeDictionary.mapValues<A>(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>;

  return GroupSession.createClient()();
}

uint64_t protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t SystemCoordinatorClientConnection.requestCurrentState(_:)(uint64_t a1, uint64_t a2)
{
  v5 = XPCClient.queue.getter();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in SystemCoordinatorClientConnection.requestCurrentState(_:);
  *(v7 + 24) = v6;
  v12[4] = _sIg_Ieg_TRTA_0;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed () -> ();
  v12[3] = &block_descriptor_11;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in SystemCoordinatorClientConnection.requestCurrentState(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ();
  v5[3] = &block_descriptor_25;
  v4 = _Block_copy(v5);

  [v3 requestCurrentState_];
  _Block_release(v4);
}

uint64_t @objc SystemCoordinatorClientConnection.requestCurrentState(_:)(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  SystemCoordinatorClientConnection.requestCurrentState(_:)(_s15GroupActivities22SystemCoordinatorStateCIeyBy_ACIegg_TRTA_0, v5);
}

uint64_t SystemCoordinatorClientConnection.setConfiguration(_:)(void *a1)
{
  v3 = XPCClient.queue.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in SystemCoordinatorClientConnection.setConfiguration(_:);
  *(v5 + 24) = v4;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_17_0;
  v6 = _Block_copy(v11);
  v7 = v1;
  v8 = a1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void @objc SystemCoordinatorClientConnection.setConfiguration(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SystemCoordinatorClientConnection.setConfiguration(_:)(v4);
}

uint64_t partial apply for closure #1 in GroupSession.isClientValidPublisher.getter@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in GroupSession.isClientValidPublisher.getter(a1, a2);
}

uint64_t partial apply for closure #1 in SystemCoordinatorClientConnection.requestCurrentState(_:)()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in SystemCoordinatorClientConnection.setConfiguration(_:)()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t dispatch thunk of SystemCoordinatorClientProvider.createClient()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>;

  return v9(a1, a2);
}

uint64_t outlined init with copy of InternalParticipant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of InternalParticipant(uint64_t a1)
{
  v2 = type metadata accessor for InternalParticipant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15GroupActivities17AddressableMemberVs5NeverOTg504_s15e141Activities010BackgroundA14SessionManagerC46sessionDidReceiveUpdatedUnknownParticipantList0F2ID19unknownParticipantsy10Foundation4UUIDV_ShySo8d16CGtFyyYacfU_AA17gH8VAKXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v38 = v43;
    if (v36)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v40 = v3;
    v41 = v4;
    v42 = v36 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_37;
        }

        v9 = v40;
        v10 = v42;
        v37 = v41;
        v11 = v1;
        specialized Set.subscript.getter(v40, v41, v42, v1, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        v13 = v12;
        v14 = [v12 normalizedValue];
        if (!v14)
        {
          v14 = [v13 value];
        }

        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = v38;
        v43 = v38;
        v21 = *(v38 + 16);
        v20 = *(v38 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v21 + 1;
        v22 = v19 + 16 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v18;
        v38 = v19;
        if (v36)
        {
          if (!v10)
          {
            goto LABEL_42;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v39, 0);
          if (v6 == v35)
          {
LABEL_34:
            outlined consume of Set<TUHandle>.Index._Variant(v40, v41, v42);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_43;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v11;
          v23 = 1 << *(v11 + 32);
          if (v9 >= v23)
          {
            goto LABEL_38;
          }

          v24 = v9 >> 6;
          v25 = *(v34 + 8 * (v9 >> 6));
          if (((v25 >> v9) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v11 + 36) != v37)
          {
            goto LABEL_40;
          }

          v26 = v25 & (-2 << (v9 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v35;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            v2 = v35;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                outlined consume of Set<TUHandle>.Index._Variant(v9, v37, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_33;
              }
            }

            outlined consume of Set<TUHandle>.Index._Variant(v9, v37, 0);
          }

LABEL_33:
          v32 = *(v11 + 36);
          v40 = v23;
          v41 = v32;
          v42 = 0;
          if (v6 == v2)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t *BackgroundGroupSessionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundGroupSessionManager.shared;
}

uint64_t specialized InternalGroupSessionProvider.groupSessions(for:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v4 = [a1 activitySessions];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = 0;
  v44 = v2;
  v42 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E69E7CD0];
    v47 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v3 = 63;
      v2 = 1;
      do
      {
        v45 = v8;
        swift_dynamicCast();
        if ([v46 state] && objc_msgSend(v46, sel_state) != 1)
        {
        }

        else
        {
          v9 = v46;
          v10 = *(v7 + 16);
          if (*(v7 + 24) <= v10)
          {
            specialized _NativeSet.resize(capacity:)(v10 + 1);
          }

          v7 = v47;
          v5 = v46;
          v11 = NSObject._rawHashValue(seed:)(*(v47 + 40));
          v12 = v47 + 56;
          v13 = -1 << *(v47 + 32);
          v14 = v11 & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v47 + 56 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v47 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v7 + 48) + 8 * v16) = v9;
          ++*(v7 + 16);
        }

        v8 = __CocoaSet.Iterator.next()();
      }

      while (v8);
    }

LABEL_41:
    v2 = v44;
    v3 = v42;
    goto LABEL_42;
  }

  v21 = *(v5 + 32);
  v7 = ((1 << v21) + 63) >> 6;
  if ((v21 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v39[1] = v39;
    v40 = v7;
    MEMORY[0x1EEE9AC00](v6);
    v23 = v39 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v22);
    v41 = 0;
    v24 = 0;
    v2 = v5 + 56;
    v25 = 1 << *(v5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v7 = v26 & *(v5 + 56);
    v3 = (v25 + 63) >> 6;
    while (v7)
    {
      v27 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_33:
      v30 = v27 | (v24 << 6);
      v31 = *(*(v5 + 48) + 8 * v30);
      if ([v31 state])
      {
        v32 = [v31 state];

        if (v32 == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {

LABEL_37:
        *&v23[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_40:
          v7 = specialized _NativeSet.extractSubset(using:count:)(v23, v40, v41, v5);
          goto LABEL_41;
        }
      }
    }

    v28 = v24;
    while (1)
    {
      v24 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v24 >= v3)
      {
        goto LABEL_40;
      }

      v29 = *(v2 + 8 * v24);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v7 = (v29 - 1) & v29;
        goto LABEL_33;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v38 = swift_slowAlloc();
  v7 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v38, v7, v5, closure #1 in InternalGroupSessionProvider.groupSessions(for:));

  MEMORY[0x1B2715BA0](v38, -1, -1);
LABEL_42:
  v34 = v3;

  v35 = specialized Sequence.compactMap<A>(_:)(v7, v34, v2, specialized closure #2 in InternalGroupSessionProvider.groupSessions(for:));

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

{
  v2 = v1;
  v3 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v4 = [a1 activitySessions];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = 0;
  v44 = v2;
  v42 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E69E7CD0];
    v47 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v3 = 63;
      v2 = 1;
      do
      {
        v45 = v8;
        swift_dynamicCast();
        if ([v46 state] && objc_msgSend(v46, sel_state) != 1)
        {
        }

        else
        {
          v9 = v46;
          v10 = *(v7 + 16);
          if (*(v7 + 24) <= v10)
          {
            specialized _NativeSet.resize(capacity:)(v10 + 1);
          }

          v7 = v47;
          v5 = v46;
          v11 = NSObject._rawHashValue(seed:)(*(v47 + 40));
          v12 = v47 + 56;
          v13 = -1 << *(v47 + 32);
          v14 = v11 & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v47 + 56 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v47 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v7 + 48) + 8 * v16) = v9;
          ++*(v7 + 16);
        }

        v8 = __CocoaSet.Iterator.next()();
      }

      while (v8);
    }

LABEL_41:
    v2 = v44;
    v3 = v42;
    goto LABEL_42;
  }

  v21 = *(v5 + 32);
  v7 = ((1 << v21) + 63) >> 6;
  if ((v21 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v39[1] = v39;
    v40 = v7;
    MEMORY[0x1EEE9AC00](v6);
    v23 = v39 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v22);
    v41 = 0;
    v24 = 0;
    v2 = v5 + 56;
    v25 = 1 << *(v5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v7 = v26 & *(v5 + 56);
    v3 = (v25 + 63) >> 6;
    while (v7)
    {
      v27 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_33:
      v30 = v27 | (v24 << 6);
      v31 = *(*(v5 + 48) + 8 * v30);
      if ([v31 state])
      {
        v32 = [v31 state];

        if (v32 == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {

LABEL_37:
        *&v23[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_40:
          v7 = specialized _NativeSet.extractSubset(using:count:)(v23, v40, v41, v5);
          goto LABEL_41;
        }
      }
    }

    v28 = v24;
    while (1)
    {
      v24 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v24 >= v3)
      {
        goto LABEL_40;
      }

      v29 = *(v2 + 8 * v24);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v7 = (v29 - 1) & v29;
        goto LABEL_33;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v38 = swift_slowAlloc();
  v7 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v38, v7, v5, closure #1 in InternalGroupSessionProvider.groupSessions(for:));

  MEMORY[0x1B2715BA0](v38, -1, -1);
LABEL_42:
  v34 = v3;

  v35 = specialized Sequence.compactMap<A>(_:)(v7, v34, v2, specialized closure #2 in InternalGroupSessionProvider.groupSessions(for:));

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

uint64_t specialized closure #2 in InternalGroupSessionProvider.groupSessions(for:)(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [a2 initiator];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 value];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v15;
    v32 = v14;
  }

  else
  {
    v31 = 0xE000000000000000;
    v32 = 0;
  }

  v30 = [a2 localParticipantIdentifier];
  v16 = [a2 localMember];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 handle];

    v19 = [v18 value];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = [a2 unreliableMessengerConfig];
  v24 = (*(*a3 + 216))();
  (*(*a3 + 240))(v33);
  v25 = [a1 activity];
  v26 = [v25 requiresParticipantTranslation];

  v27 = a1;
  v28 = v33[6];
  result = specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(v27, v9, v32, v31, v30, v20, v22, v23, v24, v33, 1u, v26);
  if (v28)
  {

    return 0;
  }

  return result;
}

{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [a2 initiator];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 value];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v15;
    v32 = v14;
  }

  else
  {
    v31 = 0xE000000000000000;
    v32 = 0;
  }

  v30 = [a2 localParticipantIdentifier];
  v16 = [a2 localMember];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 handle];

    v19 = [v18 value];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = [a2 unreliableMessengerConfig];
  v24 = BackgroundGroupSessionManager.topicManager.getter();
  outlined init with copy of Transferable(a3 + 160, v33);
  v25 = [a1 activity];
  v26 = [v25 requiresParticipantTranslation];

  v27 = a1;
  v28 = v33[6];
  result = specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(v27, v9, v32, v31, v30, v20, v22, v23, v24, v33, 0, v26);
  if (v28)
  {

    return 0;
  }

  return result;
}

Swift::Int BackgroundGroupSessionManagerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

void *BackgroundGroupSessionManager.__allocating_init(client:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v6 = specialized BackgroundGroupSessionManager.init(client:)(a1, v4, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t static BackgroundGroupSessionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t BackgroundGroupSessionManager.client.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return swift_unknownObjectRetain();
}

void key path setter for BackgroundGroupSessionManager.presenceProviderObservers : BackgroundGroupSessionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;

  BackgroundGroupSessionManager.presenceProviderObservers.didset();
}

void BackgroundGroupSessionManager.presenceProviderObservers.didset()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v10 = *(v1 + 128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities08PresenceC23SessionProviderObserverCGMd, &_sSDy10Foundation4UUIDV15GroupActivities08PresenceC23SessionProviderObserverCGMR);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "presenceSessions updated to: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t BackgroundGroupSessionManager.presenceProviderObservers.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

void BackgroundGroupSessionManager.presenceProviderObservers.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;

  BackgroundGroupSessionManager.presenceProviderObservers.didset();
}

uint64_t (*BackgroundGroupSessionManager.presenceProviderObservers.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundGroupSessionManager.presenceProviderObservers.modify;
}

void key path setter for BackgroundGroupSessionManager.providerObservers : BackgroundGroupSessionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  BackgroundGroupSessionManager.providerObservers.didset();
}

void BackgroundGroupSessionManager.providerObservers.didset()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v10 = *(v1 + 136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities0C23SessionProviderObserverCGMd, &_sSDy10Foundation4UUIDV15GroupActivities0C23SessionProviderObserverCGMR);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "providerObservers updated to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t BackgroundGroupSessionManager.providerObservers.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

void BackgroundGroupSessionManager.providerObservers.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;

  BackgroundGroupSessionManager.providerObservers.didset();
}

uint64_t (*BackgroundGroupSessionManager.providerObservers.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundGroupSessionManager.providerObservers.modify;
}

void key path setter for BackgroundGroupSessionManager.requestedGroupSessionSignpostStates : BackgroundGroupSessionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset();
}

void BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v10 = *(v1 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "requestedGroupSessionSignpostStates updated to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

void BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;

  BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset();
}

uint64_t (*BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.modify;
}

uint64_t BackgroundGroupSessionManager.presenceProviderObservers.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

void *BackgroundGroupSessionManager.init(client:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = specialized BackgroundGroupSessionManager.init(client:)(a1, v2, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t closure #1 in BackgroundGroupSessionManager.init(client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.init(client:), 0, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.init(client:)()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[15];
    v6 = v0[16];
    v20 = v0[14];
    v21 = v0[11];
    v7 = *(Strong + 200);

    v0[8] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    v9 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    MEMORY[0x1B2713ED0](v8, v9);

    (*(v6 + 32))(v3, v4, v5);
    AsyncPublisher.makeAsyncIterator()();
    swift_beginAccess();
    v10 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR);
    v11 = *(MEMORY[0x1E69E85A8] + 4);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = closure #1 in BackgroundGroupSessionManager.init(client:);
    v13 = v0[14];
    v14 = v0[12];

    return MEMORY[0x1EEE6D8C8](v0 + 9, v14, v10);
  }

  else
  {
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[14];

    v18 = v0[1];

    return v18();
  }
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = closure #1 in BackgroundGroupSessionManager.init(client:);
  }

  else
  {
    v3 = closure #1 in BackgroundGroupSessionManager.init(client:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 168) = *(v0 + 72);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.init(client:), 0, 0);
}

{
  if (v0[21])
  {
    v1 = v0[11];
    Strong = swift_weakLoadStrong();
    v0[22] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.init(client:), Strong, 0);
    }

    else
    {
      v10 = v0[21];

      v11 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR);
      v12 = *(MEMORY[0x1E69E85A8] + 4);
      v13 = swift_task_alloc();
      v0[19] = v13;
      *v13 = v0;
      v13[1] = closure #1 in BackgroundGroupSessionManager.init(client:);
      v14 = v0[14];
      v15 = v0[12];

      return MEMORY[0x1EEE6D8C8](v0 + 9, v15, v11);
    }
  }

  else
  {
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v5 + 8))(v3, v4);
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[14];

    v9 = v0[1];

    return v9();
  }
}

{
  *(v0 + 80) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  rawValue = v0[22]._rawValue;
  BackgroundGroupSessionManager.updateProviders(for:)(v0[21]);

  v2 = v0[21]._rawValue;

  v3 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[19]._rawValue = v5;
  *v5 = v0;
  v5[1] = closure #1 in BackgroundGroupSessionManager.init(client:);
  v6 = v0[14]._rawValue;
  v7 = v0[12]._rawValue;

  return MEMORY[0x1EEE6D8C8](&v0[9], v7, v3);
}

uint64_t BackgroundGroupSessionManager.topicManager.getter()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x1E6997708]);

    v3 = [v2 init];
    v4 = type metadata accessor for TopicManager();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    v1 = specialized TopicManager.init(provider:featureFlags:)(v0, v3, v7);
    v8 = *(v0 + 152);
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t BackgroundGroupSessionManager.topicManager.setter(uint64_t a1)
{
  v2 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t (*BackgroundGroupSessionManager.topicManager.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = BackgroundGroupSessionManager.topicManager.getter();
  return BackgroundGroupSessionManager.topicManager.modify;
}

uint64_t BackgroundGroupSessionManager.topicManager.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 152);
  *(v1 + 152) = v2;
}

uint64_t BackgroundGroupSessionManager.onActivitySessionsChanged.getter()
{
  v1 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t BackgroundGroupSessionManager.activitySessions.getter()
{
  v1 = *(v0 + 200);
  CurrentValueSubject.value.getter();
  return v3;
}

uint64_t BackgroundGroupSessionManager.topicCategory(groupUUID:name:)()
{
  v0 = type metadata accessor for PubSubClient.TopicCategory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v1 + 104))(v4, *MEMORY[0x1E69974F0], v0);
  Just.init(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<PubSubClient.TopicCategory> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR);
  v10 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t BackgroundGroupSessionManager.groupSessions.getter()
{
  v1 = *(v0 + 208);
  CurrentValueSubject.value.getter();
  return v3;
}

uint64_t BackgroundGroupSessionManager.groupSessionsPublisher.getter()
{
  v1 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t BackgroundGroupSessionManager.groupSessionTable.getter()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    v2 = v0;
    type metadata accessor for GroupSessionTable();
    v1 = swift_allocObject();
    v3 = type metadata accessor for Lock();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v1 + 16) = Lock.init()();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v6 = *(v0 + 216);
    *(v2 + 216) = v1;
  }

  return v1;
}

uint64_t BackgroundGroupSessionManager.groupSessionTable.setter(uint64_t a1)
{
  v2 = *(v1 + 216);
  *(v1 + 216) = a1;
}

uint64_t (*BackgroundGroupSessionManager.groupSessionTable.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = BackgroundGroupSessionManager.groupSessionTable.getter();
  return BackgroundGroupSessionManager.groupSessionTable.modify;
}

uint64_t BackgroundGroupSessionManager.groupSessionTable.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 216);
  *(v1 + 216) = v2;
}

uint64_t BackgroundGroupSessionManager.prewarm()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.prewarm(), v0, 0);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Prewarm connection to GroupSessionService", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + 112);
  ObjectType = swift_getObjectType();
  v8 = *(MEMORY[0x1E69976E0] + 4);
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = BackgroundGroupSessionManager.prewarm();

  return MEMORY[0x1EEDF8BE8](ObjectType);
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.prewarm(), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v18 = v0;
  v1 = v0[6];
  v2 = v0[4];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to prewarm client, error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v13 = v0[6];
  swift_willThrow();
  v14 = v0[1];
  v15 = v0[6];

  return v14();
}

uint64_t BackgroundGroupSessionManager.start(presenceSession:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.start(presenceSession:), v1, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  else
  {
    v8 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[15];
  v6 = *v2;
  v4[16] = v1;

  v7 = v3[7];
  if (v1)
  {
    v8 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  else
  {
    v8 = BackgroundGroupSessionManager.start(presenceSession:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t BackgroundGroupSessionManager.start(presenceSession:)()
{
  v47 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46[0] = v7;
    *v6 = 136315138;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v46);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Start request for presence session: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = (*(*v0[6] + 304))();
  v0[10] = v11;
  if (v11)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15 = swift_task_alloc();
    v0[11] = v15;
    v16 = *(v13 + 8);
    *v15 = v0;
    v15[1] = BackgroundGroupSessionManager.start(presenceSession:);

    return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v16);
  }

  else
  {
    v18 = v0[6];

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[6];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v22 = 136315138;
      v24 = PresenceSession.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v46);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1AEE80000, v19, v20, "Failed to find provider on presenceSession: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2715BA0](v23, -1, -1);
      MEMORY[0x1B2715BA0](v22, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
    v27 = swift_allocError();
    *v28 = 8;
    swift_willThrow();
    v29 = v0[9];
    v30 = v0[6];

    v31 = v27;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[6];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46[0] = v36;
      *v35 = 136315394;
      v37 = PresenceSession.description.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v46);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v0[5] = v27;
      v40 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v41 = String.init<A>(reflecting:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v46);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_1AEE80000, v32, v33, "Failed to issue creation of presence session for presenceSession: %s, error: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v36, -1, -1);
      MEMORY[0x1B2715BA0](v35, -1, -1);
    }

    v44 = v0[8];
    swift_willThrow();

    v45 = v0[1];

    return v45();
  }
}

{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  swift_unknownObjectRelease();
  BackgroundSessionCreationRequest.id.getter();
  BackgroundSessionCreationRequest.isCrossAccount.getter();
  v5 = objc_allocWithZone(type metadata accessor for PresenceSessionCreationRequest());
  v6 = PresenceSessionCreationRequest.init(id:isCrossAccount:)();
  v0[14] = v6;
  v7 = *(v4 + 112);
  ObjectType = swift_getObjectType();
  v9 = *(MEMORY[0x1E69976C0] + 4);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = BackgroundGroupSessionManager.start(presenceSession:);

  return MEMORY[0x1EEDF8BC8](v6, ObjectType);
}

{
  v19 = v0;
  v1 = v0[9];
  v2 = v0[6];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[12];
  if (v5)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = PresenceSession.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Successfully created remote session for presenceSession: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v14 = v0[3];
  v15 = v0[8];

  v16 = v0[1];

  return v16(v14);
}

{
  v22 = v0;
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315394;
    v11 = PresenceSession.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[5] = v2;
    v14 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v21);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Failed to issue creation of presence session for presenceSession: %s, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = v0[8];
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

{
  v22 = v0;
  v1 = *(v0 + 96);

  v2 = *(v0 + 128);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);

  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315394;
    v11 = PresenceSession.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 40) = v2;
    v14 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v21);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Failed to issue creation of presence session for presenceSession: %s, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = *(v0 + 64);
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t BackgroundGroupSessionManager.start(presenceProvider:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = type metadata accessor for UUID();
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.start(presenceProvider:), v2, 0);
}

uint64_t BackgroundGroupSessionManager.start(presenceProvider:)()
{
  v81 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = type metadata accessor for Logger();
  *(v0 + 256) = __swift_project_value_buffer(v2, static Log.default);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);
    v74 = *(v0 + 216);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v80[0] = v77;
    *v9 = 136315394;
    *(v0 + 160) = v7;
    *(v0 + 168) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v80);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v14 = *(v8 + 8);
    GroupSessionProvider.uuid.getter(ObjectType, v14, v5);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v6 + 8))(v5, v74);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v80);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Start request for presenceProvider: %s, id: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v77, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {
    v19 = *(v0 + 200);

    v14 = *(v19 + 8);
  }

  *(v0 + 264) = v14;
  v20 = *(v0 + 240);
  v21 = *(v0 + 208);
  v22 = *(v0 + 192);
  v23 = swift_getObjectType();
  *(v0 + 272) = v23;
  GroupSessionProvider.uuid.getter(v23, v14, v20);
  swift_beginAccess();
  v24 = *(v21 + 128);
  v78 = v14;
  if (*(v24 + 16))
  {
    v25 = *(v0 + 240);

    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
    if (v27)
    {
      v28 = *(v0 + 240);
      v29 = *(v0 + 216);
      v30 = *(v0 + 208);
      v75 = *(v0 + 192);
      v31 = *(*(v24 + 56) + 8 * v26);
      v32 = *(*(v0 + 224) + 8);

      v73 = v32;
      v32(v28, v29);

      swift_unknownObjectRetain();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.fault.getter();

      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v33, v34))
      {
LABEL_19:

        lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
        swift_allocError();
        *v68 = 7;
        swift_willThrow();
        v70 = *(v0 + 240);
        v69 = *(v0 + 248);
        v71 = *(v0 + 232);

        v72 = *(v0 + 8);

        return v72();
      }

      v35 = *(v0 + 232);
      v36 = *(v0 + 192);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v80[0] = v38;
      *v37 = 136315394;
      GroupSessionProvider.uuid.getter(v23, v78, v35);
      v39 = *(v21 + 128);
      if (*(v39 + 16))
      {
        v40 = *(v0 + 232);

        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
        if (v42)
        {
          v43 = *(v0 + 232);
          v44 = *(v0 + 216);
          v45 = *(*(v39 + 56) + 8 * v41);

          v73(v43, v44);

          *(v0 + 184) = v45;
          type metadata accessor for PresenceGroupSessionProviderObserver();
          v46 = String.init<A>(reflecting:)();
          v48 = v47;
LABEL_18:
          v79 = *(v0 + 192);
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v80);

          *(v37 + 4) = v64;
          *(v37 + 12) = 2080;
          *(v0 + 144) = v79;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
          v65 = String.init<A>(reflecting:)();
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v80);

          *(v37 + 14) = v67;
          _os_log_impl(&dword_1AEE80000, v33, v34, "Tried to start PresenceGroupSessionProvider with the same identifier as one that is already tracked. Existing: %s new: %s", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v38, -1, -1);
          MEMORY[0x1B2715BA0](v37, -1, -1);
          goto LABEL_19;
        }
      }

      v73(*(v0 + 232), *(v0 + 216));
      v48 = 0xE300000000000000;
      v46 = 7104878;
      goto LABEL_18;
    }
  }

  v49 = *(v0 + 248);
  v51 = *(v0 + 200);
  v50 = *(v0 + 208);
  v52 = *(v0 + 192);
  v53 = *(*(v0 + 224) + 8);
  v76 = *(v0 + 216);
  (v53)(*(v0 + 240));
  type metadata accessor for PresenceGroupSessionProviderObserver();
  v54 = swift_allocObject();
  *(v0 + 280) = v54;
  v54[3] = 0;
  swift_unknownObjectWeakInit();
  v54[7] = MEMORY[0x1E69E7CD0];
  v54[4] = v52;
  v54[5] = v51;
  swift_beginAccess();
  v54[3] = &protocol witness table for BackgroundGroupSessionManager;
  swift_unknownObjectWeakAssign();
  v55 = type metadata accessor for PresenceSession(0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  swift_unknownObjectRetain();

  v59 = specialized PresenceSession.init(provider:serviceProvider:)(v52, v51, v50, v58);

  v54[6] = v59;
  GroupSessionProvider.uuid.getter(v23, v14, v49);
  swift_beginAccess();

  v60 = *(v21 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80[0] = *(v21 + 128);
  *(v21 + 128) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v49, isUniquelyReferenced_nonNull_native);
  v53(v49, v76);
  *(v21 + 128) = v80[0];
  swift_endAccess();
  BackgroundGroupSessionManager.presenceProviderObservers.didset();
  v62 = swift_task_alloc();
  *(v0 + 288) = v62;
  *v62 = v0;
  v62[1] = BackgroundGroupSessionManager.start(presenceProvider:);

  return PresenceGroupSessionProviderObserver.join()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = BackgroundGroupSessionManager.start(presenceProvider:);
  }

  else
  {
    v6 = BackgroundGroupSessionManager.start(presenceProvider:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v19 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 192);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v17 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v0 + 128) = v17;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Successfully started PresenceSession for provider: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 280);
  }

  v13 = *(v0 + 240);
  v12 = *(v0 + 248);
  v14 = *(v0 + 232);

  v15 = *(v0 + 8);

  return v15();
}

{
  v30 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = *(v0 + 192);
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 296);
    v28 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136315394;
    *(v0 + 112) = v28;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PresenceA15SessionProvider_pMd, &_s15GroupActivities08PresenceA15SessionProvider_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v29);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 176) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v29);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to join PresenceSession for provider: %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v17 = *(v0 + 296);
  v18 = *(v0 + 280);
  v19 = *(v0 + 248);
  v20 = *(v0 + 208);
  v21 = *(v0 + 192);
  GroupSessionProvider.uuid.getter(*(v0 + 272), *(v0 + 264), v19);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v19);
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  swift_willThrow();

  v22 = *(v0 + 296);
  v24 = *(v0 + 240);
  v23 = *(v0 + 248);
  v25 = *(v0 + 232);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t BackgroundGroupSessionManager.start(provider:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = type metadata accessor for OSSignpostID();
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[35] = v7;
  v8 = *(v7 - 8);
  v3[36] = v8;
  v9 = *(v8 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.start(provider:), v2, 0);
}

uint64_t BackgroundGroupSessionManager.start(provider:)()
{
  v84 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = type metadata accessor for Logger();
  *(v0 + 328) = __swift_project_value_buffer(v2, static Log.default);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 320);
    v6 = *(v0 + 288);
    v76 = *(v0 + 280);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v83[0] = v78;
    *v9 = 136315394;
    *(v0 + 184) = v8;
    *(v0 + 192) = v7;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v83);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    ObjectType = swift_getObjectType();
    GroupSessionProvider.uuid.getter(ObjectType, v7, v5);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v6 + 8))(v5, v76);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v83);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Start request for provider: %s id: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v78, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = *(v0 + 312);
  v20 = *(v0 + 232);
  v19 = *(v0 + 240);
  v21 = *(v0 + 224);
  type metadata accessor for GroupSessionProviderObserver();
  v22 = swift_allocObject();
  *(v0 + 336) = v22;
  v22[3] = 0;
  swift_unknownObjectWeakInit();
  v23 = MEMORY[0x1E69E7CD0];
  v22[6] = 0;
  v22[7] = v23;
  v22[4] = v21;
  v22[5] = v20;
  swift_beginAccess();
  v22[3] = &protocol witness table for BackgroundGroupSessionManager;
  swift_unknownObjectWeakAssign();
  v24 = swift_getObjectType();
  *(v0 + 344) = v24;
  swift_unknownObjectRetain();
  GroupSessionProvider.uuid.getter(v24, v20, v18);
  swift_beginAccess();
  v25 = *(v19 + 136);
  if (*(v25 + 16))
  {
    v26 = *(v0 + 312);
    v27 = *(v19 + 136);

    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if (v29)
    {
      v30 = *(v0 + 312);
      v31 = *(v0 + 280);
      v77 = *(v0 + 224);
      v79 = *(v0 + 240);
      v32 = *(*(v25 + 56) + 8 * v28);
      v33 = *(*(v0 + 288) + 8);

      v75 = v33;
      v33(v30, v31);

      swift_unknownObjectRetain();

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();

      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v34, v35))
      {
LABEL_18:

        lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
        swift_allocError();
        *v67 = 7;
        swift_willThrow();

        v69 = *(v0 + 312);
        v68 = *(v0 + 320);
        v71 = *(v0 + 296);
        v70 = *(v0 + 304);
        v73 = *(v0 + 264);
        v72 = *(v0 + 272);

        v74 = *(v0 + 8);

        return v74();
      }

      v36 = *(v0 + 296);
      v38 = *(v0 + 224);
      v37 = *(v0 + 232);
      v39 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v83[0] = v81;
      *v39 = 136315394;
      GroupSessionProvider.uuid.getter(v24, v37, v36);
      v40 = *(v19 + 136);
      if (*(v40 + 16))
      {
        v41 = *(v0 + 296);

        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
        if (v43)
        {
          v44 = *(v0 + 296);
          v45 = *(v0 + 280);
          v46 = *(*(v40 + 56) + 8 * v42);

          v75(v44, v45);

          *(v0 + 216) = v46;
          v47 = String.init<A>(reflecting:)();
          v49 = v48;
LABEL_17:
          v80 = *(v0 + 224);
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v83);

          *(v39 + 4) = v63;
          *(v39 + 12) = 2080;
          *(v0 + 168) = v80;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
          v64 = String.init<A>(reflecting:)();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v83);

          *(v39 + 14) = v66;
          _os_log_impl(&dword_1AEE80000, v34, v35, "Tried to start provider with same identifier as already tracked item. Existing: %s new: %s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v81, -1, -1);
          MEMORY[0x1B2715BA0](v39, -1, -1);
          goto LABEL_18;
        }
      }

      v75(*(v0 + 296), *(v0 + 280));
      v49 = 0xE300000000000000;
      v47 = 7104878;
      goto LABEL_17;
    }
  }

  v50 = *(v0 + 312);
  v51 = *(v0 + 320);
  v52 = *(v0 + 280);
  v53 = *(v0 + 288);
  v54 = *(v0 + 232);
  v82 = *(v0 + 240);
  v55 = *(v0 + 224);
  v56 = *(v53 + 8);
  *(v0 + 352) = v56;
  *(v0 + 360) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v56(v50, v52);
  GroupSessionProvider.uuid.getter(v24, v54, v51);
  swift_beginAccess();

  v57 = *(v19 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83[0] = *(v19 + 136);
  *(v19 + 136) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v51, isUniquelyReferenced_nonNull_native);
  v56(v51, v52);
  *(v19 + 136) = v83[0];
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  v59 = swift_task_alloc();
  *(v0 + 368) = v59;
  *v59 = v0;
  v59[1] = BackgroundGroupSessionManager.start(provider:);
  v61 = *(v0 + 224);
  v60 = *(v0 + 232);

  return GroupSessionProvider.backgroundSessionCreationRequest.getter(v24, v60);
}

{
  v90 = v0;
  v1 = v0[30];
  v2 = v0[28];
  GroupSessionProvider.uuid.getter(v0[43], v0[29], v0[38]);
  v3 = *(v1 + 136);
  if (*(v3 + 16))
  {
    v4 = v0[38];

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if (v6)
    {
      v8 = v0[44];
      v7 = v0[45];
      v9 = v0[38];
      v10 = v0[35];
      v11 = *(*(v3 + 56) + 8 * v5);

      v8(v9, v10);

      if (one-time initialization token for groupSession != -1)
      {
        swift_once();
      }

      v12 = v0[47];
      v14 = v0[44];
      v13 = v0[45];
      v15 = v0[40];
      v17 = v0[34];
      v16 = v0[35];
      v18 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v18, static Signposts.groupSession);
      v19 = BackgroundSessionCreationRequest.activitySessionRequest.getter();
      v20 = [v19 UUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.uint64Value.getter();
      v14(v15, v16);
      OSSignpostID.init(_:)();
      v21 = v12;
      v22 = OSSignposter.logHandle.getter();
      v23 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v24 = v0[47];
        v25 = v0[34];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v89[0] = v27;
        *v26 = 136315138;
        v28 = BackgroundSessionCreationRequest.activitySessionRequest.getter();
        v29 = [v28 activityIdentifier];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v89);

        *(v26 + 4) = v33;
        v34 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEE80000, v22, v23, v34, "GroupSessionRequested", "%s enableTelemetry=YES", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B2715BA0](v27, -1, -1);
        MEMORY[0x1B2715BA0](v26, -1, -1);
      }

      v85 = v0[44];
      v87 = v0[45];
      v35 = v0[40];
      v36 = v0[34];
      v81 = v0[43];
      v83 = v0[35];
      v37 = v0[32];
      v38 = v0[30];
      v39 = v0[31];
      v41 = v0[28];
      v40 = v0[29];
      (*(v37 + 16))(v0[33], v36, v39);
      v42 = type metadata accessor for OSSignpostIntervalState();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v45 = OSSignpostIntervalState.init(id:isOpen:)();
      v0[49] = v45;
      (*(v37 + 8))(v36, v39);
      GroupSessionProvider.uuid.getter(v81, v40, v35);
      swift_beginAccess();

      v46 = *(v38 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89[0] = *(v38 + 144);
      *(v38 + 144) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v35, isUniquelyReferenced_nonNull_native);
      v85(v35, v83);
      *(v38 + 144) = v89[0];
      swift_endAccess();
      BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset();
      v48 = *(v38 + 112);
      ObjectType = swift_getObjectType();
      v50 = *(MEMORY[0x1E69976D0] + 4);
      v51 = swift_task_alloc();
      v0[50] = v51;
      *v51 = v0;
      v51[1] = BackgroundGroupSessionManager.start(provider:);
      v52 = v0[47];

      return MEMORY[0x1EEDF8BD8](v52, ObjectType);
    }
  }

  v53 = v0[45];
  v54 = v0[41];
  v55 = v0[28];
  (v0[44])(v0[38], v0[35]);
  swift_unknownObjectRetain();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v56, v57))
  {
    v86 = v0[44];
    v88 = v0[45];
    v58 = v0[40];
    v82 = v0[43];
    v84 = v0[35];
    v60 = v0[28];
    v59 = v0[29];
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v89[0] = v62;
    *v61 = 136315394;
    v0[17] = v60;
    v0[18] = v59;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v63 = String.init<A>(reflecting:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v89);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    GroupSessionProvider.uuid.getter(v82, v59, v58);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    v86(v58, v84);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v89);

    *(v61 + 14) = v69;
    _os_log_impl(&dword_1AEE80000, v56, v57, "provider: %s id: %s was cancelled while fetching the creationRequest object.", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v62, -1, -1);
    MEMORY[0x1B2715BA0](v61, -1, -1);
  }

  v70 = v0[47];
  v71 = v0[42];
  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v72 = 9;
  swift_willThrow();

  v74 = v0[39];
  v73 = v0[40];
  v76 = v0[37];
  v75 = v0[38];
  v78 = v0[33];
  v77 = v0[34];

  v79 = v0[1];

  return v79();
}

{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = BackgroundGroupSessionManager.start(provider:);
  }

  else
  {
    v6 = BackgroundGroupSessionManager.start(provider:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 376);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 376);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    *(v0 + 208) = v5;
    type metadata accessor for BackgroundSessionCreationRequest();
    v8 = v5;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Successfully started provider for request: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v12 = *(v0 + 392);
  v13 = *(v0 + 376);
  v14 = *(v0 + 336);
  v16 = *(v0 + 312);
  v15 = *(v0 + 320);
  v18 = *(v0 + 296);
  v17 = *(v0 + 304);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  GroupSessionProviderObserver.start()();

  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = v0[42];

  v2 = v0[48];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[33];
  v7 = v0[34];

  v9 = v0[1];

  return v9();
}

{
  v35 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 224);
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 408);
    v33 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34[0] = v9;
    *v8 = 136315394;
    *(v0 + 152) = v33;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v34);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 200) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v34);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to issue begin request for provider: %s error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v17 = *(v0 + 408);
  v18 = *(v0 + 392);
  v19 = *(v0 + 376);
  v20 = *(v0 + 336);
  v21 = *(v0 + 320);
  v22 = *(v0 + 240);
  v23 = *(v0 + 224);
  GroupSessionProvider.uuid.getter(*(v0 + 344), *(v0 + 232), v21);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v21);
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  swift_willThrow();

  v24 = *(v0 + 408);
  v26 = *(v0 + 312);
  v25 = *(v0 + 320);
  v28 = *(v0 + 296);
  v27 = *(v0 + 304);
  v30 = *(v0 + 264);
  v29 = *(v0 + 272);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t BackgroundGroupSessionManager.start(provider:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v7 = *(v3 + 240);
  if (v1)
  {
    v8 = BackgroundGroupSessionManager.start(provider:);
  }

  else
  {
    v8 = BackgroundGroupSessionManager.start(provider:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.leave(identifier:), v1, 0);
}

uint64_t BackgroundGroupSessionManager.leave(identifier:)()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Leave request for providerID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[8];
  v18 = v0[9];
  swift_beginAccess();
  v20 = specialized Dictionary.removeValue(forKey:)(v19);
  v0[13] = v20;
  swift_endAccess();
  BackgroundGroupSessionManager.presenceProviderObservers.didset();
  swift_beginAccess();
  v21 = specialized Dictionary.removeValue(forKey:)(v19);
  v0[14] = v21;
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v22, type metadata accessor for BackgroundGroupSessionManager);
  v23 = swift_task_alloc();
  v0[15] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = v18;
  v23[5] = v19;
  v24 = *(MEMORY[0x1E69E88A0] + 4);
  v25 = swift_task_alloc();
  v0[16] = v25;
  *v25 = v0;
  v25[1] = BackgroundGroupSessionManager.leave(identifier:);

  return MEMORY[0x1EEE6DD58]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = BackgroundGroupSessionManager.leave(identifier:);
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 72);

    v5 = BackgroundGroupSessionManager.leave(identifier:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v8 = type metadata accessor for UUID();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v6[9] = *(v9 + 64);
  v6[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.leave(identifier:), a5, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[11];
    v5 = v2[2];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v3;

    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v4, &async function pointer to partial apply for closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), v7);
    outlined destroy of NSObject?(v4, &_sScPSgMd, &_sScPSgMR);
  }

  v8 = v2[4];
  if (v8)
  {
    v10 = v2[10];
    v9 = v2[11];
    v12 = v2[8];
    v11 = v2[9];
    v14 = v2[6];
    v13 = v2[7];
    v15 = v2[5];
    v24 = v2[2];
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    (*(v12 + 16))(v10, v14, v13);
    v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v8;
    *(v18 + 5) = v15;
    (*(v12 + 32))(&v18[v17], v10, v13);

    _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v9, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), v18);
    outlined destroy of NSObject?(v9, &_sScPSgMd, &_sScPSgMR);
  }

  v19 = v2[5];
  v2[12] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, a2, type metadata accessor for BackgroundGroupSessionManager);
  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v2[13] = v20;
  v2[14] = v22;

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.leave(identifier:), v20, v22);
}

uint64_t closure #1 in BackgroundGroupSessionManager.leave(identifier:)()
{
  v1 = v0[2];
  v2 = *v1;
  v0[15] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[16] = v3;
  if (MEMORY[0x1B2714550](v2, MEMORY[0x1E69E7CA8] + 8, v3, MEMORY[0x1E69E7288]))
  {
    v5 = v0[10];
    v4 = v0[11];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v0[17] = 0;
    v8 = v0[12];
    v9 = v0[5];
    v10 = *(MEMORY[0x1E69E8708] + 4);
    v11 = swift_task_alloc();
    v0[18] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v11 = v0;
    v11[1] = closure #1 in BackgroundGroupSessionManager.leave(identifier:);
    v13 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 20, v9, v8, v12);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  }

  else
  {
    *(v2 + 161) = *(v2 + 160);
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  if (*(v0 + 161))
  {
    v1 = *(v0 + 136);
    if (MEMORY[0x1B2714550](*(v0 + 120), MEMORY[0x1E69E7CA8] + 8, *(v0 + 128), MEMORY[0x1E69E7288]))
    {
      v2 = *(v0 + 80);
      v3 = *(v0 + 88);
      if (v1)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 136) = v1;
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 40);
  v8 = *(MEMORY[0x1E69E8708] + 4);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
  *v9 = v0;
  v9[1] = closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 160, v7, v6, v10);
}

{
  v1 = v0[19];
  if (v0[17])
  {

    v1 = v0[17];
  }

  if (MEMORY[0x1B2714550](v0[15], MEMORY[0x1E69E7CA8] + 8, v0[16], MEMORY[0x1E69E7288]))
  {
    v2 = v0[10];
    v3 = v0[11];
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[17] = v1;
    v6 = v0[12];
    v7 = v0[5];
    v8 = *(MEMORY[0x1E69E8708] + 4);
    v9 = swift_task_alloc();
    v0[18] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v9 = v0;
    v9[1] = closure #1 in BackgroundGroupSessionManager.leave(identifier:);
    v11 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 20, v7, v6, v10);
  }
}

uint64_t closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)()
{
  v18 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    type metadata accessor for PresenceGroupSessionProviderObserver();

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Leaving presence providerObserver %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = *(*v0[3] + 176);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[5] = v13;
  *v13 = v0;
  v13[1] = closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  v14 = v0[3];

  return v16();
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 32);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to leave the PresenceSession.", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  outlined init with copy of URL?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for UUID();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), 0, 0);
}

uint64_t closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)()
{
  v18 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    type metadata accessor for GroupSessionProviderObserver();

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Leaving providerObserver: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = *(v0[5] + 112);
  ObjectType = swift_getObjectType();
  v13 = *(MEMORY[0x1E69976D8] + 4);
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:);
  v15 = v0[6];

  return MEMORY[0x1EEDF8BE0](v15, ObjectType);
}

{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:), 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

{
  v29 = v0;
  v1 = v0[12];
  v2 = v0[10];
  (*(v0[8] + 16))(v0[9], v0[6], v0[7]);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v10 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v28);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v0[2] = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v28);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to leave identifier: %s error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v27, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[12];
  v23 = v0[9];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[12];

  return v24();
}

uint64_t BackgroundGroupSessionManager.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.updateMembers(identifier:members:), v2, 0);
}

uint64_t BackgroundGroupSessionManager.updateMembers(identifier:members:)()
{
  v92 = v0;
  if (one-time initialization token for default != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  v6 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v6, static Log.default);
  v7 = *(v3 + 16);
  v0[16] = v7;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89 = v7;
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];
  if (v10)
  {
    v87 = v0[8];
    v14 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91[0] = v88;
    *v14 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v8;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v91);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v0[6] = v87;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v91);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1AEE80000, log, v9, "Update member request for identifier: %s with members: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v88, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v0[18] = v18;
  v23 = v0[9];
  swift_beginAccess();
  if (*(*(v23 + 136) + 16) && (v24 = v0[7], , specialized __RawDictionaryStorage.find<A>(_:)(v24), LOBYTE(v24) = v25, , (v24 & 1) != 0))
  {
    v26 = v0[8];
    v27 = MEMORY[0x1E69E7CC0];
    v28 = *(v26 + 56);
    v91[0] = MEMORY[0x1E69E7CC0];
    v29 = -1;
    v30 = -1 << *(v26 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & v28;
    v32 = (63 - v30) >> 6;

    v33 = 0;
    if (!v31)
    {
      goto LABEL_12;
    }

    do
    {
LABEL_10:
      while (1)
      {
        v34 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v35 = (*(v26 + 48) + ((v33 << 10) | (16 * v34)));
        v36 = *v35;
        v37 = v35[1];
        v38 = objc_opt_self();

        v39 = MEMORY[0x1B2714130](v36, v37);
        v40 = [v38 normalizedHandleWithDestinationID_];

        if (v40)
        {
          break;
        }

        if (!v31)
        {
          goto LABEL_12;
        }
      }

      MEMORY[0x1B27142A0](v41);
      if (*((v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = *((v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = v91[0];
    }

    while (v31);
    while (1)
    {
LABEL_12:
      v42 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v42 >= v32)
      {
        break;
      }

      v31 = *(v26 + 56 + 8 * v42);
      ++v33;
      if (v31)
      {
        v33 = v42;
        goto LABEL_10;
      }
    }

    v61 = v0[8];

    v62 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v27);
    v0[19] = v62;

    if ((v62 & 0xC000000000000001) != 0)
    {
      v63 = __CocoaSet.count.getter();
    }

    else
    {
      v63 = *(v62 + 16);
    }

    if (v63 == *(v0[8] + 16))
    {
      v64 = *(v0[9] + 112);
      ObjectType = swift_getObjectType();
      v66 = *(MEMORY[0x1E69976C8] + 4);
      v67 = swift_task_alloc();
      v0[20] = v67;
      *v67 = v0;
      v67[1] = BackgroundGroupSessionManager.updateMembers(identifier:members:);
      v68 = v0[7];

      return MEMORY[0x1EEDF8BD0](v68, v62, ObjectType);
    }

    v69 = v0[8];

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = v0[8];
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v91[0] = v74;
      *v73 = 136315394;
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      v75 = Set.description.getter();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v91);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v78 = Set.description.getter();
      v80 = v79;

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v91);

      *(v73 + 14) = v81;
      _os_log_impl(&dword_1AEE80000, v70, v71, "Failed to convert members types: %s vs convertedMembers: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v74, -1, -1);
      MEMORY[0x1B2715BA0](v73, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
    swift_allocError();
    *v82 = 8;
    v84 = v0[13];
    v83 = v0[14];
    v85 = v0[12];
    swift_willThrow();

    v59 = v0[1];
  }

  else
  {
    v89(v0[13], v0[7], v0[10]);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[13];
    v48 = v0[10];
    v49 = v0[11];
    if (v46)
    {
      v90 = v18;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v91[0] = v51;
      *v50 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v90(v47, v48);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v91);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_1AEE80000, v44, v45, "updateMembers called for unknown providerID: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1B2715BA0](v51, -1, -1);
      MEMORY[0x1B2715BA0](v50, -1, -1);
    }

    else
    {

      v18(v47, v48);
    }

    v57 = v0[13];
    v56 = v0[14];
    v58 = v0[12];

    v59 = v0[1];
  }

  return v59();
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = *(v2 + 72);

    v6 = BackgroundGroupSessionManager.updateMembers(identifier:members:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 72);
    v6 = BackgroundGroupSessionManager.updateMembers(identifier:members:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

{
  v1 = v0[19];

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

{
  v38 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 56), *(v0 + 80));

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 144);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    v34 = *(v0 + 64);
    v35 = *(v0 + 168);
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v12 = 136315650;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v11);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v37);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
    v17 = Set.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v37);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2080;
    *(v0 + 40) = v35;
    v20 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v37);

    *(v12 + 24) = v23;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Failed to update members on identifier: %s with members: %s error: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v36, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {
    v24 = *(v0 + 144);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v27 = *(v0 + 80);

    v24(v25, v27);
  }

  v28 = *(v0 + 168);
  v30 = *(v0 + 104);
  v29 = *(v0 + 112);
  v31 = *(v0 + 96);
  swift_willThrow();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t BackgroundGroupSessionManager.begin(activity:request:onConversationWithUUID:)()
{
  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.begin(activity:request:onConversationWithUUID:), v0, 0);
}

{
  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v1 = 5;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t BackgroundGroupSessionManager.end(activity:)()
{
  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.end(activity:), v0, 0);
}

{
  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v1 = 5;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

void BackgroundGroupSessionManager.updateShare(_:activityID:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
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
    *v7 = 0;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Updating CKShare", v7, 2u);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  v8 = swift_allocError();
  *v9 = 5;
  a3();
}

Swift::Void __swiftcall BackgroundGroupSessionManager.updateProviders(for:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v34 - v5;
  if (one-time initialization token for default != -1)
  {
LABEL_16:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37[0] = v35;
    *v10 = 136315394;
    swift_beginAccess();
    v11 = *(v2 + 136);
    type metadata accessor for UUID();
    type metadata accessor for GroupSessionProviderObserver();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    HIDWORD(v34) = v9;

    v12 = Dictionary.description.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v37);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v16 = Dictionary.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v37);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1AEE80000, v8, BYTE4(v34), "Updating providers %s for containers: %s", v10, 0x16u);
    v19 = v35;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v19, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  swift_beginAccess();
  v20 = *(v2 + 136);

  v22 = specialized _NativeDictionary.filter(_:)(v21, a1._rawValue);

  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  a1._rawValue = &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR;
  if (v25)
  {
    while (1)
    {
      v28 = v27;
LABEL_12:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = v29 | (v28 << 6);
      v31 = *(v22 + 48);
      v32 = type metadata accessor for UUID();
      (*(*(v32 - 8) + 16))(v6, v31 + *(*(v32 - 8) + 72) * v30, v32);
      v33 = *(*(v22 + 56) + 8 * v30);
      *&v6[*(v36 + 48)] = v33;

      closure #2 in BackgroundGroupSessionManager.updateProviders(for:)(v6, v33);
      outlined destroy of NSObject?(v6, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      if (!v25)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v22 + 64 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_12;
    }
  }
}

uint64_t closure #2 in BackgroundGroupSessionManager.updateProviders(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = a2;
    v13 = v12;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = a1;
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v28);
    a1 = v15;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Removing providerObserver %s due to it not being present in containers", v13, 0xCu);
    v19 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B2715BA0](v19, -1, -1);
    v20 = v13;
    a2 = v27;
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1);
  swift_endAccess();

  BackgroundGroupSessionManager.providerObservers.didset();
  v22 = *(a2 + 32);
  v21 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  (*(v21 + 64))(ObjectType, v21);
  v28 = 0;
  CurrentValueSubject.send(_:)();
}

void *BackgroundGroupSessionManager.deinit()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v6 = v0[25];

  v7 = v0[26];

  v8 = v0[27];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundGroupSessionManager.__deallocating_deinit()
{
  BackgroundGroupSessionManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for ActivitySessionContainerProvider.onActivitySessionsChanged.getter in conformance BackgroundGroupSessionManager()
{
  v1 = *(*v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t protocol witness for ActivitySessionContainerProvider.activitySessions.getter in conformance BackgroundGroupSessionManager()
{
  v1 = *(*v0 + 200);
  CurrentValueSubject.value.getter();
  return v3;
}

uint64_t protocol witness for ActivitySessionContainerProvider.topicCategory(groupUUID:name:) in conformance BackgroundGroupSessionManager()
{
  v0 = type metadata accessor for PubSubClient.TopicCategory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v1 + 104))(v4, *MEMORY[0x1E69974F0], v0);
  Just.init(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<PubSubClient.TopicCategory> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR);
  v10 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t protocol witness for GroupSessionServiceProvider.start(provider:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.start(provider:)(a1, a2);
}

uint64_t protocol witness for GroupSessionServiceProvider.start(presenceProvider:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.start(presenceProvider:)(a1, a2);
}

uint64_t protocol witness for GroupSessionServiceProvider.leave(identifier:) in conformance BackgroundGroupSessionManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.leave(identifier:)(a1);
}

uint64_t protocol witness for GroupSessionServiceProvider.updateMembers(identifier:members:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.updateMembers(identifier:members:)(a1, a2);
}

uint64_t protocol witness for GroupSessionServiceProvider.prewarm() in conformance BackgroundGroupSessionManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return BackgroundGroupSessionManager.prewarm()();
}

uint64_t protocol witness for GroupSessionServiceProvider.start(presenceSession:) in conformance BackgroundGroupSessionManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity;

  return BackgroundGroupSessionManager.start(presenceSession:)(a1);
}

uint64_t protocol witness for InternalGroupSessionProvider.groupSessions.getter in conformance BackgroundGroupSessionManager()
{
  v1 = *(v0 + 208);
  CurrentValueSubject.value.getter();
  return v3;
}

uint64_t protocol witness for InternalGroupSessionProvider.groupSessionsPublisher.getter in conformance BackgroundGroupSessionManager()
{
  v1 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized BackgroundGroupSessionManager.didDisconnect(client:)();
}

void invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);
  v38 = *(v5 + 16);
  v38(v11, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a2;
    v16 = v15;
    v35 = swift_slowAlloc();
    v36 = a1;
    v40 = v35;
    *v16 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v9;
    v20 = v19;
    (*(v5 + 8))(v11, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v40);
    v9 = v18;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1AEE80000, v13, v14, "Invalidating provider for ID: %s", v16, 0xCu);
    v22 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    a1 = v36;
    MEMORY[0x1B2715BA0](v22, -1, -1);
    v23 = v16;
    a2 = v37;
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  swift_beginAccess();
  v24 = *(a2 + 136);
  if (*(v24 + 16))
  {
    v25 = *(a2 + 136);

    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v27)
    {
      v28 = v9;
      v29 = *(*(v24 + 56) + 8 * v26);

      v30 = *(v29 + 32);
      v31 = *(v29 + 40);
      ObjectType = swift_getObjectType();
      (*(v31 + 64))(ObjectType, v31);
      lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
      v33 = swift_allocError();
      *v34 = 6;
      v39 = v33;
      CurrentValueSubject.send(_:)();
      v9 = v28;

      outlined consume of GroupSession<A>.State<A>(v39);
    }

    else
    {
    }
  }

  v38(v9, a1, v4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v9);
  swift_endAccess();
  BackgroundGroupSessionManager.providerObservers.didset();
}

Swift::Void __swiftcall BackgroundGroupSessionManager.handleContainers(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v67 = type metadata accessor for OSSignpostError();
  v77 = *(v67 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for OSSignpostID();
  v75 = *(v72 - 8);
  v6 = *(v75 + 8);
  MEMORY[0x1EEE9AC00](v72);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for UUID();
  v69 = *(v79 - 8);
  v9 = v69[8];
  MEMORY[0x1EEE9AC00](v79);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x1E69E7CC0];
  if (a1._rawValue >> 62)
  {
LABEL_38:
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v8;
  v80 = v11;
  if (v12)
  {
    v13 = 0;
    v11 = (a1._rawValue & 0xC000000000000001);
    v14 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
    v81 = v12;
    do
    {
      if (v11)
      {
        v15 = MEMORY[0x1B2714B30](v13, a1._rawValue);
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(a1._rawValue + v13 + 4);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if ([v15 state] == 3 && objc_msgSend(v16, sel_localParticipantIdentifier))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = v2;
        v18 = v14;
        v19 = v11;
        v20 = v83[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v11 = v19;
        v14 = v18;
        v2 = v8;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 = v81;
      }

      else
      {
      }

      ++v13;
    }

    while (v17 != v12);
    a1._rawValue = v83;
    v8 = v70;
    v11 = v80;
    v83 = MEMORY[0x1E69E7CC0];
    if ((a1._rawValue & 0x8000000000000000) != 0)
    {
LABEL_39:
      v21 = __CocoaSet.count.getter();
      if (!v21)
      {
        goto LABEL_40;
      }

LABEL_20:
      v22 = 0;
      while (2)
      {
        if ((a1._rawValue & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1B2714B30](v22, a1._rawValue);
        }

        else
        {
          if (v22 >= *(a1._rawValue + 2))
          {
            goto LABEL_37;
          }

          v24 = *(a1._rawValue + v22 + 4);
        }

        v11 = v24;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_36;
        }

        v26 = specialized InternalGroupSessionProvider.groupSessions(for:)(v24);
        if (v26 >> 62)
        {
          v28 = __CocoaSet.count.getter();

          if (v28)
          {
            goto LABEL_21;
          }

LABEL_29:
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v27)
          {
            goto LABEL_29;
          }

LABEL_21:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v23 = v83[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v22;
        if (v25 == v21)
        {
          v29 = v83;
          v11 = v80;
          goto LABEL_41;
        }

        continue;
      }
    }
  }

  else
  {
    a1._rawValue = MEMORY[0x1E69E7CC0];
    v83 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }
  }

  if ((a1._rawValue & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v21 = *(a1._rawValue + 2);
  if (v21)
  {
    goto LABEL_20;
  }

LABEL_40:
  v29 = MEMORY[0x1E69E7CC0];
LABEL_41:

  if ((v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
  {
    goto LABEL_72;
  }

  for (i = *(v29 + 16); i; i = __CocoaSet.count.getter())
  {
    v32 = 0;
    v78 = v29 & 0xC000000000000001;
    v76 = (v69 + 1);
    v71 = (v75 + 8);
    v65 = (v77 + 88);
    v64 = *MEMORY[0x1E69E93E8];
    v63 = (v77 + 8);
    *&v30 = 136315138;
    v68 = v30;
    v73 = v29;
    v77 = i;
    v75 = v2;
    while (1)
    {
      if (v78)
      {
        v33 = MEMORY[0x1B2714B30](v32, v29);
      }

      else
      {
        if (v32 >= *(v29 + 16))
        {
          goto LABEL_71;
        }

        v33 = *(v29 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v36 = [v33 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v37 = *(v2 + 18);
      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v39)
      {
        v40 = v38;
        v74 = v34;
        v41 = *(v2 + 18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *(v2 + 18);
        v82 = v43;
        *(v2 + 18) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v43 = v82;
        }

        v44 = v69[1];
        v45 = v79;
        v44(*(v43 + 48) + v69[9] * v40, v79);
        v81 = *(*(v43 + 56) + 8 * v40);
        specialized _NativeDictionary._delete(at:)(v40, v43);
        v44(v80, v45);
        *(v2 + 18) = v43;
        v35 = v32 + 1;
        v34 = v74;
      }

      else
      {
        (*v76)(v11, v79);
        v81 = 0;
      }

      swift_endAccess();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Log.default);
      v2 = v75;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v83 = v50;
        *v49 = v68;
        v82 = *(v2 + 18);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
        v51 = String.init<A>(reflecting:)();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v83);
        v8 = v70;

        *(v49 + 4) = v53;
        v29 = v73;
        _os_log_impl(&dword_1AEE80000, v47, v48, "requestedGroupSessionSignpostStates updated to %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x1B2715BA0](v50, -1, -1);
        MEMORY[0x1B2715BA0](v49, -1, -1);
      }

      if (v81)
      {
        if (one-time initialization token for groupSession != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v54, static Signposts.groupSession);
        v55 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v56 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          v57 = v66;
          checkForErrorAndConsumeState(state:)();

          v58 = (*v65)(v57, v67);
          v59 = "[Error] Interval already ended";
          if (v58 != v64)
          {
            (*v63)(v66, v67);
            v59 = "";
          }

          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1AEE80000, v55, v56, v61, "GroupSessionRequested", v59, v60, 2u);
          MEMORY[0x1B2715BA0](v60, -1, -1);

          (*v71)(v8, v72);
          v29 = v73;
        }

        else
        {

          (*v71)(v8, v72);
        }
      }

      else
      {
      }

      ++v32;
      v11 = v80;
      if (v35 == v77)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

LABEL_75:
}