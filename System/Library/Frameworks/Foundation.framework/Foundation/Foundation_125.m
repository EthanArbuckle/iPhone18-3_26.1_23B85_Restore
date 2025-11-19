void closure #1 in closure #1 in NSURLSession.data(from:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-v13];
  ObjectType = swift_getObjectType();
  v16 = (*(a4 + 432))(ObjectType, a4);
  (*(v12 + 16))(v14, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v14, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.upload(for:fromFile:delegate:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_182;
  v19 = _Block_copy(aBlock);

  v20 = [a2 _dataTaskWithURL_delegate_completionHandler_];
  _Block_release(v19);

  [v20 set:1 callCompletionHandlerInline:?];
  [v20 resume];
  v21 = *(a6 + 16);
  v23 = v20;
  os_unfair_lock_lock((v21 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v21 + 16), aBlock);
  os_unfair_lock_unlock((v21 + 32));
  if ((aBlock[0] & 1) == 0)
  {
    [v20 cancel];
  }
}

uint64_t NSURLSession.upload(for:fromFile:delegate:)(void *a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 120) = *a1;
  *(v4 + 128) = *a2;
  return MEMORY[0x1EEE6DFA0](NSURLSession.upload(for:fromFile:delegate:), 0, 0);
}

uint64_t NSURLSession.upload(for:fromFile:delegate:)()
{
  v1 = *(v0 + 104);
  type metadata accessor for NSURLSession.CancelState();
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v3 = swift_initStackObject();
  *(v0 + 152) = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v7;
  *(v4 + 48) = v1;
  *(v4 + 56) = inited;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v5 = v0;
  v5[1] = NSURLSession.upload(for:fromFile:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.upload(for:fromFile:delegate:));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = NSURLSession.upload(for:fromFile:delegate:);
  }

  else
  {

    v2 = NSURLSession.upload(for:fromFile:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t closure #1 in NSURLSession.upload(for:fromFile:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.upload(for:fromFile:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.upload(for:fromFile:delegate:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v5 = v0;
  v5[1] = closure #1 in NSURLSession.upload(for:fromFile:delegate:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000001ELL, 0x8000000181488490, partial apply for closure #1 in closure #1 in NSURLSession.upload(for:fromFile:delegate:), v3, v6);
}

{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.upload(for:fromFile:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void closure #1 in closure #1 in NSURLSession.upload(for:fromFile:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMd);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  [*(a3 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  v16 = aBlock[6];
  ObjectType = swift_getObjectType();
  v18 = (*(a5 + 432))(ObjectType, a5);
  (*(v12 + 16))(v15, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v15, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.upload(for:fromFile:delegate:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_173;
  v21 = _Block_copy(aBlock);

  v22 = [a2 _uploadTaskWithRequest_fromFile_delegate_completionHandler_];
  _Block_release(v21);

  [v22 set:1 callCompletionHandlerInline:?];
  [v22 resume];
  v23 = *(v25 + 16);
  v26 = v22;
  os_unfair_lock_lock((v23 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v23 + 16), aBlock);
  os_unfair_lock_unlock((v23 + 32));
  if ((aBlock[0] & 1) == 0)
  {
    [v22 cancel];
  }
}

uint64_t NSURLSession.upload(for:from:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[17] = *a1;
  return MEMORY[0x1EEE6DFA0](NSURLSession.upload(for:from:delegate:), 0, 0);
}

uint64_t NSURLSession.upload(for:from:delegate:)()
{
  v1 = *(v0 + 120);
  v8 = *(v0 + 104);
  type metadata accessor for NSURLSession.CancelState();
  v7 = *(v0 + 128);
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v3 = swift_initStackObject();
  *(v0 + 152) = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 48) = v1;
  *(v4 + 56) = inited;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v5 = v0;
  v5[1] = NSURLSession.upload(for:from:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.upload(for:from:delegate:));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = NSURLSession.upload(for:from:delegate:);
  }

  else
  {

    v2 = NSURLSession.upload(for:from:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_setDeallocating();

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[1];

  return v4(v1, v2, v3);
}

{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NSURLSession.upload(for:from:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.upload(for:from:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.upload(for:from:delegate:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v8 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v8;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v4 = v0;
  v4[1] = closure #1 in NSURLSession.upload(for:from:delegate:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001ALL, 0x8000000181488470, partial apply for closure #1 in closure #1 in NSURLSession.upload(for:from:delegate:), v3, v5);
}

{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.upload(for:from:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #1 in NSURLSession.upload(for:from:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[0] = a7;
  v37 = *MEMORY[0x1E69E9840];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMd);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - v16;
  [*(a3 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  v18 = v30[2];
  v19 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v19)
    {
      aBlock = a4;
      LOWORD(v32) = a5;
      BYTE2(v32) = BYTE2(a5);
      BYTE3(v32) = BYTE3(a5);
      BYTE4(v32) = BYTE4(a5);
      BYTE5(v32) = BYTE5(a5);
      v20 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&aBlock length:BYTE6(a5)];
      goto LABEL_9;
    }

    v21 = a4;
    v22 = a4 >> 32;
    if (a4 >> 32 < a4)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v19 == 2)
  {
    v21 = *(a4 + 16);
    v22 = *(a4 + 24);
LABEL_7:
    v20 = __DataStorage.bridgedReference(_:)(v21, v22);
    goto LABEL_9;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v23 = v20;
  (*(v14 + 16))(v17, a1, v13);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = swift_allocObject();
  (*(v14 + 32))(v25 + v24, v17, v13);
  v35 = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.upload(for:fromFile:delegate:);
  v36 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  v34 = &block_descriptor_164;
  v26 = _Block_copy(&aBlock);

  v27 = [a2 _uploadTaskWithRequest_fromData_delegate_completionHandler_];
  _Block_release(v26);

  [v27 set:1 callCompletionHandlerInline:?];
  v28 = [v27 resume];
  v29 = *(v30[0] + 16);
  MEMORY[0x1EEE9AC00](v28);
  v30[-2] = v27;
  os_unfair_lock_lock((v29 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v29 + 16), &aBlock);
  os_unfair_lock_unlock((v29 + 32));
  if ((aBlock & 1) == 0)
  {
    [v27 cancel];
  }
}

uint64_t NSURLSession.download(for:delegate:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[13] = a1;
  v4[14] = a3;
  v5 = *a2;
  v4[15] = v3;
  v4[16] = v5;
  return MEMORY[0x1EEE6DFA0](NSURLSession.download(for:delegate:), 0, 0);
}

uint64_t NSURLSession.download(for:delegate:)()
{
  v1 = *(v0 + 112);
  type metadata accessor for NSURLSession.CancelState();
  v7 = *(v0 + 120);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v3 = swift_initStackObject();
  *(v0 + 144) = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  *(v4 + 40) = inited;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd);
  *v5 = v0;
  v5[1] = NSURLSession.download(for:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.download(for:delegate:));
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = NSURLSession.data(from:delegate:);
  }

  else
  {

    v2 = NSURLSession.download(for:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 104);
  swift_setDeallocating();

  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t closure #1 in NSURLSession.download(for:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.download(for:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.download(for:delegate:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd);
  *v4 = v0;
  v4[1] = closure #1 in NSURLSession.download(for:delegate:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x8000000181488450, partial apply for closure #1 in closure #1 in NSURLSession.download(for:delegate:), v3, v5);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.download(for:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void closure #1 in closure #1 in NSURLSession.download(for:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  [*(a3 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  v14 = aBlock[6];
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.download(from:delegate:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_155;
  v17 = _Block_copy(aBlock);

  v18 = [a2 _downloadTaskWithRequest_delegate_completionHandler_];
  _Block_release(v17);

  v19 = v18;
  [v19 set:1 callCompletionHandlerInline:?];
  [v19 set:1 keepDownloadTaskFile:?];

  [v19 resume];
  v20 = *(v22 + 16);
  v23 = v19;
  os_unfair_lock_lock((v20 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v20 + 16), aBlock);
  os_unfair_lock_unlock((v20 + 32));
  if ((aBlock[0] & 1) == 0)
  {
    [v19 cancel];
  }
}

uint64_t NSURLSession.download(from:delegate:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a1;
  *(v4 + 128) = *a2;
  return MEMORY[0x1EEE6DFA0](NSURLSession.download(from:delegate:), 0, 0);
}

uint64_t NSURLSession.download(resumeFrom:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return MEMORY[0x1EEE6DFA0](NSURLSession.download(resumeFrom:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.download(resumeFrom:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.download(resumeFrom:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.download(resumeFrom:delegate:)()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 24);
  v8 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So13NSURLResponseCtMd);
  *v3 = v0;
  v3[1] = closure #1 in NSURLSession.download(from:delegate:);
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001ELL, 0x80000001814883E0, partial apply for closure #1 in closure #1 in NSURLSession.download(resumeFrom:delegate:), v2, v4);
}

void closure #1 in closure #1 in NSURLSession.download(resumeFrom:delegate:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation3URLV_So13NSURLResponseCts5Error_pGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v16)
    {
      aBlock = a3;
      LOWORD(v30) = a4;
      BYTE2(v30) = BYTE2(a4);
      BYTE3(v30) = BYTE3(a4);
      BYTE4(v30) = BYTE4(a4);
      BYTE5(v30) = BYTE5(a4);
      v17 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&aBlock length:BYTE6(a4)];
      goto LABEL_9;
    }

    v18 = a3;
    v19 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v16 == 2)
  {
    v18 = *(a3 + 16);
    v19 = *(a3 + 24);
LABEL_7:
    v17 = __DataStorage.bridgedReference(_:)(v18, v19);
    goto LABEL_9;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v20 = v17;
  (*(v13 + 16))(v15, a1, v12);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = swift_allocObject();
  (*(v13 + 32))(v22 + v21, v15, v12);
  v33 = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.download(resumeFrom:delegate:);
  v34 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  v32 = &block_descriptor_137;
  v23 = _Block_copy(&aBlock);

  v24 = [a2 _downloadTaskWithResumeData_delegate_completionHandler_];
  _Block_release(v23);

  v25 = v24;
  [v25 set:1 callCompletionHandlerInline:?];
  [v25 set:1 keepDownloadTaskFile:?];

  v26 = [v25 resume];
  v27 = *(a6 + 16);
  MEMORY[0x1EEE9AC00](v26);
  *(&v28 - 2) = v25;
  os_unfair_lock_lock((v27 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v27 + 16), &aBlock);
  os_unfair_lock_unlock((v27 + 32));
  if ((aBlock & 1) == 0)
  {
    [v25 cancel];
  }
}

uint64_t NSURLSession.AsyncBytes._Storage.__deallocating_deinit()
{
  [*(v0 + 16) cancel];

  outlined consume of Data?(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t NSURLSession.AsyncBytes.Iterator.buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectRelease();
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:), 0, 0);
}

uint64_t closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);

  return MEMORY[0x1EEE6DE18](v0 + 16, &async function pointer to partial apply for closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:));
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);
  }

  else
  {

    v2 = closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:), 0, 0);
}

uint64_t closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)()
{
  v1 = v0[10];
  v2 = *(v0[7] + 24);
  v3 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock;
  v4 = *(v2 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state;
  outlined init with copy of URLSessionAsyncBytesDelegate.State(v2 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v8 = v0[10];
    v9 = *v8;
    v10 = v8[1];
    v0[11] = v10;
    v11 = swift_task_alloc();
    v0[12] = v11;
    v11[2] = v2;
    v11[3] = v9;
    v11[4] = v10;
    v12 = swift_task_alloc();
    v0[13] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
    *v12 = v0;
    v12[1] = closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);

    return MEMORY[0x1EEE6DE38](v0 + 4, 0, 0, 0x292861746164, 0xE600000000000000, partial apply for closure #1 in URLSessionAsyncBytesDelegate.data(), v11, v13);
  }

  else
  {
    if (*v0[10])
    {
      outlined destroy of URLSessionAsyncBytesDelegate.State(v2 + v5);
      *(v2 + v5) = 0;
      swift_storeEnumTagMultiPayload();
      v14 = *(v2 + v3);

      os_unfair_lock_unlock(v14 + 4);

      swift_willThrow();
    }

    else
    {
      v16 = *(v2 + v3);

      os_unfair_lock_unlock(v16 + 4);

      v17 = v0[6];
      *(v0[8] + 16) = *(v0[8] + 8);
      *v17 = 0;
    }

    v15 = v0[1];

    return v15();
  }
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);
  }

  else
  {

    v2 = closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    goto LABEL_15;
  }

  result = *(v0 + 32);
  *(v0 + 16) = result;
  *(v0 + 24) = v1;
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      if (!BYTE6(v1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result < 1)
      {
        goto LABEL_14;
      }

LABEL_9:
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      Data._Representation.reserveCapacity(_:)(15);
      specialized Data._Representation.withUnsafeMutableBytes<A>(_:)((v0 + 16), v8);
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
      *(v9 + 32) = v11;
      *(v9 + 40) = v10;
      outlined copy of Data._Representation(v11, v10);
      result = outlined consume of Data?(v12, v13);
      v14 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v14 != 2)
        {
          v15 = 0;
          goto LABEL_23;
        }

        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        v6 = __OFSUB__(v17, v18);
        v15 = v17 - v18;
        if (!v6)
        {
          goto LABEL_23;
        }

        __break(1u);
      }

      else if (!v14)
      {
        v15 = BYTE6(v10);
LABEL_23:
        **(v0 + 48) = v15;
        outlined consume of Data._Representation(v11, v10);
        goto LABEL_24;
      }

      LODWORD(v15) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        v15 = v15;
        goto LABEL_23;
      }

LABEL_29:
      __break(1u);
      return result;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v3 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v7 >= 1)
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  outlined consume of Data._Representation(result, v1);
LABEL_15:
  v16 = *(v0 + 48);
  *(*(v0 + 64) + 16) = *(*(v0 + 64) + 8);
  *v16 = 0;
LABEL_24:

  v19 = *(v0 + 8);

  return v19();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NSURLSession.AsyncBytes.Iterator.next()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](NSURLSession.AsyncBytes.Iterator.next(), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = NSURLSession.AsyncBytes.Iterator.next();

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t NSURLSession.AsyncBytes.Iterator.next()(__int16 a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 0x1FF);
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSURLSession.AsyncBytes.Iterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance NSURLSession.AsyncBytes.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSURLSession.AsyncBytes.Iterator()
{
  v1 = v0[3];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NSURLSession.AsyncBytes.Iterator;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[2];
    *v4 = v3;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSURLSession.AsyncBytes.Iterator(__int16 a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    v6 = *(v4 + 16);
    *v6 = a1;
    v6[1] = HIBYTE(a1) & 1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t _sSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = _sSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorV_Tgq5(a2, a3);
}

uint64_t _sSo12NSURLSessionC10FoundationE10AsyncBytesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(__int16 a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    **(v4 + 24) = v1;
  }

  else
  {
    v7 = *(v4 + 16);
    *v7 = a1;
    v7[1] = HIBYTE(a1) & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t NSURLSession.AsyncBytes.makeAsyncIterator()()
{
  v1 = *v0;
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v3 = swift_dynamicCastClassUnconditional();
  v4 = *(v3 + 16);
  *(v3 + 16) = &async function pointer to partial apply for closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);
  *(v3 + 24) = v1;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v4);
  return v2;
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance NSURLSession.AsyncBytes@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for _AsyncBytesBuffer.Storage();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v5 = swift_dynamicCastClassUnconditional();
  v6 = *(v5 + 16);
  *(v5 + 16) = &closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)partial apply;
  *(v5 + 24) = v3;
  result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v6);
  *a1 = v4;
  a1[1] = v4 + 33;
  a1[2] = v4 + 33;
  return result;
}

uint64_t NSURLSession.bytes(for:delegate:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[12] = a1;
  v4[13] = a3;
  v5 = *a2;
  v4[14] = v3;
  v4[15] = v5;
  return MEMORY[0x1EEE6DFA0](NSURLSession.bytes(for:delegate:), 0, 0);
}

uint64_t NSURLSession.bytes(for:delegate:)()
{
  v1 = *(v0 + 104);
  type metadata accessor for NSURLSession.CancelState();
  v7 = *(v0 + 112);
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v3 = swift_initStackObject();
  *(v0 + 136) = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  *(v4 + 40) = inited;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12NSURLSessionC10FoundationE10AsyncBytesV_So13NSURLResponseCtMd);
  *v5 = v0;
  v5[1] = NSURLSession.bytes(for:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.bytes(for:delegate:));
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = NSURLSession.data(for:delegate:);
  }

  else
  {

    v2 = NSURLSession.bytes(for:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[12];
  swift_setDeallocating();

  v2 = v0[11];
  *v1 = v0[10];
  v3 = v0[1];

  return v3(v2);
}

uint64_t closure #1 in NSURLSession.bytes(for:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.bytes(for:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.bytes(for:delegate:)()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  [*(v0[10] + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  v4 = v0[6];
  v5 = [v3 _dataTaskWithRequest_delegate_];
  v0[13] = v5;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURLResponse);
  *v7 = v0;
  v7[1] = closure #1 in NSURLSession.bytes(for:delegate:);

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0xD000000000000014, 0x8000000181488370, partial apply for closure #1 in closure #1 in NSURLSession.bytes(for:delegate:), v6, v8);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = closure #1 in NSURLSession.bytes(for:delegate:);
  }

  else
  {

    v2 = closure #1 in NSURLSession.bytes(for:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id closure #1 in NSURLSession.bytes(for:delegate:)()
{
  v1 = v0[13];
  v2 = v0[7];
  type metadata accessor for NSURLSession.AsyncBytes._Storage();
  v3 = swift_allocObject();
  *(v3 + 32) = xmmword_18122E880;
  *(v3 + 16) = v1;
  result = [v1 _internalDelegate];
  if (result)
  {
    v5 = v0[8];
    type metadata accessor for URLSessionAsyncBytesDelegate(0);
    *(v3 + 24) = swift_dynamicCastClassUnconditional();
    *v5 = v3;
    v5[1] = v2;
    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in NSURLSession.bytes(for:delegate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13NSURLResponseCs5Error_pGMd);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  v11 = *(v7 + 16);
  v11(&v17[-v9], a1, v6, v8);
  v12 = type metadata accessor for URLSessionAsyncBytesDelegate(0);
  v13 = objc_allocWithZone(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v13[OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock] = v14;
  (v11)(&v13[OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state], v10, v6);
  type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  swift_storeEnumTagMultiPayload();
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, sel_init);
  (*(v7 + 8))(v10, v6);
  [a2 set:v15 internalDelegate:?];

  [a2 resume];
  v16 = *(a3 + 16);
  v18 = a2;
  os_unfair_lock_lock((v16 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v16 + 16), &v19);
  os_unfair_lock_unlock((v16 + 32));
  if ((v19 & 1) == 0)
  {
    [a2 cancel];
  }
}

uint64_t NSURLSession.bytes(from:delegate:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a1;
  *(v4 + 120) = *a2;
  return MEMORY[0x1EEE6DFA0](NSURLSession.bytes(from:delegate:), 0, 0);
}

uint64_t NSURLSession.bytes(from:delegate:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  type metadata accessor for NSURLSession.CancelState();
  v8 = *(v0 + 112);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v4 = swift_initStackObject();
  *(v0 + 144) = v4;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(inited + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = inited;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12NSURLSessionC10FoundationE10AsyncBytesV_So13NSURLResponseCtMd);
  *v6 = v0;
  v6[1] = NSURLSession.bytes(from:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.bytes(from:delegate:));
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = NSURLSession.data(from:delegate:);
  }

  else
  {

    v2 = NSURLSession.bytes(from:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[12];
  swift_setDeallocating();

  v2 = v0[11];
  *v1 = v0[10];
  v3 = v0[1];

  return v3(v2);
}

uint64_t closure #1 in NSURLSession.bytes(from:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.bytes(from:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.bytes(from:delegate:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 432))(ObjectType, v3);
  v7 = [v4 _dataTaskWithURL_delegate_];
  v0[9] = v7;

  v8 = swift_task_alloc();
  v0[10] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURLResponse);
  *v9 = v0;
  v9[1] = closure #1 in NSURLSession.bytes(from:delegate:);

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000015, 0x8000000181488310, partial apply for closure #1 in closure #1 in NSURLSession.bytes(from:delegate:), v8, v10);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = closure #1 in NSURLSession.bytes(from:delegate:);
  }

  else
  {

    v2 = closure #1 in NSURLSession.bytes(from:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id closure #1 in NSURLSession.bytes(from:delegate:)()
{
  v1 = v0[9];
  v2 = v0[2];
  type metadata accessor for NSURLSession.AsyncBytes._Storage();
  v3 = swift_allocObject();
  *(v3 + 32) = xmmword_18122E880;
  *(v3 + 16) = v1;
  result = [v1 _internalDelegate];
  if (result)
  {
    v5 = v0[3];
    type metadata accessor for URLSessionAsyncBytesDelegate(0);
    *(v3 + 24) = swift_dynamicCastClassUnconditional();
    *v5 = v3;
    v5[1] = v2;
    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in NSURLSession.bytes(from:delegate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13NSURLResponseCs5Error_pGMd);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  v11 = *(v7 + 16);
  v11(&v17[-v9], a1, v6, v8);
  v12 = type metadata accessor for URLSessionAsyncBytesDelegate(0);
  v13 = objc_allocWithZone(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v13[OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock] = v14;
  (v11)(&v13[OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state], v10, v6);
  type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  swift_storeEnumTagMultiPayload();
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, sel_init);
  (*(v7 + 8))(v10, v6);
  [a2 set:v15 internalDelegate:?];

  [a2 resume];
  v16 = *(a3 + 16);
  v18 = a2;
  os_unfair_lock_lock((v16 + 32));
  partial apply for closure #1 in NSURLSession.CancelState.activate(task:)((v16 + 16), &v19);
  os_unfair_lock_unlock((v16 + 32));
  if ((v19 & 1) == 0)
  {
    [a2 cancel];
  }
}

void closure #2 in NSURLSession.data(for:delegate:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock((v1 + 32));
  *(v1 + 16) = 1;
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 32));
  [v2 cancel];
}

uint64_t partial apply for closure #1 in NSURLSession.data(from:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.data(from:delegate:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NSURLSession.upload(for:fromFile:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.upload(for:fromFile:delegate:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in NSURLSession.upload(for:from:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.upload(for:from:delegate:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in NSURLSession.download(for:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.download(for:delegate:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in NSURLSession.download(resumeFrom:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.download(resumeFrom:delegate:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:);

  return closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)(a1, v1);
}

uint64_t partial apply for closure #1 in NSURLSession.bytes(for:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.bytes(for:delegate:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in NSURLSession.bytes(from:delegate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSURLSession.bytes(from:delegate:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type NSURLSession.AsyncBytes.Iterator and conformance NSURLSession.AsyncBytes.Iterator()
{
  result = lazy protocol witness table cache variable for type NSURLSession.AsyncBytes.Iterator and conformance NSURLSession.AsyncBytes.Iterator;
  if (!lazy protocol witness table cache variable for type NSURLSession.AsyncBytes.Iterator and conformance NSURLSession.AsyncBytes.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSURLSession.AsyncBytes.Iterator and conformance NSURLSession.AsyncBytes.Iterator);
  }

  return result;
}

uint64_t type metadata completion function for URLSessionAsyncBytesDelegate()
{
  result = type metadata accessor for URLSessionAsyncBytesDelegate.State(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NSURLSession.AsyncBytes.Iterator(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NSURLSession.AsyncBytes.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for URLSessionAsyncBytesDelegate.State()
{
  type metadata accessor for CheckedContinuation<NSURLResponse, Error>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<Data?, Error>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Error?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for CheckedContinuation<NSURLResponse, Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<NSURLResponse, Error>)
  {
    type metadata accessor for NSMorphologyPronoun(255, &lazy cache variable for type metadata for NSURLResponse);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<NSURLResponse, Error>);
    }
  }
}

void type metadata accessor for CheckedContinuation<Data?, Error>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<Data?, Error>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<Data?, Error>);
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for Error?()
{
  if (!lazy cache variable for type metadata for Error?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Error?);
    }
  }
}

uint64_t specialized URLSessionAsyncBytesDelegate.urlSession(_:dataTask:didReceive:completionHandler:)(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13NSURLResponseCs5Error_pGMd);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock;
  v16 = *(a2 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock);
  _Block_copy(a3);

  os_unfair_lock_lock(v16 + 4);

  v17 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state;
  outlined init with copy of URLSessionAsyncBytesDelegate.State(a2 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2 || EnumCaseMultiPayload)
  {
    outlined destroy of URLSessionAsyncBytesDelegate.State(v13);
    v23 = *(a2 + v15);

    os_unfair_lock_unlock(v23 + 4);

    a3[2](a3, 1);
  }

  else
  {
    v19 = v26;
    (*(v26 + 32))(v7, v13, v5);
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSURLSessionResponseDisposition) -> ();
    *(v20 + 24) = v14;
    *v10 = partial apply for closure #1 in URLSessionAsyncBytesDelegate.urlSession(_:dataTask:didReceive:completionHandler:);
    v10[1] = v20;
    swift_storeEnumTagMultiPayload();

    outlined assign with take of URLSessionAsyncBytesDelegate.State(v10, a2 + v17);
    v21 = *(a2 + v15);

    os_unfair_lock_unlock(v21 + 4);

    v28 = v27;
    v22 = v27;
    CheckedContinuation.resume(returning:)();
    (*(v19 + 8))(v7, v5);
  }
}

void specialized URLSessionAsyncBytesDelegate.urlSession(_:dataTask:_didReceive:completionHandler:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (**a5)(void))
{
  v182 = a3;
  v184 = a1;
  v194[4] = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Logger();
  v180 = *(v8 - 8);
  v181 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13NSURLResponseCs5Error_pGMd);
  v186 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v185 = &v177 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVSgs5Error_pGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v177 - v13;
  v15 = type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  MEMORY[0x1EEE9AC00](v15);
  v178 = (&v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v177 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  v188 = v20;
  v189 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock;
  v21 = *(a4 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock);
  v187 = a5;
  v22 = a5;
  v23 = a4;
  _Block_copy(v22);

  os_unfair_lock_lock(v21 + 4);

  v24 = (a4 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state);
  outlined init with copy of URLSessionAsyncBytesDelegate.State(a4 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = v19;
      v27 = v183;
      v186[4](v185, v26, v183);
      outlined destroy of URLSessionAsyncBytesDelegate.State(v24);
      v24->isa = 0;
      swift_storeEnumTagMultiPayload();
      v28 = *(a4 + v189);

      os_unfair_lock_unlock(v28 + 4);

      LODWORD(v14) = _objc_isTaggedPointer(@"NSURLErrorDomain");
      v29 = @"NSURLErrorDomain";
      v24 = v29;
      if ((v14 & 1) == 0)
      {
LABEL_16:
        LOBYTE(v190) = 0;
        v194[0] = 0;
        LOBYTE(v192) = 0;
        v193 = 0;
        IsCF = __CFStringIsCF();
        if (!IsCF)
        {
          v40 = v24;
          String.init(_nativeStorage:)();
          if (v41 || (v194[0] = [(__CFString *)v40 length]) == 0)
          {

            goto LABEL_70;
          }

          goto LABEL_69;
        }

        v37 = v194[0];
        if (v194[0])
        {
          if (v193 == 1)
          {
            if (v190)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_70:
            v60 = objc_allocWithZone(NSError);
            v61 = String._bridgeToObjectiveCImpl()();

            v62 = [v60 initWithDomain:v61 code:-1 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v63 = [v62 domain];
            if (!v63)
            {
              goto LABEL_84;
            }

            v64 = v63;
            isTaggedPointer = _objc_isTaggedPointer(v63);
            v66 = v64;
            v67 = v66;
            if (!isTaggedPointer)
            {
LABEL_76:
              LOBYTE(v190) = 0;
              v194[0] = 0;
              LOBYTE(v192) = 0;
              v193 = 0;
              v72 = __CFStringIsCF();
              if (v72)
              {
                v73 = v194[0];
                if (v194[0])
                {
                  if (v193 == 1)
                  {
                    if (v190)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v83 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_195;
                  }

                  if ((v192 & 1) == 0)
                  {
LABEL_194:
                    v83 = String.init(_cocoaString:)();
LABEL_195:
                    v69 = v83;
                    v71 = v84;
                    goto LABEL_196;
                  }

                  if (v190 == 1)
                  {
                    MEMORY[0x1EEE9AC00](v72);
                    *(&v177 - 4) = v67;
                    *(&v177 - 3) = v194;
                    *(&v177 - 4) = 1536;
                    *(&v177 - 1) = v73;
                    v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v71 = v81;
                    v82 = HIBYTE(v81) & 0xF;
                    if ((v81 & 0x2000000000000000) == 0)
                    {
                      v82 = v80 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v82)
                    {
                      v69 = v80;

                      v27 = v183;
                      goto LABEL_197;
                    }

                    v27 = v183;
                    goto LABEL_193;
                  }

                  v111 = [v67 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v111);
                  *(&v177 - 4) = v67;
                  *(&v177 - 3) = v194;
                  *(&v177 - 4) = 134217984;
                  *(&v177 - 1) = v112;
                  v113 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v71 = v114;
                  v115 = HIBYTE(v114) & 0xF;
                  if ((v114 & 0x2000000000000000) == 0)
                  {
                    v115 = v113 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v115)
                  {
LABEL_193:

                    goto LABEL_194;
                  }

                  v69 = v113;
                  goto LABEL_90;
                }
              }

              else
              {
                v74 = v67;
                v75 = String.init(_nativeStorage:)();
                if (v76)
                {
                  v69 = v75;
                  v71 = v76;

                  goto LABEL_197;
                }

                v194[0] = [v74 length];
                if (v194[0])
                {
                  goto LABEL_194;
                }
              }

LABEL_84:
              v69 = 0;
              v71 = 0xE000000000000000;
              goto LABEL_197;
            }

            TaggedPointerTag = _objc_getTaggedPointerTag(v66);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  *(&v177 - 2) = v67;
                  v69 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v71 = v70;

LABEL_197:
                  v154 = v24;
                  v155 = v154;
                  if (!v14)
                  {
                    goto LABEL_202;
                  }

                  v156 = _objc_getTaggedPointerTag(v154);
                  if (!v156)
                  {
                    goto LABEL_214;
                  }

                  if (v156 != 22)
                  {
                    if (v156 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v156);
                      *(&v177 - 2) = v155;
                      v157 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v159 = v158;

                      goto LABEL_232;
                    }

LABEL_202:
                    LOBYTE(v190) = 0;
                    v194[0] = 0;
                    LOBYTE(v192) = 0;
                    v193 = 0;
                    v160 = __CFStringIsCF();
                    if (v160)
                    {
                      v161 = v194[0];
                      if (v194[0])
                      {
                        if (v193 == 1)
                        {
                          if (v190)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          v168 = String.init<A>(_immortalCocoaString:count:encoding:)();
                          goto LABEL_231;
                        }

                        if (v192)
                        {
                          if (v190 == 1)
                          {
                            MEMORY[0x1EEE9AC00](v160);
                            *(&v177 - 4) = v155;
                            *(&v177 - 3) = v194;
                            *(&v177 - 4) = 1536;
                            *(&v177 - 1) = v161;
                          }

                          else
                          {
                            v170 = [(__CFString *)v155 lengthOfBytesUsingEncoding:4];
                            MEMORY[0x1EEE9AC00](v170);
                            *(&v177 - 4) = v155;
                            *(&v177 - 3) = v194;
                            *(&v177 - 4) = 134217984;
                            *(&v177 - 1) = v171;
                          }

                          v172 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v159 = v173;
                          v174 = HIBYTE(v173) & 0xF;
                          if ((v173 & 0x2000000000000000) == 0)
                          {
                            v174 = v172 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v174)
                          {
                            v157 = v172;

                            goto LABEL_232;
                          }
                        }

LABEL_230:
                        v168 = String.init(_cocoaString:)();
LABEL_231:
                        v157 = v168;
                        v159 = v169;
LABEL_232:
                        if (v69 == v157 && v71 == v159)
                        {

LABEL_236:
                          v194[0] = v62;
                          v176 = v185;
                          CheckedContinuation.resume(throwing:)();
                          v187[2]();
                          [v184 cancel];
                          (v186[1])(v176, v27);
                          goto LABEL_237;
                        }

                        v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v175)
                        {
                          goto LABEL_236;
                        }

LABEL_239:
                        __break(1u);
                      }
                    }

                    else
                    {
                      v162 = v155;
                      v163 = String.init(_nativeStorage:)();
                      if (v164)
                      {
                        v157 = v163;
                        v159 = v164;

                        goto LABEL_232;
                      }

                      v194[0] = [(__CFString *)v162 length];
                      if (v194[0])
                      {
                        goto LABEL_230;
                      }
                    }

                    v157 = 0;
                    v159 = 0xE000000000000000;
                    goto LABEL_232;
                  }

                  v165 = [(__CFString *)v155 UTF8String];
                  if (v165)
                  {
                    v166 = String.init(utf8String:)(v165);
                    if (v167)
                    {
                      goto LABEL_215;
                    }

                    _Block_release(v187);
                    __break(1u);
LABEL_214:
                    v192 = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v166 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v167)
                    {
                      [(__CFString *)v155 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v157 = v190;
                      v159 = v191;
                      goto LABEL_232;
                    }

LABEL_215:
                    v157 = v166;
                    v159 = v167;

                    goto LABEL_232;
                  }

                  goto LABEL_243;
                }

                goto LABEL_76;
              }

              v77 = [v67 UTF8String];
              if (!v77)
              {
LABEL_245:
                _Block_release(v187);
                __break(1u);
                goto LABEL_246;
              }

              v78 = String.init(utf8String:)(v77);
              if (v79)
              {
LABEL_89:
                v69 = v78;
                v71 = v79;
LABEL_90:

LABEL_196:
                goto LABEL_197;
              }

              _Block_release(v187);
              __break(1u);
            }

            v192 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v78 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v79)
            {
              [v67 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v69 = v190;
              v71 = v191;
              goto LABEL_196;
            }

            goto LABEL_89;
          }

          if (v192)
          {
            if (v190 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v177 - 4) = v24;
              *(&v177 - 3) = v194;
              *(&v177 - 4) = 1536;
              *(&v177 - 1) = v37;
            }

            else
            {
              v50 = [(__CFString *)v24 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v50);
              *(&v177 - 4) = v24;
              *(&v177 - 3) = v194;
              *(&v177 - 4) = 134217984;
              *(&v177 - 1) = v51;
            }

            v52 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v54 = HIBYTE(v53) & 0xF;
            if ((v53 & 0x2000000000000000) == 0)
            {
              v54 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (v54)
            {
              goto LABEL_62;
            }
          }

LABEL_69:
          String.init(_cocoaString:)();
          goto LABEL_70;
        }

LABEL_62:

        goto LABEL_70;
      }

      v30 = _objc_getTaggedPointerTag(v29);
      if (!v30)
      {
LABEL_38:
        v192 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v48)
        {
          [(__CFString *)v24 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      if (v30 != 22)
      {
        if (v30 == 2)
        {
          MEMORY[0x1EEE9AC00](v30);
          *(&v177 - 2) = v24;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_70;
        }

        goto LABEL_16;
      }

      v44 = [(__CFString *)v24 UTF8String];
      if (!v44)
      {
        _Block_release(v187);
        __break(1u);
        goto LABEL_241;
      }

      String.init(utf8String:)(v44);
      if (v45)
      {
        goto LABEL_62;
      }

      _Block_release(v187);
      __break(1u);
LABEL_35:
      v46 = [v27 UTF8String];
      if (v46)
      {
        String.init(utf8String:)(v46);
        if (!v47)
        {
          _Block_release(v187);
          __break(1u);
          goto LABEL_38;
        }

        goto LABEL_67;
      }

LABEL_241:
      _Block_release(v187);
      __break(1u);
      goto LABEL_242;
    }

    (*(v12 + 32))(v14, v19, v11);
    outlined destroy of URLSessionAsyncBytesDelegate.State(v24);
    v33 = v188;
    v24->isa = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
    v24->info = v33;
    swift_storeEnumTagMultiPayload();
    v34 = *(a4 + v189);

    os_unfair_lock_unlock(v34 + 4);

    v194[0] = a2;
    v194[1] = v182;
    outlined copy of Data._Representation(a2, v182);
    CheckedContinuation.resume(returning:)();
    (*(v12 + 8))(v14, v11);
LABEL_237:

    return;
  }

  if (EnumCaseMultiPayload != 2)
  {
    outlined destroy of URLSessionAsyncBytesDelegate.State(v19);
    v35 = *(a4 + v189);

    os_unfair_lock_unlock(v35 + 4);

    v187[2]();
    goto LABEL_237;
  }

  outlined destroy of URLSessionAsyncBytesDelegate.State(v19);
  LODWORD(v11) = _objc_isTaggedPointer(@"NSURLErrorDomain");
  v31 = @"NSURLErrorDomain";
  v27 = v31;
  if (v11)
  {
    v32 = _objc_getTaggedPointerTag(v31);
    switch(v32)
    {
      case 0:
        v192 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v49)
        {
          [v27 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_104;
        }

        goto LABEL_67;
      case 0x16:
        goto LABEL_35;
      case 2:
        MEMORY[0x1EEE9AC00](v32);
        *(&v177 - 2) = v27;
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_104;
    }
  }

  LOBYTE(v190) = 0;
  v194[0] = 0;
  LOBYTE(v192) = 0;
  v193 = 0;
  v38 = __CFStringIsCF();
  if (!v38)
  {
    v42 = v27;
    String.init(_nativeStorage:)();
    if (v43 || (v194[0] = [v42 length]) == 0)
    {

      goto LABEL_104;
    }

    goto LABEL_103;
  }

  v39 = v194[0];
  if (!v194[0])
  {
LABEL_67:

    goto LABEL_104;
  }

  if (v193 != 1)
  {
    if (v192)
    {
      if (v190 == 1)
      {
        MEMORY[0x1EEE9AC00](v38);
        *(&v177 - 4) = v27;
        *(&v177 - 3) = v194;
        *(&v177 - 4) = 1536;
        *(&v177 - 1) = v39;
      }

      else
      {
        v55 = [v27 lengthOfBytesUsingEncoding_];
        MEMORY[0x1EEE9AC00](v55);
        *(&v177 - 4) = v27;
        *(&v177 - 3) = v194;
        *(&v177 - 4) = 134217984;
        *(&v177 - 1) = v56;
      }

      v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v59 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v59 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (v59)
      {
        goto LABEL_67;
      }
    }

LABEL_103:
    String.init(_cocoaString:)();
    goto LABEL_104;
  }

  if (v190)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_104:
  v85 = objc_allocWithZone(NSError);
  v86 = String._bridgeToObjectiveCImpl()();

  v87 = [v85 initWithDomain:v86 code:-1 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v88 = [v87 domain];
  if (!v88)
  {
    v95 = v11;
    v96 = 0;
    v98 = 0xE000000000000000;
LABEL_149:
    v119 = v27;
    v120 = v119;
    if (!v95)
    {
      goto LABEL_154;
    }

    v121 = v96;
    v122 = _objc_getTaggedPointerTag(v119);
    if (!v122)
    {
      v192 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v134 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v135)
      {
        v123 = v134;
        v125 = v135;
      }

      else
      {
        [v120 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v123 = v190;
        v125 = v191;
      }

      goto LABEL_182;
    }

    if (v122 != 22)
    {
      if (v122 == 2)
      {
        MEMORY[0x1EEE9AC00](v122);
        *(&v177 - 2) = v120;
        v123 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v125 = v124;

LABEL_182:
        v96 = v121;
        goto LABEL_183;
      }

LABEL_154:
      LOBYTE(v190) = 0;
      v194[0] = 0;
      LOBYTE(v192) = 0;
      v193 = 0;
      v126 = __CFStringIsCF();
      if (v126)
      {
        v127 = v194[0];
        if (!v194[0])
        {

          v123 = 0;
          v125 = 0xE000000000000000;
          goto LABEL_183;
        }

        if (v193 == 1)
        {
          if (v190)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v123 = String.init<A>(_immortalCocoaString:count:encoding:)();
          v125 = v136;
          goto LABEL_183;
        }

        v121 = v96;
        if (v192)
        {
          if (v190 == 1)
          {
            MEMORY[0x1EEE9AC00](v126);
            *(&v177 - 4) = v120;
            *(&v177 - 3) = v194;
            *(&v177 - 4) = 1536;
            *(&v177 - 1) = v127;
          }

          else
          {
            v137 = [v120 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v137);
            *(&v177 - 4) = v120;
            *(&v177 - 3) = v194;
            *(&v177 - 4) = 134217984;
            *(&v177 - 1) = v138;
          }

          v139 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v125 = v140;
          v141 = HIBYTE(v140) & 0xF;
          if ((v140 & 0x2000000000000000) == 0)
          {
            v141 = v139 & 0xFFFFFFFFFFFFLL;
          }

          if (v141)
          {
            v123 = v139;

            goto LABEL_182;
          }
        }
      }

      else
      {
        v121 = v96;
        v128 = v120;
        v129 = String.init(_nativeStorage:)();
        if (v130)
        {
          v123 = v129;
          v125 = v130;

          goto LABEL_182;
        }

        v194[0] = [v128 length];
        if (!v194[0])
        {

          v123 = 0;
          v125 = 0xE000000000000000;
          goto LABEL_182;
        }
      }

      v123 = String.init(_cocoaString:)();
      v125 = v142;
      goto LABEL_182;
    }

    v131 = [v120 UTF8String];
    if (v131)
    {
      v132 = String.init(utf8String:)(v131);
      if (!v133)
      {
LABEL_244:
        _Block_release(v187);
        __break(1u);
        goto LABEL_245;
      }

      v123 = v132;
      v125 = v133;

LABEL_183:
      if (v96 == v123 && v98 == v125)
      {
      }

      else
      {
        v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v143 & 1) == 0)
        {
          __break(1u);
          goto LABEL_239;
        }
      }

      v144 = v178;
      *v178 = v87;
      swift_storeEnumTagMultiPayload();
      outlined assign with take of URLSessionAsyncBytesDelegate.State(v144, v24);
      v145 = *(v23 + v189);

      os_unfair_lock_unlock(v145 + 4);

      if (one-time initialization token for logHandle != -1)
      {
        swift_once();
      }

      v146 = logHandle;
      v147 = v179;
      Logger.init(_:)();
      v148 = v184;
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        *v151 = 138412290;
        *(v151 + 4) = v148;
        *v152 = v148;
        v153 = v148;
        _os_log_impl(&dword_18075C000, v149, v150, "%@ received data before consuming", v151, 0xCu);
        outlined destroy of NSObject?(v152);
        MEMORY[0x1865D2690](v152, -1, -1);
        MEMORY[0x1865D2690](v151, -1, -1);
      }

      (*(v180 + 8))(v147, v181);
      v187[2]();
      [v148 cancel];
      goto LABEL_237;
    }

LABEL_242:
    _Block_release(v187);
    __break(1u);
LABEL_243:
    _Block_release(v187);
    __break(1u);
    goto LABEL_244;
  }

  v186 = v87;
  v89 = v27;
  v90 = v88;
  v91 = _objc_isTaggedPointer(v88);
  v92 = v90;
  v93 = v92;
  if (!v91)
  {
    goto LABEL_110;
  }

  v94 = _objc_getTaggedPointerTag(v92);
  if (!v94)
  {
    goto LABEL_123;
  }

  if (v94 != 22)
  {
    if (v94 == 2)
    {
      v95 = v11;
      MEMORY[0x1EEE9AC00](v94);
      *(&v177 - 2) = v93;
      v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v98 = v97;

LABEL_148:
      v27 = v89;
      v87 = v186;
      goto LABEL_149;
    }

LABEL_110:
    LOBYTE(v190) = 0;
    v194[0] = 0;
    LOBYTE(v192) = 0;
    v193 = 0;
    v99 = __CFStringIsCF();
    if (v99)
    {
      v100 = v194[0];
      if (v194[0])
      {
        if (v193 == 1)
        {
          v95 = v11;
          if (v190)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v109 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_146;
        }

        if (v192)
        {
          v95 = v11;
          if (v190 == 1)
          {
            MEMORY[0x1EEE9AC00](v99);
            *(&v177 - 4) = v93;
            *(&v177 - 3) = v194;
            *(&v177 - 4) = 1536;
            *(&v177 - 1) = v100;
          }

          else
          {
            v116 = [v93 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v116);
            *(&v177 - 4) = v93;
            *(&v177 - 3) = v194;
            *(&v177 - 4) = 134217984;
            *(&v177 - 1) = v117;
          }

          v107 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v98 = v108;
          v118 = HIBYTE(v108) & 0xF;
          if ((v108 & 0x2000000000000000) == 0)
          {
            v118 = v107 & 0xFFFFFFFFFFFFLL;
          }

          if (v118)
          {
            v96 = v107;
            goto LABEL_125;
          }
        }

        else
        {
          v95 = v11;
        }

LABEL_145:
        v109 = String.init(_cocoaString:)();
LABEL_146:
        v96 = v109;
        v98 = v110;
        goto LABEL_147;
      }

      v95 = v11;
    }

    else
    {
      v95 = v11;
      v101 = v93;
      v102 = String.init(_nativeStorage:)();
      if (v103)
      {
        v96 = v102;
        v98 = v103;

        goto LABEL_148;
      }

      v194[0] = [v101 length];
      if (v194[0])
      {
        goto LABEL_145;
      }
    }

    v96 = 0;
    v98 = 0xE000000000000000;
    goto LABEL_148;
  }

  v95 = v11;
  v104 = [v93 UTF8String];
  if (v104)
  {
    v105 = String.init(utf8String:)(v104);
    if (v106)
    {
LABEL_124:
      v96 = v105;
      v98 = v106;
LABEL_125:

LABEL_147:
      goto LABEL_148;
    }

    _Block_release(v187);
    __break(1u);
LABEL_123:
    v95 = v11;
    v192 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v105 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v106)
    {
      [v93 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v96 = v190;
      v98 = v191;
      goto LABEL_147;
    }

    goto LABEL_124;
  }

LABEL_246:
  _Block_release(v187);
  __break(1u);
}

id specialized URLSessionAsyncBytesDelegate.urlSession(_:task:didCompleteWithError:)(void *a1)
{
  v93 = a1;
  v99 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVSgs5Error_pGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v90[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13NSURLResponseCs5Error_pGMd);
  v92 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v90[-v7];
  v9 = type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock;
  v13 = *(v1 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock);

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state;
  outlined init with copy of URLSessionAsyncBytesDelegate.State(v1 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v11;
      outlined destroy of URLSessionAsyncBytesDelegate.State(v1 + v14);
      v21 = v93;
      *(v1 + v14) = v93;
      swift_storeEnumTagMultiPayload();
      v22 = *(v1 + v12);
      v23 = v21;

      os_unfair_lock_unlock(v22 + 4);

      v20(v24);
    }

    else
    {
      return outlined destroy of URLSessionAsyncBytesDelegate.State(v11);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = v92;
      (*(v92 + 32))(v8, v11, v6);
      outlined destroy of URLSessionAsyncBytesDelegate.State(v1 + v14);
      *(v1 + v14) = 0;
      swift_storeEnumTagMultiPayload();
      v17 = *(v1 + v12);

      os_unfair_lock_unlock(v17 + 4);

      v18 = v93;
      if (v93)
      {
        v19 = v93;
LABEL_123:
        *&v98[0] = v19;
        v89 = v18;
        CheckedContinuation.resume(throwing:)();
        return (*(v16 + 8))(v8, v6);
      }

      isTaggedPointer = _objc_isTaggedPointer(@"NSURLErrorDomain");
      v29 = @"NSURLErrorDomain";
      v30 = v29;
      if (!isTaggedPointer)
      {
        goto LABEL_17;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v29);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            *&v90[-16] = v30;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_44;
          }

LABEL_17:
          LOBYTE(v94) = 0;
          *&v98[0] = 0;
          LOBYTE(v96) = 0;
          v97 = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            v33 = *&v98[0];
            if (!*&v98[0])
            {
LABEL_43:

              goto LABEL_44;
            }

            if (v97 == 1)
            {
              if (v94)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_44:
              v43 = objc_allocWithZone(NSError);
              v44 = String._bridgeToObjectiveCImpl()();

              v19 = [v43 initWithDomain:v44 code:-1 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v45 = [v19 domain];
              if (!v45)
              {
                v51 = 0;
                v53 = 0xE000000000000000;
LABEL_84:
                v68 = v30;
                v69 = v68;
                if (!isTaggedPointer)
                {
                  goto LABEL_89;
                }

                v70 = _objc_getTaggedPointerTag(v68);
                if (!v70)
                {
                  goto LABEL_101;
                }

                if (v70 != 22)
                {
                  if (v70 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v70);
                    *&v90[-16] = v69;
                    v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v73 = v72;

LABEL_119:
                    v16 = v92;
                    if (v51 == v71 && v53 == v73)
                    {

                      v18 = v93;
                    }

                    else
                    {
                      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      v18 = v93;
                      if ((v88 & 1) == 0)
                      {
                        __break(1u);
                      }
                    }

                    goto LABEL_123;
                  }

LABEL_89:
                  LOBYTE(v94) = 0;
                  *&v98[0] = 0;
                  LOBYTE(v96) = 0;
                  v97 = 0;
                  v74 = __CFStringIsCF();
                  if (v74)
                  {
                    v75 = *&v98[0];
                    if (*&v98[0])
                    {
                      if (v97 == 1)
                      {
                        if (v94)
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v81 = String.init<A>(_immortalCocoaString:count:encoding:)();
                        goto LABEL_118;
                      }

                      if (v96)
                      {
                        if (v94 == 1)
                        {
                          MEMORY[0x1EEE9AC00](v74);
                          *&v90[-32] = v69;
                          *&v90[-24] = v98;
                          *&v90[-16] = 1536;
                          *&v90[-8] = v75;
                        }

                        else
                        {
                          v83 = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
                          MEMORY[0x1EEE9AC00](v83);
                          *&v90[-32] = v69;
                          *&v90[-24] = v98;
                          *&v90[-16] = 134217984;
                          *&v90[-8] = v84;
                        }

                        v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v73 = v86;
                        v87 = HIBYTE(v86) & 0xF;
                        if ((v86 & 0x2000000000000000) == 0)
                        {
                          v87 = v85 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v87)
                        {
                          v71 = v85;

                          goto LABEL_119;
                        }
                      }

LABEL_117:
                      v81 = String.init(_cocoaString:)();
LABEL_118:
                      v71 = v81;
                      v73 = v82;
                      goto LABEL_119;
                    }
                  }

                  else
                  {
                    v76 = v69;
                    v77 = String.init(_nativeStorage:)();
                    if (v78)
                    {
                      v71 = v77;
                      v73 = v78;

                      goto LABEL_119;
                    }

                    *&v98[0] = [(__CFString *)v76 length];
                    if (*&v98[0])
                    {
                      goto LABEL_117;
                    }
                  }

                  v71 = 0;
                  v73 = 0xE000000000000000;
                  goto LABEL_119;
                }

                result = [(__CFString *)v69 UTF8String];
                if (result)
                {
                  v79 = String.init(utf8String:)(result);
                  if (v80)
                  {
LABEL_102:
                    v71 = v79;
                    v73 = v80;

                    goto LABEL_119;
                  }

                  __break(1u);
LABEL_101:
                  v96 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v80)
                  {
                    [(__CFString *)v69 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v71 = v94;
                    v73 = v95;
                    goto LABEL_119;
                  }

                  goto LABEL_102;
                }

                goto LABEL_126;
              }

              v91 = isTaggedPointer;
              v46 = v45;
              v47 = _objc_isTaggedPointer(v45);
              v48 = v46;
              v49 = v48;
              if ((v47 & 1) == 0)
              {
                goto LABEL_50;
              }

              v50 = _objc_getTaggedPointerTag(v48);
              if (v50)
              {
                if (v50 != 22)
                {
                  if (v50 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v50);
                    *&v90[-16] = v49;
                    v51 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v53 = v52;

LABEL_83:
                    isTaggedPointer = v91;
                    goto LABEL_84;
                  }

LABEL_50:
                  LOBYTE(v94) = 0;
                  *&v98[0] = 0;
                  LOBYTE(v96) = 0;
                  v97 = 0;
                  v54 = __CFStringIsCF();
                  if (v54)
                  {
                    v55 = *&v98[0];
                    if (*&v98[0])
                    {
                      if (v97 == 1)
                      {
                        if (v94)
                        {
                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                        }

                        else
                        {
                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        }

                        v61 = String.init<A>(_immortalCocoaString:count:encoding:)();
                        goto LABEL_81;
                      }

                      if (v96)
                      {
                        if (v94 == 1)
                        {
                          MEMORY[0x1EEE9AC00](v54);
                          *&v90[-32] = v49;
                          *&v90[-24] = v98;
                          *&v90[-16] = 1536;
                          *&v90[-8] = v55;
                        }

                        else
                        {
                          v63 = [v49 lengthOfBytesUsingEncoding_];
                          MEMORY[0x1EEE9AC00](v63);
                          *&v90[-32] = v49;
                          *&v90[-24] = v98;
                          *&v90[-16] = 134217984;
                          *&v90[-8] = v64;
                        }

                        v65 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v53 = v66;
                        v67 = HIBYTE(v66) & 0xF;
                        if ((v66 & 0x2000000000000000) == 0)
                        {
                          v67 = v65 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v67)
                        {
                          v51 = v65;

                          goto LABEL_83;
                        }
                      }

LABEL_80:
                      v61 = String.init(_cocoaString:)();
LABEL_81:
                      v51 = v61;
                      v53 = v62;
                      goto LABEL_82;
                    }
                  }

                  else
                  {
                    v56 = v49;
                    v57 = String.init(_nativeStorage:)();
                    if (v58)
                    {
                      v51 = v57;
                      v53 = v58;

                      goto LABEL_83;
                    }

                    *&v98[0] = [v56 length];
                    if (*&v98[0])
                    {
                      goto LABEL_80;
                    }
                  }

                  v51 = 0;
                  v53 = 0xE000000000000000;
                  goto LABEL_83;
                }

                result = [v49 UTF8String];
                if (!result)
                {
LABEL_127:
                  __break(1u);
                  return result;
                }

                v59 = String.init(utf8String:)(result);
                if (v60)
                {
                  goto LABEL_64;
                }

                __break(1u);
              }

              v96 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v59 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v60)
              {
                [v49 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v51 = v94;
                v53 = v95;
                goto LABEL_82;
              }

LABEL_64:
              v51 = v59;
              v53 = v60;

LABEL_82:
              goto LABEL_83;
            }

            if (v96)
            {
              if (v94 == 1)
              {
                MEMORY[0x1EEE9AC00](IsCF);
                *&v90[-32] = v30;
                *&v90[-24] = v98;
                *&v90[-16] = 1536;
                *&v90[-8] = v33;
              }

              else
              {
                v38 = [(__CFString *)v30 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v38);
                *&v90[-32] = v30;
                *&v90[-24] = v98;
                *&v90[-16] = 134217984;
                *&v90[-8] = v39;
              }

              v40 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v42 = HIBYTE(v41) & 0xF;
              if ((v41 & 0x2000000000000000) == 0)
              {
                v42 = v40 & 0xFFFFFFFFFFFFLL;
              }

              if (v42)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
            v34 = v30;
            String.init(_nativeStorage:)();
            if (v35 || (*&v98[0] = [(__CFString *)v34 length]) == 0)
            {

              goto LABEL_44;
            }
          }

          String.init(_cocoaString:)();
          goto LABEL_44;
        }

        result = [(__CFString *)v30 UTF8String];
        if (!result)
        {
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        String.init(utf8String:)(result);
        if (v36)
        {
          goto LABEL_43;
        }

        __break(1u);
      }

      v96 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v37)
      {
        [(__CFString *)v30 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    (*(v3 + 32))(v5, v11, v2);
    outlined destroy of URLSessionAsyncBytesDelegate.State(v1 + v14);
    *(v1 + v14) = 0;
    swift_storeEnumTagMultiPayload();
    v26 = *(v1 + v12);

    os_unfair_lock_unlock(v26 + 4);

    if (v93)
    {
      *&v98[0] = v93;
      v27 = v93;
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v98[0] = xmmword_18122E880;
      CheckedContinuation.resume(returning:)();
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t outlined init with copy of URLSessionAsyncBytesDelegate.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URLSessionAsyncBytesDelegate.State(uint64_t a1)
{
  v2 = type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of URLSessionAsyncBytesDelegate.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)partial apply(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)partial apply;

  return closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)(a1, v1);
}

{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t partial apply for closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in closure #1 in NSURLSession.AsyncBytes.Iterator.init(storage:)(a1, v5, v4);
}

uint64_t outlined copy of NSURLSessionWebSocketTask.Message(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return outlined copy of Data._Representation(a1, a2);
  }
}

void outlined consume of Result<NSURLSessionWebSocketTask.Message, Error>(id a1, unint64_t a2, char a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    outlined consume of NSURLSessionWebSocketTask.Message(a1, a2, a3 & 1);
  }
}

uint64_t outlined consume of NSURLSessionWebSocketTask.Message(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return outlined consume of Data._Representation(a1, a2);
  }
}

void specialized withVaList<A>(_:_:)(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for __VaListBuilder();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = [objc_allocWithZone(NSString) initWithFormat:a3 arguments:__VaListBuilder.va_list()()];
    [a2 appendString_];

    return;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    v9 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v10 = *v5;
    v11 = *(v9 + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v16 = v9;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v9 = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v9 = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(v9 + 16);
    if (v20)
    {
      v21 = (v9 + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

id NSString.init(format:_:)(uint64_t a1)
{
  v2 = getVaList(_:)();

  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v3 initWithFormat:a1 arguments:v2];
}

id NSString.init(format:locale:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = getVaList(_:)();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v7 = (*(v4 + 488))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFormat:a1 locale:v7 arguments:v5];
  swift_unknownObjectRelease();
  return v8;
}

id closure #1 in static NSString.localizedStringWithFormat(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v23[4] = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(a2);
  v7 = a2;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_13;
    case 0x16:
      result = [v8 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v17 = String.init(utf8String:)(result);
      if (v18)
      {
LABEL_14:
        v10 = v17;
        v12 = v18;

        goto LABEL_19;
      }

      __break(1u);
LABEL_13:
      _CFIndirectTaggedPointerStringGetContents();
      v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v18)
      {
        [v8 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v12 = v22;
        v10 = v21;
        goto LABEL_19;
      }

      goto LABEL_14;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v11;

      goto LABEL_19;
  }

LABEL_6:
  v23[0] = 0;
  if (__CFStringIsCF())
  {
    v10 = v23[0];

    v12 = 0xE000000000000000;
  }

  else
  {
    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;
    }

    else
    {
      v23[0] = [v13 length];
      if (v23[0])
      {
        v10 = String.init(_cocoaString:)();
        v12 = v19;
      }

      else
      {

        v10 = 0;
        v12 = 0xE000000000000000;
      }
    }
  }

LABEL_19:
  v23[3] = &type metadata for Locale;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v23[0] = LocaleCache._currentAndCache.getter();
  v23[1] = v20;
  result = NSString.__allocating_init(format:locale:arguments:)(v10, v12, v23, a1);
  *a3 = result;
  return result;
}

uint64_t NSString.appendingFormat(_:_:)(void *a1, uint64_t a2)
{
  v5 = v2;
  v6 = a1;
  specialized withVaList<A>(_:_:)(a2, v5, v6);
  v8 = v7;

  return v8;
}

void NSMutableString.appendFormat(_:_:)(void *a1, uint64_t a2)
{
  v5 = v2;
  v6 = a1;

  specialized withVaList<A>(_:_:)(a2, v5, v6);
}

id NSString.init(string:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithString_];
}

void NSString.customPlaygroundQuickLook.getter(uint64_t a1@<X8>)
{
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v1;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v9 = v8;

LABEL_19:
      *a1 = v7;
      *(a1 + 8) = v9;
      *(a1 + 32) = 0;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v7 = 0;

      v9 = 0xE000000000000000;
    }

    else
    {
      v10 = v5;
      v11 = String.init(_nativeStorage:)();
      if (v12)
      {
        v7 = v11;
        v9 = v12;
      }

      else if ([v10 length])
      {
        v7 = String.init(_cocoaString:)();
        v9 = v16;
      }

      else
      {

        v7 = 0;
        v9 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v13 = [v5 UTF8String];
  if (v13)
  {
    v14 = String.init(utf8String:)(v13);
    if (v15)
    {
LABEL_14:
      v7 = v14;
      v9 = v15;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v15)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v7 = v17;
      v9 = v18;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void specialized withVaList<A>(_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for __VaListBuilder();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
      v9 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v10 = *v5;
      v11 = *(v9 + 16);
      v12 = __OFADD__(*v5, v11);
      v13 = *v5 + v11;
      if (v12)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v14 = v4[4];
      if (v14 >= v13)
      {
        goto LABEL_18;
      }

      if (v14 + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      v15 = v4[5];
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      v4[4] = v13;
      if ((v13 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v16 = v9;
      v17 = swift_slowAlloc();
      v18 = v17;
      v4[5] = v17;
      if (v15)
      {
        break;
      }

      v9 = v16;
      if (!v18)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_19:
      v20 = *(v9 + 16);
      if (v20)
      {
        v21 = (v9 + 32);
        v22 = *v5;
        while (1)
        {
          v23 = *v21++;
          *&v18[8 * v22] = v23;
          v22 = *v5 + 1;
          if (__OFADD__(*v5, 1))
          {
            break;
          }

          *v5 = v22;
          if (!--v20)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_3:

      if (++v7 == v6)
      {
        goto LABEL_26;
      }
    }

    if (v17 != v15 || v17 >= &v15[8 * v10])
    {
      memmove(v17, v15, 8 * v10);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v9 = v16;
LABEL_18:
    v18 = v4[5];
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_26:
  v24 = [objc_allocWithZone(NSString) initWithFormat:a3 arguments:__VaListBuilder.va_list()()];
  v25 = [a2 stringByAppendingString_];

  if (!v25)
  {
    goto LABEL_32;
  }
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSString and conformance NSString(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id NSExpression.init(format:_:)()
{
  v0 = getVaList(_:)();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata expressionWithFormat:String._bridgeToObjectiveCImpl()() arguments:v0];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t NSNotificationCenter.Notifications.Iterator.next()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](NSNotificationCenter.Notifications.Iterator.next(), 0, 0);
}

uint64_t NSNotificationCenter.Notifications.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  *v1 = v0;
  v1[1] = NSNotificationCenter.Notifications.Iterator.next();
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v2, &async function pointer to partial apply for closure #1 in NSNotificationCenter.Notifications.Iterator.next());
}

uint64_t _sSo20NSNotificationCenterC10FoundationE13NotificationsC8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t partial apply for closure #1 in NSNotificationCenter.Notifications.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in NSURLSession.data(from:delegate:);

  return closure #1 in NSNotificationCenter.Notifications.Iterator.next()(a1);
}

uint64_t NSNotificationCenter.Notifications.deinit()
{
  NSNotificationCenter.Notifications.teardown()();

  return v0;
}

uint64_t PresentationIntent.components.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PresentationIntent.Kind.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 != 1)
      {
        v9 = 0x636F6C4265646F63;
        if (v1)
        {
          v6 = *(v0 + 8);
        }

        else
        {
          outlined consume of PresentationIntent.Kind(v2, 0, 2);
          v6 = 0xE600000000000000;
          v2 = 0x3E656E6F6E3CLL;
        }

        MEMORY[0x1865CB0E0](v2, v6);

        MEMORY[0x1865CB0E0](39, 0xE100000000000000);
        return v9;
      }

      v5 = 0x6D6574497473696CLL;
    }

    else
    {
      v5 = 0x20726564616568;
    }

    goto LABEL_14;
  }

  if (*(v0 + 16) <= 4u)
  {
    if (v3 == 3)
    {
      v9 = 0x20656C626174;
      v4 = MEMORY[0x1865CB4E0](v2, &type metadata for PresentationIntent.TableColumn);
LABEL_15:
      MEMORY[0x1865CB0E0](v4);

      return v9;
    }

    v5 = 0x776F52656C626174;
LABEL_14:
    v9 = v5;
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    goto LABEL_15;
  }

  if (v3 == 5)
  {
    v5 = 0x6C6543656C626174;
    goto LABEL_14;
  }

  if (v2 > 2)
  {
    if (v2 ^ 3 | v1)
    {
      if (v2 ^ 4 | v1)
      {
        return 0x616548656C626174;
      }

      else
      {
        return 0x636974616D656874;
      }
    }

    else
    {
      return 0x6F75516B636F6C62;
    }
  }

  else
  {
    if (v2 ^ 1 | v1)
    {
      v8 = 0x65726564726F6E75;
    }

    else
    {
      v8 = 0x4C6465726564726FLL;
    }

    if (v2 | v1)
    {
      return v8;
    }

    else
    {
      return 0x7061726761726170;
    }
  }
}

uint64_t PresentationIntent.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    v16._countAndFlagsBits = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v5 = specialized PresentationIntent.Kind.CodingNames.init(rawValue:)(v16);
    v6 = 6;
    v7 = v5;
    switch(v5)
    {
      case 1:
        __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
        v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v7 = 0;
        v6 = 0;
        goto LABEL_23;
      case 2:
        v7 = 0;
        v5 = 1;
        goto LABEL_23;
      case 3:
        v7 = 0;
        v5 = 2;
        goto LABEL_23;
      case 4:
        __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
        v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v7 = 0;
        v6 = 1;
        goto LABEL_23;
      case 5:
        __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
        v5 = dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent(_:)();
        v7 = v11;
        v6 = 2;
        goto LABEL_23;
      case 6:
        v7 = 0;
        v5 = 3;
        goto LABEL_23;
      case 7:
        v7 = 0;
        v5 = 4;
        goto LABEL_23;
      case 8:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation18PresentationIntentV11TableColumnVGMd);
        __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
        lazy protocol witness table accessor for type [PresentationIntent.TableColumn] and conformance <A> [A](&lazy protocol witness table cache variable for type [PresentationIntent.TableColumn] and conformance <A> [A], lazy protocol witness table accessor for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn);
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        v7 = 0;
        v5 = v15;
        v6 = 3;
        goto LABEL_23;
      case 9:
        v7 = 0;
        v5 = 5;
        goto LABEL_23;
      case 10:
        __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
        v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v7 = 0;
        v6 = 4;
        goto LABEL_23;
      case 11:
        __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
        v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
        v7 = 0;
        v6 = 5;
        goto LABEL_23;
      case 12:
        v8 = type metadata accessor for DecodingError();
        swift_allocError();
        v10 = v9;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Decoder.codingPath.getter();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B00], v8);
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v13);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      default:
LABEL_23:
        __swift_destroy_boxed_opaque_existential_1(v13);
        *a2 = v5;
        *(a2 + 8) = v7;
        *(a2 + 16) = v6;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PresentationIntent.Kind.encode(to:)(void *a1)
{
  v3 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  if (v3 > 2)
  {
    if (v3 > 4)
    {
      if (v3 != 5)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        return __swift_destroy_boxed_opaque_existential_1(v5);
      }
    }

    else if (v3 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (!v2)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation18PresentationIntentV11TableColumnVGMd);
        lazy protocol witness table accessor for type [PresentationIntent.TableColumn] and conformance <A> [A](&lazy protocol witness table cache variable for type [PresentationIntent.TableColumn] and conformance <A> [A], lazy protocol witness table accessor for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn);
LABEL_12:
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        return __swift_destroy_boxed_opaque_existential_1(v5);
      }

      return __swift_destroy_boxed_opaque_existential_1(v5);
    }

LABEL_13:
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (!v2)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    }

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (v3 <= 1)
  {
    goto LABEL_13;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    goto LABEL_12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void PresentationIntent.Kind.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 > 2)
  {
    if (*(v0 + 16) > 4u)
    {
      if (v3 != 5)
      {
        if (v1 > 2)
        {
          if (v1 ^ 3 | v2)
          {
            if (v1 ^ 4 | v2)
            {
              v8 = 9;
            }

            else
            {
              v8 = 7;
            }
          }

          else
          {
            v8 = 6;
          }
        }

        else if (v1 | v2)
        {
          if (v1 ^ 1 | v2)
          {
            v8 = 3;
          }

          else
          {
            v8 = 2;
          }
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_20;
      }

      v7 = 11;
    }

    else
    {
      if (v3 == 3)
      {
        MEMORY[0x1865CD060](8);
        MEMORY[0x1865CD060](*(v1 + 16));
        v4 = *(v1 + 16);
        if (v4)
        {
          v5 = (v1 + 32);
          do
          {
            v6 = *v5++;
            MEMORY[0x1865CD060](v6);
            --v4;
          }

          while (v4);
        }

        return;
      }

      v7 = 10;
    }

LABEL_19:
    MEMORY[0x1865CD060](v7);
    v8 = v1;
LABEL_20:
    MEMORY[0x1865CD060](v8);
    return;
  }

  if (!*(v0 + 16))
  {
    v7 = 1;
    goto LABEL_19;
  }

  if (v3 == 1)
  {
    v7 = 4;
    goto LABEL_19;
  }

  MEMORY[0x1865CD060](5);
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int PresentationIntent.Kind.hashValue.getter()
{
  Hasher.init(_seed:)();
  PresentationIntent.Kind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationIntent.Kind()
{
  Hasher.init(_seed:)();
  PresentationIntent.Kind.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationIntent.Kind()
{
  Hasher.init(_seed:)();
  PresentationIntent.Kind.hash(into:)();
  return Hasher._finalize()();
}

Foundation::PresentationIntent::TableColumn::Alignment_optional __swiftcall PresentationIntent.TableColumn.Alignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PresentationIntent.TableColumn.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PresentationIntent.TableColumn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PresentationIntent.TableColumn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentationIntent.TableColumn.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation18PresentationIntentV11TableColumnV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int PresentationIntent.TableColumn.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t PresentationIntent.TableColumn.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation18PresentationIntentV11TableColumnV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PresentationIntent.IntentType.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of PresentationIntent.Kind(v2, v3, v4);
}

uint64_t PresentationIntent.IntentType.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of PresentationIntent.Kind(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t PresentationIntent.IntentType.debugDescription.getter()
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x2064692820, 0xE500000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PresentationIntent.IntentType.CodingKeys()
{
  if (*v0)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PresentationIntent.IntentType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PresentationIntent.IntentType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PresentationIntent.IntentType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentationIntent.IntentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation18PresentationIntentV0F4TypeV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v11[0] = *(v1 + 24);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of PresentationIntent.Kind(v6, v7, v8);
  lazy protocol witness table accessor for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = 0;
  lazy protocol witness table accessor for type PresentationIntent.Kind and conformance PresentationIntent.Kind();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of PresentationIntent.Kind(v13, v14, v15);
  if (!v9)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v12 + 8))(v5, v3);
}

uint64_t PresentationIntent.IntentType.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v3 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v3 != 1)
      {
        MEMORY[0x1865CD060](5);
        if (v2)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        return MEMORY[0x1865CD060](v4);
      }

      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_17;
  }

  if (*(v0 + 16) > 4u)
  {
    if (v3 != 5)
    {
      if (v1 > 2)
      {
        if (v1 ^ 3 | v2)
        {
          if (v1 ^ 4 | v2)
          {
            v9 = 9;
          }

          else
          {
            v9 = 7;
          }
        }

        else
        {
          v9 = 6;
        }
      }

      else if (v1 | v2)
      {
        if (v1 ^ 1 | v2)
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_18;
    }

    v8 = 11;
LABEL_17:
    MEMORY[0x1865CD060](v8);
    v9 = v1;
LABEL_18:
    MEMORY[0x1865CD060](v9);
    return MEMORY[0x1865CD060](v4);
  }

  if (v3 != 3)
  {
    v8 = 10;
    goto LABEL_17;
  }

  MEMORY[0x1865CD060](8);
  MEMORY[0x1865CD060](*(v1 + 16));
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = (v1 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1865CD060](v7);
      --v5;
    }

    while (v5);
  }

  return MEMORY[0x1865CD060](v4);
}

Swift::Int PresentationIntent.IntentType.hashValue.getter()
{
  Hasher.init(_seed:)();
  PresentationIntent.IntentType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PresentationIntent.IntentType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation18PresentationIntentV0F4TypeV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  lazy protocol witness table accessor for type PresentationIntent.Kind and conformance PresentationIntent.Kind();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v15;
  v10 = v16;
  v18 = v17;
  LOBYTE(v15) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  v12 = v18;
  *(a2 + 16) = v18;
  *(a2 + 24) = v11;
  outlined copy of PresentationIntent.Kind(v9, v10, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined consume of PresentationIntent.Kind(v9, v10, v12);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationIntent.IntentType()
{
  Hasher.init(_seed:)();
  PresentationIntent.IntentType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationIntent.IntentType()
{
  Hasher.init(_seed:)();
  PresentationIntent.IntentType.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PresentationIntent.init(_:identity:parent:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation18PresentationIntentV0F4TypeVGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_181218E20;
  *(result + 32) = v6;
  *(result + 40) = v7;
  *(result + 48) = v8;
  *(result + 56) = a2;
  if (v9)
  {
    v11 = result;
    specialized Array.append<A>(contentsOf:)(v9);
    result = v11;
  }

  *a4 = result;
  return result;
}

Foundation::PresentationIntent __swiftcall PresentationIntent.init(types:)(Swift::OpaquePointer types)
{
  v3 = v1;

  v3->_rawValue = types._rawValue;
  return result;
}

BOOL PresentationIntent.isValid.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v1 == v2;
    if (v1 == v2)
    {
      break;
    }

    v4 = v2 + 1;
    v5 = PresentationIntent.isValid(at:)(v2);
    v2 = v4;
  }

  while (v5);
  return v3;
}

Swift::Bool __swiftcall PresentationIntent.isValid(at:)(Swift::Int at)
{
  if (at < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 <= at)
  {
LABEL_46:
    __break(1u);
    return at;
  }

  v4 = v2 + 32;
  v5 = v2 + 32 + 32 * at;
  v6 = *(v5 + 16);
  if (v6 <= 2)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_29;
    }

    if (v6 == 1)
    {
      if (at + 1 < v3)
      {
        v11 = v4 + 32 * (at + 1);
        if (*(v11 + 16) == 6)
        {
          v10 = __PAIR128__((*v11 != 0) + *(v11 + 8) - 1, *v11 - 1) < 2;
          goto LABEL_43;
        }
      }

      goto LABEL_42;
    }

    goto LABEL_37;
  }

  v7 = *v5;
  if (*(v5 + 16) > 4u)
  {
    if (v6 == 5)
    {
      if (at + 1 >= v3)
      {
        goto LABEL_42;
      }

      v12 = (v4 + 32 * (at + 1));
      v13 = *(v12 + 16);
      if (v13 != 4)
      {
        if (v13 != 6)
        {
          goto LABEL_42;
        }

        v14 = *v12;
        if (*(v4 + 32 * (at + 1) + 8) || v14 != 5)
        {
          goto LABEL_42;
        }
      }

      if (at + 2 >= v3 || *(v4 + 32 * (at + 2) + 16) != 3)
      {
        goto LABEL_42;
      }

LABEL_29:
      v10 = 1;
      goto LABEL_43;
    }

    v16 = *(v5 + 8);
    v10 = 1;
    if (v7 <= 2)
    {
      if (!(v7 | v16))
      {
        goto LABEL_43;
      }

      if (at - 1 < v3)
      {
        v17 = v2 + 32 * at;
        if (*(v17 + 16) == 1)
        {
          outlined copy of PresentationIntent.Kind(*v17, *(v17 + 8), 1);
          goto LABEL_43;
        }
      }

      goto LABEL_42;
    }

    if (!(v7 ^ 3 | v16))
    {
      goto LABEL_43;
    }

    if (v7 ^ 4 | v16)
    {
LABEL_38:
      if (at - 1 < v3)
      {
        v18 = v2 + 32 * at;
        if (*(v18 + 16) == 5)
        {
          v19 = *(v18 + 8);
          if (at + 1 >= v3)
          {
            outlined copy of PresentationIntent.Kind(*v18, v19, 5);
            v10 = 0;
          }

          else
          {
            v10 = *(v4 + 32 * (at + 1) + 16) == 3;
            outlined copy of PresentationIntent.Kind(*v18, v19, 5);
          }

          goto LABEL_43;
        }
      }

      goto LABEL_42;
    }

LABEL_37:
    v10 = at == 0;
    goto LABEL_43;
  }

  if (v6 != 3)
  {
    goto LABEL_38;
  }

  if (at <= 1 || *(v5 - 48) != 5)
  {
    goto LABEL_42;
  }

  v8 = v2 + 32 * at;
  v9 = *(v8 + 16);
  if (v9 != 4)
  {
    if (v9 == 6)
    {
      v10 = 0;
      if (*(v8 + 8) || *v8 != 5)
      {
        goto LABEL_43;
      }

      goto LABEL_12;
    }

LABEL_42:
    v10 = 0;
    goto LABEL_43;
  }

LABEL_12:
  v10 = *(v5 - 64) < *(v7 + 16);
LABEL_43:
  LOBYTE(at) = v10;
  return at;
}

uint64_t PresentationIntent.indentationLevel.getter()
{
  result = 0;
  v2 = (*v0 + 48);
  v3 = *(*v0 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    if (v4 != 1)
    {
      v4 = v4 == 6 && (*(v2 - 2) == 3 ? (v6 = *(v2 - 1) == 0) : (v6 = 0), v6);
    }

    v2 += 32;
    v5 = __OFADD__(result, v4);
    result += v4;
    if (v5)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PresentationIntent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PresentationIntent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentationIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation18PresentationIntentV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation18PresentationIntentV0C4TypeVGMd);
  lazy protocol witness table accessor for type [PresentationIntent.IntentType] and conformance <A> [A](&lazy protocol witness table cache variable for type [PresentationIntent.IntentType] and conformance <A> [A], lazy protocol witness table accessor for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

Swift::Int PresentationIntent.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t PresentationIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation18PresentationIntentV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation18PresentationIntentV0C4TypeVGMd);
    lazy protocol witness table accessor for type [PresentationIntent.IntentType] and conformance <A> [A](&lazy protocol witness table cache variable for type [PresentationIntent.IntentType] and conformance <A> [A], lazy protocol witness table accessor for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationIntent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationIntent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

id PresentationIntent.convertToNSPresentationIntent(identity:kind:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = a3[1];
  v10 = *(*a3 + 16);
  if (v9 == v10)
  {
    v3 = 0;
    if (*(a2 + 16) > 2u)
    {
LABEL_3:
      if (v8 > 4)
      {
        if (v8 == 5)
        {
          v23 = [objc_opt_self() tableCellIntentWithIdentity:a1 column:v6 nestedInsideIntent:v3];
        }

        else if (v6 > 2)
        {
          if (v6 ^ 3 | v7)
          {
            if (v6 ^ 4 | v7)
            {
              v23 = [objc_opt_self() tableHeaderRowIntentWithIdentity:a1 nestedInsideIntent:v3];
            }

            else
            {
              v23 = [objc_opt_self() thematicBreakIntentWithIdentity:a1 nestedInsideIntent:v3];
            }
          }

          else
          {
            v23 = [objc_opt_self() blockQuoteIntentWithIdentity:a1 nestedInsideIntent:v3];
          }
        }

        else if (v6 | v7)
        {
          if (v6 ^ 1 | v7)
          {
            v23 = [objc_opt_self() unorderedListIntentWithIdentity:a1 nestedInsideIntent:v3];
          }

          else
          {
            v23 = [objc_opt_self() orderedListIntentWithIdentity:a1 nestedInsideIntent:v3];
          }
        }

        else
        {
          v23 = [objc_opt_self() paragraphIntentWithIdentity:a1 nestedInsideIntent:v3];
        }
      }

      else
      {
        if (v8 == 3)
        {
          v7 = *(v6 + 16);
          v4 = MEMORY[0x1E69E7CC0];
          if (v7)
          {
            v26[0] = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray.reserveCapacity(_:)();
            v11 = (v6 + 32);
            v12 = v7;
            do
            {
              v13 = *v11++;
              [objc_allocWithZone(NSNumber) initWithInteger_];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              --v12;
            }

            while (v12);
            v4 = v26[0];
          }

          if (!(v4 >> 62))
          {
            type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
            v14 = _ContiguousArrayBuffer._asCocoaArray()();
LABEL_11:
            v15 = [objc_opt_self() tableIntentWithIdentity:a1 columnCount:v7 alignments:v14 nestedInsideIntent:v3];

            swift_unknownObjectRelease();
            return v15;
          }

LABEL_39:
          if (v4 < 0)
          {
            v14 = v4;
          }

          else
          {
            v14 = v4 & 0xFFFFFFFFFFFFFF8;
          }

          goto LABEL_11;
        }

        v23 = [objc_opt_self() tableRowIntentWithIdentity:a1 row:v6 nestedInsideIntent:v3];
      }

LABEL_23:
      v15 = v23;

      return v15;
    }
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
      goto LABEL_39;
    }

    v16 = *v4;
    v17 = *a3 + 32 * v9;
    v18 = *(v17 + 56);
    v20 = *(v17 + 32);
    v19 = *(v17 + 40);
    v21 = *(v17 + 48);
    a3[1] = v9 + 1;
    v28 = v16;
    v26[0] = v20;
    v26[1] = v19;
    v27 = v21;
    outlined copy of PresentationIntent.Kind(v20, v19, v21);
    v3 = PresentationIntent.convertToNSPresentationIntent(identity:kind:_:)(v18, v26, a3);
    outlined consume of PresentationIntent.Kind(v20, v19, v21);
    if (v8 > 2)
    {
      goto LABEL_3;
    }
  }

  if (!v8)
  {
    v23 = [objc_opt_self() headerIntentWithIdentity:a1 level:v6 nestedInsideIntent:v3];
    goto LABEL_23;
  }

  if (v8 == 1)
  {
    v23 = [objc_opt_self() listItemIntentWithIdentity:a1 ordinal:v6 nestedInsideIntent:v3];
    goto LABEL_23;
  }

  if (v7)
  {
    v24 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v24 = 0;
  }

  v15 = [objc_opt_self() codeBlockIntentWithIdentity:a1 languageHint:v24 nestedInsideIntent:v3];

  return v15;
}

void __swiftcall PresentationIntent._bridgeToObjectiveC()(NSPresentationIntent *__return_ptr retstr)
{
  v2 = *v1;
  v11[0] = v2;
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);
    v11[1] = 1;
    v10 = v2;
    v8[0] = v3;
    v8[1] = v4;
    v9 = v5;
    outlined copy of PresentationIntent.Kind(v3, v4, v5);
    outlined copy of PresentationIntent.Kind(v3, v4, v5);

    v7 = PresentationIntent.convertToNSPresentationIntent(identity:kind:_:)(v6, v8, v11);
    outlined consume of PresentationIntent.Kind(v3, v4, v5);
    if (v7)
    {

      outlined consume of PresentationIntent.Kind(v3, v4, v5);
      return;
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static PresentationIntent._forceBridgeFromObjectiveC(_:result:)(void *a1, char **a2)
{
  result = specialized static PresentationIntent._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static PresentationIntent._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = 0;
  if (!a1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized static PresentationIntent._conditionallyBridgeFromObjectiveC(_:result:)(a1, &v4);
  if (result)
  {
    if (v4)
    {
      *a2 = v4;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance PresentationIntent(void *a1, char **a2)
{
  result = specialized static PresentationIntent._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static PresentationIntent.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (!*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        goto LABEL_38;
      }

      outlined consume of PresentationIntent.Kind(*a1, v3, 0);
      v14 = v5;
      v15 = v6;
      v16 = 0;
      goto LABEL_29;
    }

    if (v4 == 1)
    {
      if (v7 != 1)
      {
        goto LABEL_38;
      }

      outlined consume of PresentationIntent.Kind(*a1, v3, 1);
      v14 = v5;
      v15 = v6;
      v16 = 1;
      goto LABEL_29;
    }

    if (v7 != 2)
    {
      goto LABEL_37;
    }

    if (v3)
    {
      if (v6)
      {
        if (v2 == v5 && v3 == v6)
        {
          outlined copy of PresentationIntent.Kind(*a1, v3, 2);
          outlined copy of PresentationIntent.Kind(v2, v3, 2);
          outlined consume of PresentationIntent.Kind(v2, v3, 2);
          v11 = v2;
          v12 = v3;
          v13 = 2;
          goto LABEL_66;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of PresentationIntent.Kind(v5, v6, 2);
        outlined copy of PresentationIntent.Kind(v2, v3, 2);
        outlined consume of PresentationIntent.Kind(v2, v3, 2);
        outlined consume of PresentationIntent.Kind(v5, v6, 2);
        return (v21 & 1) != 0;
      }

      outlined copy of PresentationIntent.Kind(*a2, 0, 2);
      outlined copy of PresentationIntent.Kind(v5, 0, 2);
      outlined copy of PresentationIntent.Kind(v2, v3, 2);
      outlined consume of PresentationIntent.Kind(v2, v3, 2);
    }

    else
    {

      outlined copy of PresentationIntent.Kind(v5, v6, 2);
      outlined copy of PresentationIntent.Kind(v2, 0, 2);
      outlined consume of PresentationIntent.Kind(v2, 0, 2);
      outlined consume of PresentationIntent.Kind(v5, v6, 2);
      if (!v6)
      {
        return 1;
      }
    }

    v18 = v5;
    v19 = v6;
    v20 = 2;
    goto LABEL_39;
  }

  if (*(a1 + 16) > 4u)
  {
    if (v4 != 5)
    {
      if (v2 > 2)
      {
        if (v2 ^ 3 | v3)
        {
          if (v2 ^ 4 | v3)
          {
            if (v7 != 6 || v5 != 5 || v6)
            {
              goto LABEL_38;
            }

            outlined consume of PresentationIntent.Kind(*a1, v3, 6);
            v11 = 5;
          }

          else
          {
            if (v7 != 6 || v5 != 4 || v6)
            {
              goto LABEL_38;
            }

            outlined consume of PresentationIntent.Kind(*a1, v3, 6);
            v11 = 4;
          }
        }

        else
        {
          if (v7 != 6 || v5 != 3 || v6)
          {
            goto LABEL_38;
          }

          outlined consume of PresentationIntent.Kind(*a1, v3, 6);
          v11 = 3;
        }
      }

      else if (v2 | v3)
      {
        if (!(v2 ^ 1 | v3))
        {
          if (v7 != 6 || v5 != 1 || v6)
          {
            goto LABEL_38;
          }

          outlined consume of PresentationIntent.Kind(*a1, v3, 6);
          v17 = 1;
          outlined consume of PresentationIntent.Kind(1, 0, 6);
          return v17;
        }

        if (v7 != 6 || v5 != 2 || v6)
        {
          goto LABEL_38;
        }

        outlined consume of PresentationIntent.Kind(*a1, v3, 6);
        v11 = 2;
      }

      else
      {
        if (v7 != 6 || v6 | v5)
        {
          goto LABEL_38;
        }

        outlined consume of PresentationIntent.Kind(*a1, v3, 6);
        v11 = 0;
      }

      v12 = 0;
      v13 = 6;
      goto LABEL_66;
    }

    if (v7 != 5)
    {
      goto LABEL_38;
    }

    outlined consume of PresentationIntent.Kind(*a1, v3, 5);
    v14 = v5;
    v15 = v6;
    v16 = 5;
LABEL_29:
    outlined consume of PresentationIntent.Kind(v14, v15, v16);
    return v2 == v5;
  }

  if (v4 != 3)
  {
    if (v7 == 4)
    {
      outlined consume of PresentationIntent.Kind(*a1, v3, 4);
      v14 = v5;
      v15 = v6;
      v16 = 4;
      goto LABEL_29;
    }

LABEL_38:
    outlined copy of PresentationIntent.Kind(v5, v6, v7);
    outlined consume of PresentationIntent.Kind(v2, v3, v4);
    v18 = v5;
    v19 = v6;
    v20 = v7;
LABEL_39:
    outlined consume of PresentationIntent.Kind(v18, v19, v20);
    return 0;
  }

  result = *a1;
  if (v7 != 3)
  {
LABEL_37:

    goto LABEL_38;
  }

  v9 = *(v2 + 16);
  if (v9 != *(v5 + 16))
  {
LABEL_75:
    outlined copy of PresentationIntent.Kind(*a2, *(a2 + 8), 3);
    outlined copy of PresentationIntent.Kind(v2, v3, 3);
    outlined consume of PresentationIntent.Kind(v2, v3, 3);
    v18 = v5;
    v19 = v6;
    v20 = 3;
    goto LABEL_39;
  }

  if (v9)
  {
    v10 = v2 == v5;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_11:
    outlined copy of PresentationIntent.Kind(*a2, *(a2 + 8), 3);
    outlined copy of PresentationIntent.Kind(v2, v3, 3);
    outlined consume of PresentationIntent.Kind(v2, v3, 3);
    v11 = v5;
    v12 = v6;
    v13 = 3;
LABEL_66:
    outlined consume of PresentationIntent.Kind(v11, v12, v13);
    return 1;
  }

  v22 = (v2 + 32);
  v23 = (v5 + 32);
  while (v9)
  {
    if (*v22 != *v23)
    {
      goto LABEL_75;
    }

    ++v22;
    ++v23;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static PresentationIntent.IntentType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v13 = *a1;
  v14 = v2;
  v15 = v7;
  v10 = v4;
  v11 = v5;
  v12 = v8;
  outlined copy of PresentationIntent.Kind(v13, v2, v7);
  outlined copy of PresentationIntent.Kind(v4, v5, v8);
  LOBYTE(v4) = specialized static PresentationIntent.Kind.== infix(_:_:)(&v13, &v10);
  outlined consume of PresentationIntent.Kind(v10, v11, v12);
  outlined consume of PresentationIntent.Kind(v13, v14, v15);
  return v4 & (v3 == v6);
}

unint64_t specialized PresentationIntent.Kind.CodingNames.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PresentationIntent.Kind.CodingNames.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn()
{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn and conformance PresentationIntent.TableColumn);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PresentationIntent.TableColumn] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation18PresentationIntentV11TableColumnVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.CodingKeys and conformance PresentationIntent.TableColumn.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment()
{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment;
  if (!lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.TableColumn.Alignment and conformance PresentationIntent.TableColumn.Alignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.IntentType.CodingKeys and conformance PresentationIntent.IntentType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationIntent.Kind and conformance PresentationIntent.Kind()
{
  result = lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind;
  if (!lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind;
  if (!lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind;
  if (!lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent.Kind and conformance PresentationIntent.Kind);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresentationIntent.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationIntent.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PresentationIntent.Kind(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PresentationIntent.IntentType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 32))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationIntent.IntentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t Notification.userInfo.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

id Notification.hash(into:)(__int128 *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  isTaggedPointer = _objc_isTaggedPointer(*v1);
  v5 = v3;
  v6 = v5;
  if (!isTaggedPointer)
  {
LABEL_6:
    LOBYTE(v37) = 0;
    *&v41 = 0;
    LOBYTE(v32) = 0;
    LOBYTE(v29) = 0;
    if (!__CFStringIsCF())
    {
      v8 = v6;
      String.init(_nativeStorage:)();
      if (!v9 && (*&v41 = [v8 length], v41))
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
LABEL_13:
    LOWORD(v32) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v6 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    String.init(utf8String:)(result);
    if (v11)
    {
LABEL_7:

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_19:
  String.hash(into:)();

  v13 = v1[5];
  if (v13)
  {
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v19 = 0;
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_23:
    v20 = v19;
LABEL_31:
    v23 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v24 = v23 | (v20 << 6);
    outlined init with copy of AnyHashable(*(v13 + 48) + 40 * v24, &v29);
    outlined init with copy of Any(*(v13 + 56) + 32 * v24, v28);
    v32 = v29;
    v33 = v30;
    *&v34 = v31;
    outlined init with take of Any(v28, (&v34 + 8));
    v22 = v20;
    while (1)
    {
      v39[0] = v34;
      v39[1] = v35;
      v40 = v36;
      v37 = v32;
      v38 = v33;
      if (!*(&v33 + 1))
      {
        break;
      }

      v29 = v37;
      v30 = v38;
      v31 = *&v39[0];
      v25 = a1[2];
      v35 = a1[3];
      v36 = *(a1 + 8);
      v26 = *a1;
      v33 = a1[1];
      v34 = v25;
      v32 = v26;
      AnyHashable.hash(into:)();
      v43 = v34;
      v44 = v35;
      v45 = v36;
      v41 = v32;
      v42 = v33;
      v27 = Hasher.finalize()();
      outlined destroy of AnyHashable(&v29);
      v18 ^= v27;
      __swift_destroy_boxed_opaque_existential_1(v39 + 8);
      v19 = v22;
      if (v16)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v17 <= v19 + 1)
      {
        v21 = v19 + 1;
      }

      else
      {
        v21 = v17;
      }

      v22 = v21 - 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
        }

        if (v20 >= v17)
        {
          break;
        }

        v16 = *(v13 + 64 + 8 * v20);
        ++v19;
        if (v16)
        {
          goto LABEL_31;
        }
      }

      v16 = 0;
      v36 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
    }
  }

  else
  {
    v18 = 0;
  }

  return MEMORY[0x1865CD060](v18);
}

id Notification.hashValue.getter()
{
  v47 = *MEMORY[0x1E69E9840];
  Hasher.init(_seed:)();
  v1 = *v0;
  isTaggedPointer = _objc_isTaggedPointer(*v0);
  v3 = v1;
  v4 = v3;
  if (!isTaggedPointer)
  {
LABEL_6:
    LOBYTE(v38) = 0;
    *&v42 = 0;
    LOBYTE(v33) = 0;
    LOBYTE(v30) = 0;
    if (!__CFStringIsCF())
    {
      v6 = v4;
      String.init(_nativeStorage:)();
      if (!v7 && (*&v42 = [v6 length], v42))
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v3);
  if (!TaggedPointerTag)
  {
LABEL_13:
    LOWORD(v33) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v10)
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v4 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    String.init(utf8String:)(result);
    if (v9)
    {
LABEL_7:

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_19:
  String.hash(into:)();

  v11 = v0[5];
  if (v11)
  {
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v17 = 0;
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    v18 = v17;
LABEL_31:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v22 = v21 | (v18 << 6);
    outlined init with copy of AnyHashable(*(v11 + 48) + 40 * v22, &v30);
    outlined init with copy of Any(*(v11 + 56) + 32 * v22, v29);
    v33 = v30;
    v34 = v31;
    *&v35 = v32;
    outlined init with take of Any(v29, (&v35 + 8));
    v20 = v18;
    while (1)
    {
      v40[0] = v35;
      v40[1] = v36;
      v41 = v37;
      v38 = v33;
      v39 = v34;
      if (!*(&v34 + 1))
      {
        break;
      }

      v30 = v38;
      v31 = v39;
      v32 = *&v40[0];
      v35 = v26;
      v36 = v27;
      v37 = v28;
      v33 = v24;
      v34 = v25;
      AnyHashable.hash(into:)();
      v44 = v35;
      v45 = v36;
      v46 = v37;
      v42 = v33;
      v43 = v34;
      v23 = Hasher.finalize()();
      outlined destroy of AnyHashable(&v30);
      v16 ^= v23;
      __swift_destroy_boxed_opaque_existential_1(v40 + 8);
      v17 = v20;
      if (v14)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v15 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      else
      {
        v19 = v15;
      }

      v20 = v19 - 1;
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
        }

        if (v18 >= v15)
        {
          break;
        }

        v14 = *(v11 + 64 + 8 * v18);
        ++v17;
        if (v14)
        {
          goto LABEL_31;
        }
      }

      v14 = 0;
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1865CD060](v16);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Notification()
{
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)(*v0);
  String.hash(into:)();

  v1 = *(v0 + 40);
  if (!v1)
  {
    v7 = 0;
LABEL_20:
    MEMORY[0x1865CD060](v7);
    return Hasher._finalize()();
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_13:
      v12 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v13 = v12 | (v9 << 6);
      outlined init with copy of AnyHashable(*(v1 + 48) + 40 * v13, &v16);
      outlined init with copy of Any(*(v1 + 56) + 32 * v13, v15);
      v19 = v16;
      v20 = v17;
      *&v21 = v18;
      outlined init with take of Any(v15, (&v21 + 8));
      v11 = v9;
LABEL_14:
      v26[0] = v21;
      v26[1] = v22;
      v27 = v23;
      v24 = v19;
      v25 = v20;
      if (!*(&v20 + 1))
      {
        break;
      }

      v16 = v24;
      v17 = v25;
      v18 = *&v26[0];
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v19 = v28;
      v20 = v29;
      AnyHashable.hash(into:)();
      v35 = v21;
      v36 = v22;
      v37 = v23;
      v33 = v19;
      v34 = v20;
      v14 = Hasher.finalize()();
      outlined destroy of AnyHashable(&v16);
      v7 ^= v14;
      result = __swift_destroy_boxed_opaque_existential_1(v26 + 8);
      v8 = v11;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_20;
  }

LABEL_6:
  if (v5 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v5)
    {
      v4 = 0;
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      goto LABEL_14;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id Notification.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - v7;
  v9 = *v1;
  isTaggedPointer = _objc_isTaggedPointer(*v1);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    goto LABEL_17;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v53 - 2) = v12;
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v16 = v15;

      goto LABEL_36;
    }

LABEL_6:
    LOBYTE(v59) = 0;
    *&v56 = 0;
    LOBYTE(v54) = 0;
    v55 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v14 = v56;
      if (!v56)
      {

        v16 = 0xE000000000000000;
        goto LABEL_36;
      }

      if (v55 == 1)
      {
        if (v59)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v25 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_35;
      }

      if (v54)
      {
        if (v59 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v53 - 4) = v12;
          *(&v53 - 3) = &v56;
          *(&v53 - 4) = 1536;
          *(&v53 - 1) = v14;
        }

        else
        {
          v27 = [v12 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v27);
          *(&v53 - 4) = v12;
          *(&v53 - 3) = &v56;
          *(&v53 - 4) = 134217984;
          *(&v53 - 1) = v28;
        }

        v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v16 = v30;
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v14 = v29;
          goto LABEL_19;
        }
      }
    }

    else
    {
      v18 = v12;
      v19 = String.init(_nativeStorage:)();
      if (v20)
      {
        v14 = v19;
        v16 = v20;

        goto LABEL_36;
      }

      *&v56 = [v18 length];
      if (!v56)
      {

        v14 = 0;
        v16 = 0xE000000000000000;
        goto LABEL_36;
      }
    }

    v25 = String.init(_cocoaString:)();
LABEL_35:
    v14 = v25;
    v16 = v26;
LABEL_36:
    v60 = MEMORY[0x1E69E6158];
    *&v59 = v14;
    *(&v59 + 1) = v16;
    v56 = xmmword_1812DB9E0;
    outlined init with take of Any(&v59, &v57);
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v34 = v32[2];
    v33 = v32[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v35;
    v36 = &v32[6 * v34];
    v37 = v56;
    v38 = v58;
    v36[3] = v57;
    v36[4] = v38;
    v36[2] = v37;
    outlined init with copy of Any?((v1 + 1), &v56);
    if (*(&v57 + 1))
    {
      outlined init with take of Any(&v56, &v59);
      v56 = xmmword_1812E5A90;
      outlined init with copy of Any(&v59, &v57);
      v39 = v32[3];
      v40 = v34 + 2;
      if (v40 > (v39 >> 1))
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40, 1, v32);
      }

      __swift_destroy_boxed_opaque_existential_1(&v59);
      v32[2] = v40;
      v41 = &v32[6 * v35];
      v42 = v56;
      v43 = v58;
      v41[3] = v57;
      v41[4] = v43;
      v41[2] = v42;
      v44 = v1[5];
      if (!v44)
      {
        goto LABEL_46;
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(&v56, &_sypSgMd);
      v44 = v1[5];
      if (!v44)
      {
LABEL_46:
        outlined init with copy of Notification(v1, &v56);
        *&v59 = v32;
        v50 = *MEMORY[0x1E69E75B0];
        v51 = type metadata accessor for Mirror.DisplayStyle();
        v52 = *(v51 - 8);
        (*(v52 + 104))(v8, v50, v51);
        (*(v52 + 56))(v8, 0, 1, v51);
        (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
        lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
        return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
      }
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
    *&v59 = v44;
    v56 = xmmword_1812E5AA0;
    outlined init with take of Any(&v59, &v57);
    v46 = v32[2];
    v45 = v32[3];

    if (v46 >= v45 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v32);
    }

    v32[2] = v46 + 1;
    v47 = &v32[6 * v46];
    v48 = v56;
    v49 = v58;
    v47[3] = v57;
    v47[4] = v49;
    v47[2] = v48;
    goto LABEL_46;
  }

  v21 = v12;
  result = [v21 UTF8String];
  if (result)
  {
    v23 = String.init(utf8String:)(result);
    if (v24)
    {
LABEL_18:
      v14 = v23;
      v16 = v24;
LABEL_19:

      goto LABEL_36;
    }

    __break(1u);
LABEL_17:
    v54 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v24)
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v16 = *(&v59 + 1);
      v14 = v59;
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t static Notification._forceBridgeFromObjectiveC(_:result:)(void *a1, _OWORD *a2)
{
  result = specialized static Notification._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance Notification(void *a1, _OWORD *a2)
{
  result = specialized static Notification._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t NSNotification._toCustomAnyHashable()()
{
  v1 = v0;
  v2 = [v1 name];
  if ([v1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v3 = [v1 userInfo];
  if (!v3)
  {

    v6 = 0;
    goto LABEL_8;
  }

  v4 = v3;
  v9 = 0;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v3, &v9);
  v6 = v9;
  if (v9)
  {

LABEL_8:
    memset(v10, 0, sizeof(v10));
    v9 = v2;
    outlined assign with take of Any?(&v7, v10);
    v11 = v6;
    lazy protocol witness table accessor for type Notification and conformance Notification();
    return AnyHashable.init<A>(_:)();
  }

  __break(1u);
  return result;
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotification()
{
  v1 = *v0;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)(v1, &v2);
  lazy protocol witness table accessor for type Notification and conformance Notification();
  AnyHashable.init<A>(_:)();
}

id specialized static Notification.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v5 = a1;
  v90 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  isTaggedPointer = _objc_isTaggedPointer(*a1);
  v8 = v6;
  v9 = v8;
  if (!isTaggedPointer)
  {
LABEL_6:
    LOBYTE(v86) = 0;
    *&v88 = 0;
    *v84 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v14 = v9;
      v15 = String.init(_nativeStorage:)();
      if (v16)
      {
        v11 = v15;
        v13 = v16;

        goto LABEL_20;
      }

      *&v88 = [v14 length];
      if (v88)
      {
        v11 = String.init(_cocoaString:)();
        v13 = v20;
        goto LABEL_20;
      }
    }

    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_20;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v9 UTF8String];
    if (!result)
    {
      __break(1u);
      goto LABEL_97;
    }

    v18 = String.init(utf8String:)(result);
    if (v19)
    {
LABEL_15:
      v11 = v18;
      v13 = v19;

      goto LABEL_20;
    }

    __break(1u);
LABEL_14:
    *&v84[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v19)
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v13 = *(&v86 + 1);
      v11 = v86;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_6;
  }

  v2 = v81;
  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v13 = v12;

LABEL_20:
  v21 = *a2;
  v22 = _objc_isTaggedPointer(*a2);
  v23 = v21;
  v24 = v23;
  if (!v22)
  {
    goto LABEL_25;
  }

  v25 = _objc_getTaggedPointerTag(v23);
  if (!v25)
  {
    goto LABEL_36;
  }

  if (v25 != 22)
  {
    if (v25 == 2)
    {
      v2 = v81;
      MEMORY[0x1EEE9AC00](v25);
      v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v28 = v27;

LABEL_54:
      if (v11 == v26 && v13 == v28)
      {
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      outlined init with copy of Any?(v5 + 8, &v86);
      if (v87)
      {
        outlined init with take of Any(&v86, &v88);
        outlined init with copy of Any?((a2 + 1), &v84[1]);
        if (!v85)
        {
          outlined destroy of TermOfAddress?(&v84[1], &_sypSgMd);
          goto LABEL_70;
        }

        outlined init with take of Any(&v84[1], &v86);
        v40 = v89;
        v41 = __swift_project_boxed_opaque_existential_1(&v88, v89);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        if (isClassOrObjCExistentialType)
        {
          if (*(*(v40 - 1) + 64) != 8)
          {
            __break(1u);
            goto LABEL_91;
          }

          v40 = *v41;
          swift_unknownObjectRetain();
        }

        else
        {
          v2 = v81;
          v48 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
          (*(v50 + 16))(v81 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v40, v48);
          v40 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        }

        v43 = v87;
        v44 = __swift_project_boxed_opaque_existential_1(&v86, v87);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v51 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
          (*(v53 + 16))(v81 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v43, v51);
          v54 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v40 != v54)
          {
            goto LABEL_66;
          }

LABEL_73:
          __swift_destroy_boxed_opaque_existential_1(&v86);
          __swift_destroy_boxed_opaque_existential_1(&v88);
          goto LABEL_74;
        }

        if (*(*(v43 - 8) + 64) == 8)
        {
          v45 = *v44;
          swift_unknownObjectRelease();
          if (v40 != v45)
          {
LABEL_66:
            __swift_destroy_boxed_opaque_existential_1(&v86);
LABEL_70:
            __swift_destroy_boxed_opaque_existential_1(&v88);
            v47 = 0;
            return (v47 & 1);
          }

          goto LABEL_73;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      outlined destroy of TermOfAddress?(&v86, &_sypSgMd);
      outlined init with copy of Any?((a2 + 1), &v88);
      v46 = v89;
      outlined destroy of TermOfAddress?(&v88, &_sypSgMd);
      if (!v46)
      {
LABEL_74:
        v55 = *(v5 + 40);
        v56 = a2[5];
        v47 = (v55 | v56) == 0;
        if (!v55 || !v56)
        {
          return (v47 & 1);
        }

        v83 = a2[5];
        outlined init with copy of Any?(v5 + 8, &v88);
        v5 = v89;
        if (!v89)
        {
          v60 = 0;
          goto LABEL_82;
        }

        v82 = a2;
        v57 = __swift_project_boxed_opaque_existential_1(&v88, v89);
        v81[1] = v81;
        v3 = *(v5 - 8);
        v58 = v3[8];
        v59 = MEMORY[0x1EEE9AC00](v57);
        v2 = ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = (v81 - v2);
        v40 = v3[2];
        v40(v81 - v2, v59);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        if (isClassOrObjCExistentialType)
        {
          if (v58 != 8)
          {
            __break(1u);
            goto LABEL_95;
          }

          v60 = *v26;
          v61 = v3[1];
          swift_unknownObjectRetain();
          v61(v26, v5);
          goto LABEL_80;
        }

LABEL_92:
        v81[0] = v81;
        v79 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        (v40)(v81 - v2, v26, v5, v79);
        v60 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        (v3[1])(v26, v5);
LABEL_80:
        a2 = v82;
        __swift_destroy_boxed_opaque_existential_1(&v88);
LABEL_82:
        v62 = 0x1E69EE000uLL;
        v63 = objc_allocWithZone(NSNotification);

        v64 = &selRef_initWithBundleIdentifier_storeIdentifier_;
        v65 = [v63 initWithName:v9 object:v60 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined init with copy of Any?((a2 + 1), &v88);
        v66 = v89;
        if (!v89)
        {
          v75 = 0;
          goto LABEL_88;
        }

        v67 = __swift_project_boxed_opaque_existential_1(&v88, v89);
        v68 = *(v66 - 8);
        v69 = *(v68 + 64);
        v70 = MEMORY[0x1EEE9AC00](v67);
        v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
        v72 = (v81 - v71);
        v73 = *(v68 + 16);
        v73(v81 - v71, v70);
        v74 = _swift_isClassOrObjCExistentialType();
        if ((v74 & 1) == 0)
        {
          v82 = v81;
          v80 = MEMORY[0x1EEE9AC00](v74);
          (v73)(v81 - v71, v81 - v71, v66, v80);
          v75 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          (*(v68 + 8))(v81 - v71, v66);
          goto LABEL_86;
        }

        if (v69 == 8)
        {
          v75 = *v72;
          v76 = *(v68 + 8);
          swift_unknownObjectRetain();
          v76(v72, v66);
LABEL_86:
          v62 = 0x1E69EE000;
          __swift_destroy_boxed_opaque_existential_1(&v88);
          v64 = &selRef_initWithBundleIdentifier_storeIdentifier_;
LABEL_88:
          type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
          v77 = objc_allocWithZone(*(v62 + 1704));

          v78 = [v77 v64[157]];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v47 = static NSObject.== infix(_:_:)();

          return (v47 & 1);
        }

LABEL_95:
        __break(1u);
      }

LABEL_68:
      v47 = 0;
      return (v47 & 1);
    }

LABEL_25:
    LOBYTE(v86) = 0;
    *&v88 = 0;
    *v84 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v26 = v88;
      if (!v88)
      {

        v28 = 0xE000000000000000;
        goto LABEL_54;
      }

      if (v84[0] == 1)
      {
        if (v86)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v34 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_53;
      }

      if (v84[1])
      {
        if (v86 != 1)
        {
          IsCF = [v24 lengthOfBytesUsingEncoding_];
        }

        v2 = v81;
        MEMORY[0x1EEE9AC00](IsCF);
        v36 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v28 = v37;
        v38 = HIBYTE(v37) & 0xF;
        if ((v37 & 0x2000000000000000) == 0)
        {
          v38 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (v38)
        {
          v26 = v36;

          goto LABEL_54;
        }
      }
    }

    else
    {
      v3 = v24;
      v30 = String.init(_nativeStorage:)();
      if (v31)
      {
        v26 = v30;
        v28 = v31;

        goto LABEL_54;
      }

      *&v88 = [v3 length];
      if (!v88)
      {

        v26 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_54;
      }
    }

    v34 = String.init(_cocoaString:)();
LABEL_53:
    v26 = v34;
    v28 = v35;
    goto LABEL_54;
  }

  result = [v24 UTF8String];
  if (result)
  {
    v32 = String.init(utf8String:)(result);
    if (v33)
    {
LABEL_37:
      v26 = v32;
      v28 = v33;

      goto LABEL_54;
    }

    __break(1u);
LABEL_36:
    *&v84[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v33)
    {
      [v24 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v28 = *(&v86 + 1);
      v26 = v86;
      goto LABEL_54;
    }

    goto LABEL_37;
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t specialized static Notification._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, _OWORD *a2)
{
  outlined destroy of TermOfAddress?(a2, &_s10Foundation12NotificationVSgMd);
  v4 = [a1 name];
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = [a1 userInfo];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  *v12 = 0;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v5, v12);
  v8 = *v12;
  if (*v12)
  {

LABEL_8:
    memset(&v12[8], 0, 32);
    *v12 = v4;
    outlined assign with take of Any?(&v10, &v12[8]);
    *&v12[40] = v8;
    v9 = *&v12[16];
    *a2 = *v12;
    a2[1] = v9;
    a2[2] = *&v12[32];
    return 1;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Notification and conformance Notification()
{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Notification and conformance Notification;
  if (!lazy protocol witness table cache variable for type Notification and conformance Notification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Notification and conformance Notification);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Notification(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Notification and conformance Notification();
  a1[2] = lazy protocol witness table accessor for type Notification and conformance Notification();
  a1[3] = lazy protocol witness table accessor for type Notification and conformance Notification();
  result = lazy protocol witness table accessor for type Notification and conformance Notification();
  a1[4] = result;
  return result;
}

void Data._Representation.withInteriorPointerReference<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v5)
    {
      v11 = a3;
      v12 = a4;
      v13 = BYTE2(a4);
      v14 = BYTE3(a4);
      v15 = BYTE4(a4);
      v16 = BYTE5(a4);
      v6 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v11 length:BYTE6(a4) freeWhenDone:0];
      a1();

      return;
    }

    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    v9 = a1;
    goto LABEL_8;
  }

  if (v5 == 2)
  {
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    v9 = a1;
LABEL_8:
    __DataStorage.withInteriorPointerReference<A>(_:_:)(v7, v8, v9);
    return;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  a1();
}

void __DataStorage.withInteriorPointerReference<A>(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 == a2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_7:
    v8 = v5;
    a3();

    return;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = *(v3 + 40);
    if (__OFSUB__(a1, v7))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 + a1 - v7 length:a2 - a1 freeWhenDone:0];
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t Data.xpcCodableObject.getter(uint64_t a1, unint64_t a2)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(bytes, 0, 14);
      v4 = 0;
      goto LABEL_25;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v7)
    {
      v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v9 = __OFSUB__(v5, v8);
      v10 = v5 - v8;
      if (v9)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 = (v10 + v7);
      v9 = __OFSUB__(v6, v5);
      v12 = v6 - v5;
      if (!v9)
      {
LABEL_8:
        v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v13 >= v12)
        {
          v13 = v12;
        }

        if (v11)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v11 = 0;
      v9 = __OFSUB__(v6, v5);
      v12 = v6 - v5;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v2)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    v3 = a2 >> 40;
    BYTE4(bytes[1]) = BYTE4(a2);
    v4 = BYTE6(a2);
    BYTE5(bytes[1]) = v3;
LABEL_25:
    xpc_data_create(bytes, v4);
    return XPCCodableObject.init(copying:)();
  }

  if (a1 >> 32 < a1)
  {
    goto LABEL_29;
  }

  v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v15)
  {
    v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v17 = a1 - v16;
    if (!__OFSUB__(a1, v16))
    {
      if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= (a1 >> 32) - a1)
      {
        v14 = (a1 >> 32) - a1;
      }

      else
      {
        v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }

      v11 = (v17 + v15);
      if (v17 + v15)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_31:
    __break(1u);
  }

LABEL_20:
  v11 = 0;
  v14 = 0;
LABEL_21:
  xpc_data_create(v11, v14);

  return XPCCodableObject.init(copying:)();
}

Swift::Int specialized static Data.validXPCObjectTypes.getter()
{
  v0 = XPC_TYPE_DATA.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys13OpaquePointerVGMd);
  v1 = static _SetStorage.allocate(capacity:)();
  v2 = v1 + 56;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v0);
  result = Hasher._finalize()();
  v4 = -1 << *(v1 + 32);
  v5 = result & ~v4;
  v6 = v5 >> 6;
  v7 = *(v1 + 56 + 8 * (v5 >> 6));
  v8 = 1 << v5;
  v9 = *(v1 + 48);
  if (((1 << v5) & v7) != 0)
  {
    v10 = ~v4;
    while (*(v9 + 8 * v5) != v0)
    {
      v5 = (v5 + 1) & v10;
      v6 = v5 >> 6;
      v7 = *(v2 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if (((1 << v5) & v7) == 0)
      {
        goto LABEL_5;
      }
    }

    return v1;
  }

LABEL_5:
  *(v2 + 8 * v6) = v8 | v7;
  *(v9 + 8 * v5) = v0;
  v11 = *(v1 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    *(v1 + 16) = v13;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSo16NSURLResourceKeya_ypTt0g5(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(a1, &v2);
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

void specialized _BridgedStoredNSError.init(_bridgedNSError:)(void *a1@<X0>, unint64_t *a2@<X4>, void *a3@<X8>)
{
  v4 = a1;
  v5 = [a1 domain];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = v5;
  isTaggedPointer = _objc_isTaggedPointer(v5);
  v8 = v6;
  v9 = v8;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v68) = 0;
    if (__CFStringIsCF())
    {
      v11 = 0;

LABEL_21:
      v13 = 0xE000000000000000;
      goto LABEL_22;
    }

    v14 = v9;
    v15 = String.init(_nativeStorage:)();
    if (v16)
    {
      v11 = v15;
      v13 = v16;

      goto LABEL_22;
    }

    if ([v14 length])
    {
      v11 = String.init(_cocoaString:)();
      v13 = v20;
      goto LABEL_65;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v13 = v12;

      goto LABEL_22;
    }

    goto LABEL_7;
  }

  v17 = [v9 UTF8String];
  if (!v17)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v18 = String.init(utf8String:)(v17);
  if (!v19)
  {
    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v19)
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v68;
      v13 = v69;
      goto LABEL_65;
    }
  }

  v11 = v18;
  v13 = v19;

LABEL_65:
LABEL_22:
  v21 = *a2;
  v22 = _objc_isTaggedPointer(*a2);
  v23 = v21;
  v24 = v23;
  if (!v22)
  {
    goto LABEL_27;
  }

  v25 = _objc_getTaggedPointerTag(v23);
  if (!v25)
  {
    goto LABEL_35;
  }

  if (v25 == 22)
  {
    v32 = [v24 UTF8String];
    if (!v32)
    {
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v33 = String.init(utf8String:)(v32);
    if (v34)
    {
LABEL_36:
      v26 = v33;
      v28 = v34;

      goto LABEL_41;
    }

    __break(1u);
LABEL_35:
    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v34)
    {
      [v24 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v26 = v68;
      v28 = v69;
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  if (v25 != 2)
  {
LABEL_27:
    LOBYTE(v68) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v29 = v24;
      v30 = String.init(_nativeStorage:)();
      if (v31)
      {
        v26 = v30;
        v28 = v31;

        goto LABEL_41;
      }

      if ([v29 length])
      {
        v26 = String.init(_cocoaString:)();
        v28 = v35;
        goto LABEL_41;
      }
    }

    v26 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_41;
  }

  MEMORY[0x1EEE9AC00](v25);
  v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v28 = v27;

LABEL_41:
  if (v11 == v26 && v13 == v28)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {

      v4 = 0;
LABEL_90:
      *a3 = v4;
      return;
    }
  }

  v37 = [v4 domain];
  if (!v37)
  {
    goto LABEL_56;
  }

  v38 = v37;
  v39 = _objc_isTaggedPointer(v37);
  v40 = v38;
  v41 = v40;
  if (!v39)
  {
    goto LABEL_51;
  }

  v42 = _objc_getTaggedPointerTag(v40);
  if (!v42)
  {
    goto LABEL_60;
  }

  if (v42 != 22)
  {
    if (v42 == 2)
    {
      MEMORY[0x1EEE9AC00](v42);
      v43 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v45 = v44;

LABEL_68:
      v53 = v24;
      v54 = v53;
      if (!v22)
      {
        goto LABEL_73;
      }

      v55 = _objc_getTaggedPointerTag(v53);
      if (!v55)
      {
        goto LABEL_80;
      }

      if (v55 != 22)
      {
        if (v55 == 2)
        {
          MEMORY[0x1EEE9AC00](v55);
          v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v58 = v57;

          goto LABEL_86;
        }

LABEL_73:
        if (__CFStringIsCF())
        {
          v56 = 0;

          v58 = 0xE000000000000000;
        }

        else
        {
          v59 = v54;
          v60 = String.init(_nativeStorage:)();
          if (v61)
          {
            v56 = v60;
            v58 = v61;
          }

          else if ([v59 length])
          {
            v56 = String.init(_cocoaString:)();
            v58 = v65;
          }

          else
          {

            v56 = 0;
            v58 = 0xE000000000000000;
          }
        }

LABEL_86:
        if (v43 == v56 && v45 == v58)
        {
        }

        else
        {
          v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v66 & 1) == 0)
          {
            __break(1u);
          }
        }

        goto LABEL_90;
      }

      v62 = [v54 UTF8String];
      if (v62)
      {
        v63 = String.init(utf8String:)(v62);
        if (v64)
        {
LABEL_81:
          v56 = v63;
          v58 = v64;

          goto LABEL_86;
        }

        __break(1u);
LABEL_80:
        _CFIndirectTaggedPointerStringGetContents();
        v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v64)
        {
          [v54 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v56 = v68;
          v58 = v69;
          goto LABEL_86;
        }

        goto LABEL_81;
      }

      goto LABEL_93;
    }

LABEL_51:
    LOBYTE(v68) = 0;
    if (__CFStringIsCF())
    {

LABEL_56:
      v43 = 0;
      v45 = 0xE000000000000000;
      goto LABEL_68;
    }

    v46 = v41;
    v47 = String.init(_nativeStorage:)();
    if (v48)
    {
      v43 = v47;
      v45 = v48;

      goto LABEL_68;
    }

    if (![v46 length])
    {

      goto LABEL_56;
    }

    v43 = String.init(_cocoaString:)();
    v45 = v52;
LABEL_67:

    goto LABEL_68;
  }

  v49 = [v41 UTF8String];
  if (v49)
  {
    v50 = String.init(utf8String:)(v49);
    if (v51)
    {
LABEL_61:
      v43 = v50;
      v45 = v51;

      goto LABEL_67;
    }

    __break(1u);
LABEL_60:
    _CFIndirectTaggedPointerStringGetContents();
    v50 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v51)
    {
      [v41 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v43 = v68;
      v45 = v69;
      goto LABEL_67;
    }

    goto LABEL_61;
  }

LABEL_95:
  __break(1u);
}

uint64_t _BridgedStoredNSError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 64))();
  v3 = [v2 userInfo];

  if (!v3)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  v4 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v4)
  {
    v6 = [v3 count];
    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v8 = static _DictionaryStorage.allocate(capacity:)();
      v9 = *(v8 + 48);
      v10 = *(v8 + 56);
      v11 = v8;

      v12 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v9, v10, v3, v7);
      if (v12 < 0 || v7 < v12)
      {
        goto LABEL_72;
      }

      v5 = v11;
      v11[2] = v12;
      if (!v12)
      {
LABEL_18:

        goto LABEL_19;
      }

      v13 = v12 - 1;
      v14 = v11 + 8;
      while (1)
      {
        while (1)
        {
          if ((*(v14 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13))
          {
            goto LABEL_10;
          }

          v19 = (v5[6] + 16 * v13);
          v20 = *v19;
          v21 = v19[1];

          v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
          v24 = v23;

          if ((v24 & 1) == 0)
          {
            break;
          }

          v25 = v5[6] + 16 * v13;

          outlined destroy of String(v25);
          __swift_destroy_boxed_opaque_existential_1(v5[7] + 32 * v13);
          v26 = v5[2];
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v27)
          {
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v5[2] = v28;

LABEL_10:
          if (--v13 < 0)
          {
            goto LABEL_18;
          }
        }

        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (v13 < v22)
        {
          v5 = v11;
          *(v11[6] + 16 * v22) = *(v11[6] + 16 * v13);
          v15 = v11[7];
          v16 = (v15 + 32 * v13);
          v17 = v16[1];
          v18 = (v15 + 32 * v22);
          *v18 = *v16;
          v18[1] = v17;
          goto LABEL_10;
        }

        v5 = v11;
        if (v22 == v13)
        {
          goto LABEL_10;
        }

        v29 = v11[6];
        v30 = (v29 + 16 * v22);
        v31 = (v29 + 16 * v13);
        v32 = *v30;
        v33 = v30[1];
        v34 = v31[1];
        *v30 = *v31;
        v30[1] = v34;
        *v31 = v32;
        v31[1] = v33;
        v35 = v11[7];
        v36 = (v35 + 32 * v22);
        v37 = (v35 + 32 * v13);
        outlined init with take of Any(v36, &v97);
        outlined init with take of Any(v37, v36);
        outlined init with take of Any(&v97, v37);
        if (v13 < 0)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v5 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  v5 = v4;
LABEL_19:

LABEL_22:
  v38 = 0;
  v92 = v5;
  v39 = v5 + 8;
  v40 = 1 << *(v5 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & v5[8];
  v43 = (v40 + 63) >> 6;
  for (i = MEMORY[0x1E69E7CC8]; ; i = v64)
  {
    if (!v42)
    {
      if (v43 <= v38 + 1)
      {
        v48 = v38 + 1;
      }

      else
      {
        v48 = v43;
      }

      v49 = v48 - 1;
      while (1)
      {
        v47 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v47 >= v43)
        {
          v42 = 0;
          v95 = 0u;
          v96 = 0u;
          v94 = 0u;
          goto LABEL_38;
        }

        v42 = v39[v47];
        ++v38;
        if (v42)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v47 = v38;
LABEL_37:
    v50 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v51 = v50 | (v47 << 6);
    v52 = (v92[6] + 16 * v51);
    v54 = *v52;
    v53 = v52[1];
    outlined init with copy of Any(v92[7] + 32 * v51, v93);
    *&v94 = v54;
    *(&v94 + 1) = v53;
    outlined init with take of Any(v93, &v95);

    v49 = v47;
LABEL_38:
    v97 = v94;
    v98[0] = v95;
    v98[1] = v96;
    v55 = *(&v94 + 1);
    if (!*(&v94 + 1))
    {

      return i;
    }

    v56 = v97;
    outlined init with take of Any(v98, &v94);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v55);
    v60 = *(i + 16);
    v61 = (v59 & 1) == 0;
    v27 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v27)
    {
      goto LABEL_69;
    }

    v63 = v59;
    if (*(i + 24) >= v62)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
    v64 = i;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v55);
    if ((v63 & 1) != (v65 & 1))
    {
      goto LABEL_74;
    }

    if (v63)
    {
LABEL_26:
      v45 = v58;

      v46 = (*(v64 + 56) + 32 * v45);
      __swift_destroy_boxed_opaque_existential_1(v46);
      outlined init with take of Any(&v94, v46);
      goto LABEL_27;
    }

LABEL_46:
    *(v64 + 8 * (v58 >> 6) + 64) |= 1 << v58;
    v66 = (*(v64 + 48) + 16 * v58);
    *v66 = v56;
    v66[1] = v55;
    outlined init with take of Any(&v94, (*(v64 + 56) + 32 * v58));
    v67 = *(v64 + 16);
    v27 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v27)
    {
      goto LABEL_70;
    }

    *(v64 + 16) = v68;
LABEL_27:
    v38 = v49;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v64 = i;
    if (v59)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  v85 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v69 = static _DictionaryStorage.copy(original:)();
  v64 = v69;
  if (!*(i + 16))
  {
LABEL_65:

    v58 = v85;
    if (v63)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  v70 = (v69 + 64);
  v71 = (i + 64);
  v72 = ((1 << *(v64 + 32)) + 63) >> 6;
  if (v64 != i || v70 >= &v71[8 * v72])
  {
    memmove(v70, v71, 8 * v72);
  }

  v73 = 0;
  *(v64 + 16) = *(i + 16);
  v74 = 1 << *(i + 32);
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  else
  {
    v75 = -1;
  }

  v76 = v75 & *(i + 64);
  v77 = (v74 + 63) >> 6;
  v86 = v77;
  if (v76)
  {
    do
    {
      v78 = __clz(__rbit64(v76));
      v87 = (v76 - 1) & v76;
LABEL_63:
      v81 = v78 | (v73 << 6);
      v88 = 16 * v81;
      v82 = (*(i + 48) + 16 * v81);
      v91 = v82[1];
      v89 = *v82;
      v90 = 32 * v81;
      outlined init with copy of Any(*(i + 56) + 32 * v81, v93);
      v83 = (*(v64 + 48) + v88);
      *v83 = v89;
      v83[1] = v91;
      outlined init with take of Any(v93, (*(v64 + 56) + v90));

      v77 = v86;
      v76 = v87;
    }

    while (v87);
  }

  v79 = v73;
  while (1)
  {
    v73 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v73 >= v77)
    {
      goto LABEL_65;
    }

    v80 = *(i + 64 + 8 * v73);
    ++v79;
    if (v80)
    {
      v78 = __clz(__rbit64(v80));
      v87 = (v80 - 1) & v80;
      goto LABEL_63;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void _BridgedStoredNSError.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 64))(a2, a3);
  NSObject.hash(into:)();
}

id static _BridgedStoredNSError.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 64);
  v7 = v6(a3, a4);
  v8 = v6(a3, a4);
  v9 = [v7 isEqual_];

  return v9;
}

id NSError._domain.getter()
{
  result = [v0 domain];
  if (result)
  {
    v2 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v4 = v2;
    v5 = v4;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v8 = v5;
      v9 = String.init(_nativeStorage:)();
      if (v10)
      {
        v11 = v9;

        return v11;
      }

      if (![v8 length])
      {

        return 0;
      }

      v16 = String.init(_cocoaString:)();
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v4);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        [v5 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v16 = v17;
      }

LABEL_22:

      return v16;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v7;
      }

      goto LABEL_7;
    }

    result = [v5 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v12)
      {
        v13 = result;

        return v13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id NSError._userInfo.getter()
{
  result = [v0 userInfo];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id protocol witness for Error._userInfo.getter in conformance NSError()
{
  result = [*v0 userInfo];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t CFErrorRef._userInfo.getter()
{
  v3 = CFErrorCopyUserInfo(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CFDictionaryRefaSgMd);
  v1 = Optional._bridgeToObjectiveC()();

  return v1;
}

uint64_t _BridgedNSError._code.getter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = swift_checkMetadataState();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v20 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v7 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v8 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v7)
    {
      if (v8 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v9 = v19;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v10 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v2 + 8))(v9, v1);
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v12 = v19;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v13 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v2 + 8))(v12, v1);
      if (v13)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v8 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v14 & 1) == 0)
    {
      break;
    }

    if (v15 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v16 = v19;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v2 + 8))(v16, v1);
    if (v17)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v15 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v18 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v2 + 8))(v6, v1);
  return v18;
}

id _BridgedNSError.init(_bridgedNSError:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51[4] = *MEMORY[0x1E69E9840];
  v46 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = type metadata accessor for Optional();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  v13 = [a1 domain];
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  isTaggedPointer = _objc_isTaggedPointer(v13);
  v16 = v14;
  v17 = v16;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v47) = 0;
    v51[0] = 0;
    LOBYTE(v49) = 0;
    v50 = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v43 = a4;
      v24 = v17;
      v25 = String.init(_nativeStorage:)();
      if (v26)
      {
        v19 = v25;
        v21 = v26;

        goto LABEL_37;
      }

      v51[0] = [v24 length];
      if (!v51[0])
      {

        v19 = 0;
        v21 = 0xE000000000000000;
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v23 = v51[0];
    if (v51[0])
    {
      if (v50 == 1)
      {
        if (v47)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v19 = String.init<A>(_immortalCocoaString:count:encoding:)();
        v21 = v30;

LABEL_38:
        if (v19 == (*(a3 + 40))(a2, a3) && v21 == v37)
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
            v39 = *(a2 - 8);
            goto LABEL_46;
          }
        }

        v51[0] = [a1 code];
        swift_getAssociatedConformanceWitness();
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(_:)();
        dispatch thunk of RawRepresentable.init(rawValue:)();
        v39 = *(a2 - 8);
        v40 = v39;
        if (!(*(v39 + 48))(v12, 1, a2))
        {
          (*(v39 + 32))(a4, v12, a2);
          v41 = 0;
          return (*(v40 + 56))(a4, v41, 1, a2);
        }

        (*(v44 + 8))(v12, v45);
LABEL_46:
        v40 = v39;
        v41 = 1;
        return (*(v40 + 56))(a4, v41, 1, a2);
      }

      v43 = a4;
      if (v49)
      {
        if (v47 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v42 - 4) = v17;
          *(&v42 - 3) = v51;
          *(&v42 - 4) = 1536;
          *(&v42 - 1) = v23;
        }

        else
        {
          v31 = [v17 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v31);
          *(&v42 - 4) = v17;
          *(&v42 - 3) = v51;
          *(&v42 - 4) = 134217984;
          *(&v42 - 1) = v32;
        }

        v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v21 = v34;
        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          v19 = v33;

LABEL_36:
          goto LABEL_37;
        }
      }

LABEL_35:
      v19 = String.init(_cocoaString:)();
      v21 = v36;
      goto LABEL_36;
    }

LABEL_15:
    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_38;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v16);
  if (!TaggedPointerTag)
  {
    goto LABEL_19;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      v43 = a4;
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v42 - 2) = v17;
      v19 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v21 = v20;

LABEL_37:
      a4 = v43;
      goto LABEL_38;
    }

    goto LABEL_7;
  }

  result = [v17 UTF8String];
  if (result)
  {
    v28 = String.init(utf8String:)(result);
    if (v29)
    {
LABEL_20:
      v19 = v28;
      v21 = v29;

      goto LABEL_38;
    }

    __break(1u);
LABEL_19:
    v49 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v28 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v29)
    {
      [v17 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v19 = v47;
      v21 = v48;

      goto LABEL_38;
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t static _SwiftNewtypeWrapper<>._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = a1;
  return dispatch thunk of RawRepresentable.init(rawValue:)();
}

BOOL static _SwiftNewtypeWrapper<>._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = *(v7 + 8);
  v11(a2, v6, v8);
  v15[1] = a1;
  v12 = a1;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  (*(v7 + 16))(v10, a2, v6);
  v13 = (*(*(a3 - 8) + 48))(v10, 1, a3) != 1;
  (v11)(v10, v6);
  return v13;
}

uint64_t static _SwiftNewtypeWrapper<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    if (one-time initialization token for _nilObjCError != -1)
    {
      swift_once();
    }

    v9 = _nilObjCError;
    v10 = _nilObjCError;
  }

  v14[1] = v9;
  v11 = a1;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v12 = *(a2 - 8);
  result = (*(v12 + 48))(v8, 1, a2);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v8, a2);
  }

  __break(1u);
  return result;
}

uint64_t ErrorUserInfoKey.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ErrorUserInfoKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance ErrorUserInfoKey@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ErrorUserInfoKey@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance ErrorUserInfoKey(void *a1, void *a2)
{

  result = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance ErrorUserInfoKey(void *a1, id *a2)
{

  *a2 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  a2[1] = v4;
  return 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ErrorUserInfoKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ErrorUserInfoKey and conformance ErrorUserInfoKey();
  v3 = lazy protocol witness table accessor for type ErrorUserInfoKey and conformance ErrorUserInfoKey();
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void one-time initialization function for underlyingErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSUnderlyingError");
  v1 = @"NSUnderlyingError";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.underlyingErrorKey = v4;
      unk_1EA7B96A0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for localizedDescriptionKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSLocalizedDescription");
  v1 = @"NSLocalizedDescription";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.localizedDescriptionKey = v4;
      unk_1EA7B96B0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void one-time initialization function for localizedFailureReasonErrorKey()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSLocalizedFailureReason");
  v1 = @"NSLocalizedFailureReason";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static ErrorUserInfoKey.localizedFailureReasonErrorKey = v4;
      unk_1EA7B96C0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}