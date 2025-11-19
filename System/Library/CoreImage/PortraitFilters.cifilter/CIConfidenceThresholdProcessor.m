@interface CIConfidenceThresholdProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
@end

@implementation CIConfidenceThresholdProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a3 objectAtIndexedSubscript:{0, a4, a5, a6}];
  v10 = [a3 objectAtIndexedSubscript:1];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"inputFocusRect", "CGRectValue"}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memset(v95, 0, sizeof(v95));
  memset(v93, 0, sizeof(v93));
  memset(v94, 0, sizeof(v94));
  [v9 region];
  v20 = v19;
  [v9 region];
  v22 = v21;
  if (v21 < 1)
  {
    v49 = 1000.0;
    v50 = -998637568;
    v30 = 1000.0;
    v87 = -0.0005;
    v51 = -15.748;
    v52 = -2000.0;
  }

  else
  {
    v23 = 0;
    v24 = v20;
    v85 = v18;
    v86 = v16;
    v25 = v12;
    v26 = v12 + v16;
    v27 = v14;
    v88 = v14 + v18;
    v89 = v26;
    v28 = 0.0;
    v29 = -1000.0;
    v30 = 1000.0;
    v31 = 1000.0;
    v32 = -1000.0;
    do
    {
      if (v24 >= 1)
      {
        v33 = 0.0;
        v34 = v24;
        do
        {
          v35 = sub_3550(v9, v33, v28);
          if (v35 < v30)
          {
            v30 = v35;
          }

          if (v35 >= v29)
          {
            v29 = v35;
          }

          if (v25 <= v33 && v89 > v33 && v27 <= v28 && v88 > v28)
          {
            v39 = sub_3550(v10, v33, v28);
            if (v39 < v31)
            {
              v31 = v39;
            }

            if (v39 >= v32)
            {
              v32 = v39;
            }
          }

          v33 = v33 + 1.0;
          --v34;
        }

        while (v34);
      }

      v28 = v28 + 1.0;
      ++v23;
    }

    while (v23 != v22);
    v40 = 0;
    v84 = v29 - v30;
    v41 = 0.0;
    v87 = 1.0 / (v29 - v30);
    do
    {
      if (v24 >= 1)
      {
        v42 = 0.0;
        v43 = v24;
        do
        {
          v44 = fmaxf(floorf(v87 * ((sub_3550(v9, v42, v41) - v30) * 127.0)), 0.0);
          if (v44 > 127.0)
          {
            v44 = 127.0;
          }

          ++*(v95 + v44);
          if (v25 <= v42 && v89 > v42 && v27 <= v41 && v88 > v41)
          {
            v48 = fmaxf(floorf((1.0 / (v32 - v31)) * ((sub_3550(v10, v42, v41) - v31) * 127.0)), 0.0);
            if (v48 > 127.0)
            {
              v48 = 127.0;
            }

            ++*(v94 + v48);
          }

          v42 = v42 + 1.0;
          --v43;
        }

        while (v43);
      }

      v41 = v41 + 1.0;
      ++v40;
    }

    while (v40 != v22);
    v49 = v31;
    v50 = LODWORD(v29);
    v18 = v85;
    v16 = v86;
    v51 = (v32 - v31) / 127.0;
    v52 = v84;
  }

  v53 = (v16 * v18);
  if (v53 < 1)
  {
    v58 = 0.0;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v56 = (v53 + 1) / 2;
    do
    {
      v57 = v54 + 1;
      if (v54 > 0x7E)
      {
        break;
      }

      v55 += *(v94 + v54++);
    }

    while (v55 < v56);
    v58 = v57;
  }

  v59 = fmax((v51 * v58), 0.0) + v49;
  v92 = 1024846306;
  v91 = 0x3DE3F1413E5DE69BLL;
  v60 = &v90 | 0xC;
  v90 = xmmword_54B10;
  for (i = 3; i != 131; ++i)
  {
    if (i <= 5)
    {
      v62 = 0;
    }

    else
    {
      v62 = i - 6;
    }

    if (i >= 0x7F)
    {
      v63 = 6;
    }

    else
    {
      v63 = i;
    }

    v64 = 0.0;
    if (v62 < v63)
    {
      v65 = v63;
      v66 = (v60 - 4 * v62);
      v67 = v95 + v62;
      v68 = v65 - v62;
      do
      {
        v69 = *v67++;
        v70 = v69;
        v71 = *v66--;
        v64 = v64 + (v70 * v71);
        --v68;
      }

      while (v68);
    }

    *(v93 + i - 3) = v64;
    v60 += 4;
  }

  v72 = v59;
  v73 = (v87 * (v72 - v30));
  if (v73 < 1)
  {
    v80 = 0.0;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    v76 = v73 << 7;
    if (v76 <= 1)
    {
      v76 = 1;
    }

    if (v76 >= 128)
    {
      v76 = 128;
    }

    if (v76 <= 2)
    {
      v76 = 2;
    }

    v77 = (v76 - 1);
    v78 = -1000.0;
    do
    {
      v79 = *(v93 + v74);
      if ((((v74 / 127.0) * (v74 / 127.0)) * v79) > v78)
      {
        v78 = ((v74 / 127.0) * (v74 / 127.0)) * v79;
        v75 = v74;
      }

      ++v74;
    }

    while (v77 != v74);
    v80 = v75;
  }

  v81 = v30 + ((v52 / 127.0) * v80);
  v82 = [a5 baseAddress];
  *v82 = v81;
  v82[1] = v30;
  *(v82 + 2) = v50;
  v82[3] = 1.0;
  return 1;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v5 = [a4 objectForKeyedSubscript:{@"fullROI", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end