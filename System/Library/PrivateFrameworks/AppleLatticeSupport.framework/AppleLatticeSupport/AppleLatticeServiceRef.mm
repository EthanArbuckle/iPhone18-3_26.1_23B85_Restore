@interface AppleLatticeServiceRef
- (AppleLatticeServiceRef)init;
- (BOOL)getInterfaceUpdateEvents:(id)a3;
- (BOOL)setShuttingDown:(BOOL)a3;
- (void)dealloc;
@end

@implementation AppleLatticeServiceRef

- (AppleLatticeServiceRef)init
{
  v3.receiver = self;
  v3.super_class = AppleLatticeServiceRef;
  if ([(AppleLatticeServiceRef *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)getInterfaceUpdateEvents:(id)a3
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3221225472;
  v34[2] = __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke;
  v34[3] = &unk_29F3800A0;
  v5 = v4;
  v35 = v5;
  v6 = MEMORY[0x29EDA87F0](v34);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 3221225472;
  v32[2] = __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke_2;
  v32[3] = &unk_29F3800A0;
  v7 = v5;
  v33 = v7;
  v8 = MEMORY[0x29EDA87F0](v32);
  ptr = self->_client.__ptr_;
  v10 = v8;
  v11 = MEMORY[0x29EDA87F0](v6);
  v12 = *(ptr + 3);
  *(ptr + 3) = v11;

  v13 = MEMORY[0x29EDA87F0](v10);
  v14 = *(ptr + 4);
  *(ptr + 4) = v13;

  v15 = IOServiceMatching("AppleLatticeDPDKService");
  v16 = *MEMORY[0x29EDBB110];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v15);
  v19 = MatchingService;
  if (MatchingService)
  {
    v20 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 2u, ptr);
    if (v20)
    {
    }

    else
    {
      v22 = dispatch_queue_create("connection_queue", 0);
      v23 = *(ptr + 2);
      *(ptr + 2) = v22;

      v24 = IONotificationPortCreate(v16);
      *(ptr + 1) = v24;
      IONotificationPortSetDispatchQueue(v24, *(ptr + 2));
      MachPort = IONotificationPortGetMachPort(*(ptr + 1));
      reference[0] = 0;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      *&v38 = ptr;
      v26 = IOConnectCallAsyncScalarMethod(*ptr, 0, MachPort, reference, 3u, 0, 0, 0, 0);
      v27 = *(ptr + 2);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = ___ZN12_GLOBAL__N_113LatticeClient20registerNotificationEv_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = ptr;
      dispatch_async(v27, block);
      if (!v26)
      {
        v29 = 1;
        goto LABEL_9;
      }

      IOObjectRelease(*ptr);
      *ptr = 0;
    }

    IOObjectRelease(v19);
  }

  else
  {
  }

  NSLog(&cfstr_FailedToStartT.isa);
  v29 = 0;
LABEL_9:

  v30 = *MEMORY[0x29EDCA608];
  return v29;
}

void __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  v23[9] = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:128];
  for (i = 0; i != 128; ++i)
  {
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(a2 + 156 + i)];
    [v3 addObject:v5];
  }

  v23[0] = v3;
  v22[0] = @"externalId";
  v22[1] = @"macAddr";
  v18 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *(a2 + 418), *(a2 + 419), *(a2 + 420), *(a2 + 421), *(a2 + 422), *(a2 + 423)];
  v23[1] = v18;
  v22[2] = @"mtu";
  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a2 + 424)];
  v23[2] = v17;
  v22[3] = @"mapInKernel";
  v6 = [MEMORY[0x29EDBA070] numberWithBool:*(a2 + 428)];
  v23[3] = v6;
  v22[4] = @"offloads";
  v7 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(a2 + 426)];
  v23[4] = v7;
  v22[5] = @"slot";
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(a2 + 427)];
  v23[5] = v8;
  v22[6] = @"isDelete";
  v9 = [MEMORY[0x29EDBA070] numberWithBool:*(a2 + 24)];
  v23[6] = v9;
  v22[7] = @"internalId";
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a2 + 412) & 0x1FF];
  v23[7] = v10;
  v22[8] = @"portId";
  v11 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(a2 + 416)];
  v23[8] = v11;
  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v23 forKeys:v22 count:9];
  v13 = [v12 mutableCopy];

  if (*(a2 + 432))
  {
    v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2 + 432];
    [v13 setObject:v14 forKeyedSubscript:@"bsdName"];
  }

  v20 = @"event";
  v21 = v13;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  (*(*(a1 + 32) + 16))();

  v16 = *MEMORY[0x29EDCA608];
}

void __51__AppleLatticeServiceRef_getInterfaceUpdateEvents___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v7 = @"error";
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x29EDCA608];
}

- (BOOL)setShuttingDown:(BOOL)a3
{
  ptr = self->_client.__ptr_;
  inputStruct = a3;
  outputStruct = 0;
  outputStructCnt = 4;
  v4 = IOConnectCallStructMethod(*ptr, 4u, &inputStruct, 1uLL, &outputStruct, &outputStructCnt);
  v6 = v4;
  if (v4)
  {
  }

  return v6 == 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AppleLatticeServiceRef;
  [(AppleLatticeServiceRef *)&v3 dealloc];
}

@end