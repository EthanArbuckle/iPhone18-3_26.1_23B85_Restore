@interface C3DBezierCurveEnumerateCGPathCurveSegmentsOfType
@end

@implementation C3DBezierCurveEnumerateCGPathCurveSegmentsOfType

uint64_t ___C3DBezierCurveEnumerateCGPathCurveSegmentsOfType_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result;
  v33 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2 > 1)
  {
    if (v7 == 2)
    {
      v15 = *(a2 + 8);
      v16 = vcvt_f32_f64(v15[1]);
      if (*(result + 72) == 2)
      {
        v17 = vcvt_f32_f64(*v15);
        v29 = *(*(*(result + 48) + 8) + 24);
        v30 = v29 + 1;
        v31 = v29 + 2;
        v18 = *(result + 32);
        v25 = *(*(v6[5] + 8) + 24);
        v26 = v17;
        v27 = v16;
        result = (*(v18 + 16))(v18, &v29, &v25);
      }

      *(*(v6[5] + 8) + 24) = v16;
      v13 = *(v6[6] + 8);
      v14 = *(v13 + 24) + 2;
      goto LABEL_20;
    }

    if (v7 == 3)
    {
      v19 = *(a2 + 8);
      v20 = vcvt_f32_f64(v19[2]);
      if (*(result + 72) == 3)
      {
        v21 = vcvt_f32_f64(v19[1]);
        v22 = vcvt_f32_f64(*v19);
        v29 = *(*(*(result + 48) + 8) + 24);
        v30 = v29 + 1;
        v31 = v29 + 2;
        v32 = v29 + 3;
        v23 = *(result + 32);
        v25 = *(*(v6[5] + 8) + 24);
        v26 = v22;
        v27 = v21;
        v28 = v20;
        result = (*(v23 + 16))(v23, &v29, &v25, a4, a5, a6);
      }

      *(*(v6[5] + 8) + 24) = v20;
      v13 = *(v6[6] + 8);
      v14 = *(v13 + 24) + 3;
      goto LABEL_20;
    }

    if (v7 != 4)
    {
      return result;
    }

    if (*(result + 72) == 1)
    {
      v8 = *(result + 56);
      v29 = *(*(*(result + 48) + 8) + 24);
      v30 = *(*(*(result + 64) + 8) + 24);
      v9 = *(result + 32);
      v10 = *(*(v8 + 8) + 24);
      v25 = *(*(v6[5] + 8) + 24);
      v26 = v10;
      result = (*(v9 + 16))(v9, &v29);
    }

    *(*(v6[5] + 8) + 24) = *(*(v6[7] + 8) + 24);
LABEL_13:
    v13 = *(v6[6] + 8);
    v14 = *(v13 + 24) + 1;
LABEL_20:
    *(v13 + 24) = v14;
    return result;
  }

  if (!v7)
  {
    v24 = vcvt_f32_f64(**(a2 + 8));
    *(*(*(result + 40) + 8) + 24) = v24;
    ++*(*(*(result + 48) + 8) + 24);
    *(*(*(result + 56) + 8) + 24) = v24;
    *(*(*(result + 64) + 8) + 24) = *(*(*(result + 48) + 8) + 24);
    return result;
  }

  if (v7 == 1)
  {
    v11 = vcvt_f32_f64(**(a2 + 8));
    if (*(result + 72) == 1)
    {
      v29 = *(*(*(result + 48) + 8) + 24);
      v30 = v29 + 1;
      v12 = *(result + 32);
      v25 = *(*(v6[5] + 8) + 24);
      v26 = v11;
      result = (*(v12 + 16))(v12, &v29);
    }

    *(*(v6[5] + 8) + 24) = v11;
    goto LABEL_13;
  }

  return result;
}

@end