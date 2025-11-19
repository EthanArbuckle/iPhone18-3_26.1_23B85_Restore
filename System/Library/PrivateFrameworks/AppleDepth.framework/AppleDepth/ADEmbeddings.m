@interface ADEmbeddings
- (ADEmbeddings)initWithBands:(unsigned int)a3 maxResolution:(float)a4 sourceFactor:(float)a5;
- (ADEmbeddings)initWithFrequencies:(const void *)a3 sourceFactor:(float)a4;
- (id).cxx_construct;
- (int64_t)embedDepthMapUsingFourierEncoding:(__CVBuffer *)a3 outputBuffer:(id)a4 outputChannelOffset:(unint64_t)a5 outputBatchOffset:(unint64_t)a6;
- (int64_t)embedValuesUsingFourierEncoding:(const void *)a3 outputBuffer:(id)a4 outputChannelOffset:(unint64_t)a5 outputBatchOffset:(unint64_t)a6;
- (int64_t)embedValuesUsingFourierEncoding:(const void *)a3 outputBuffer:(void *)a4 dimensions:(id)a5 strides:(id)a6 offsets:(id)a7;
@end

@implementation ADEmbeddings

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (int64_t)embedDepthMapUsingFourierEncoding:(__CVBuffer *)a3 outputBuffer:(id)a4 outputChannelOffset:(unint64_t)a5 outputBatchOffset:(unint64_t)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a4;
  Width = CVPixelBufferGetWidth(a3);
  if (Width != [v10 width] || (v12 = CVPixelBufferGetHeight(a3), v12 != objc_msgSend(v10, "height")))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = CVPixelBufferGetWidth(a3);
      v29 = 2048;
      Height = CVPixelBufferGetHeight(a3);
      v31 = 2048;
      v32 = [v10 width];
      v33 = 2048;
      v34 = [v10 height];
      v17 = MEMORY[0x277D86220];
      v18 = "Depth map dimensions (%zux%zu), do not match output buffer (%zux%zu)";
      v19 = 42;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if ([v10 channels] <= a5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = a5;
      v29 = 2048;
      Height = [v10 channels];
      v17 = MEMORY[0x277D86220];
      v18 = "Channel offset %zu, does not match output buffer channels count %zu";
LABEL_17:
      v19 = 22;
LABEL_19:
      _os_log_error_impl(&dword_2402F6000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
    }

LABEL_11:
    v15 = -22953;
    goto LABEL_12;
  }

  if ([v10 batches] <= a6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = a6;
      v29 = 2048;
      Height = [v10 batches];
      v17 = MEMORY[0x277D86220];
      v18 = "Batch offset %zu, does not match output buffer batches count %zu";
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  targetStorageType = self->_targetStorageType;
  if (targetStorageType == 65568)
  {
    if (PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
    {
      embedDepthMapUsingFourierEncoding<float>(a3, &self->_trigFactors, &self->_valuesFactor, v10, a5, a6);
      goto LABEL_23;
    }

    v24 = PixelFormatType;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    PixelBufferUtils::pixelFormatAsString(v24, buf);
    if (v31 >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    v26 = 136315138;
    v27 = v25;
    v22 = MEMORY[0x277D86220];
    v23 = "Depth map format (%s) does not match storage format ESPRESSO_STORAGE_TYPE_FLOAT32";
LABEL_37:
    _os_log_error_impl(&dword_2402F6000, v22, OS_LOG_TYPE_ERROR, v23, &v26, 0xCu);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_11;
  }

  if (targetStorageType == 65552)
  {
    if (PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
    {
      embedDepthMapUsingFourierEncoding<half>(a3, &self->_trigFactors, &self->_valuesFactor, v10, a5, a6);
LABEL_23:
      v15 = 0;
      goto LABEL_12;
    }

    v20 = PixelFormatType;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    PixelBufferUtils::pixelFormatAsString(v20, buf);
    if (v31 >= 0)
    {
      v21 = buf;
    }

    else
    {
      v21 = *buf;
    }

    v26 = 136315138;
    v27 = v21;
    v22 = MEMORY[0x277D86220];
    v23 = "Depth map format (%s) does not match storage format ESPRESSO_STORAGE_TYPE_FLOAT16";
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = targetStorageType;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported storage type 0x%x", buf, 8u);
  }

  v15 = -22951;
LABEL_12:

  return v15;
}

- (int64_t)embedValuesUsingFourierEncoding:(const void *)a3 outputBuffer:(void *)a4 dimensions:(id)a5 strides:(id)a6 offsets:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [objc_alloc(MEMORY[0x277CED050]) initWithName:@"camera" rawData:a4 dimensions:v13 strides:v14];
  if (v15)
  {
    v17 = [v15 count];
    v18 = v17 != 0;
    if (v17)
    {
      v24 = [v15 objectAtIndexedSubscript:0];
      v19 = [v24 unsignedIntValue];
    }

    else
    {
      v19 = 0;
    }

    if ([v15 count] < 2)
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v7 = [v15 objectAtIndexedSubscript:1];
      v21 = [v7 unsignedIntValue];
      v20 = 1;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
  }

  v22 = [(ADEmbeddings *)self embedValuesUsingFourierEncoding:a3 outputBuffer:v16 outputChannelOffset:v19 outputBatchOffset:v21];
  if (v20)
  {
  }

  if (v18)
  {
  }

  return v22;
}

- (int64_t)embedValuesUsingFourierEncoding:(const void *)a3 outputBuffer:(id)a4 outputChannelOffset:(unint64_t)a5 outputBatchOffset:(unint64_t)a6
{
  v901 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = *(a3 + 1) - *a3;
  v805 = v10;
  if (v11 != 16)
  {
    v12 = [v10 width];
    _CF = v11 >> 4 >= ([v805 height] * v12);
    v10 = v805;
    if (!_CF)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = *a3;
        v13 = *(a3 + 1);
        v15 = v805;
        *buf = 134218496;
        v896 = (v13 - v14) >> 4;
        v897 = 2048;
        v898 = [v805 width];
        v899 = 2048;
        v900 = [v805 height];
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Total values amount %zu, does not match width&height (%zux%zu)", buf, 0x20u);
        v16 = -22953;
        goto LABEL_77;
      }

LABEL_75:
      v16 = -22953;
      goto LABEL_76;
    }
  }

  if ([v10 channels] <= a5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 134218240;
    v896 = a5;
    v897 = 2048;
    v898 = [v805 channels];
    v44 = MEMORY[0x277D86220];
    v45 = "Channel offset %zu, does not match output buffer channels count %zu";
LABEL_247:
    _os_log_error_impl(&dword_2402F6000, v44, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);
    goto LABEL_75;
  }

  if ([v805 batches] <= a6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 134218240;
    v896 = a6;
    v897 = 2048;
    v898 = [v805 batches];
    v44 = MEMORY[0x277D86220];
    v45 = "Batch offset %zu, does not match output buffer batches count %zu";
    goto LABEL_247;
  }

  targetStorageType = self->_targetStorageType;
  v785 = a3;
  v789 = self;
  if (targetStorageType != 65568)
  {
    if (targetStorageType != 65552)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v896) = targetStorageType;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported storage type 0x%x", buf, 8u);
      }

      v16 = -22951;
      goto LABEL_76;
    }

    v18 = v805;
    v19 = [v18 data];
    v20 = [v18 batchBytes];
    v21 = [v18 channelBytes];
    v799 = [v18 channelBytes];
    v22 = [v18 rowBytes];
    v23 = [v18 width];
    v823 = [v18 height];
    v26 = v20 * a6;
    v27 = v21 * a5;
    v28 = v19 + v20 * a6 + v21 * a5;
    begin = v789->_trigFactors.__begin_;
    end = v789->_trigFactors.__end_;
    v762 = *a3;
    v31 = end - begin;
    v728 = v18;
    v786 = begin;
    if (*(a3 + 1) - *a3 == 16)
    {
      if (end != begin)
      {
        if (v823)
        {
          if (v31 <= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = end - begin;
          }

          if (v23)
          {
            v33 = 0;
            v34 = v23 & 0xFFFFFFFFFFFFFFF0;
            LODWORD(v35) = HIDWORD(*v762);
            v774 = *v762;
            LODWORD(v36) = v762[1];
            v37 = v23 & 0xFFFFFFFFFFFFFFFCLL;
            v38 = v26 + v27 + v19;
            v39 = v38 + 16;
            v772 = 3 * v799;
            v40 = v28;
            v886 = (v38 + 2);
            v41 = v38 + v799;
            v859 = (v41 + 16);
            v845 = (v41 + 2);
            v42 = v39;
            v43 = (v39 + 2 * v799);
            v780 = v32;
            while (1)
            {
              v791 = v43;
              v46 = v40;
              v806 = v33;
              v47 = begin[v33];
              *_D0.i32 = sinf(*&v774 * v47);
              __asm { FCVT            H0, S0 }

              if (v23 >= 4)
              {
                break;
              }

              v52 = v886;
              v53 = v823;
              do
              {
                *(v52 - 1) = _D0.i16[0];
                if (v23 != 1)
                {
                  *v52 = _D0.i16[0];
                  if (v23 != 2)
                  {
                    v52[1] = _D0.i16[0];
                  }
                }

                v52 = (v52 + v22);
                --v53;
              }

              while (v53);
LABEL_39:
              v65 = v46 + v799;
              *_D0.i32 = sinf(v35 * v47);
              __asm { FCVT            H0, S0 }

              if (v23 >= 4)
              {
                v69 = 0;
                v70 = vdupq_lane_s16(_D0, 0);
                v71 = v859;
                v72 = v65;
                while (v23 >= 0x10)
                {
                  v74 = v71;
                  v75 = v23 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v74[-1] = v70;
                    *v74 = v70;
                    v74 += 2;
                    v75 -= 16;
                  }

                  while (v75);
                  if (v23 == v34)
                  {
                    goto LABEL_46;
                  }

                  v73 = v23 & 0xFFFFFFFFFFFFFFF0;
                  v76 = 2 * (v23 & 0xFFFFFFFFFFFFFFF0);
                  v77 = v23 & 0xF;
                  if ((v23 & 0xC) != 0)
                  {
                    goto LABEL_53;
                  }

                  do
                  {
LABEL_56:
                    *(v72 + v76) = _D0.i16[0];
                    v76 += 2;
                    --v77;
                  }

                  while (v77);
LABEL_46:
                  ++v69;
                  v72 += v22;
                  v71 = (v71 + v22);
                  if (v69 == v823)
                  {
                    goto LABEL_58;
                  }
                }

                v73 = 0;
LABEL_53:
                v78 = v73 - (v23 & 0xFFFFFFFFFFFFFFFCLL);
                v79 = 2 * v73;
                do
                {
                  *(v72 + v79) = v70.i64[0];
                  v79 += 8;
                  v78 += 4;
                }

                while (v78);
                v76 = 2 * (v23 & 0xFFFFFFFFFFFFFFFCLL);
                v77 = v23 & 3;
                if (v23 == v37)
                {
                  goto LABEL_46;
                }

                goto LABEL_56;
              }

              v67 = v845;
              v68 = v823;
              do
              {
                *(v67 - 1) = _D0.i16[0];
                if (v23 != 1)
                {
                  *v67 = _D0.i16[0];
                  if (v23 != 2)
                  {
                    v67[1] = _D0.i16[0];
                  }
                }

                v67 = (v67 + v22);
                --v68;
              }

              while (v68);
LABEL_58:
              v80 = (v65 + v799);
              *_D0.i32 = sinf(v36 * v47);
              v81 = 0;
              __asm { FCVT            H0, S0 }

              v83 = vdupq_lane_s16(_D0, 0);
              v84 = v791;
              v85 = v80;
              begin = v786;
              do
              {
                v86 = v85;
                v87 = v23;
                if (v23 < 4)
                {
                  goto LABEL_72;
                }

                if (v23 >= 0x10)
                {
                  v89 = v84;
                  v90 = v23 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v89[-1] = v83;
                    *v89 = v83;
                    v89 += 2;
                    v90 -= 16;
                  }

                  while (v90);
                  if (v23 == v34)
                  {
                    goto LABEL_59;
                  }

                  v88 = v23 & 0xFFFFFFFFFFFFFFF0;
                  if ((v23 & 0xC) == 0)
                  {
                    v86 = &v85[v23 & 0xFFFFFFFFFFFFFFF0];
                    v87 = v23 & 0xF;
                    do
                    {
LABEL_72:
                      *v86++ = _D0.i16[0];
                      --v87;
                    }

                    while (v87);
                    goto LABEL_59;
                  }
                }

                else
                {
                  v88 = 0;
                }

                v91 = v88 - (v23 & 0xFFFFFFFFFFFFFFFCLL);
                v92 = v88;
                do
                {
                  *&v85[v92] = v83.i64[0];
                  v92 += 4;
                  v91 += 4;
                }

                while (v91);
                if (v23 != v37)
                {
                  v86 = &v85[v23 & 0xFFFFFFFFFFFFFFFCLL];
                  v87 = v23 & 3;
                  goto LABEL_72;
                }

LABEL_59:
                ++v81;
                v85 = (v85 + v22);
                v84 = (v84 + v22);
              }

              while (v81 != v823);
              v40 = v80 + v799;
              v33 = v806 + 1;
              v42 = (v42 + v772);
              v886 = (v886 + v772);
              v859 = (v859 + v772);
              v845 = (v845 + v772);
              v43 = (v791 + v772);
              if (v806 + 1 == v780)
              {
                goto LABEL_259;
              }
            }

            v54 = 0;
            v55 = vdupq_lane_s16(_D0, 0);
            v56 = v42;
            v57 = v46;
            while (v23 >= 0x10)
            {
              v59 = v56;
              v60 = v23 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v59[-1] = v55;
                *v59 = v55;
                v59 += 2;
                v60 -= 16;
              }

              while (v60);
              if (v23 == v34)
              {
                goto LABEL_27;
              }

              v58 = v23 & 0xFFFFFFFFFFFFFFF0;
              v61 = 2 * (v23 & 0xFFFFFFFFFFFFFFF0);
              v62 = v23 & 0xF;
              if ((v23 & 0xC) != 0)
              {
                goto LABEL_34;
              }

              do
              {
LABEL_37:
                *(v57 + v61) = _D0.i16[0];
                v61 += 2;
                --v62;
              }

              while (v62);
LABEL_27:
              ++v54;
              v57 += v22;
              v56 = (v56 + v22);
              if (v54 == v823)
              {
                goto LABEL_39;
              }
            }

            v58 = 0;
LABEL_34:
            v63 = v58 - (v23 & 0xFFFFFFFFFFFFFFFCLL);
            v64 = 2 * v58;
            do
            {
              *(v57 + v64) = v55.i64[0];
              v64 += 8;
              v63 += 4;
            }

            while (v63);
            v61 = 2 * (v23 & 0xFFFFFFFFFFFFFFFCLL);
            v62 = v23 & 3;
            if (v23 == v37)
            {
              goto LABEL_27;
            }

            goto LABEL_37;
          }

          v269 = v799 * v32;
        }

        else
        {
          if (v31 <= 1)
          {
            v268 = 1;
          }

          else
          {
            v268 = end - begin;
          }

          v269 = v799 * v268;
        }

LABEL_258:
        v40 = v28 + 3 * v269;
        goto LABEL_259;
      }

LABEL_241:
      v40 = v19 + v20 * a6 + v21 * a5;
      goto LABEL_259;
    }

    v24 = v799;
    if (end == begin)
    {
      goto LABEL_241;
    }

    if (!v823)
    {
      if (v31 <= 1)
      {
        v270 = 1;
      }

      else
      {
        v270 = end - begin;
      }

      v269 = v799 * v270;
      goto LABEL_258;
    }

    if (v31 <= 1)
    {
      v151 = 1;
    }

    else
    {
      v151 = end - begin;
    }

    if (!v23)
    {
      v269 = v799 * v151;
      goto LABEL_258;
    }

    v152 = 0;
    v754 = 3 * v799;
    v153 = &v762[2 * v23 * v823];
    v746 = v153 - 1;
    v750 = v153 - 4;
    v154 = v19 + v799 + v26 + v27;
    v155 = v22 * (v823 - 1) + 2 * v23;
    v742 = v154;
    v738 = v154 + v155;
    v730 = v28 + 2 * v799 + v155;
    v734 = v28 + 2 * v799;
    v816 = v23 & 0xF7FFFFFFFFFFFFF8;
    v156 = 16 * v23;
    v40 = v19 + v20 * a6 + v21 * a5;
    v758 = v151;
LABEL_138:
    v157 = 0;
    v158 = v742 + v754 * v152;
    v793 = v754 * v152;
    v775 = v734 + v754 * v152;
    v781 = v152;
    *&v25 = begin[v152];
    v159 = v762;
    v160 = v40;
    v161 = v40;
    v888 = v25;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        _S0 = sinf(*&v25 * *&v159[2 * i]);
        LODWORD(v25) = v888;
        __asm { FCVT            H0, S0 }

        *(v160 + 2 * i) = LOWORD(_S0);
      }

      ++v157;
      v160 += v22;
      v159 = (v159 + v156);
    }

    while (v157 != v823);
    v164 = 0;
    _CF = v158 >= v746 || v762 + 4 >= v738 + v793;
    v167 = !_CF || v22 < 0 || (v23 & 0x800000000000000) != 0;
    v168 = v161 + v799;
    v169 = v23 < 8 || v167;
    v170 = v762 + 4;
    v171 = v762 + 17;
    v767 = v168;
    v807 = v169;
    while (1)
    {
      if (v169)
      {
        v172 = 0;
      }

      else
      {
        v173 = 0;
        v174 = v171;
        v175 = v23 & 0xF7FFFFFFFFFFFFF8;
        do
        {
          v176.i32[0] = *(v174 - 16);
          v177.i32[0] = *v174;
          v177.i32[1] = v174[4];
          v177.i32[2] = v174[8];
          v177.i32[3] = v174[12];
          v176.i32[1] = *(v174 - 12);
          v176.i32[2] = *(v174 - 8);
          v176.i32[3] = *(v174 - 4);
          v831 = vmulq_n_f32(v177, *&v25);
          v847 = vmulq_n_f32(v176, *&v25);
          v860 = sinf(v831.f32[1]);
          v178.f32[0] = sinf(v831.f32[0]);
          v178.f32[1] = v860;
          v861 = v178;
          v179 = sinf(v831.f32[2]);
          v180 = v861;
          v180.f32[2] = v179;
          v862 = v180;
          v181 = sinf(v831.f32[3]);
          v182 = v862;
          v182.f32[3] = v181;
          v863 = v182;
          v831.i32[0] = sinf(v847.f32[1]);
          v183.f32[0] = sinf(v847.f32[0]);
          v183.i32[1] = v831.i32[0];
          v832 = v183;
          v184 = sinf(v847.f32[2]);
          v185 = v832;
          v185.f32[2] = v184;
          v833 = v185;
          v186 = sinf(v847.f32[3]);
          v187 = v833;
          v187.f32[3] = v186;
          LODWORD(v25) = v888;
          *(v168 + v173) = vcvt_hight_f16_f32(vcvt_f16_f32(v187), v863);
          v173 += 16;
          v174 += 32;
          v175 -= 8;
        }

        while (v175);
        v172 = v23 & 0xF7FFFFFFFFFFFFF8;
        v169 = v807;
        if (v23 == v816)
        {
          goto LABEL_155;
        }
      }

      v188 = &v170[16 * v172];
      do
      {
        v189 = *v188;
        v188 += 4;
        _S0 = sinf(*&v25 * v189);
        LODWORD(v25) = v888;
        __asm { FCVT            H0, S0 }

        *(v168 + 2 * v172++) = LOWORD(_S0);
      }

      while (v23 != v172);
LABEL_155:
      ++v164;
      v168 += v22;
      v171 = (v171 + v156);
      v170 += v156;
      if (v164 == v823)
      {
        v191 = 0;
        v192 = v762 + 1;
        v195 = v775 < v750 && (v762 + 1) < v730 + v793 || v22 < 0 || (v23 & 0x800000000000000) != 0;
        v196 = v767 + v799;
        v197 = v23 < 8 || v195;
        v198 = (v762 + 9);
        v808 = v197;
        while (2)
        {
          if (v197)
          {
            v199 = 0;
            goto LABEL_183;
          }

          v200 = 0;
          v201 = v198;
          v202 = v23 & 0xF7FFFFFFFFFFFFF8;
          do
          {
            v203.i32[0] = *(v201 - 16);
            v204.i32[0] = *v201;
            v204.i32[1] = v201[4];
            v204.i32[2] = v201[8];
            v204.i32[3] = v201[12];
            v203.i32[1] = *(v201 - 12);
            v203.i32[2] = *(v201 - 8);
            v203.i32[3] = *(v201 - 4);
            v834 = vmulq_n_f32(v204, *&v25);
            v848 = vmulq_n_f32(v203, *&v25);
            v864 = sinf(v834.f32[1]);
            v205.f32[0] = sinf(v834.f32[0]);
            v205.f32[1] = v864;
            v865 = v205;
            v206 = sinf(v834.f32[2]);
            v207 = v865;
            v207.f32[2] = v206;
            v866 = v207;
            v208 = sinf(v834.f32[3]);
            v209 = v866;
            v209.f32[3] = v208;
            v867 = v209;
            v834.i32[0] = sinf(v848.f32[1]);
            v210.f32[0] = sinf(v848.f32[0]);
            v210.i32[1] = v834.i32[0];
            v835 = v210;
            v211 = sinf(v848.f32[2]);
            v212 = v835;
            v212.f32[2] = v211;
            v836 = v212;
            v213 = sinf(v848.f32[3]);
            v214 = v836;
            v214.f32[3] = v213;
            v25 = v888;
            *(v196 + v200) = vcvt_hight_f16_f32(vcvt_f16_f32(v214), v867);
            v200 += 16;
            v201 += 32;
            v202 -= 8;
          }

          while (v202);
          v199 = v23 & 0xF7FFFFFFFFFFFFF8;
          v197 = v808;
          if (v23 != v816)
          {
LABEL_183:
            v215 = &v192[2 * v199];
            do
            {
              v216 = *v215;
              v215 += 4;
              _S0 = sinf(*&v25 * v216);
              v25 = v888;
              __asm { FCVT            H0, S0 }

              *(v196 + 2 * v199++) = LOWORD(_S0);
            }

            while (v23 != v199);
          }

          ++v191;
          v196 += v22;
          v198 = (v198 + v156);
          v192 = (v192 + v156);
          if (v191 != v823)
          {
            continue;
          }

          break;
        }

        v24 = v799;
        v40 = v767 + v799 + v799;
        v152 = v781 + 1;
        begin = v786;
        if (v781 + 1 != v758)
        {
          goto LABEL_138;
        }

LABEL_259:
        v794 = v40;
        v271 = v728;
        v272 = [v728 channelBytes];
        v273 = [v271 rowBytes];
        v274 = [v271 width];
        v275 = [v271 height];
        v277 = v275;
        v278 = v794;
        v280 = v789->_trigFactors.__begin_;
        v279 = v789->_trigFactors.__end_;
        v760 = *v785;
        v281 = v279 - v280;
        v801 = v272;
        v788 = v280;
        if (v785[1] - *v785 == 16)
        {
          if (v279 == v280)
          {
            goto LABEL_493;
          }

          if (v275)
          {
            if (v281 <= 1)
            {
              v282 = 1;
            }

            else
            {
              v282 = v279 - v280;
            }

            if (v274)
            {
              v283 = 0;
              v284 = v274 & 0xFFFFFFFFFFFFFFF0;
              LODWORD(v285) = HIDWORD(*v760);
              v286 = v274 & 0xFFFFFFFFFFFFFFFCLL;
              v769 = *v760;
              LODWORD(v287) = v760[1];
              v764 = 3 * v272;
              v851 = v794 + 16 + v272;
              v870 = (v794 + 4);
              v837 = (v794 + 4 + v272);
              v890 = (v794 + 16);
              v288 = v794 + 16 + 2 * v272;
              v773 = v282;
              while (1)
              {
                v777 = v288;
                v819 = v278;
                v795 = v283;
                v289 = v280[v283];
                *_D0.i32 = cosf(*&v769 * v289);
                __asm { FCVT            H0, S0 }

                if (v274 >= 4)
                {
                  break;
                }

                v291 = v870;
                v292 = v277;
                do
                {
                  *(v291 - 2) = _D0.i16[0];
                  if (v274 != 1)
                  {
                    *(v291 - 1) = _D0.i16[0];
                    if (v274 != 2)
                    {
                      *v291 = _D0.i16[0];
                    }
                  }

                  v291 = (v291 + v273);
                  --v292;
                }

                while (v292);
LABEL_287:
                v304 = v819 + v272;
                *_D0.i32 = cosf(v285 * v289);
                __asm { FCVT            H0, S0 }

                if (v274 >= 4)
                {
                  v308 = 0;
                  v309 = vdupq_lane_s16(_D0, 0);
                  v310 = v851;
                  v311 = v304;
                  while (v274 >= 0x10)
                  {
                    v313 = v310;
                    v314 = v274 & 0xFFFFFFFFFFFFFFF0;
                    do
                    {
                      v313[-1] = v309;
                      *v313 = v309;
                      v313 += 2;
                      v314 -= 16;
                    }

                    while (v314);
                    if (v274 == v284)
                    {
                      goto LABEL_294;
                    }

                    v312 = v274 & 0xFFFFFFFFFFFFFFF0;
                    v315 = 2 * (v274 & 0xFFFFFFFFFFFFFFF0);
                    v316 = v274 & 0xF;
                    if ((v274 & 0xC) != 0)
                    {
                      goto LABEL_301;
                    }

                    do
                    {
LABEL_304:
                      *(v311 + v315) = _D0.i16[0];
                      v315 += 2;
                      --v316;
                    }

                    while (v316);
LABEL_294:
                    ++v308;
                    v311 += v273;
                    v310 = (v310 + v273);
                    if (v308 == v277)
                    {
                      goto LABEL_306;
                    }
                  }

                  v312 = 0;
LABEL_301:
                  v317 = v312 - (v274 & 0xFFFFFFFFFFFFFFFCLL);
                  v318 = 2 * v312;
                  do
                  {
                    *(v311 + v318) = v309.i64[0];
                    v318 += 8;
                    v317 += 4;
                  }

                  while (v317);
                  v315 = 2 * (v274 & 0xFFFFFFFFFFFFFFFCLL);
                  v316 = v274 & 3;
                  if (v274 == v286)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_304;
                }

                v306 = v837;
                v307 = v277;
                do
                {
                  *(v306 - 2) = _D0.i16[0];
                  if (v274 != 1)
                  {
                    *(v306 - 1) = _D0.i16[0];
                    if (v274 != 2)
                    {
                      *v306 = _D0.i16[0];
                    }
                  }

                  v306 = (v306 + v273);
                  --v307;
                }

                while (v307);
LABEL_306:
                v319 = (v304 + v801);
                *_D0.i32 = cosf(v287 * v289);
                v320 = 0;
                __asm { FCVT            H0, S0 }

                v322 = vdupq_lane_s16(_D0, 0);
                v323 = v777;
                v324 = v319;
                do
                {
                  v325 = v324;
                  v326 = v274;
                  if (v274 < 4)
                  {
                    goto LABEL_320;
                  }

                  if (v274 >= 0x10)
                  {
                    v328 = v323;
                    v329 = v274 & 0xFFFFFFFFFFFFFFF0;
                    do
                    {
                      v328[-1] = v322;
                      *v328 = v322;
                      v328 += 2;
                      v329 -= 16;
                    }

                    while (v329);
                    if (v274 == v284)
                    {
                      goto LABEL_307;
                    }

                    v327 = v274 & 0xFFFFFFFFFFFFFFF0;
                    if ((v274 & 0xC) == 0)
                    {
                      v325 = &v324[v274 & 0xFFFFFFFFFFFFFFF0];
                      v326 = v274 & 0xF;
                      do
                      {
LABEL_320:
                        *v325++ = _D0.i16[0];
                        --v326;
                      }

                      while (v326);
                      goto LABEL_307;
                    }
                  }

                  else
                  {
                    v327 = 0;
                  }

                  v330 = v327 - (v274 & 0xFFFFFFFFFFFFFFFCLL);
                  v331 = v327;
                  do
                  {
                    *&v324[v331] = v322.i64[0];
                    v331 += 4;
                    v330 += 4;
                  }

                  while (v330);
                  if (v274 != v286)
                  {
                    v325 = &v324[v274 & 0xFFFFFFFFFFFFFFFCLL];
                    v326 = v274 & 3;
                    goto LABEL_320;
                  }

LABEL_307:
                  ++v320;
                  v324 = (v324 + v273);
                  v323 = (v323 + v273);
                }

                while (v320 != v277);
                v278 = v319 + v801;
                v272 = v801;
                v283 = v795 + 1;
                v890 = (v890 + v764);
                v870 = (v870 + v764);
                v851 += v764;
                v837 = (v837 + v764);
                v288 = v777 + v764;
                v280 = v788;
                if (v795 + 1 == v773)
                {
                  goto LABEL_493;
                }
              }

              v293 = 0;
              v294 = vdupq_lane_s16(_D0, 0);
              v295 = v890;
              v296 = v819;
              while (2)
              {
                if (v274 >= 0x10)
                {
                  v298 = v295;
                  v299 = v274 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v298[-1] = v294;
                    *v298 = v294;
                    v298 += 2;
                    v299 -= 16;
                  }

                  while (v299);
                  if (v274 != v284)
                  {
                    v297 = v274 & 0xFFFFFFFFFFFFFFF0;
                    v300 = 2 * (v274 & 0xFFFFFFFFFFFFFFF0);
                    v301 = v274 & 0xF;
                    if ((v274 & 0xC) != 0)
                    {
                      goto LABEL_282;
                    }

                    goto LABEL_285;
                  }
                }

                else
                {
                  v297 = 0;
LABEL_282:
                  v302 = v297 - (v274 & 0xFFFFFFFFFFFFFFFCLL);
                  v303 = 2 * v297;
                  do
                  {
                    *(v296 + v303) = v294.i64[0];
                    v303 += 8;
                    v302 += 4;
                  }

                  while (v302);
                  v300 = 2 * (v274 & 0xFFFFFFFFFFFFFFFCLL);
                  v301 = v274 & 3;
                  if (v274 != v286)
                  {
                    do
                    {
LABEL_285:
                      *(v296 + v300) = _D0.i16[0];
                      v300 += 2;
                      --v301;
                    }

                    while (v301);
                  }
                }

                ++v293;
                v296 += v273;
                v295 = (v295 + v273);
                if (v293 == v277)
                {
                  goto LABEL_287;
                }

                continue;
              }
            }

            v399 = v272 * v282;
LABEL_492:
            v278 = v794 + 3 * v399;
            goto LABEL_493;
          }

LABEL_376:
          if (v281 <= 1)
          {
            v281 = 1;
          }

          v399 = v272 * v281;
          goto LABEL_492;
        }

        if (v279 == v280)
        {
          goto LABEL_493;
        }

        if (!v275)
        {
          goto LABEL_376;
        }

        if (v281 <= 1)
        {
          v332 = 1;
        }

        else
        {
          v332 = v279 - v280;
        }

        if (!v274)
        {
          v399 = v272 * v332;
          goto LABEL_492;
        }

        v333 = 0;
        v748 = 3 * v272;
        v752 = 2 * v272;
        v334 = v273 * (v275 - 1);
        v744 = v334 + 2 * v272 + 2 * v274;
        v335 = &v760[2 * v274 * v275];
        v736 = v272 + 2 * v274 + v334;
        v740 = v335 - 4;
        v820 = v274 & 0xF7FFFFFFFFFFFFF8;
        v826 = v275;
        v336 = 16 * v274;
        v732 = v335 - 1;
        v756 = v332;
        while (2)
        {
          v337 = 0;
          v338 = v272 + v748 * v333;
          v339 = v736 + v748 * v333;
          v871 = v752 + v748 * v333;
          v778 = v744 + v748 * v333;
          v783 = v333;
          *&v276 = v280[v333];
          v340 = v760;
          v341 = v278;
          v342 = v278;
          v891 = v276;
          do
          {
            for (j = 0; j != v274; ++j)
            {
              _S0 = cosf(*&v276 * *&v340[2 * j]);
              LODWORD(v276) = v891;
              __asm { FCVT            H0, S0 }

              *(v342 + 2 * j) = LOWORD(_S0);
            }

            ++v337;
            v342 += v273;
            v340 = (v340 + v336);
          }

          while (v337 != v826);
          v345 = 0;
          v346 = v794 + v339;
          v347 = v760 + 17;
          _CF = v794 + v338 >= v732;
          v348 = v760 + 4;
          v351 = !_CF && v760 + 4 < v346 || v273 < 0 || (v274 & 0x800000000000000) != 0;
          v765 = v794 + v871;
          v352 = v341 + v801;
          if (v274 < 8)
          {
            v351 = 1;
          }

          v810 = v351;
          v770 = v341 + v801;
          v353 = v826;
          while (2)
          {
            if (v810)
            {
              v354 = 0;
              goto LABEL_352;
            }

            v355 = 0;
            v356 = v347;
            v357 = v274 & 0xF7FFFFFFFFFFFFF8;
            do
            {
              v358.i32[0] = *(v356 - 16);
              v359.i32[0] = *v356;
              v359.i32[1] = v356[4];
              v359.i32[2] = v356[8];
              v359.i32[3] = v356[12];
              v358.i32[1] = *(v356 - 12);
              v358.i32[2] = *(v356 - 8);
              v358.i32[3] = *(v356 - 4);
              v838 = vmulq_n_f32(v359, *&v276);
              v852 = vmulq_n_f32(v358, *&v276);
              v872 = cosf(v838.f32[1]);
              v360.f32[0] = cosf(v838.f32[0]);
              v360.f32[1] = v872;
              v873 = v360;
              v361 = cosf(v838.f32[2]);
              v362 = v873;
              v362.f32[2] = v361;
              v874 = v362;
              v363 = cosf(v838.f32[3]);
              v364 = v874;
              v364.f32[3] = v363;
              v875 = v364;
              v838.i32[0] = cosf(v852.f32[1]);
              v365.f32[0] = cosf(v852.f32[0]);
              v365.i32[1] = v838.i32[0];
              v839 = v365;
              v366 = cosf(v852.f32[2]);
              v367 = v839;
              v367.f32[2] = v366;
              v840 = v367;
              v368 = cosf(v852.f32[3]);
              v369 = v840;
              v369.f32[3] = v368;
              LODWORD(v276) = v891;
              *(v352 + v355) = vcvt_hight_f16_f32(vcvt_f16_f32(v369), v875);
              v355 += 16;
              v356 += 32;
              v357 -= 8;
            }

            while (v357);
            v353 = v826;
            v354 = v274 & 0xF7FFFFFFFFFFFFF8;
            if (v274 != v820)
            {
LABEL_352:
              v370 = &v348[16 * v354];
              do
              {
                v371 = *v370;
                v370 += 4;
                _S0 = cosf(*&v276 * v371);
                LODWORD(v276) = v891;
                __asm { FCVT            H0, S0 }

                *(v352 + 2 * v354++) = LOWORD(_S0);
              }

              while (v274 != v354);
            }

            ++v345;
            v352 += v273;
            v347 = (v347 + v336);
            v348 += v336;
            if (v345 != v353)
            {
              continue;
            }

            break;
          }

          v373 = 0;
          v374 = v760 + 1;
          v377 = v765 < v740 && (v760 + 1) < v794 + v778 || v273 < 0 || (v274 & 0x800000000000000) != 0;
          v378 = v770 + v801;
          if (v274 < 8)
          {
            v377 = 1;
          }

          v811 = v377;
          v379 = (v760 + 9);
          while (2)
          {
            if (v811)
            {
              v380 = 0;
              goto LABEL_373;
            }

            v381 = 0;
            v382 = v379;
            v383 = v274 & 0xF7FFFFFFFFFFFFF8;
            do
            {
              v384.i32[0] = *(v382 - 16);
              v385.i32[0] = *v382;
              v385.i32[1] = v382[4];
              v385.i32[2] = v382[8];
              v385.i32[3] = v382[12];
              v384.i32[1] = *(v382 - 12);
              v384.i32[2] = *(v382 - 8);
              v384.i32[3] = *(v382 - 4);
              v841 = vmulq_n_f32(v385, *&v276);
              v853 = vmulq_n_f32(v384, *&v276);
              v876 = cosf(v841.f32[1]);
              v386.f32[0] = cosf(v841.f32[0]);
              v386.f32[1] = v876;
              v877 = v386;
              v387 = cosf(v841.f32[2]);
              v388 = v877;
              v388.f32[2] = v387;
              v878 = v388;
              v389 = cosf(v841.f32[3]);
              v390 = v878;
              v390.f32[3] = v389;
              v879 = v390;
              v841.i32[0] = cosf(v853.f32[1]);
              v391.f32[0] = cosf(v853.f32[0]);
              v391.i32[1] = v841.i32[0];
              v842 = v391;
              v392 = cosf(v853.f32[2]);
              v393 = v842;
              v393.f32[2] = v392;
              v843 = v393;
              v394 = cosf(v853.f32[3]);
              v395 = v843;
              v395.f32[3] = v394;
              v276 = v891;
              *(v378 + v381) = vcvt_hight_f16_f32(vcvt_f16_f32(v395), v879);
              v381 += 16;
              v382 += 32;
              v383 -= 8;
            }

            while (v383);
            v353 = v826;
            v380 = v274 & 0xF7FFFFFFFFFFFFF8;
            if (v274 != v820)
            {
LABEL_373:
              v396 = &v374[2 * v380];
              do
              {
                v397 = *v396;
                v396 += 4;
                _S0 = cosf(*&v276 * v397);
                v276 = v891;
                __asm { FCVT            H0, S0 }

                *(v378 + 2 * v380++) = LOWORD(_S0);
              }

              while (v274 != v380);
            }

            ++v373;
            v378 += v273;
            v379 = (v379 + v336);
            v374 = (v374 + v336);
            if (v373 != v353)
            {
              continue;
            }

            break;
          }

          v272 = v801;
          v278 = v770 + v801 + v801;
          v333 = v783 + 1;
          v280 = v788;
          if (v783 + 1 != v756)
          {
            continue;
          }

          break;
        }

LABEL_493:
        v503 = v278;
        v894 = [v729 channelBytes];
        v504 = [v729 rowBytes];
        v505 = [v729 width];
        v506 = [v729 height];
        v510 = v789->_valuesFactor.__begin_;
        v509 = v789->_valuesFactor.__end_;
        v884 = *v785;
        v511 = v509 - v510;
        if (v785[1] - *v785 == 16)
        {
          if (v509 != v510 && v506)
          {
            if (v511 <= 1)
            {
              v511 = 1;
            }

            if (v505)
            {
              v512 = 0;
              v513 = v505 & 0xFFFFFFFFFFFFFFF0;
              v514 = *v884;
              LODWORD(v515) = HIDWORD(*v884);
              v516 = v505 & 0xFFFFFFFFFFFFFFFCLL;
              LODWORD(v517) = v884[1];
              v518 = (v503 + 16);
              v519 = 3 * v894;
              v520 = (v503 + 4);
              v521 = v503 + 16 + v894;
              v522 = (v503 + 4 + v894);
              v523 = v503 + 16 + 2 * v894;
              v524 = v503;
              while (1)
              {
                *_D3.i32 = v510[v512];
                *_Q4.i32 = *&v514 * *_D3.i32;
                __asm { FCVT            H4, S4 }

                if (v505 >= 4)
                {
                  break;
                }

                v525 = v520;
                v526 = v506;
                v527 = v894;
                do
                {
                  *(v525 - 2) = _Q4.i16[0];
                  if (v505 != 1)
                  {
                    *(v525 - 1) = _Q4.i16[0];
                    if (v505 != 2)
                    {
                      *v525 = _Q4.i16[0];
                    }
                  }

                  v525 = (v525 + v504);
                  --v526;
                }

                while (v526);
LABEL_520:
                *_Q4.i32 = v515 * *_D3.i32;
                __asm { FCVT            H4, S4 }

                if (v505 >= 4)
                {
                  v541 = 0;
                  v542 = vdupq_lane_s16(*_Q4.i8, 0);
                  v543 = v521;
                  v544 = v524 + v527;
                  while (v505 >= 0x10)
                  {
                    v546 = v543;
                    v547 = v505 & 0xFFFFFFFFFFFFFFF0;
                    do
                    {
                      v546[-1] = v542;
                      *v546 = v542;
                      v546 += 2;
                      v547 -= 16;
                    }

                    while (v547);
                    if (v505 == v513)
                    {
                      goto LABEL_527;
                    }

                    v545 = v505 & 0xFFFFFFFFFFFFFFF0;
                    v548 = 2 * (v505 & 0xFFFFFFFFFFFFFFF0);
                    v549 = v505 & 0xF;
                    if ((v505 & 0xC) != 0)
                    {
                      goto LABEL_534;
                    }

                    do
                    {
LABEL_537:
                      *(v544 + v548) = _Q4.i16[0];
                      v548 += 2;
                      --v549;
                    }

                    while (v549);
LABEL_527:
                    ++v541;
                    v544 += v504;
                    v543 = (v543 + v504);
                    if (v541 == v506)
                    {
                      goto LABEL_539;
                    }
                  }

                  v545 = 0;
LABEL_534:
                  v550 = v545 - (v505 & 0xFFFFFFFFFFFFFFFCLL);
                  v551 = 2 * v545;
                  do
                  {
                    *(v544 + v551) = v542.i64[0];
                    v551 += 8;
                    v550 += 4;
                  }

                  while (v550);
                  v548 = 2 * (v505 & 0xFFFFFFFFFFFFFFFCLL);
                  v549 = v505 & 3;
                  if (v505 == v516)
                  {
                    goto LABEL_527;
                  }

                  goto LABEL_537;
                }

                v539 = v522;
                v540 = v506;
                do
                {
                  *(v539 - 2) = _Q4.i16[0];
                  if (v505 != 1)
                  {
                    *(v539 - 1) = _Q4.i16[0];
                    if (v505 != 2)
                    {
                      *v539 = _Q4.i16[0];
                    }
                  }

                  v539 = (v539 + v504);
                  --v540;
                }

                while (v540);
LABEL_539:
                v552 = 0;
                *_D3.i32 = v517 * *_D3.i32;
                __asm { FCVT            H3, S3 }

                _Q4 = vdupq_lane_s16(_D3, 0);
                v553 = v523;
                v554 = (v524 + v527 + v527);
                do
                {
                  v555 = v554;
                  v556 = v505;
                  if (v505 < 4)
                  {
                    goto LABEL_553;
                  }

                  if (v505 >= 0x10)
                  {
                    v558 = v553;
                    v559 = v505 & 0xFFFFFFFFFFFFFFF0;
                    do
                    {
                      v558[-1] = _Q4;
                      *v558 = _Q4;
                      v558 += 2;
                      v559 -= 16;
                    }

                    while (v559);
                    if (v505 == v513)
                    {
                      goto LABEL_540;
                    }

                    v557 = v505 & 0xFFFFFFFFFFFFFFF0;
                    if ((v505 & 0xC) == 0)
                    {
                      v555 = &v554[v505 & 0xFFFFFFFFFFFFFFF0];
                      v556 = v505 & 0xF;
                      do
                      {
LABEL_553:
                        *v555++ = _D3.i16[0];
                        --v556;
                      }

                      while (v556);
                      goto LABEL_540;
                    }
                  }

                  else
                  {
                    v557 = 0;
                  }

                  v560 = v557 - (v505 & 0xFFFFFFFFFFFFFFFCLL);
                  v561 = v557;
                  do
                  {
                    *&v554[v561] = _Q4.i64[0];
                    v561 += 4;
                    v560 += 4;
                  }

                  while (v560);
                  if (v505 != v516)
                  {
                    v555 = &v554[v505 & 0xFFFFFFFFFFFFFFFCLL];
                    v556 = v505 & 3;
                    goto LABEL_553;
                  }

LABEL_540:
                  ++v552;
                  v554 = (v554 + v504);
                  v553 = (v553 + v504);
                }

                while (v552 != v506);
                v524 += v527 + v527 + v527;
                ++v512;
                v518 = (v518 + v519);
                v520 = (v520 + v519);
                v521 += v519;
                v522 = (v522 + v519);
                v523 += v519;
                if (v512 == v511)
                {
                  goto LABEL_615;
                }
              }

              v528 = 0;
              v529 = vdupq_lane_s16(*_Q4.i8, 0);
              v530 = v518;
              v531 = v524;
              v527 = v894;
              while (2)
              {
                if (v505 >= 0x10)
                {
                  v533 = v530;
                  v534 = v505 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v533[-1] = v529;
                    *v533 = v529;
                    v533 += 2;
                    v534 -= 16;
                  }

                  while (v534);
                  if (v505 != v513)
                  {
                    v532 = v505 & 0xFFFFFFFFFFFFFFF0;
                    v535 = 2 * (v505 & 0xFFFFFFFFFFFFFFF0);
                    v536 = v505 & 0xF;
                    if ((v505 & 0xC) != 0)
                    {
                      goto LABEL_515;
                    }

                    goto LABEL_518;
                  }
                }

                else
                {
                  v532 = 0;
LABEL_515:
                  v537 = v532 - (v505 & 0xFFFFFFFFFFFFFFFCLL);
                  v538 = 2 * v532;
                  do
                  {
                    *(v531 + v538) = v529.i64[0];
                    v538 += 8;
                    v537 += 4;
                  }

                  while (v537);
                  v535 = 2 * (v505 & 0xFFFFFFFFFFFFFFFCLL);
                  v536 = v505 & 3;
                  if (v505 != v516)
                  {
                    do
                    {
LABEL_518:
                      *(v531 + v535) = _Q4.i16[0];
                      v535 += 2;
                      --v536;
                    }

                    while (v536);
                  }
                }

                ++v528;
                v531 += v504;
                v530 = (v530 + v504);
                if (v528 == v506)
                {
                  goto LABEL_520;
                }

                continue;
              }
            }
          }
        }

        else
        {
          v562 = v894;
          if (v509 != v510 && v506)
          {
            if (v511 <= 1)
            {
              v511 = 1;
            }

            v857 = v511;
            if (v505)
            {
              v563 = v503;
              v564 = 0;
              v565 = 3 * v894;
              v566 = v504 * (v506 - 1);
              v829 = v566 + 2 * v894 + 2 * v505;
              v567 = &v884[2 * v505 * v506];
              v813 = v894 + 2 * v505 + v566;
              v822 = v567 - 4;
              v568 = v505 & 0xF7FFFFFFFFFFFFF8;
              v569 = 16 * v505;
              v570 = v894 + v503 + 6;
              v803 = (v567 - 1);
              v571 = v503;
              do
              {
                v572 = 0;
                v573 = v510[v564];
                v574 = v884;
                v575 = v571;
                do
                {
                  for (k = 0; k != v505; ++k)
                  {
                    _S1 = v573 * *&v574[2 * k];
                    __asm { FCVT            H1, S1 }

                    *(v575 + 2 * k) = LOWORD(_S1);
                  }

                  ++v572;
                  v575 += v504;
                  v574 = (v574 + v569);
                }

                while (v572 != v506);
                v578 = v510;
                v579 = v571 + v894;
                v582 = v563 + v562 + v565 * v564 < v803 && v884 + 4 < v563 + v813 + v565 * v564 || v504 < 0 || (v505 & 0x800000000000000) != 0;
                if (v505 >= 8)
                {
                  v593 = 0;
                  v594 = v884 + 4;
                  v595 = v884 + 17;
                  v596 = v579;
                  do
                  {
                    v597 = 0;
                    if (v582)
                    {
                      goto LABEL_591;
                    }

                    v598 = v595;
                    v599 = v505 & 0xF7FFFFFFFFFFFFF8;
                    do
                    {
                      v600.i32[0] = *(v598 - 16);
                      v601.i32[0] = *v598;
                      v600.i32[1] = *(v598 - 12);
                      v600.i32[2] = *(v598 - 8);
                      v600.i32[3] = *(v598 - 4);
                      v601.i32[1] = v598[4];
                      v601.i32[2] = v598[8];
                      v601.i32[3] = v598[12];
                      *(v596 + v597) = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(v600, v573)), vmulq_n_f32(v601, v573));
                      v597 += 16;
                      v598 += 32;
                      v599 -= 8;
                    }

                    while (v599);
                    v597 = v505 & 0xF7FFFFFFFFFFFFF8;
                    v563 = v503;
                    if (v505 != v568)
                    {
LABEL_591:
                      v602 = (v594 + 16 * v597);
                      do
                      {
                        v603 = *v602;
                        v602 += 4;
                        _S1 = v573 * v603;
                        __asm { FCVT            H1, S1 }

                        *(v596 + 2 * v597++) = LOWORD(_S1);
                      }

                      while (v505 != v597);
                    }

                    ++v593;
                    v596 += v504;
                    v595 = (v595 + v569);
                    v594 += v569;
                  }

                  while (v593 != v506);
                }

                else
                {
                  v583 = v884 + 13;
                  v584 = v570;
                  v585 = v506;
                  do
                  {
                    _S1 = v573 * *(v583 - 12);
                    __asm { FCVT            H1, S1 }

                    *(v584 - 3) = LOWORD(_S1);
                    if (v505 != 1)
                    {
                      _S1 = v573 * *(v583 - 8);
                      __asm { FCVT            H1, S1 }

                      *(v584 - 2) = LOWORD(_S1);
                      if (v505 != 2)
                      {
                        _S1 = v573 * *(v583 - 4);
                        __asm { FCVT            H1, S1 }

                        *(v584 - 1) = LOWORD(_S1);
                        if (v505 != 3)
                        {
                          _S1 = v573 * *v583;
                          __asm { FCVT            H1, S1 }

                          *v584 = LOWORD(_S1);
                          if (v505 != 4)
                          {
                            _S1 = v573 * v583[4];
                            __asm { FCVT            H1, S1 }

                            v584[1] = LOWORD(_S1);
                            if (v505 != 5)
                            {
                              _S1 = v573 * v583[8];
                              __asm { FCVT            H1, S1 }

                              v584[2] = LOWORD(_S1);
                              if (v505 != 6)
                              {
                                _S1 = v573 * v583[12];
                                __asm { FCVT            H1, S1 }

                                v584[3] = LOWORD(_S1);
                              }
                            }
                          }
                        }
                      }
                    }

                    v584 = (v584 + v504);
                    v583 = (v583 + v569);
                    --v585;
                  }

                  while (v585);
                }

                v605 = 0;
                v608 = v563 + 2 * v894 + v565 * v564 < v822 && (v884 + 1) < v563 + v829 + v565 * v564 || v504 < 0 || (v505 & 0x800000000000000) != 0;
                v609 = v579 + v894;
                v610 = v505 < 8 || v608;
                v611 = v884 + 1;
                v612 = (v884 + 9);
                v613 = v579 + v894;
                v510 = v578;
                do
                {
                  v614 = 0;
                  if (v610)
                  {
                    goto LABEL_612;
                  }

                  v615 = v612;
                  v616 = v505 & 0xF7FFFFFFFFFFFFF8;
                  do
                  {
                    v617.i32[0] = *(v615 - 16);
                    v618.i32[0] = *v615;
                    v617.i32[1] = *(v615 - 12);
                    v617.i32[2] = *(v615 - 8);
                    v617.i32[3] = *(v615 - 4);
                    v618.i32[1] = v615[4];
                    v618.i32[2] = v615[8];
                    v618.i32[3] = v615[12];
                    *(v613 + v614) = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(v617, v573)), vmulq_n_f32(v618, v573));
                    v614 += 16;
                    v615 += 32;
                    v616 -= 8;
                  }

                  while (v616);
                  v614 = v505 & 0xF7FFFFFFFFFFFFF8;
                  if (v505 != v568)
                  {
LABEL_612:
                    v619 = &v611[2 * v614];
                    do
                    {
                      v620 = *v619;
                      v619 += 4;
                      _S1 = v573 * v620;
                      __asm { FCVT            H1, S1 }

                      *(v613 + 2 * v614++) = LOWORD(_S1);
                    }

                    while (v505 != v614);
                  }

                  ++v605;
                  v613 += v504;
                  v612 = (v612 + v569);
                  v611 = (v611 + v569);
                }

                while (v605 != v506);
                v562 = v894;
                v571 = v609 + v894;
                ++v564;
                v570 += v565;
                v563 = v503;
              }

              while (v564 != v857);
            }
          }
        }

LABEL_615:

        v16 = 0;
        goto LABEL_76;
      }
    }
  }

  v94 = v805;
  v95 = [v94 data];
  v96 = [v94 batchBytes];
  v97 = [v94 channelBytes];
  v800 = [v94 channelBytes];
  v98 = [v94 rowBytes];
  v99 = [v94 width];
  v830 = [v94 height];
  v101 = v96 * a6;
  v102 = v97 * a5;
  v103 = v95 + v96 * a6 + v97 * a5;
  v105 = v789->_trigFactors.__begin_;
  v104 = v789->_trigFactors.__end_;
  v763 = *v785;
  v106 = v104 - v105;
  v787 = v94;
  v792 = v105;
  if (v785[1] - *v785 == 16)
  {
    if (v104 == v105)
    {
      goto LABEL_382;
    }

    if (v830)
    {
      if (v106 <= 1)
      {
        v107 = 1;
      }

      else
      {
        v107 = v104 - v105;
      }

      if (v99)
      {
        v108 = 0;
        LODWORD(v109) = HIDWORD(*v763);
        v824 = *v763;
        LODWORD(v110) = v763[1];
        v111 = v99 & 0xFFFFFFFFFFFFFFF8;
        v112 = v99 & 0xFFFFFFFFFFFFFFF8;
        v113 = v101 + v102 + v95;
        v114 = (v113 + 16);
        v815 = 3 * v800;
        v887 = (v113 + 12);
        v115 = v113 + 16 + v800;
        v116 = v113 + 16 + 2 * v800;
        v846 = v107;
        while (1)
        {
          v117 = v105[v108];
          *v118.i32 = sinf(*&v824 * v117);
          if (v99 > 7)
          {
            v121 = vdupq_lane_s32(v118, 0);
            if (v99 == v111)
            {
              v122 = 0;
              v123 = v114;
              do
              {
                v124 = v123;
                v125 = v99;
                do
                {
                  v124[-1] = v121;
                  *v124 = v121;
                  v124 += 2;
                  v125 -= 8;
                }

                while (v125);
                ++v122;
                v123 = (v123 + v98);
              }

              while (v122 != v830);
            }

            else
            {
              v126 = 0;
              v127 = v114;
              v128 = v103;
              do
              {
                v129 = v127;
                v130 = v99 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v129[-1] = v121;
                  *v129 = v121;
                  v129 += 2;
                  v130 -= 8;
                }

                while (v130);
                v131 = (v128 + v112 * 4);
                v132 = v99 & 7;
                do
                {
                  *v131++ = v118.i32[0];
                  --v132;
                }

                while (v132);
                ++v126;
                v128 += v98;
                v127 = (v127 + v98);
              }

              while (v126 != v830);
            }
          }

          else
          {
            v119 = v887;
            v120 = v830;
            do
            {
              *(v119 - 3) = v118.i32[0];
              if (v99 != 1)
              {
                *(v119 - 2) = v118.i32[0];
                if (v99 != 2)
                {
                  *(v119 - 1) = v118.i32[0];
                  if (v99 != 3)
                  {
                    *v119 = v118.i32[0];
                    if (v99 != 4)
                    {
                      v119[1] = v118.i32[0];
                      if (v99 != 5)
                      {
                        v119[2] = v118.i32[0];
                        if (v99 != 6)
                        {
                          v119[3] = v118.i32[0];
                        }
                      }
                    }
                  }
                }
              }

              v119 = (v119 + v98);
              --v120;
            }

            while (v120);
          }

          *v133.i32 = sinf(v109 * v117);
          v134 = 0;
          v135 = vdupq_lane_s32(v133, 0);
          v136 = v115;
          v137 = (v103 + v800);
          do
          {
            v138 = v137;
            v139 = v99;
            if (v99 < 8)
            {
              goto LABEL_116;
            }

            v140 = v136;
            v141 = v99 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v140[-1] = v135;
              *v140 = v135;
              v140 += 2;
              v141 -= 8;
            }

            while (v141);
            if (v99 != v111)
            {
              v138 = &v137[v112];
              v139 = v99 & 7;
              do
              {
LABEL_116:
                *v138++ = v133.i32[0];
                --v139;
              }

              while (v139);
            }

            ++v134;
            v137 = (v137 + v98);
            v136 = (v136 + v98);
          }

          while (v134 != v830);
          *v142.i32 = sinf(v110 * v117);
          v143 = 0;
          v144 = vdupq_lane_s32(v142, 0);
          v145 = v116;
          v146 = (v103 + v800 + v800);
          v105 = v792;
          do
          {
            v147 = v146;
            v148 = v99;
            if (v99 < 8)
            {
              goto LABEL_125;
            }

            v149 = v145;
            v150 = v99 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v149[-1] = v144;
              *v149 = v144;
              v149 += 2;
              v150 -= 8;
            }

            while (v150);
            if (v99 != v111)
            {
              v147 = &v146[v112];
              v148 = v99 & 7;
              do
              {
LABEL_125:
                *v147++ = v142.i32[0];
                --v148;
              }

              while (v148);
            }

            ++v143;
            v146 = (v146 + v98);
            v145 = (v145 + v98);
          }

          while (v143 != v830);
          v103 += v800 + v800 + v800;
          ++v108;
          v114 = (v114 + v815);
          v887 = (v887 + v815);
          v115 += v815;
          v116 += v815;
          if (v108 == v846)
          {
            goto LABEL_382;
          }
        }
      }

      v267 = v800 * v107;
LABEL_381:
      v103 += 3 * v267;
      goto LABEL_382;
    }

LABEL_242:
    if (v106 <= 1)
    {
      v266 = 1;
    }

    else
    {
      v266 = v104 - v105;
    }

    v267 = v800 * v266;
    goto LABEL_381;
  }

  if (v104 == v105)
  {
    goto LABEL_382;
  }

  if (!v830)
  {
    goto LABEL_242;
  }

  if (v106 <= 1)
  {
    v218 = 1;
  }

  else
  {
    v218 = v104 - v105;
  }

  if (!v99)
  {
    v267 = v800 * v218;
    goto LABEL_381;
  }

  v219 = 0;
  v755 = 3 * v800;
  v220 = &v763[2 * v99 * v830];
  v747 = v220 - 1;
  v751 = v220 - 4;
  v221 = v95 + v800 + v101 + v102;
  v222 = v98 * (v830 - 1) + 4 * v99;
  v743 = v221;
  v739 = v221 + v222;
  v731 = v103 + v222 + 2 * v800;
  v735 = v103 + 2 * v800;
  v825 = v99 & 0xF7FFFFFFFFFFFFFELL;
  v223 = 16 * v99;
  v759 = v218;
  v809 = v98;
  while (2)
  {
    v224 = 0;
    v225 = v743 + v755 * v219;
    v817 = v755 * v219;
    v776 = v735 + v755 * v219;
    v782 = v219;
    *&v100 = v105[v219];
    v226 = v763;
    v227 = v103;
    v889 = v100;
    do
    {
      for (m = 0; m != v99; ++m)
      {
        v229 = sinf(*&v100 * *&v226[2 * m]);
        LODWORD(v100) = v889;
        *(v227 + 4 * m) = v229;
      }

      ++v224;
      v227 += v98;
      v226 = (v226 + v223);
    }

    while (v224 != v830);
    v230 = 0;
    v233 = v225 < v747 && v763 + 4 < v739 + v817 || v98 < 0 || (v99 & 0x800000000000000) != 0;
    v234 = (v103 + v800);
    v235 = v99 < 6 || v233;
    v236 = v763 + 4;
    v237 = v763 + 5;
    v768 = v234;
    do
    {
      if (v235)
      {
        v238 = 0;
LABEL_217:
        v246 = v99 - v238;
        v247 = 4 * v238;
        do
        {
          v248 = sinf(*&v100 * *&v236[4 * v247]);
          LODWORD(v100) = v889;
          *(v234 + v247) = v248;
          v247 += 4;
          --v246;
        }

        while (v246);
        goto LABEL_211;
      }

      v239 = v235;
      v240 = v237;
      v241 = v234;
      v242 = v99 & 0xF7FFFFFFFFFFFFFELL;
      do
      {
        v243.i32[0] = *(v240 - 4);
        v243.i32[1] = *v240;
        v244 = vmul_n_f32(v243, *&v100);
        v849 = v244.f32[0];
        v868 = sinf(v244.f32[1]);
        *&v245 = sinf(v849);
        LODWORD(v100) = v889;
        *(&v245 + 1) = v868;
        *v241++ = v245;
        v240 += 8;
        v242 -= 2;
      }

      while (v242);
      v238 = v99 & 0xF7FFFFFFFFFFFFFELL;
      v235 = v239;
      v98 = v809;
      if (v99 != v825)
      {
        goto LABEL_217;
      }

LABEL_211:
      ++v230;
      v234 = (v234 + v98);
      v237 = (v237 + v223);
      v236 += v223;
    }

    while (v230 != v830);
    v249 = 0;
    v250 = v763 + 1;
    v253 = v776 < v751 && (v763 + 1) < v731 + v817 || v98 < 0 || (v99 & 0x800000000000000) != 0;
    v254 = (v768 + v800);
    if (v99 < 6)
    {
      v253 = 1;
    }

    v818 = v253;
    v255 = (v763 + 3);
    while (2)
    {
      if (v818)
      {
        v256 = 0;
        goto LABEL_238;
      }

      v257 = v255;
      v258 = v254;
      v259 = v99 & 0xF7FFFFFFFFFFFFFELL;
      do
      {
        v260.i32[0] = *(v257 - 4);
        v260.i32[1] = *v257;
        v261 = vmul_n_f32(v260, *&v100);
        v850 = v261.f32[0];
        v869 = sinf(v261.f32[1]);
        *&v262 = sinf(v850);
        v100 = v889;
        *(&v262 + 1) = v869;
        *v258++ = v262;
        v257 += 8;
        v259 -= 2;
      }

      while (v259);
      v256 = v99 & 0xF7FFFFFFFFFFFFFELL;
      if (v99 != v825)
      {
LABEL_238:
        v263 = v99 - v256;
        v264 = 2 * v256;
        do
        {
          v265 = sinf(*&v100 * *&v250[v264]);
          v100 = v889;
          *(v254 + v264 * 2) = v265;
          v264 += 2;
          --v263;
        }

        while (v263);
      }

      ++v249;
      v254 = (v254 + v98);
      v255 = (v255 + v223);
      v250 = (v250 + v223);
      if (v249 != v830)
      {
        continue;
      }

      break;
    }

    v105 = v792;
    v103 = v768 + v800 + v800;
    v219 = v782 + 1;
    if (v782 + 1 != v759)
    {
      continue;
    }

    break;
  }

LABEL_382:
  v400 = [v787 channelBytes];
  v401 = [v787 rowBytes];
  v402 = [v787 width];
  v844 = [v787 height];
  v405 = v789->_trigFactors.__begin_;
  v404 = v789->_trigFactors.__end_;
  v761 = *v785;
  v406 = v404 - v405;
  v812 = v400;
  v802 = v405;
  if (v785[1] - *v785 == 16)
  {
    if (v404 == v405)
    {
      goto LABEL_619;
    }

    if (v844)
    {
      if (v406 <= 1)
      {
        v407 = 1;
      }

      else
      {
        v407 = v404 - v405;
      }

      if (v402)
      {
        v408 = 0;
        v409 = v402 & 0xFFFFFFFFFFFFFFF8;
        v410 = v402 & 0xFFFFFFFFFFFFFFF8;
        LODWORD(v411) = HIDWORD(*v761);
        v827 = *v761;
        LODWORD(v412) = v761[1];
        v796 = 3 * v400;
        v880 = (v103 + 12);
        v413 = v103 + 16 + v400;
        v892 = v103 + 16;
        v414 = v103 + 16 + 2 * v400;
        v854 = v407;
        while (1)
        {
          v415 = v405[v408];
          *v416.i32 = cosf(*&v827 * v415);
          if (v402 > 7)
          {
            v419 = vdupq_lane_s32(v416, 0);
            if (v402 == v409)
            {
              v420 = 0;
              v421 = v892;
              do
              {
                v422 = v421;
                v423 = v402;
                do
                {
                  v422[-1] = v419;
                  *v422 = v419;
                  v422 += 2;
                  v423 -= 8;
                }

                while (v423);
                ++v420;
                v421 = (v421 + v401);
              }

              while (v420 != v844);
            }

            else
            {
              v424 = 0;
              v425 = v892;
              v426 = v103;
              do
              {
                v427 = v425;
                v428 = v402 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v427[-1] = v419;
                  *v427 = v419;
                  v427 += 2;
                  v428 -= 8;
                }

                while (v428);
                v429 = 4 * (v402 & 0xFFFFFFFFFFFFFFF8);
                v430 = v402 & 7;
                do
                {
                  *(v426 + v429) = v416.i32[0];
                  v429 += 4;
                  --v430;
                }

                while (v430);
                ++v424;
                v426 += v401;
                v425 = (v425 + v401);
              }

              while (v424 != v844);
            }
          }

          else
          {
            v417 = v880;
            v418 = v844;
            do
            {
              *(v417 - 3) = v416.i32[0];
              if (v402 != 1)
              {
                *(v417 - 2) = v416.i32[0];
                if (v402 != 2)
                {
                  *(v417 - 1) = v416.i32[0];
                  if (v402 != 3)
                  {
                    *v417 = v416.i32[0];
                    if (v402 != 4)
                    {
                      v417[1] = v416.i32[0];
                      if (v402 != 5)
                      {
                        v417[2] = v416.i32[0];
                        if (v402 != 6)
                        {
                          v417[3] = v416.i32[0];
                        }
                      }
                    }
                  }
                }
              }

              v417 = (v417 + v401);
              --v418;
            }

            while (v418);
          }

          v431 = v103 + v400;
          *v432.i32 = cosf(v411 * v415);
          v433 = 0;
          v434 = vdupq_lane_s32(v432, 0);
          v435 = v413;
          v436 = v431;
          do
          {
            v437 = v436;
            v438 = v402;
            if (v402 < 8)
            {
              goto LABEL_420;
            }

            v439 = v435;
            v440 = v402 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v439[-1] = v434;
              *v439 = v434;
              v439 += 2;
              v440 -= 8;
            }

            while (v440);
            if (v402 != v409)
            {
              v437 = &v436[v410];
              v438 = v402 & 7;
              do
              {
LABEL_420:
                *v437++ = v432.i32[0];
                --v438;
              }

              while (v438);
            }

            ++v433;
            v436 = (v436 + v401);
            v435 = (v435 + v401);
          }

          while (v433 != v844);
          v441 = (v431 + v812);
          *v442.i32 = cosf(v412 * v415);
          v443 = 0;
          v444 = vdupq_lane_s32(v442, 0);
          v445 = v414;
          v446 = v441;
          do
          {
            v447 = v446;
            v448 = v402;
            if (v402 < 8)
            {
              goto LABEL_429;
            }

            v449 = v445;
            v450 = v402 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v449[-1] = v444;
              *v449 = v444;
              v449 += 2;
              v450 -= 8;
            }

            while (v450);
            if (v402 != v409)
            {
              v447 = &v446[v410];
              v448 = v402 & 7;
              do
              {
LABEL_429:
                *v447++ = v442.i32[0];
                --v448;
              }

              while (v448);
            }

            ++v443;
            v446 = (v446 + v401);
            v445 = (v445 + v401);
          }

          while (v443 != v844);
          v103 = v441 + v812;
          v400 = v812;
          ++v408;
          v892 += v796;
          v880 = (v880 + v796);
          v413 += v796;
          v414 += v796;
          v405 = v802;
          if (v408 == v854)
          {
            goto LABEL_619;
          }
        }
      }

      v502 = v400 * v407;
LABEL_618:
      v103 += 3 * v502;
      goto LABEL_619;
    }

LABEL_487:
    if (v406 <= 1)
    {
      v406 = 1;
    }

    v502 = v400 * v406;
    goto LABEL_618;
  }

  if (v404 == v405)
  {
    goto LABEL_619;
  }

  if (!v844)
  {
    goto LABEL_487;
  }

  if (v406 <= 1)
  {
    v451 = 1;
  }

  else
  {
    v451 = v404 - v405;
  }

  if (!v402)
  {
    v502 = v400 * v451;
    goto LABEL_618;
  }

  v452 = 0;
  v749 = 3 * v400;
  v453 = v401 * (v844 - 1) + 4 * v402;
  v753 = 2 * v400;
  v745 = v453 + 2 * v400;
  v454 = &v761[2 * v402 * v844];
  v737 = v453 + v400;
  v741 = v454 - 4;
  v733 = v454 - 1;
  v821 = v401;
  v828 = v402 & 0xF7FFFFFFFFFFFFFELL;
  v455 = 16 * v402;
  v797 = v103;
  v757 = v451;
  while (2)
  {
    v456 = 0;
    v457 = v400 + v749 * v452;
    v458 = v737 + v749 * v452;
    v881 = v753 + v749 * v452;
    v779 = v745 + v749 * v452;
    v784 = v452;
    *&v403 = v405[v452];
    v459 = v761;
    v460 = v103;
    v893 = v403;
    do
    {
      for (n = 0; n != v402; ++n)
      {
        v462 = cosf(*&v403 * *&v459[2 * n]);
        LODWORD(v403) = v893;
        *(v103 + 4 * n) = v462;
      }

      ++v456;
      v103 += v401;
      v459 = (v459 + v455);
    }

    while (v456 != v844);
    v463 = 0;
    v464 = v797 + v458;
    v465 = v761 + 5;
    v466 = v761 + 4;
    v469 = v797 + v457 < v733 && v761 + 4 < v464 || v401 < 0 || (v402 & 0x800000000000000) != 0;
    v766 = v797 + v881;
    v470 = (v460 + v812);
    v471 = v402 < 6 || v469;
    v771 = v470;
    while (2)
    {
      if (v471)
      {
        v472 = 0;
        goto LABEL_462;
      }

      v473 = v471;
      v474 = v465;
      v475 = v470;
      v476 = v402 & 0xF7FFFFFFFFFFFFFELL;
      do
      {
        v477.i32[0] = *(v474 - 4);
        v477.i32[1] = *v474;
        v478 = vmul_n_f32(v477, *&v403);
        v855 = v478.f32[0];
        v882 = cosf(v478.f32[1]);
        *&v479 = cosf(v855);
        LODWORD(v403) = v893;
        *(&v479 + 1) = v882;
        *v475++ = v479;
        v474 += 8;
        v476 -= 2;
      }

      while (v476);
      v472 = v402 & 0xF7FFFFFFFFFFFFFELL;
      v471 = v473;
      v401 = v821;
      if (v402 != v828)
      {
LABEL_462:
        v480 = v402 - v472;
        v481 = 4 * v472;
        do
        {
          v482 = cosf(*&v403 * *&v466[4 * v481]);
          LODWORD(v403) = v893;
          *(v470 + v481) = v482;
          v481 += 4;
          --v480;
        }

        while (v480);
      }

      ++v463;
      v470 = (v470 + v401);
      v465 = (v465 + v455);
      v466 += v455;
      if (v463 != v844)
      {
        continue;
      }

      break;
    }

    v483 = 0;
    v484 = v761 + 1;
    v487 = v766 < v741 && (v761 + 1) < v797 + v779 || v401 < 0 || (v402 & 0x800000000000000) != 0;
    v488 = (v771 + v812);
    v489 = v402 < 6 || v487;
    v490 = (v761 + 3);
    while (2)
    {
      if (v489)
      {
        v491 = 0;
        goto LABEL_484;
      }

      v492 = v489;
      v493 = v490;
      v494 = v488;
      v495 = v402 & 0xF7FFFFFFFFFFFFFELL;
      do
      {
        v496.i32[0] = *(v493 - 4);
        v496.i32[1] = *v493;
        v497 = vmul_n_f32(v496, *&v403);
        v856 = v497.f32[0];
        v883 = cosf(v497.f32[1]);
        *&v498 = cosf(v856);
        v403 = v893;
        *(&v498 + 1) = v883;
        *v494++ = v498;
        v493 += 8;
        v495 -= 2;
      }

      while (v495);
      v491 = v402 & 0xF7FFFFFFFFFFFFFELL;
      v489 = v492;
      v401 = v821;
      if (v402 != v828)
      {
LABEL_484:
        v499 = v402 - v491;
        v500 = 2 * v491;
        do
        {
          v501 = cosf(*&v403 * *&v484[v500]);
          v403 = v893;
          *(v488 + v500 * 2) = v501;
          v500 += 2;
          --v499;
        }

        while (v499);
      }

      ++v483;
      v488 = (v488 + v401);
      v490 = (v490 + v455);
      v484 = (v484 + v455);
      if (v483 != v844)
      {
        continue;
      }

      break;
    }

    v400 = v812;
    v103 = v771 + v812 + v812;
    v452 = v784 + 1;
    v405 = v802;
    if (v784 + 1 != v757)
    {
      continue;
    }

    break;
  }

LABEL_619:
  v622 = v787;
  v623 = [v787 channelBytes];
  v624 = [v787 rowBytes];
  v625 = [v787 width];
  v626 = [v787 height];
  v629 = v103;
  v631 = v789->_valuesFactor.__begin_;
  v630 = v789->_valuesFactor.__end_;
  v885 = *v785;
  v632 = v630 - v631;
  if (v785[1] - *v785 == 16)
  {
    if (v630 == v631 || !v626)
    {
      goto LABEL_730;
    }

    if (v632 <= 1)
    {
      v632 = 1;
    }

    if (!v625)
    {
      goto LABEL_730;
    }

    v633 = 0;
    v634 = v625 & 0xFFFFFFFFFFFFFFF8;
    v635 = *v885;
    LODWORD(v636) = HIDWORD(*v885);
    v637 = v625 & 0xFFFFFFFFFFFFFFF8;
    v638 = v103 + 16;
    LODWORD(v639) = v885[1];
    v640 = 3 * v623;
    v641 = (v103 + 12);
    v642 = v103 + 16 + v623;
    v643 = v103 + 16 + 2 * v623;
    while (2)
    {
      *v627.i32 = v631[v633];
      *v628.i32 = *&v635 * *v627.i32;
      if (v625 > 7)
      {
        v646 = vdupq_lane_s32(*v628.i8, 0);
        if (v625 == v634)
        {
          v647 = 0;
          v648 = v638;
          do
          {
            v649 = v648;
            v650 = v625;
            do
            {
              v649[-1] = v646;
              *v649 = v646;
              v649 += 2;
              v650 -= 8;
            }

            while (v650);
            ++v647;
            v648 = (v648 + v624);
          }

          while (v647 != v626);
        }

        else
        {
          v651 = 0;
          v652 = v638;
          v653 = v629;
          do
          {
            v654 = v652;
            v655 = v625 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v654[-1] = v646;
              *v654 = v646;
              v654 += 2;
              v655 -= 8;
            }

            while (v655);
            v656 = 4 * (v625 & 0xFFFFFFFFFFFFFFF8);
            v657 = v625 & 7;
            do
            {
              *(v653 + v656) = v628.i32[0];
              v656 += 4;
              --v657;
            }

            while (v657);
            ++v651;
            v653 += v624;
            v652 = (v652 + v624);
          }

          while (v651 != v626);
        }
      }

      else
      {
        v644 = v641;
        v645 = v626;
        do
        {
          *(v644 - 3) = v628.i32[0];
          if (v625 != 1)
          {
            *(v644 - 2) = v628.i32[0];
            if (v625 != 2)
            {
              *(v644 - 1) = v628.i32[0];
              if (v625 != 3)
              {
                *v644 = v628.i32[0];
                if (v625 != 4)
                {
                  v644[1] = v628.i32[0];
                  if (v625 != 5)
                  {
                    v644[2] = v628.i32[0];
                    if (v625 != 6)
                    {
                      v644[3] = v628.i32[0];
                    }
                  }
                }
              }
            }
          }

          v644 = (v644 + v624);
          --v645;
        }

        while (v645);
      }

      v658 = 0;
      *v628.i32 = v636 * *v627.i32;
      v659 = vdupq_lane_s32(*v628.i8, 0);
      v660 = v642;
      v661 = (v629 + v623);
      while (2)
      {
        v662 = v661;
        v663 = v625;
        if (v625 < 8)
        {
          do
          {
LABEL_656:
            *v662++ = v628.i32[0];
            --v663;
          }

          while (v663);
        }

        else
        {
          v664 = v660;
          v665 = v625 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v664[-1] = v659;
            *v664 = v659;
            v664 += 2;
            v665 -= 8;
          }

          while (v665);
          if (v625 != v634)
          {
            v662 = &v661[v637];
            v663 = v625 & 7;
            goto LABEL_656;
          }
        }

        ++v658;
        v661 = (v661 + v624);
        v660 = (v660 + v624);
        if (v658 != v626)
        {
          continue;
        }

        break;
      }

      v666 = 0;
      *v627.i32 = v639 * *v627.i32;
      v628 = vdupq_lane_s32(v627, 0);
      v667 = v643;
      v668 = (v629 + v623 + v623);
LABEL_660:
      v669 = v668;
      v670 = v625;
      if (v625 < 8)
      {
        do
        {
LABEL_665:
          *v669++ = v627.i32[0];
          --v670;
        }

        while (v670);
      }

      else
      {
        v671 = v667;
        v672 = v625 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v671[-1] = v628;
          *v671 = v628;
          v671 += 2;
          v672 -= 8;
        }

        while (v672);
        if (v625 != v634)
        {
          v669 = &v668[v637];
          v670 = v625 & 7;
          goto LABEL_665;
        }
      }

      ++v666;
      v668 = (v668 + v624);
      v667 = (v667 + v624);
      if (v666 == v626)
      {
        v629 += v623 + v623 + v623;
        ++v633;
        v638 += v640;
        v641 = (v641 + v640);
        v642 += v640;
        v643 += v640;
        if (v633 == v632)
        {
          goto LABEL_730;
        }

        continue;
      }

      goto LABEL_660;
    }
  }

  if (v630 == v631 || !v626)
  {
    goto LABEL_730;
  }

  v673 = v632 <= 1 ? 1 : v630 - v631;
  v858 = v673;
  if (!v625)
  {
    goto LABEL_730;
  }

  v674 = 0;
  v675 = v885 + 4;
  v676 = 3 * v623;
  v677 = v624 * (v626 - 1) + 4 * v625;
  v814 = v677 + 2 * v623;
  v678 = &v885[2 * v625 * v626];
  v804 = v678 - 4;
  v798 = v677 + v623;
  v790 = (v678 - 1);
  v679 = v625 & 0xF7FFFFFFFFFFFFF8;
  v680 = 16 * v625;
  v681 = v623 + v103 + 16;
  v682 = v623 + v103 + 12;
  v683 = 2 * v623 + v103 + 16;
  v684 = v103;
  while (2)
  {
    v685 = 0;
    v686 = v631[v674];
    v687 = v885;
    v688 = v684;
    do
    {
      for (ii = 0; ii != v625; ++ii)
      {
        *(v688 + 4 * ii) = v686 * *&v687[2 * ii];
      }

      ++v685;
      v688 += v624;
      v687 = (v687 + v680);
    }

    while (v685 != v626);
    v690 = v684 + v623;
    v693 = v629 + v623 + v676 * v674 < v790 && v675 < v629 + v798 + v676 * v674 || v624 < 0 || (v625 & 0x800000000000000) != 0;
    if (v625 >= 8)
    {
      v697 = 0;
      v698 = v675;
      v699 = v885 + 17;
      v700 = v681;
      v701 = v690;
      while (1)
      {
        if (v693)
        {
          v702 = 0;
        }

        else
        {
          v703 = v699;
          v704 = v700;
          v705 = v625 & 0xF7FFFFFFFFFFFFF8;
          do
          {
            v706.i32[0] = *(v703 - 16);
            v706.i32[1] = *(v703 - 12);
            v706.i32[2] = *(v703 - 8);
            v706.i32[3] = *(v703 - 4);
            v707.i32[0] = *v703;
            v707.i32[1] = v703[4];
            v707.i32[2] = v703[8];
            v707.i32[3] = v703[12];
            v704[-1] = vmulq_n_f32(v706, v686);
            *v704 = vmulq_n_f32(v707, v686);
            v704 += 2;
            v703 += 32;
            v705 -= 8;
          }

          while (v705);
          v702 = v625 & 0xF7FFFFFFFFFFFFF8;
          if (v625 == v679)
          {
            goto LABEL_699;
          }
        }

        v708 = v625 - v702;
        v709 = 4 * v702;
        do
        {
          *(v701 + v709) = v686 * *(v698 + 4 * v709);
          v709 += 4;
          --v708;
        }

        while (v708);
LABEL_699:
        ++v697;
        v701 += v624;
        v700 = (v700 + v624);
        v699 = (v699 + v680);
        v698 += v680;
        if (v697 == v626)
        {
          goto LABEL_708;
        }
      }
    }

    v694 = v885 + 13;
    v695 = v682;
    v696 = v626;
    do
    {
      *(v695 - 3) = v686 * *(v694 - 12);
      if (v625 != 1)
      {
        *(v695 - 2) = v686 * *(v694 - 8);
        if (v625 != 2)
        {
          *(v695 - 1) = v686 * *(v694 - 4);
          if (v625 != 3)
          {
            *v695 = v686 * *v694;
            if (v625 != 4)
            {
              v695[1] = v686 * v694[4];
              if (v625 != 5)
              {
                v695[2] = v686 * v694[8];
                if (v625 != 6)
                {
                  v695[3] = v686 * v694[12];
                }
              }
            }
          }
        }
      }

      v695 = (v695 + v624);
      v694 = (v694 + v680);
      --v696;
    }

    while (v696);
LABEL_708:
    v710 = 0;
    v711 = v885 + 1;
    v714 = v629 + 2 * v623 + v676 * v674 < v804 && (v885 + 1) < v629 + v814 + v676 * v674 || v624 < 0 || (v625 & 0x800000000000000) != 0;
    v715 = v690 + v623;
    v716 = v625 < 8 || v714;
    v717 = (v885 + 9);
    v718 = v683;
    v719 = v690 + v623;
    v675 = v885 + 4;
    while (2)
    {
      if (v716)
      {
        v720 = 0;
        goto LABEL_727;
      }

      v721 = v717;
      v722 = v718;
      v723 = v625 & 0xF7FFFFFFFFFFFFF8;
      do
      {
        v724.i32[0] = *(v721 - 16);
        v724.i32[1] = *(v721 - 12);
        v724.i32[2] = *(v721 - 8);
        v724.i32[3] = *(v721 - 4);
        v725.i32[0] = *v721;
        v725.i32[1] = v721[4];
        v725.i32[2] = v721[8];
        v725.i32[3] = v721[12];
        v722[-1] = vmulq_n_f32(v724, v686);
        *v722 = vmulq_n_f32(v725, v686);
        v722 += 2;
        v721 += 32;
        v723 -= 8;
      }

      while (v723);
      v720 = v625 & 0xF7FFFFFFFFFFFFF8;
      if (v625 != v679)
      {
LABEL_727:
        v726 = v625 - v720;
        v727 = 2 * v720;
        do
        {
          *(v719 + v727 * 2) = v686 * *&v711[v727];
          v727 += 2;
          --v726;
        }

        while (v726);
      }

      ++v710;
      v719 += v624;
      v718 = (v718 + v624);
      v717 = (v717 + v680);
      v711 = (v711 + v680);
      if (v710 != v626)
      {
        continue;
      }

      break;
    }

    v684 = v715 + v623;
    ++v674;
    v681 += v676;
    v682 += v676;
    v683 += v676;
    v622 = v787;
    if (v674 != v858)
    {
      continue;
    }

    break;
  }

LABEL_730:

  v16 = 0;
LABEL_76:
  v15 = v805;
LABEL_77:

  return v16;
}

- (ADEmbeddings)initWithBands:(unsigned int)a3 maxResolution:(float)a4 sourceFactor:(float)a5
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a3)
  {
    operator new();
  }

  *&v5 = a5;
  result = [(ADEmbeddings *)self initWithFrequencies:&__p sourceFactor:v5];
  if (__p)
  {
    v9 = __p;
    v7 = result;
    operator delete(__p);
    return v7;
  }

  return result;
}

- (ADEmbeddings)initWithFrequencies:(const void *)a3 sourceFactor:(float)a4
{
  v21.receiver = self;
  v21.super_class = ADEmbeddings;
  v6 = [(ADEmbeddings *)&v21 init];
  if (v6)
  {
    p_trigFactors = &v6->_trigFactors;
    if (&v6->_trigFactors != a3)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v6->_trigFactors, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 2);
    }

    v8 = *(a3 + 1) - *a3;
    if (v8)
    {
      v9 = v8 >> 2;
      v10 = a4 * 3.14159265;
      begin = p_trigFactors->__begin_;
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      if (v9 <= 7)
      {
        v13 = 0;
LABEL_13:
        v17 = v12 - v13;
        v18 = begin + v13;
        do
        {
          v19 = v10 * *v18;
          *v18++ = v19;
          --v17;
        }

        while (v17);
        goto LABEL_15;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFF8;
      v14 = begin + 2;
      v15 = v12 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v16 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v14), v10)), vmulq_n_f64(vcvt_hight_f64_f32(*v14->f32), v10));
        *v14[-2].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v14[-2]), v10)), vmulq_n_f64(vcvt_hight_f64_f32(*v14[-2].f32), v10));
        *v14->f32 = v16;
        v14 += 4;
        v15 -= 8;
      }

      while (v15);
      if (v9 != v13)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    operator new();
  }

  return 0;
}

@end