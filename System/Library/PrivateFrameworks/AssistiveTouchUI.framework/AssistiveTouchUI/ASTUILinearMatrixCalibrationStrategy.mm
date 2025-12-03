@interface ASTUILinearMatrixCalibrationStrategy
- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)point;
- (id)calibratedArrayForGazePoint:(CGPoint)point;
- (id)learnCalibrationForPoints:(id)points;
@end

@implementation ASTUILinearMatrixCalibrationStrategy

- (id)calibratedArrayForGazePoint:(CGPoint)point
{
  v3 = objc_opt_new();

  return v3;
}

- (CGPoint)calibratedGazePointForGazePoint:(CGPoint)point
{
  v17 = *MEMORY[0x277D85DE8];
  x = point.x;
  y = point.y;
  __A[0] = x;
  __A[1] = y;
  __A[2] = 1.0;
  v5 = [(ASTUILinearMatrixCalibrationStrategy *)self calibratedArrayForGazePoint:?];
  for (i = 0; i != 6; ++i)
  {
    v7 = [v5 objectAtIndexedSubscript:i];
    [v7 floatValue];
    __B[i] = v8;
  }

  vDSP_mmul(__A, 1, __B, 1, __C, 1, 1uLL, 2uLL, 3uLL);
  v9 = __C[0];
  v10 = __C[1];

  v11 = *MEMORY[0x277D85DE8];
  v12 = v9;
  v13 = v10;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)learnCalibrationForPoints:(id)points
{
  v61 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  [pointsCopy enumerateKeysAndObjectsUsingBlock:&__block_literal_global_0];
  allKeys = [pointsCopy allKeys];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __66__ASTUILinearMatrixCalibrationStrategy_learnCalibrationForPoints___block_invoke_2;
  v54[3] = &unk_278CDC698;
  v44 = pointsCopy;
  v55 = v44;
  v5 = [allKeys ax_mappedArrayUsingBlock:v54];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v50 + 1) + 8 * i) CGPointValue];
        v13 = v12;
        v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v6 addObject:v14];

        v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [v6 addObject:v15];

        [v6 addObject:&unk_28532E090];
      }

      v9 = [v7 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v9);
  }

  v16 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = allKeys;
  v18 = [v17 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v47;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v46 + 1) + 8 * j) CGPointValue];
        v23 = v22;
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v16 addObject:v24];

        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
        [v16 addObject:v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v19);
  }

  v43[1] = v43;
  v26 = (v43 - ((4 * [v6 count] + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v6 count])
  {
    v27 = 0;
    do
    {
      v28 = [v6 objectAtIndexedSubscript:v27];
      [v28 floatValue];
      v26[v27] = v29;

      ++v27;
    }

    while ([v6 count] > v27);
  }

  v30 = (v43 - ((4 * [v16 count] + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v16 count])
  {
    v31 = 0;
    do
    {
      v32 = [v16 objectAtIndexedSubscript:v31];
      [v32 floatValue];
      v30[v31] = v33;

      ++v31;
    }

    while ([v16 count] > v31);
  }

  v34 = (v43 - ((4 * [v6 count] + 15) & 0xFFFFFFFFFFFFFFF0));
  vDSP_mtrans(v26, 1, v34, 1, 3uLL, [v7 count]);
  vDSP_mtrans(v30, 1, (v43 - ((4 * [v16 count] + 15) & 0xFFFFFFFFFFFFFFF0)), 1, 2uLL, objc_msgSend(v17, "count"));
  vDSP_mmul(v34, 1, v26, 1, v58, 1, 3uLL, 3uLL, [v7 count]);
  vDSP_mmul(v34, 1, v30, 1, v57, 1, 3uLL, 2uLL, [v7 count]);
  v45 = 3;
  v35 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
  v36 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
  sgetrf_(&v45, &v45, v58, &v45, v35, &v45 + 1);
  sgetri_(&v45, v58, &v45, v35, v36, &v45, &v45 + 1);
  vDSP_mmul(v58, 1, v57, 1, v56, 1, 3uLL, 2uLL, 3uLL);
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
  for (k = 0; k != 6; ++k)
  {
    *&v38 = v56[k];
    v40 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    [v37 addObject:v40];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v37;
}

@end