@interface SRFaceMetricsPacketV4
+ (id)packetWithHAFacialMetricsPacket:(id *)a3;
- (NSArray)gaze;
- (NSArray)geometryLeftEye;
- (NSArray)geometryRightEye;
- (NSArray)partialFaceExpressions;
- (NSArray)rotation;
- (NSArray)translation;
- (NSArray)wholeFaceExpressions;
- (NSDictionary)trackingData;
- (void)dealloc;
@end

@implementation SRFaceMetricsPacketV4

+ (id)packetWithHAFacialMetricsPacket:(id *)a3
{
  if (a3->var0 != 4)
  {
    v12 = _MergedGlobals_4;
    if (!os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v20 = 0;
    v13 = "Invalid input data for V4";
    v14 = &v20;
LABEL_26:
    _os_log_fault_impl(&dword_1C914D000, v12, OS_LOG_TYPE_FAULT, v13, v14, 2u);
    return 0;
  }

  v4 = [MEMORY[0x1E696AFB0] sr_UUIDWithUint32_t:a3->var1];
  if (!v4)
  {
    v12 = _MergedGlobals_4;
    if (!os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v19 = 0;
    v13 = "Failed to generate V4 face metrics, because of empty face indentifier";
    v14 = &v19;
    goto LABEL_26;
  }

  v5 = v4;
  if (qword_1EE02AB10 != -1)
  {
    dispatch_once(&qword_1EE02AB10, &__block_literal_global_4);
  }

  if (!qword_1EE02AB18)
  {
    v15 = _MergedGlobals_4;
    if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C914D000, v15, OS_LOG_TYPE_ERROR, "Failed to generate V4 face metrics, because of empty neutral face geometry", buf, 2u);
    }

    return 0;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", *(&a3->var2 + 1)];
  if (!v6)
  {
    v12 = _MergedGlobals_4;
    if (!os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v17 = 0;
    v13 = "Failed to generate V4 face metrics, because of empty session identifiers";
    v14 = &v17;
    goto LABEL_26;
  }

  if (!*(&a3->var3 + 4))
  {
    v12 = _MergedGlobals_4;
    if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      v13 = "Failed to generate V4 face metrics, because of empty context";
      v14 = v16;
      goto LABEL_26;
    }

    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(SRFaceMetricsPacketV4);
  v9 = v8;
  if (v8)
  {
    v8->_packet = a3;
    v8->_faceIdentifier = v5;
    v9->_sessionIdentifier = v7;
    v10 = *(&a3->var3 + 4);
    if (v10)
    {
      v9->_context |= 1uLL;
    }

    if ((v10 & 2) != 0)
    {
      v9->_context |= 2uLL;
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRFaceMetricsPacketV4;
  [(SRFaceMetricsPacketV4 *)&v3 dealloc];
}

- (NSArray)wholeFaceExpressions
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[1] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"1F26EABE-8350-48C5-97F0-06EFD6FEC6C4" value:self->_packet->var18.var0.var0, [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"E24480FE-8ECF-412C-8A02-3E924971A840" value:self->_packet->var17.var50]];
  v5[2] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"726DA5E5-E63A-43CC-B7F3-FDD42A5583FA" value:self->_packet->var18.var0.var1];
  v5[3] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"6AEC22CC-2311-45F1-AF8E-F372A3C979B2" value:self->_packet->var18.var0.var2];
  v5[4] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"FECC0DAC-9B31-4504-896E-6C2898F16B69" value:self->_packet->var18.var0.var3];
  v5[5] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"A1E9B99B-C90B-4DB4-8ED3-4E0382ABC8B5" value:self->_packet->var18.var0.var4];
  v5[6] = [SRFaceMetricsExpression wholeFaceMetricsExpressionWithIdentifier:@"C57C8CCA-0194-4327-8CBA-987FAF744096" value:self->_packet->var18.var0.var5];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)partialFaceExpressions
{
  v5[8] = *MEMORY[0x1E69E9840];
  v5[0] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"85E97F41-0CF7-481E-B9ED-8E5A90B4A547" value:self->_packet->var18.var0.var6];
  v5[1] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"5A3CBD39-B24F-463A-990C-18C5372D6F1B" value:self->_packet->var18.var1.var0];
  v5[2] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"D0859030-4703-45F6-A902-7634984A2074" value:self->_packet->var18.var1.var1];
  v5[3] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"A29952D5-F6EA-4562-9A12-43284B1DB634" value:self->_packet->var18.var1.var2];
  v5[4] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"A8B47A8D-A86F-4159-8472-33C67D6250B5" value:self->_packet->var18.var1.var3];
  v5[5] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"60A8B7A9-8C8F-401A-A8C4-C996B1397CC9" value:self->_packet->var18.var1.var4];
  v5[6] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"E5A9652C-9CF9-4F38-BC7A-1D622DC69B41" value:self->_packet->var18.var1.var5];
  v5[7] = [SRFaceMetricsExpression partialFaceMetricsExpressionWithIdentifier:@"A1D4672B-2E01-435A-BD0D-ABAEB1F4CB6E" value:self->_packet->var18.var1.var6];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:8];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)rotation
{
  v17[3] = *MEMORY[0x1E69E9840];
  LODWORD(v2) = HIDWORD(self->_packet->var8);
  v16[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var9.var0[0][0];
  v16[1] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  *&v5 = self->_packet->var9.var0[0][1];
  v16[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  *&v6 = self->_packet->var9.var0[0][2];
  v15[0] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  *&v7 = self->_packet->var9.var0[1][0];
  v15[1] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  *&v8 = self->_packet->var9.var0[1][1];
  v15[2] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v17[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  *&v9 = self->_packet->var9.var0[1][2];
  v14[0] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  *&v10 = self->_packet->var9.var0[2][0];
  v14[1] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  *&v11 = self->_packet->var9.var0[2][1];
  v14[2] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v17[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)translation
{
  v8[3] = *MEMORY[0x1E69E9840];
  *&v2 = self->_packet->var9.var0[2][2];
  v8[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var9.var1[0];
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v4, v8[0]}];
  *&v5 = self->_packet->var9.var1[1];
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)gaze
{
  v8[3] = *MEMORY[0x1E69E9840];
  *&v2 = self->_packet->var15;
  v8[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var16[0];
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v4, v8[0]}];
  *&v5 = self->_packet->var16[1];
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)geometryLeftEye
{
  v8[3] = *MEMORY[0x1E69E9840];
  *&v2 = self->_packet->var9.var1[2];
  v8[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var10[0];
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v4, v8[0]}];
  *&v5 = self->_packet->var10[1];
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)geometryRightEye
{
  v8[3] = *MEMORY[0x1E69E9840];
  *&v2 = self->_packet->var10[2];
  v8[0] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v4 = self->_packet->var11[0];
  v8[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v4, v8[0]}];
  *&v5 = self->_packet->var11[1];
  v8[2] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)trackingData
{
  v30[2] = *MEMORY[0x1E69E9840];
  v29[0] = @"rotation";
  v29[1] = @"translation";
  v30[0] = [(SRFaceMetricsPacketV4 *)self rotation];
  v30[1] = [(SRFaceMetricsPacketV4 *)self translation];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v27[0] = @"blendshapes";
  v28[0] = [(SRFaceMetricsPacketV4 *)self blendshapes];
  v27[1] = @"gaze";
  v28[1] = [(SRFaceMetricsPacketV4 *)self gaze];
  v27[2] = @"left_eye_pitch";
  v4 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV4 *)self leftEyePitch];
  v28[2] = [v4 numberWithFloat:?];
  v27[3] = @"right_eye_pitch";
  v5 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV4 *)self rightEyePitch];
  v28[3] = [v5 numberWithFloat:?];
  v27[4] = @"left_eye_yaw";
  v6 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV4 *)self leftEyeYaw];
  v28[4] = [v6 numberWithFloat:?];
  v27[5] = @"right_eye_yaw";
  v7 = MEMORY[0x1E696AD98];
  [(SRFaceMetricsPacketV4 *)self rightEyeYaw];
  v28[5] = [v7 numberWithFloat:?];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v25[0] = @"left_eye";
  v26[0] = [(SRFaceMetricsPacketV4 *)self geometryLeftEye];
  v25[1] = @"right_eye";
  v26[1] = [(SRFaceMetricsPacketV4 *)self geometryRightEye];
  v25[2] = @"vertices";
  if (qword_1EE02AB10 != -1)
  {
    dispatch_once(&qword_1EE02AB10, &__block_literal_global_4);
  }

  v26[2] = qword_1EE02AB18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v23[0] = @"rotation";
  v23[1] = @"translation";
  v24[0] = &unk_1F48CA850;
  v24[1] = &unk_1F48CA868;
  v21[0] = @"extrinsics";
  v21[1] = @"intrinsics";
  v22[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v22[1] = &unk_1F48CA8C8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19[0] = @"pose";
  v19[1] = @"animation";
  v20[0] = v3;
  v20[1] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17[0] = @"geometry";
  v17[1] = @"pose";
  v18[0] = v9;
  v18[1] = v3;
  v17[2] = @"animation";
  v18[2] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v15[0] = @"face_id";
  v16[0] = [(NSUUID *)[(SRFaceMetricsPacketV4 *)self faceIdentifier] UUIDString];
  v16[1] = &unk_1F48CA9C8;
  v15[1] = @"confidence";
  v15[2] = @"rgb_camera";
  v16[2] = v10;
  v16[3] = v11;
  v15[3] = @"raw_data";
  v15[4] = @"smooth_data";
  v16[4] = v12;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end