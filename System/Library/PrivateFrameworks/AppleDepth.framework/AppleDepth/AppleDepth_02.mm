void filterDepthAndUncertainty<float,half,true>(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, void *a5, void *a6, double a7, double a8, double a9, double a10)
{
  v77 = a5;
  v19 = a6;
  v20 = [v19 pipelineParameters];
  [v20 uncertaintyThreshold];
  v22 = v21;

  v23 = [v19 pipelineParameters];
  [v23 maxDepthThresholdForInvalidUncertainty];
  v25 = v24;

  v26 = [v19 pipelineParameters];
  [v26 minDepthThresholdForInvalidUncertainty];
  v28 = v27;

  v29 = [v19 pipelineParameters];
  v30 = [v29 outputHighConfidencePixelsOnly];

  if (v77)
  {
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = [v77 length];
      v34 = v31 >= v33;
      if (v31 >= v33)
      {
        break;
      }

      if (*([v77 confidences] + 4 * v31) > 0.0)
      {
        v35 = [v19 pipelineParameters];
        v36 = [v35 minRequiredJasperPoints];
        ++v32;

        if (v32 >= v36)
        {
          v34 = 0;
          break;
        }
      }

      ++v31;
    }
  }

  else
  {
    v34 = 1;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  if (a4)
  {
    CVPixelBufferLockBaseAddress(a4, 0);
  }

  memset(&v81, 0, sizeof(v81));
  v37 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v81);
  memset(&v80, 0, sizeof(v80));
  PixelBufferUtils::asVImageBuffer(a2, *v37, &v80);
  memset(&v79, 0, sizeof(v79));
  PixelBufferUtils::asVImageBuffer(a3, *v37, &v79);
  if (a4)
  {
    PixelBufferUtils::asVImageBuffer(a4, *v37, &v78);
    data = v78.data;
    rowBytes = v78.rowBytes;
    if (a10 <= 0.0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    rowBytes = 0;
    data = 0;
    if (a10 <= 0.0)
    {
      goto LABEL_37;
    }
  }

  if (a9 > 0.0)
  {
    v40 = v80.rowBytes;
    v41 = v81.rowBytes;
    v42 = 4 * a7;
    v43 = v81.data + v81.rowBytes * a8 + v42;
    v44 = v80.data + v80.rowBytes * a8 + v42;
    v45 = v79.data;
    v46 = v79.rowBytes;
    if (a4)
    {
      v47 = 0;
      do
      {
        v48 = 0;
        do
        {
          v54 = *&v43[4 * v48];
          _S4 = *&v44[4 * v48];
          v56 = v54 > v25;
          if (v54 < v28)
          {
            v56 = 1;
          }

          if (v34 || v56)
          {
            _S4 = 10.0;
          }

          if (_S4 >= v22)
          {
            v57 = v30;
          }

          else
          {
            v57 = 0;
          }

          _H5 = 32256;
          if ((v57 & 1) == 0)
          {
            _H5 = 32256;
            if (v54 != 0.0)
            {
              _S3 = 1.0 / v54;
              __asm { FCVT            H5, S3 }
            }
          }

          *&v45[2 * v48] = _H5;
          __asm { FCVT            H3, S4 }

          *&data[2 * v48++] = _H3;
        }

        while (a9 > v48);
        ++v47;
        data += rowBytes;
        v45 += v46;
        v44 += v40;
        v43 += v41;
      }

      while (a10 > v47);
    }

    else if (v34)
    {
      if ((v30 & (v22 <= 10.0)) != 0)
      {
        v60 = 0;
        do
        {
          v61 = v45;
          v62 = 1;
          do
          {
            *v61++ = 32256;
            v63 = v62++;
          }

          while (a9 > v63);
          ++v60;
          v45 += v46;
        }

        while (a10 > v60);
      }

      else
      {
        v72 = 0;
        do
        {
          v73 = 0;
          do
          {
            v74 = *&v43[4 * v73];
            _H2 = 32256;
            if (v74 != 0.0)
            {
              _S2 = 1.0 / v74;
              __asm { FCVT            H2, S2 }
            }

            *&v45[2 * v73++] = _H2;
          }

          while (a9 > v73);
          ++v72;
          v45 += v46;
          v43 += v41;
        }

        while (a10 > v72);
      }
    }

    else
    {
      v64 = 0;
      do
      {
        v65 = 0;
        do
        {
          v66 = *&v43[4 * v65];
          v67 = *&v44[4 * v65];
          if (v66 < v28 || v66 > v25)
          {
            v67 = 10.0;
          }

          if (v67 >= v22)
          {
            v69 = v30;
          }

          else
          {
            v69 = 0;
          }

          _H4 = 32256;
          if ((v69 & 1) == 0)
          {
            _H4 = 32256;
            if (v66 != 0.0)
            {
              _S3 = 1.0 / v66;
              __asm { FCVT            H4, S3 }
            }
          }

          *&v45[2 * v65++] = _H4;
        }

        while (a9 > v65);
        ++v64;
        v45 += v46;
        v44 += v40;
        v43 += v41;
      }

      while (a10 > v64);
    }
  }

LABEL_37:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (a4)
  {
    CVPixelBufferUnlockBaseAddress(a4, 0);
  }
}

void filterDepthAndUncertainty<half,float,false>(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, void *a5, void *a6, double a7, double a8, double a9, double a10)
{
  v84 = a5;
  v19 = a6;
  v20 = [v19 pipelineParameters];
  [v20 uncertaintyThreshold];
  _S12 = v21;

  v23 = [v19 pipelineParameters];
  [v23 maxDepthThresholdForInvalidUncertainty];
  _S13 = v24;

  v26 = [v19 pipelineParameters];
  [v26 minDepthThresholdForInvalidUncertainty];
  _S14 = v27;

  v29 = [v19 pipelineParameters];
  v30 = [v29 outputHighConfidencePixelsOnly];

  if (v84)
  {
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = [v84 length];
      v34 = v31 >= v33;
      if (v31 >= v33)
      {
        break;
      }

      if (*([v84 confidences] + 4 * v31) > 0.0)
      {
        v35 = [v19 pipelineParameters];
        v36 = [v35 minRequiredJasperPoints];
        ++v32;

        if (v32 >= v36)
        {
          v34 = 0;
          break;
        }
      }

      ++v31;
    }
  }

  else
  {
    v34 = 1;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  if (a4)
  {
    CVPixelBufferLockBaseAddress(a4, 0);
  }

  memset(&v88, 0, sizeof(v88));
  v37 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v88);
  memset(&v87, 0, sizeof(v87));
  PixelBufferUtils::asVImageBuffer(a2, *v37, &v87);
  memset(&v86, 0, sizeof(v86));
  PixelBufferUtils::asVImageBuffer(a3, *v37, &v86);
  if (a4)
  {
    PixelBufferUtils::asVImageBuffer(a4, *v37, &v85);
    data = v85.data;
    rowBytes = v85.rowBytes;
    if (a10 <= 0.0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    rowBytes = 0;
    data = 0;
    if (a10 <= 0.0)
    {
      goto LABEL_68;
    }
  }

  __asm { FCVT            H0, S12 }

  if (a9 > 0.0)
  {
    __asm
    {
      FCVT            H1, S13
      FCVT            H2, S14
    }

    v47 = v87.rowBytes;
    v48 = v88.rowBytes;
    v49 = 2 * a7;
    v50 = v88.data + v88.rowBytes * a8 + v49;
    v51 = v87.data + v87.rowBytes * a8 + v49;
    v52 = v86.data;
    v53 = v86.rowBytes;
    if (a4)
    {
      if (v34)
      {
        if ((v30 & (_H0 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(10.0)))) != 0)
        {
          v54 = 0;
          do
          {
            v55 = 0;
            do
            {
              *&v52[4 * v55] = 2143289344;
              *&data[4 * v55++] = 1092616192;
            }

            while (a9 > v55);
            ++v54;
            data += rowBytes;
            v52 += v53;
          }

          while (a10 > v54);
        }

        else
        {
          v76 = 0;
          do
          {
            v77 = 0;
            do
            {
              _H0 = *&v50[2 * v77];
              __asm { FCVT            S0, H0 }

              *&v52[4 * v77] = _S0;
              *&data[4 * v77++] = 1092616192;
            }

            while (a9 > v77);
            ++v76;
            data += rowBytes;
            v52 += v53;
            v50 += v48;
          }

          while (a10 > v76);
        }
      }

      else
      {
        v60 = 0;
        do
        {
          v61 = 0;
          do
          {
            _H5 = *&v50[2 * v61];
            _H6 = *&v51[2 * v61];
            if (_H5 < _H2 || _H5 > _H1)
            {
              LOWORD(_H6) = COERCE_UNSIGNED_INT(10.0);
            }

            __asm { FCVT            S5, H5 }

            if ((v30 & (_H6 >= _H0)) != 0)
            {
              _S5 = NAN;
            }

            *&v52[4 * v61] = _S5;
            __asm { FCVT            S5, H6 }

            *&data[4 * v61++] = _S5;
          }

          while (a9 > v61);
          ++v60;
          data += rowBytes;
          v52 += v53;
          v51 += v47;
          v50 += v48;
        }

        while (a10 > v60);
      }
    }

    else if (v34)
    {
      if ((v30 & (_H0 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(10.0)))) != 0)
      {
        v56 = 0;
        do
        {
          v57 = v52;
          v58 = 1;
          do
          {
            *v57++ = 2143289344;
            v59 = v58++;
          }

          while (a9 > v59);
          ++v56;
          v52 += v53;
        }

        while (a10 > v56);
      }

      else
      {
        v80 = 0;
        do
        {
          v81 = 0;
          do
          {
            _H0 = *&v50[2 * v81];
            __asm { FCVT            S0, H0 }

            *&v52[4 * v81++] = _S0;
          }

          while (a9 > v81);
          ++v80;
          v52 += v53;
          v50 += v48;
        }

        while (a10 > v80);
      }
    }

    else
    {
      v67 = 0;
      if (v30)
      {
        do
        {
          v68 = 0;
          do
          {
            _H5 = *&v50[2 * v68];
            v70 = *&v51[2 * v68];
            if (_H5 < _H2 || _H5 > _H1)
            {
              LOWORD(v70) = COERCE_UNSIGNED_INT(10.0);
            }

            __asm { FCVT            S5, H5 }

            if (v70 >= _H0)
            {
              _S5 = NAN;
            }

            *&v52[4 * v68++] = _S5;
          }

          while (a9 > v68);
          ++v67;
          v52 += v53;
          v51 += v47;
          v50 += v48;
        }

        while (a10 > v67);
      }

      else
      {
        do
        {
          v73 = 0;
          do
          {
            _H0 = *&v50[2 * v73];
            __asm { FCVT            S0, H0 }

            *&v52[4 * v73++] = _S0;
          }

          while (a9 > v73);
          ++v67;
          v52 += v53;
          v50 += v48;
        }

        while (a10 > v67);
      }
    }
  }

LABEL_68:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (a4)
  {
    CVPixelBufferUnlockBaseAddress(a4, 0);
  }
}

void filterDepthAndUncertainty<half,half,false>(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, void *a5, void *a6, double a7, double a8, double a9, double a10)
{
  v79 = a5;
  v19 = a6;
  v20 = [v19 pipelineParameters];
  [v20 uncertaintyThreshold];
  _S12 = v21;

  v23 = [v19 pipelineParameters];
  [v23 maxDepthThresholdForInvalidUncertainty];
  _S13 = v24;

  v26 = [v19 pipelineParameters];
  [v26 minDepthThresholdForInvalidUncertainty];
  _S14 = v27;

  v29 = [v19 pipelineParameters];
  v30 = [v29 outputHighConfidencePixelsOnly];

  if (v79)
  {
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = [v79 length];
      v34 = v31 >= v33;
      if (v31 >= v33)
      {
        break;
      }

      if (*([v79 confidences] + 4 * v31) > 0.0)
      {
        v35 = [v19 pipelineParameters];
        v36 = [v35 minRequiredJasperPoints];
        ++v32;

        if (v32 >= v36)
        {
          v34 = 0;
          break;
        }
      }

      ++v31;
    }
  }

  else
  {
    v34 = 1;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  if (a4)
  {
    CVPixelBufferLockBaseAddress(a4, 0);
  }

  memset(&v83, 0, sizeof(v83));
  v37 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v83);
  memset(&v82, 0, sizeof(v82));
  PixelBufferUtils::asVImageBuffer(a2, *v37, &v82);
  memset(&v81, 0, sizeof(v81));
  PixelBufferUtils::asVImageBuffer(a3, *v37, &v81);
  if (a4)
  {
    PixelBufferUtils::asVImageBuffer(a4, *v37, &v80);
    data = v80.data;
    rowBytes = v80.rowBytes;
    if (a10 <= 0.0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    rowBytes = 0;
    data = 0;
    if (a10 <= 0.0)
    {
      goto LABEL_77;
    }
  }

  __asm { FCVT            H2, S12 }

  if (a9 > 0.0)
  {
    __asm
    {
      FCVT            H0, S13
      FCVT            H1, S14
    }

    v47 = v82.rowBytes;
    v48 = v83.rowBytes;
    v49 = 2 * a7;
    v50 = v83.data + v83.rowBytes * a8 + v49;
    v51 = v82.data + v82.rowBytes * a8 + v49;
    v52 = v81.data;
    v53 = v81.rowBytes;
    if (a4)
    {
      if (v34)
      {
        if ((v30 & (_H2 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(10.0)))) != 0)
        {
          v54 = 0;
          do
          {
            v55 = 0;
            do
            {
              *&v52[2 * v55] = 32256;
              *&data[2 * v55++] = COERCE_UNSIGNED_INT(10.0);
            }

            while (a9 > v55);
            ++v54;
            data += rowBytes;
            v52 += v53;
          }

          while (a10 > v54);
        }

        else
        {
          v71 = 0;
          do
          {
            v72 = 0;
            do
            {
              *&v52[2 * v72] = *&v50[2 * v72];
              *&data[2 * v72++] = COERCE_UNSIGNED_INT(10.0);
            }

            while (a9 > v72);
            ++v71;
            data += rowBytes;
            v52 += v53;
            v50 += v48;
          }

          while (a10 > v71);
        }
      }

      else
      {
        v60 = 0;
        if (v30)
        {
          do
          {
            v61 = 0;
            do
            {
              v62 = *&v50[2 * v61];
              v63 = *&v51[2 * v61];
              if (v62 < _H1 || v62 > _H0)
              {
                LOWORD(v63) = COERCE_UNSIGNED_INT(10.0);
              }

              if (v63 >= _H2)
              {
                v62 = COERCE_SHORT_FLOAT(32256);
              }

              *&v52[2 * v61] = v62;
              *&data[2 * v61++] = v63;
            }

            while (a9 > v61);
            ++v60;
            data += rowBytes;
            v52 += v53;
            v51 += v47;
            v50 += v48;
          }

          while (a10 > v60);
        }

        else
        {
          do
          {
            v73 = 0;
            do
            {
              v74 = *&v50[2 * v73];
              v75 = *&v51[2 * v73];
              if (v74 < _H1 || v74 > _H0)
              {
                v75 = COERCE_UNSIGNED_INT(10.0);
              }

              *&v52[2 * v73] = v74;
              *&data[2 * v73++] = v75;
            }

            while (a9 > v73);
            ++v60;
            data += rowBytes;
            v52 += v53;
            v51 += v47;
            v50 += v48;
          }

          while (a10 > v60);
        }
      }
    }

    else if (v34)
    {
      if ((v30 & (_H2 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(10.0)))) != 0)
      {
        v56 = 0;
        do
        {
          v57 = v52;
          v58 = 1;
          do
          {
            *v57++ = 32256;
            v59 = v58++;
          }

          while (a9 > v59);
          ++v56;
          v52 += v53;
        }

        while (a10 > v56);
      }

      else
      {
        v77 = 0;
        do
        {
          v78 = 0;
          do
          {
            *&v52[2 * v78] = *&v50[2 * v78];
            ++v78;
          }

          while (a9 > v78);
          ++v77;
          v52 += v53;
          v50 += v48;
        }

        while (a10 > v77);
      }
    }

    else
    {
      v65 = 0;
      if (v30)
      {
        do
        {
          v66 = 0;
          do
          {
            v67 = *&v50[2 * v66];
            v68 = *&v51[2 * v66];
            if (v67 < _H1 || v67 > _H0)
            {
              LOWORD(v68) = COERCE_UNSIGNED_INT(10.0);
            }

            if (v68 >= _H2)
            {
              v67 = COERCE_SHORT_FLOAT(32256);
            }

            *&v52[2 * v66++] = v67;
          }

          while (a9 > v66);
          ++v65;
          v52 += v53;
          v51 += v47;
          v50 += v48;
        }

        while (a10 > v65);
      }

      else
      {
        do
        {
          v70 = 0;
          do
          {
            *&v52[2 * v70] = *&v50[2 * v70];
            ++v70;
          }

          while (a9 > v70);
          ++v65;
          v52 += v53;
          v50 += v48;
        }

        while (a10 > v65);
      }
    }
  }

LABEL_77:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (a4)
  {
    CVPixelBufferUnlockBaseAddress(a4, 0);
  }
}

void filterDepthAndUncertainty<half,float,true>(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, void *a5, void *a6, double a7, double a8, double a9, double a10)
{
  v82 = a5;
  v19 = a6;
  v20 = [v19 pipelineParameters];
  [v20 uncertaintyThreshold];
  _S12 = v21;

  v23 = [v19 pipelineParameters];
  [v23 maxDepthThresholdForInvalidUncertainty];
  _S13 = v24;

  v26 = [v19 pipelineParameters];
  [v26 minDepthThresholdForInvalidUncertainty];
  _S14 = v27;

  v29 = [v19 pipelineParameters];
  v30 = [v29 outputHighConfidencePixelsOnly];

  if (v82)
  {
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = [v82 length];
      v34 = v31 >= v33;
      if (v31 >= v33)
      {
        break;
      }

      if (*([v82 confidences] + 4 * v31) > 0.0)
      {
        v35 = [v19 pipelineParameters];
        v36 = [v35 minRequiredJasperPoints];
        ++v32;

        if (v32 >= v36)
        {
          v34 = 0;
          break;
        }
      }

      ++v31;
    }
  }

  else
  {
    v34 = 1;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  if (a4)
  {
    CVPixelBufferLockBaseAddress(a4, 0);
  }

  memset(&v86, 0, sizeof(v86));
  v37 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v86);
  memset(&v85, 0, sizeof(v85));
  PixelBufferUtils::asVImageBuffer(a2, *v37, &v85);
  memset(&v84, 0, sizeof(v84));
  PixelBufferUtils::asVImageBuffer(a3, *v37, &v84);
  if (a4)
  {
    PixelBufferUtils::asVImageBuffer(a4, *v37, &v83);
    data = v83.data;
    rowBytes = v83.rowBytes;
    if (a10 <= 0.0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    rowBytes = 0;
    data = 0;
    if (a10 <= 0.0)
    {
      goto LABEL_37;
    }
  }

  __asm { FCVT            H0, S12 }

  if (a9 > 0.0)
  {
    __asm
    {
      FCVT            H1, S13
      FCVT            H2, S14
    }

    v47 = v85.rowBytes;
    v48 = v86.rowBytes;
    v49 = 2 * a7;
    v50 = v86.data + v86.rowBytes * a8 + v49;
    v51 = v85.data + v85.rowBytes * a8 + v49;
    v52 = v84.data;
    v53 = v84.rowBytes;
    if (a4)
    {
      v54 = 0;
      do
      {
        v55 = 0;
        do
        {
          v57 = *&v50[2 * v55];
          _H5 = *&v51[2 * v55];
          v59 = v57 > _H1;
          if (v57 < _H2)
          {
            v59 = 1;
          }

          if (v34 || v59)
          {
            LOWORD(_H5) = COERCE_UNSIGNED_INT(10.0);
          }

          if (_H5 >= _H0)
          {
            v60 = v30;
          }

          else
          {
            v60 = 0;
          }

          _S7 = 2143289344;
          if ((v60 & 1) == 0)
          {
            __asm { FCMP            H6, #0 }

            if (!_ZF)
            {
              _H6 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / _H6;
              __asm { FCVT            S7, H6 }
            }
          }

          *&v52[4 * v55] = _S7;
          __asm { FCVT            S5, H5 }

          *&data[4 * v55++] = _S5;
        }

        while (a9 > v55);
        ++v54;
        data += rowBytes;
        v52 += v53;
        v51 += v47;
        v50 += v48;
      }

      while (a10 > v54);
    }

    else if (v34)
    {
      if ((v30 & (_H0 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(10.0)))) != 0)
      {
        v64 = 0;
        do
        {
          v65 = v52;
          v66 = 1;
          do
          {
            *v65++ = 2143289344;
            v67 = v66++;
          }

          while (a9 > v67);
          ++v64;
          v52 += v53;
        }

        while (a10 > v64);
      }

      else
      {
        v77 = 0;
        do
        {
          v78 = 0;
          do
          {
            __asm { FCMP            H1, #0 }

            if (_ZF)
            {
              _S1 = 2143289344;
            }

            else
            {
              _H1 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / _H1;
              __asm { FCVT            S1, H1 }
            }

            *&v52[4 * v78++] = _S1;
          }

          while (a9 > v78);
          ++v77;
          v52 += v53;
          v50 += v48;
        }

        while (a10 > v77);
      }
    }

    else
    {
      v68 = 0;
      do
      {
        v69 = 0;
        do
        {
          v70 = *&v50[2 * v69];
          v71 = *&v51[2 * v69];
          if (v70 < _H2 || v70 > _H1)
          {
            LOWORD(v71) = COERCE_UNSIGNED_INT(10.0);
          }

          if (v71 >= _H0)
          {
            v73 = v30;
          }

          else
          {
            v73 = 0;
          }

          _S6 = 2143289344;
          if ((v73 & 1) == 0)
          {
            __asm { FCMP            H5, #0 }

            if (!_ZF)
            {
              _H5 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / _H5;
              __asm { FCVT            S6, H5 }
            }
          }

          *&v52[4 * v69++] = _S6;
        }

        while (a9 > v69);
        ++v68;
        v52 += v53;
        v51 += v47;
        v50 += v48;
      }

      while (a10 > v68);
    }
  }

LABEL_37:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (a4)
  {
    CVPixelBufferUnlockBaseAddress(a4, 0);
  }
}

void filterDepthAndUncertainty<half,half,true>(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, void *a5, void *a6, double a7, double a8, double a9, double a10)
{
  v84 = a5;
  v19 = a6;
  v20 = [v19 pipelineParameters];
  [v20 uncertaintyThreshold];
  _S12 = v21;

  v23 = [v19 pipelineParameters];
  [v23 maxDepthThresholdForInvalidUncertainty];
  _S13 = v24;

  v26 = [v19 pipelineParameters];
  [v26 minDepthThresholdForInvalidUncertainty];
  _S14 = v27;

  v29 = [v19 pipelineParameters];
  v30 = [v29 outputHighConfidencePixelsOnly];

  if (v84)
  {
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = [v84 length];
      v34 = v31 >= v33;
      if (v31 >= v33)
      {
        break;
      }

      if (*([v84 confidences] + 4 * v31) > 0.0)
      {
        v35 = [v19 pipelineParameters];
        v36 = [v35 minRequiredJasperPoints];
        ++v32;

        if (v32 >= v36)
        {
          v34 = 0;
          break;
        }
      }

      ++v31;
    }
  }

  else
  {
    v34 = 1;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  if (a4)
  {
    CVPixelBufferLockBaseAddress(a4, 0);
  }

  memset(&v88, 0, sizeof(v88));
  v37 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v88);
  memset(&v87, 0, sizeof(v87));
  PixelBufferUtils::asVImageBuffer(a2, *v37, &v87);
  memset(&v86, 0, sizeof(v86));
  PixelBufferUtils::asVImageBuffer(a3, *v37, &v86);
  if (a4)
  {
    PixelBufferUtils::asVImageBuffer(a4, *v37, &v85);
    data = v85.data;
    rowBytes = v85.rowBytes;
    if (a10 <= 0.0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    rowBytes = 0;
    data = 0;
    if (a10 <= 0.0)
    {
      goto LABEL_82;
    }
  }

  __asm { FCVT            H0, S12 }

  if (a9 > 0.0)
  {
    __asm
    {
      FCVT            H1, S13
      FCVT            H2, S14
    }

    v47 = v87.rowBytes;
    v48 = v88.rowBytes;
    v49 = 2 * a7;
    v50 = v88.data + v88.rowBytes * a8 + v49;
    v51 = v87.data + v87.rowBytes * a8 + v49;
    v52 = v86.data;
    v53 = v86.rowBytes;
    if (a4)
    {
      if (v34)
      {
        if ((v30 & (_H0 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(10.0)))) != 0)
        {
          v54 = 0;
          do
          {
            v55 = 0;
            do
            {
              *&v52[2 * v55] = 32256;
              *&data[2 * v55++] = COERCE_UNSIGNED_INT(10.0);
            }

            while (a9 > v55);
            ++v54;
            data += rowBytes;
            v52 += v53;
          }

          while (a10 > v54);
        }

        else
        {
          v76 = 0;
          do
          {
            v77 = 0;
            do
            {
              __asm { FCMP            H3, #0 }

              if (_ZF)
              {
                v79 = COERCE_SHORT_FLOAT(32256);
              }

              else
              {
                v79 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&v50[2 * v77];
              }

              *&v52[2 * v77] = v79;
              *&data[2 * v77++] = COERCE_UNSIGNED_INT(10.0);
            }

            while (a9 > v77);
            ++v76;
            data += rowBytes;
            v52 += v53;
            v50 += v48;
          }

          while (a10 > v76);
        }
      }

      else
      {
        v60 = 0;
        do
        {
          v61 = 0;
          do
          {
            v62 = *&v50[2 * v61];
            v63 = *&v51[2 * v61];
            if (v62 < _H2 || v62 > _H1)
            {
              LOWORD(v63) = COERCE_UNSIGNED_INT(10.0);
            }

            if (v63 >= _H0)
            {
              v65 = v30;
            }

            else
            {
              v65 = 0;
            }

            __asm { FCMP            H6, #0 }

            if (_ZF)
            {
              v65 = 1;
            }

            v67 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / _H6;
            if (v65)
            {
              v67 = COERCE_SHORT_FLOAT(32256);
            }

            *&v52[2 * v61] = v67;
            *&data[2 * v61++] = v63;
          }

          while (a9 > v61);
          ++v60;
          data += rowBytes;
          v52 += v53;
          v51 += v47;
          v50 += v48;
        }

        while (a10 > v60);
      }
    }

    else if (v34)
    {
      if ((v30 & (_H0 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(10.0)))) != 0)
      {
        v56 = 0;
        do
        {
          v57 = v52;
          v58 = 1;
          do
          {
            *v57++ = 32256;
            v59 = v58++;
          }

          while (a9 > v59);
          ++v56;
          v52 += v53;
        }

        while (a10 > v56);
      }

      else
      {
        v80 = 0;
        do
        {
          v81 = 0;
          do
          {
            __asm { FCMP            H2, #0 }

            if (_ZF)
            {
              v83 = COERCE_SHORT_FLOAT(32256);
            }

            else
            {
              v83 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / *&v50[2 * v81];
            }

            *&v52[2 * v81++] = v83;
          }

          while (a9 > v81);
          ++v80;
          v52 += v53;
          v50 += v48;
        }

        while (a10 > v80);
      }
    }

    else
    {
      v68 = 0;
      do
      {
        v69 = 0;
        do
        {
          v70 = *&v50[2 * v69];
          v71 = *&v51[2 * v69];
          if (v70 < _H2 || v70 > _H1)
          {
            LOWORD(v71) = COERCE_UNSIGNED_INT(10.0);
          }

          if (v71 >= _H0)
          {
            v73 = v30;
          }

          else
          {
            v73 = 0;
          }

          __asm { FCMP            H6, #0 }

          if (_ZF)
          {
            v73 = 1;
          }

          v75 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)) / _H6;
          if (v73)
          {
            v75 = COERCE_SHORT_FLOAT(32256);
          }

          *&v52[2 * v69++] = v75;
        }

        while (a9 > v69);
        ++v68;
        v52 += v53;
        v51 += v47;
        v50 += v48;
      }

      while (a10 > v68);
    }
  }

LABEL_82:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  if (a4)
  {
    CVPixelBufferUnlockBaseAddress(a4, 0);
  }
}

void sub_2403241C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403243AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240324780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t getDateDiff(NSDate *a1, NSDate *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v9 = [v8 components:a3 fromDate:v5 toDate:v6 options:0];
  v10 = [v9 day];

  return v10;
}

uint64_t fireOneShotLargeRotationEventIfDetected(void *a1, unsigned int a2, void *a3, void *a4, float a5, float a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (fabsf(a5) <= a6 || v13 == 0)
  {
    goto LABEL_21;
  }

  if ((a2 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "fireOneShotLargeRotationEventIfDetected: fail to understand history when tried to fire one shot large tolerance", buf, 2u);
    }

    goto LABEL_21;
  }

  v16 = a2;
  v17 = [v13 objectAtIndexedSubscript:a2];
  if (!v17)
  {
    v19 = 0;
LABEL_20:

LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  v18 = [MEMORY[0x277CBEAA8] distantPast];

  if (v17 != v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v11;
    v32 = 2112;
    v33 = *&v17;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "fireOneShotLargeRotationEventIfDetected: this event of large tolerance for %@ is not the first and it wa last sean at %@", buf, 0x16u);
  }

  v19 = [MEMORY[0x277CBEAA8] now];
  if (getDateDiff(v17, v19, 16) < 60)
  {
    goto LABEL_20;
  }

  [v14 setObject:v19 atIndexedSubscript:v16];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v17;
    v32 = 2112;
    v33 = *&v19;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "fireOneShotLargeRotationEventIfDetected: time since last large rotation event is >= then 2 monthes, last event time %@, current event time %@", buf, 0x16u);
  }

  v27 = MEMORY[0x277D85DD0];
  v20 = v11;
  v28 = v20;
  *&v29 = a6;
  if (AnalyticsSendEventLazy())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v20 UTF8String];
      *buf = 136315650;
      v31 = v22;
      v32 = 2048;
      v33 = a5;
      v34 = 2048;
      v35 = a6;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "fireOneShotLargeRotationEventIfDetected: rotation diff %s compare to factory %f > %f fired", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v25 = v20;
    v26 = [v20 UTF8String];
    *buf = 136315394;
    v31 = v26;
    v32 = 2048;
    v33 = a6;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "fireOneShotLargeRotationEventIfDetected: rotation diff %s > %f compare to factory event failed to be seant", buf, 0x16u);
  }

  v23 = 0xFFFFFFFFLL;
LABEL_22:

  return v23;
}

id ___Z39fireOneShotLargeRotationEventIfDetectedPK8NSStringff12OneShotIndexPS_P14NSMutableArray_block_invoke(uint64_t a1, double a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  LODWORD(a2) = *(a1 + 40);
  v9[0] = *(a1 + 32);
  v8[0] = @"Axis";
  v8[1] = @"ToleranceThreshold";
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v9[1] = v3;
  v8[2] = @"ToleranceThreshold_v2";
  LODWORD(v4) = *v2;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

void analyzeOneShotExtremeRotation(float a1, float a2, float a3, NSString *a4, NSMutableArray *a5)
{
  v11 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  fireOneShotLargeRotationEventIfDetected(@"X", 0, v11, v9, a1, 6.0);
  fireOneShotLargeRotationEventIfDetected(@"X", 1u, v11, v9, a1, 12.0);
  fireOneShotLargeRotationEventIfDetected(@"X", 2u, v11, v9, a1, 18.0);
  fireOneShotLargeRotationEventIfDetected(@"X", 3u, v11, v9, a1, 36.0);
  fireOneShotLargeRotationEventIfDetected(@"X", 4u, v11, v9, a1, 60.0);
  fireOneShotLargeRotationEventIfDetected(@"Y", 5u, v11, v9, a2, 6.0);
  fireOneShotLargeRotationEventIfDetected(@"Y", 6u, v11, v9, a2, 12.0);
  fireOneShotLargeRotationEventIfDetected(@"Y", 7u, v11, v9, a2, 18.0);
  fireOneShotLargeRotationEventIfDetected(@"Y", 8u, v11, v9, a2, 36.0);
  fireOneShotLargeRotationEventIfDetected(@"Y", 9u, v11, v9, a2, 60.0);
  fireOneShotLargeRotationEventIfDetected(@"Z", 0xAu, v11, v9, a3, 6.0);
  fireOneShotLargeRotationEventIfDetected(@"Z", 0xBu, v11, v9, a3, 12.0);
  fireOneShotLargeRotationEventIfDetected(@"Z", 0xCu, v11, v9, a3, 18.0);
  fireOneShotLargeRotationEventIfDetected(@"Z", 0xDu, v11, v9, a3, 36.0);
  fireOneShotLargeRotationEventIfDetected(@"Z", 0xEu, v11, v9, a3, 60.0);
  objc_autoreleasePoolPop(v10);
}

void sub_240325350(_Unwind_Exception *a1)
{
  _ZNSt3__18functionIFNS_6vectorI7CGPointNS_9allocatorIS2_EEEERKNS1_IDv3_fNS3_IS6_EEEEEED2Ev(v4 - 88);

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__18functionIFNS_6vectorI7CGPointNS_9allocatorIS2_EEEERKNS1_IDv3_fNS3_IS6_EEEEEED2Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ZNSt3__110__function6__funcIZ53__ADWorldToImageProjection_initWithPose_calibration__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEEclESD_@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = v5 - v4;
  if (v5 != v4)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return [*(a1 + 8) project:v6 >> 4 points:? outUndistortedPixels:?];
}

void sub_2403254A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZ53__ADWorldToImageProjection_initWithPose_calibration__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEE18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

id _ZNKSt3__110__function6__funcIZ53__ADWorldToImageProjection_initWithPose_calibration__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_285231478;
  result = v3;
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZ53__ADWorldToImageProjection_initWithPose_calibration__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEED0Ev(uint64_t a1)
{

  JUMPOUT(0x245CBFCB0);
}

void sub_240325AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_2403261A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2403266A0(_Unwind_Exception *a1)
{
  MEMORY[0x245CBFCB0](v3, 0x1020C403903361BLL);

  _Unwind_Resume(a1);
}

uint64_t GMC_Normalise2DPts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v4)
  {
    _ZF = v3 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF || v4 <= 2)
  {
LABEL_63:
    __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
  }

  v8 = *(a1 + 8);
  v9 = &v8[v3];
  v10 = (2 * v3);
  v11 = &v8[v10];
  v12 = 0.0;
  if (v3 < 8)
  {
    LODWORD(v13) = 0;
LABEL_8:
    v14 = 0.0;
    goto LABEL_9;
  }

  LODWORD(v13) = 0;
  v42 = (v3 - 1);
  v43 = &v8[v42 + 1];
  v44 = &v8[v3 + 1 + v42];
  v45 = &v8[v10 + 1 + v42];
  v47 = v8 < v45 && v11 < v43;
  v49 = v9 < v45 && v11 < v44;
  v50 = v9 >= v43 || v8 >= v44;
  if (!v50 || v47 || v49)
  {
    goto LABEL_8;
  }

  v13 = v3 & 0xFFFFFFFC;
  v51 = 8 * v13;
  v9 += v13;
  v52 = (v8 + 2);
  v53 = 8 * v3;
  __asm { FMOV            V1.2D, #1.0 }

  v57 = v11;
  v58 = v13;
  v14 = 0.0;
  do
  {
    v59 = (v52 + v53);
    v60 = *v57;
    v61 = v57[1];
    v62 = vdivq_f64(v52[-1], *v57);
    v63 = vdivq_f64(*v52, v61);
    v52[-1] = v62;
    *v52 = v63;
    v64 = vdivq_f64(*(v52 + v53 - 16), v60);
    v65 = vdivq_f64(*(v52 + 8 * v3), v61);
    v59[-1] = v64;
    *v59 = v65;
    *v57 = _Q1;
    v57[1] = _Q1;
    v57 += 2;
    v12 = v12 + v62.f64[0] + v62.f64[1] + v63.f64[0] + v63.f64[1];
    v14 = v14 + v64.f64[0] + v64.f64[1] + v65.f64[0] + v65.f64[1];
    v52 += 2;
    v58 -= 4;
  }

  while (v58);
  if (v13 != v3)
  {
    v11 = (v11 + v51);
    v8 = (v8 + v51);
LABEL_9:
    v15 = v3 - v13;
    do
    {
      *v8 = *v8 / *v11;
      *v9 = *v9 / *v11;
      *v11++ = 1.0;
      v16 = *v8++;
      v12 = v12 + v16;
      v17 = *v9++;
      v14 = v14 + v17;
      --v15;
    }

    while (v15);
  }

  v18 = *(a2 + 16);
  if (!v18)
  {
    goto LABEL_63;
  }

  v19 = *(a2 + 20);
  if (!v19 || v18 <= 2)
  {
    goto LABEL_63;
  }

  v20 = v3;
  v21 = v12 / v3;
  v22 = *(a2 + 8);
  v23 = &v22[v19];
  v24 = (2 * v19);
  v25 = &v22[v24];
  v26 = *(a1 + 8);
  v27 = &v26[v3];
  v28 = 0.0;
  v29 = v14 / v3;
  if (v3 < 0x10)
  {
    LODWORD(v30) = 0;
    goto LABEL_16;
  }

  LODWORD(v30) = 0;
  v66 = &v22[v24] - v26;
  v67 = 8 * v3;
  if (v66 - 8 * v3 < 0x20)
  {
    goto LABEL_16;
  }

  if (v66 < 0x20)
  {
    goto LABEL_16;
  }

  v68 = &v22[v19] - v26;
  if (v68 - v67 < 0x20 || v68 < 0x20 || (&v26[v67 / 8] - v22) < 0x20 || (v22 - v26) < 0x20 || v19 < 4 || v24 < 4 || (8 * v24 - 8 * v19) < 0x20)
  {
    goto LABEL_16;
  }

  v30 = v3 & 0xFFFFFFFC;
  v69 = 8 * v30;
  v70 = (v23 + 8 * v30);
  v71 = vdupq_lane_s64(*&v21, 0);
  v72 = vdupq_lane_s64(*&v29, 0);
  v27 += v30;
  v73 = (v26 + 2);
  v74 = (v22 + 2);
  v75 = v25;
  v76 = v30;
  do
  {
    v77 = vsubq_f64(v73[-1], v71);
    v78 = vsubq_f64(*v73, v71);
    v74[-1] = v77;
    *v74 = v78;
    v79 = vsubq_f64(*(v73 + v67 - 16), v72);
    v80 = vsubq_f64(*(v73 + 8 * v3), v72);
    *v23 = v79;
    v23[1] = v80;
    v23 += 2;
    v81 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v79, v79), v77, v77));
    v82 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v80, v80), v78, v78));
    *v75 = v81;
    v75[1] = v82;
    v75 += 2;
    v28 = v28 + v81.f64[0] + v81.f64[1] + v82.f64[0] + v82.f64[1];
    v73 += 2;
    v74 += 2;
    v76 -= 4;
  }

  while (v76);
  if (v30 != v3)
  {
    v25 = (v25 + v69);
    v22 = (v22 + v69);
    v26 = (v26 + v69);
    v23 = v70;
LABEL_16:
    v31 = v3 - v30;
    do
    {
      v32 = *v26++;
      v33 = v32 - v21;
      *v22++ = v32 - v21;
      v34 = *v27++;
      v23->f64[0] = v34 - v29;
      v23 = (v23 + 8);
      v35 = sqrt((v34 - v29) * (v34 - v29) + v33 * v33);
      *v25++ = v35;
      v28 = v28 + v35;
      --v31;
    }

    while (v31);
  }

  v36 = 1.41421356 / (v28 / v20);
  *a3 = v36;
  *(a3 + 8) = 0;
  *(a3 + 16) = -(v36 * v21);
  *(a3 + 24) = 0;
  *(a3 + 32) = v36;
  *(a3 + 40) = -(v36 * v29);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x3FF0000000000000;
  MatrixMxN<3u,3u,double>::operator*(v85, a3, a1);
  v37 = v86;
  v38 = v87;
  v84 = v88;
  __src = v86;
  v39 = 24 * v87;
  v40 = *(a2 + 8);
  if (*(a2 + 32) < v39)
  {
    if (v40)
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x245CBFC90](v40);
      }
    }

    operator new[]();
  }

  *(a2 + 16) = 3;
  *(a2 + 20) = v38;
  memcpy(v40, v37, v39);
  if (__src && v84 == 1)
  {
    MEMORY[0x245CBFC90](__src);
  }

  return 0;
}

void sub_240327484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void (*a26)(char *))
{
  operator delete(v26);
  a26(&a24);

  _Unwind_Resume(a1);
}

void sub_2403277F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_240328204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  std::tuple<BOOL,float,float,std::vector<float>,std::vector<float>,std::vector<ADDisparityToDepthFitWorldPoint>>::~tuple((v71 - 240));
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  (a69)(&a67);

  _Unwind_Resume(a1);
}

void *std::tuple<BOOL,float,float,std::vector<float>,std::vector<float>,std::vector<ADDisparityToDepthFitWorldPoint>>::~tuple(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZ92__ADDispartiyToDepthFitEstimator_estimateWithDisparity_calibration_pose_disparityTimestamp__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEEclESD_(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v9 = objc_alloc(MEMORY[0x277CED040]);
  LODWORD(v10) = 1.0;
  v11 = [v9 initWithIntrinsics:0 cameraToPlatformTransform:0.0 pixelSize:0.0 referenceDimensions:0.0 distortionModel:{*&_PromotedConst, unk_240407F50, 0.0, unk_240407F70, v10, 0x3FF0000000000000, 0x3FF0000000000000}];
  [v11 transform:(a2[1] - *a2) >> 4 points:? toCamera:? outPoints:?];
  [*(a1 + 8) project:-v8 >> 4 points:v8 outUndistortedPixels:0];

  if (v8)
  {

    operator delete(v8);
  }
}

void sub_2403286A8(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZ92__ADDispartiyToDepthFitEstimator_estimateWithDisparity_calibration_pose_disparityTimestamp__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEE18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

id _ZNKSt3__110__function6__funcIZ92__ADDispartiyToDepthFitEstimator_estimateWithDisparity_calibration_pose_disparityTimestamp__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_2852314C0;
  result = v3;
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZ92__ADDispartiyToDepthFitEstimator_estimateWithDisparity_calibration_pose_disparityTimestamp__E3__0NS_9allocatorIS2_EEFNS_6vectorI7CGPointNS3_IS6_EEEERKNS5_IDv3_fNS3_IS9_EEEEEED0Ev(uint64_t a1)
{

  JUMPOUT(0x245CBFCB0);
}

void sub_240328A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t GMC_ExtractTestSamples(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 20);
  if (!a3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16))
    {
      if (!*(a4 + 16))
      {
        goto LABEL_89;
      }

      v69 = *(a4 + 20);
      if (*(a2 + 16))
      {
        v70 = *(a2 + 20);
        if (v69 > v70)
        {
          v124 = 0;
          while (v69 != v124)
          {
            v125 = (*(a1 + 8) + 8 * v124);
            v126 = v125[2 * v10];
            v127 = v125[v10];
            v128 = *v125;
            v129 = (*(a4 + 8) + 8 * v124);
            *v129 = v128;
            v129[v69] = v127;
            v129[2 * v69] = v126;
            if (v70 == v124)
            {
              goto LABEL_88;
            }

            if (!*(a5 + 16))
            {
              break;
            }

            v130 = *(a5 + 20);
            if (v124 >= v130)
            {
              break;
            }

            v131 = (*(a2 + 8) + 8 * v124);
            v132 = v131[v70];
            v133 = v131[2 * v70];
            v134 = *v131;
            v135 = (*(a5 + 8) + 8 * v124);
            *v135 = v134;
            v135[v130] = v132;
            v135[2 * v130] = v133;
            if (v10 == ++v124)
            {
              return 0;
            }
          }
        }

        else
        {
          v71 = 0;
          v72 = 2 * v70;
          v73 = v70;
          while (v69 != v71)
          {
            v74 = (*(a1 + 8) + 8 * v71);
            v75 = v74[2 * v10];
            v76 = v74[v10];
            v77 = *v74;
            v78 = (*(a4 + 8) + 8 * v71);
            *v78 = v77;
            v78[v69] = v76;
            v78[2 * v69] = v75;
            if (!*(a5 + 16))
            {
              break;
            }

            v79 = *(a5 + 20);
            if (v71 >= v79)
            {
              break;
            }

            v80 = (*(a2 + 8) + 8 * v71);
            v81 = v80[v73];
            v82 = v80[v72];
            v83 = *v80;
            v84 = (*(a5 + 8) + 8 * v71);
            *v84 = v83;
            v84[v79] = v81;
            v84[2 * v79] = v82;
            if (v10 == ++v71)
            {
              return 0;
            }
          }
        }

LABEL_89:
        __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
      }

      if (!v69)
      {
        goto LABEL_89;
      }

      v137 = *(a1 + 8);
      v138 = &v137[v10];
      v139 = v138[v10];
      v140 = *v138;
      v141 = *v137;
      v142 = *(a4 + 8);
      *v142 = v141;
      v143 = v69;
      v144 = &v142[v143];
      *v144 = v140;
      v144[v143] = v139;
    }

LABEL_88:
    __assert_rtn("operator()", "Matrix.hpp", 126, "row < m_rows && col < m_cols");
  }

  v11 = v10 / a3;
  v12 = *(a1 + 16);
  if (v11 <= 1.0)
  {
    v85 = *(a4 + 8);
    if (*(a4 + 32) < 8 * v12 * v10)
    {
      if (v85 && *(a4 + 24) == 1)
      {
        MEMORY[0x245CBFC90](*(a4 + 8), 0x1000C8000313F17);
      }

      operator new[]();
    }

    *(a4 + 16) = v12;
    *(a4 + 20) = v10;
    memcpy(v85, *(a1 + 8), 8 * v12 * v10);
    v86 = *(a2 + 16);
    v87 = *(a2 + 20);
    v88 = *(a5 + 8);
    if (*(a5 + 32) < 8 * v86 * v87)
    {
      if (v88 && *(a5 + 24) == 1)
      {
        MEMORY[0x245CBFC90]();
      }

      operator new[]();
    }

    *(a5 + 16) = v86;
    *(a5 + 20) = v87;
    memcpy(v88, *(a2 + 8), 8 * v86 * v87);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperPearlInFieldCalibration GMCJ: Bad configuration in GMC_ExtractTestSamples\n", buf, 2u);
    }

    return 0;
  }

  if (!v10 || !v12)
  {
    goto LABEL_88;
  }

  if (!*(a6 + 16))
  {
    goto LABEL_89;
  }

  v13 = *(a6 + 20);
  if (!v13)
  {
    goto LABEL_89;
  }

  v14 = *(a1 + 8);
  v15 = *v14;
  v16 = v10;
  v17 = &v14[v16];
  v18 = *v17;
  v19 = v17[v16];
  v20 = *(a6 + 8);
  *v20 = v15;
  v21 = v13;
  v22 = &v20[v13];
  *v22 = v18;
  v22[v13] = v19;
  if (!*(a2 + 16))
  {
    goto LABEL_88;
  }

  v23 = *(a2 + 20);
  if (!v23)
  {
    goto LABEL_88;
  }

  if (!*(a7 + 16))
  {
    goto LABEL_89;
  }

  v24 = *(a7 + 20);
  if (!v24)
  {
    goto LABEL_89;
  }

  v25 = *(a2 + 8);
  v26 = *v25;
  v27 = v23;
  v28 = &v25[v23];
  v29 = *v28;
  v30 = v28[v23];
  v31 = *(a7 + 8);
  *v31 = v26;
  v32 = v24;
  v33 = &v31[v24];
  *v33 = v29;
  v33[v24] = v30;
  v34 = (v13 - 1);
  v35 = (v24 - 1);
  v151 = a6;
  v152 = a7;
  v150 = a3;
  v148 = v34;
  v149 = v23;
  v147 = v35;
  v36 = 0;
  if (v10 > v23)
  {
    v89 = 0;
    v146 = 16 * v23;
    for (i = 1; ; ++i)
    {
      v91 = llround(v11 * (i - 1));
      LODWORD(a8) = llround(v11 * i);
      v92 = v91 + 1;
      if (v92 < a8)
      {
        v93 = 0;
        if (v10 <= v92)
        {
          v94 = v92;
        }

        else
        {
          v94 = v10;
        }

        if (v23 <= v92)
        {
          v95 = v92;
        }

        else
        {
          v95 = v23;
        }

        v96 = 8 * v89;
        v97 = v95 - v92;
        v98 = v94 - v92;
        v99 = 8 * (v91 + 1);
        do
        {
          if (v98 == v93)
          {
            goto LABEL_88;
          }

          if (!*(a4 + 16))
          {
            goto LABEL_89;
          }

          v100 = *(a4 + 20);
          if (v89 + v93 >= v100)
          {
            goto LABEL_89;
          }

          v101 = *(a1 + 8);
          v102 = *(v101 + v99 + 8 * v93);
          v103 = *(v101 + v16 * 8 + v99 + 8 * v93);
          v104 = *(v101 + 16 * v10 + v99 + 8 * v93);
          v105 = (*(a4 + 8) + v96 + 8 * v93);
          *v105 = v102;
          v105[v100] = v103;
          v105[2 * v100] = v104;
          if (v97 == v93)
          {
            goto LABEL_88;
          }

          if (!*(a5 + 16))
          {
            goto LABEL_89;
          }

          v106 = *(a5 + 20);
          if (v89 + v93 >= v106)
          {
            goto LABEL_89;
          }

          v107 = *(a2 + 8);
          v108 = *(v107 + v99 + 8 * v93);
          v109 = *(v107 + v27 * 8 + v99 + 8 * v93);
          v110 = *(v107 + v146 + v99 + 8 * v93);
          v111 = (*(a5 + 8) + v96 + 8 * v93);
          *v111 = v108;
          v111[v106] = v109;
          v111[2 * v106] = v110;
          ++v93;
        }

        while ((v91 + 1 + v93) < a8);
        v89 = (v89 + v93);
        a6 = v151;
        a7 = v152;
        a3 = v150;
        v34 = v148;
        LODWORD(v23) = v149;
        v35 = v147;
      }

      if (i == a3)
      {
        break;
      }

      if (v10 <= a8)
      {
        goto LABEL_88;
      }

      if (v36 == v34)
      {
        goto LABEL_89;
      }

      v112 = (*(a1 + 8) + 8 * a8);
      v113 = v112[v10 + v10];
      v114 = v112[v10];
      v115 = *v112;
      v116 = (*(a6 + 8) + 8 * (v36 + 1));
      *v116 = v115;
      v117 = &v116[v21];
      *v117 = v114;
      v117[v21] = v113;
      if (v23 <= a8)
      {
        goto LABEL_88;
      }

      if (v36 == v35)
      {
        goto LABEL_89;
      }

      v118 = (*(a2 + 8) + 8 * a8);
      v119 = v118[v27 + v27];
      v120 = v118[v27];
      v121 = *v118;
      v122 = (*(a7 + 8) + 8 * (v36 + 1));
      *v122 = v121;
      v123 = &v122[v32];
      *v123 = v120;
      v123[v32] = v119;
      ++v36;
    }
  }

  else
  {
    v37 = 0;
    v145 = 16 * v23;
    for (j = 1; ; ++j)
    {
      v39 = llround(v11 * (j - 1));
      LODWORD(a8) = llround(v11 * j);
      v40 = v39 + 1;
      if (v40 < a8)
      {
        v41 = 0;
        if (v10 <= v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = v10;
        }

        v43 = 8 * v37;
        v44 = v42 - v40;
        v45 = 8 * (v39 + 1);
        do
        {
          if (v44 == v41)
          {
            goto LABEL_88;
          }

          if (!*(a4 + 16))
          {
            goto LABEL_89;
          }

          v46 = *(a4 + 20);
          if (v37 + v41 >= v46)
          {
            goto LABEL_89;
          }

          v47 = *(a1 + 8);
          v48 = *(v47 + v16 * 8 + v45 + 8 * v41);
          v49 = *(v47 + 16 * v10 + v45 + 8 * v41);
          v50 = (*(a4 + 8) + v43 + 8 * v41);
          *v50 = *(v47 + v45 + 8 * v41);
          v50[v46] = v48;
          v50[2 * v46] = v49;
          if (!*(a5 + 16))
          {
            goto LABEL_89;
          }

          v51 = *(a5 + 20);
          if (v37 + v41 >= v51)
          {
            goto LABEL_89;
          }

          v52 = *(a2 + 8);
          v53 = *(v52 + v45 + 8 * v41);
          v54 = *(v52 + v27 * 8 + v45 + 8 * v41);
          v55 = *(v52 + v145 + v45 + 8 * v41);
          v56 = (*(a5 + 8) + v43 + 8 * v41);
          *v56 = v53;
          v56[v51] = v54;
          v56[2 * v51] = v55;
          ++v41;
        }

        while ((v39 + 1 + v41) < a8);
        v37 = (v37 + v41);
        a6 = v151;
        a7 = v152;
        a3 = v150;
        v34 = v148;
        LODWORD(v23) = v149;
        v35 = v147;
      }

      if (j == a3)
      {
        break;
      }

      if (v10 <= a8)
      {
        goto LABEL_88;
      }

      if (v36 == v34)
      {
        goto LABEL_89;
      }

      v57 = (*(a1 + 8) + 8 * a8);
      v58 = v57[v10 + v10];
      v59 = v57[v10];
      v60 = *v57;
      v61 = (*(a6 + 8) + 8 * (v36 + 1));
      *v61 = v60;
      v62 = &v61[v21];
      *v62 = v59;
      v62[v21] = v58;
      if (v23 <= a8)
      {
        goto LABEL_88;
      }

      if (v36 == v35)
      {
        goto LABEL_89;
      }

      v63 = (*(a2 + 8) + 8 * a8);
      v64 = v63[v27 + v27];
      v65 = v63[v27];
      v66 = *v63;
      v67 = (*(a7 + 8) + 8 * (v36 + 1));
      *v67 = v66;
      v68 = &v67[v32];
      *v68 = v65;
      v68[v32] = v64;
      ++v36;
    }
  }

  if (v10 - a3 != *(a4 + 20))
  {
    __assert_rtn("GMC_ExtractTestSamples", "GMC_ExtractTestSamples.mm", 105, "pts1.GetNumOfPoints() - testSetSize == newPts1->GetNumOfPoints()");
  }

  return 0;
}

void ADDebugUtils::setVerboseLogsEnabled(ADDebugUtils *this)
{
  v1 = this;
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = v1;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "setting verboseLogs: %d", v2, 8u);
  }

  ADDebugUtilsADVerboseLogsEnabled = v1;
}

uint64_t debugQuickLookObjectFromCGImage(CGImage *a1)
{
  v2 = NSClassFromString(&cfstr_Uiimage.isa);
  v3 = NSSelectorFromString(&cfstr_Imagewithcgima.isa);
  v4 = [(objc_class *)v2 methodForSelector:v3];

  return v4(v2, v3, a1);
}

void jpc::IFA_FilterRunner::~IFA_FilterRunner(jpc::IFA_FilterRunner *this)
{
  *this = &unk_285231508;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x245CBFCB0);
}

{
  *this = &unk_285231508;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_285231508;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

__n128 jpc::IFA_FilterRunner::IFA_FilterRunner(void *a1, __n128 *a2)
{
  *a1 = &unk_285231508;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_285231508;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t jpc::IFA_FilterRunner::applyFilters(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (!a2 || !a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v13 = -22950;
      goto LABEL_15;
    }

    v20 = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "IFA_FilterRunner: dataFrame or ifaDB is NULL";
    v12 = &v20;
LABEL_19:
    _os_log_error_impl(&dword_2402F6000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_9;
  }

  if (*(a1 + 16) == *(a1 + 8))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "IFA_FilterRunner: empty filters vector";
    v12 = buf;
    goto LABEL_19;
  }

  if (*(a2 + 104))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 152);
  }

  [v7 setNumPearlOnlyCorrespondencesPreIFA:v9];
  [v8 setNumPearlJasperCorrespondencesPreIFA:*(a2 + 160)];
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v15 == v14)
  {
LABEL_14:
    v13 = 0;
  }

  else
  {
    while (1)
    {
      v16 = (*(**v15 + 16))(*v15, a2, a3, v8);
      if (v16)
      {
        break;
      }

      if (++v15 == v14)
      {
        goto LABEL_14;
      }
    }

    v13 = v16;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IFA_FilterRunner: Error when applying filters", v18, 2u);
    }
  }

LABEL_15:

  return v13;
}

void sub_24032A230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADDensifiedLiDARFocusAssistExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24032A3D4(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_24032B658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  objc_sync_exit(v39);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a38);
  _Unwind_Resume(a1);
}

void sub_24032BC7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  objc_sync_exit(v2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24032C0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_24032C890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_24032CE08(_Unwind_Exception *a1, void *a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_24032D8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

uint64_t GMC_Undistort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a3 + 572) & 1) == 0)
  {
    v11 = *(a1 + 20);
    if (!v11)
    {
      return 0;
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a4 + 16);
      if (v13)
      {
        v14 = *(a4 + 20);
        if (v12 == 1 || v13 == 1)
        {
          if (!v14)
          {
            goto LABEL_231;
          }

          v243 = **(a1 + 8);
          v244 = *(a4 + 8);
          goto LABEL_230;
        }

        v15 = *(a2 + 16);
        if (!v15)
        {
          if (v14)
          {
            **(a4 + 8) = **(a1 + 8);
            *(*(a4 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v11);
          }

          goto LABEL_231;
        }

        v16 = *(a2 + 20);
        if (v14 <= v16)
        {
          if (v15 != 1)
          {
            v17 = 0;
            v18 = 0;
            v19 = 8 * v16;
            v20 = 8 * v11;
            v21 = 8 * v14;
            while (v21 != v17)
            {
              *(*(a4 + 8) + v17) = *(*(a1 + 8) + v17);
              *(*(a4 + 8) + v21 + v17) = *(*(a1 + 8) + v20 + v17);
              v22 = *(a5 + 16);
              if (!v22)
              {
                break;
              }

              v23 = *(a5 + 20);
              if (v18 >= v23)
              {
                break;
              }

              *(*(a5 + 8) + v17) = *(*(a2 + 8) + v17);
              if (v22 == 1)
              {
                break;
              }

              *(*(a5 + 8) + 8 * v23 + v17) = *(*(a2 + 8) + v19 + v17);
              ++v18;
              v17 += 8;
              if (v20 == v17)
              {
                return 0;
              }
            }

            goto LABEL_231;
          }

          if (!v14)
          {
            goto LABEL_231;
          }

          **(a4 + 8) = **(a1 + 8);
          *(*(a4 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v11);
          goto LABEL_227;
        }

        if (v15 == 1)
        {
          if (!v14)
          {
            goto LABEL_231;
          }

          **(a4 + 8) = **(a1 + 8);
          *(*(a4 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v11);
          if (!v16)
          {
            goto LABEL_231;
          }

LABEL_227:
          if (!*(a5 + 16) || !*(a5 + 20))
          {
            goto LABEL_231;
          }

          v243 = **(a2 + 8);
          v244 = *(a5 + 8);
LABEL_230:
          *v244 = v243;
          goto LABEL_231;
        }

        v79 = 0;
        while (v14 != v79)
        {
          *(*(a4 + 8) + 8 * v79) = *(*(a1 + 8) + 8 * v79);
          *(*(a4 + 8) + 8 * v14 + 8 * v79) = *(*(a1 + 8) + 8 * v11 + 8 * v79);
          if (v16 == v79)
          {
            break;
          }

          v80 = *(a5 + 16);
          if (!v80)
          {
            break;
          }

          v81 = *(a5 + 20);
          if (v79 >= v81)
          {
            break;
          }

          *(*(a5 + 8) + 8 * v79) = *(*(a2 + 8) + 8 * v79);
          if (v80 == 1)
          {
            break;
          }

          *(*(a5 + 8) + 8 * v81 + 8 * v79) = *(*(a2 + 8) + 8 * v16 + 8 * v79);
          if (v11 == ++v79)
          {
            return 0;
          }
        }
      }
    }

LABEL_231:
    __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
  }

  v10 = *(a1 + 20);
  v245 = off_285231258;
  if (2 * v10)
  {
    operator new[]();
  }

  v247 = 2;
  v248 = v10;
  v249 = 0;
  v250 = 16 * v10;
  v245 = &unk_2852312F8;
  v246 = 0;
  v24 = *(a2 + 8);
  v25 = *(a2 + 20);
  if (8 * v10 < (8 * v25))
  {
    operator new[]();
  }

  memcpy(0, v24, 8 * v25);
  v26 = v246;
  v27 = v248;
  if (v248 >= 1)
  {
    v28 = *(a3 + 24);
    v29 = (v246 + 8 * v248);
    if (v29 <= v246 + 8)
    {
      v29 = (v246 + 8);
    }

    v30 = &v29[~v246];
    v31 = v246;
    if (v30 >= 0x18)
    {
      v32 = (v30 >> 3) + 1;
      v33 = (v246 + 16);
      v34 = v32 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = vmulq_n_f64(*v33, v28);
        v33[-1] = vmulq_n_f64(v33[-1], v28);
        *v33 = v35;
        v33 += 2;
        v34 -= 4;
      }

      while (v34);
      if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_31:
        v26 = v246;
        v27 = v248;
        if (v248 < 1)
        {
          goto LABEL_42;
        }

        v37 = *a3;
        v38 = (v246 + 8 * v248);
        if (v38 <= v246 + 8)
        {
          v38 = (v246 + 8);
        }

        v39 = &v38[~v246];
        v40 = v246;
        if (v39 >= 0x18)
        {
          v41 = (v39 >> 3) + 1;
          v42 = vdupq_lane_s64(v37, 0);
          v43 = (v246 + 16);
          v44 = v41 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v45 = vsubq_f64(*v43, v42);
            v43[-1] = vsubq_f64(v43[-1], v42);
            *v43 = v45;
            v43 += 2;
            v44 -= 4;
          }

          while (v44);
          if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_41;
          }

          v40 = (v26 + 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL));
        }

        v46 = v26 + 8 * v27;
        do
        {
          *v40 = *v40 - *&v37;
          ++v40;
        }

        while (v40 < v46);
LABEL_41:
        v26 = v246;
        goto LABEL_42;
      }

      v31 = (v26 + 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL));
    }

    v36 = v26 + 8 * v27;
    do
    {
      *v31 = v28 * *v31;
      ++v31;
    }

    while (v31 < v36);
    goto LABEL_31;
  }

LABEL_42:
  v47 = 8 * v27;
  v48 = *(a2 + 20);
  if (v47 < 8 * v48)
  {
    operator new[]();
  }

  memcpy((v26 + v47), (*(a2 + 8) + 8 * v48), 8 * v48);
  v49 = v248;
  if (v248 <= 0)
  {
    v63 = (a3 + 8);
    goto LABEL_66;
  }

  v50 = *(a3 + 24);
  v51 = (v246 + 8 * v248);
  v52 = 8 * v248;
  v53 = (v246 + 8 * v248 + v52);
  v54 = (v52 + v246);
  if (v53 <= v52 + v246 + 8)
  {
    v53 = (v52 + v246 + 8);
  }

  v55 = &v53[~v246 - v52];
  v56 = (v246 + 8 * v248);
  if (v55 < 0x18)
  {
    goto LABEL_52;
  }

  v57 = (v55 >> 3) + 1;
  v58 = v54 + 1;
  v59 = v57 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v60 = vmulq_n_f64(*v58, v50);
    v58[-1] = vmulq_n_f64(v58[-1], v50);
    *v58 = v60;
    v58 += 2;
    v59 -= 4;
  }

  while (v59);
  if (v57 != (v57 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v56 = &v51[8 * (v57 & 0x3FFFFFFFFFFFFFFCLL)];
LABEL_52:
    v61 = &v51[8 * v49];
    do
    {
      *v56 = v50 * *v56;
      ++v56;
    }

    while (v56 < v61);
  }

  v62 = v248;
  v63 = (a3 + 8);
  v64 = *(a3 + 8);
  if (v248 < 1)
  {
    goto LABEL_66;
  }

  v65 = (v246 + 8 * v248);
  v66 = 8 * v248;
  v67 = (v66 + v246);
  v68 = (v66 + v246 + 8 * v248);
  if (v68 <= v66 + v246 + 8)
  {
    v68 = (v66 + v246 + 8);
  }

  v69 = &v68[~v246 - v66];
  v70 = (v246 + 8 * v248);
  if (v69 < 0x18)
  {
    goto LABEL_62;
  }

  v71 = (v69 >> 3) + 1;
  v72 = vdupq_lane_s64(v64, 0);
  v73 = v67 + 1;
  v74 = v71 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v75 = vsubq_f64(*v73, v72);
    v73[-1] = vsubq_f64(v73[-1], v72);
    *v73 = v75;
    v73 += 2;
    v74 -= 4;
  }

  while (v74);
  if (v71 != (v71 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v70 = &v65[8 * (v71 & 0x3FFFFFFFFFFFFFFCLL)];
LABEL_62:
    v76 = &v65[8 * v62];
    do
    {
      *v70 = *v70 - *&v64;
      ++v70;
    }

    while (v70 < v76);
  }

LABEL_66:
  if (*(a3 + 573))
  {
    v77 = *(a3 + 148);
    if (v77)
    {
      operator new[]();
    }

    memcpy(0, *(a3 + 136), 8 * v77);
    v82 = 8 * *(a3 + 148);
    v83 = (*(a3 + 136) + v82);
    if (v82)
    {
      operator new[]();
    }
  }

  else
  {
    v78 = *(a3 + 844);
    if (v78)
    {
      operator new[]();
    }

    memcpy(0, *(a3 + 832), 8 * v78);
    v82 = 8 * *(a3 + 844);
    v83 = (*(a3 + 832) + v82);
    if (v82)
    {
      operator new[]();
    }
  }

  memcpy(0, v83, v82);
  DistortRadialLiteInternal<double>(&v245, 0, 0, *(a3 + 148));
  v84 = *(a5 + 20);
  if (v84 < 1)
  {
    goto LABEL_123;
  }

  v85 = *a3;
  v86 = *(a5 + 8);
  v87 = v86 + 8 * v84;
  v88 = (v86 + 8);
  if (v87 > v86 + 8)
  {
    v88 = v87;
  }

  v89 = v88 + ~v86;
  if (v89 < 0x18)
  {
    goto LABEL_92;
  }

  v90 = (v89 >> 3) + 1;
  v91 = vdupq_lane_s64(v85, 0);
  v92 = (v86 + 16);
  v93 = v90 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v94 = vaddq_f64(v91, *v92);
    v92[-1] = vaddq_f64(v91, v92[-1]);
    *v92 = v94;
    v92 += 2;
    v93 -= 4;
  }

  while (v93);
  if (v90 != (v90 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v86 += 8 * (v90 & 0x3FFFFFFFFFFFFFFCLL);
    do
    {
LABEL_92:
      *v86 = *&v85 + *v86;
      v86 += 8;
    }

    while (v86 < v87);
  }

  v95 = *(a5 + 8);
  v96 = *(a5 + 20);
  if (v96 >= 1)
  {
    v97 = v96;
    v98 = *(a3 + 24);
    v99 = v96;
    v100 = &v95->f64[v99];
    if (v95 + v99 * 8 <= &v95->f64[1])
    {
      v100 = &v95->f64[1];
    }

    v101 = v100 + ~v95;
    v102 = *(a5 + 8);
    if (v101 >= 0x18)
    {
      v103 = (v101 >> 3) + 1;
      v104 = vdupq_lane_s64(v98, 0);
      v105 = v95 + 1;
      v106 = v103 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v107 = vdivq_f64(*v105, v104);
        v105[-1] = vdivq_f64(v105[-1], v104);
        *v105 = v107;
        v105 += 2;
        v106 -= 4;
      }

      while (v106);
      if (v103 == (v103 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_103:
        v109 = *(a5 + 8);
        v110 = *v63;
        v111 = 8 * v96;
        v112 = (v109 + 8 * v96);
        v113 = &v112[v99];
        if (&v112[v99] <= v112 + 1)
        {
          v113 = v112 + 1;
        }

        v114 = v113 + ~v109 - v111;
        v115 = v112;
        if (v114 >= 0x18)
        {
          v116 = (v114 >> 3) + 1;
          v117 = vdupq_lane_s64(v110, 0);
          v118 = (v111 + v109 + 16);
          v119 = v116 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v120 = vaddq_f64(v117, *v118);
            v118[-1] = vaddq_f64(v117, v118[-1]);
            *v118 = v120;
            v118 += 2;
            v119 -= 4;
          }

          while (v119);
          if (v116 == (v116 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_112;
          }

          v115 = &v112[v116 & 0x3FFFFFFFFFFFFFFCLL];
        }

        v121 = &v112[v97];
        do
        {
          *v115 = *&v110 + *v115;
          ++v115;
        }

        while (v115 < v121);
LABEL_112:
        v95 = *(a5 + 8);
        goto LABEL_113;
      }

      v102 = &v95->f64[v103 & 0x3FFFFFFFFFFFFFFCLL];
    }

    v108 = &v95->f64[v96];
    do
    {
      *v102 = *v102 / *&v98;
      ++v102;
    }

    while (v102 < v108);
    goto LABEL_103;
  }

LABEL_113:
  v122 = *(a5 + 20);
  if (v122 < 1)
  {
    goto LABEL_123;
  }

  v123 = *(a3 + 24);
  v124 = &v95->f64[v122];
  v125 = v122;
  v126 = &v95->f64[v122 + v125];
  v127 = (v95 + v125 * 8);
  if (v126 <= &v95->f64[v125 + 1])
  {
    v126 = &v95->f64[v125 + 1];
  }

  v128 = v126 + ~v95 - v125 * 8;
  v129 = &v95->f64[v122];
  if (v128 < 0x18)
  {
    goto LABEL_121;
  }

  v130 = (v128 >> 3) + 1;
  v131 = vdupq_lane_s64(v123, 0);
  v132 = v127 + 1;
  v133 = v130 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v134 = vdivq_f64(*v132, v131);
    v132[-1] = vdivq_f64(v132[-1], v131);
    *v132 = v134;
    v132 += 2;
    v133 -= 4;
  }

  while (v133);
  if (v130 != (v130 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v129 = &v124[8 * (v130 & 0x3FFFFFFFFFFFFFFCLL)];
LABEL_121:
    v135 = &v124[8 * v122];
    do
    {
      *v129 = *v129 / *&v123;
      ++v129;
    }

    while (v129 < v135);
  }

LABEL_123:
  v136 = *(a1 + 20);
  if (8 * v248 < 8 * v136)
  {
    operator new[]();
  }

  memcpy(v246, *(a1 + 8), 8 * v136);
  v137 = v246;
  v138 = v248;
  if (v248 >= 1)
  {
    v139 = *(a3 + 80);
    v140 = (v246 + 8 * v248);
    if (v140 <= v246 + 8)
    {
      v140 = (v246 + 8);
    }

    v141 = &v140[~v246];
    v142 = v246;
    if (v141 >= 0x18)
    {
      v143 = (v141 >> 3) + 1;
      v144 = (v246 + 16);
      v145 = v143 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v146 = vmulq_n_f64(*v144, v139);
        v144[-1] = vmulq_n_f64(v144[-1], v139);
        *v144 = v146;
        v144 += 2;
        v145 -= 4;
      }

      while (v145);
      if (v143 == (v143 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_135:
        v137 = v246;
        v138 = v248;
        if (v248 < 1)
        {
          goto LABEL_146;
        }

        v148 = *(a3 + 56);
        v149 = (v246 + 8 * v248);
        if (v149 <= v246 + 8)
        {
          v149 = (v246 + 8);
        }

        v150 = &v149[~v246];
        v151 = v246;
        if (v150 >= 0x18)
        {
          v152 = (v150 >> 3) + 1;
          v153 = vdupq_lane_s64(v148, 0);
          v154 = (v246 + 16);
          v155 = v152 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v156 = vsubq_f64(*v154, v153);
            v154[-1] = vsubq_f64(v154[-1], v153);
            *v154 = v156;
            v154 += 2;
            v155 -= 4;
          }

          while (v155);
          if (v152 == (v152 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_145;
          }

          v151 = (v137 + 8 * (v152 & 0x3FFFFFFFFFFFFFFCLL));
        }

        v157 = v137 + 8 * v138;
        do
        {
          *v151 = *v151 - *&v148;
          ++v151;
        }

        while (v151 < v157);
LABEL_145:
        v137 = v246;
        goto LABEL_146;
      }

      v142 = (v137 + 8 * (v143 & 0x3FFFFFFFFFFFFFFCLL));
    }

    v147 = v137 + 8 * v138;
    do
    {
      *v142 = v139 * *v142;
      ++v142;
    }

    while (v142 < v147);
    goto LABEL_135;
  }

LABEL_146:
  v158 = 8 * v138;
  v159 = *(a1 + 20);
  if (v158 < 8 * v159)
  {
    operator new[]();
  }

  memcpy((v137 + v158), (*(a1 + 8) + 8 * v159), 8 * v159);
  v160 = v248;
  if (v248 <= 0)
  {
    v174 = (a3 + 64);
    goto LABEL_170;
  }

  v161 = *(a3 + 80);
  v162 = (v246 + 8 * v248);
  v163 = 8 * v248;
  v164 = (v246 + 8 * v248 + v163);
  v165 = (v163 + v246);
  if (v164 <= v163 + v246 + 8)
  {
    v164 = (v163 + v246 + 8);
  }

  v166 = &v164[~v246 - v163];
  v167 = (v246 + 8 * v248);
  if (v166 < 0x18)
  {
    goto LABEL_156;
  }

  v168 = (v166 >> 3) + 1;
  v169 = v165 + 1;
  v170 = v168 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v171 = vmulq_n_f64(*v169, v161);
    v169[-1] = vmulq_n_f64(v169[-1], v161);
    *v169 = v171;
    v169 += 2;
    v170 -= 4;
  }

  while (v170);
  if (v168 != (v168 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v167 = &v162[8 * (v168 & 0x3FFFFFFFFFFFFFFCLL)];
LABEL_156:
    v172 = &v162[8 * v160];
    do
    {
      *v167 = v161 * *v167;
      ++v167;
    }

    while (v167 < v172);
  }

  v173 = v248;
  v174 = (a3 + 64);
  v175 = *(a3 + 64);
  if (v248 < 1)
  {
    goto LABEL_170;
  }

  v176 = (v246 + 8 * v248);
  v177 = 8 * v248;
  v178 = (v177 + v246);
  v179 = (v177 + v246 + 8 * v248);
  if (v179 <= v177 + v246 + 8)
  {
    v179 = (v177 + v246 + 8);
  }

  v180 = &v179[~v246 - v177];
  v181 = (v246 + 8 * v248);
  if (v180 < 0x18)
  {
    goto LABEL_166;
  }

  v182 = (v180 >> 3) + 1;
  v183 = vdupq_lane_s64(v175, 0);
  v184 = v178 + 1;
  v185 = v182 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v186 = vsubq_f64(*v184, v183);
    v184[-1] = vsubq_f64(v184[-1], v183);
    *v184 = v186;
    v184 += 2;
    v185 -= 4;
  }

  while (v185);
  if (v182 != (v182 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v181 = &v176[8 * (v182 & 0x3FFFFFFFFFFFFFFCLL)];
LABEL_166:
    v187 = &v176[8 * v173];
    do
    {
      *v181 = *v181 - *&v175;
      ++v181;
    }

    while (v181 < v187);
  }

LABEL_170:
  if ((*(a3 + 573) & 1) == 0)
  {
    v241 = *(a3 + 148);
    if (8 * v241)
    {
      operator new[]();
    }

    memcpy(0, *(a3 + 136), 8 * v241);
    v242 = *(a3 + 148);
    if (8 * v242)
    {
      operator new[]();
    }

    memcpy(0, (*(a3 + 136) + 8 * v242), 8 * v242);
  }

  DistortRadialLiteInternal<double>(&v245, 0, 0, *(a3 + 148));
  v188 = *(a4 + 20);
  if (v188 < 1)
  {
    goto LABEL_210;
  }

  v189 = *(a3 + 56);
  v190 = *(a4 + 8);
  v191 = v190 + 8 * v188;
  v192 = (v190 + 8);
  if (v191 > v190 + 8)
  {
    v192 = v191;
  }

  v193 = v192 + ~v190;
  if (v193 < 0x18)
  {
    goto LABEL_179;
  }

  v194 = (v193 >> 3) + 1;
  v195 = vdupq_lane_s64(v189, 0);
  v196 = (v190 + 16);
  v197 = v194 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v198 = vaddq_f64(v195, *v196);
    v196[-1] = vaddq_f64(v195, v196[-1]);
    *v196 = v198;
    v196 += 2;
    v197 -= 4;
  }

  while (v197);
  if (v194 != (v194 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v190 += 8 * (v194 & 0x3FFFFFFFFFFFFFFCLL);
    do
    {
LABEL_179:
      *v190 = *&v189 + *v190;
      v190 += 8;
    }

    while (v190 < v191);
  }

  v199 = *(a4 + 8);
  v200 = *(a4 + 20);
  if (v200 < 1)
  {
    goto LABEL_200;
  }

  v201 = v200;
  v202 = *(a3 + 80);
  v203 = v200;
  v204 = &v199->f64[v203];
  if (v199 + v203 * 8 <= &v199->f64[1])
  {
    v204 = &v199->f64[1];
  }

  v205 = v204 + ~v199;
  v206 = *(a4 + 8);
  if (v205 < 0x18)
  {
    goto LABEL_188;
  }

  v207 = (v205 >> 3) + 1;
  v208 = vdupq_lane_s64(v202, 0);
  v209 = v199 + 1;
  v210 = v207 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v211 = vdivq_f64(*v209, v208);
    v209[-1] = vdivq_f64(v209[-1], v208);
    *v209 = v211;
    v209 += 2;
    v210 -= 4;
  }

  while (v210);
  if (v207 != (v207 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v206 = &v199->f64[v207 & 0x3FFFFFFFFFFFFFFCLL];
LABEL_188:
    v212 = &v199->f64[v200];
    do
    {
      *v206 = *v206 / *&v202;
      ++v206;
    }

    while (v206 < v212);
  }

  v213 = *(a4 + 8);
  v214 = *v174;
  v215 = 8 * v200;
  v216 = (v213 + 8 * v200);
  v217 = &v216[v203];
  if (&v216[v203] <= v216 + 1)
  {
    v217 = v216 + 1;
  }

  v218 = v217 + ~v213 - v215;
  v219 = v216;
  if (v218 >= 0x18)
  {
    v220 = (v218 >> 3) + 1;
    v221 = vdupq_lane_s64(v214, 0);
    v222 = (v215 + v213 + 16);
    v223 = v220 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v224 = vaddq_f64(v221, *v222);
      v222[-1] = vaddq_f64(v221, v222[-1]);
      *v222 = v224;
      v222 += 2;
      v223 -= 4;
    }

    while (v223);
    if (v220 == (v220 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_199;
    }

    v219 = &v216[v220 & 0x3FFFFFFFFFFFFFFCLL];
  }

  v225 = &v216[v201];
  do
  {
    *v219 = *&v214 + *v219;
    ++v219;
  }

  while (v219 < v225);
LABEL_199:
  v199 = *(a4 + 8);
LABEL_200:
  v226 = *(a4 + 20);
  if (v226 < 1)
  {
    goto LABEL_210;
  }

  v227 = *(a3 + 80);
  v228 = &v199->f64[v226];
  v229 = v226;
  v230 = &v199->f64[v226 + v229];
  v231 = (v199 + v229 * 8);
  if (v230 <= &v199->f64[v229 + 1])
  {
    v230 = &v199->f64[v229 + 1];
  }

  v232 = v230 + ~v199 - v229 * 8;
  v233 = &v199->f64[v226];
  if (v232 < 0x18)
  {
    goto LABEL_208;
  }

  v234 = (v232 >> 3) + 1;
  v235 = vdupq_lane_s64(v227, 0);
  v236 = v231 + 1;
  v237 = v234 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v238 = vdivq_f64(*v236, v235);
    v236[-1] = vdivq_f64(v236[-1], v235);
    *v236 = v238;
    v236 += 2;
    v237 -= 4;
  }

  while (v237);
  if (v234 != (v234 & 0x3FFFFFFFFFFFFFFCLL))
  {
    v233 = &v228[8 * (v234 & 0x3FFFFFFFFFFFFFFCLL)];
LABEL_208:
    v239 = &v228[8 * v226];
    do
    {
      *v233 = *v233 / *&v227;
      ++v233;
    }

    while (v233 < v239);
  }

LABEL_210:
  v245 = off_285231258;
  if (v246 && v249 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  return 0;
}

void sub_24032F2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a12);
  MatrixNxPts<2u,double>::~MatrixNxPts(&a17);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a22);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a27);
  MatrixNxPts<2u,double>::~MatrixNxPts(v27 - 168);
  MatrixNxPts<2u,double>::~MatrixNxPts(v27 - 128);
  _Unwind_Resume(a1);
}

void DistortRadialLiteInternal<double>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*(a1 + 16) == 2)
  {
    v25 = 1;
    v26 = a4;
    v27 = 0;
    v28 = 8 * a4;
    v23 = &unk_285231338;
    v24 = a2;
    v19 = 1;
    v20 = a4;
    v21 = 0;
    v22 = v28;
    v17 = &unk_285231338;
    v18 = a3;
    v4 = *(a1 + 20);
    v11 = off_285231258;
    if (v4)
    {
      operator new[]();
    }

    v13 = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v11 = &unk_285231338;
    v12 = 0;
    v7 = 1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v5 = &unk_285231338;
    v6 = 0;
    __assert_rtn("Interp1WithExtrap", "Algo.hpp", 1285, "xq.GetNumOfPoints() > 0");
  }

  __assert_rtn("DistortRadialLiteInternal", "GeomUtils.hpp", 383, "pts.Rows() == 2");
}

void sub_24032FBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a22 && a24 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a27 && a29 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  if (a32 && a34 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  *(v35 - 168) = v34;
  if (*(v35 - 160))
  {
    if (*(v35 - 144) == 1)
    {
      MEMORY[0x245CBFC90]();
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,4ul,simd_float4x4>(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v27 = v3;

  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v26 = v5;

  v6 = [v1 objectAtIndexedSubscript:2];
  [v6 floatValue];
  v25 = v7;

  v8 = [v1 objectAtIndexedSubscript:3];
  [v8 floatValue];
  v24 = v9;

  v10 = [v1 objectAtIndexedSubscript:4];
  [v10 floatValue];

  v11 = [v1 objectAtIndexedSubscript:5];
  [v11 floatValue];

  v12 = [v1 objectAtIndexedSubscript:6];
  [v12 floatValue];

  v13 = [v1 objectAtIndexedSubscript:7];
  [v13 floatValue];

  v14 = [v1 objectAtIndexedSubscript:8];
  [v14 floatValue];

  v15 = [v1 objectAtIndexedSubscript:9];
  [v15 floatValue];

  v16 = [v1 objectAtIndexedSubscript:10];
  [v16 floatValue];

  v17 = [v1 objectAtIndexedSubscript:11];
  [v17 floatValue];

  v18 = [v1 objectAtIndexedSubscript:12];
  [v18 floatValue];

  v19 = [v1 objectAtIndexedSubscript:13];
  [v19 floatValue];

  v20 = [v1 objectAtIndexedSubscript:14];
  [v20 floatValue];

  v21 = [v1 objectAtIndexedSubscript:15];
  [v21 floatValue];
  *&v22 = __PAIR64__(v26, v27);
  *(&v22 + 1) = __PAIR64__(v24, v25);
  v28 = v22;

  return v28;
}

id ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,4ul,simd_float4x4>(_DWORD *a1)
{
  v2 = objc_opt_new();
  LODWORD(v3) = *a1;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  [v2 addObject:v4];

  LODWORD(v5) = a1[1];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v2 addObject:v6];

  LODWORD(v7) = a1[2];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [v2 addObject:v8];

  LODWORD(v9) = a1[3];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v2 addObject:v10];

  LODWORD(v11) = a1[4];
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v2 addObject:v12];

  LODWORD(v13) = a1[5];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [v2 addObject:v14];

  LODWORD(v15) = a1[6];
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [v2 addObject:v16];

  LODWORD(v17) = a1[7];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  [v2 addObject:v18];

  LODWORD(v19) = a1[8];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [v2 addObject:v20];

  LODWORD(v21) = a1[9];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [v2 addObject:v22];

  LODWORD(v23) = a1[10];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  [v2 addObject:v24];

  LODWORD(v25) = a1[11];
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  [v2 addObject:v26];

  LODWORD(v27) = a1[12];
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  [v2 addObject:v28];

  LODWORD(v29) = a1[13];
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  [v2 addObject:v30];

  LODWORD(v31) = a1[14];
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  [v2 addObject:v32];

  LODWORD(v33) = a1[15];
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  [v2 addObject:v34];

  return v2;
}

void sub_240332558(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void sub_24033290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t buf, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57)
{
  jpc::JpcInputData::~JpcInputData(&a57);

  _Unwind_Resume(a1);
}

void sub_240332E30(_Unwind_Exception *a1)
{
  v8 = *(v6 - 64);
  *(v6 - 64) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  _Unwind_Resume(a1);
}

void sub_240333044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void jpc::JPCConfig::getPORPreprocessorFilterBlockConfig(jpc::JPCConfig *this@<X0>, uint64_t a2@<X8>)
{
  v6 = jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(this);
  v4 = jpc::JPCConfig::readJpcConfigFile(v6, v3);
  v5 = jpc::JPCConfig::prioritizeConfigurations(v6, v4);
  jpc::JPCConfig::printConfigurationToLog(v5, v6, v4);
  jpc::JPCConfig::configDictToPORPreprocessorFilterBlockConfig(v5, a2);
}

id jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(jpc::JPCPORConfig *this)
{
  v19[6] = *MEMORY[0x277D85DE8];
  {
    v18[0] = kADDeviceConfigurationKeyJasperPearlInFieldMinTranslationBetweenFrames;
    v18[1] = kADDeviceConfigurationKeyJasperPearlInFieldMaxTranslationBetweenFrames;
    v19[0] = &unk_28524A4E8;
    v19[1] = &unk_28524A500;
    v18[2] = kADDeviceConfigurationKeyJasperPearlInFieldMinRotationBetweenFrames;
    v18[3] = kADDeviceConfigurationKeyJasperPearlInFieldMaxRotationBetweenFrames;
    v19[2] = &unk_28524A4E8;
    v19[3] = &unk_28524A518;
    v18[4] = kADDeviceConfigurationKeyJasperPearlInFieldMaxJasperGlareSpots;
    v18[5] = kADDeviceConfigurationKeyJasperPearlInFieldMaxJasperReflectiveSpots;
    v19[4] = &unk_28524A530;
    v19[5] = &unk_28524A530;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
    jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::preferences = [ADDeviceConfiguration preferencesWithDefaultValues:v3];
  }

  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MIN_TRANSLATION_THRESHOLD[0]];
    v16[0] = v15;
    v14 = [jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::preferences numberForKey:kADDeviceConfigurationKeyJasperPearlInFieldMinTranslationBetweenFrames];
    v17[0] = v14;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MIN_ROTATION_ANGLE_THRESHOLD[0]];
    v16[1] = v13;
    v4 = [jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::preferences numberForKey:kADDeviceConfigurationKeyJasperPearlInFieldMinRotationBetweenFrames];
    v17[1] = v4;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MAX_TRANSLATION_THRESHOLD[0]];
    v16[2] = v5;
    v6 = [jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::preferences numberForKey:kADDeviceConfigurationKeyJasperPearlInFieldMaxTranslationBetweenFrames];
    v17[2] = v6;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MAX_ROTATION_ANGLE_THRESHOLD[0]];
    v16[3] = v7;
    v8 = [jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::preferences numberForKey:kADDeviceConfigurationKeyJasperPearlInFieldMaxRotationBetweenFrames];
    v17[3] = v8;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::JASPER_MAX_GLARE_SPOTS_THRESHOLD[0]];
    v16[4] = v9;
    v10 = [jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::preferences numberForKey:kADDeviceConfigurationKeyJasperPearlInFieldMaxJasperGlareSpots];
    v17[4] = v10;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::JASPER_MAX_REFLECTIVE_SPOTS_THRESHOLD[0]];
    v16[5] = v11;
    v12 = [jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::preferences numberForKey:kADDeviceConfigurationKeyJasperPearlInFieldMaxJasperReflectiveSpots];
    v17[5] = v12;
    jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::config = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
  }

  v1 = jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(void)::config;

  return v1;
}

id jpc::JPCConfig::readJpcConfigFile(jpc::JPCConfig *this, const char *a2)
{
  v2 = jpc::JPCConfig::readJpcConfigFile(void)::configFileDict;
  if (!jpc::JPCConfig::readJpcConfigFile(void)::configFileDict)
  {
    v3 = jpc::JPCConfig::readJpcConfigFileInner(jpc::JPCConfig::CONFIG_FILE_FILEPATH1[0], a2);
    v4 = jpc::JPCConfig::readJpcConfigFile(void)::configFileDict;
    jpc::JPCConfig::readJpcConfigFile(void)::configFileDict = v3;

    v2 = jpc::JPCConfig::readJpcConfigFile(void)::configFileDict;
    if (!jpc::JPCConfig::readJpcConfigFile(void)::configFileDict)
    {
      v6 = jpc::JPCConfig::readJpcConfigFileInner(jpc::JPCConfig::CONFIG_FILE_FILEPATH2[0], v5);
      v7 = jpc::JPCConfig::readJpcConfigFile(void)::configFileDict;
      jpc::JPCConfig::readJpcConfigFile(void)::configFileDict = v6;

      v2 = jpc::JPCConfig::readJpcConfigFile(void)::configFileDict;
      if (!jpc::JPCConfig::readJpcConfigFile(void)::configFileDict)
      {
        v8 = objc_opt_new();
        v9 = jpc::JPCConfig::readJpcConfigFile(void)::configFileDict;
        jpc::JPCConfig::readJpcConfigFile(void)::configFileDict = v8;

        v2 = jpc::JPCConfig::readJpcConfigFile(void)::configFileDict;
      }
    }
  }

  return v2;
}

id jpc::JPCConfig::prioritizeConfigurations(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 objectForKey:{v10, v13}];
        if (v11)
        {
          [v5 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

void jpc::JPCConfig::printConfigurationToLog(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v25 = a2;
  v24 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v6)
  {
    v7 = *v28;
    p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
    v9 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if (*(p_vtable + 3648) == 1)
        {
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v12 = [obj objectForKeyedSubscript:v11];
          v13 = [v12 stringValue];
          v14 = [v25 objectForKeyedSubscript:v11];
          v15 = [v14 stringValue];
          v16 = [v24 objectForKeyedSubscript:v11];
          v17 = [v16 stringValue];
          *buf = 138413058;
          v32 = v11;
          v33 = 2112;
          v34 = v13;
          v35 = 2112;
          v36 = v15;
          v37 = 2112;
          v38 = v17;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JPC Configuration for key %@: Chosen Value = %@, POR/Defaults Write = %@, ConfigFile = %@", buf, 0x2Au);
        }

        else
        {
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            continue;
          }

          v18 = [obj objectForKeyedSubscript:v11];
          v19 = [v18 stringValue];
          v20 = [v25 objectForKeyedSubscript:v11];
          v21 = [v20 stringValue];
          v22 = [v24 objectForKeyedSubscript:v11];
          v23 = [v22 stringValue];
          *buf = 138413058;
          v32 = v11;
          v33 = 2112;
          v34 = v19;
          v35 = 2112;
          v36 = v21;
          v37 = 2112;
          v38 = v23;
          _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "JPC Configuration for key %@: Chosen Value = %@, POR/Defaults Write = %@, ConfigFile = %@", buf, 0x2Au);
        }

        p_vtable = (&OBJC_METACLASS___ADStereoV2Pipeline + 24);
        v9 = MEMORY[0x277D86220];
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v6);
  }
}

void jpc::JPCConfig::configDictToPORPreprocessorFilterBlockConfig(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MIN_TRANSLATION_THRESHOLD[0]];
  v4 = [v19 objectForKeyedSubscript:v3];
  [v4 floatValue];
  *a2 = v5;

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MIN_ROTATION_ANGLE_THRESHOLD[0]];
  v7 = [v19 objectForKeyedSubscript:v6];
  [v7 floatValue];
  *(a2 + 4) = v8;

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MAX_TRANSLATION_THRESHOLD[0]];
  v10 = [v19 objectForKeyedSubscript:v9];
  [v10 floatValue];
  *(a2 + 8) = v11;

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::VIO_MAX_ROTATION_ANGLE_THRESHOLD[0]];
  v13 = [v19 objectForKeyedSubscript:v12];
  [v13 floatValue];
  *(a2 + 12) = v14;

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::JASPER_MAX_GLARE_SPOTS_THRESHOLD[0]];
  v16 = [v19 objectForKeyedSubscript:v15];
  *(a2 + 16) = [v16 intValue];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORPreprocessorFilterBlock::JASPER_MAX_REFLECTIVE_SPOTS_THRESHOLD[0]];
  v18 = [v19 objectForKeyedSubscript:v17];
  *(a2 + 20) = [v18 intValue];
}

id jpc::JPCConfig::readJpcConfigFileInner(jpc::JPCConfig *this, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v5 = [v3 fileURLWithPath:v4];

  if (!v5)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v16 = this;
        v9 = MEMORY[0x277D86220];
        v10 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
        _os_log_impl(&dword_2402F6000, v9, v10, "JPCConfig: Initializing NSURL from config file filepath %{public}s has failed.", buf, 0xCu);
        v6 = 0;
        goto LABEL_18;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v16 = this;
      v9 = MEMORY[0x277D86220];
      v10 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    v6 = 0;
    goto LABEL_18;
  }

  v14 = 0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v14];
  v7 = v14;
  if (!v6)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v16 = this;
      v11 = MEMORY[0x277D86220];
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v16 = this;
      v11 = MEMORY[0x277D86220];
      v12 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_2402F6000, v11, v12, "Reading JPC config file %{public}s dictionary has failed.", buf, 0xCu);
    goto LABEL_17;
  }

  v8 = v6;
LABEL_17:

LABEL_18:

  return v6;
}

void jpc::JPCConfig::getPORIFAConfig(jpc::JPCConfig *this@<X0>, uint64_t a2@<X8>)
{
  v6 = jpc::JPCPORConfig::PORIFABlockConfig(this);
  v4 = jpc::JPCConfig::readJpcConfigFile(v6, v3);
  v5 = jpc::JPCConfig::prioritizeConfigurations(v6, v4);
  jpc::JPCConfig::printConfigurationToLog(v5, v6, v4);
  jpc::JPCConfig::configDictToPORIFAConfig(v5, a2);
}

id jpc::JPCPORConfig::PORIFABlockConfig(jpc::JPCPORConfig *this)
{
  v26[21] = *MEMORY[0x277D85DE8];
  {
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_PJDEPTHDIFF_FILTER[0]];
    v3 = MEMORY[0x277CBEC38];
    v25[0] = v24;
    v26[0] = MEMORY[0x277CBEC38];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_DEPTH_DIFF_THRESHOLD[0]];
    v25[1] = v23;
    v26[1] = &unk_28524A548;
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_PJWORKDISTOVERLAP_FILTER[0]];
    v25[2] = v22;
    v26[2] = v3;
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WORK_DIST_MIN_DEPTH[0]];
    v25[3] = v21;
    v26[3] = &unk_28524A560;
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WORK_DIST_MAX_DEPTH[0]];
    v25[4] = v20;
    v26[4] = &unk_28524A578;
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_LOCALDEPTHVAR_FILTER[0]];
    v25[5] = v19;
    v26[5] = v3;
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_SIGMA_THRESHOLD[0]];
    v25[6] = v18;
    v26[6] = &unk_28524A590;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WINDOW_WH[0]];
    v25[7] = v17;
    v26[7] = &unk_28524A5A8;
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_PEARL_MIN_DEPTH[0]];
    v25[8] = v16;
    v26[8] = &unk_28524A5C0;
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WINDOW_OCCLUSION_EXTENSION[0]];
    v25[9] = v15;
    v26[9] = &unk_28524A5D8;
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_SPATIALCOVERAGE_FILTER[0]];
    v25[10] = v14;
    v26[10] = v3;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_NBIN_X[0]];
    v25[11] = v13;
    v26[11] = &unk_28524A5D8;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_NBIN_Y[0]];
    v25[12] = v4;
    v26[12] = &unk_28524A5D8;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_MX_PTS_PER_BIN[0]];
    v25[13] = v5;
    v26[13] = &unk_28524A5F0;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_JPTSIDCOVERAGE_CRITERIA[0]];
    v25[14] = v6;
    v26[14] = v3;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::MIN_UNIQUE_JASPER_SPOT_IDS[0]];
    v25[15] = v7;
    v26[15] = &unk_28524A608;
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_PEARLFOVCOVERAGE_CRITERIA[0]];
    v25[16] = v8;
    v26[16] = v3;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::PEARL_FOV_COVERAGE_NBIN_X[0]];
    v25[17] = v9;
    v26[17] = &unk_28524A5D8;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::PEARL_FOV_COVERAGE_NBIN_Y[0]];
    v25[18] = v10;
    v26[18] = &unk_28524A5D8;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::PEARL_FOV_COVERAGE_MX_PTS_PER_BIN[0]];
    v25[19] = v11;
    v26[19] = &unk_28524A620;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::VAL_SET_PERCENTAGE[0]];
    v25[20] = v12;
    v26[20] = &unk_28524A968;
    jpc::JPCPORConfig::PORIFABlockConfig(void)::config = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:21];
  }

  v1 = jpc::JPCPORConfig::PORIFABlockConfig(void)::config;

  return v1;
}

void jpc::JPCConfig::configDictToPORIFAConfig(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_PJDEPTHDIFF_FILTER[0]];
  v4 = [v50 objectForKeyedSubscript:v3];
  *a2 = [v4 BOOLValue];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_DEPTH_DIFF_THRESHOLD[0]];
  v6 = [v50 objectForKeyedSubscript:v5];
  [v6 floatValue];
  *(a2 + 4) = v7;

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_PJWORKDISTOVERLAP_FILTER[0]];
  v9 = [v50 objectForKeyedSubscript:v8];
  *(a2 + 8) = [v9 BOOLValue];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WORK_DIST_MIN_DEPTH[0]];
  v11 = [v50 objectForKeyedSubscript:v10];
  [v11 floatValue];
  *(a2 + 12) = v12;

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WORK_DIST_MAX_DEPTH[0]];
  v14 = [v50 objectForKeyedSubscript:v13];
  [v14 floatValue];
  *(a2 + 16) = v15;

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_LOCALDEPTHVAR_FILTER[0]];
  v17 = [v50 objectForKeyedSubscript:v16];
  *(a2 + 20) = [v17 BOOLValue];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_SIGMA_THRESHOLD[0]];
  v19 = [v50 objectForKeyedSubscript:v18];
  [v19 floatValue];
  *(a2 + 24) = v20;

  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WINDOW_WH[0]];
  v22 = [v50 objectForKeyedSubscript:v21];
  *(a2 + 32) = [v22 unsignedIntegerValue];

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_PEARL_MIN_DEPTH[0]];
  v24 = [v50 objectForKeyedSubscript:v23];
  *(a2 + 40) = [v24 unsignedIntegerValue];

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_WINDOW_OCCLUSION_EXTENSION[0]];
  v26 = [v50 objectForKeyedSubscript:v25];
  *(a2 + 48) = [v26 unsignedIntegerValue];

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_SPATIALCOVERAGE_FILTER[0]];
  v28 = [v50 objectForKeyedSubscript:v27];
  *(a2 + 56) = [v28 BOOLValue];

  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_NBIN_X[0]];
  v30 = [v50 objectForKeyedSubscript:v29];
  *(a2 + 64) = [v30 unsignedIntegerValue];

  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_NBIN_Y[0]];
  v32 = [v50 objectForKeyedSubscript:v31];
  *(a2 + 72) = [v32 unsignedIntegerValue];

  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_MX_PTS_PER_BIN[0]];
  v34 = [v50 objectForKeyedSubscript:v33];
  *(a2 + 80) = [v34 unsignedIntegerValue];

  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_JPTSIDCOVERAGE_CRITERIA[0]];
  v36 = [v50 objectForKeyedSubscript:v35];
  *(a2 + 88) = [v36 BOOLValue];

  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::MIN_UNIQUE_JASPER_SPOT_IDS[0]];
  v38 = [v50 objectForKeyedSubscript:v37];
  *(a2 + 96) = [v38 unsignedIntegerValue];

  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::IFA_ENABLE_PEARLFOVCOVERAGE_CRITERIA[0]];
  v40 = [v50 objectForKeyedSubscript:v39];
  *(a2 + 104) = [v40 BOOLValue];

  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::PEARL_FOV_COVERAGE_NBIN_X[0]];
  v42 = [v50 objectForKeyedSubscript:v41];
  *(a2 + 112) = [v42 unsignedIntegerValue];

  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::PEARL_FOV_COVERAGE_NBIN_Y[0]];
  v44 = [v50 objectForKeyedSubscript:v43];
  *(a2 + 120) = [v44 unsignedIntegerValue];

  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::PEARL_FOV_COVERAGE_MX_PTS_PER_BIN[0]];
  v46 = [v50 objectForKeyedSubscript:v45];
  *(a2 + 128) = [v46 unsignedIntegerValue];

  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORIFABlock::VAL_SET_PERCENTAGE[0]];
  v48 = [v50 objectForKeyedSubscript:v47];
  [v48 floatValue];
  *(a2 + 136) = v49;
}

void jpc::JPCConfig::getGMCJConfig(jpc::JPCConfig *this@<X0>, uint64_t a2@<X8>)
{
  v6 = jpc::JPCPORConfig::PORGMCJBlockConfig(this);
  v4 = jpc::JPCConfig::readJpcConfigFile(v6, v3);
  v5 = jpc::JPCConfig::prioritizeConfigurations(v6, v4);
  jpc::JPCConfig::printConfigurationToLog(v5, v6, v4);
  jpc::JPCConfig::configDictToGMCJConfig(v5, a2);
}

id jpc::JPCPORConfig::PORGMCJBlockConfig(jpc::JPCPORConfig *this)
{
  v45[39] = *MEMORY[0x277D85DE8];
  {
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_EFL[0]];
    v3 = MEMORY[0x277CBEC38];
    v44[0] = v43;
    v45[0] = MEMORY[0x277CBEC38];
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_PPX[0]];
    v44[1] = v42;
    v45[1] = v3;
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_PPY[0]];
    v44[2] = v41;
    v45[2] = v3;
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_INCLUDE_JASPER_RESIDUAL_FUNCTION[0]];
    v44[3] = v40;
    v45[3] = v3;
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_IS_UNDISTORT_CORRS[0]];
    v44[4] = v39;
    v45[4] = v3;
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_IS_REF_CONFIG[0]];
    v44[5] = v38;
    v45[5] = v3;
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_TEST_SET_SIZE[0]];
    v44[6] = v37;
    v45[6] = &unk_28524A4E8;
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_COVERAGE_RATE_THRES[0]];
    v44[7] = v36;
    v45[7] = &unk_28524A998;
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_CORR_NUM_THRES[0]];
    v44[8] = v35;
    v45[8] = &unk_28524A518;
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SINGULARITY_THRES[0]];
    v44[9] = v34;
    v45[9] = &unk_28524A9A8;
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_IS_REFINE_BA[0]];
    v44[10] = v33;
    v45[10] = v3;
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_T[0]];
    v4 = MEMORY[0x277CBEC28];
    v44[11] = v32;
    v45[11] = MEMORY[0x277CBEC28];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_RANSAC_T_VAL[0]];
    v44[12] = v31;
    v45[12] = &unk_28524A9B8;
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_MAX_ITR[0]];
    v44[13] = v30;
    v45[13] = &unk_28524A638;
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_MAX_STALL_COUNT[0]];
    v44[14] = v29;
    v45[14] = &unk_28524A650;
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_STEP_SIZE_STOP_TOL[0]];
    v44[15] = v28;
    v45[15] = &unk_28524A9C8;
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_COST_FUNC_STOP_TOL[0]];
    v44[16] = v27;
    v45[16] = &unk_28524A9D8;
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_STEP_SIZE_ROT_STOP_TOL[0]];
    v44[17] = v26;
    v45[17] = &unk_28524A9E8;
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_STEP_SIZE_EFL_STOP_TOL[0]];
    v44[18] = v25;
    v45[18] = &unk_28524A9F8;
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_CALL_TWICE[0]];
    v44[19] = v24;
    v45[19] = v4;
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_INITIAL_RADIUS[0]];
    v44[20] = v23;
    v45[20] = &unk_28524A668;
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_AMBIGUITY_THRES[0]];
    v44[21] = v22;
    v45[21] = &unk_28524A5D8;
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_AMBIGUITY_INLIER_MARGIN[0]];
    v44[22] = v21;
    v45[22] = &unk_28524AA08;
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_OVERRIDE_R_EST[0]];
    v44[23] = v20;
    v45[23] = v4;
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_INLIERS_NUM_THRES[0]];
    v44[24] = v19;
    v45[24] = &unk_28524A518;
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_NUM_RANSAC_CALLS[0]];
    v44[25] = v18;
    v45[25] = &unk_28524A680;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_MAX_3D_CONSTRAINT_ITERS[0]];
    v44[26] = v17;
    v45[26] = &unk_28524A680;
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_MIN_Z[0]];
    v44[27] = v16;
    v45[27] = &unk_28524A4E8;
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_MAX_Z[0]];
    v44[28] = v15;
    v45[28] = &unk_28524A698;
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_ROTATION_TOLERANCES_0[0]];
    v44[29] = v14;
    v45[29] = &unk_28524A6B0;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_ROTATION_TOLERANCES_1[0]];
    v44[30] = v5;
    v45[30] = &unk_28524A6C8;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_ROTATION_TOLERANCES_2[0]];
    v44[31] = v6;
    v45[31] = &unk_28524AA18;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_PPX_TOLERANCE[0]];
    v44[32] = v7;
    v45[32] = &unk_28524AA28;
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_PPY_TOLERANCE[0]];
    v44[33] = v8;
    v45[33] = &unk_28524AA28;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SCALE_TOLERANCE[0]];
    v44[34] = v9;
    v45[34] = &unk_28524AA38;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_FACE_COVERAGE_RATE_THRES[0]];
    v44[35] = v10;
    v45[35] = &unk_28524AA48;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_FACE_CORR_NUM_THRES[0]];
    v44[36] = v11;
    v45[36] = &unk_28524A638;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_PDM_MEDIAN_THRES[0]];
    v44[37] = v12;
    v45[37] = &unk_28524AA58;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_VALIDATION_MEDIAN_JASPER_MISALIGNMENT_THRES[0]];
    v44[38] = v13;
    v45[38] = &unk_28524AA68;
    jpc::JPCPORConfig::PORGMCJBlockConfig(void)::config = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:39];
  }

  v1 = jpc::JPCPORConfig::PORGMCJBlockConfig(void)::config;

  return v1;
}

void jpc::JPCConfig::configDictToGMCJConfig(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_EFL[0]];
  v4 = [v102 objectForKeyedSubscript:v3];
  *a2 = [v4 BOOLValue];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_PPX[0]];
  v6 = [v102 objectForKeyedSubscript:v5];
  *(a2 + 1) = [v6 BOOLValue];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_PPY[0]];
  v8 = [v102 objectForKeyedSubscript:v7];
  *(a2 + 2) = [v8 BOOLValue];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_INCLUDE_JASPER_RESIDUAL_FUNCTION[0]];
  v10 = [v102 objectForKeyedSubscript:v9];
  *(a2 + 3) = [v10 BOOLValue];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_IS_UNDISTORT_CORRS[0]];
  v12 = [v102 objectForKeyedSubscript:v11];
  *(a2 + 12) = [v12 BOOLValue];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_IS_REF_CONFIG[0]];
  v14 = [v102 objectForKeyedSubscript:v13];
  *(a2 + 13) = [v14 BOOLValue];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_TEST_SET_SIZE[0]];
  v16 = [v102 objectForKeyedSubscript:v15];
  *(a2 + 16) = [v16 unsignedIntValue];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_COVERAGE_RATE_THRES[0]];
  v18 = [v102 objectForKeyedSubscript:v17];
  [v18 doubleValue];
  *(a2 + 24) = v19;

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_CORR_NUM_THRES[0]];
  v21 = [v102 objectForKeyedSubscript:v20];
  *(a2 + 32) = [v21 unsignedIntValue];

  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SINGULARITY_THRES[0]];
  v23 = [v102 objectForKeyedSubscript:v22];
  [v23 doubleValue];
  *(a2 + 40) = v24;

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_IS_REFINE_BA[0]];
  v26 = [v102 objectForKeyedSubscript:v25];
  *(a2 + 48) = [v26 BOOLValue];

  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SHOULD_FIND_T[0]];
  v28 = [v102 objectForKeyedSubscript:v27];
  *(a2 + 49) = [v28 BOOLValue];

  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_RANSAC_T_VAL[0]];
  v30 = [v102 objectForKeyedSubscript:v29];
  [v30 doubleValue];
  *(a2 + 56) = v31;

  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_MAX_ITR[0]];
  v33 = [v102 objectForKeyedSubscript:v32];
  *(a2 + 64) = [v33 unsignedIntValue];

  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_MAX_STALL_COUNT[0]];
  v35 = [v102 objectForKeyedSubscript:v34];
  *(a2 + 68) = [v35 unsignedIntValue];

  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_STEP_SIZE_STOP_TOL[0]];
  v37 = [v102 objectForKeyedSubscript:v36];
  [v37 doubleValue];
  *(a2 + 72) = v38;

  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_COST_FUNC_STOP_TOL[0]];
  v40 = [v102 objectForKeyedSubscript:v39];
  [v40 doubleValue];
  *(a2 + 80) = v41;

  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_STEP_SIZE_ROT_STOP_TOL[0]];
  v43 = [v102 objectForKeyedSubscript:v42];
  [v43 doubleValue];
  *(a2 + 88) = v44;

  v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_STEP_SIZE_EFL_STOP_TOL[0]];
  v46 = [v102 objectForKeyedSubscript:v45];
  [v46 doubleValue];
  *(a2 + 96) = v47;

  v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_CALL_TWICE[0]];
  v49 = [v102 objectForKeyedSubscript:v48];
  *(a2 + 104) = [v49 BOOLValue];

  v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_BA_INITIAL_RADIUS[0]];
  v51 = [v102 objectForKeyedSubscript:v50];
  [v51 doubleValue];
  *(a2 + 112) = v52;

  v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_AMBIGUITY_THRES[0]];
  v54 = [v102 objectForKeyedSubscript:v53];
  [v54 doubleValue];
  *(a2 + 120) = v55;

  v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_AMBIGUITY_INLIER_MARGIN[0]];
  v57 = [v102 objectForKeyedSubscript:v56];
  [v57 doubleValue];
  *(a2 + 128) = v58;

  v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_OVERRIDE_R_EST[0]];
  v60 = [v102 objectForKeyedSubscript:v59];
  *(a2 + 136) = [v60 BOOLValue];

  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_INLIERS_NUM_THRES[0]];
  v62 = [v102 objectForKeyedSubscript:v61];
  *(a2 + 140) = [v62 unsignedIntValue];

  v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_NUM_RANSAC_CALLS[0]];
  v64 = [v102 objectForKeyedSubscript:v63];
  *(a2 + 144) = [v64 unsignedIntValue];

  v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_MAX_3D_CONSTRAINT_ITERS[0]];
  v66 = [v102 objectForKeyedSubscript:v65];
  *(a2 + 148) = [v66 unsignedIntValue];

  v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_MIN_Z[0]];
  v68 = [v102 objectForKeyedSubscript:v67];
  [v68 doubleValue];
  *(a2 + 152) = v69;

  v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_MAX_Z[0]];
  v71 = [v102 objectForKeyedSubscript:v70];
  [v71 doubleValue];
  *(a2 + 160) = v72;

  v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_ROTATION_TOLERANCES_0[0]];
  v74 = [v102 objectForKeyedSubscript:v73];
  [v74 doubleValue];
  *(a2 + 168) = v75;

  v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_ROTATION_TOLERANCES_1[0]];
  v77 = [v102 objectForKeyedSubscript:v76];
  [v77 doubleValue];
  *(a2 + 176) = v78;

  v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_ROTATION_TOLERANCES_2[0]];
  v80 = [v102 objectForKeyedSubscript:v79];
  [v80 doubleValue];
  *(a2 + 184) = v81;

  v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_PPX_TOLERANCE[0]];
  v83 = [v102 objectForKeyedSubscript:v82];
  [v83 doubleValue];
  *(a2 + 192) = v84;

  v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_PPY_TOLERANCE[0]];
  v86 = [v102 objectForKeyedSubscript:v85];
  [v86 doubleValue];
  *(a2 + 200) = v87;

  v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_SCALE_TOLERANCE[0]];
  v89 = [v102 objectForKeyedSubscript:v88];
  [v89 doubleValue];
  *(a2 + 208) = v90;

  v91 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_FACE_COVERAGE_RATE_THRES[0]];
  v92 = [v102 objectForKeyedSubscript:v91];
  [v92 doubleValue];
  *(a2 + 216) = v93;

  v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_FACE_CORR_NUM_THRES[0]];
  v95 = [v102 objectForKeyedSubscript:v94];
  *(a2 + 224) = [v95 unsignedIntValue];

  v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_PDM_MEDIAN_THRES[0]];
  v97 = [v102 objectForKeyedSubscript:v96];
  [v97 doubleValue];
  *(a2 + 232) = v98;

  v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORGMCJBlock::GMCJ_VALIDATION_MEDIAN_JASPER_MISALIGNMENT_THRES[0]];
  v100 = [v102 objectForKeyedSubscript:v99];
  [v100 doubleValue];
  *(a2 + 240) = v101;
}

id jpc::JPCConfig::getISFConfig(jpc::JPCConfig *this)
{
  v1 = jpc::JPCPORConfig::PORISFConfig(this);
  v3 = jpc::JPCConfig::readJpcConfigFile(v1, v2);
  v4 = jpc::JPCConfig::prioritizeConfigurations(v1, v3);
  jpc::JPCConfig::printConfigurationToLog(v4, v1, v3);
  v5 = jpc::JPCConfig::configDictToISFConfig(v4);

  return v5;
}

id jpc::JPCPORConfig::PORISFConfig(jpc::JPCPORConfig *this)
{
  v14[10] = *MEMORY[0x277D85DE8];
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_ENTRIES_FOR_RESULT[0]];
    v13[0] = v12;
    v14[0] = &unk_28524A6E0;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_CAPACITY[0]];
    v13[1] = v11;
    v14[1] = &unk_28524A6E0;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_WEIGHT[0]];
    v13[2] = v3;
    v14[2] = &unk_28524AA78;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MAX_WEIGHT[0]];
    v13[3] = v4;
    v14[3] = &unk_28524AA88;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_OUTLIER_NUM[0]];
    v13[4] = v5;
    v14[4] = &unk_28524A4E8;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_OUTLIER_WEIGHT[0]];
    v13[5] = v6;
    v14[5] = &unk_28524AA98;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_IS_STEP_DETECTION_ACTIVE[0]];
    v13[6] = v7;
    v14[6] = MEMORY[0x277CBEC28];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_STEP_INDEX[0]];
    v13[7] = v8;
    v14[7] = &unk_28524A4E8;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_STEP_SIZE[0]];
    v13[8] = v9;
    v14[8] = &unk_28524A4E8;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_STEP_DETECTION_THRESHOLD[0]];
    v13[9] = v10;
    v14[9] = &unk_28524A4E8;
    jpc::JPCPORConfig::PORISFConfig(void)::config = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:10];
  }

  v1 = jpc::JPCPORConfig::PORISFConfig(void)::config;

  return v1;
}

id jpc::JPCConfig::configDictToISFConfig(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_ENTRIES_FOR_RESULT[0]];
  v4 = [v1 objectForKeyedSubscript:v3];
  [v2 setMinimalEntriesForResult:{objc_msgSend(v4, "unsignedIntValue")}];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_CAPACITY[0]];
  v6 = [v1 objectForKeyedSubscript:v5];
  [v2 setCapacity:{objc_msgSend(v6, "unsignedIntValue")}];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_WEIGHT[0]];
  v8 = [v1 objectForKeyedSubscript:v7];
  [v8 floatValue];
  [v2 setMinimalWeight:?];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MAX_WEIGHT[0]];
  v10 = [v1 objectForKeyedSubscript:v9];
  [v10 floatValue];
  [v2 setMaximalWeight:?];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_OUTLIER_NUM[0]];
  v12 = [v1 objectForKeyedSubscript:v11];
  [v2 setOutlierNumber:{objc_msgSend(v12, "unsignedIntValue")}];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_OUTLIER_WEIGHT[0]];
  v14 = [v1 objectForKeyedSubscript:v13];
  [v14 floatValue];
  [v2 setOutlierWeight:?];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_IS_STEP_DETECTION_ACTIVE[0]];
  v16 = [v1 objectForKeyedSubscript:v15];
  [v2 setIsStepDetectionActive:{objc_msgSend(v16, "BOOLValue")}];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_STEP_INDEX[0]];
  v18 = [v1 objectForKeyedSubscript:v17];
  [v2 setMinStepIndex:{objc_msgSend(v18, "unsignedIntValue")}];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_MIN_STEP_SIZE[0]];
  v20 = [v1 objectForKeyedSubscript:v19];
  [v2 setMinStepSize:{objc_msgSend(v20, "unsignedIntValue")}];

  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfigKeys::PORISF::ISF_STEP_DETECTION_THRESHOLD[0]];
  v22 = [v1 objectForKeyedSubscript:v21];
  [v22 floatValue];
  [v2 setStepDetectionThreshold:?];

  return v2;
}

void jpc::JPCConfig::generatePORConfigFileToFilesystem(jpc::JPCConfig *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = jpc::JPCConfig::GENERATED_DEFAULT_CONFIG_FILE_PATH;
      v1 = MEMORY[0x277D86220];
      v2 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v1, v2, "Generating JPCConfig configuration file to %{public}s.", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = 136446210;
    v15 = jpc::JPCConfig::GENERATED_DEFAULT_CONFIG_FILE_PATH;
    v1 = MEMORY[0x277D86220];
    v2 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  v3 = objc_opt_new();
  v4 = jpc::JPCPORConfig::PORPreprocessorFilterBlockConfig(v3);
  [(jpc::JPCPORConfig *)v3 addEntriesFromDictionary:v4];

  v6 = jpc::JPCPORConfig::PORIFABlockConfig(v5);
  [(jpc::JPCPORConfig *)v3 addEntriesFromDictionary:v6];

  v8 = jpc::JPCPORConfig::PORGMCJBlockConfig(v7);
  [(jpc::JPCPORConfig *)v3 addEntriesFromDictionary:v8];

  v10 = jpc::JPCPORConfig::PORISFConfig(v9);
  [(jpc::JPCPORConfig *)v3 addEntriesFromDictionary:v10];

  v11 = MEMORY[0x277CBEBC0];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:jpc::JPCConfig::GENERATED_DEFAULT_CONFIG_FILE_PATH];
  v13 = [v11 fileURLWithPath:v12];

  if (([(jpc::JPCPORConfig *)v3 writeToURL:v13 atomically:0]& 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = 136446210;
    v15 = jpc::JPCConfig::GENERATED_DEFAULT_CONFIG_FILE_PATH;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Generating JPCConfig configuration file to %{public}s has failed.", &v14, 0xCu);
  }
}

void sub_240336FF8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t GMC_BundleAdjustmentMathematicalProblem::calculateNumberOfVariables(GMC_BundleAdjustmentMathematicalProblem *this, int a2, unsigned int a3, unsigned int a4)
{
  v4 = 3;
  if (a2)
  {
    v4 = 4;
  }

  return v4 + 3 * this + a3 + a4;
}

uint64_t GMC_BundleAdjustmentMathematicalProblem::calculateNumberOfVariablesWithoutXiYiZi(GMC_BundleAdjustmentMathematicalProblem *this, unsigned int a2, unsigned int a3)
{
  v3 = 3;
  if (this)
  {
    v3 = 4;
  }

  return v3 + a2 + a3;
}

uint64_t GMC_BundleAdjustmentMathematicalProblem::getColumnIndicesForConfiguration@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = xmmword_240406DC0;
  v4 = 3;
  if (this)
  {
    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  if (!this)
  {
    v4 = -1;
  }

  *(a4 + 16) = 2;
  *(a4 + 24) = v4;
  v6 = v5 + a2;
  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = -1;
  }

  v8 = v6 + a3;
  if (!a3)
  {
    v6 = -1;
  }

  *(a4 + 32) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = v8;
  return this;
}

uint64_t jpc::JPCException::what(jpc::JPCException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

double jpc::JPCException::JPCException(jpc::JPCException *this)
{
  *this = &unk_285231B08;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

{
  *this = &unk_285231B08;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0x1000000;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

void sub_240337294(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t jpc::JPCException::generateExceptionStr(jpc::JPCException *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "JPCException, Exception Name: ", 30);
  v2 = *(this + 55);
  if (v2 >= 0)
  {
    v3 = this + 32;
  }

  else
  {
    v3 = *(this + 4);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 55);
  }

  else
  {
    v4 = *(this + 5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, " File: ", 7);
  v5 = *(this + 79);
  if (v5 >= 0)
  {
    v6 = this + 56;
  }

  else
  {
    v6 = *(this + 7);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 79);
  }

  else
  {
    v7 = *(this + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, " Line: ", 7);
  v8 = MEMORY[0x245CBFB70](&v24, *(this + 10));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " Error Code: ", 13);
  v10 = MEMORY[0x245CBFB60](v9, *(this + 22));
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v22);
  std::ostream::put();
  std::ostream::flush();
  if (*(this + 12))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Nested JPC Exception: ", 22);
    v12 = (*(**(this + 12) + 16))(*(this + 12));
    v13 = strlen(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v12, v13);
    std::ios_base::getloc((&v24 + *(v24 - 24)));
    v14 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(this + 14))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "Nested std::exception: ", 23);
    v15 = (*(**(this + 14) + 16))(*(this + 14));
    v16 = strlen(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v15, v16);
  }

  if ((v33 & 0x10) != 0)
  {
    v18 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v18 = v29;
    }

    v19 = &v28;
  }

  else
  {
    if ((v33 & 8) == 0)
    {
      v17 = 0;
      HIBYTE(v23) = 0;
      goto LABEL_30;
    }

    v19 = v27;
    v18 = v27[2];
  }

  v20 = *v19;
  v17 = v18 - *v19;
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v23) = v18 - *v19;
  if (v17)
  {
    memmove(&v22, v20, v17);
  }

LABEL_30:
  *(&v22 + v17) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  *(this + 8) = v22;
  *(this + 3) = v23;
  v24 = *MEMORY[0x277D82828];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
  v25 = MEMORY[0x277D82878] + 16;
  if (v31 < 0)
  {
    operator delete(__p);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v26);
  std::ostream::~ostream();
  return MEMORY[0x245CBFC40](&v34);
}

void sub_240337730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ostringstream::~ostringstream(&a12);
  MEMORY[0x245CBFC40](&a26);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x277D82828] + 16);
  v5 = *(MEMORY[0x277D82828] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CBFBF0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_240337910(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x245CBFC40](v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CBFB10](v21, a1);
  if (v21[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_28;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v23 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v23 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v23 < 0)
      {
        v19 = v18;
        operator delete(__b.__locale_);
        if (v19 != v16)
        {
LABEL_28:
          std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
          goto LABEL_29;
        }
      }

      else if (v18 != v16)
      {
        goto LABEL_28;
      }
    }

    if (v11 - v12 >= 1 && (*(*v7 + 96))(v7, v12, v11 - v12) != v11 - v12)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x245CBFB20](v21);
  return a1;
}

void sub_240337C10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x245CBFB20](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x240337BE4);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245CBFC40](a1 + 112);
  return a1;
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<jpc::JPCException>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285231528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBFCB0);
}

void std::__shared_ptr_emplace<std::exception>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285231560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBFCB0);
}

jpc::JPCException *jpc::JPCException::setExceptionName(jpc::JPCException *this, char *a2)
{
  v3 = this + 32;
  if (v3 != a2)
  {
    if (*(this + 55) < 0)
    {
      v5 = *(a2 + 1);
      if (a2[23] >= 0)
      {
        v6 = a2[23];
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      std::string::__assign_no_alias<false>(v3, a2, v6);
    }

    else if (a2[23] < 0)
    {
      std::string::__assign_no_alias<true>(v3, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(v3 + 2) = *(a2 + 2);
      *v3 = v4;
    }
  }

  jpc::JPCException::generateExceptionStr(this);
  return this;
}

_BYTE *std::string::__assign_no_alias<true>(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

uint64_t std::string::__assign_no_alias<false>(uint64_t a1, const void *a2, size_t __len)
{
  v5 = *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *a1;
  *(a1 + 8) = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

jpc::JPCException *jpc::JPCException::setFile(jpc::JPCException *this, const char *a2, int a3)
{
  std::string::__assign_external((this + 56), a2);
  *(this + 10) = a3;
  jpc::JPCException::generateExceptionStr(this);
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v7 = this->__r_.__value_.__r.__words[2];
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v7 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_17:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v7);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v6->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

jpc::JPCException *jpc::JPCException::setErrorCode(jpc::JPCException *a1, int a2)
{
  *(a1 + 22) = a2;
  jpc::JPCException::generateExceptionStr(a1);
  return a1;
}

void sub_240338D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADMetricDepthExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24033B3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, void *a58, void *a59, void *a60, uint64_t a61, uint64_t a62, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

uint64_t countNonZeroValues(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (PixelFormatType != 1751410032)
  {
    memset(&v84, 0, sizeof(v84));
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v84);
    if (v84.height && v84.width)
    {
      data = v84.data;
      if (v84.width > 7)
      {
        if (!LODWORD(v84.width) || (v58 = (v84.width - 1) >> 32) != 0)
        {
          v80 = 0;
          v5 = 0;
          do
          {
            v81 = 1;
            v82 = data;
            do
            {
              v83 = *v82++;
              if (v83 != 0.0)
              {
                ++v5;
              }

              v79 = v84.width > v81++;
            }

            while (v79);
            ++v80;
            data = (data + v84.rowBytes);
          }

          while (v84.height > v80);
        }

        else
        {
          v5 = 0;
          v59 = (v84.data + 16);
          v60 = vdupq_n_s64(1uLL);
          do
          {
            v61 = 0uLL;
            v62 = v5;
            v63 = v59;
            v64 = v84.width & 0x1FFFFFFF8;
            v65 = 0uLL;
            v66 = 0uLL;
            do
            {
              v67 = vmvnq_s8(vceqzq_f32(v63[-1]));
              v68.i64[0] = v67.u32[0];
              v68.i64[1] = v67.u32[1];
              v69 = vandq_s8(v68, v60);
              v68.i64[0] = v67.u32[2];
              v68.i64[1] = v67.u32[3];
              v70 = vandq_s8(v68, v60);
              v71 = vmvnq_s8(vceqzq_f32(*v63));
              v68.i64[0] = v71.u32[0];
              v68.i64[1] = v71.u32[1];
              v72 = vandq_s8(v68, v60);
              v68.i64[0] = v71.u32[2];
              v68.i64[1] = v71.u32[3];
              v61 = vaddq_s64(v61, v70);
              v62 = vaddq_s64(v62, v69);
              v66 = vaddq_s64(v66, vandq_s8(v68, v60));
              v65 = vaddq_s64(v65, v72);
              v63 += 2;
              v64 -= 8;
            }

            while (v64);
            v5 = vaddvq_s64(vaddq_s64(vaddq_s64(v65, v62), vaddq_s64(v66, v61)));
            if (v84.width != (v84.width & 0x1FFFFFFF8))
            {
              v73 = (v84.width & 0xFFFFFFF8) + 1;
              v74 = v84.width & 0x1FFFFFFF8;
              do
              {
                if (*(v84.data + 4 * v74 + v58 * v84.rowBytes) != 0.0)
                {
                  ++v5;
                }

                v74 = v73++;
              }

              while (v84.width > v74);
            }

            ++v58;
            v59 = (v59 + v84.rowBytes);
          }

          while (v84.height > v58);
        }
      }

      else
      {
        v13 = 0;
        v5 = 0;
        do
        {
          v14 = 0;
          do
          {
            if (data[v14] != 0.0)
            {
              ++v5;
            }

            ++v14;
          }

          while (v14 < LODWORD(v84.width));
          ++v13;
          data = (data + v84.rowBytes);
        }

        while (v84.height > v13);
      }

      goto LABEL_23;
    }

LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  memset(&v84, 0, sizeof(v84));
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v84);
  if (!v84.height || !v84.width)
  {
    goto LABEL_22;
  }

  v3 = v84.data;
  if (v84.width <= 3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = 0;
      do
      {
        __asm { FCMP            H0, #0 }

        if (!_ZF)
        {
          ++v5;
        }

        ++v6;
      }

      while (v6 < LODWORD(v84.width));
      ++v4;
      v3 += v84.rowBytes;
    }

    while (v84.height > v4);
    goto LABEL_23;
  }

  if (LODWORD(v84.width))
  {
    v16 = (v84.width - 1) >> 32;
    if (!v16)
    {
      v5 = 0;
      v17 = (v84.data + 16);
      v18 = vdupq_n_s64(1uLL);
      v19 = v84.data;
      while (1)
      {
        if (v84.width >= 0x10)
        {
          v21 = 0uLL;
          v22 = v5;
          v23 = v17;
          v24 = v84.width & 0x1FFFFFFF0;
          v25 = 0uLL;
          v26 = 0uLL;
          v27 = 0uLL;
          v28 = 0uLL;
          v29 = 0uLL;
          v30 = 0uLL;
          do
          {
            v31 = vmvnq_s8(vceqzq_f16(v23[-1]));
            v32 = vmovl_u16(*v31.i8);
            v33.i64[0] = v32.u32[0];
            v33.i64[1] = v32.u32[1];
            v34 = vdupq_n_s64(1uLL);
            v35 = vandq_s8(v33, v34);
            v33.i64[0] = v32.u32[2];
            v33.i64[1] = v32.u32[3];
            v36 = vandq_s8(v33, v34);
            v37 = vmovl_high_u16(v31);
            v33.i64[0] = v37.u32[0];
            v33.i64[1] = v37.u32[1];
            v38 = vandq_s8(v33, v34);
            v33.i64[0] = v37.u32[2];
            v33.i64[1] = v37.u32[3];
            v39 = vandq_s8(v33, v34);
            v40 = vmvnq_s8(vceqzq_f16(*v23));
            v41 = vmovl_u16(*v40.i8);
            v33.i64[0] = v41.u32[0];
            v33.i64[1] = v41.u32[1];
            v42 = vandq_s8(v33, v34);
            v33.i64[0] = v41.u32[2];
            v33.i64[1] = v41.u32[3];
            v43 = vandq_s8(v33, v34);
            v44 = vmovl_high_u16(v40);
            v33.i64[0] = v44.u32[0];
            v33.i64[1] = v44.u32[1];
            v45 = vandq_s8(v33, v34);
            v33.i64[0] = v44.u32[2];
            v33.i64[1] = v44.u32[3];
            v26 = vaddq_s64(v26, v39);
            v25 = vaddq_s64(v25, v38);
            v21 = vaddq_s64(v21, v36);
            v22 = vaddq_s64(v22, v35);
            v30 = vaddq_s64(v30, vandq_s8(v33, v34));
            v29 = vaddq_s64(v29, v45);
            v28 = vaddq_s64(v28, v43);
            v27 = vaddq_s64(v27, v42);
            v23 += 2;
            v24 -= 16;
          }

          while (v24);
          v5 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v27, v22), vaddq_s64(v29, v25)), vaddq_s64(vaddq_s64(v28, v21), vaddq_s64(v30, v26))));
          if (v84.width == (v84.width & 0x1FFFFFFF0))
          {
            goto LABEL_27;
          }

          v20 = v84.width & 0x1FFFFFFF0;
          v46 = v84.width & 0xFFFFFFF0;
          if ((v84.width & 0xC) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v20 = 0;
        }

        v47 = 0uLL;
        v48 = v5;
        v49 = v20 - (v84.width & 0x1FFFFFFFCLL);
        v50 = &v19[2 * v20];
        do
        {
          v51 = *v50++;
          v52 = vmovl_u16(vmvn_s8(vceqz_f16(v51)));
          v53.i64[0] = v52.u32[0];
          v53.i64[1] = v52.u32[1];
          v54 = vandq_s8(v53, v18);
          v53.i64[0] = v52.u32[2];
          v53.i64[1] = v52.u32[3];
          v47 = vaddq_s64(v47, vandq_s8(v53, v18));
          v48 = vaddq_s64(v48, v54);
          v49 += 4;
        }

        while (v49);
        v5 = vaddvq_s64(vaddq_s64(v48, v47));
        v46 = v84.width & 0xFFFFFFFC;
        if (v84.width != (v84.width & 0x1FFFFFFFCLL))
        {
LABEL_37:
          v55 = v46 + 1;
          do
          {
            __asm { FCMP            H1, #0 }

            if (!_ZF)
            {
              ++v5;
            }

            v57 = v55++;
          }

          while (v84.width > v57);
        }

LABEL_27:
        ++v16;
        v17 = (v17 + v84.rowBytes);
        v19 += v84.rowBytes;
        if (v84.height <= v16)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v75 = 0;
  v5 = 0;
  do
  {
    v76 = 1;
    v77 = v3;
    do
    {
      v77 += 2;
      __asm { FCMP            H0, #0 }

      if (!_ZF)
      {
        ++v5;
      }

      v79 = v84.width > v76++;
    }

    while (v79);
    ++v75;
    v3 += v84.rowBytes;
  }

  while (v84.height > v75);
LABEL_23:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v5;
}

void PixelBufferSharedPtr::TakeOwnership(PixelBufferSharedPtr *this, CVPixelBufferRef texture)
{
  this->_vptr$PixelBufferSharedPtr = &unk_285231598;
  this->m_pixelBuffer = texture;
  CVPixelBufferRetain(texture);
  CVPixelBufferRelease(texture);
}

void PixelBufferSharedPtr::~PixelBufferSharedPtr(PixelBufferSharedPtr *this)
{
  this->_vptr$PixelBufferSharedPtr = &unk_285231598;
  CVPixelBufferRelease(this->m_pixelBuffer);
}

{
  this->_vptr$PixelBufferSharedPtr = &unk_285231598;
  CVPixelBufferRelease(this->m_pixelBuffer);

  JUMPOUT(0x245CBFCB0);
}

void sub_24033C3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24033C964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v3;

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24033CF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ADBinocularDepthWarperMesh;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24033DFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  MEMORY[0x245CBFC90](v16, v13);
  MEMORY[0x245CBFC90](a12, v13);
  MEMORY[0x245CBFC90](v15, 0x1000C8052888210);
  MEMORY[0x245CBFC90](v14, v13);
  MEMORY[0x245CBFC90](a10, v13);

  _Unwind_Resume(a1);
}

void sub_24033E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24033E82C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24033EAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_24033ED6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24033F414(_Unwind_Exception *a1)
{
  InstrumentsTraceGuard::~InstrumentsTraceGuard((v3 - 184));

  _Unwind_Resume(a1);
}

void sub_24033FCD4(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24033FE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240340268(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_24034055C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADVisualDepthOutput;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403410E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADVisualDepthExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240341C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, ...)
{
  va_start(va, a12);

  objc_sync_exit(v13);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_240342144(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_240342378(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_240342504(_Unwind_Exception *a1)
{
  v5 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_2403427D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_240342A2C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_240342E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

void sub_240342FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240343314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  objc_sync_exit(v2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240343660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_240343AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v8 = v6;

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

__n128 jpc::GMCJ_Utils::updatePCECalibWithGMCJResults@<Q0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(a3, a2, 0x3388uLL);
  if (*(a1 + 128) == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 16);
    *(a3 + 13072) = vcvtq_f64_f32(vzip1_s32(*a1, *v6.i8));
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = vzip2_s32(*v6.i8, *&v7);
    v10 = COERCE_FLOAT(*(a1 + 40));
    DWORD1(v7) = v5.i32[1];
    *(a3 + 13088) = vcvtq_f64_f32(*&v7);
    *(a3 + 13104) = vcvtq_f64_f32(v9);
    *(a3 + 13120) = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
    *(a3 + 13136) = v10;
    *(a3 + 13144) = v8;
    *(a3 + 13160) = *(a1 + 64);
  }

  if (*(a1 + 160) == 1)
  {
    *(a3 + 8824) = *(a1 + 144);
  }

  *(a3 + 8816) = *(a1 + 168);
  result = *(a1 + 176);
  *(a3 + 8768) = result;
  return result;
}

uint64_t jpc::GMCJ_Utils::getOperationalProjAngles(float64_t *this, const PCECalib *a2)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2.f64[0] = this[1634];
  v2.f64[1] = this[1637];
  v3 = this[1640];
  v4.f64[0] = this[1635];
  v4.f64[1] = this[1638];
  v5.f64[0] = this[1636];
  v5.f64[1] = this[1639];
  v6 = this[1641];
  v7 = this[1642];
  *(&v9 + 2) = v3;
  *&v9 = vcvt_f32_f64(v2);
  *(&v10 + 2) = v6;
  *&v10 = vcvt_f32_f64(v4);
  *(&v11 + 2) = v7;
  *&v11 = vcvt_f32_f64(v5);
  return [ADUtils calcRotationAngle:&v9];
}

void sub_240343FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240344370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);

  _Unwind_Resume(a1);
}

id floatToStringScientific(float a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  std::ostream::operator<<();
  if ((v39 & 0x10) != 0)
  {
    v2 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v2 = v35;
    }

    v3 = &v34;
  }

  else
  {
    if ((v39 & 8) == 0)
    {
      v1 = 0;
      HIBYTE(v29) = 0;
      goto LABEL_14;
    }

    v3 = v33;
    v2 = v33[2];
  }

  v4 = *v3;
  v1 = v2 - *v3;
  if (v1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v1 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v29) = v2 - *v3;
  if (v1)
  {
    memmove(&__dst, v4, v1);
  }

LABEL_14:
  *(&__dst + v1) = 0;
  v5 = HIBYTE(v29);
  v6 = HIBYTE(v29);
  if (v29 < 0)
  {
    v5 = *(&__dst + 1);
  }

  v7 = MEMORY[0x277D82828];
  if (v5 >= 5)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
    std::ostream::operator<<();
    *(&v17 + *(v17 - 24) + 8) = *(&v17 + *(v17 - 24) + 8) & 0xFFFFFEFB | 0x100;
    if ((v26 & 0x10) != 0)
    {
      v9 = v25;
      if (v25 < v22)
      {
        v25 = v22;
        v9 = v22;
      }

      v10 = &v21;
    }

    else
    {
      if ((v26 & 8) == 0)
      {
        v8 = 0;
        HIBYTE(v16) = 0;
LABEL_30:
        *(&v15 + v8) = 0;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__dst);
        }

        __dst = v15;
        v29 = v16;
        v17 = *v7;
        *(&v17 + *(v17 - 24)) = v7[3];
        v18 = MEMORY[0x277D82878] + 16;
        if (v24 < 0)
        {
          operator delete(__p);
        }

        v18 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v19);
        std::ostream::~ostream();
        MEMORY[0x245CBFC40](&v27);
        v6 = HIBYTE(v29);
        goto LABEL_35;
      }

      v10 = v20;
      v9 = v20[2];
    }

    v11 = *v10;
    v8 = v9 - *v10;
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = v9 - *v10;
    if (v8)
    {
      memmove(&v15, v11, v8);
    }

    goto LABEL_30;
  }

LABEL_35:
  p_dst = &__dst;
  if (v6 < 0)
  {
    p_dst = __dst;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", p_dst];
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst);
  }

  v30 = *v7;
  *(&v30 + *(v30 - 24)) = v7[3];
  v31 = MEMORY[0x277D82878] + 16;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v32);
  std::ostream::~ostream();
  MEMORY[0x245CBFC40](&v40);

  return v13;
}

void sub_24034490C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  std::ostringstream::~ostringstream(&a14);
  if (v53 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a53);
  _Unwind_Resume(a1);
}

void sub_240344F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = v17;
  operator delete(v19);
  if (*(v18 - 41) < 0)
  {
    operator delete(*(v18 - 64));
  }

  Buckets::~Buckets((v16 + 440));
  Buckets::~Buckets((v16 + 352));
  Buckets::~Buckets((v16 + 264));
  Buckets::~Buckets((v16 + 176));
  Buckets::~Buckets((v16 + 88));
  Buckets::~Buckets(v16);
  _Unwind_Resume(a1);
}

void sub_240344FBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v19 - 41) < 0)
  {
    operator delete(*(v19 - 64));
  }

  JUMPOUT(0x240344F94);
}

void sub_240344FE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v22 - 41) < 0)
  {
    operator delete(*(v22 - 64));
  }

  JUMPOUT(0x240344F9CLL);
}

void sub_240345014(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  JUMPOUT(0x240344FA4);
}

void sub_240345040()
{
  v1 = *(v0 - 112);
  if (v1)
  {
    *(v0 - 104) = v1;
    operator delete(v1);
  }

  if (*(v0 - 41) < 0)
  {
    operator delete(*(v0 - 64));
  }

  JUMPOUT(0x240344FACLL);
}

void sub_240345074(_Unwind_Exception *a1)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x240344FB4);
}

uint64_t Buckets::Buckets(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v4 = a1 + 24;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v58 = a1 + 24;
  if (a1 + 64 == a3 || (std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 64), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2), v6 = (*(a1 + 72) - *(a1 + 64)) >> 2, v7 = v6 - 1, v6 <= 1))
  {
    __assert_rtn("Buckets", "ADJasperPearlInfieldCalibrationTelemetryUtils.mm", 65, "false");
  }

  if (v7 > (*(a1 + 16) - *a1) >> 3)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (v4 != a2)
  {
    v8 = *(a2 + 23);
    if (*(a1 + 47) < 0)
    {
      if (v8 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if (v8 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = a2[1];
      }

      std::string::__assign_no_alias<false>(v4, v10, v11);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v4, *a2, a2[1]);
    }

    else
    {
      v9 = *a2;
      *(v4 + 16) = a2[2];
      *v4 = v9;
    }
  }

  v12 = *(a1 + 64);
  v13 = 0x277CCA000uLL;
  if (((*(a1 + 72) - v12) >> 2) >= 2)
  {
    v14 = 0;
    while (1)
    {
      v16 = v12[v14++];
      v17 = v12[v14];
      v18 = *(v13 + 3240);
      v19 = floatToStringScientific(v16);
      v20 = floatToStringScientific(v17);
      v21 = objc_msgSend(v18, "stringWithFormat:", @"(%@,%@]"), v19, v20, v58;

      v23 = *(a1 + 8);
      v22 = *(a1 + 16);
      if (v23 >= v22)
      {
        break;
      }

      *v23 = v21;
      v15 = (v23 + 1);
LABEL_21:
      *(a1 + 8) = v15;

      v12 = *(a1 + 64);
      if (v14 >= (((*(a1 + 72) - v12) << 30) - 0x100000000) >> 32)
      {
        goto LABEL_47;
      }
    }

    v24 = v23 - *a1;
    v25 = v24 >> 3;
    v26 = (v24 >> 3) + 1;
    if (v26 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v27 = v22 - *a1;
    v28 = v27 >> 2;
    if (v27 >> 2 <= v26)
    {
      v28 = (v24 >> 3) + 1;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v29 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    if (v29)
    {
      if (!(v29 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = v21;
    v32 = *a1;
    v31 = *(a1 + 8);
    v33 = 8 * v25 - (v31 - *a1);
    *(8 * v25) = v30;
    v15 = 8 * v25 + 8;
    v34 = v31 - v32;
    if (v31 == v32)
    {
LABEL_44:
      *a1 = v33;
      *(a1 + 8) = v15;
      *(a1 + 16) = 0;
      v13 = 0x277CCA000;
      if (v32)
      {
        operator delete(v32);
      }

      goto LABEL_21;
    }

    v35 = v34 - 8;
    v36 = v32;
    v37 = v33;
    if ((v34 - 8) >= 0x98)
    {
      if (v32 >= v24 + (v35 & 0xFFFFFFFFFFFFFFF8) - v34 + 8 || (v36 = v32, v37 = v33, v33 >= v32 + (v35 & 0xFFFFFFFFFFFFFFF8) + 8))
      {
        v38 = v34 >> 3;
        v39 = (v35 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v36 = &v32[v40];
        v41 = (-8 * v38 + 8 * v25 + 16);
        v42 = v32;
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = *v42;
          v45 = *(v42 + 1);
          *v42 = 0uLL;
          *(v42 + 1) = 0uLL;
          v42 += 4;
          *(v41 - 1) = v44;
          *v41 = v45;
          v41 += 2;
          v43 -= 4;
        }

        while (v43);
        if (v39 == (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }

        v37 = (v33 + v40 * 8);
      }
    }

    do
    {
      v46 = *v36;
      *v36++ = 0;
      *v37++ = v46;
    }

    while (v36 != v31);
LABEL_41:
    v47 = v33;
    do
    {
      v48 = *v32++;
    }

    while (v32 != v31);
    v32 = *a1;
    v33 = v47;
    goto LABEL_44;
  }

LABEL_47:
  v49 = *(v13 + 3240);
  v50 = floatToStringScientific(*v12);
  v51 = objc_msgSend(v49, "stringWithFormat:", @"(-Inf,%@]"), v50;
  v52 = *(a1 + 56);
  *(a1 + 56) = v51;

  v53 = *(v13 + 3240);
  v54 = floatToStringScientific(*(*(a1 + 72) - 4));
  v55 = objc_msgSend(v53, "stringWithFormat:", @"(%@,Inf]"), v54;
  v56 = *(a1 + 48);
  *(a1 + 48) = v55;

  return a1;
}

void sub_2403455C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void **a12)
{
  v15 = *a12;
  if (*a12)
  {
    *(v12 + 72) = v15;
    operator delete(v15);
  }

  if (*(v12 + 47) < 0)
  {
    operator delete(*a11);
  }

  std::vector<NSString * {__strong}>::~vector[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void Buckets::~Buckets(Buckets *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  v3 = *this;
  if (*this)
  {
    v4 = *(this + 1);
    v5 = *this;
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        v4 -= 8;
      }

      while (v4 != v3);
      v5 = *this;
    }

    *(this + 1) = v3;
    operator delete(v5);
  }
}

void **std::vector<NSString * {__strong}>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void BucketsFilters::Buckets(Buckets *this)
{
  {
    {
      BucketsFilters::BucketsFilters(BucketsFilters::Buckets(void)::inst);
    }
  }
}

__CFString *Buckets::getBucketName(Buckets *this, float a2)
{
  v2 = *(this + 8);
  v3 = *v2;
  if (*v2 >= a2)
  {
    v5 = (this + 56);
    goto LABEL_5;
  }

  v4 = *(this + 9);
  if (*(v4 - 4) < a2)
  {
    v5 = (this + 48);
LABEL_5:
    v6 = *v5;
    goto LABEL_6;
  }

  v8 = 0;
  v9 = (v4 - v2) >> 2;
  if (v9 <= 1)
  {
    LODWORD(v9) = 1;
  }

  v10 = (v9 - 1);
  v11 = v2 + 1;
  while (v10 != v8)
  {
    v12 = v8++;
    v13 = v3 < a2;
    v3 = v11[v12];
    v13 = !v13 || v3 < a2;
    if (!v13)
    {
      v5 = (*this + 8 * v12);
      goto LABEL_5;
    }
  }

  v6 = @"N/A";
LABEL_6:

  return v6;
}

void sub_240345D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240345F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240346130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_240347DF8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_24034A57C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_24034AC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADJasperColorInFieldCalibrationExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_24034AD04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24034B1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24034CE68(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24034D3A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24034E84C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24034EA98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24034EFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24034F688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, PixelBufferSharedPtr a19)
{
  PixelBufferSharedPtr::~PixelBufferSharedPtr(&a19);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a12);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (result = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_24034FBAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,PixelBufferSharedPtr>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      *(v1 + 24) = &unk_285231598;
      CVPixelBufferRelease(*(v1 + 32));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_2403508E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_24035454C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AdaptiveCorrection_createWithConfig(unsigned int a1, __int128 *a2, void *a3)
{
  v3 = 0;
  v4 = 4294954516;
  if (a1 >= 1 && a2 && a3)
  {
    v3 = malloc_type_calloc(1uLL, 0x20E0uLL, 0x1080040D8A15840uLL);
    if (v3 && (v8 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL), (*(v3 + 1045) = v8) != 0) && (v9 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL), (*(v3 + 1046) = v9) != 0) && (v10 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL), (*(v3 + 1047) = v10) != 0) && (v11 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL), (*(v3 + 1048) = v11) != 0) && (v12 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL), (*(v3 + 1049) = v12) != 0) && (v13 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL), (*(v3 + 1050) = v13) != 0) && (v14 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL), (*(v3 + 1051) = v14) != 0))
    {
      v4 = 0;
      *v3 = a1;
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      *(v3 + 56) = a2[3];
      *(v3 + 40) = v17;
      *(v3 + 24) = v16;
      *(v3 + 8) = v15;
      v18 = a2[4];
      v19 = a2[5];
      v20 = a2[6];
      *(v3 + 120) = a2[7];
      *(v3 + 104) = v20;
      *(v3 + 88) = v19;
      *(v3 + 72) = v18;
      *a3 = v3;
      v3 = 0;
    }

    else
    {
      v4 = 4294954510;
    }
  }

  AdaptiveCorrection_destroy(v3);
  return v4;
}

void AdaptiveCorrection_destroy(void **a1)
{
  if (a1)
  {
    free(a1[1045]);
    free(a1[1046]);
    free(a1[1047]);
    free(a1[1048]);
    free(a1[1049]);
    free(a1[1050]);
    free(a1[1051]);

    free(a1);
  }
}

__n128 AdaptiveCorrection_setConfiguration(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *a2;
      v3 = a2[1];
      v4 = a2[2];
      *(a1 + 56) = a2[3];
      *(a1 + 40) = v4;
      *(a1 + 24) = v3;
      *(a1 + 8) = v2;
      result = a2[4];
      v6 = a2[5];
      v7 = a2[6];
      *(a1 + 120) = a2[7];
      *(a1 + 104) = v7;
      *(a1 + 88) = v6;
      *(a1 + 72) = result;
    }
  }

  return result;
}

void AdaptiveCorrection_getStatus(uint64_t a1@<X0>, void *a2@<X8>)
{
  bzero(a2, 0x1E48uLL);
  if (a1)
  {

    memcpy(a2, (a1 + 136), 0x1E48uLL);
  }
}

uint64_t AdaptiveCorrection_fullTemporalCorrectionWithDistortion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, float64x2_t *a6, float64x2_t *a7, double a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13, double a14, int32x4_t a15)
{
  result = 4294954516;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4 >= 1)
        {
          if (a7)
          {
            if (a6)
            {
              if (a5)
              {
                if (*a1 >= a4)
                {
                  v57 = a5[1];
                  v58 = *a5;
                  v56 = a5[2];
                  v83 = a5[4];
                  v84 = a5[3];
                  v81 = a5[6];
                  v82 = a5[5];
                  v79 = a5[8];
                  v80 = a5[7];
                  v77 = *a6;
                  v78 = a5[9];
                  v76 = a6[1];
                  v74 = a6[3];
                  v75 = a6[2];
                  v72 = a6[5];
                  v73 = a6[4];
                  v70 = a6[7];
                  v71 = a6[6];
                  v68 = a6[9];
                  v69 = a6[8];
                  v66 = a7[1];
                  v67 = *a7;
                  v64 = a7[3];
                  v65 = a7[2];
                  v62 = a7[5];
                  v63 = a7[4];
                  v60 = a7[7];
                  v61 = a7[6];
                  v59 = a7[8];
                  result = AdaptiveCorrection_fullCorrectionWithDistortion(a1, a2, a3, a4, a5->f64, a6->f64, a7->f64, a7[8].f64[0], v61.f64[0], v80.f64[0], v78.f64[0], a12, a13, a14, a15);
                  if (!result)
                  {
                    v20 = vsubq_f64(*a7, v67);
                    v21 = vsubq_f64(a7[1], v66);
                    v22 = vsubq_f64(a7[2], v65);
                    v23 = vsubq_f64(a7[3], v64);
                    v24 = vsubq_f64(a7[4], v63);
                    v25 = vsubq_f64(a7[5], v62);
                    v26 = vsubq_f64(a7[6], v61);
                    v27 = vsubq_f64(a7[7], v60);
                    v28 = vsubq_f64(a7[8], v59);
                    v29 = v56;
                    v30 = v57;
                    v31 = vsubq_f64(a5[1], v57);
                    v32 = vsubq_f64(*a5, v58);
                    v33 = vsubq_f64(a5[2], v56);
                    v34 = vsubq_f64(a5[6], v81);
                    v35 = vsubq_f64(a5[3], v84);
                    v36 = vsubq_f64(a5[7], v80);
                    v37 = vsubq_f64(a5[4], v83);
                    v38 = vsubq_f64(a5[8], v79);
                    v39 = vsubq_f64(a5[5], v82);
                    v40 = vsubq_f64(a5[9], v78);
                    v41 = vsubq_f64(a6[1], v76);
                    v42 = vsubq_f64(*a6, v77);
                    v43 = vsubq_f64(a6[2], v75);
                    v44 = vsubq_f64(a6[6], v71);
                    v45 = vsubq_f64(a6[3], v74);
                    v54 = vsubq_f64(a6[7], v70);
                    v46 = vsubq_f64(a6[4], v73);
                    v55 = vsubq_f64(a6[8], v69);
                    v47 = vsubq_f64(a6[5], v72);
                    v48 = vsubq_f64(a6[9], v68);
                    if (*(a1 + 7888))
                    {
                      v49 = *(a1 + 128);
                      v50 = v49;
                      v51 = (1.0 - v49);
                      v29 = v56;
                      *(a1 + 7896) = vaddq_f64(vmulq_n_f64(v20, v51), vmulq_n_f64(*(a1 + 7896), v50));
                      *(a1 + 7912) = vaddq_f64(vmulq_n_f64(v21, v51), vmulq_n_f64(*(a1 + 7912), v50));
                      *(a1 + 7928) = vaddq_f64(vmulq_n_f64(v22, v51), vmulq_n_f64(*(a1 + 7928), v50));
                      *(a1 + 7944) = vaddq_f64(vmulq_n_f64(v23, v51), vmulq_n_f64(*(a1 + 7944), v50));
                      *(a1 + 7960) = vaddq_f64(vmulq_n_f64(v24, v51), vmulq_n_f64(*(a1 + 7960), v50));
                      *(a1 + 7976) = vaddq_f64(vmulq_n_f64(v25, v51), vmulq_n_f64(*(a1 + 7976), v50));
                      *(a1 + 7992) = vaddq_f64(vmulq_n_f64(v26, v51), vmulq_n_f64(*(a1 + 7992), v50));
                      *(a1 + 8008) = vaddq_f64(vmulq_n_f64(v27, v51), vmulq_n_f64(*(a1 + 8008), v50));
                      *(a1 + 8024) = vaddq_f64(vmulq_n_f64(v28, v51), vmulq_n_f64(*(a1 + 8024), v50));
                      *(a1 + 8040) = vaddq_f64(vmulq_n_f64(v32, v51), vmulq_n_f64(*(a1 + 8040), v50));
                      *(a1 + 8056) = vaddq_f64(vmulq_n_f64(v31, v51), vmulq_n_f64(*(a1 + 8056), v50));
                      *(a1 + 8072) = vaddq_f64(vmulq_n_f64(v33, v51), vmulq_n_f64(*(a1 + 8072), v50));
                      *(a1 + 8088) = vaddq_f64(vmulq_n_f64(v35, v51), vmulq_n_f64(*(a1 + 8088), v50));
                      *(a1 + 8104) = vaddq_f64(vmulq_n_f64(v37, v51), vmulq_n_f64(*(a1 + 8104), v50));
                      *(a1 + 8120) = vaddq_f64(vmulq_n_f64(v39, v51), vmulq_n_f64(*(a1 + 8120), v50));
                      *(a1 + 8136) = vaddq_f64(vmulq_n_f64(v34, v51), vmulq_n_f64(*(a1 + 8136), v50));
                      *(a1 + 8152) = vaddq_f64(vmulq_n_f64(v36, v51), vmulq_n_f64(*(a1 + 8152), v50));
                      *(a1 + 8168) = vaddq_f64(vmulq_n_f64(v38, v51), vmulq_n_f64(*(a1 + 8168), v50));
                      *(a1 + 8184) = vaddq_f64(vmulq_n_f64(v40, v51), vmulq_n_f64(*(a1 + 8184), v50));
                      *(a1 + 8200) = vaddq_f64(vmulq_n_f64(v42, v51), vmulq_n_f64(*(a1 + 8200), v50));
                      *(a1 + 8216) = vaddq_f64(vmulq_n_f64(v41, v51), vmulq_n_f64(*(a1 + 8216), v50));
                      *(a1 + 8232) = vaddq_f64(vmulq_n_f64(v43, v51), vmulq_n_f64(*(a1 + 8232), v50));
                      *(a1 + 8248) = vaddq_f64(vmulq_n_f64(v45, v51), vmulq_n_f64(*(a1 + 8248), v50));
                      *(a1 + 8264) = vaddq_f64(vmulq_n_f64(v46, v51), vmulq_n_f64(*(a1 + 8264), v50));
                      *(a1 + 8280) = vaddq_f64(vmulq_n_f64(v47, v51), vmulq_n_f64(*(a1 + 8280), v50));
                      *(a1 + 8296) = vaddq_f64(vmulq_n_f64(v44, v51), vmulq_n_f64(*(a1 + 8296), v50));
                      *(a1 + 8312) = vaddq_f64(vmulq_n_f64(v54, v51), vmulq_n_f64(*(a1 + 8312), v50));
                      *(a1 + 8328) = vaddq_f64(vmulq_n_f64(v55, v51), vmulq_n_f64(*(a1 + 8328), v50));
                      v52 = vmulq_n_f64(*(a1 + 8344), v50);
                      v30 = v57;
                      v53 = v58;
                      *(a1 + 8344) = vaddq_f64(vmulq_n_f64(v48, v51), v52);
                    }

                    else
                    {
                      v53 = v58;
                      *(a1 + 7896) = v20;
                      *(a1 + 7912) = v21;
                      *(a1 + 7928) = v22;
                      *(a1 + 7944) = v23;
                      *(a1 + 7960) = v24;
                      *(a1 + 7976) = v25;
                      *(a1 + 7992) = v26;
                      *(a1 + 8008) = v27;
                      *(a1 + 8024) = v28;
                      *(a1 + 8040) = v32;
                      *(a1 + 8056) = v31;
                      *(a1 + 8072) = v33;
                      *(a1 + 8088) = v35;
                      *(a1 + 8104) = v37;
                      *(a1 + 8120) = v39;
                      *(a1 + 8136) = v34;
                      *(a1 + 8152) = v36;
                      *(a1 + 8168) = v38;
                      *(a1 + 8184) = v40;
                      *(a1 + 8200) = v42;
                      *(a1 + 8216) = v41;
                      *(a1 + 8232) = v43;
                      *(a1 + 8248) = v45;
                      *(a1 + 8264) = v46;
                      *(a1 + 8280) = v47;
                      *(a1 + 8296) = v44;
                      *(a1 + 8312) = v54;
                      *(a1 + 8328) = v55;
                      *(a1 + 8344) = v48;
                      *(a1 + 7888) = 1;
                    }

                    *a7 = v67;
                    a7[1] = v66;
                    a7[2] = v65;
                    a7[3] = v64;
                    a7[4] = v63;
                    a7[5] = v62;
                    a7[6] = v61;
                    a7[7] = v60;
                    a7[8] = v59;
                    *a5 = v53;
                    a5[1] = v30;
                    a5[2] = v29;
                    a5[3] = v84;
                    a5[4] = v83;
                    a5[5] = v82;
                    a5[6] = v81;
                    a5[7] = v80;
                    a5[8] = v79;
                    a5[9] = v78;
                    *a6 = v77;
                    a6[1] = v76;
                    a6[2] = v75;
                    a6[3] = v74;
                    a6[4] = v73;
                    a6[5] = v72;
                    a6[6] = v71;
                    a6[7] = v70;
                    a6[8] = v69;
                    a6[9] = v68;
                    AdaptiveCorrection_applyTemporalCorrectionState(a1, a5, a6, a7);
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AdaptiveCorrection_fullCorrectionWithDistortion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double *a7, double a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13, double a14, int32x4_t a15)
{
  result = 4294954516;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 < 1)
  {
    return result;
  }

  if (!a7)
  {
    return result;
  }

  if (!a6)
  {
    return result;
  }

  if (!a5)
  {
    return result;
  }

  if (*a1 < a4)
  {
    return result;
  }

  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 0;
  v224 = 0;
  v222 = 0;
  v23 = *(a7 + 6);
  *a12.i8 = vcvt_f32_f64(v23);
  v220 = *(a7 + 8);
  v24 = *(a7 + 10);
  *a15.i8 = vcvt_f32_f64(v24);
  v218 = *(a7 + 12);
  v25 = *(a7 + 14);
  *a13.i8 = vcvt_f32_f64(v25);
  v216 = *a12.i8;
  v217 = *(a7 + 16);
  v214 = *a13.i8;
  v215 = *a15.i8;
  v26 = vzip1q_s32(a12, a13);
  v27 = vzip2q_s32(vcvt_hight_f32_f64(*&v23.f64[0], v220), vcvt_hight_f32_f64(*&v25.f64[0], v217));
  v28 = vzip2q_s32(vcvt_hight_f32_f64(*&v24.f64[0], v218), 0);
  v270.columns[0] = vzip1q_s32(v26, a15);
  v270.columns[2] = vzip1q_s32(v27, v28);
  v270.columns[1] = vzip2q_s32(v26, vdupq_lane_s32(*a15.i8, 1));
  result = AdaptiveCorrection_computeVerticalBaselineTransform(&v225, &v223, &v222, v270, vzip2q_s32(v27, v28));
  if (result)
  {
    return result;
  }

  v29 = v223;
  v30 = v224;
  v31 = a7[2];
  v32 = a7[4];
  v33 = vmla_n_f32(vmul_n_f32(v223, v31), v224, v32);
  v34 = a7[3];
  v35 = a7[5];
  v36 = vmla_n_f32(vmul_n_f32(v222.columns[0], v34), v222.columns[1], v35);
  v249 = *a7;
  v250 = vcvtq_f64_f32(vzip1_s32(v33, v36));
  v251 = vcvtq_f64_f32(vzip2_s32(v33, v36));
  v252 = vcvtq_f64_f32(vzip1_s32(*v225.i8, *v226.i8));
  v253 = vcvtq_f64_f32(vzip1_s32(*v227.i8, *v228.i8));
  v254 = vcvtq_f64_f32(vzip2_s32(*v225.i8, *v226.i8));
  v255 = vcvtq_f64_f32(vzip2_s32(*v227.i8, *v228.i8));
  v256 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v225, v225, 8uLL), *&vextq_s8(v226, v226, 8uLL)));
  v257 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v227, v227, 8uLL), *&vextq_s8(v228, v228, 8uLL)));
  v37 = *(a5 + 9);
  v247 = *(a5 + 8);
  v248 = v37;
  v38 = *(a5 + 7);
  v245 = *(a5 + 6);
  v246 = v38;
  v39 = *(a5 + 5);
  v243 = *(a5 + 4);
  v244 = v39;
  v40 = *(a5 + 3);
  v241 = *(a5 + 2);
  v242 = v40;
  v41 = *(a5 + 2);
  v239 = *a5;
  v240 = v41;
  *v41.f64 = a5[2];
  v42 = a5[3];
  v43 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v223, *v41.f64), v224, v42));
  v240 = v43;
  v44 = *(a6 + 6);
  v45 = *(a6 + 8);
  v46 = *(a6 + 9);
  v236 = *(a6 + 7);
  v237 = v45;
  v238 = v46;
  v47 = *(a6 + 2);
  v48 = *(a6 + 4);
  v49 = *(a6 + 5);
  v232 = *(a6 + 3);
  v233 = v48;
  v234 = v49;
  v235 = v44;
  v50 = *(a6 + 2);
  v229 = *a6;
  v230 = v50;
  *&v44 = a6[2];
  *v50.f64 = a6[3];
  v51 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v222.columns[0], *&v44), v222.columns[1], *v50.f64));
  v230 = v51;
  v231 = v47;
  v52 = *(a1 + 8360);
  if (!v52)
  {
    return 4294954516;
  }

  v53 = 0;
  v54 = vcvt_f32_f64(v220);
  v55 = vcvt_f32_f64(v218);
  v56 = vcvt_f32_f64(v217);
  v57 = *(a1 + 8360);
  v58 = (a2 + 8);
  do
  {
    v59 = *(v58 - 1);
    v60 = *v58;
    *(v52 + 16 * v53++) = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v29, v59), v30, v60));
    v58 += 2;
  }

  while (a4 != v53);
  v61 = *(a1 + 8368);
  if (!v61)
  {
    return 4294954516;
  }

  v62 = 0;
  v63 = *(a1 + 8368);
  v64 = v222;
  v65 = (a3 + 8);
  do
  {
    v66 = *(v65 - 1);
    v67 = *v65;
    *(v61 + 16 * v62++) = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v64.columns[0], v66), v64.columns[1], v67));
    v65 += 2;
  }

  while (a4 != v62);
  v221 = v43;
  if (*a1 < a4)
  {
    return 4294954516;
  }

  v68 = v52;
  v219 = v51;
  bzero((a1 + 136), 0x1E48uLL);
  v69 = *(a1 + 8376);
  if (!v69)
  {
    return 4294954516;
  }

  v70 = *&v239;
  v71 = *&v241 + *(&v239 + 1) * *&v239 * *&v245;
  v72 = *(&v241 + 1) + *(&v239 + 1) * *&v239 * *(&v245 + 1);
  v73 = *&v242 + *(&v239 + 1) * *&v239 * *&v246;
  v74 = *(&v242 + 1) + *(&v239 + 1) * *&v239 * *(&v246 + 1);
  v75 = *&v243 + *(&v239 + 1) * *&v239 * *&v247;
  v76 = *(&v243 + 1) + *(&v239 + 1) * *&v239 * *(&v247 + 1);
  v77 = *&v244 + *(&v239 + 1) * *&v239 * *&v248;
  v78 = *(&v244 + 1) + *(&v239 + 1) * *&v239 * *(&v248 + 1);
  v79 = v221;
  if (a4 >= 2 && (v69 >= v68 + 16 * a4 || v68 >= v69 + 16 * a4))
  {
    v174 = vdupq_lane_s64(v221.i64[0], 0);
    v175 = vdupq_laneq_s64(v221, 1);
    v176 = vdupq_lane_s64(*&v71, 0);
    v177 = vdupq_lane_s64(*&v73, 0);
    v178 = vdupq_lane_s64(*&v74, 0);
    v179 = vdupq_lane_s64(*&v75, 0);
    v180 = vdupq_lane_s64(*&v76, 0);
    v181 = vdupq_lane_s64(*&v77, 0);
    v182 = vdupq_n_s64(0x4059000000000000uLL);
    v80 = a4 & 0x7FFFFFFE;
    __asm { FMOV            V26.2D, #1.0 }

    v188 = *(a1 + 8376);
    v189 = v80;
    v190 = vdupq_lane_s64(*&v78, 0);
    do
    {
      v273 = vld2q_f64(v57);
      v57 += 4;
      v191 = vsubq_f64(v273.val[0], v174);
      v273.val[0] = vsubq_f64(v273.val[1], v175);
      v273.val[1] = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v273.val[0], v273.val[0]), v191, v191)), v70);
      v273.val[1] = vmulq_f64(v273.val[1], v273.val[1]);
      v192 = vmulq_f64(v273.val[1], v273.val[1]);
      v193 = vmulq_f64(v273.val[1], v192);
      v194 = vmulq_f64(v192, v192);
      v273.val[1] = vaddq_f64(vdivq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vaddq_f64(v176, vmulq_n_f64(v273.val[1], v72)), v192, v177), v193, v178), v194, v179), vmulq_f64(v192, v193), v180), vmulq_f64(v193, v193), v181), vmulq_f64(v194, v193), v190), v182), _Q26);
      v273.val[1] = vbslq_s8(vcgtzq_f64(v273.val[1]), vdivq_f64(_Q26, v273.val[1]), _Q26);
      v273.val[0] = vmulq_f64(v273.val[0], v273.val[1]);
      v273.val[1] = vaddq_f64(vmulq_f64(v191, v273.val[1]), v174);
      v195 = vaddq_f64(v273.val[0], v175);
      vst2q_f64(v188, *(&v273 + 16));
      v188 += 4;
      v189 -= 2;
    }

    while (v189);
    v79 = v221;
    if (v80 == a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v80 = 0;
  }

  v81 = a4 - v80;
  v82 = 16 * v80;
  v83 = (v69 + 16 * v80);
  v84 = (v68 + v82);
  do
  {
    v85 = *v84++;
    v86 = vsubq_f64(v85, v79);
    v87 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v86, v86).f64[1]) + v86.f64[0] * v86.f64[0]);
    v88 = v70 * v87 * (v70 * v87);
    v89 = v88 * (v88 * v88);
    v90 = (v71 + v72 * v88 + v73 * (v88 * v88) + v74 * v89 + v75 * (v88 * v88 * (v88 * v88)) + v76 * (v88 * v88 * v89) + v77 * (v89 * v89) + v78 * (v88 * v88 * (v88 * v88) * v89)) / 100.0 + 1.0;
    if (v90 <= 0.0)
    {
      v91 = 1.0;
    }

    else
    {
      v91 = 1.0 / v90;
    }

    *v83++ = vaddq_f64(vmulq_n_f64(v86, v91), v79);
    --v81;
  }

  while (v81);
LABEL_27:
  v92 = *(a1 + 8384);
  if (!v92)
  {
    return 4294954516;
  }

  v93 = *&v229;
  v94 = *&v231 + *(&v229 + 1) * *&v229 * *&v235;
  v95 = *(&v231 + 1) + *(&v229 + 1) * *&v229 * *(&v235 + 1);
  v96 = *&v232 + *(&v229 + 1) * *&v229 * *&v236;
  v97 = *(&v232 + 1) + *(&v229 + 1) * *&v229 * *(&v236 + 1);
  v98 = *&v233 + *(&v229 + 1) * *&v229 * *&v237;
  v99 = *(&v233 + 1) + *(&v229 + 1) * *&v229 * *(&v237 + 1);
  v100 = *&v234 + *(&v229 + 1) * *&v229 * *&v238;
  v101 = *(&v234 + 1) + *(&v229 + 1) * *&v229 * *(&v238 + 1);
  if (a4 >= 2 && (v92 >= v61 + 16 * a4 || v61 >= v92 + 16 * a4))
  {
    v196 = vdupq_lane_s64(*&v219.f64[0], 0);
    v197 = vdupq_laneq_s64(v219, 1);
    v198 = vdupq_lane_s64(*&v94, 0);
    v199 = vdupq_lane_s64(*&v96, 0);
    v200 = vdupq_lane_s64(*&v97, 0);
    v201 = vdupq_lane_s64(*&v98, 0);
    v202 = vdupq_lane_s64(*&v99, 0);
    v203 = vdupq_lane_s64(*&v100, 0);
    v204 = vdupq_n_s64(0x4059000000000000uLL);
    v102 = a4 & 0x7FFFFFFE;
    __asm { FMOV            V26.2D, #1.0 }

    v206 = *(a1 + 8384);
    v207 = v102;
    v208 = vdupq_lane_s64(*&v101, 0);
    do
    {
      v274 = vld2q_f64(v63);
      v63 += 4;
      v209 = vsubq_f64(v274.val[0], v196);
      v274.val[0] = vsubq_f64(v274.val[1], v197);
      v274.val[1] = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v274.val[0], v274.val[0]), v209, v209)), v93);
      v274.val[1] = vmulq_f64(v274.val[1], v274.val[1]);
      v210 = vmulq_f64(v274.val[1], v274.val[1]);
      v211 = vmulq_f64(v274.val[1], v210);
      v212 = vmulq_f64(v210, v210);
      v274.val[1] = vaddq_f64(vdivq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vaddq_f64(v198, vmulq_n_f64(v274.val[1], v95)), v210, v199), v211, v200), v212, v201), vmulq_f64(v210, v211), v202), vmulq_f64(v211, v211), v203), vmulq_f64(v212, v211), v208), v204), _Q26);
      v274.val[1] = vbslq_s8(vcgtzq_f64(v274.val[1]), vdivq_f64(_Q26, v274.val[1]), _Q26);
      v274.val[0] = vmulq_f64(v274.val[0], v274.val[1]);
      v274.val[1] = vaddq_f64(vmulq_f64(v209, v274.val[1]), v196);
      v213 = vaddq_f64(v274.val[0], v197);
      vst2q_f64(v206, *(&v274 + 16));
      v206 += 4;
      v207 -= 2;
    }

    while (v207);
    if (v102 == a4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v102 = 0;
  }

  v103 = a4 - v102;
  v104 = 16 * v102;
  v105 = (v92 + 16 * v102);
  v106 = (v61 + v104);
  do
  {
    v107 = *v106++;
    v108 = vsubq_f64(v107, v219);
    v109 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v108, v108).f64[1]) + v108.f64[0] * v108.f64[0]);
    v110 = v93 * v109 * (v93 * v109);
    v111 = v110 * (v110 * v110);
    v112 = (v94 + v95 * v110 + v96 * (v110 * v110) + v97 * v111 + v98 * (v110 * v110 * (v110 * v110)) + v99 * (v110 * v110 * v111) + v100 * (v111 * v111) + v101 * (v110 * v110 * (v110 * v110) * v111)) / 100.0 + 1.0;
    if (v112 <= 0.0)
    {
      v113 = 1.0;
    }

    else
    {
      v113 = 1.0 / v112;
    }

    *v105++ = vaddq_f64(vmulq_n_f64(v108, v113), v219);
    --v103;
  }

  while (v103);
LABEL_37:
  AdaptiveCorrection_fullCorrection(v69, v92, a4, &v249, *&v93);
  v255 = v267;
  v256 = v268;
  v257 = v269;
  v251 = v263;
  v252 = v264;
  v253 = v265;
  v254 = v266;
  v249 = v261;
  v250 = v262;
  FundamentalEpipolarError_ABSVec(*(a1 + 8376), *(a1 + 8384), a4, &v249, *(a1 + 8408));
  v114 = 0;
  v115 = 0;
  v116 = *(a1 + 8408);
  v117 = (v61 + 8);
  v118 = (v68 + 8);
  do
  {
    if (*(v116 + 8 * v114) < *(a1 + 16))
    {
      v119 = *(a1 + 8392);
      v120 = 2 * v115;
      *(v119 + 8 * v120) = *(v118 - 1);
      v121 = (16 * v115) | 8;
      *(v119 + v121) = *v118;
      v122 = *(a1 + 8400);
      *(v122 + 8 * v120) = *(v117 - 1);
      *(v122 + v121) = *v117;
      ++v115;
      if (v114 <= 0x7FF)
      {
        *(a1 + 5840 + v114) = 1;
      }
    }

    ++v114;
    v117 += 2;
    v118 += 2;
  }

  while (a4 != v114);
  *(a1 + 5344) = v115;
  if (v115 >= *(a1 + 80))
  {
    v123 = v246;
    *(a1 + 5120) = v245;
    *(a1 + 5136) = v123;
    v124 = v248;
    *(a1 + 5152) = v247;
    *(a1 + 5168) = v124;
    v125 = v242;
    *(a1 + 5056) = v241;
    *(a1 + 5072) = v125;
    v126 = v244;
    *(a1 + 5088) = v243;
    *(a1 + 5104) = v126;
    v127 = v240;
    *(a1 + 5024) = v239;
    *(a1 + 5040) = v127;
    v128 = v236;
    *(a1 + 5280) = v235;
    *(a1 + 5296) = v128;
    v129 = v238;
    *(a1 + 5312) = v237;
    *(a1 + 5328) = v129;
    v130 = v232;
    *(a1 + 5216) = v231;
    *(a1 + 5232) = v130;
    v131 = v234;
    *(a1 + 5248) = v233;
    *(a1 + 5264) = v131;
    v132 = v230;
    *(a1 + 5184) = v229;
    *(a1 + 5348) = 1;
    *(a1 + 5200) = v132;
    v259 = 0;
    v258 = 0;
    v260 = 0;
    AdjustCalibrationDistorted(*(a1 + 8392), *(a1 + 8400), v115, &v239, &v229, &v249, (a1 + 8), &v258);
    v133 = v260;
    *(a1 + 5352) = v259;
    *(a1 + 5368) = v133;
    v134 = v253;
    *(a1 + 5456) = v254;
    v135 = v256;
    *(a1 + 5472) = v255;
    *(a1 + 5488) = v135;
    *(a1 + 5504) = v257;
    v136 = v249;
    *(a1 + 5392) = v250;
    v137 = v252;
    *(a1 + 5408) = v251;
    *(a1 + 5424) = v137;
    *(a1 + 5440) = v134;
    *(a1 + 5376) = v136;
    v138 = v246;
    *(a1 + 5616) = v245;
    *(a1 + 5632) = v138;
    v139 = v248;
    *(a1 + 5648) = v247;
    *(a1 + 5664) = v139;
    v140 = v242;
    *(a1 + 5552) = v241;
    *(a1 + 5568) = v140;
    v141 = v244;
    *(a1 + 5584) = v243;
    *(a1 + 5600) = v141;
    v142 = v240;
    *(a1 + 5520) = v239;
    *(a1 + 5536) = v142;
    v143 = v236;
    *(a1 + 5776) = v235;
    *(a1 + 5792) = v143;
    v144 = v238;
    *(a1 + 5808) = v237;
    *(a1 + 5824) = v144;
    v145 = v232;
    *(a1 + 5712) = v231;
    *(a1 + 5728) = v145;
    v146 = v234;
    *(a1 + 5744) = v233;
    *(a1 + 5760) = v146;
    v147 = v230;
    *(a1 + 5680) = v229;
    *(a1 + 5360) = v258;
    *(a1 + 5364) = BYTE4(v258);
    *(a1 + 5696) = v147;
  }

  v271.columns[0] = v223;
  v271.columns[1] = v224;
  v148 = __invert_f2(v271);
  v149 = __invert_f2(v222);
  v150 = v250.f64[0];
  v151 = v251.f64[0];
  v152 = vmla_n_f32(vmul_n_f32(v148.columns[0], v150), v148.columns[1], v151);
  v153 = v250.f64[1];
  v154 = v251.f64[1];
  v155 = vmla_n_f32(vmul_n_f32(v149.columns[0], v153), v149.columns[1], v154);
  *a7 = v249;
  *(a7 + 1) = vcvtq_f64_f32(vzip1_s32(v152, v155));
  *(a7 + 2) = vcvtq_f64_f32(vzip2_s32(v152, v155));
  *(a7 + 3) = vcvtq_f64_f32(v216);
  *(a7 + 4) = vcvtq_f64_f32(v54);
  *(a7 + 5) = vcvtq_f64_f32(v215);
  *(a7 + 6) = vcvtq_f64_f32(v55);
  *(a7 + 7) = vcvtq_f64_f32(v214);
  *(a7 + 8) = vcvtq_f64_f32(v56);
  v272.columns[0] = v223;
  v272.columns[1] = v224;
  v156 = __invert_f2(v272);
  v157 = v245;
  v158 = v247;
  v159 = v248;
  *(a5 + 7) = v246;
  *(a5 + 8) = v158;
  *(a5 + 9) = v159;
  v160 = v241;
  v161 = v243;
  v162 = v244;
  *(a5 + 3) = v242;
  *(a5 + 4) = v161;
  *(a5 + 5) = v162;
  *(a5 + 6) = v157;
  v163 = v240;
  *a5 = v239;
  *(a5 + 1) = v163;
  *&v157 = v240.f64[0];
  v164 = vmul_n_f32(v156.columns[0], *&v157);
  *&v157 = v240.f64[1];
  *(a5 + 1) = vcvtq_f64_f32(vmla_n_f32(v164, v156.columns[1], *&v157));
  *(a5 + 2) = v160;
  v165 = __invert_f2(v222);
  result = 0;
  v166 = v235;
  v167 = v237;
  v168 = v238;
  *(a6 + 7) = v236;
  *(a6 + 8) = v167;
  *(a6 + 9) = v168;
  v169 = v231;
  v170 = v233;
  v171 = v234;
  *(a6 + 3) = v232;
  *(a6 + 4) = v170;
  *(a6 + 5) = v171;
  *(a6 + 6) = v166;
  v172 = v230;
  *a6 = v229;
  *(a6 + 1) = v172;
  *&v166 = v230.f64[0];
  v173 = vmul_n_f32(v165.columns[0], *&v166);
  *&v166 = v230.f64[1];
  *(a6 + 1) = vcvtq_f64_f32(vmla_n_f32(v173, v165.columns[1], *&v166));
  *(a6 + 2) = v169;
  return result;
}

uint64_t AdaptiveCorrection_applyTemporalCorrectionState(uint64_t a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  result = 4294954516;
  if (a4 && a3 && a2)
  {
    v6 = a1 + 7888;
    if (*v6)
    {
      result = 0;
      v7 = vaddq_f64(a4[1], *(v6 + 24));
      v8 = vaddq_f64(a4[2], *(v6 + 40));
      v9 = vaddq_f64(a4[3], *(v6 + 56));
      v10 = vaddq_f64(a4[4], *(v6 + 72));
      v11 = vaddq_f64(a4[5], *(v6 + 88));
      v12 = vaddq_f64(a4[6], *(v6 + 104));
      v13 = vaddq_f64(a4[7], *(v6 + 120));
      v14 = vaddq_f64(a4[8], *(v6 + 136));
      *a4 = vaddq_f64(*a4, *(v6 + 8));
      a4[1] = v7;
      a4[2] = v8;
      a4[3] = v9;
      a4[4] = v10;
      a4[5] = v11;
      a4[6] = v12;
      a4[7] = v13;
      a4[8] = v14;
      v15 = vaddq_f64(a2[1], *(v6 + 168));
      v16 = vaddq_f64(a2[2], *(v6 + 184));
      v17 = vaddq_f64(a2[3], *(v6 + 200));
      v18 = vaddq_f64(a2[4], *(v6 + 216));
      v19 = vaddq_f64(a2[5], *(v6 + 232));
      v20 = vaddq_f64(a2[6], *(v6 + 248));
      v21 = vaddq_f64(a2[7], *(v6 + 264));
      v22 = vaddq_f64(a2[8], *(v6 + 280));
      v23 = vaddq_f64(a2[9], *(v6 + 296));
      *a2 = vaddq_f64(*a2, *(v6 + 152));
      a2[1] = v15;
      a2[2] = v16;
      a2[3] = v17;
      a2[4] = v18;
      a2[5] = v19;
      a2[6] = v20;
      a2[7] = v21;
      a2[8] = v22;
      a2[9] = v23;
      v24 = vaddq_f64(a3[1], *(v6 + 328));
      v25 = vaddq_f64(a3[2], *(v6 + 344));
      v26 = vaddq_f64(a3[3], *(v6 + 360));
      v27 = vaddq_f64(a3[4], *(v6 + 376));
      v28 = vaddq_f64(a3[5], *(v6 + 392));
      v29 = vaddq_f64(a3[6], *(v6 + 408));
      v30 = vaddq_f64(a3[7], *(v6 + 424));
      v31 = vaddq_f64(a3[8], *(v6 + 440));
      v32 = vaddq_f64(a3[9], *(v6 + 456));
      *a3 = vaddq_f64(*a3, *(v6 + 312));
      a3[1] = v24;
      a3[2] = v25;
      a3[3] = v26;
      a3[4] = v27;
      a3[5] = v28;
      a3[6] = v29;
      a3[7] = v30;
      a3[8] = v31;
      a3[9] = v32;
    }
  }

  return result;
}

uint64_t AdaptiveCorrection_computeVerticalBaselineTransform(uint64_t a1, void *a2, int32x4_t *a3, simd_float3x3 a4, float32x4_t a5)
{
  result = 4294954516;
  if (!a1 || !a2 || !a3)
  {
    return result;
  }

  v47 = a4;
  a4.columns[0].i32[3] = 0;
  a4.columns[1].i32[3] = 0;
  a4.columns[2].i32[3] = 0;
  v49 = __invert_f3(a4);
  v9 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49.columns[0], a5.f32[0]), v49.columns[1], *a5.f32, 1), v49.columns[2], a5, 2);
  v10 = sqrtf(vaddv_f32(*&vmulq_f32(v9, v9)));
  if (v10 <= 0.0)
  {
    return 4294954516;
  }

  v11 = vnegq_f32(v9).u64[0];
  v12 = fabsf(*(&v11 + 1));
  v13 = fabsf(*&v11);
  if (v12 >= v13 && *(&v11 + 1) >= 0.0)
  {
    *&v14 = *(&v11 + 1) / v10;
    v15 = -*&v11 / v10;
LABEL_11:
    v16 = -v15;
    LODWORD(v17) = v14;
    goto LABEL_12;
  }

  if (v12 >= v13 && *(&v11 + 1) < 0.0)
  {
    *&v14 = -*(&v11 + 1) / v10;
    v15 = *&v11 / v10;
    goto LABEL_11;
  }

  if (v13 <= v12 || *&v11 < 0.0)
  {
    result = 4294954516;
    if (v13 <= v12 || *&v11 >= 0.0)
    {
      return result;
    }

    *&v14 = *(&v11 + 1) / v10;
    v15 = -*&v11 / v10;
  }

  else
  {
    *&v14 = -*(&v11 + 1) / v10;
    v15 = *&v11 / v10;
  }

  v17 = -*&v14;
  v16 = v15;
LABEL_12:
  *(&v14 + 1) = v16;
  v18 = __PAIR64__(LODWORD(v17), LODWORD(v15));
  v46 = v14;
  v44 = v15;
  v45 = __PAIR64__(LODWORD(v17), LODWORD(v15));
  v20 = __invert_f2(*&v14);
  v19.i32[1] = v20.columns[1].i32[1];
  v21 = 0uLL;
  _Q2 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v47.columns[0], v20.columns[0].f32[0]), v47.columns[1], v20.columns[0], 1), 0, v47.columns[2]), 0, a5);
  _Q3.i32[0] = _Q2.i32[1];
  __asm { FMLA            S4, S3, V2.S[1] }

  *_Q3.i32 = sqrtf(_S4);
  if (*_Q3.i32 <= 0.0)
  {
    return 4294954516;
  }

  result = 0;
  *_Q3.i8 = vdiv_f32(*_Q2.f32, vdup_lane_s32(*_Q3.i8, 0));
  v29 = vmlaq_f32(vmulq_f32(v47.columns[0], 0), 0, v47.columns[1]);
  v30 = vaddq_f32(v47.columns[2], v29);
  v31 = vmlaq_f32(v29, 0, v47.columns[2]);
  v32 = vmlaq_f32(v30, 0, a5);
  v33 = vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v47.columns[0], v20.columns[1].f32[0]), v47.columns[1], v20.columns[1], 1), 0, v47.columns[2]);
  *v19.i32 = -*&_Q3.i32[1];
  if (((v44 > 0.0) & (fabsf(*&_Q3.i32[1]) > fabsf(*_Q3.i32))) != 0)
  {
    v19.i32[0] = _Q3.i32[1];
    v34 = -*_Q3.i32;
  }

  else
  {
    v34 = *_Q3.i32;
  }

  v35 = v19;
  *&v35.i32[1] = v34;
  v36 = vmlaq_f32(v33, 0, a5);
  v37 = vzip1q_s32(_Q3, v35);
  v21.i64[0] = __PAIR64__(LODWORD(v34), _Q3.u32[1]);
  _Q3.i32[1] = 0;
  v38 = vzip1q_s32(_Q3, v19);
  v39 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, _Q2.f32[0]), v21, *_Q2.f32, 1), xmmword_240406E10, _Q2, 2);
  *(a1 + 8) = v39.i32[2];
  v40 = vaddq_f32(a5, v31);
  v41 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v36.f32[0]), v21, *v36.f32, 1), xmmword_240406E10, v36, 2);
  v42 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v32.f32[0]), v21, *v32.f32, 1), xmmword_240406E10, v32, 2);
  *a1 = v39.i64[0];
  *(a1 + 12) = 0;
  *(a1 + 24) = v41.i32[2];
  *(a1 + 16) = v41.i64[0];
  *(a1 + 28) = 0;
  *(a1 + 40) = v42.i32[2];
  *(a1 + 32) = v42.i64[0];
  v43 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v40.f32[0]), v21, *v40.f32, 1), xmmword_240406E10, v40, 2);
  *(a1 + 56) = v43.i32[2];
  *(a1 + 44) = 0;
  *(a1 + 48) = v43.i64[0];
  *(a1 + 60) = 0;
  *a2 = v46;
  a2[1] = v45;
  *a3 = v37;
  return result;
}

void AdaptiveCorrection_fullCorrection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v129 = v5;
  v17 = v16;
  v171 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x1E48uLL);
  v18 = v11[5];
  v20 = v11[6];
  v19 = v11[7];
  *(v17 + 96) = v20;
  *(v17 + 112) = v19;
  v21 = v11[7];
  *(v17 + 128) = v11[8];
  v22 = v11[1];
  v24 = v11[2];
  v23 = v11[3];
  *(v17 + 32) = v24;
  *(v17 + 48) = v23;
  v25 = v11[3];
  v27 = v11[4];
  v26 = v11[5];
  *(v17 + 64) = v27;
  *(v17 + 80) = v26;
  v28 = v11[1];
  v29 = *v11;
  *v17 = *v11;
  *(v17 + 16) = v28;
  *&__src[88] = v18;
  *&__src[104] = v20;
  *&__src[120] = v21;
  v30 = v11[8];
  v31 = v13;
  *&__src[136] = v30;
  *&__src[24] = v22;
  *&__src[40] = v24;
  *&__src[56] = v25;
  *&__src[72] = v27;
  *&__src[8] = v29;
  *__src = v13;
  if (*(v9 + 72) <= v13)
  {
    v127 = v7;
    v128 = v15;
    __src[4] = 1;
    v32 = 16 * v13;
    v33 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v34 = malloc_type_malloc(v32, 0x100004000313F17uLL);
    v35 = *v9;
    v36 = 8 * v13;
    v37 = malloc_type_malloc(8 * v31, 0x100004000313F17uLL);
    if (v37)
    {
      FundamentalEpipolarError_ABSVec(v129, v128, v31, v17, v37);
      v38 = v31;
      if (v31 < 1)
      {
        v43 = v31;
        v40 = 0;
      }

      else
      {
        v39 = 0;
        v40 = 0;
        v41 = v128 + 1;
        v42 = v129 + 1;
        v43 = v38;
        do
        {
          if (v37->f64[v39] < v35)
          {
            if (v39 <= 0x7FF)
            {
              __src[v39 + 472] = 1;
            }

            v44 = 2 * v40;
            v33[v44] = *(v42 - 1);
            v45 = (16 * v40) | 8;
            *(v33 + v45) = *v42;
            *&v34[8 * v44] = *(v41 - 1);
            *&v34[v45] = *v41;
            ++v40;
          }

          ++v39;
          v41 += 2;
          v42 += 2;
        }

        while (v38 != v39);
      }
    }

    else
    {
      v43 = v31;
      v40 = 0;
    }

    free(v37);
    *&__src[152] = v40;
    if (v40 < *(v9 + 72))
    {
      v93 = 0;
      v94 = 0;
LABEL_40:
      v7 = v127;
      goto LABEL_41;
    }

    __src[156] = 1;
    if ((*(v9 + 104) & 1) == 0)
    {
      v51 = *(v17 + 16);
      v52 = *(v17 + 24);
      v53 = *v17;
      v54 = *(v17 + 8);
LABEL_29:
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v77 = *(v17 + 112);
      v137 = *(v17 + 96);
      v138 = v77;
      v139 = *(v17 + 128);
      v78 = *(v17 + 48);
      v133 = *(v17 + 32);
      v134 = v78;
      v79 = *(v17 + 80);
      v135 = *(v17 + 64);
      v136 = v79;
      v167 = v51;
      v168 = v52;
      v169 = v53;
      v170 = v54;
      *&v79 = *(v9 + 32);
      *&v78 = *(v9 + 40);
      v164.f64[0] = v51 - *&v79;
      v164.f64[1] = v52 - *&v78;
      v80 = *(v9 + 16);
      v81 = *(v9 + 24);
      v165 = v53 - v80;
      v166 = v54 - v81;
      v161.f64[0] = v51 + *&v79;
      v161.f64[1] = v52 + *&v78;
      v162 = v53 + v80;
      v163 = v54 + v81;
      v155 = 0;
      v157 = 0u;
      v152 = v33;
      v153 = v34;
      v154 = v40;
      v156 = v17;
      v147 = xmmword_240407168;
      v150 = unk_240407184;
      v151 = 0x3FB999999999999ALL;
      v145 = xmmword_240407148;
      v146 = unk_240407158;
      v148 = 0;
      v149 = 50;
      fmincon_spg(CalcObjValGradForImagePoints, CalcObjValForImagePoints, &v152, &v167, 4u, &v164, &v161, &v145, &v159, &v142);
      BYTE4(v142) = 1;
      v82 = v159;
      *v17 = v160;
      *(v17 + 16) = v82;
      v83 = v138;
      *(v17 + 96) = v137;
      *(v17 + 112) = v83;
      *(v17 + 128) = v139;
      v84 = v134;
      *(v17 + 32) = v133;
      *(v17 + 48) = v84;
      v85 = v136;
      *(v17 + 64) = v135;
      *(v17 + 80) = v85;
      *&__src[304] = v143;
      *&__src[312] = v142;
      __src[316] = 1;
      *&__src[320] = v144;
      v86 = *v17;
      v87 = *(v17 + 16);
      v88 = *(v17 + 48);
      *&__src[360] = *(v17 + 32);
      *&__src[376] = v88;
      *&__src[328] = v86;
      *&__src[344] = v87;
      v89 = *(v17 + 64);
      v90 = *(v17 + 80);
      v91 = *(v17 + 128);
      *&__src[440] = *(v17 + 112);
      *&__src[456] = v91;
      v92 = *(v17 + 96);
      *&__src[408] = v90;
      *&__src[424] = v92;
      *&__src[392] = v89;
      v93 = malloc_type_malloc(v32, 0x100004000313F17uLL);
      v94 = malloc_type_malloc(v32, 0x100004000313F17uLL);
      v95 = *(v9 + 8);
      v96 = malloc_type_malloc(v36, 0x100004000313F17uLL);
      if (v96 && (FundamentalEpipolarError_ABSVec(v129, v128, v43, v17, v96), v43 >= 1))
      {
        v97 = 0;
        v98 = 0;
        v99 = v128 + 1;
        v100 = v129 + 1;
        do
        {
          if (v96->f64[v97] < v95)
          {
            if (v97 <= 0x7FF)
            {
              __src[v97 + 2840] = 1;
            }

            v101 = 2 * v98;
            v93[v101] = *(v100 - 1);
            v102 = (16 * v98) | 8;
            *(v93 + v102) = *v100;
            v94[v101] = *(v99 - 1);
            *(v94 + v102) = *v99;
            ++v98;
          }

          ++v97;
          v99 += 2;
          v100 += 2;
        }

        while (v43 != v97);
      }

      else
      {
        v98 = 0;
      }

      free(v96);
      *&__src[2520] = v98;
      if (v98 >= *(v9 + 72))
      {
        __src[2524] = 1;
        AdjustYOpticalCenterForValidDistanceRange(v93, v94, v98, v17, v9, &v133);
        v103 = v140;
        v104 = v141;
        *(v17 + 96) = v139;
        *(v17 + 112) = v103;
        *(v17 + 128) = v104;
        v105 = v136;
        *(v17 + 32) = v135;
        *(v17 + 48) = v105;
        v106 = v138;
        *(v17 + 64) = v137;
        *(v17 + 80) = v106;
        v107 = v134;
        *v17 = v133;
        *(v17 + 16) = v107;
        v108 = *(v17 + 64);
        *&__src[2608] = *(v17 + 80);
        v109 = *(v17 + 80);
        *&__src[2624] = *(v17 + 96);
        v110 = *(v17 + 96);
        *&__src[2640] = *(v17 + 112);
        v111 = *(v17 + 112);
        *&__src[2656] = *(v17 + 128);
        v112 = *(v17 + 32);
        *&__src[2544] = *(v17 + 16);
        *&__src[2560] = v112;
        v113 = *(v17 + 32);
        *&__src[2576] = *(v17 + 48);
        v114 = *(v17 + 48);
        *&__src[2592] = *(v17 + 64);
        *&__src[2528] = *v17;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v137 = v110;
        v138 = v111;
        v139 = *(v17 + 128);
        v133 = v113;
        v134 = v114;
        v135 = v108;
        v136 = v109;
        *&v108 = *(v17 + 24);
        v167 = *(v17 + 16);
        v168 = *&v108;
        *&v110 = *(v17 + 8);
        v169 = *v17;
        v170 = *&v110;
        *&v111 = *(v9 + 32);
        *&v113 = *(v9 + 40);
        v164.f64[0] = v167 - *&v111;
        v164.f64[1] = *&v108 - *&v113;
        *&v114 = *(v9 + 16);
        v115 = *(v9 + 24);
        v165 = v169 - *&v114;
        v166 = *&v110 - v115;
        v161.f64[0] = v167 + *&v111;
        v161.f64[1] = *&v108 + *&v113;
        v162 = v169 + *&v114;
        v163 = *&v110 + v115;
        v155 = 0;
        v157 = 0u;
        v152 = v93;
        v153 = v94;
        v154 = v98;
        v156 = v17;
        v147 = xmmword_240407168;
        v150 = unk_240407184;
        v151 = 0x3FB999999999999ALL;
        v145 = xmmword_240407148;
        v146 = unk_240407158;
        v148 = 0;
        v149 = 50;
        fmincon_spg(CalcObjValGradForImagePoints, CalcObjValForImagePoints, &v152, &v167, 4u, &v164, &v161, &v145, &v159, &v130);
        v116 = v159;
        *v17 = v160;
        *(v17 + 16) = v116;
        v117 = v138;
        *(v17 + 96) = v137;
        *(v17 + 112) = v117;
        *(v17 + 128) = v139;
        v118 = v134;
        *(v17 + 32) = v133;
        *(v17 + 48) = v118;
        v119 = v136;
        *(v17 + 64) = v135;
        *(v17 + 80) = v119;
        *&__src[2672] = v131;
        *&__src[2680] = v130;
        __src[2684] = 1;
        *&__src[2688] = v132;
        v120 = *v17;
        v121 = *(v17 + 16);
        v122 = *(v17 + 48);
        *&__src[2728] = *(v17 + 32);
        *&__src[2744] = v122;
        *&__src[2696] = v120;
        *&__src[2712] = v121;
        v123 = *(v17 + 64);
        v124 = *(v17 + 80);
        v125 = *(v17 + 128);
        *&__src[2808] = *(v17 + 112);
        *&__src[2824] = v125;
        v126 = *(v17 + 96);
        *&__src[2776] = v124;
        *&__src[2792] = v126;
        *&__src[2760] = v123;
      }

      goto LABEL_40;
    }

    if (v40 < 1)
    {
      v50 = 0.0;
      v49 = 0.0;
      v48 = 0.0;
      v47 = 0.0;
    }

    else
    {
      if (v40 == 1)
      {
        v46 = 0;
        v47 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        v50 = 0.0;
      }

      else
      {
        v46 = v40 & 0x7FFFFFFE;
        v55 = (v34 + 16);
        v56 = (v33 + 2);
        v47 = 0.0;
        v57 = v46;
        v48 = 0.0;
        v49 = 0.0;
        v50 = 0.0;
        do
        {
          v58 = *(v56 - 2);
          v59 = *v56;
          v56 += 4;
          v60 = v59;
          v61 = *(v55 - 2);
          v62 = *v55;
          v55 += 4;
          v47 = v47 + v58 + v60;
          v48 = v48 + v61 + v62;
          v49 = v49 + v61 * v61 + v62 * v62;
          v50 = v50 + v58 * v61 + v60 * v62;
          v57 -= 2;
        }

        while (v57);
        if (v46 == v40)
        {
          goto LABEL_24;
        }
      }

      v63 = v40 - v46;
      v64 = 2 * v46;
      v65 = &v34[16 * v46];
      v66 = &v33[v64];
      do
      {
        v67 = *v66;
        v66 += 2;
        v68 = v67;
        v69 = *v65;
        v65 += 2;
        v50 = v50 + v68 * v69;
        v47 = v47 + v68;
        v48 = v48 + v69;
        v49 = v49 + v69 * v69;
        --v63;
      }

      while (v63);
    }

LABEL_24:
    v53 = *v17;
    v51 = *(v17 + 16);
    v52 = *(v17 + 24);
    v70 = v49 * v40 - v48 * v48;
    if (v70 <= 0.0 || (v71 = (v40 * v50 - v47 * v48) / v70, v71 <= 0.0))
    {
      v54 = *(v17 + 8);
    }

    else
    {
      v72 = *(v17 + 128);
      v54 = v53 / v71;
      if (v72 > 0.0)
      {
        v52 = v52 - (v52 - *(v17 + 8) * (*(v17 + 64) / v72)) + (v51 - (v49 * v47 - v50 * v48) / v70) / v71;
      }
    }

    *(v17 + 8) = v54;
    *(v17 + 24) = v52;
    __src[157] = 1;
    v73 = *(v17 + 112);
    *&__src[256] = *(v17 + 96);
    *&__src[272] = v73;
    *&__src[288] = *(v17 + 128);
    v74 = *(v17 + 48);
    *&__src[192] = *(v17 + 32);
    *&__src[208] = v74;
    v75 = *(v17 + 64);
    *&__src[240] = *(v17 + 80);
    *&__src[224] = v75;
    v76 = *v17;
    *&__src[176] = *(v17 + 16);
    *&__src[160] = v76;
    goto LABEL_29;
  }

  v33 = 0;
  v34 = 0;
  v93 = 0;
  v94 = 0;
LABEL_41:
  free(v33);
  free(v34);
  free(v93);
  free(v94);
  if (v7)
  {
    memcpy(v7, __src, 0x1E48uLL);
  }
}

int8x16_t AdaptiveCorrection_rotateCalModel(uint64_t a1, _OWORD *a2, int8x16_t result, int8x16_t a4, int8x16_t a5, int8x16_t a6, float32x2_t a7, float32x2_t a8, float32x2_t a9, float32x2_t a10)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *a1;
      v10 = *(a1 + 16);
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      a2[3] = *(a1 + 48);
      a2[4] = v12;
      a2[1] = v10;
      a2[2] = v11;
      v13 = *(a1 + 80);
      v14 = *(a1 + 96);
      v15 = *(a1 + 128);
      a2[7] = *(a1 + 112);
      a2[8] = v15;
      a2[5] = v13;
      a2[6] = v14;
      *&v13 = *(a1 + 16);
      v16 = *(a1 + 32);
      v17 = vmla_n_f32(vmul_n_f32(a7, *&v13), a8, v16);
      v18 = *(a1 + 24);
      *&v13 = *(a1 + 40);
      v19 = vmla_n_f32(vmul_n_f32(a9, v18), a10, *&v13);
      a2[1] = vcvtq_f64_f32(vzip1_s32(v17, v19));
      a2[2] = vcvtq_f64_f32(vzip2_s32(v17, v19));
      a2[3] = vcvtq_f64_f32(vzip1_s32(*result.i8, *a4.i8));
      a2[4] = vcvtq_f64_f32(vzip1_s32(*a5.i8, *a6.i8));
      a2[5] = vcvtq_f64_f32(vzip2_s32(*result.i8, *a4.i8));
      a2[6] = vcvtq_f64_f32(vzip2_s32(*a5.i8, *a6.i8));
      result = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(result, result, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
      a2[7] = result;
      a2[8] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL)));
    }
  }

  return result;
}

float64x2_t AdaptiveCorrection_rotateDistortionModel(uint64_t a1, _OWORD *a2, float64x2_t result, float32x2_t a4)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 16);
      *a2 = *a1;
      a2[1] = v4;
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v7 = *(a1 + 80);
      a2[4] = *(a1 + 64);
      a2[5] = v7;
      a2[2] = v5;
      a2[3] = v6;
      v8 = *(a1 + 96);
      v9 = *(a1 + 112);
      v10 = *(a1 + 144);
      a2[8] = *(a1 + 128);
      a2[9] = v10;
      a2[6] = v8;
      a2[7] = v9;
      *&v8 = *(a1 + 16);
      *&v9 = *(a1 + 24);
      result = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(*&result.f64[0], *&v8), a4, *&v9));
      a2[1] = result;
    }
  }

  return result;
}

uint64_t AdaptiveCorrection_transformPointsWithMatrix(uint64_t a1, int a2, float64x2_t *a3, float32x2_t a4, float32x2_t a5)
{
  v5 = 4294954516;
  if (!a1 || !a3)
  {
    return v5;
  }

  if (a2 >= 1)
  {
    v5 = a2;
    v6 = (a1 + 8);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      *a3++ = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(a4, v7), a5, v8));
      v6 += 2;
      --v5;
    }

    while (v5);
    return v5;
  }

  return 0;
}

double AdaptiveCorrection_approximateCorrection@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 112);
  *(a5 + 96) = *(a4 + 96);
  *(a5 + 112) = v5;
  *(a5 + 128) = *(a4 + 128);
  v6 = *(a4 + 48);
  *(a5 + 32) = *(a4 + 32);
  *(a5 + 48) = v6;
  v7 = *(a4 + 80);
  *(a5 + 64) = *(a4 + 64);
  *(a5 + 80) = v7;
  v8 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v8;
  if (a3 < 1)
  {
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    result = 0.0;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v9 = 0;
    result = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
LABEL_8:
    v22 = a3 - v9;
    v23 = 16 * v9;
    v24 = (a2 + 16 * v9);
    v25 = (a1 + v23);
    do
    {
      v26 = *v25;
      v25 += 2;
      v27 = v26;
      v28 = *v24;
      v24 += 2;
      v13 = v13 + v27 * v28;
      result = result + v27;
      v11 = v11 + v28;
      v12 = v12 + v28 * v28;
      --v22;
    }

    while (v22);
    goto LABEL_10;
  }

  v9 = a3 & 0x7FFFFFFE;
  v14 = (a2 + 16);
  v15 = (a1 + 16);
  result = 0.0;
  v16 = v9;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    v17 = *(v15 - 2);
    v18 = *v15;
    v15 += 4;
    v19 = v18;
    v20 = *(v14 - 2);
    v21 = *v14;
    v14 += 4;
    result = result + v17 + v19;
    v11 = v11 + v20 + v21;
    v12 = v12 + v20 * v20 + v21 * v21;
    v13 = v13 + v17 * v20 + v19 * v21;
    v16 -= 2;
  }

  while (v16);
  if (v9 != a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  v29 = v12 * a3 - v11 * v11;
  if (v29 > 0.0)
  {
    v30 = (a3 * v13 - result * v11) / v29;
    if (v30 > 0.0)
    {
      v31 = *(a4 + 8);
      v33 = *(a4 + 16);
      v32 = *(a4 + 24);
      v34 = *(a4 + 64);
      v35 = *(a4 + 128);
      *(a5 + 8) = *a4 / v30;
      if (v35 > 0.0)
      {
        result = v32 - (v32 - v31 * (v34 / v35)) + (v33 - (v12 * result - v13 * v11) / v29) / v30;
        *(a5 + 24) = result;
      }
    }
  }

  return result;
}

uint64_t AdaptiveCorrection_applyDistortionModelSimplified(const double *a1, unsigned int a2, float64x2_t *a3, double *a4)
{
  v4 = 4294954516;
  if (a1 && a2 >= 1 && a3 && a4)
  {
    v5 = a3->f64[0];
    v6 = a3->f64[1] * a3->f64[0];
    v7 = a3[2].f64[0] + v6 * a3[6].f64[0];
    v8 = a3[2].f64[1] + v6 * a3[6].f64[1];
    v9 = a3[3].f64[0] + v6 * a3[7].f64[0];
    v10 = a3[3].f64[1] + v6 * a3[7].f64[1];
    v11 = a3[4].f64[0] + v6 * a3[8].f64[0];
    v12 = a3[4].f64[1] + v6 * a3[8].f64[1];
    v13 = a3[5].f64[0] + v6 * a3[9].f64[0];
    v14 = a3[5].f64[1] + v6 * a3[9].f64[1];
    v15 = a3[1];
    if (a2 >= 2 && (&a1[2 * a2] <= a4 || &a4[2 * a2] <= a1))
    {
      v28 = vdupq_lane_s64(*&v15.f64[0], 0);
      v29 = vdupq_laneq_s64(v15, 1);
      v30 = vdupq_lane_s64(*&v7, 0);
      v31 = vdupq_lane_s64(*&v9, 0);
      v32 = vdupq_lane_s64(*&v10, 0);
      v33 = vdupq_lane_s64(*&v11, 0);
      v34 = vdupq_lane_s64(*&v12, 0);
      v16 = a2 & 0x7FFFFFFE;
      v35 = vdupq_lane_s64(*&v13, 0);
      v36 = vdupq_n_s64(0x4059000000000000uLL);
      __asm { FMOV            V27.2D, #1.0 }

      v42 = a1;
      v43 = a4;
      v44 = v16;
      v45 = vdupq_lane_s64(*&v14, 0);
      do
      {
        v51 = vld2q_f64(v42);
        v42 += 4;
        v46 = vsubq_f64(v51.val[0], v28);
        v51.val[0] = vsubq_f64(v51.val[1], v29);
        v51.val[1] = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v51.val[0], v51.val[0]), v46, v46)), v5);
        v51.val[1] = vmulq_f64(v51.val[1], v51.val[1]);
        v47 = vmulq_f64(v51.val[1], v51.val[1]);
        v48 = vmulq_f64(v51.val[1], v47);
        v49 = vmulq_f64(v47, v47);
        v51.val[1] = vaddq_f64(vdivq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vaddq_f64(v30, vmulq_n_f64(v51.val[1], v8)), v47, v31), v48, v32), v49, v33), vmulq_f64(v47, v48), v34), vmulq_f64(v48, v48), v35), vmulq_f64(v49, v48), v45), v36), _Q27);
        v51.val[1] = vbslq_s8(vcgtzq_f64(v51.val[1]), vdivq_f64(_Q27, v51.val[1]), _Q27);
        v51.val[0] = vmulq_f64(v51.val[0], v51.val[1]);
        v51.val[1] = vaddq_f64(v28, vmulq_f64(v46, v51.val[1]));
        v50 = vaddq_f64(v29, v51.val[0]);
        vst2q_f64(v43, *(&v51 + 16));
        v43 += 4;
        v44 -= 2;
      }

      while (v44);
      if (v16 == a2)
      {
        return 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v4 = a2 - v16;
    v17 = 2 * v16;
    v18 = &a4[2 * v16];
    v19 = &a1[v17];
    do
    {
      v20 = *v19++;
      v21 = vsubq_f64(v20, v15);
      v22 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v21, v21).f64[1]) + v21.f64[0] * v21.f64[0]);
      v23 = v5 * v22 * (v5 * v22);
      v24 = v23 * (v23 * v23);
      v25 = (v7 + v8 * v23 + v9 * (v23 * v23) + v10 * v24 + v11 * (v23 * v23 * (v23 * v23)) + v12 * (v23 * v23 * v24) + v13 * (v24 * v24) + v14 * (v23 * v23 * (v23 * v23) * v24)) / 100.0 + 1.0;
      if (v25 <= 0.0)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 1.0 / v25;
      }

      *v18++ = vaddq_f64(v15, vmulq_n_f64(v21, v26));
      --v4;
    }

    while (v4);
  }

  return v4;
}

const double *AdaptiveCorrection_applyDistortionModel(const double *result, unsigned int a2, double *a3, double *a4, float64x2_t a5, float64_t a6, double a7)
{
  if (a2 >= 1)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = *(a3 + 2);
    v10 = *(a3 + 3);
    v11 = *(a3 + 4);
    v12 = *(a3 + 5);
    v13 = *(a3 + 6);
    v14 = *(a3 + 7);
    if (a2 == 1 || (&result[2 * a2] > a4 ? (v15 = &a4[2 * a2] > result) : (v15 = 0), v15))
    {
      v23 = 0;
    }

    else
    {
      v16 = vdupq_lane_s64(*&a5.f64[0], 0);
      v17 = vdupq_lane_s64(*&a6, 0);
      v18 = vdupq_lane_s64(v7, 0);
      v19 = vdupq_lane_s64(v9, 0);
      v20 = vdupq_lane_s64(v10, 0);
      v21 = vdupq_lane_s64(v11, 0);
      v22 = vdupq_lane_s64(v12, 0);
      v23 = a2 & 0x7FFFFFFE;
      v24 = vdupq_lane_s64(v13, 0);
      v25 = vdupq_n_s64(0x4059000000000000uLL);
      __asm { FMOV            V28.2D, #1.0 }

      v31 = result;
      v32 = a4;
      v33 = v23;
      v34 = vdupq_lane_s64(v14, 0);
      do
      {
        v51 = vld2q_f64(v31);
        v31 += 4;
        v35 = vsubq_f64(v51.val[0], v16);
        v51.val[0] = vsubq_f64(v51.val[1], v17);
        v51.val[1] = vmulq_n_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v51.val[0], v51.val[0]), v35, v35)), a7);
        v51.val[1] = vmulq_f64(v51.val[1], v51.val[1]);
        v36 = vmulq_f64(v51.val[1], v51.val[1]);
        v37 = vmulq_f64(v51.val[1], v36);
        v38 = vmulq_f64(v36, v36);
        v51.val[1] = vaddq_f64(vdivq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vaddq_f64(v18, vmulq_n_f64(v51.val[1], v8)), v36, v19), v37, v20), v38, v21), vmulq_f64(v36, v37), v22), vmulq_f64(v37, v37), v24), vmulq_f64(v38, v37), v34), v25), _Q28);
        v51.val[1] = vbslq_s8(vcgtzq_f64(v51.val[1]), vdivq_f64(_Q28, v51.val[1]), _Q28);
        v50.val[0] = vaddq_f64(vmulq_f64(v35, v51.val[1]), v16);
        v50.val[1] = vaddq_f64(vmulq_f64(v51.val[0], v51.val[1]), v17);
        vst2q_f64(v32, v50);
        v32 += 4;
        v33 -= 2;
      }

      while (v33);
      if (v23 == a2)
      {
        return result;
      }
    }

    a5.f64[1] = a6;
    v39 = a2 - v23;
    v40 = 2 * v23;
    v41 = &a4[2 * v23];
    v42 = &result[v40];
    do
    {
      v43 = *v42++;
      v44 = vsubq_f64(v43, a5);
      v45 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v44, v44).f64[1]) + v44.f64[0] * v44.f64[0]);
      v46 = v45 * a7 * (v45 * a7);
      v47 = v46 * (v46 * v46);
      v48 = (*&v7 + v8 * v46 + *&v9 * (v46 * v46) + *&v10 * v47 + *&v11 * (v46 * v46 * (v46 * v46)) + *&v12 * (v46 * v46 * v47) + *&v13 * (v47 * v47) + *&v14 * (v46 * v46 * (v46 * v46) * v47)) / 100.0 + 1.0;
      if (v48 <= 0.0)
      {
        v49 = 1.0;
      }

      else
      {
        v49 = 1.0 / v48;
      }

      *v41++ = vaddq_f64(vmulq_n_f64(v44, v49), a5);
      --v39;
    }

    while (v39);
  }

  return result;
}