@interface MPSParallelRandomMTGP32State
- (MPSParallelRandomMTGP32State)initWithCoder:(id)coder;
- (MPSParallelRandomMTGP32State)initWithSeed:(unint64_t)seed;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSParallelRandomMTGP32State

- (MPSParallelRandomMTGP32State)initWithSeed:(unint64_t)seed
{
  seedCopy = seed;
  v24.receiver = self;
  v24.super_class = MPSParallelRandomMTGP32State;
  v22 = [(MPSParallelRandomMTGP32State *)&v24 init];
  if (v22)
  {
    v22->_state = malloc_type_calloc(0x15F0uLL, 4uLL, 0x100004052888210uLL);
    v22->_stateParams.shift1 = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
    v22->_stateParams.shift2 = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
    v22[1].super.isa = malloc_type_calloc(0x10uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    v22[1]._state = malloc_type_calloc(0x10uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    v22[1]._stateParams.shift1 = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
    v4 = 0;
    v23 = malloc_type_calloc(0x10uLL, 4uLL, 0x100004052888210uLL);
    v22[1]._stateParams.shift2 = v23;
    state = v22->_state;
    shift1 = v22->_stateParams.shift1;
    shift2 = v22->_stateParams.shift2;
    isa = v22[1].super.isa;
    v9 = v22[1]._state;
    v10 = v22[1]._stateParams.shift1;
    do
    {
      v11 = &unk_27DA61D80 + 64 * v4;
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(v11 + 1);
      v15 = *(v11 + 2);
      v16 = *(v11 + 12);
      LODWORD(v11) = *(v11 + 13);
      shift1[v4] = v12;
      shift2[v4] = v13;
      v17 = 4 * v4;
      *(isa + v17 * 4) = v14;
      *&v9[v17] = v15;
      v10[v4] = v16;
      v23[v4] = v11;
      v18 = HIDWORD(*(isa + 2 * v4)) ^ (*(isa + v4) << 16);
      memset(state + 2, v18 + HIWORD(v18) + ((v18 + HIWORD(v18)) >> 8), 0x574uLL);
      *state = seedCopy;
      state[1] = v18;
      v19 = seedCopy;
      for (i = 1; i != 351; ++i)
      {
        v19 = (i + 1812433253 * (v19 ^ (v19 >> 30))) ^ state[i];
        state[i] = v19;
      }

      state += 351;
      ++v4;
    }

    while (v4 != 16);
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(MPSParallelRandomMTGP32State);
  if (result)
  {
    v5 = result;
    memcpy(*(result + 1), self->_state, 0x57C0uLL);
    result = v5;
    v6 = v5[2];
    shift1 = self->_stateParams.shift1;
    v8 = *(shift1 + 3);
    v10 = *shift1;
    v9 = *(shift1 + 1);
    v6[2] = *(shift1 + 2);
    v6[3] = v8;
    *v6 = v10;
    v6[1] = v9;
    v11 = v5[3];
    shift2 = self->_stateParams.shift2;
    v13 = *shift2;
    v14 = *(shift2 + 1);
    v15 = *(shift2 + 3);
    v11[2] = *(shift2 + 2);
    v11[3] = v15;
    *v11 = v13;
    v11[1] = v14;
    v16 = v5[4];
    isa = self[1].super.isa;
    v19 = *(isa + 2);
    v18 = *(isa + 3);
    v20 = *isa;
    v16[1] = *(isa + 1);
    v16[2] = v19;
    v16[3] = v18;
    v21 = *(isa + 12);
    v22 = *(isa + 13);
    v23 = *(isa + 15);
    v16[14] = *(isa + 14);
    v16[15] = v23;
    v16[12] = v21;
    v16[13] = v22;
    v24 = *(isa + 8);
    v25 = *(isa + 9);
    v26 = *(isa + 11);
    v16[10] = *(isa + 10);
    v16[11] = v26;
    v16[8] = v24;
    v16[9] = v25;
    v27 = *(isa + 4);
    v28 = *(isa + 5);
    v29 = *(isa + 7);
    v16[6] = *(isa + 6);
    v16[7] = v29;
    v16[4] = v27;
    v16[5] = v28;
    *v16 = v20;
    v30 = v5[5];
    state = self[1]._state;
    v32 = *(state + 7);
    v34 = *(state + 4);
    v33 = *(state + 5);
    v30[6] = *(state + 6);
    v30[7] = v32;
    v30[4] = v34;
    v30[5] = v33;
    v35 = *(state + 11);
    v37 = *(state + 8);
    v36 = *(state + 9);
    v30[10] = *(state + 10);
    v30[11] = v35;
    v30[8] = v37;
    v30[9] = v36;
    v38 = *(state + 15);
    v40 = *(state + 12);
    v39 = *(state + 13);
    v30[14] = *(state + 14);
    v30[15] = v38;
    v30[12] = v40;
    v30[13] = v39;
    v41 = *state;
    v42 = *(state + 1);
    v43 = *(state + 3);
    v30[2] = *(state + 2);
    v30[3] = v43;
    *v30 = v41;
    v30[1] = v42;
    v44 = v5[6];
    v45 = self[1]._stateParams.shift1;
    v46 = *v45;
    v47 = *(v45 + 1);
    v48 = *(v45 + 3);
    v44[2] = *(v45 + 2);
    v44[3] = v48;
    *v44 = v46;
    v44[1] = v47;
    v49 = v5[7];
    v50 = self[1]._stateParams.shift2;
    v51 = *v50;
    v52 = *(v50 + 1);
    v53 = *(v50 + 3);
    v49[2] = *(v50 + 2);
    v49[3] = v53;
    *v49 = v51;
    v49[1] = v52;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  v6 = malloc_type_malloc(0x57C0uLL, 0x100004052888210uLL);
  if (v6)
  {
    v7 = v6;
    MPSCopyToFromNetworkByteOrder32(v6, state, 5616);
    objc_msgSend_encodeBytes_length_forKey_(coder, v8, v7, 22464, @"kMPSParallelRandomMTGP32StateStateArrayKey");
    free(v7);
  }

  shift1 = self->_stateParams.shift1;
  v10 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
  if (v10)
  {
    v11 = v10;
    MPSCopyToFromNetworkByteOrder32(v10, shift1, 64);
    objc_msgSend_encodeBytes_length_forKey_(coder, v12, v11, 256, @"kMPSParallelRandomMTGP32StateParameterShift1ArrayKey");
    free(v11);
  }

  shift2 = self->_stateParams.shift2;
  v14 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
  if (v14)
  {
    v15 = v14;
    MPSCopyToFromNetworkByteOrder32(v14, shift2, 64);
    objc_msgSend_encodeBytes_length_forKey_(coder, v16, v15, 256, @"kMPSParallelRandomMTGP32StateParameterShift2ArrayKey");
    free(v15);
  }

  isa = self[1].super.isa;
  v18 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
  if (v18)
  {
    v19 = v18;
    MPSCopyToFromNetworkByteOrder32(v18, isa, 256);
    objc_msgSend_encodeBytes_length_forKey_(coder, v20, v19, 1024, @"kMPSParallelRandomMTGP32StateParameterMRArrayKey");
    free(v19);
  }

  v21 = self[1]._state;
  v22 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
  if (v22)
  {
    v23 = v22;
    MPSCopyToFromNetworkByteOrder32(v22, v21, 256);
    objc_msgSend_encodeBytes_length_forKey_(coder, v24, v23, 1024, @"kMPSParallelRandomMTGP32StateParameterMTArrayKey");
    free(v23);
  }

  v25 = self[1]._stateParams.shift1;
  v26 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
  if (v26)
  {
    v27 = v26;
    MPSCopyToFromNetworkByteOrder32(v26, v25, 64);
    objc_msgSend_encodeBytes_length_forKey_(coder, v28, v27, 256, @"kMPSParallelRandomMTGP32StateParameterMArrayKey");
    free(v27);
  }

  v29 = self[1]._stateParams.shift2;
  v30 = malloc_type_malloc(0x100uLL, 0x100004052888210uLL);
  if (v30)
  {
    v31 = v30;
    MPSCopyToFromNetworkByteOrder32(v30, v29, 64);
    objc_msgSend_encodeBytes_length_forKey_(coder, v32, v31, 256, @"kMPSParallelRandomMTGP32StateParameterStateIdxArrayKey");

    free(v31);
  }
}

- (MPSParallelRandomMTGP32State)initWithCoder:(id)coder
{
  v6 = objc_msgSend_init(self, a2, coder, v3, v4);
  v9 = v6;
  if (v6)
  {
    v10 = *(v6 + 8);
    v37 = 0;
    v11 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v7, @"kMPSParallelRandomMTGP32StateStateArrayKey", &v37, v8);
    if (v11 && v37 == 22464)
    {
      MPSCopyToFromNetworkByteOrder32(v10, v11, 5616);
    }

    shift1 = v9->_stateParams.shift1;
    v37 = 0;
    v15 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v12, @"kMPSParallelRandomMTGP32StateParameterShift1ArrayKey", &v37, v13);
    if (v15 && v37 == 64)
    {
      MPSCopyToFromNetworkByteOrder32(shift1, v15, 16);
    }

    shift2 = v9->_stateParams.shift2;
    v37 = 0;
    v19 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v16, @"kMPSParallelRandomMTGP32StateParameterShift2ArrayKey", &v37, v17);
    if (v19 && v37 == 64)
    {
      MPSCopyToFromNetworkByteOrder32(shift2, v19, 16);
    }

    isa = v9[1].super.isa;
    v37 = 0;
    v23 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v20, @"kMPSParallelRandomMTGP32StateParameterMRArrayKey", &v37, v21);
    if (v23 && v37 == 256)
    {
      MPSCopyToFromNetworkByteOrder32(isa, v23, 64);
    }

    state = v9[1]._state;
    v37 = 0;
    v27 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v24, @"kMPSParallelRandomMTGP32StateParameterMTArrayKey", &v37, v25);
    if (v27 && v37 == 256)
    {
      MPSCopyToFromNetworkByteOrder32(state, v27, 64);
    }

    v30 = v9[1]._stateParams.shift1;
    v37 = 0;
    v31 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v28, @"kMPSParallelRandomMTGP32StateParameterMArrayKey", &v37, v29);
    if (v31 && v37 == 64)
    {
      MPSCopyToFromNetworkByteOrder32(v30, v31, 16);
    }

    v34 = v9[1]._stateParams.shift2;
    v37 = 0;
    v35 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v32, @"kMPSParallelRandomMTGP32StateParameterStateIdxArrayKey", &v37, v33);
    if (v35 && v37 == 64)
    {
      MPSCopyToFromNetworkByteOrder32(v34, v35, 16);
    }
  }

  return v9;
}

- (void)dealloc
{
  free(self[1]._stateParams.shift2);
  free(self[1]._stateParams.shift1);
  free(self[1]._state);
  free(self[1].super.isa);
  free(self->_stateParams.shift1);
  free(self->_stateParams.shift2);
  free(self->_state);
  v3.receiver = self;
  v3.super_class = MPSParallelRandomMTGP32State;
  [(MPSParallelRandomMTGP32State *)&v3 dealloc];
}

@end