@interface ARFaceTrackingData
+ (id)sharedNeutralGeometry;
- (ARFaceTrackingData)initWithCoder:(id)coder;
- (ARFaceTrackingData)initWithTrackingData:(id)data transformToMirrored:(BOOL)mirrored anchorIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (__n128)setLeftEyeTransform:(__n128)transform;
- (__n128)setRightEyeTransform:(__n128)transform;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initPrivate;
- (uint64_t)imageVertices;
- (uint64_t)normals;
- (void)_extractMetaDataAndTransformToMirrored:(BOOL)mirrored;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARFaceTrackingData

+ (id)sharedNeutralGeometry
{
  if (+[ARFaceTrackingData sharedNeutralGeometry]::onceToken != -1)
  {
    +[ARFaceTrackingData sharedNeutralGeometry];
  }

  v3 = +[ARFaceTrackingData sharedNeutralGeometry]::neutralGeometry;

  return v3;
}

void __43__ARFaceTrackingData_sharedNeutralGeometry__block_invoke()
{
  v0 = [ARFaceGeometry alloc];
  v1 = [(ARFaceGeometry *)v0 initWithBlendShapes:MEMORY[0x1E695E0F8]];
  v2 = +[ARFaceTrackingData sharedNeutralGeometry]::neutralGeometry;
  +[ARFaceTrackingData sharedNeutralGeometry]::neutralGeometry = v1;
}

- (id)initPrivate
{
  v8.receiver = self;
  v8.super_class = ARFaceTrackingData;
  v2 = [(ARFaceTrackingData *)&v8 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    normalsSemaphore = v2->_normalsSemaphore;
    v2->_normalsSemaphore = v3;

    v5 = dispatch_semaphore_create(1);
    imageVerticesSemaphore = v2->_imageVerticesSemaphore;
    v2->_imageVerticesSemaphore = v5;
  }

  return v2;
}

- (ARFaceTrackingData)initWithTrackingData:(id)data transformToMirrored:(BOOL)mirrored anchorIdentifier:(id)identifier
{
  mirroredCopy = mirrored;
  dataCopy = data;
  identifierCopy = identifier;
  initPrivate = [(ARFaceTrackingData *)self initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 28, data);
    objc_storeStrong(&v12->_anchorIdentifier, identifier);
    [(ARFaceTrackingData *)v12 _extractMetaDataAndTransformToMirrored:mirroredCopy];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initPrivate"}];
  objc_storeStrong((v4 + 224), self->_trackingData);
  objc_storeStrong((v4 + 192), self->_anchorIdentifier);
  objc_storeStrong((v4 + 208), self->_trackingError);
  v5 = *self->_anon_70;
  v6 = *&self->_anon_70[16];
  v7 = *&self->_anon_70[48];
  *(v4 + 144) = *&self->_anon_70[32];
  *(v4 + 160) = v7;
  *(v4 + 112) = v5;
  *(v4 + 128) = v6;
  if (v4 != self)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l((v4 + 8), *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v4 + 80), self->_blendShapeCoefficients.__begin_, self->_blendShapeCoefficients.__end_, self->_blendShapeCoefficients.__end_ - self->_blendShapeCoefficients.__begin_);
  }

  v8 = *self->_anon_100;
  v9 = *&self->_anon_100[16];
  v10 = *&self->_anon_100[48];
  *(v4 + 288) = *&self->_anon_100[32];
  *(v4 + 304) = v10;
  *(v4 + 256) = v8;
  *(v4 + 272) = v9;
  v11 = *&self[1].super.isa;
  v12 = *&self[1]._anon_8[8];
  v13 = *&self[1]._anon_20[16];
  *(v4 + 352) = *self[1]._anon_20;
  *(v4 + 368) = v13;
  *(v4 + 320) = v11;
  *(v4 + 336) = v12;
  *(v4 + 240) = *self->_gazePoint;
  *(v4 + 200) = self->_tongueOut;
  *(v4 + 216) = self->_timestamp;
  return v4;
}

- (BOOL)isValid
{
  trackingData = [(ARFaceTrackingData *)self trackingData];
  v4 = *MEMORY[0x1E698BFD0];
  v5 = [trackingData objectForKeyedSubscript:*MEMORY[0x1E698BFD0]];

  if (v5)
  {
    trackingData2 = [(ARFaceTrackingData *)self trackingData];
    v7 = [trackingData2 objectForKeyedSubscript:v4];
    v8 = *MEMORY[0x1E698C030];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698C030]];

    if (v9)
    {
      trackingData3 = [(ARFaceTrackingData *)self trackingData];
      v11 = [trackingData3 objectForKeyedSubscript:v4];
      v12 = [v11 objectForKeyedSubscript:v8];
      v13 = *MEMORY[0x1E698C0A0];
      v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E698C0A0]];

      if (v14)
      {
        trackingData4 = [(ARFaceTrackingData *)self trackingData];
        v16 = [trackingData4 objectForKeyedSubscript:v4];
        v17 = [v16 objectForKeyedSubscript:v8];
        v18 = *MEMORY[0x1E698C0C8];
        v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E698C0C8]];

        if (v19)
        {
          trackingData5 = [(ARFaceTrackingData *)self trackingData];
          v21 = [trackingData5 objectForKeyedSubscript:*MEMORY[0x1E698C0B0]];

          if (!v21)
          {
            goto LABEL_15;
          }

          v22 = *MEMORY[0x1E698C090];
          v23 = [v21 objectForKeyedSubscript:*MEMORY[0x1E698C090]];

          if (!v23)
          {
            goto LABEL_15;
          }

          v24 = [v21 objectForKeyedSubscript:v22];
          v25 = [v24 objectForKeyedSubscript:v13];

          if (!v25)
          {
            goto LABEL_15;
          }

          v26 = [v21 objectForKeyedSubscript:v22];
          v27 = [v26 objectForKeyedSubscript:v18];

          if (v27)
          {
            v28 = *MEMORY[0x1E698C048];
            v29 = [v21 objectForKeyedSubscript:*MEMORY[0x1E698C048]];

            if (!v29)
            {
              goto LABEL_15;
            }

            v30 = [v21 objectForKeyedSubscript:v28];
            v27 = [v30 objectForKeyedSubscript:*MEMORY[0x1E698C060]];

            if (v27)
            {
              v27 = *MEMORY[0x1E698BF78];
              v31 = [v21 objectForKeyedSubscript:*MEMORY[0x1E698BF78]];

              if (v31)
              {
                v32 = [v21 objectForKeyedSubscript:v27];
                v33 = [v32 objectForKeyedSubscript:*MEMORY[0x1E698BF80]];
                LOBYTE(v27) = v33 != 0;

                goto LABEL_16;
              }

LABEL_15:
              LOBYTE(v27) = 0;
            }
          }

LABEL_16:

          return v27;
        }
      }
    }
  }

  LOBYTE(v27) = 0;
  return v27;
}

- (void)_extractMetaDataAndTransformToMirrored:(BOOL)mirrored
{
  mirroredCopy = mirrored;
  trackingData = [(ARFaceTrackingData *)self trackingData];
  v6 = *MEMORY[0x1E698C040];
  v7 = [trackingData objectForKeyedSubscript:*MEMORY[0x1E698C040]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    trackingData2 = [(ARFaceTrackingData *)self trackingData];
    v10 = [trackingData2 objectForKeyedSubscript:v6];

    v11 = objc_opt_new();
    v12 = ARKitCoreBundle();
    v13 = [v12 localizedStringForKey:@"Face tracking failed." value:&stru_1F4208A80 table:@"Localizable"];
    [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A578]];

    [v11 setObject:v10 forKeyedSubscript:v6];
    [v10 integerValue];
    v14 = CVAFaceTrackingGetErrorDescription();
    if (v14)
    {
      [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    else
    {
      v15 = ARKitCoreBundle();
      v16 = [v15 localizedStringForKey:@"An unknown error occurred" value:&stru_1F4208A80 table:@"Localizable"];
      [v11 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.arkit.error" code:1002 userInfo:v11];
    trackingError = self->_trackingError;
    self->_trackingError = v17;
  }

  trackingData3 = [(ARFaceTrackingData *)self trackingData];
  v20 = [trackingData3 objectForKeyedSubscript:*MEMORY[0x1E698C0B0]];

  if (v20)
  {
    v21 = *MEMORY[0x1E698C090];
    v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E698C090]];
    v23 = *MEMORY[0x1E698C0A0];
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x1E698C0A0]];
    ARMatrix3x3FromArray(v24);

    v25 = [v20 objectForKeyedSubscript:v21];
    v26 = *MEMORY[0x1E698C0C8];
    v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E698C0C8]];
    v181 = ARVector3FromArray(v27).n128_u64[0];

    ARVector3ScalarMultiplication(v181, 0.001);
    ARMatrix4x4FromRotationAndTranslation();
    v189 = v29;
    v192 = v31;
    if (mirroredCopy)
    {
      *&v32 = AREulerAnglesFromMatrix(v28, v29, v30);
      v190 = v32;
      v33 = __sincosf_stret(-0.5 * *&v32);
      v34 = vmulq_n_f32(xmmword_1C25C8910, v33.__sinval);
      v34.i32[3] = LODWORD(v33.__cosval);
      *v35.i64 = simd_matrix3x3(v34);
      v182 = v36;
      v187 = v35;
      v177 = v37;
      v38 = __sincosf_stret(vmuls_lane_f32(0.5, *&v190, 1));
      v39 = vmulq_n_f32(xmmword_1C25C8BC0, v38.__sinval);
      v39.i32[3] = LODWORD(v38.__cosval);
      *v40.i64 = simd_matrix3x3(v39);
      v173 = v41;
      v174 = v40;
      v172 = v42;
      v43 = __sincosf_stret((*(&v190 + 2) + 3.1416) * 0.5);
      v44 = vmulq_n_f32(xmmword_1C25C86A0, v43.__sinval);
      v44.i32[3] = LODWORD(v43.__cosval);
      *v45.i64 = simd_matrix3x3(v44);
      v46 = 0;
      v45.i32[3] = 0;
      HIDWORD(v47) = 0;
      v48.i32[3] = 0;
      v194 = v45;
      v195 = v47;
      v196 = v48;
      do
      {
        *(&v198 + v46 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v174, COERCE_FLOAT(*(&v194 + v46 * 4))), v173, *&v194.f32[v46], 1), v172, *(&v194 + v46 * 4), 2);
        v46 += 4;
      }

      while (v46 != 12);
      v49 = 0;
      v194 = v198;
      v195 = v199;
      v196 = v200;
      do
      {
        *(&v198 + v49 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, COERCE_FLOAT(*(&v194 + v49 * 4))), v182, *&v194.f32[v49], 1), v177, *(&v194 + v49 * 4), 2);
        v49 += 4;
      }

      while (v49 != 12);
      ARMatrix4x4FromRotationAndTranslation();
      v50 = 0;
      v51 = *MEMORY[0x1E69E9B18];
      v52 = *(MEMORY[0x1E69E9B18] + 32);
      v53 = *(MEMORY[0x1E69E9B18] + 48);
      v194 = v54;
      v195 = v55;
      v196 = v56;
      v197 = v57;
      do
      {
        *(&v198 + v50) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v194 + v50))), xmmword_1C25C9060, *&v194.f32[v50 / 4], 1), v52, *(&v194 + v50), 2), v53, *(&v194 + v50), 3);
        v50 += 16;
      }

      while (v50 != 64);
      v58 = 0;
      v59 = v198;
      v60 = v199;
      v61 = v200;
      v62 = v201;
      v194 = v51;
      v195 = xmmword_1C25C9060;
      v196 = v52;
      v197 = v53;
      do
      {
        *(&v198 + v58) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v194 + v58))), v60, *&v194.f32[v58 / 4], 1), v61, *(&v194 + v58), 2), v62, *(&v194 + v58), 3);
        v58 += 16;
      }

      while (v58 != 64);
      v178 = v198;
      v183 = v200;
      v189 = v199;
      v192 = v201;
    }

    else
    {
      v178 = v28;
      v183 = v30;
    }

    trackingData4 = [(ARFaceTrackingData *)self trackingData];
    selfCopy = self;
    v64 = *MEMORY[0x1E698BFD0];
    v65 = [trackingData4 objectForKeyedSubscript:*MEMORY[0x1E698BFD0]];
    v66 = *MEMORY[0x1E698C030];
    v67 = [v65 objectForKeyedSubscript:*MEMORY[0x1E698C030]];
    v68 = [v67 objectForKeyedSubscript:v23];
    ARMatrix3x3FromArray(v68);

    selfCopy2 = self;
    trackingData5 = [(ARFaceTrackingData *)self trackingData];
    v71 = [trackingData5 objectForKeyedSubscript:v64];
    v72 = [v71 objectForKeyedSubscript:v66];
    v73 = [v72 objectForKeyedSubscript:v26];
    v171 = ARVector3FromArray(v73);

    ARVector3ScalarMultiplication(v171.n128_u64[0], 0.001);
    ARMatrix4x4FromRotationAndTranslation();
    v78 = 0;
    v194 = v178;
    v195 = v189;
    v196 = v183;
    v197 = v192;
    do
    {
      *(&v198 + v78) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(&v194 + v78))), v75, *&v194.f32[v78 / 4], 1), v76, *(&v194 + v78), 2), v77, *(&v194 + v78), 3);
      v78 += 16;
    }

    while (v78 != 64);
    v79 = 0;
    v194 = v198;
    v195 = v199;
    v196 = v200;
    v197 = v201;
    do
    {
      *(&v198 + v79) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C8910, COERCE_FLOAT(*(&v194 + v79))), xmmword_1C25C9060, *&v194.f32[v79 / 4], 1), xmmword_1C25C9070, *(&v194 + v79), 2), xmmword_1C25C8560, *(&v194 + v79), 3);
      v79 += 16;
    }

    while (v79 != 64);
    v80 = v199;
    v81 = v200;
    v82 = v201;
    *self->_anon_70 = v198;
    *&self->_anon_70[16] = v80;
    *&self->_anon_70[32] = v81;
    *&self->_anon_70[48] = v82;
    v83 = *MEMORY[0x1E698C048];
    v84 = [v20 objectForKeyedSubscript:*MEMORY[0x1E698C048]];
    v85 = [v84 objectForKeyedSubscript:*MEMORY[0x1E698C060]];

    v191 = v85;
    v86 = [v85 length];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(self->_anon_8, (v86 / 0xC));
    bytes = [v85 bytes];
    if ((v86 / 0xC) >= 1)
    {
      v89 = 0;
      v91 = *(MEMORY[0x1E69E9B10] + 16);
      v90 = *(MEMORY[0x1E69E9B10] + 32);
      v92 = (bytes + 8);
      do
      {
        v88.f32[0] = *(v92 - 2) / 1000.0;
        v93 = v88;
        v93.f32[1] = *(v92 - 1) / 1000.0;
        v94 = v93;
        v94.f32[2] = *v92 / 1000.0;
        if (mirroredCopy)
        {
          v88 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C9080, v88.f32[0]), v91, *v93.f32, 1), v90, v94, 2);
          v94 = v88;
        }

        *(*self->_anon_8 + 16 * v89++) = v94;
        v92 += 3;
      }

      while (((v86 / 0xC) & 0x7FFFFFFF) != v89);
    }

    v95 = *MEMORY[0x1E698BF78];
    v96 = [v20 objectForKeyedSubscript:{*MEMORY[0x1E698BF78], *&v171}];
    v97 = [v96 objectForKeyedSubscript:*MEMORY[0x1E698BF80]];

    v193 = v97;
    v98 = [v97 length];
    bytes2 = [v97 bytes];
    v198 = 0uLL;
    *&v199 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v198, bytes2, bytes2 + ((v98 >> 2 << 32) >> 30), (v98 >> 2));
    p_blendShapeCoefficients = &selfCopy2->_blendShapeCoefficients;
    begin = selfCopy2->_blendShapeCoefficients.__begin_;
    if (begin)
    {
      selfCopy2->_blendShapeCoefficients.__end_ = begin;
      operator delete(begin);
      p_blendShapeCoefficients->__begin_ = 0;
      selfCopy2->_blendShapeCoefficients.__end_ = 0;
      selfCopy2->_blendShapeCoefficients.__cap_ = 0;
    }

    *&selfCopy2->_blendShapeCoefficients.__begin_ = v198;
    selfCopy2->_blendShapeCoefficients.__cap_ = v199;
    if (mirroredCopy)
    {
      v184 = v20;
      v102 = v83;
      v103 = +[ARFaceAnchor blendShapeToMirroredBlendShapeMapping];
      if ((v98 >> 2) >= 1)
      {
        v104 = 0;
        v105 = (v98 >> 2) & 0x7FFFFFFF;
        do
        {
          v106 = [MEMORY[0x1E696AD98] numberWithInt:v104];
          v107 = [v103 objectForKeyedSubscript:v106];
          integerValue = [v107 integerValue];

          p_blendShapeCoefficients->__begin_[integerValue] = *(bytes2 + 4 * v104++);
        }

        while (v105 != v104);
      }

      selfCopy2 = selfCopy;
      v83 = v102;
      v20 = v184;
    }

    v109 = [v20 objectForKeyedSubscript:v83];
    v110 = [v109 objectForKeyedSubscript:*MEMORY[0x1E698C050]];
    ARVector3FromArray(v110);

    v111 = [v20 objectForKeyedSubscript:v95];
    v112 = [v111 objectForKeyedSubscript:*MEMORY[0x1E698BF98]];
    [v112 floatValue];
    v114 = v113;

    v115 = [v20 objectForKeyedSubscript:v95];
    v116 = [v115 objectForKeyedSubscript:*MEMORY[0x1E698BF90]];
    [v116 floatValue];
    v118 = v117;

    v119 = __sincosf_stret(v114 * 0.5);
    v120 = vmulq_n_f32(xmmword_1C25C8BC0, v119.__sinval);
    v120.i32[3] = LODWORD(v119.__cosval);
    *v121.i64 = simd_matrix3x3(v120);
    v121.i32[3] = 0;
    HIDWORD(v122) = 0;
    v175 = v122;
    v179 = v121;
    v123.i32[3] = 0;
    v185 = v123;
    v124 = __sincosf_stret(v118 * 0.5);
    v125 = vmulq_n_f32(xmmword_1C25C8910, v124.__sinval);
    v125.i32[3] = LODWORD(v124.__cosval);
    *v126.i64 = simd_matrix3x3(v125);
    v129 = 0;
    v194 = v179;
    v195 = v175;
    v196 = v185;
    do
    {
      *(&v198 + v129 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*(&v194 + v129 * 4))), v127, *&v194.f32[v129], 1), v128, *(&v194 + v129 * 4), 2);
      v129 += 4;
    }

    while (v129 != 12);
    ARMatrix4x4FromRotationAndTranslation();
    *selfCopy2->_anon_100 = v130;
    *&selfCopy2->_anon_100[16] = v131;
    *&selfCopy2->_anon_100[32] = v132;
    *&selfCopy2->_anon_100[48] = v133;
    v134 = [v20 objectForKeyedSubscript:v83];
    v135 = [v134 objectForKeyedSubscript:*MEMORY[0x1E698C058]];
    ARVector3FromArray(v135);

    v136 = [v20 objectForKeyedSubscript:v95];
    v137 = [v136 objectForKeyedSubscript:*MEMORY[0x1E698BFA8]];
    [v137 floatValue];
    v139 = v138;

    v140 = [v20 objectForKeyedSubscript:v95];
    v141 = [v140 objectForKeyedSubscript:*MEMORY[0x1E698BFA0]];
    [v141 floatValue];
    v143 = v142;

    v144 = __sincosf_stret(v139 * 0.5);
    v145 = vmulq_n_f32(xmmword_1C25C8BC0, v144.__sinval);
    v145.i32[3] = LODWORD(v144.__cosval);
    *v146.i64 = simd_matrix3x3(v145);
    v146.i32[3] = 0;
    HIDWORD(v147) = 0;
    v176 = v147;
    v180 = v146;
    v148.i32[3] = 0;
    v186 = v148;
    v149 = __sincosf_stret(v143 * 0.5);
    v150 = vmulq_n_f32(xmmword_1C25C8910, v149.__sinval);
    v150.i32[3] = LODWORD(v149.__cosval);
    *v151.i64 = simd_matrix3x3(v150);
    v154 = 0;
    v194 = v180;
    v195 = v176;
    v196 = v186;
    do
    {
      *(&v198 + v154 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, COERCE_FLOAT(*(&v194 + v154 * 4))), v152, *&v194.f32[v154], 1), v153, *(&v194 + v154 * 4), 2);
      v154 += 4;
    }

    while (v154 != 12);
    ARMatrix4x4FromRotationAndTranslation();
    *&selfCopy2[1].super.isa = v155;
    *&selfCopy2[1]._anon_8[8] = v156;
    *selfCopy2[1]._anon_20 = v157;
    *&selfCopy2[1]._anon_20[16] = v158;
    v159 = [v20 objectForKeyedSubscript:v95];
    v160 = [v159 objectForKeyedSubscript:*MEMORY[0x1E698BF88]];

    if ([v160 count])
    {
      *selfCopy2->_gazePoint = vdivq_f32(ARVector3FromArray(v160), vdupq_n_s32(0x447A0000u));
    }

    v161 = [v20 objectForKeyedSubscript:v95];
    v162 = *MEMORY[0x1E698BFB0];
    v163 = [v161 objectForKeyedSubscript:*MEMORY[0x1E698BFB0]];

    if (v163)
    {
      v164 = [v20 objectForKeyedSubscript:v95];
      v165 = [v164 objectForKeyedSubscript:v162];
      [v165 floatValue];
      selfCopy2->_tongueOut = v166;
    }

    v167 = *MEMORY[0x1E698C0B8];
    v168 = [v20 objectForKeyedSubscript:*MEMORY[0x1E698C0B8]];

    if (v168)
    {
      v169 = [v20 objectForKeyedSubscript:v167];
      [v169 doubleValue];
      selfCopy2->_timestamp = v170;
    }
  }
}

- (uint64_t)normals
{
  dispatch_semaphore_wait(*(self + 176), 0xFFFFFFFFFFFFFFFFLL);
  v2 = (self + 56);
  if (*(self + 64) - *(self + 56) != *(self + 16) - *(self + 8))
  {
    kdebug_trace();
    v3 = +[ARFaceTrackingData sharedNeutralGeometry];
    triangleIndices = [v3 triangleIndices];
    vertices = [self vertices];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v21, (*(self + 16) - *(self + 8)) >> 4);
    v6 = *v2;
    if (*v2)
    {
      *(self + 64) = v6;
      operator delete(v6);
      *v2 = 0;
      *(self + 64) = 0;
      *(self + 72) = 0;
    }

    v7 = 0;
    *(self + 56) = v21;
    *(self + 72) = v22;
    v8 = (triangleIndices + 4);
    while ([v3 triangleCount] > v7)
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(vertices + 16 * v9);
      v13 = vsubq_f32(*(vertices + 16 * v10), v12);
      v14 = vsubq_f32(*(vertices + 16 * v11), v12);
      v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vnegq_f32(v13)), v14, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
      v16 = vmulq_f32(v15, v15);
      *&v17 = v16.f32[1] + (v16.f32[2] + v16.f32[0]);
      v18 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
      *v15.f32 = vrsqrte_f32(v17);
      *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v17, vmul_f32(*v15.f32, *v15.f32)));
      v19 = vmulq_n_f32(v18, vmul_f32(*v15.f32, vrsqrts_f32(v17, vmul_f32(*v15.f32, *v15.f32))).f32[0]);
      *(*v2 + v9) = vaddq_f32(*(*v2 + v9), v19);
      *(*v2 + v10) = vaddq_f32(v19, *(*v2 + v10));
      *(*v2 + v11) = vaddq_f32(v19, *(*v2 + v11));
      ++v7;
      v8 += 3;
    }

    kdebug_trace();
  }

  dispatch_semaphore_signal(*(self + 176));
  return *(self + 56);
}

- (uint64_t)imageVertices
{
  v76 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(self + 184), 0xFFFFFFFFFFFFFFFFLL);
  v2 = (self + 32);
  v3 = *(self + 40) - *(self + 32);
  if ([self vertexCount] == v3 >> 3)
  {
    dispatch_semaphore_signal(*(self + 184));
    return *(self + 32);
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(buf, [self vertexCount]);
    v5 = *(self + 32);
    if (v5)
    {
      *(self + 40) = v5;
      operator delete(v5);
      *v2 = 0;
      *(self + 40) = 0;
      *(self + 48) = 0;
    }

    *(self + 32) = *buf;
    *(self + 48) = *&buf[16];
    trackingData = [self trackingData];
    v7 = [trackingData objectForKeyedSubscript:*MEMORY[0x1E698C0B0]];

    if (v7)
    {
      v8 = *MEMORY[0x1E698C090];
      v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698C090]];
      v10 = *MEMORY[0x1E698C0A0];
      v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E698C0A0]];
      ARMatrix3x3FromArray(v11);

      v12 = [v7 objectForKeyedSubscript:v8];
      v13 = *MEMORY[0x1E698C0C8];
      v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E698C0C8]];
      v60 = ARVector3FromArray(v14).n128_u64[0];

      ARVector3ScalarMultiplication(v60, 0.001);
      ARMatrix4x4FromRotationAndTranslation();
      v61 = v16;
      v63 = v15;
      v65 = v18;
      v67 = v17;
      trackingData2 = [self trackingData];
      v20 = *MEMORY[0x1E698BFD0];
      v21 = [trackingData2 objectForKeyedSubscript:*MEMORY[0x1E698BFD0]];
      v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E698C068]];
      v23 = ARMatrix3x3FromArray(v22);
      v58 = v24;
      v59 = v23;
      v57 = v25;

      trackingData3 = [self trackingData];
      v27 = [trackingData3 objectForKeyedSubscript:v20];
      v28 = *MEMORY[0x1E698C030];
      v29 = [v27 objectForKeyedSubscript:*MEMORY[0x1E698C030]];
      v30 = [v29 objectForKeyedSubscript:v10];
      ARMatrix3x3FromArray(v30);

      trackingData4 = [self trackingData];
      v32 = [trackingData4 objectForKeyedSubscript:v20];
      v33 = [v32 objectForKeyedSubscript:v28];
      v34 = [v33 objectForKeyedSubscript:v13];
      v56 = ARVector3FromArray(v34);

      ARVector3ScalarMultiplication(v56.n128_u64[0], 0.001);
      ARMatrix4x4FromRotationAndTranslation();
      v35 = 0;
      v69 = v36;
      v70 = v37;
      v71 = v38;
      v72 = v39;
      do
      {
        *&buf[v35] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v69 + v35))), v58, *(&v69 + v35), 1), v57, *(&v69 + v35), 2), 0, *(&v69 + v35), 3);
        v35 += 16;
      }

      while (v35 != 64);
      v40 = 0;
      v41 = *buf;
      v42 = *&buf[16];
      v43 = v74;
      v44 = v75;
      v69 = v63;
      v70 = v61;
      v71 = v67;
      v72 = v65;
      do
      {
        *&buf[v40] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, COERCE_FLOAT(*(&v69 + v40))), v42, *(&v69 + v40), 1), v43, *(&v69 + v40), 2), v44, *(&v69 + v40), 3);
        v40 += 16;
      }

      while (v40 != 64);
      v45 = 0;
      v66 = *&buf[16];
      v68 = *buf;
      v62 = v75;
      v64 = v74;
      while ([self vertexCount] > v45)
      {
        vertices = [self vertices];
        v47 = vaddq_f32(v62, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, COERCE_FLOAT(*(vertices + 16 * v45))), v66, *(vertices + 16 * v45), 1), v64, *(vertices + 16 * v45), 2));
        *(*v2 + 8 * v45++) = vdiv_f32(*v47.i8, vdup_laneq_s32(v47, 2));
      }

      dispatch_semaphore_signal(*(self + 184));
      v4 = *(self + 32);
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARFaceTrackingData imageVertices];
      }

      v48 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v49 = _ARLogGeneral();
      v50 = v49;
      if (v48 == 1)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          *buf = 138543618;
          *&buf[4] = v52;
          *&buf[12] = 2048;
          *&buf[14] = self;
          _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No smoothed data available in tracking data", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        *buf = 138543618;
        *&buf[4] = v54;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: No smoothed data available in tracking data", buf, 0x16u);
      }

      dispatch_semaphore_signal(*(self + 184));
      v4 = 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_trackingData forKey:@"trackingData"];
  [coderCopy encodeObject:self->_anchorIdentifier forKey:@"anchorIdentifier"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
}

- (ARFaceTrackingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"trackingData"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"trackingData"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchorIdentifier"];
    anchorIdentifier = self->_anchorIdentifier;
    self->_anchorIdentifier = v12;

    v14 = [(ARFaceTrackingData *)self initWithTrackingData:v11 anchorIdentifier:self->_anchorIdentifier];
    if (v14)
    {
      [coderCopy decodeDoubleForKey:@"timestamp"];
      v14->_timestamp = v15;
    }

    v16 = v14;
  }

  else
  {
    initPrivate = [(ARFaceTrackingData *)self initPrivate];
    if (initPrivate)
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vertexData"];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 length];
        bytes = [v19 bytes];
        v53 = 0uLL;
        v54 = 0;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v53, bytes, bytes + 16 * (v20 >> 4), (v20 >> 4));
        v22 = *(initPrivate + 1);
        if (v22)
        {
          *(initPrivate + 2) = v22;
          operator delete(v22);
          *(initPrivate + 1) = 0;
          *(initPrivate + 2) = 0;
          *(initPrivate + 3) = 0;
        }

        *(initPrivate + 8) = v53;
        *(initPrivate + 3) = v54;
      }

      v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vertexData2D"];
      v24 = v23;
      if (v23)
      {
        v25 = [v23 length];
        bytes2 = [v24 bytes];
        v53 = 0uLL;
        v54 = 0;
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v53, bytes2, bytes2 + 8 * (v25 >> 3), (v25 >> 3));
        v27 = *(initPrivate + 4);
        if (v27)
        {
          *(initPrivate + 5) = v27;
          operator delete(v27);
          *(initPrivate + 4) = 0;
          *(initPrivate + 5) = 0;
          *(initPrivate + 6) = 0;
        }

        *(initPrivate + 2) = v53;
        *(initPrivate + 6) = v54;
      }

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"normalsData"];
      v29 = v28;
      if (v28)
      {
        v30 = [v28 length];
        bytes3 = [v29 bytes];
        v53 = 0uLL;
        v54 = 0;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v53, bytes3, bytes3 + 16 * (v30 >> 4), (v30 >> 4));
        v32 = *(initPrivate + 7);
        if (v32)
        {
          *(initPrivate + 8) = v32;
          operator delete(v32);
          *(initPrivate + 7) = 0;
          *(initPrivate + 8) = 0;
          *(initPrivate + 9) = 0;
        }

        *(initPrivate + 56) = v53;
        *(initPrivate + 9) = v54;
      }

      v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blendShapeCoefficientsData"];
      v34 = v33;
      if (v33)
      {
        v35 = [v33 length];
        bytes4 = [v34 bytes];
        v53 = 0uLL;
        v54 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v53, bytes4, bytes4 + 4 * (v35 >> 2), (v35 >> 2));
        v37 = *(initPrivate + 10);
        if (v37)
        {
          *(initPrivate + 11) = v37;
          operator delete(v37);
          *(initPrivate + 10) = 0;
          *(initPrivate + 11) = 0;
          *(initPrivate + 12) = 0;
        }

        *(initPrivate + 5) = v53;
        *(initPrivate + 12) = v54;
      }

      [coderCopy ar_decodeMatrix4x4ForKey:@"transform"];
      *(initPrivate + 7) = v38;
      *(initPrivate + 8) = v39;
      *(initPrivate + 9) = v40;
      *(initPrivate + 10) = v41;
      [coderCopy ar_decodeMatrix4x4ForKey:@"leftEyeTransform"];
      *(initPrivate + 16) = v42;
      *(initPrivate + 17) = v43;
      *(initPrivate + 18) = v44;
      *(initPrivate + 19) = v45;
      [coderCopy ar_decodeMatrix4x4ForKey:@"rightEyeTransform"];
      *(initPrivate + 20) = v46;
      *(initPrivate + 21) = v47;
      *(initPrivate + 22) = v48;
      *(initPrivate + 23) = v49;
      [coderCopy ar_decodeVector3ForKey:@"gaze"];
      *(initPrivate + 15) = v50;
      *(initPrivate + 50) = [coderCopy decodeBoolForKey:@"tongueOut"];
      [coderCopy decodeDoubleForKey:@"timestamp"];
      *(initPrivate + 27) = v51;
    }

    v16 = initPrivate;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5[2] - v5[1] != *&self->_anon_8[8] - *self->_anon_8)
    {
      goto LABEL_23;
    }

    if (v5[11] - v5[10] != self->_blendShapeCoefficients.__end_ - self->_blendShapeCoefficients.__begin_)
    {
      goto LABEL_23;
    }

    if (*(v5 + 50) != self->_tongueOut)
    {
      goto LABEL_23;
    }

    if (*(v5 + 27) != self->_timestamp)
    {
      goto LABEL_23;
    }

    anchorIdentifier = self->_anchorIdentifier;
    if (anchorIdentifier != *(v6 + 24) && ![(NSUUID *)anchorIdentifier isEqual:?])
    {
      goto LABEL_23;
    }

    v8 = *(v6 + 28);
    if (v8 != self->_trackingData && ![(NSDictionary *)v8 isEqualToDictionary:?])
    {
      goto LABEL_23;
    }

    v9 = *(v6 + 1);
    v10 = *self->_anon_8;
    v11 = *&self->_anon_8[8];
    if (*(v6 + 2) - v9 != v11 - v10)
    {
      goto LABEL_23;
    }

    if (v11 != v10)
    {
      v12 = vceqq_f32(*v9, *v10);
      v12.i32[3] = v12.i32[2];
      if ((vminvq_u32(v12) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v13 = v11 - v10;
      v14 = 1;
      do
      {
        v15 = v14;
        if (v13 == v14)
        {
          break;
        }

        v16 = vceqq_f32(v9[v14], v10[v14]);
        v16.i32[3] = v16.i32[2];
        ++v14;
      }

      while ((vminvq_u32(v16) & 0x80000000) != 0);
      if (v15 < v13)
      {
        goto LABEL_23;
      }
    }

    if (!memcmp(*(v6 + 10), self->_blendShapeCoefficients.__begin_, self->_blendShapeCoefficients.__end_ - self->_blendShapeCoefficients.__begin_) && AREqualTransforms(*(v6 + 7), *(v6 + 8), *(v6 + 9), *(v6 + 10), *self->_anon_70, *&self->_anon_70[16], *&self->_anon_70[32], *&self->_anon_70[48]) && AREqualTransforms(*(v6 + 16), *(v6 + 17), *(v6 + 18), *(v6 + 19), *self->_anon_100, *&self->_anon_100[16], *&self->_anon_100[32], *&self->_anon_100[48]) && AREqualTransforms(*(v6 + 20), *(v6 + 21), *(v6 + 22), *(v6 + 23), *&self[1].super.isa, *&self[1]._anon_8[8], *self[1]._anon_20, *&self[1]._anon_20[16]))
    {
      v17 = vsubq_f32(*(v6 + 15), *self->_gazePoint);
      v18 = vmulq_f32(v17, v17);
      v19 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)) < 0.00000011921;
    }

    else
    {
LABEL_23:
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (__n128)setLeftEyeTransform:(__n128)transform
{
  result[16] = a2;
  result[17] = transform;
  result[18] = a4;
  result[19] = a5;
  return result;
}

- (__n128)setRightEyeTransform:(__n128)transform
{
  result[20] = a2;
  result[21] = transform;
  result[22] = a4;
  result[23] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end