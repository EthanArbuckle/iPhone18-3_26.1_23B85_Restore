@interface PanoramaRectanglingStage
- (CGRect)cropWithInitialRect:(CGRect)rect;
- (CGRect)getCropRect;
- (PanoramaRectanglingStage)initWithContext:(id)context;
- (int)cropAPI:(id)i;
- (int)cropAPI:(id)i initialRect:(CGRect)rect;
- (int)getMaskAsBuffer:(id)buffer bufferOut:(char *)out widthOut:(int *)widthOut heightOut:(int *)heightOut;
- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height;
- (int)resetState;
@end

@implementation PanoramaRectanglingStage

- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height
{
  self->_sliceWidth = width;
  self->_sliceHeight = height;
  v5 = MEMORY[0x277CBF3A0];
  self->_rectanglingMode = process;
  v6 = *(v5 + 16);
  self->_cropRect.origin = *v5;
  self->_cropRect.size = v6;
  return 0;
}

- (PanoramaRectanglingStage)initWithContext:(id)context
{
  objc_storeStrong(&self->_metal, context);
  self->_direction = 1;
  fig_note_initialize_category_with_default_work();
  return self;
}

- (int)resetState
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  self->_cropRect.origin = *MEMORY[0x277CBF3A0];
  self->_cropRect.size = v2;
  return 0;
}

- (CGRect)getCropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)cropAPI:(id)i
{
  iCopy = i;
  v8 = objc_msgSend_width(iCopy, v5, v6, v7);
  v12 = objc_msgSend_height(iCopy, v9, v10, v11);
  LODWORD(self) = objc_msgSend_cropAPI_initialRect_(self, v13, iCopy, v14, 0.0, 0.0, v8, v12);

  return self;
}

- (int)cropAPI:(id)i initialRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  iCopy = i;
  objc_msgSend_getMaskAsBuffer_bufferOut_widthOut_heightOut_(self, v10, iCopy, &self->_mask, &self->_maskWidth, &self->_maskHeight);
  if (self->_direction != 2)
  {
    x = objc_msgSend_height(iCopy, v11, v12, v13) - x - height;
  }

  objc_msgSend_cropWithInitialRect_(self, v11, v12, v13, x, y, width, height);
  self->_cropRect.origin.x = v14;
  self->_cropRect.origin.y = v15;
  self->_cropRect.size.width = v16;
  self->_cropRect.size.height = v17;

  return 0;
}

- (CGRect)cropWithInitialRect:(CGRect)rect
{
  x = rect.origin.x;
  v4 = (rect.origin.x + rect.size.height + -1.0);
  y = rect.origin.y;
  v6 = (rect.origin.y + rect.size.width + -1.0);
  v7 = 0.0;
  v8 = 1.0;
  do
  {
    v9 = y;
    v10 = x;
    v11 = v4 - x;
    if (v4 >= x)
    {
      v12 = x;
      do
      {
        v10 = v12;
        v13 = 0.0;
        if (v6 >= y)
        {
          v14 = 0;
          v15 = &self->_mask[y + self->_maskWidth * v10];
          v16 = v6 - y + 1;
          do
          {
            if (*v15++)
            {
              ++v14;
            }

            --v16;
          }

          while (v16);
          v13 = v14;
        }

        v12 = (v10 + 1);
      }

      while ((v13 / (v6 - y)) <= v7 && v10 < v4);
    }

    if (v7 <= 0.0)
    {
      v19 = v6;
    }

    else
    {
      v19 = v6;
      if ((v11 * 0.2) < (v10 - x))
      {
        LODWORD(v20) = v6;
        LODWORD(v21) = y;
        if (v6 >= y)
        {
          v22 = v4 - x;
          v23 = v6;
          v24 = y;
          do
          {
            v20 = v24;
            v25 = 0.0;
            if (v4 >= x)
            {
              v26 = 0;
              maskWidth = self->_maskWidth;
              v28 = &self->_mask[x * maskWidth];
              v29 = v11 + 1;
              do
              {
                if (v28[v20])
                {
                  ++v26;
                }

                v28 += maskWidth;
                --v29;
              }

              while (v29);
              v25 = v26;
            }

            v24 = v20 + 1;
          }

          while ((v25 / v22) >= 0.8 && v20 < v6);
          do
          {
            v21 = v23;
            v31 = 0.0;
            if (v4 >= x)
            {
              v32 = 0;
              v33 = self->_maskWidth;
              v34 = &self->_mask[x * v33];
              v35 = v11 + 1;
              do
              {
                if (v34[v21])
                {
                  ++v32;
                }

                v34 += v33;
                --v35;
              }

              while (v35);
              v31 = v32;
            }

            v23 = v21 - 1;
          }

          while ((v31 / v22) >= 0.8 && v21 > y);
        }

        if (v21 - y <= v6 - v20)
        {
          v19 = v6;
        }

        else
        {
          v19 = v20;
        }

        if (v21 - y <= v6 - v20)
        {
          y = v21;
        }

        else
        {
          y = y;
        }

        v10 = x;
      }
    }

    v37 = v4;
    if (v4 >= v10)
    {
      v38 = v4;
      do
      {
        v37 = v38;
        v39 = 0.0;
        if (y <= v19)
        {
          v40 = 0;
          v41 = &self->_mask[y + self->_maskWidth * v37];
          v42 = v19 - y + 1;
          do
          {
            if (*v41++)
            {
              ++v40;
            }

            --v42;
          }

          while (v42);
          v39 = v40;
        }

        v38 = (v37 - 1);
      }

      while ((v39 / (v19 - y)) <= v7 && v37 > v10);
    }

    if (v7 > 0.0 && (v11 * 0.2) < (v4 - v37))
    {
      if (v6 >= v9)
      {
        v45 = v4 - x;
        v46 = v6;
        v47 = v9;
        do
        {
          v19 = v47;
          v48 = 0.0;
          if (v4 >= v10)
          {
            v49 = 0;
            v50 = self->_maskWidth;
            v51 = &self->_mask[v10 * v50];
            v52 = v4 - v10 + 1;
            do
            {
              if (v51[v19])
              {
                ++v49;
              }

              v51 += v50;
              --v52;
            }

            while (v52);
            v48 = v49;
          }

          v47 = v19 + 1;
        }

        while ((v48 / v45) >= 0.8 && v19 < v6);
        do
        {
          v54 = v46;
          v55 = 0.0;
          if (v4 >= v10)
          {
            v56 = 0;
            v57 = self->_maskWidth;
            v58 = &self->_mask[v10 * v57];
            v59 = v4 - v10 + 1;
            do
            {
              if (v58[v54])
              {
                ++v56;
              }

              v58 += v57;
              --v59;
            }

            while (v59);
            v55 = v56;
          }

          v46 = v54 - 1;
        }

        while ((v55 / v45) >= 0.8 && v54 > v9);
        LODWORD(y) = v54;
      }

      v61 = v6 - v19;
      if (y - v9 <= v6 - v19)
      {
        v19 = v6;
      }

      else
      {
        v19 = v19;
      }

      if (y - v9 <= v61)
      {
        y = y;
      }

      else
      {
        y = v9;
      }

      v37 = v4;
    }

    if (y <= v19)
    {
      v62 = y;
      do
      {
        v63 = v62;
        v64 = 0.0;
        if (v10 <= v37)
        {
          v65 = 0;
          v66 = self->_maskWidth;
          v67 = &self->_mask[v10 * v66];
          v68 = v37 - v10 + 1;
          do
          {
            if (v67[v63])
            {
              ++v65;
            }

            v67 += v66;
            --v68;
          }

          while (v68);
          v64 = v65;
        }

        v62 = v63 + 1;
      }

      while ((v64 / (v37 - v10)) <= v7 && v63 < v19);
      y = v63;
    }

    if (v7 > 0.0 && ((v6 - v9) * 0.2) < (y - v9))
    {
      if (v4 >= x)
      {
        v70 = v6 - v9;
        v71 = v4;
        do
        {
          LODWORD(v10) = v71;
          v72 = 0.0;
          if (v6 >= v9)
          {
            v73 = 0;
            v74 = &self->_mask[v9 + self->_maskWidth * v10];
            v75 = v6 - v9 + 1;
            do
            {
              if (*v74++)
              {
                ++v73;
              }

              --v75;
            }

            while (v75);
            v72 = v73;
          }

          v71 = v10 - 1;
        }

        while ((v72 / v70) >= 0.8 && v10 > x);
        v78 = x;
        do
        {
          LODWORD(v37) = v78;
          v79 = 0.0;
          if (v6 >= v9)
          {
            v80 = 0;
            v81 = &self->_mask[v9 + self->_maskWidth * v37];
            v82 = v6 - v9 + 1;
            do
            {
              if (*v81++)
              {
                ++v80;
              }

              --v82;
            }

            while (v82);
            v79 = v80;
          }

          v78 = v37 + 1;
        }

        while ((v79 / v70) >= 0.8 && v37 < v4);
      }

      v85 = v4 - v37;
      if (v10 - x <= v4 - v37)
      {
        v37 = v4;
      }

      else
      {
        v37 = v37;
      }

      if (v10 - x <= v85)
      {
        v10 = v10;
      }

      else
      {
        v10 = x;
      }

      y = v9;
    }

    if (v19 >= y)
    {
      v86 = v19;
      do
      {
        v87 = v86;
        v88 = 0.0;
        if (v10 <= v37)
        {
          v89 = 0;
          v90 = self->_maskWidth;
          v91 = &self->_mask[v10 * v90];
          v92 = v37 - v10 + 1;
          do
          {
            if (v91[v87])
            {
              ++v89;
            }

            v91 += v90;
            --v92;
          }

          while (v92);
          v88 = v89;
        }

        v86 = v87 - 1;
      }

      while ((v88 / (v37 - v10)) <= v7 && v87 > y);
      v19 = v87;
    }

    if (v7 <= 0.0 || ((v6 - v9) * 0.2) >= (v6 - v19))
    {
      v6 = v19;
      v4 = v37;
      x = v10;
    }

    else
    {
      if (v4 >= x)
      {
        v94 = v6 - v9;
        v95 = v4;
        do
        {
          LODWORD(v10) = v95;
          v96 = 0.0;
          if (v6 >= v9)
          {
            v97 = 0;
            v98 = &self->_mask[v9 + self->_maskWidth * v10];
            v99 = v6 - v9 + 1;
            do
            {
              if (*v98++)
              {
                ++v97;
              }

              --v99;
            }

            while (v99);
            v96 = v97;
          }

          v95 = v10 - 1;
        }

        while ((v96 / v94) >= 0.8 && v10 > x);
        v102 = x;
        do
        {
          LODWORD(v37) = v102;
          v103 = 0.0;
          if (v6 >= v9)
          {
            v104 = 0;
            v105 = &self->_mask[v9 + self->_maskWidth * v37];
            v106 = v6 - v9 + 1;
            do
            {
              if (*v105++)
              {
                ++v104;
              }

              --v106;
            }

            while (v106);
            v103 = v104;
          }

          v102 = v37 + 1;
        }

        while ((v103 / v94) >= 0.8 && v37 < v4);
      }

      v109 = v4 - v37;
      if (v10 - x <= v4 - v37)
      {
        v4 = v4;
      }

      else
      {
        v4 = v37;
      }

      if (v10 - x <= v109)
      {
        x = v10;
      }

      else
      {
        x = x;
      }
    }

    v8 = v8 * 0.9;
    v7 = 1.0 - v8;
  }

  while ((1.0 - v8) < 0.999);
  v110 = self->_maskWidth;
  maskHeight = self->_maskHeight;
  v112 = (((self->_sliceWidth / (v110 + v110)) * 0.9) * v110) / 2;
  v113 = v110 / 2 - v112;
  if (v113 >= y)
  {
    v114 = y;
  }

  else
  {
    v114 = v113 & ~(v113 >> 31);
  }

  v115 = v112 + v110 / 2;
  if (v115 >= v110)
  {
    v116 = v110 - 1;
  }

  else
  {
    v116 = v112 + v110 / 2;
  }

  if (v115 > v6)
  {
    LODWORD(v6) = v116;
  }

  v117 = maskHeight - 1 - v4;
  v118 = (2 * v114);
  v119 = (2 * v117);
  v120 = (2 * (maskHeight - 1 - x - v117));
  v121 = (2 * (v6 - v114));
  result.size.height = v120;
  result.size.width = v121;
  result.origin.y = v119;
  result.origin.x = v118;
  return result;
}

- (int)getMaskAsBuffer:(id)buffer bufferOut:(char *)out widthOut:(int *)widthOut heightOut:(int *)heightOut
{
  bufferCopy = buffer;
  v14 = objc_msgSend_width(bufferCopy, v11, v12, v13);
  v18 = objc_msgSend_height(bufferCopy, v15, v16, v17);
  v19 = malloc_type_calloc(v18 * v14, 1uLL, 0x100004077774924uLL);
  if (v19)
  {
    v23 = v19;
    objc_msgSend_waitForIdle(self->_metal, v20, v21, v22);
    v27 = objc_msgSend_width(bufferCopy, v24, v25, v26);
    v31 = objc_msgSend_width(bufferCopy, v28, v29, v30);
    v35 = objc_msgSend_height(bufferCopy, v32, v33, v34) * v31;
    memset(v51, 0, 24);
    v51[3] = objc_msgSend_width(bufferCopy, v36, v37, v38);
    v51[4] = objc_msgSend_height(bufferCopy, v39, v40, v41);
    v51[5] = 1;
    objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(bufferCopy, v42, v23, v27, v35, v51, 0, 0);
    *out = v23;
    *widthOut = objc_msgSend_width(bufferCopy, v43, v44, v45);
    v49 = 0;
    *heightOut = objc_msgSend_height(bufferCopy, v46, v47, v48);
  }

  else
  {
    v49 = 2;
  }

  return v49;
}

@end