@interface ADReprojection
- (ADReprojection)initWithCapacity:(unint64_t)a3 streakingInfill:(unint64_t)a4;
- (BOOL)isCalibrationUndistorted:(id)a3;
- (BOOL)updateCapacity:(unint64_t)a3;
- (int)vectorizeCameraPixels:(__CVBuffer *)a3;
- (int64_t)updateWarpWithWarpedDepthBuffer:(__CVBuffer *)a3 dimensions:(CGSize)a4 validPixels:(unint64_t)a5;
- (int64_t)warpImage:(__CVBuffer *)a3 intoImage:(__CVBuffer *)a4;
- (uint64_t)updateWarpMapWithDepth:(__n128)a3 srcCalibration:(__n128)a4 dstCalibration:(__n128)a5 sourceToDestinationTransform:(uint64_t)a6 warpedDepth:(__CVBuffer *)a7;
- (uint64_t)updateWarpMapWithDepth:(__n128)a3 srcCalibration:(__n128)a4 dstCalibration:(__n128)a5 sourceToDestinationTransform:(uint64_t)a6 warpedDepth:(__CVBuffer *)a7 warpMap:(void *)a8;
- (uint64_t)updateWarpMapWithDepth:(float32x4_t)a3 srcCalibration:(float32x4_t)a4 dstCalibration:(float32x4_t)a5 poseTransform:(uint64_t)a6 warpedDepth:(uint64_t)a7;
- (uint64_t)warpDepth:(float32x4_t)a3 srcCalibration:(float32x4_t)a4 dstCalibration:(float32x4_t)a5 poseTransform:(uint64_t)a6 warpedDepth:(uint64_t)a7;
- (void)calculateWarpedPixelsFromSrcCalibration:(id)a3 dstCalibration:(id)a4 sourceToDestinationTransform:(id *)a5 validPixels:(unint64_t)a6;
- (void)dealloc;
- (void)deallocateBuffers;
@end

@implementation ADReprojection

- (int64_t)warpImage:(__CVBuffer *)a3 intoImage:(__CVBuffer *)a4
{
  v164 = *MEMORY[0x277D85DE8];
  if (self->_singlePassOptimizationUsed)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    if (PixelFormatType > 1380410944)
    {
      switch(PixelFormatType)
      {
        case 1380410945:
          warpMap = self->_warpMap;
          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(warpMap, 1uLL);
          CVPixelBufferLockBaseAddress(a4, 0);
          memset(&buf, 0, sizeof(buf));
          v82 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
          memset(&v163, 0, sizeof(v163));
          PixelBufferUtils::asVImageBuffer(a4, *v82, &v163);
          memset(&v161, 0, sizeof(v161));
          PixelBufferUtils::asVImageBuffer(warpMap, *v82, &v161);
          rowBytes = v163.rowBytes;
          data = v163.data;
          height = v163.height;
          bzero(v163.data, v163.height * v163.rowBytes);
          v86 = buf.height;
          if (buf.height)
          {
            v87 = 0;
            v88 = v161.data;
            v89 = v161.rowBytes;
            v90 = buf.data;
            width = v163.width;
            v92 = *&buf.width;
            v93 = buf.width;
            do
            {
              if (v93)
              {
                v94 = 0;
                v95 = v90;
                do
                {
                  v96 = &v88[4 * v94];
                  v97 = *v96;
                  if ((*v96 & 0x8000) == 0)
                  {
                    v98 = *(v96 + 1);
                    if ((v98 & 0x8000) == 0 && width > v97 && height > v98)
                    {
                      *&data[16 * v97 + rowBytes * v98] = *v95;
                    }
                  }

                  ++v94;
                  ++v95;
                }

                while (v94 < v92);
                v93 = v92;
              }

              ++v87;
              v90 += *(&v92 + 1);
              v88 += v89;
            }

            while (v87 < v86);
          }

          goto LABEL_91;
        case 1717855600:
          warpMap = self->_warpMap;
          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(warpMap, 1uLL);
          CVPixelBufferLockBaseAddress(a4, 0);
          memset(&buf, 0, sizeof(buf));
          v102 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
          memset(&v163, 0, sizeof(v163));
          PixelBufferUtils::asVImageBuffer(a4, *v102, &v163);
          memset(&v161, 0, sizeof(v161));
          PixelBufferUtils::asVImageBuffer(warpMap, *v102, &v161);
          v103 = v163.rowBytes;
          v104 = v163.data;
          v105 = v163.height;
          bzero(v163.data, v163.height * v163.rowBytes);
          v106 = buf.height;
          if (buf.height)
          {
            v107 = 0;
            v108 = v161.data;
            v109 = v161.rowBytes;
            v110 = buf.data;
            v111 = v163.width;
            v112 = *&buf.width;
            do
            {
              v113 = v108;
              v114 = v110;
              for (i = v112; i; --i)
              {
                v116 = *v113;
                if ((*v113 & 0x8000) == 0)
                {
                  v117 = v113[1];
                  if ((v117 & 0x8000) == 0 && v111 > v116 && v105 > v117)
                  {
                    *&v104[4 * v116 + v103 * v117] = *v114;
                  }
                }

                ++v114;
                v113 += 2;
              }

              ++v107;
              v110 += *(&v112 + 1);
              v108 += v109;
            }

            while (v107 != v106);
          }

          goto LABEL_91;
        case 1751410032:
          warpMap = self->_warpMap;
          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(warpMap, 1uLL);
          CVPixelBufferLockBaseAddress(a4, 0);
          memset(&buf, 0, sizeof(buf));
          v27 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
          memset(&v163, 0, sizeof(v163));
          PixelBufferUtils::asVImageBuffer(a4, *v27, &v163);
          memset(&v161, 0, sizeof(v161));
          PixelBufferUtils::asVImageBuffer(warpMap, *v27, &v161);
          v28 = v163.rowBytes;
          v29 = v163.data;
          v30 = v163.height;
          bzero(v163.data, v163.height * v163.rowBytes);
          v31 = buf.height;
          if (buf.height)
          {
            v32 = 0;
            v33 = v161.data;
            v34 = v161.rowBytes;
            v35 = buf.data;
            v36 = v163.width;
            v37 = *&buf.width;
            do
            {
              v38 = v33;
              v39 = v35;
              for (j = v37; j; --j)
              {
                v41 = *v38;
                if ((*v38 & 0x8000) == 0)
                {
                  v42 = v38[1];
                  if ((v42 & 0x8000) == 0 && v36 > v41 && v30 > v42)
                  {
                    *&v29[2 * v41 + v28 * v42] = *v39;
                  }
                }

                ++v39;
                v38 += 2;
              }

              ++v32;
              v35 += *(&v37 + 1);
              v33 += v34;
            }

            while (v32 != v31);
          }

          goto LABEL_91;
      }
    }

    else if (PixelFormatType == 32 || PixelFormatType == 1111970369 || PixelFormatType == 1380401729)
    {
      warpMap = self->_warpMap;
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      CVPixelBufferLockBaseAddress(warpMap, 1uLL);
      CVPixelBufferLockBaseAddress(a4, 0);
      memset(&buf, 0, sizeof(buf));
      v9 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
      memset(&v163, 0, sizeof(v163));
      PixelBufferUtils::asVImageBuffer(a4, *v9, &v163);
      memset(&v161, 0, sizeof(v161));
      PixelBufferUtils::asVImageBuffer(warpMap, *v9, &v161);
      v10 = v163.rowBytes;
      v11 = v163.data;
      v12 = v163.height;
      bzero(v163.data, v163.height * v163.rowBytes);
      v13 = buf.height;
      if (buf.height)
      {
        v14 = 0;
        v15 = v161.data;
        v16 = v161.rowBytes;
        v17 = buf.data;
        v18 = v163.width;
        v19 = *&buf.width;
        v20 = buf.width;
        do
        {
          if (v20)
          {
            v21 = 0;
            do
            {
              v22 = &v15[4 * v21];
              v23 = *v22;
              if ((*v22 & 0x8000) == 0)
              {
                v24 = *(v22 + 1);
                if ((v24 & 0x8000) == 0 && v18 > v23 && v12 > v24)
                {
                  *&v11[4 * v23 + v10 * v24] = *&v17[4 * v21];
                }
              }

              ++v21;
            }

            while (v21 < v19);
            v20 = v19;
          }

          ++v14;
          v17 += *(&v19 + 1);
          v15 += v16;
        }

        while (v14 < v13);
      }

LABEL_91:
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      v118 = warpMap;
LABEL_112:
      CVPixelBufferUnlockBaseAddress(v118, 1uLL);
      CVPixelBufferUnlockBaseAddress(a4, 0);
      return 0;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22953;
    }

    v99 = CVPixelBufferGetPixelFormatType(a3);
    PixelBufferUtils::pixelFormatAsString(v99, &buf);
    if ((buf.width & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.data;
    }

    LODWORD(v163.data) = 136315138;
    *(&v163.data + 4) = p_buf;
    v101 = MEMORY[0x277D86220];
    goto LABEL_119;
  }

  v25 = CVPixelBufferGetHeight(a4);
  if (CVPixelBufferGetWidth(a4) * v25 <= self->_capacity)
  {
    v43 = CVPixelBufferGetPixelFormatType(a3);
    if (v43 <= 1380401728)
    {
      if (v43 == 32 || v43 == 1111970369)
      {
        goto LABEL_54;
      }

      if (v43 != 1278226534)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (v43 <= 1717855599)
      {
        if (v43 != 1380401729)
        {
          if (v43 == 1380410945)
          {
            warpMaskX = self->_warpMaskX;
            warpMaskY = self->_warpMaskY;
            v46 = CVPixelBufferGetHeight(a4);
            v47 = CVPixelBufferGetWidth(a4);
            CVPixelBufferLockBaseAddress(a3, 1uLL);
            CVPixelBufferLockBaseAddress(a4, 0);
            memset(&buf, 0, sizeof(buf));
            v48 = MEMORY[0x277CBF3A0];
            PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
            memset(&v163, 0, sizeof(v163));
            PixelBufferUtils::asVImageBuffer(a4, *v48, &v163);
            v49 = v163.rowBytes;
            v50 = v163.data;
            bzero(v163.data, v163.height * v163.rowBytes);
            if (v46)
            {
              v51 = 0;
              v52 = buf.data;
              v53 = buf.rowBytes;
              v54 = 4 * v47;
              do
              {
                v55 = warpMaskX;
                v56 = warpMaskY;
                v57 = v50;
                for (k = v47; k; --k)
                {
                  v60 = *v55++;
                  v59 = v60;
                  v62 = *v56++;
                  v61 = v62;
                  if ((v59 & 0x80000000) == 0 && (v61 & 0x80000000) == 0)
                  {
                    *v57 = *&v52[16 * v59 + v53 * v61];
                  }

                  ++v57;
                }

                ++v51;
                v50 += v49;
                warpMaskY = (warpMaskY + v54);
                warpMaskX = (warpMaskX + v54);
              }

              while (v51 != v46);
            }

LABEL_111:
            v118 = a3;
            goto LABEL_112;
          }

LABEL_113:
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            return -22953;
          }

          v159 = CVPixelBufferGetPixelFormatType(a3);
          PixelBufferUtils::pixelFormatAsString(v159, &buf);
          if ((buf.width & 0x8000000000000000) == 0)
          {
            v160 = &buf;
          }

          else
          {
            v160 = buf.data;
          }

          LODWORD(v163.data) = 136315138;
          *(&v163.data + 4) = v160;
          v101 = MEMORY[0x277D86220];
LABEL_119:
          _os_log_error_impl(&dword_240463000, v101, OS_LOG_TYPE_ERROR, "cannot reproject buffer. unknown pixel format: %s", &v163, 0xCu);
          if (SHIBYTE(buf.width) < 0)
          {
            operator delete(buf.data);
          }

          return -22953;
        }

LABEL_54:
        v63 = self->_warpMaskX;
        v64 = self->_warpMaskY;
        v65 = CVPixelBufferGetHeight(a4);
        v66 = CVPixelBufferGetWidth(a4);
        CVPixelBufferLockBaseAddress(a3, 1uLL);
        CVPixelBufferLockBaseAddress(a4, 0);
        memset(&buf, 0, sizeof(buf));
        v67 = MEMORY[0x277CBF3A0];
        PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
        memset(&v163, 0, sizeof(v163));
        PixelBufferUtils::asVImageBuffer(a4, *v67, &v163);
        v68 = v163.rowBytes;
        v69 = v163.data;
        bzero(v163.data, v163.height * v163.rowBytes);
        if (v65)
        {
          v70 = 0;
          v71 = buf.data;
          v72 = buf.rowBytes;
          v73 = 4 * v66;
          do
          {
            v74 = v63;
            v75 = v64;
            v76 = v69;
            for (m = v66; m; --m)
            {
              v79 = *v74++;
              v78 = v79;
              v81 = *v75++;
              v80 = v81;
              if ((v78 & 0x80000000) == 0 && (v80 & 0x80000000) == 0)
              {
                *v76 = *&v71[4 * v78 + v72 * v80];
              }

              ++v76;
            }

            ++v70;
            v69 += v68;
            v64 = (v64 + v73);
            v63 = (v63 + v73);
          }

          while (v70 != v65);
        }

        goto LABEL_111;
      }

      if (v43 != 1717855600)
      {
        if (v43 == 1751410032)
        {
          v119 = self->_warpMaskX;
          v120 = self->_warpMaskY;
          v121 = CVPixelBufferGetHeight(a4);
          v122 = CVPixelBufferGetWidth(a4);
          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a4, 0);
          memset(&buf, 0, sizeof(buf));
          v123 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
          memset(&v163, 0, sizeof(v163));
          PixelBufferUtils::asVImageBuffer(a4, *v123, &v163);
          v124 = v163.rowBytes;
          v125 = v163.data;
          bzero(v163.data, v163.height * v163.rowBytes);
          if (v121)
          {
            v126 = 0;
            v127 = buf.data;
            v128 = buf.rowBytes;
            v129 = 4 * v122;
            do
            {
              v130 = v119;
              v131 = v120;
              v132 = v125;
              for (n = v122; n; --n)
              {
                v134 = 0;
                v136 = *v130++;
                v135 = v136;
                v138 = *v131++;
                v137 = v138;
                if ((v135 & 0x80000000) == 0 && (v137 & 0x80000000) == 0)
                {
                  v134 = *&v127[2 * v135 + v128 * v137];
                }

                *v132++ = v134;
              }

              ++v126;
              v125 += v124;
              v120 = (v120 + v129);
              v119 = (v119 + v129);
            }

            while (v126 != v121);
          }

          goto LABEL_111;
        }

        goto LABEL_113;
      }
    }

    v139 = self->_warpMaskX;
    v140 = self->_warpMaskY;
    v141 = CVPixelBufferGetHeight(a4);
    v142 = CVPixelBufferGetWidth(a4);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a4, 0);
    memset(&buf, 0, sizeof(buf));
    v143 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
    memset(&v163, 0, sizeof(v163));
    PixelBufferUtils::asVImageBuffer(a4, *v143, &v163);
    v144 = v163.rowBytes;
    v145 = v163.data;
    bzero(v163.data, v163.height * v163.rowBytes);
    if (v141)
    {
      v146 = 0;
      v147 = buf.data;
      v148 = buf.rowBytes;
      v149 = 4 * v142;
      do
      {
        v150 = v139;
        v151 = v140;
        v152 = v145;
        for (ii = v142; ii; --ii)
        {
          v154 = 0;
          v156 = *v150++;
          v155 = v156;
          v158 = *v151++;
          v157 = v158;
          if ((v155 & 0x80000000) == 0 && (v157 & 0x80000000) == 0)
          {
            v154 = *&v147[4 * v155 + v148 * v157];
          }

          *v152++ = v154;
        }

        ++v146;
        v145 += v144;
        v140 = (v140 + v149);
        v139 = (v139 + v149);
      }

      while (v146 != v141);
    }

    goto LABEL_111;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.data) = 0;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "reprojection capacity does not fit input size. input may not match the depth used to update warp map", &buf, 2u);
  }

  return -22957;
}

- (uint64_t)updateWarpMapWithDepth:(__n128)a3 srcCalibration:(__n128)a4 dstCalibration:(__n128)a5 sourceToDestinationTransform:(uint64_t)a6 warpedDepth:(__CVBuffer *)a7 warpMap:(void *)a8
{
  *v41 = a2;
  *&v41[16] = a3;
  v43[0] = a2;
  v43[1] = a3;
  *&v41[32] = a4;
  *&v41[48] = a5;
  v43[2] = a4;
  v43[3] = a5;
  v16 = a8;
  v17 = a9;
  v18 = v17;
  if (v16 && v17)
  {
    v19 = a1;
    objc_sync_enter(v19);
    if (*(v19 + 88) != 1 || ![v19 isCalibrationUndistorted:v16] || !objc_msgSend(v19, "isCalibrationUndistorted:", v18) || *(v19 + 14))
    {
      if (*(v19 + 89) != 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "could not reproject. conditions for allowable methods did not meet", buf, 2u);
        }

        v29 = -22963;
        goto LABEL_24;
      }

      *(v19 + 72) = 0;
      Height = CVPixelBufferGetHeight(a7);
      Width = CVPixelBufferGetWidth(a7);
      [v18 referenceDimensions];
      v23 = v22;
      [v18 referenceDimensions];
      if (Width * Height <= (v23 * v24))
      {
        v25 = (v23 * v24);
      }

      else
      {
        v25 = Width * Height;
      }

      if ([v19 updateCapacity:v25])
      {
        v26 = [v19 vectorizeCameraPixels:a7];
        if ((v26 & 0x80000000) == 0)
        {
          v27 = v26;
          [v19 calculateWarpedPixelsFromSrcCalibration:v16 dstCalibration:v18 sourceToDestinationTransform:v43 validPixels:v26];
          [v18 referenceDimensions];
          v28 = [v19 updateWarpWithWarpedDepthBuffer:a10 dimensions:v27 validPixels:?];
LABEL_23:
          v29 = v28;
          goto LABEL_24;
        }

        v29 = -22953;
      }

      else
      {
        v29 = -22954;
      }

LABEL_24:
      objc_sync_exit(v19);

      goto LABEL_25;
    }

    *(v19 + 72) = 1;
    [v16 intrinsicMatrix];
    v39 = v31;
    v40 = v30;
    v38 = v32;
    [v18 intrinsicMatrix];
    v37.columns[1] = v33;
    v37.columns[2] = v34;
    v37.columns[0] = v35;
    v44.columns[1] = v39;
    v44.columns[0] = v40;
    v44.columns[2] = v38;
    v28 = ADReprojectionOptimizations::reprojectUndistortedDepthMap(a7, a11, v44, *v41, a10, v37);
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot reproject buffer. nil calibration data", buf, 2u);
  }

  v29 = -22953;
LABEL_25:

  return v29;
}

- (uint64_t)updateWarpMapWithDepth:(__n128)a3 srcCalibration:(__n128)a4 dstCalibration:(__n128)a5 sourceToDestinationTransform:(uint64_t)a6 warpedDepth:(__CVBuffer *)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = a8;
  v15 = a9;
  if (*(a1 + 88) == 1)
  {
    v16 = *(a1 + 80);
    if (v16)
    {
      Width = CVPixelBufferGetWidth(v16);
      v18 = CVPixelBufferGetWidth(a7);
      v16 = *(a1 + 80);
      if (Width == v18)
      {
        Height = CVPixelBufferGetHeight(v16);
        if (Height == CVPixelBufferGetHeight(a7))
        {
          goto LABEL_8;
        }

        v16 = *(a1 + 80);
      }
    }

    CVPixelBufferRelease(v16);
    *(a1 + 80) = 0;
    PixelBufferWithSameSize = PixelBufferUtils::createPixelBufferWithSameSize(a7, 0x32433136, 1);
    *(a1 + 80) = PixelBufferWithSameSize;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = CVPixelBufferGetWidth(PixelBufferWithSameSize);
      v22 = CVPixelBufferGetHeight(*(a1 + 80));
      *buf = 134218240;
      v30 = v21;
      v31 = 2048;
      v32 = v22;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "reallocated warp map for depth reprojection: %lu,%lu", buf, 0x16u);
    }
  }

LABEL_8:
  v23 = [a1 updateWarpMapWithDepth:a7 srcCalibration:v14 dstCalibration:v15 sourceToDestinationTransform:a10 warpedDepth:*(a1 + 80) warpMap:{a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], *&a2, *&a3, *&a4, *&a5}];

  return v23;
}

- (uint64_t)warpDepth:(float32x4_t)a3 srcCalibration:(float32x4_t)a4 dstCalibration:(float32x4_t)a5 poseTransform:(uint64_t)a6 warpedDepth:(uint64_t)a7
{
  v14 = a8;
  v15 = a9;
  [v14 cameraToPlatformTransform];
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v20 = [v15 cameraToPlatformTransform];
  v22 = 0;
  v23 = v36;
  HIDWORD(v23) = 1.0;
  v25 = v34;
  v24 = v35;
  HIDWORD(v24) = 0;
  HIDWORD(v25) = 0;
  v26 = v33;
  HIDWORD(v26) = 0;
  v41[0] = v26;
  v41[1] = v25;
  v41[2] = v24;
  v41[3] = v23;
  do
  {
    v42.columns[v22] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v41[v22])), a3, *&v41[v22], 1), a4, v41[v22], 2), a5, v41[v22], 3);
    ++v22;
  }

  while (v22 != 4);
  v27 = ADCommonUtils::computeTransform(v20, v21, v42);
  v31 = [a1 updateWarpMapWithDepth:a7 srcCalibration:v14 dstCalibration:v15 sourceToDestinationTransform:a10 warpedDepth:0 warpMap:{v27, v28, v29, v30}];

  return v31;
}

- (BOOL)isCalibrationUndistorted:(id)a3
{
  v3 = a3;
  v4 = [v3 distortionModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 distortionModel];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 distortionModel];
      v5 = [v7 XThetaType] == 2;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)updateWarpMapWithDepth:(float32x4_t)a3 srcCalibration:(float32x4_t)a4 dstCalibration:(float32x4_t)a5 poseTransform:(uint64_t)a6 warpedDepth:(uint64_t)a7
{
  v14 = a8;
  v15 = a9;
  [v14 cameraToPlatformTransform];
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v20 = [v15 cameraToPlatformTransform];
  v22 = 0;
  v23 = v36;
  HIDWORD(v23) = 1.0;
  v25 = v34;
  v24 = v35;
  HIDWORD(v24) = 0;
  HIDWORD(v25) = 0;
  v26 = v33;
  HIDWORD(v26) = 0;
  v41[0] = v26;
  v41[1] = v25;
  v41[2] = v24;
  v41[3] = v23;
  do
  {
    v42.columns[v22] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(v41[v22])), a3, *&v41[v22], 1), a4, v41[v22], 2), a5, v41[v22], 3);
    ++v22;
  }

  while (v22 != 4);
  v27 = ADCommonUtils::computeTransform(v20, v21, v42);
  v31 = [a1 updateWarpMapWithDepth:a7 srcCalibration:v14 dstCalibration:v15 sourceToDestinationTransform:a10 warpedDepth:{v27, v28, v29, v30}];

  return v31;
}

- (int)vectorizeCameraPixels:(__CVBuffer *)a3
{
  v70 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType <= 1717855599)
  {
    if (PixelFormatType == 825437747)
    {
      inOutDepth = self->_inOutDepth;
      srcCameraPixels = self->_srcCameraPixels;
      Height = CVPixelBufferGetHeight(a3);
      Width = CVPixelBufferGetWidth(a3);
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      memset(&__p, 0, sizeof(__p));
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
      v10 = 0;
      if (Height)
      {
        v47 = 0;
        data = __p.data;
        rowBytes = __p.rowBytes;
        do
        {
          if (Width)
          {
            for (i = 0; i != Width; ++i)
            {
              if (data[i])
              {
                v51 = vcvtd_n_f64_u32(data[i], 3uLL);
                inOutDepth[v10] = v51;
                p_x = &srcCameraPixels[v10].x;
                *p_x = i + 0.5;
                p_x[1] = v47 + 0.5;
                ++v10;
              }
            }
          }

          ++v47;
          data = (data + rowBytes);
        }

        while (v47 != Height);
      }

      goto LABEL_55;
    }

    if (PixelFormatType == 1278226534)
    {
      goto LABEL_29;
    }

    v17 = 1278226536;
LABEL_19:
    if (PixelFormatType == v17)
    {
      v19 = self->_inOutDepth;
      v18 = self->_srcCameraPixels;
      v20 = CVPixelBufferGetHeight(a3);
      v21 = CVPixelBufferGetWidth(a3);
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      memset(&__p, 0, sizeof(__p));
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
      v10 = 0;
      if (v20)
      {
        v22 = 0;
        v23 = __p.data;
        v24 = __p.rowBytes;
        do
        {
          if (v21)
          {
            for (j = 0; j != v21; ++j)
            {
              _H3 = *&v23[2 * j];
              __asm { FCVT            S3, H3 }

              if (_S3 > 0.00000011921)
              {
                v19[v10] = _S3 * 1000.0;
                v32 = &v18[v10].x;
                *v32 = j + 0.5;
                v32[1] = v22 + 0.5;
                ++v10;
              }
            }
          }

          ++v22;
          v23 += v24;
        }

        while (v22 != v20);
      }

      goto LABEL_55;
    }

    goto LABEL_57;
  }

  if (PixelFormatType > 1751410031)
  {
    if (PixelFormatType == 1751411059)
    {
      v54 = self->_inOutDepth;
      v53 = self->_srcCameraPixels;
      v55 = CVPixelBufferGetHeight(a3);
      v56 = CVPixelBufferGetWidth(a3);
      CVPixelBufferLockBaseAddress(a3, 1uLL);
      memset(&__p, 0, sizeof(__p));
      PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
      v10 = 0;
      if (v55)
      {
        v57 = 0;
        v58 = __p.data;
        v59 = __p.rowBytes;
        do
        {
          if (v56)
          {
            for (k = 0; k != v56; ++k)
            {
              _H3 = *&v58[2 * k];
              __asm { FCVT            S3, H3 }

              if (_S3 > 0.00000011921)
              {
                v54[v10] = 1000.0 / _S3;
                v63 = &v53[v10].x;
                *v63 = k + 0.5;
                v63[1] = v57 + 0.5;
                ++v10;
              }
            }
          }

          ++v57;
          v58 += v59;
        }

        while (v57 != v55);
      }

      goto LABEL_55;
    }

    v17 = 1751410032;
    goto LABEL_19;
  }

  if (PixelFormatType == 1717855600)
  {
LABEL_29:
    v34 = self->_inOutDepth;
    v33 = self->_srcCameraPixels;
    v35 = CVPixelBufferGetHeight(a3);
    v36 = CVPixelBufferGetWidth(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    memset(&__p, 0, sizeof(__p));
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
    v10 = 0;
    if (v35)
    {
      v37 = 0;
      v38 = __p.data;
      v39 = __p.rowBytes;
      do
      {
        if (v36)
        {
          for (m = 0; m != v36; ++m)
          {
            v41 = v38[m];
            if (v41 > 0.00000011921)
            {
              v34[v10] = v41 * 1000.0;
              v42 = &v33[v10].x;
              *v42 = m + 0.5;
              v42[1] = v37 + 0.5;
              ++v10;
            }
          }
        }

        ++v37;
        v38 = (v38 + v39);
      }

      while (v37 != v35);
    }

    goto LABEL_55;
  }

  if (PixelFormatType == 1717856627)
  {
    v7 = self->_inOutDepth;
    v6 = self->_srcCameraPixels;
    v8 = CVPixelBufferGetHeight(a3);
    v9 = CVPixelBufferGetWidth(a3);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    memset(&__p, 0, sizeof(__p));
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &__p);
    v10 = 0;
    if (v8)
    {
      v11 = 0;
      v12 = __p.data;
      v13 = __p.rowBytes;
      do
      {
        if (v9)
        {
          for (n = 0; n != v9; ++n)
          {
            v15 = v12[n];
            if (v15 > 0.00000011921)
            {
              v7[v10] = 1000.0 / v15;
              v16 = &v6[v10].x;
              *v16 = n + 0.5;
              v16[1] = v11 + 0.5;
              ++v10;
            }
          }
        }

        ++v11;
        v12 = (v12 + v13);
      }

      while (v11 != v8);
    }

LABEL_55:
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    return v10;
  }

LABEL_57:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v65 = CVPixelBufferGetPixelFormatType(a3);
    PixelBufferUtils::pixelFormatAsString(v65, &__p);
    v66 = (__p.width & 0x8000000000000000) == 0 ? &__p : __p.data;
    *buf = 136315138;
    v69 = v66;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot reproject buffer. unknown pixel format %s", buf, 0xCu);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }
  }

  return -1;
}

- (void)calculateWarpedPixelsFromSrcCalibration:(id)a3 dstCalibration:(id)a4 sourceToDestinationTransform:(id *)a5 validPixels:(unint64_t)a6
{
  v17 = a3;
  v10 = a4;
  srcCameraPixels = self->_srcCameraPixels;
  v12 = [v17 distortionModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [v17 undistort:a6 distortedPixels:self->_srcCameraPixels outUndistorted:self->_intermediateUndistortedCameraPixels];
    srcCameraPixels = self->_intermediateUndistortedCameraPixels;
  }

  [v17 backProject:a6 undistortedPixels:srcCameraPixels withZ:self->_inOutDepth outPoints:*self->_points];
  [ADCameraCalibration transform:a6 points:*self->_points with:*self->_points outPoints:*a5, *(a5 + 2), *(a5 + 4), *(a5 + 6)];
  v14 = [v10 distortionModel];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  v16 = *self->_points;
  if (v15)
  {
    [v10 project:a6 points:v16 outUndistortedPixels:self->_dstCameraPixels];
  }

  else
  {
    [v10 project:a6 points:v16 outUndistortedPixels:self->_intermediateUndistortedCameraPixels];
    [v10 distort:a6 undistortedPixels:self->_intermediateUndistortedCameraPixels outDistorted:self->_dstCameraPixels];
  }
}

- (int64_t)updateWarpWithWarpedDepthBuffer:(__CVBuffer *)a3 dimensions:(CGSize)a4 validPixels:(unint64_t)a5
{
  v183 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!a3)
  {
    v9 = PixelBufferUtils::asPixelBuffer(a4.width, a4.height, 0x66646570, self->_warpMaskZHelper, v5);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v9);
  if (PixelFormatType <= 1717856626)
  {
    if (PixelFormatType == 825437747)
    {
      warpMaskX = self->_warpMaskX;
      warpMaskY = self->_warpMaskY;
      capacity = self->_capacity;
      srcCameraPixels = self->_srcCameraPixels;
      dstCameraPixels = self->_dstCameraPixels;
      v169 = *self->_points;
      streakingInfill = self->_streakingInfill;
      CVPixelBufferLockBaseAddress(v9, 0);
      memset(&__p, 0, sizeof(__p));
      PixelBufferUtils::asVImageBuffer(v9, *MEMORY[0x277CBF3A0], &__p);
      height = __p.height;
      width = __p.width;
      if (__p.height * __p.width > capacity)
      {
        goto LABEL_122;
      }

      memset(warpMaskX, 255, 4 * capacity);
      memset(warpMaskY, 255, 4 * capacity);
      data = __p.data;
      rowBytes = __p.rowBytes;
      bzero(__p.data, __p.rowBytes * height);
      if (a5)
      {
        v145 = (v169 + 8);
        p_y = &srcCameraPixels->y;
        v147 = &dstCameraPixels->y;
        do
        {
          v148 = *(v147 - 1);
          if ((v148 & 0x80000000) == 0 && v148 < width)
          {
            v149 = *v147;
            if ((v149 & 0x80000000) == 0 && v149 < height)
            {
              v150 = *(p_y - 1);
              v151 = *p_y;
              v152 = &data[2 * v148 + rowBytes * v149];
              v153 = *v145 * 8.0;
              if (!*v152 || v153 < *v152)
              {
                *v152 = v153;
                v154 = v148 + width * v149;
                warpMaskX[v154] = v150;
                warpMaskY[v154] = v151;
              }

              if (streakingInfill - 1 <= 1)
              {
                if (v148 && !*(v152 - 1))
                {
                  *(v152 - 1) = v153;
                  v155 = 4 * (v148 + width * v149) - 4;
                  *(warpMaskX + v155) = v150;
                  *(warpMaskY + v155) = v151;
                }

                if (v149)
                {
                  v156 = (v149 - 1);
                  v157 = &data[rowBytes * v156];
                  if (!*&v157[2 * v148])
                  {
                    *&v157[2 * v148] = v153;
                    v158 = v148 + width * v156;
                    warpMaskX[v158] = v150;
                    warpMaskY[v158] = v151;
                  }
                }

                if (streakingInfill == 2)
                {
                  if (v148)
                  {
                    if (v149)
                    {
                      v159 = (v149 - 1);
                      v160 = &data[rowBytes * v159];
                      if (!*&v160[2 * (v148 - 1)])
                      {
                        *&v160[2 * (v148 - 1)] = v153;
                        v161 = 4 * (v148 + width * v159) - 4;
                        *(warpMaskX + v161) = v150;
                        *(warpMaskY + v161) = v151;
                      }
                    }
                  }
                }
              }
            }
          }

          v145 += 4;
          p_y += 2;
          v147 += 2;
          --a5;
        }

        while (a5);
      }
    }

    else
    {
      if (PixelFormatType != 1717855600)
      {
        goto LABEL_124;
      }

      v48 = self->_warpMaskX;
      v49 = self->_warpMaskY;
      v50 = self->_capacity;
      v171 = self->_srcCameraPixels;
      v176 = self->_dstCameraPixels;
      v166 = *self->_points;
      v51 = self->_streakingInfill;
      CVPixelBufferLockBaseAddress(v9, 0);
      memset(&__p, 0, sizeof(__p));
      PixelBufferUtils::asVImageBuffer(v9, *MEMORY[0x277CBF3A0], &__p);
      v53 = __p.height;
      v52 = __p.width;
      if (__p.height * __p.width > v50)
      {
        goto LABEL_122;
      }

      memset(v48, 255, 4 * v50);
      memset(v49, 255, 4 * v50);
      v54 = __p.data;
      v55 = __p.rowBytes;
      bzero(__p.data, __p.rowBytes * v53);
      if (a5)
      {
        v56 = (v166 + 8);
        v57 = &v171->y;
        v58 = &v176->y;
        do
        {
          v59 = *(v58 - 1);
          if ((v59 & 0x80000000) == 0 && v59 < v52)
          {
            v60 = *v58;
            if ((v60 & 0x80000000) == 0 && v60 < v53)
            {
              v61 = *(v57 - 1);
              v62 = *v57;
              v63 = &v54[4 * v59 + v55 * v60];
              v64 = *v56 / 1000.0;
              if (*v63 == 0.0 || *v63 > v64)
              {
                *v63 = v64;
                v66 = v59 + v52 * v60;
                v48[v66] = v61;
                v49[v66] = v62;
              }

              if (v51 - 1 <= 1)
              {
                if (v59 && *(v63 - 1) == 0.0)
                {
                  *(v63 - 1) = v64;
                  v67 = 4 * (v59 + v52 * v60) - 4;
                  *(v48 + v67) = v61;
                  *(v49 + v67) = v62;
                }

                if (v60)
                {
                  v68 = (v60 - 1);
                  v69 = &v54[v55 * v68];
                  if (*&v69[4 * v59] == 0.0)
                  {
                    *&v69[4 * v59] = v64;
                    v70 = v59 + v52 * v68;
                    v48[v70] = v61;
                    v49[v70] = v62;
                  }
                }

                if (v51 == 2)
                {
                  if (v59)
                  {
                    if (v60)
                    {
                      v71 = (v60 - 1);
                      v72 = &v54[v55 * v71];
                      v73 = (v59 - 1);
                      if (*&v72[4 * v73] == 0.0)
                      {
                        *&v72[4 * v73] = v64;
                        v74 = 4 * (v59 + v52 * v71) - 4;
                        *(v48 + v74) = v61;
                        *(v49 + v74) = v62;
                      }
                    }
                  }
                }
              }
            }
          }

          v56 += 4;
          v57 += 2;
          v58 += 2;
          --a5;
        }

        while (a5);
      }
    }
  }

  else
  {
    switch(PixelFormatType)
    {
      case 1717856627:
        v75 = self->_warpMaskX;
        v76 = self->_warpMaskY;
        v77 = self->_capacity;
        v172 = self->_srcCameraPixels;
        v177 = self->_dstCameraPixels;
        v167 = *self->_points;
        v78 = self->_streakingInfill;
        CVPixelBufferLockBaseAddress(v9, 0);
        memset(&__p, 0, sizeof(__p));
        PixelBufferUtils::asVImageBuffer(v9, *MEMORY[0x277CBF3A0], &__p);
        v80 = __p.height;
        v79 = __p.width;
        if (__p.height * __p.width > v77)
        {
          goto LABEL_122;
        }

        memset(v75, 255, 4 * v77);
        memset(v76, 255, 4 * v77);
        v81 = __p.data;
        v82 = __p.rowBytes;
        bzero(__p.data, __p.rowBytes * v80);
        if (a5)
        {
          v83 = (v167 + 8);
          v84 = &v172->y;
          v85 = &v177->y;
          do
          {
            v86 = *(v85 - 1);
            if ((v86 & 0x80000000) == 0 && v86 < v79)
            {
              v87 = *v85;
              if ((v87 & 0x80000000) == 0 && v87 < v80)
              {
                v88 = *(v84 - 1);
                v89 = *v84;
                v90 = &v81[4 * v86 + v82 * v87];
                v91 = 1000.0 / *v83;
                if (*v90 == 0.0 || *v90 < v91)
                {
                  *v90 = v91;
                  v93 = v86 + v79 * v87;
                  v75[v93] = v88;
                  v76[v93] = v89;
                }

                if (v78 - 1 <= 1)
                {
                  if (v86 && *(v90 - 1) == 0.0)
                  {
                    *(v90 - 1) = v91;
                    v94 = 4 * (v86 + v79 * v87) - 4;
                    *(v75 + v94) = v88;
                    *(v76 + v94) = v89;
                  }

                  if (v87)
                  {
                    v95 = (v87 - 1);
                    v96 = &v81[v82 * v95];
                    if (*&v96[4 * v86] == 0.0)
                    {
                      *&v96[4 * v86] = v91;
                      v97 = v86 + v79 * v95;
                      v75[v97] = v88;
                      v76[v97] = v89;
                    }
                  }

                  if (v78 == 2)
                  {
                    if (v86)
                    {
                      if (v87)
                      {
                        v98 = (v87 - 1);
                        v99 = &v81[v82 * v98];
                        v100 = (v86 - 1);
                        if (*&v99[4 * v100] == 0.0)
                        {
                          *&v99[4 * v100] = v91;
                          v101 = 4 * (v86 + v79 * v98) - 4;
                          *(v75 + v101) = v88;
                          *(v76 + v101) = v89;
                        }
                      }
                    }
                  }
                }
              }
            }

            v83 += 4;
            v84 += 2;
            v85 += 2;
            --a5;
          }

          while (a5);
        }

        break;
      case 1751411059:
        v102 = self->_warpMaskX;
        v103 = self->_warpMaskY;
        v104 = self->_capacity;
        v173 = self->_srcCameraPixels;
        v178 = self->_dstCameraPixels;
        v168 = *self->_points;
        v105 = self->_streakingInfill;
        CVPixelBufferLockBaseAddress(v9, 0);
        memset(&__p, 0, sizeof(__p));
        PixelBufferUtils::asVImageBuffer(v9, *MEMORY[0x277CBF3A0], &__p);
        v107 = __p.height;
        v106 = __p.width;
        if (__p.height * __p.width > v104)
        {
          goto LABEL_122;
        }

        memset(v102, 255, 4 * v104);
        memset(v103, 255, 4 * v104);
        v108 = __p.data;
        v109 = __p.rowBytes;
        bzero(__p.data, __p.rowBytes * v107);
        if (a5)
        {
          v110 = (v168 + 8);
          v111 = &v173->y;
          v112 = &v178->y;
          do
          {
            v113 = *(v112 - 1);
            if ((v113 & 0x80000000) == 0 && v113 < v106)
            {
              v114 = *v112;
              if ((v114 & 0x80000000) == 0 && v114 < v107)
              {
                v115 = *(v111 - 1);
                v116 = *v111;
                v117 = &v108[2 * v113 + v109 * v114];
                _S0 = 1000.0 / *v110;
                _H1 = *v117;
                __asm
                {
                  FCVT            S2, H1
                  FCMP            H1, #0
                }

                if (_ZF)
                {
                  v122 = 0;
                }

                else
                {
                  v122 = _S0 <= _S2;
                }

                if (!v122)
                {
                  __asm { FCVT            H1, S0 }

                  *v117 = _H1;
                  v124 = v113 + v106 * v114;
                  v102[v124] = v115;
                  v103[v124] = v116;
                }

                if (v105 - 1 <= 1)
                {
                  if (v113)
                  {
                    __asm { FCMP            H1, #0 }

                    if (_ZF)
                    {
                      __asm { FCVT            H1, S0 }

                      *(v117 - 1) = _H1;
                      v127 = 4 * (v113 + v106 * v114) - 4;
                      *(v102 + v127) = v115;
                      *(v103 + v127) = v116;
                    }
                  }

                  if (v114)
                  {
                    v128 = (v114 - 1);
                    __asm { FCMP            H1, #0 }

                    if (_ZF)
                    {
                      __asm { FCVT            H1, S0 }

                      *&v108[2 * v113 + v109 * v128] = _H1;
                      v131 = v113 + v106 * v128;
                      v102[v131] = v115;
                      v103[v131] = v116;
                    }
                  }

                  if (v105 == 2)
                  {
                    if (v113)
                    {
                      if (v114)
                      {
                        v132 = (v114 - 1);
                        __asm { FCMP            H1, #0 }

                        if (_ZF)
                        {
                          __asm { FCVT            H0, S0 }

                          *&v108[2 * (v113 - 1) + v109 * v132] = _H0;
                          v135 = 4 * (v113 + v106 * v132) - 4;
                          *(v102 + v135) = v115;
                          *(v103 + v135) = v116;
                        }
                      }
                    }
                  }
                }
              }
            }

            v110 += 4;
            v111 += 2;
            v112 += 2;
            --a5;
          }

          while (a5);
        }

        break;
      case 1751410032:
        v11 = self->_warpMaskX;
        v12 = self->_warpMaskY;
        v13 = self->_capacity;
        v170 = self->_srcCameraPixels;
        v175 = self->_dstCameraPixels;
        v165 = *self->_points;
        v14 = self->_streakingInfill;
        CVPixelBufferLockBaseAddress(v9, 0);
        memset(&__p, 0, sizeof(__p));
        PixelBufferUtils::asVImageBuffer(v9, *MEMORY[0x277CBF3A0], &__p);
        v16 = __p.height;
        v15 = __p.width;
        if (__p.height * __p.width <= v13)
        {
          memset(v11, 255, 4 * v13);
          memset(v12, 255, 4 * v13);
          v17 = __p.data;
          v18 = __p.rowBytes;
          bzero(__p.data, __p.rowBytes * v16);
          if (a5)
          {
            v19 = (v165 + 8);
            v20 = &v170->y;
            v21 = &v175->y;
            do
            {
              v22 = *(v21 - 1);
              if ((v22 & 0x80000000) == 0 && v22 < v15)
              {
                v23 = *v21;
                if ((v23 & 0x80000000) == 0 && v23 < v16)
                {
                  v24 = *(v20 - 1);
                  v25 = *v20;
                  v26 = &v17[2 * v22 + v18 * v23];
                  _S0 = *v19 / 1000.0;
                  _H1 = *v26;
                  __asm
                  {
                    FCVT            S2, H1
                    FCMP            H1, #0
                  }

                  if (_ZF)
                  {
                    _NF = 1;
                  }

                  else
                  {
                    _NF = _S0 < _S2;
                  }

                  if (_NF)
                  {
                    __asm { FCVT            H1, S0 }

                    *v26 = _H1;
                    v36 = v22 + v15 * v23;
                    v11[v36] = v24;
                    v12[v36] = v25;
                  }

                  if (v14 - 1 <= 1)
                  {
                    if (v22)
                    {
                      __asm { FCMP            H1, #0 }

                      if (_ZF)
                      {
                        __asm { FCVT            H1, S0 }

                        *(v26 - 1) = _H1;
                        v39 = 4 * (v22 + v15 * v23) - 4;
                        *(v11 + v39) = v24;
                        *(v12 + v39) = v25;
                      }
                    }

                    if (v23)
                    {
                      v40 = (v23 - 1);
                      __asm { FCMP            H1, #0 }

                      if (_ZF)
                      {
                        __asm { FCVT            H1, S0 }

                        *&v17[2 * v22 + v18 * v40] = _H1;
                        v43 = v22 + v15 * v40;
                        v11[v43] = v24;
                        v12[v43] = v25;
                      }
                    }

                    if (v14 == 2)
                    {
                      if (v22)
                      {
                        if (v23)
                        {
                          v44 = (v23 - 1);
                          __asm { FCMP            H1, #0 }

                          if (_ZF)
                          {
                            __asm { FCVT            H0, S0 }

                            *&v17[2 * (v22 - 1) + v18 * v44] = _H0;
                            v47 = 4 * (v22 + v15 * v44) - 4;
                            *(v11 + v47) = v24;
                            *(v12 + v47) = v25;
                          }
                        }
                      }
                    }
                  }
                }
              }

              v19 += 4;
              v20 += 2;
              v21 += 2;
              --a5;
            }

            while (a5);
          }

          break;
        }

LABEL_122:
        v142 = -22957;
        if (!a3)
        {
          goto LABEL_150;
        }

        return v142;
      default:
LABEL_124:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v163 = CVPixelBufferGetPixelFormatType(v9);
          PixelBufferUtils::pixelFormatAsString(v163, &__p);
          v164 = (__p.width & 0x8000000000000000) == 0 ? &__p : __p.data;
          *buf = 136315138;
          v182 = v164;
          _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot reproject buffer. unknown pixel format %s", buf, 0xCu);
          if (SHIBYTE(__p.width) < 0)
          {
            operator delete(__p.data);
          }
        }

        v142 = -22953;
        if (!a3)
        {
          goto LABEL_150;
        }

        return v142;
    }
  }

  CVPixelBufferUnlockBaseAddress(v9, 0);
  v142 = 0;
  if (!a3)
  {
LABEL_150:
    CVPixelBufferRelease(v9);
  }

  return v142;
}

- (BOOL)updateCapacity:(unint64_t)a3
{
  if (self->_capacity < a3)
  {
    [(ADReprojection *)self deallocateBuffers];
    operator new[]();
  }

  return 1;
}

- (void)deallocateBuffers
{
  intermediateUndistortedCameraPixels = self->_intermediateUndistortedCameraPixels;
  if (intermediateUndistortedCameraPixels)
  {
    MEMORY[0x245CC10C0](intermediateUndistortedCameraPixels, 0x1000C80451B5BE8);
  }

  v4 = *self->_points;
  if (v4)
  {
    MEMORY[0x245CC10C0](v4, 0x1000C80451B5BE8);
  }

  inOutDepth = self->_inOutDepth;
  if (inOutDepth)
  {
    MEMORY[0x245CC10C0](inOutDepth, 0x1000C8052888210);
  }

  srcCameraPixels = self->_srcCameraPixels;
  if (srcCameraPixels)
  {
    MEMORY[0x245CC10C0](srcCameraPixels, 0x1000C80451B5BE8);
  }

  dstCameraPixels = self->_dstCameraPixels;
  if (dstCameraPixels)
  {
    MEMORY[0x245CC10C0](dstCameraPixels, 0x1000C80451B5BE8);
  }

  warpMaskX = self->_warpMaskX;
  if (warpMaskX)
  {
    MEMORY[0x245CC10C0](warpMaskX, 0x1000C8052888210);
  }

  warpMaskY = self->_warpMaskY;
  if (warpMaskY)
  {
    MEMORY[0x245CC10C0](warpMaskY, 0x1000C8052888210);
  }

  warpMaskZHelper = self->_warpMaskZHelper;
  if (warpMaskZHelper)
  {
    MEMORY[0x245CC10C0](warpMaskZHelper, 0x1000C8052888210);
  }

  CVPixelBufferRelease(self->_warpMap);
  self->_warpMap = 0;
}

- (void)dealloc
{
  [(ADReprojection *)self deallocateBuffers];
  v3.receiver = self;
  v3.super_class = ADReprojection;
  [(ADReprojection *)&v3 dealloc];
}

- (ADReprojection)initWithCapacity:(unint64_t)a3 streakingInfill:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = ADReprojection;
  v6 = [(ADReprojection *)&v10 init];
  v7 = v6;
  if (v6 && (*(v6 + 10) = 0, *(v6 + 8) = 0u, *(v6 + 24) = 0u, *(v6 + 40) = 0u, *(v6 + 56) = 0u, v6[72] = 0, *(v6 + 12) = 0, *(v6 + 13) = 0, *(v6 + 14) = a4, *(v6 + 44) = 257, ([v6 updateCapacity:a3] & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

@end