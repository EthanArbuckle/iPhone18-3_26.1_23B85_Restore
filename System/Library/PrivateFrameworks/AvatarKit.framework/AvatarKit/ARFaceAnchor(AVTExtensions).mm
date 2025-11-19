@interface ARFaceAnchor(AVTExtensions)
- (__n128)_avt_rawTransform;
- (float)_avt_rawBlendShapeAtLocation:()AVTExtensions;
@end

@implementation ARFaceAnchor(AVTExtensions)

- (__n128)_avt_rawTransform
{
  v1 = [a1 trackingData];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E698C098]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698C090]];
  v7 = [v1 objectForKeyedSubscript:*MEMORY[0x1E698BFD0]];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698C030]];

  v9 = *MEMORY[0x1E698C0A0];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698C0A0]];
  ARMatrix3x3FromArray();

  v11 = *MEMORY[0x1E698C0C8];
  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698C0C8]];
  ARVector3FromArray();

  ARVector3ScalarMultiplication();
  ARMatrix4x4FromRotationAndTranslation();
  v29 = v14;
  v30 = v13;
  v26 = v16;
  v28 = v15;
  v17 = [v8 objectForKeyedSubscript:v9];
  ARMatrix3x3FromArray();

  v18 = [v8 objectForKeyedSubscript:v11];
  ARVector3FromArray();

  ARVector3ScalarMultiplication();
  ARMatrix4x4FromRotationAndTranslation();
  v23 = 0;
  v31 = v30;
  v32 = v29;
  v33 = v28;
  v34 = v26;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  do
  {
    *(&v35 + v23) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v31 + v23))), v20, *(&v31 + v23), 1), v21, *(&v31 + v23), 2), v22, *(&v31 + v23), 3);
    v23 += 16;
  }

  while (v23 != 64);
  v24 = 0;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  do
  {
    *(&v35 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BB4F05D0, COERCE_FLOAT(*(&v31 + v24))), xmmword_1BB4F0590, *(&v31 + v24), 1), xmmword_1BB4F05F0, *(&v31 + v24), 2), xmmword_1BB4F06F0, *(&v31 + v24), 3);
    v24 += 16;
  }

  while (v24 != 64);
  v27 = v35;

  return v27;
}

- (float)_avt_rawBlendShapeAtLocation:()AVTExtensions
{
  v4 = a3;
  v5 = [a1 trackingData];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698C098]];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  v10 = [v4 isEqualToString:*MEMORY[0x1E6986408]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E698BF78]];

  if (v10)
  {
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E698BFB0]];

    [v12 floatValue];
    if (v13 <= 0.5)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }
  }

  else
  {
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E698BF80]];

    v15 = AVTBlendShapeLocationToARIndex(v4);
    v14 = *([v12 bytes] + 4 * v15);
  }

  return v14;
}

@end