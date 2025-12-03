@interface ARNeutralFaceGeometry
+ (id)sharedNeutralGeometry;
- (id).cxx_construct;
- (id)initFromCVAFaceTrackingSemantics;
@end

@implementation ARNeutralFaceGeometry

+ (id)sharedNeutralGeometry
{
  if (+[ARNeutralFaceGeometry sharedNeutralGeometry]::onceToken != -1)
  {
    +[ARNeutralFaceGeometry sharedNeutralGeometry];
  }

  v3 = +[ARNeutralFaceGeometry sharedNeutralGeometry]::neutralGeometry;

  return v3;
}

void __46__ARNeutralFaceGeometry_sharedNeutralGeometry__block_invoke()
{
  v0 = [[ARNeutralFaceGeometry alloc] initFromCVAFaceTrackingSemantics];
  v1 = +[ARNeutralFaceGeometry sharedNeutralGeometry]::neutralGeometry;
  +[ARNeutralFaceGeometry sharedNeutralGeometry]::neutralGeometry = v0;
}

- (id)initFromCVAFaceTrackingSemantics
{
  if (+[ARFaceTrackingTechnique isSupported])
  {
    v40.receiver = self;
    v40.super_class = ARNeutralFaceGeometry;
    v3 = [(ARNeutralFaceGeometry *)&v40 init];
    if (v3)
    {
      CVAFaceTrackingCopySemantics();
      v39 = 0;
      v4 = *MEMORY[0x1E698C070];
      v5 = [0 objectForKeyedSubscript:*MEMORY[0x1E698C070]];
      v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698C088]];

      v7 = [v6 length];
      bytes = [v6 bytes];
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v37, (v7 / 0xC));
      v10 = *(v3 + 1);
      if (v10)
      {
        *(v3 + 2) = v10;
        operator delete(v10);
        *(v3 + 1) = 0;
        *(v3 + 2) = 0;
        *(v3 + 3) = 0;
      }

      *(v3 + 8) = v37;
      *(v3 + 3) = v38;
      v11 = *(v3 + 1);
      if (*(v3 + 2) != v11)
      {
        v12 = 0;
        v13 = (bytes + 8);
        v14 = vdupq_n_s32(0x447A0000u);
        do
        {
          v9.i64[0] = *(v13 - 1);
          v9.i32[2] = *v13;
          *(v11 + 16 * v12) = v9;
          v15 = *(v3 + 1);
          v9 = vdivq_f32(*(v15 + 16 * v12), v14);
          *(v15 + 16 * v12++) = v9;
          v11 = *(v3 + 1);
          v13 += 3;
        }

        while (v12 < (*(v3 + 2) - v11) >> 4);
      }

      v16 = [0 objectForKeyedSubscript:v4];
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E698C080]];

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v37, ([v17 length] >> 3));
      v18 = *(v3 + 4);
      if (v18)
      {
        *(v3 + 5) = v18;
        operator delete(v18);
        *(v3 + 4) = 0;
        *(v3 + 5) = 0;
        *(v3 + 6) = 0;
      }

      *(v3 + 2) = v37;
      *(v3 + 6) = v38;
      bytes2 = [v17 bytes];
      v20 = *(v3 + 4);
      if (*(v3 + 5) != v20)
      {
        v21 = 0;
        v22 = (bytes2 + 4);
        do
        {
          *&v23 = *(v22 - 1);
          *(&v23 + 1) = 1.0 - *v22;
          *(v20 + 8 * v21++) = v23;
          v20 = *(v3 + 4);
          v22 += 2;
        }

        while (v21 < (*(v3 + 5) - v20) >> 3);
      }

      v24 = [0 objectForKeyedSubscript:v4];
      v25 = [v24 objectForKeyedSubscript:*MEMORY[0x1E698C078]];

      v26 = [v25 length];
      bytes3 = [v25 bytes];
      v28 = v26 >> 4;
      std::vector<short>::vector[abi:ne200100](&v37, 6 * v28);
      v29 = *(v3 + 7);
      if (v29)
      {
        *(v3 + 8) = v29;
        operator delete(v29);
        *(v3 + 7) = 0;
        *(v3 + 8) = 0;
        *(v3 + 9) = 0;
      }

      v30 = v37;
      *(v3 + 56) = v37;
      *(v3 + 9) = v38;
      if (v28 >= 1)
      {
        v31 = 0;
        v32 = (v30 + 10);
        do
        {
          v33 = *bytes3++;
          v34 = vmovn_s32(v33);
          *(v32 - 1) = v34.i16[3];
          *(v32 - 5) = vext_s8(v34, v34, 6uLL);
          *v32 = v34.i16[1];
          v31 += 4;
          v32 += 6;
        }

        while (v31 < 4 * (v28 & 0x3FFFFFFF));
      }
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end