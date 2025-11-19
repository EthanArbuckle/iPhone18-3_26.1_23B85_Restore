__n128 ARDepthCameraCalibrationCopy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

__n128 ARDepthCameraCalibrationGetIntrinsics(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  return result;
}

__n128 ARDepthCameraCalibrationGetExtrinsics(uint64_t a1)
{
  result = *(a1 + 48);
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  return result;
}

__n128 ARDepthCameraCalibrationGetDeviceTransform(uint64_t a1)
{
  result = *(a1 + 128);
  v2 = *(a1 + 144);
  v3 = *(a1 + 160);
  v4 = *(a1 + 176);
  return result;
}

__n128 *ARDepthCameraCalibrationSetIntrinsics(__n128 *result, __n128 a2, __n128 a3, __n128 a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

__n128 *ARDepthCameraCalibrationSetExtrinsics(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

__n128 *ARDepthCameraCalibrationSetDeviceTransform(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

id ARKitFoundationBuildVersionString()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKeyedSubscript:@"CFBundleVersion"];

  return v2;
}