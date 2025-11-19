uint64_t H16ISP::H16ISPDevice::SetTorchBeamWidth(H16ISP::H16ISPDevice *this, __int16 a2, float a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1584;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetScalerCrop(H16ISP::H16ISPDevice *a1, int a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = HIDWORD(a3);
  v9 = HIDWORD(a4);
  bzero(v11, 0x1CuLL);
  v12 = 2058;
  v13 = a2;
  v14 = v5;
  v15 = v8;
  v16 = v4;
  v17 = v9;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v11, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 565;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetPanoAELimits(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 567;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEBracketingMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3, int a4)
{
  bzero(v9, 0x18uLL);
  v10 = 564;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableStaticLUTForLTM(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8198;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

__n128 H16ISP::H16ISPDevice::GetDistortionInfo(H16ISP::H16ISPDevice *a1, int a2, int a3, uint64_t a4)
{
  bzero(v14, 0xDCuLL);
  v15 = 28673;
  v16 = a2;
  v17 = a3;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v14, 0xDCu, 0, 0xFFFFFFFF))
  {
    v9 = *v29;
    *(a4 + 160) = v28;
    *(a4 + 176) = v9;
    *(a4 + 188) = *&v29[12];
    v10 = v25;
    *(a4 + 96) = v24;
    *(a4 + 112) = v10;
    v11 = v27;
    *(a4 + 128) = v26;
    *(a4 + 144) = v11;
    v12 = v21;
    *(a4 + 32) = v20;
    *(a4 + 48) = v12;
    v13 = v23;
    *(a4 + 64) = v22;
    *(a4 + 80) = v13;
    result = v19;
    *a4 = v18;
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::StartHighlightRecovery(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 4096;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopHighlightRecovery(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 4097;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StartLocalToneMapping(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 0x2000;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopLocalToneMapping(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 8193;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableTorch(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v13, 0x10uLL);
  v14 = 1539;
  v15 = a2;
  v16 = a3;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
  if (!v6 && *(this + 4624) == 1)
  {
    v7 = *(*(this + 9) + 72);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP12H16ISPDevice11EnableTorchEjt_block_invoke;
      block[3] = &__block_descriptor_tmp_120;
      block[4] = this;
      v12 = a3;
      dispatch_async(v7, block);
    }
  }

  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v10, &v9);
  return v6;
}

uint64_t ___ZN6H16ISP12H16ISPDevice11EnableTorchEjt_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4628), *(a1 + 40));
  v2 = *(v1 + 4616);

  return notify_post(v2);
}

uint64_t ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4644), *(a1 + 52));
  v2 = *(v1 + 4632);

  return notify_post(v2);
}

uint64_t ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4660), *(a1 + 54));
  v2 = *(v1 + 4648);

  return notify_post(v2);
}

uint64_t H16ISP::H16ISPDevice::DisableTorch(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v10, 0xCuLL);
  v11 = 1538;
  v12 = a2;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0xCu, 0, 0xFFFFFFFF);
  if (!v4 && *(this + 4624) == 1)
  {
    v5 = *(*(this + 9) + 72);
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP12H16ISPDevice12DisableTorchEj_block_invoke;
      block[3] = &__block_descriptor_tmp_123;
      block[4] = this;
      dispatch_async(v5, block);
    }
  }

  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v8, &v7);
  return v4;
}

uint64_t ___ZN6H16ISP12H16ISPDevice12DisableTorchEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4628), 0);
  v2 = *(v1 + 4616);

  return notify_post(v2);
}

uint64_t H16ISP::H16ISPDevice::SetManualFocusPosition(H16ISP::H16ISPDevice *this, int a2, char a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1794;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableKnobManualMode(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2579;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSharpness(H16ISP::H16ISPDevice *a1, int a2, int a3, _BYTE *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2579;
  v11 = a2;
  v12 = 1;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    bzero(v9, 0x14uLL);
    v10 = 2570;
    v11 = a2;
    v12 = a3;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *a4 = v13;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLCEStrength(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, _BYTE *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2625;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetRNFStrength(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, _BYTE *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2622;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetChromaSupression(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5)
{
  bzero(v11, 0x10uLL);
  v12 = 2579;
  v13 = a2;
  v14 = 2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    bzero(v11, 0x10uLL);
    v12 = 2573;
    v13 = a2;
    LOBYTE(v14) = a3;
    BYTE1(v14) = a4;
    BYTE2(v14) = a5;
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x10u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableBPC(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  if (a3)
  {
    bzero(v7, 0xCuLL);
    v5 = 2050;
  }

  else
  {
    bzero(v7, 0xCuLL);
    v5 = 2051;
  }

  v8 = v5;
  v9 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEIntegrationTime(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 527;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEIntegrationTimeAndGains(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4, __int16 a5, __int16 a6, int a7, int a8, unsigned int a9, unsigned __int16 a10, unsigned __int16 a11, unsigned __int16 a12)
{
  bzero(v21, 0x2CuLL);
  v22 = 572;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v21, 0x2Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHDRRatioClipScoreIIRStrength(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15610;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHDRRatioHightLightClipDetectSensitivity(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15609;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOISActuator(H16ISP::H16ISPDevice *this, int a2, __int16 *a3, __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1871;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISActuator(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1866;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFocusPixels(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31728;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableContinuousFocus(H16ISP::H16ISPDevice *this, int a2, char a3, char a4)
{
  bzero(v9, 0x10uLL);
  v10 = -31729;
  v11 = a2;
  v13 = a4;
  v12 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFocusDACLimiting(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1800;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBManualGain(H16ISP::H16ISPDevice *this, int a2, int a3, int a4, int a5, int a6)
{
  bzero(v13, 0x1CuLL);
  v14 = 786;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSyncZoomFactorLimits(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2067;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentZoomFactor(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2065;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

double H16ISP::H16ISPDevice::GetAEParams(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, double *a8)
{
  bzero(v20, 0x24uLL);
  v21 = 530;
  v22 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v20, 0x24u, 0, 0xFFFFFFFF))
  {
    v17 = v24;
    *a3 = v23;
    *a4 = v17;
    v18 = v26;
    *a5 = v25;
    *a6 = v18;
    v19 = v28;
    *a7 = v27;
    result = vcvtd_n_f64_u32(v19, 0x10uLL);
    *a8 = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetZoomFactor(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2064;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTargetToHostFrameDeliveryCadenceInMicroSeconds(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 13;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::TimeMachineCapture(H16ISP::H16ISPDevice *a1, int a2, __int16 a3, __int16 a4, uint64_t a5, __int16 a6, __int128 *a7)
{
  bzero(v16, 0x30uLL);
  v17 = 298;
  v18 = a2;
  v20 = a3;
  v19 = a4;
  v22 = a5;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v21 = v14;
  v23 = a6;
  if (a7)
  {
    v24 = *a7;
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v16, 0x30u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DPCStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15091;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DPCStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15090;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEAGC(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 514;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetManualCCT(H16ISP::H16ISPDevice *this, int a2, unsigned int a3, int a4, int a5)
{
  bzero(v10, 0x14uLL);
  v11 = 773;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetCombinedAFWindow(H16ISP::H16ISPDevice *a1, int a2, __int16 a3, __int16 a4, unsigned int a5, void *__src, const void *a7, __int16 a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 0u;
  v12 = 0x841B00000000;
  memset(v16, 0, sizeof(v16));
  v13 = a2;
  v14 = a3;
  v15 = a4;
  LOWORD(v17) = a5;
  v10 = a5;
  v19 = a8;
  memcpy(v16, __src, 8 * a5);
  memcpy(&v17 + 2, a7, v10);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, &v12, 0xA4u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindow(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  bzero(v15, 0x18uLL);
  v16 = -31743;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindowWeights(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(v7, 0x1CuLL);
  v8 = -31741;
  v9 = a2;
  v10 = *a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEWindow(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x18uLL);
  v14 = -32256;
  v15 = a2;
  v16 = 0;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamAEWindowParams(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  bzero(v7, 0x70uLL);
  v8 = -32237;
  v9 = a2;
  memcpy(&v10, a3, 16 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x70u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamROIForCameraControls(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  bzero(v7, 0x58uLL);
  v8 = 2073;
  v9 = a2;
  memcpy(&v10, a3, 12 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x58u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamLumaHistogramROI(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  bzero(v7, 0x70uLL);
  v8 = 2074;
  v9 = a2;
  memcpy(&v10, a3, 16 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x70u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBWindow(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x18uLL);
  v14 = -31997;
  v15 = a2;
  v16 = 1;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAFPeakPrediction(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31739;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetISPDGain(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 544;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetSensorDGain(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 543;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMaxIntegrationTime(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 525;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetMinIntegrationTime(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 554;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMinimumGainCap(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 558;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEMaxGainCapWithExposureUpdate(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 560;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEGainCapOffExposureUpdate(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 562;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWB1stGainManual(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  bzero(v15, 0x18uLL);
  v16 = 785;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMinimumGainCap(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 557;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAEMaxGainCapWithExposureUpdate(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 559;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAEGainCapOffExposureUpdate(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 561;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAEOutlierClipCount(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 518;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEConvergenceSpeed(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 536;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSDistance(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1922;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSDistance(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4)
{
  bzero(v10, 0x14uLL);
  v11 = 1923;
  v12 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v9 = v14;
    *a3 = v13;
    *a4 = v9;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSPosition(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1920;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLumaHistogramROI(H16ISP::H16ISPDevice *a1, int a2, char a3, uint64_t a4)
{
  bzero(v9, 0x18uLL);
  v10 = 2072;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSPosition(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4, __int16 *a5, __int16 *a6, int *a7, int *a8, int *a9, int *a10, int *a11, int *a12, int *a13, int *a14, int *a15, int *a16)
{
  bzero(v31, 0x40uLL);
  v32 = 1921;
  v33 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v31, 0x40u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v25 = v35;
    *a3 = v34;
    *a4 = v25;
    *a5 = v36;
    *a6 = v37;
    v26 = v39;
    *a7 = v38;
    *a8 = v26;
    v27 = v41;
    *a9 = v40;
    *a10 = v27;
    v28 = v43;
    *a11 = v42;
    *a12 = v28;
    v29 = v45;
    *a13 = v44;
    *a14 = v29;
    v30 = v47;
    *a15 = v46;
    *a16 = v30;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAPSMode(H16ISP::H16ISPDevice *a1, int a2, _DWORD *a3)
{
  bzero(v7, 0x10uLL);
  v9 = a2;
  v8 = 1925;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSClampingMode(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1937;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSClampingMode(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v9 = a2;
  v8 = 1938;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSBeta(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v11 = a2;
  v10 = 1926;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSFocusOffset(H16ISP::H16ISPDevice *this, int a2, int a3, char a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1927;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSSearchRange(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1932;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetDynamicVoltageLevel(H16ISP::H16ISPDevice *this, int a2, char a3, float a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1666;
  v11 = a2;
  v13 = a3;
  v12 = vcvts_n_s32_f32(a4, 8uLL);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLPDPEqualization(H16ISP::H16ISPDevice *this, int a2, __int16 a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, unsigned int a10, unsigned __int16 a11)
{
  bzero(v20, 0x34uLL);
  v21 = 332;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v31 = a9;
  v32 = a10;
  v28 = a8;
  v29 = 0;
  v30 = a11;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v20, 0x34u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSRawOffset(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, int a8, int a9)
{
  bzero(v18, 0x20uLL);
  v20 = a2;
  v19 = 1930;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v18, 0x20u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSEFL(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1928;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetVAActuator(H16ISP::H16ISPDevice *this, int a2, __int16 *a3)
{
  if (!a3)
  {
    return 3758097090;
  }

  bzero(v7, 0x10uLL);
  v8 = 1988;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetVAActuator(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1989;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

float H16ISP::H16ISPDevice::GetVADiameter(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned int *a4, __int16 *a5, __int16 *a6, float *a7, float *a8, float *a9)
{
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    bzero(v20, 0x24uLL);
    v21 = 1986;
    v22 = a2;
    if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v20, 0x24u, 0, 0xFFFFFFFF))
    {
      v18 = v24;
      *a3 = v23;
      *a4 = v18;
      *a5 = v25;
      *a6 = v26;
      v19 = v28;
      *a7 = v27;
      *a8 = v19;
      result = v29;
      *a9 = v29;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetVADiameter(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1987;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetVAMode(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  if (!a3)
  {
    return 3758097090;
  }

  bzero(v7, 0x10uLL);
  v8 = 1984;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetVAMode(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1985;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSActuator(H16ISP::H16ISPDevice *this, int a2, __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1960;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSActuator(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1929;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAPSDelta(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1933;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSDeltaEnabled(H16ISP::H16ISPDevice *this, __int16 a2, BOOL *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1934;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableAPSModeSwitch(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1951;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAPSOffsetCalculation(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1952;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSOffsetCorrectionScheme(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1959;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableDACClamp(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1954;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSManualOffset(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1955;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAFRingingControl(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1806;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAFRingingControl(H16ISP::H16ISPDevice *this, __int16 a2, BOOL *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1807;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10 != 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableVibeMitigation(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1969;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAEStageDetect(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 598;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAEStageDetect(H16ISP::H16ISPDevice *this, __int16 a2, BOOL *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 599;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10 != 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISEndStopParams(H16ISP::H16ISPDevice *this, int a2, float64_t a3, float64_t a4, float64_t a5, float64_t a6)
{
  bzero(v15, 0x1CuLL);
  v17 = a2;
  v16 = 1873;
  v8.f64[0] = a4;
  v8.f64[1] = a3;
  v9.f64[0] = a6;
  v9.f64[1] = a5;
  v18 = vuzp1q_s32(vcvtq_n_s64_f64(v8, 8uLL), vcvtq_n_s64_f64(v9, 8uLL));
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetOISIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x50uLL);
  v10 = 1942;
  v11 = a2;
  v6 = *a3;
  v13 = a3[1];
  v7 = a3[3];
  v14 = a3[2];
  v15 = v7;
  v16 = *(a3 + 16);
  v12 = v6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x50u, 0, 0xFFFFFFFF);
}

__n128 H16ISP::H16ISPDevice::RunOISIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x50uLL);
  v9 = 1941;
  v10 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x50u, 0, 3u))
  {
    result = v12;
    v7 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v7;
    *(a3 + 64) = v15;
    *a3 = v11;
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISEndStopCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x48uLL);
  v9 = 1948;
  v10 = a2;
  v6 = a3[1];
  v11 = *a3;
  v12 = v6;
  *v13 = a3[2];
  *&v13[12] = *(a3 + 44);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x48u, 0, 0xFFFFFFFF);
}

double H16ISP::H16ISPDevice::RunOISEndStopCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, _OWORD *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x48uLL);
  v9 = 1947;
  v10 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x48u, 0, 3u))
  {
    v7 = v12;
    *a3 = v11;
    a3[1] = v7;
    a3[2] = *v13;
    result = *&v13[12];
    *(a3 + 44) = *&v13[12];
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAFIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x4CuLL);
  v10 = 1944;
  v11 = a2;
  v6 = a3[1];
  v12 = *a3;
  v13 = v6;
  v7 = a3[3];
  v14 = a3[2];
  v15 = v7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x4Cu, 0, 0xFFFFFFFF);
}

double H16ISP::H16ISPDevice::RunAFIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, _OWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x4CuLL);
  v10 = 1943;
  v11 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x4Cu, 0, 3u))
  {
    v7 = v13;
    *a3 = v12;
    a3[1] = v7;
    result = *&v14;
    v8 = v15;
    a3[2] = v14;
    a3[3] = v8;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSOISInteractionCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x60uLL);
  v6 = a3[3];
  v14 = a3[2];
  v15 = v6;
  v16 = a3[4];
  v7 = a3[1];
  v12 = *a3;
  v10 = 1946;
  v11 = a2;
  v17 = *(a3 + 20);
  v13 = v7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x60u, 0, 0xFFFFFFFF);
}

double H16ISP::H16ISPDevice::RunAPSOISInteractionCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x60uLL);
  v10 = 1945;
  v11 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x60u, 0, 3u))
  {
    v7 = v15;
    *(a3 + 32) = v14;
    *(a3 + 48) = v7;
    *(a3 + 64) = v16;
    *(a3 + 80) = v17;
    result = *&v12;
    v8 = v13;
    *a3 = v12;
    *(a3 + 16) = v8;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetCNRLevel(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2605;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCNRLevel(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2606;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetNoiseReductionLevel(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2571;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetNoiseReductionLevel(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2572;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetDynamicVoltageEnable(H16ISP::H16ISPDevice *this, unsigned __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1664;
  v9 = v9 & 0x7FFF0000 | a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProResSharpeningTuning(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2841;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetIrRgbStereo(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 31;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetPrimaryFrameSkippingRatio(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 367;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMasterSlaveAPSFocus(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31722;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMasterSlaveContrastFocus(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31721;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetFocusSlavePos(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31720;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetFocusSlaveDistance(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31719;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAFEarlyOutParams(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x10uLL);
  v14 = 1027;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetScalerSharpening(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2567;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCurrentCCT(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 772;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetManualCCTRange(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned int *a4)
{
  bzero(v10, 0x14uLL);
  v11 = 787;
  v12 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v9 = v14;
    *a3 = v13;
    *a4 = v9;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetColorCalibrationData(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2052;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetExposureBias(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 515;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAEStable(H16ISP::H16ISPDevice *this, __int16 a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 595;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAWBStable(H16ISP::H16ISPDevice *this, __int16 a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31965;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetSensorCustomSettings(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned __int8 *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1167);
  result = 3758097090;
  if (v6 > a2 && a3 <= 0x40)
  {
    bzero(v13, 0xD0uLL);
    v14 = 1285;
    v15 = a2;
    v16 = a3;
    if (a3)
    {
      v12 = 0;
      do
      {
        v17[v12] = a4[v12];
        *(&v17[64] + v12) = a5[v12];
        ++v12;
      }

      while (a3 != v12);
    }

    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0xD0u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAFLimits(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1792;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAFLimits(H16ISP::H16ISPDevice *this, int a2, __int16 *a3, __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1793;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetPreflashParams(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x10uLL);
  v14 = 549;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBFlashGain(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5)
{
  bzero(v11, 0x14uLL);
  v12 = 782;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFullResLSC(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2577;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DisableFullResLSC(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2578;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAETarget(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 548;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAETarget(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 547;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ProcessRawStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 265;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ProcessRawStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 266;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBScheme(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31995;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAWBScheme(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31994;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentFocusPosition(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1795;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentFocusDacPosition(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1801;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

void H16ISP::H16ISPDevice::GetPoolInfo(H16ISP::H16ISPDevice *a1, int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  H16ISP::H16ISPDevice::GetPoolInfoExtended(a1, a2, a3, &v8);
  if (!v7)
  {
    if (a4)
    {
      *a4 = WORD1(v8);
    }

    if (a5)
    {
      *a5 = DWORD2(v8);
    }
  }
}

uint64_t H16ISP::H16ISPDevice::GetMaxResolutionSensorConfigIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned __int16 *a3)
{
  v3 = 3758097084;
  if (*(this + 4))
  {
    if (*(this + 1167) >= a2)
    {
      v4 = (*(this + 5) + 432 * a2);
      v5 = *v4;
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (*(v4 + 1) + 6);
        do
        {
          if (*(v10 - 1) >= v9 && *v10 >= v8)
          {
            *a3 = v6;
            v9 = *(v10 - 1);
            v8 = *v10;
            v7 = 1;
          }

          ++v6;
          v10 += 106;
        }

        while (v5 != v6);
        if (v7)
        {
          return 0;
        }

        else
        {
          return 3758097084;
        }
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v3 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetMaxResolutionSensorConfigIndex();
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::SetStatsFEThumbnailMaskConfig(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6, unsigned __int16 *a7)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v18 = v7;
  v19 = v8;
  v10 = 0xC01E00000000;
  v17 = 0;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v10, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableStatsFEThumbnailMask(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0xC01D00000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableDesGenFlow2Features(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0x380000000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAWBMultiStatisticsAveraging(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0x340D00000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMLVNRConfiguration(H16ISP::H16ISPDevice *a1, unsigned __int16 a2, int a3, int a4, int a5, int a6, int a7, unsigned __int8 a8)
{
  if (a2 > *(a1 + 1167))
  {
    return 3758097090;
  }

  v19 = v8;
  v20 = v9;
  v11 = 0xC11F00000000;
  v17 = a7;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v18 = a8;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, &v11, 0x24u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetCommonBufferPool(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4, unsigned __int8 *a5, size_t a6)
{
  *&v18[53] = *MEMORY[0x277D85DE8];
  bzero(v13, 0x44uLL);
  v14 = 363;
  v15 = a2;
  v17 = a3;
  v16 = a4;
  memcpy(v18, a5, a6);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x44u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRegistrationPriority(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16098;
  v9 = a2;
  v10 = a3 != 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGACtrl(H16ISP::H16ISPDevice *this, char a2, char a3)
{
  bzero(v7, 0xCuLL);
  v8 = -24572;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGAStatusQuery(H16ISP::H16ISPDevice *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  bzero(v5, 0x1CuLL);
  *&v5[4] = -24573;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v5, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a2 = *v5;
    *(a2 + 12) = *&v5[12];
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGASyncOffsetCtrl(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -24569;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGASyncCtrl(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = -24570;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetDCSIMUDataRate(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -24567;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetDCSNonVisionProperty(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x1CuLL);
  v10 = -24566;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHistogramWindow(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2587;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFFocusPosOverride(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31738;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEMaxFrameRateGainLimit(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32247;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAEMaxFrameRateGainLimit(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32246;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::BinningCompensationStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15872;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::BinningCompensationStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15871;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DRCStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 3072;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SNFStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15360;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SNFStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15359;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetSNFParams(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15358;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSNFParams(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15357;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::OverrideAbsoluteColorCal(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, char a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2057;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLuxTableMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2583;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AEUpdateSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 550;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AEUpdateResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 551;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ALSSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2603;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ALSResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2604;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ALSFastMode(H16ISP::H16ISPDevice *this, unsigned __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2627;
  v9 = a2;
  v10 = a3 != 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::BLCSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 1289;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::BLCResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 1290;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::TestPatternConfig(H16ISP::H16ISPDevice *this, unsigned int a2, __int16 a3, CFTypeRef cf)
{
  LOWORD(v5) = a3;
  valuePtr = 0;
  v8 = 3758097090;
  v9 = CFGetTypeID(cf);
  if (v9 != CFStringGetTypeID())
  {
    v11 = CFGetTypeID(cf);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberSInt16Type, &valuePtr);
      v12 = valuePtr;
LABEL_74:
      bzero(v29, 0x10uLL);
      v30 = 1283;
      v31 = a2;
      v32 = v5;
      v33 = v12;
      return H16ISP::H16ISPDevice::ISP_SendCommand(this, v29, 0x10u, 0, 0xFFFFFFFF);
    }

    return v8;
  }

  v5 = 0;
  for (i = &off_27D6F2458; !CFEqual(cf, *i); i += 2)
  {
    if (++v5 == 25)
    {
      return v8;
    }
  }

  v12 = v5;
  if (!v5)
  {
    goto LABEL_74;
  }

  if (v5 == 25)
  {
    return v8;
  }

  v13 = *(*(this + 5) + 432 * a2 + 64);
  if (v13 <= 1905)
  {
    if (v13 > 1393)
    {
      if ((v13 - 1539) > 0x30 || ((1 << (v13 - 3)) & 0x1000000030001) == 0)
      {
        v22 = (v13 - 1795) > 0x11 || ((1 << (v13 - 3)) & 0x30001) == 0;
        if (v22 && (v13 - 1394) >= 2)
        {
          goto LABEL_72;
        }
      }
    }

    else if (((v13 - 835) > 0x2F || ((1 << (v13 - 67)) & 0x8000000A0001) == 0) && ((v13 - 1027) > 0x11 || ((1 << (v13 - 3)) & 0x20005) == 0))
    {
      v16 = v13 - 1283;
      v17 = v16 > 0x11;
      v18 = (1 << v16) & 0x20005;
      if (v17 || v18 == 0)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_69;
  }

  if (v13 <= 2387)
  {
    if (v13 <= 2130)
    {
      if (v13 != 1906 && v13 != 2051 && v13 != 2068)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v20 = (v13 - 2307) > 0x20 || ((1 << (v13 - 3)) & 0x100030007) == 0;
      if (v20 && v13 != 2131)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_69;
  }

  if (v13 <= 3413)
  {
    v23 = v13 - 2388;
    v17 = v23 > 0x2E;
    v24 = (1 << v23) & 0x4000C0000011;
    if (v17 || v24 == 0)
    {
      goto LABEL_72;
    }

LABEL_69:
    v26 = &H16ISP::sensorIMX343TestPatternIndex;
    goto LABEL_70;
  }

  v26 = &H16ISP::sensorVD56G0TestPatternIndex;
  if (v13 > 20587)
  {
    if (v13 == 20588)
    {
      goto LABEL_70;
    }

    if (v13 != 21301)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  if (v13 != 3414 && v13 != 20584)
  {
    goto LABEL_72;
  }

LABEL_70:
  valuePtr = v26[v5];
  v12 = valuePtr;
  if (valuePtr != 255)
  {
LABEL_73:
    LOWORD(v5) = 1;
    goto LABEL_74;
  }

  if (CFEqual(cf, @"TestPatternPN9"))
  {
LABEL_72:
    v12 = 5;
    valuePtr = 5;
    goto LABEL_73;
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::GetSupportedTestPatterns(H16ISP::H16ISPDevice *this, unsigned int a2, CFMutableArrayRef theArray)
{
  result = 3758097090;
  if (!theArray)
  {
    return result;
  }

  v6 = *(*(this + 5) + 432 * a2 + 64);
  if (v6 <= 1905)
  {
    if (v6 > 1393)
    {
      if ((v6 - 1539) > 0x30 || ((1 << (v6 - 3)) & 0x1000000030001) == 0)
      {
        v15 = (v6 - 1795) > 0x11 || ((1 << (v6 - 3)) & 0x30001) == 0;
        if (v15 && (v6 - 1394) >= 2)
        {
          return result;
        }
      }
    }

    else if (((v6 - 835) > 0x2F || ((1 << (v6 - 67)) & 0x8000000A0001) == 0) && ((v6 - 1027) > 0x11 || ((1 << (v6 - 3)) & 0x20005) == 0))
    {
      v9 = v6 - 1283;
      v10 = v9 > 0x11;
      v11 = (1 << v9) & 0x20005;
      if (v10 || v11 == 0)
      {
        return result;
      }
    }

    goto LABEL_60;
  }

  if (v6 <= 2387)
  {
    if (v6 <= 2130)
    {
      if (v6 != 1906 && v6 != 2051 && v6 != 2068)
      {
        return result;
      }
    }

    else
    {
      v13 = (v6 - 2307) > 0x20 || ((1 << (v6 - 3)) & 0x100030007) == 0;
      if (v13 && v6 != 2131)
      {
        return result;
      }
    }

    goto LABEL_60;
  }

  if (v6 <= 3413)
  {
    v16 = v6 - 2388;
    v10 = v16 > 0x2E;
    v17 = (1 << v16) & 0x4000C0000011;
    if (v10 || v17 == 0)
    {
      return result;
    }

    goto LABEL_60;
  }

  v19 = &H16ISP::sensorVD56G0TestPatternIndex;
  if (v6 <= 20587)
  {
    if (v6 != 3414 && v6 != 20584)
    {
      return result;
    }

    goto LABEL_61;
  }

  if (v6 != 20588)
  {
    if (v6 != 21301)
    {
      return result;
    }

LABEL_60:
    v19 = &H16ISP::sensorIMX343TestPatternIndex;
  }

LABEL_61:
  for (i = 0; i != 50; i += 2)
  {
    if (*&v19[i] != 255)
    {
      CFArrayAppendValue(theArray, *(&H16ISP::sensorTestPatterns + i + 1));
    }
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::DisableALS(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2589;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetBinningGainLuxThresholds(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = -32244;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFSoftLanding(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, int a5, int a6)
{
  bzero(v13, 0x18uLL);
  v14 = 1036;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindowFDConfig(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = -31740;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindowFloatConfig(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31726;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAEGainConvergenceNormalization(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32241;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableLTMHLGGammaCurve(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8200;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AWBUpdateSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 783;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AWBUpdateResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 784;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LuxAdaptiveSettingSuspend(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2596;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LuxAdaptiveSettingResume(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2597;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableContextSwitchingWithType(H16ISP::H16ISPDevice *a1, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = -32510;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSensorNoiseModelForSensorMode(H16ISP::H16ISPDevice *a1, int a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  bzero(v17, 0x20uLL);
  v18 = -32507;
  v19 = a2;
  v20 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v17, 0x20u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v15 = v22;
    *a4 = v21;
    *a5 = v15;
    v16 = v24;
    *a6 = v23;
    *a7 = v16;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetIdealColorCal(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2055;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetIdealColorCal(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2054;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMSAERatio(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 606;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetMultiABSColorCal(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2071;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetFrameCount(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1311;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetISOParamsForSensorMode(H16ISP::H16ISPDevice *a1, int a2, int a3, void *a4)
{
  bzero(v9, 0x18uLL);
  v10 = 285;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetMIPIFrequency(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 282;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLPDPFrequency(H16ISP::H16ISPDevice *this, int a2, int a3, unint64_t *a4)
{
  bzero(v9, 0x18uLL);
  v10 = 352;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentMIPIFrequencyIndex(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 281;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetSensorTemperature(H16ISP::H16ISPDevice *this, int a2, int *a3, __int16 *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1286;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    if (a3)
    {
      *a3 = v12;
    }

    if (a4)
    {
      *a4 = v13;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableSensorSideband(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1294;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DPCEnable(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15104;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLedParms(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1545;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableNTCStatus(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1546;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetNTCStatus(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1544;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetProjectorOn(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 1547;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProjectorOff(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 1548;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProjectorParams(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4, __int16 a5, __int16 a6, int a7, int a8)
{
  bzero(v17, 0x1CuLL);
  v18 = 1549;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v17, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProjectorSequence(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x12CuLL);
  v6 = 1572;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x12Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProxOff(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1574;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetProjectorTemp(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4, int *a5, int *a6, int *a7, int *a8, int *a9)
{
  bzero(v21, 0x28uLL);
  v22 = 1555;
  v23 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v21, 0x28u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v18 = v25;
    *a3 = v24;
    *a4 = v18;
    v19 = v27;
    *a5 = v26;
    *a6 = v19;
    v20 = v29;
    *a7 = v28;
    *a8 = v20;
    *a9 = v30;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetProjectorOverheatLimit(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  v5 = 0;
  result = H16ISP::H16ISPDevice::ReadPropertyValue(this, a2, 1447, &v5, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetDscStreamingMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 302;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::IRModeSelect(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 24580;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFocus(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1802;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableCFOV(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2066;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableSensorBLCRead(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1300;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableCNRForStillCapture(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2614;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFirmwareRunMode(H16ISP::H16ISPDevice *this, __int16 a2)
{
  bzero(v5, 0xCuLL);
  v6 = 14;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::OverrideFocusGravityZ(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1803;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::PrepareCommand(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 309;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetOisBoostMode(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1867;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOisBoostMode(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1868;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableAvEvMinus(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 308;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::CreateSensorConfig(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  bzero(v16, 0x18uLL);
  v17 = 1296;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v16, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    H16ISP::H16ISPDevice::InitDeviceConfigsCache(this);
    return H16ISP::H16ISPDevice::CacheDeviceConfigs(this, v15);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ConfigureStillImageIntermediateTapDMA(H16ISP::H16ISPDevice *a1, int a2, int a3, int a4, int a5, char a6)
{
  bzero(v13, 0x20uLL);
  v14 = 2830;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v13, 0x20u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetNumberOfMipiFrequencies(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 307;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetDPCCount(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1303;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::CaptureNow(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 306;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableMultiBit(H16ISP::H16ISPDevice *this, char a2)
{
  bzero(v5, 0x10uLL);
  v6 = 319;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRPCEnableFlag(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 19;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHighSpeedOutputLevel(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1306;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetChargePumpFrequencyIndex(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 326;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCurrentChargePumpFrequencyIndex(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 324;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetChargePumpFrequencyForIndex(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 325;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetChargePumpFrequencyCount(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 323;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetPixClockFrequencyIndex(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 288;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCurrentPixClockFrequencyIndex(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 286;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetPixClockFrequencyForIndex(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 287;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetToFClockParam(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  input[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  v6 = 24;
  return IOConnectCallMethod(v4, 0x49u, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetToFClockNumParams(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v3, 0x46u, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetCurrentToFClockBanks(uint64_t a1, unsigned int a2, void *inputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  return IOConnectCallMethod(v3, 0x48u, input, 1u, inputStruct, 0x84uLL, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSACToFCallbackInfo(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  v5 = 5008;
  return IOConnectCallMethod(v3, 0x72u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t H16ISP::H16ISPDevice::ISP_RunToFSelectionAlgorithm(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3, unsigned int a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  outputCnt = 0;
  return IOConnectCallScalarMethod(v4, 0x4Bu, input, 3u, 0, &outputCnt);
}

uint64_t H16ISP::H16ISPDevice::GetPixClockFrequencyCount(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = H16ISP::H16ISPDevice::GetCameraConfig(this, a2, 0, v5, v6);
  if (!result)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableFOD(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 26880;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCameraStatus(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 24;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_PearlCamProjectorSafe(H16ISP::H16ISPDevice *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  return IOConnectCallScalarMethod(v4, 0x33u, v6, 3u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::FIDStart(H16ISP::H16ISPDevice *this, int a2, char a3, int a4)
{
  bzero(v9, 0x1CuLL);
  v10 = 12288;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::FIDStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 12289;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetISPProcessingConfig(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 331;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableSqrtToneCurve(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2617;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMBNRConfiguration(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, unsigned int a4, _DWORD *a5, BOOL *a6, _BYTE *a7, _BYTE *a8)
{
  if (a4 > 5)
  {
    return 3758097090;
  }

  v27 = v8;
  v28 = v9;
  bzero(v23, 0x3CuLL);
  v24 = 2620;
  v25 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v23, 0x3Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v19 = &v23[16 * a3];
    *a5 = *(v19 + 3);
    *a6 = v19[16] != 0;
    if (a4)
    {
      v20 = a4;
      v21 = &v26[a3];
      do
      {
        *a7++ = *(v21 - 1);
        v22 = *v21;
        v21 += 2;
        *a8++ = v22;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableKeypointDetection(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 20491;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetKeypointConfiguration(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 20490;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetKeypointConfiguration(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 64;
  *a6 = 64;
  return 0;
}

uint64_t H16ISP::H16ISPDevice::GetVioInputConfiguration(H16ISP::H16ISPDevice *this, __int16 a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  bzero(v15, 0x2CuLL);
  v16 = 12550;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x2Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v13 = v19;
    *a3 = v18;
    *a4 = v13;
    v14 = v21;
    *a5 = v20;
    *a6 = v14;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SuspendVio(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 12552;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SuspendTimeMachine(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3, char a4)
{
  bzero(v9, 0x10uLL);
  v10 = 336;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetTimeMachinePTSRange(H16ISP::H16ISPDevice *this, __int16 a2, unint64_t *a3, unint64_t *a4)
{
  bzero(v10, 0x1CuLL);
  v11 = 337;
  v12 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v9 = v14;
    *a3 = v13;
    *a4 = v9;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableRawPDPCorrection(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -14847;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetRawBufferConfig(H16ISP::H16ISPDevice *this, __int16 a2, unsigned __int8 *a3, unsigned int *a4, unsigned int *a5, unsigned __int8 *a6, unsigned int *a7, unsigned int *a8)
{
  bzero(v19, 0x24uLL);
  v20 = 342;
  v21 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v19, 0x24u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v22;
    v17 = v24;
    *a4 = v23;
    *a5 = v17;
    *a6 = v27;
    v18 = v26;
    *a7 = v25;
    *a8 = v18;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableManualControl(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 344;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ConfigureManualControl(H16ISP::H16ISPDevice *a1, __int16 a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v10 = a5 + 532;
  if (((1 << a3) & 0xE08) == 0)
  {
    v10 = 532;
  }

  if (a3 <= 0xB)
  {
    v11 = v10;
  }

  else
  {
    v11 = 532;
  }

  v12 = malloc_type_malloc(v11, 0x10000403C54B1CDuLL);
  if (!v12)
  {
    return 3758097085;
  }

  v13 = v12;
  bzero(v12, 0x214uLL);
  v13[2] = 345;
  v13[4] = a2;
  *(v13 + 3) = a3;
  if (a3 <= 0xB)
  {
    memcpy(v13 + 8, a4, a5);
  }

  v14 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v13, v11, 0, 0xFFFFFFFF);
  free(v13);
  return v14;
}

uint64_t H16ISP::H16ISPDevice::EnableScalerOutput(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, char a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2834;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableTimeLapseConfiguration(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13568;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableTimeLapseSmoothing(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13569;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTimeLapseSamplingRate(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13571;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SavePersistFile(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v20 = *MEMORY[0x277D85DE8];
  bzero(v14, 0x202CuLL);
  v15 = 357;
  v16 = v10;
  v17 = v8;
  v12 = H16ISP::H16ISPDevice::ISP_SendCommand(v11, v14, 0x202Cu, 0, 0xFFFFFFFF);
  if (!v12)
  {
    memcpy(v6, v19, 0x2018uLL);
    *v4 = v18;
  }

  return v12;
}

uint64_t H16ISP::H16ISPDevice::LoadPersistFile(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v17[1027] = *MEMORY[0x277D85DE8];
  bzero(v13, 0x202CuLL);
  v14 = 358;
  v15 = v10;
  v16 = v8;
  memcpy(v17, v6, v4);
  return H16ISP::H16ISPDevice::ISP_SendCommand(v11, v13, 0x202Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTOFControlMode(H16ISP::H16ISPDevice *this, __int16 a2, char a3, char a4, int a5, char a6)
{
  bzero(v13, 0x18uLL);
  v14 = 13063;
  v15 = a2;
  v16 = a3;
  v17 = a5;
  v18 = a4;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetPearlControlMode(H16ISP::H16ISPDevice *this, __int16 a2, int a3, int a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    bzero(&v10, 0x10uLL);
    LOWORD(v11) = 24583;
    WORD2(v11) = a2;
    LOBYTE(v12) = a3;
    HIBYTE(v12) = a4;
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v10, 0x10u, 0, 0xFFFFFFFF);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      v10 = 136315650;
      v11 = "SetPearlControlMode";
      v12 = 1024;
      v13 = a4;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - Would have sent command (enable:%d exclusive:%d)\n", &v10, 0x18u);
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetTOFPriRandomSwapMode(H16ISP::H16ISPDevice *this, __int16 a2, char a3, __int16 a4, __int16 a5)
{
  bzero(v11, 0x14uLL);
  v12 = 13064;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x14u, 0, 0xFFFFFFFF);
}

float H16ISP::H16ISPDevice::GetAmbientViewingLevel(H16ISP::H16ISPDevice *this, __int16 a2, float *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8203;
  v9 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF))
  {
    result = v10;
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::UpdateDisplayBrightness(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x6Bu, v4, 1u, 0, 0);
}

void H16ISP::H16ISPDevice::~H16ISPDevice(pthread_mutex_t *this)
{
  if (*&this[67].__opaque[48])
  {
    H16ISP::H16ISPDevice::H16ISPDeviceClose(this);
  }

  v2 = *&this[67].__opaque[44];
  if (v2)
  {
    IOObjectRelease(v2);
    *&this[67].__opaque[44] = 0;
  }

  v3 = *this[2].__opaque;
  if (v3)
  {
    H16ISP::SystemStatus::~SystemStatus(v3);
    MEMORY[0x22AA55B60]();
  }

  v4 = *&this[1].__opaque[32];
  if (v4)
  {
    H16ISP::H16ISPMotionManager::~H16ISPMotionManager(v4);
    MEMORY[0x22AA55B60]();
    *&this[1].__opaque[32] = 0;
  }

  v5 = *&this[1].__opaque[40];
  if (v5)
  {
    H16ISP::H16ISPDeviceImpactManager::~H16ISPDeviceImpactManager(v5);
    MEMORY[0x22AA55B60]();
    *&this[1].__opaque[40] = 0;
  }

  sig = this[2].__sig;
  if (sig)
  {
    MEMORY[0x22AA55B60](sig, 0x1000C4052888210);
    this[2].__sig = 0;
  }

  H16ISP::H16ISPDevice::InitDeviceConfigsCache(this);
  v7 = 0;
  v8 = &this[69].__opaque[8];
  v9 = &this[69].__opaque[8];
  do
  {
    v10 = *v9;
    v9 += 16;
    if (v10 == 1)
    {
      v11 = *(*this[1].__opaque + 72);
      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke;
        block[3] = &__block_descriptor_tmp_205;
        block[4] = this;
        v23 = v7;
        dispatch_sync(v11, block);
      }
    }

    if (v8[96] == 1)
    {
      v12 = *(*this[1].__opaque + 72);
      if (v12)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 0x40000000;
        v20[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_2;
        v20[3] = &__block_descriptor_tmp_206;
        v20[4] = this;
        v21 = v7;
        dispatch_sync(v12, v20);
      }
    }

    ++v7;
    v8 = v9;
  }

  while (v7 != 6);
  if (this[72].__opaque[8])
  {
    v13 = *(*this[1].__opaque + 72);
    if (v13)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 0x40000000;
      v19[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_3;
      v19[3] = &__block_descriptor_tmp_207;
      v19[4] = this;
      dispatch_sync(v13, v19);
    }
  }

  if (this[72].__opaque[24] == 1)
  {
    v14 = *(*this[1].__opaque + 72);
    if (v14)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 0x40000000;
      v18[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_4;
      v18[3] = &__block_descriptor_tmp_208;
      v18[4] = this;
      dispatch_sync(v14, v18);
    }
  }

  if (this[72].__opaque[40] == 1)
  {
    v15 = *(*this[1].__opaque + 72);
    if (v15)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_5;
      v17[3] = &__block_descriptor_tmp_209;
      v17[4] = this;
      dispatch_sync(v15, v17);
    }
  }

  v16 = *&this[1].__opaque[16];
  if (v16)
  {
    CFRelease(v16);
    *&this[1].__opaque[16] = 0;
  }

  pthread_mutex_destroy(this + 68);
}

uint64_t H16ISP::H16ISPDevice::H16ISPDeviceClose(H16ISP::H16ISPDevice *this)
{
  pthread_mutex_lock(this + 68);
  v2 = IOConnectCallScalarMethod(*(this + 1086), 4u, 0, 0, 0, 0);
  v3 = *(this + 1086);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 1086) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock(this + 68);
  return v2;
}

uint64_t H16ISP::H16ISPDevice::DisableDeviceMessages(H16ISP::H16ISPDevice *this)
{
  result = *(this + 1085);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 1085) = 0;
  }

  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 4424;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32) + 4520;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4628));
  *(v1 + 4624) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4644));
  *(v1 + 4640) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4660));
  *(v1 + 4656) = 0;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_PreMapClientSurface(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x51u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ReleasePreMappedClientSurface(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x52u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_DetectFaces(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x17u, inputStruct, 0x10uLL, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_FlushInactiveDARTMappings(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1086);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 0x21u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_ProcessRawImagePrepare(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x12u, inputStruct, 0x34uLL, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_ProcessRawImageGo(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x13u, v4, 1u, 0, 0);
}

H16ISP::H16ISPDevice *H16ISP::H16ISPDevice::ISP_ColdBootPowerCycle(H16ISP::H16ISPDevice *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = -10;
  v3 = MEMORY[0x277D86220];
  do
  {
    if (!H16ISP::H16ISPDevice::ISP_IsPowered(this))
    {
      break;
    }

    usleep(0x186A0u);
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "ISP_ColdBootPowerCycle";
      _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_DEFAULT, "%s - Camera powered on...waiting\n", buf, 0xCu);
    }

    usleep(0x493E0u);
  }

  while (!__CFADD__(v2++, 1));
  v5 = H16ISP::H16ISPDevice::ISP_ForgetFirmware(this);
  if (v5)
  {
    Firmware = v5;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_ColdBootPowerCycle();
    }
  }

  else
  {
    v7 = os_transaction_create();
    Firmware = H16ISP::H16ISPDevice::ISP_LoadFirmware(this);
    os_release(v7);
    if (Firmware)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ISP_ColdBootPowerCycle();
      }
    }

    else
    {
      v9 = H16ISP::H16ISPDevice::ISP_PowerOnCamera(this, v8);
      if (v9)
      {
        Firmware = v9;
        v10 = 0;
        v11 = 0;
      }

      else if (H16ISP::H16ISPDevice::ISP_IsPowered(this))
      {
        Firmware = H16ISP::H16ISPDevice::ISP_PowerOffCamera(this);
        v10 = Firmware == 0;
        v11 = 1;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        Firmware = 0;
      }

      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = "ISP_ColdBootPowerCycle";
        v15 = 1024;
        v16 = v11;
        v17 = 1024;
        v18 = v10;
        v19 = 1024;
        v20 = Firmware;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - poweredOn=%d, poweredOff=%d, res=0x%08X\n", buf, 0x1Eu);
      }
    }
  }

  return Firmware;
}

uint64_t H16ISP::H16ISPDevice::ISP_ForgetFirmware(H16ISP::H16ISPDevice *this)
{
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  result = IOConnectCallScalarMethod(v2, 9u, 0, 0, 0, 0);
  if (!result)
  {
    H16ISP::H16ISPDevice::InitDeviceConfigsCache(this);
    return 0;
  }

  return result;
}

H16ISP::H16ISPDevice *H16ISP::H16ISPDevice::ISP_LoadFirmware(H16ISP::H16ISPDevice *this)
{
  input[12] = *MEMORY[0x277D85DE8];
  FirmwareBinary = H16ISP::H16ISPDevice::LoadFirmwareBinary(this);
  if (!FirmwareBinary)
  {
    theDict = 0;
    H16ISP::H16ISPDevice::GetUnitInfoPropertyDict(FirmwareBinary, &theDict);
    H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter(this);
    H16ISP::LoadSavageDATFile(this, v5);
    H16ISP::LoadFrontIRHPRFile(this, v6);
    H16ISP::LoadYonkersDATFile(this, v7);
    H16ISP::H16ISPDevice::SendDataFileToFirmware(this, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/lacc_VIO_ISP_IR.bin", 0, 0, 0, 8, 0, 0);
    strcpy(input, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/");
    *buf = 0;
    v8 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/arm-io");
    if (v8)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v8, @"soc-generation", 0, 0);
      v10 = CFProperty;
      if (CFProperty)
      {
        v11 = CFGetTypeID(CFProperty);
        if (v11 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v10);
          if ((Length - 8) > 0xFFFFFFFFFFFFFFF8)
          {
            v13 = Length;
            BytePtr = CFDataGetBytePtr(v10);
            strncpy(buf, BytePtr, v13);
          }

          else
          {
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
            {
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              H16ISP::H16ISPDevice::ISP_LoadFirmware();
            }
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_LoadFirmware();
    }

    if (!v10)
    {
LABEL_23:
      operator new[]();
    }

LABEL_22:
    CFRelease(v10);
    goto LABEL_23;
  }

  v3 = FirmwareBinary;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::ISP_LoadFirmware();
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::ISP_PowerOffCamera(H16ISP::H16ISPDevice *this)
{
  kdebug_trace();
  v2 = *(this + 1086);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 0xCu, 0, 0, 0, 0);
  }

  else
  {
    v3 = 3758097084;
  }

  kdebug_trace();
  return v3;
}

uint64_t H16ISP::H16ISPDevice::ISP_PublishToIOReg(H16ISP::H16ISPDevice *this, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a2[++v5]);
  }

  else
  {
    v6 = 0;
  }

  input[1] = v6;
  input[2] = a3;
  input[3] = a4;
  return IOConnectCallScalarMethod(v4, 0x65u, input, 4u, 0, 0);
}

float H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter(H16ISP::H16ISPDevice *this)
{
  v18 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  if (*(this + 1086))
  {
    if (MGIsQuestionValid())
    {
      v1 = MGCopyAnswerWithError();
      if (v1)
      {
        v2 = v1;
        v3 = CFGetTypeID(v1);
        if (v3 == CFArrayGetTypeID() && CFArrayGetCount(v2) == 3)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
          if (ValueAtIndex)
          {
            v5 = ValueAtIndex;
            v6 = CFGetTypeID(ValueAtIndex);
            if (v6 == CFNumberGetTypeID() && CFNumberIsFloatType(v5) && CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr))
            {
              v7 = valuePtr;
              v8 = CFArrayGetValueAtIndex(v2, 1);
              if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()) && CFNumberIsFloatType(v9) && CFNumberGetValue(v9, kCFNumberFloatType, &valuePtr))
              {
                v11 = CFArrayGetValueAtIndex(v2, 2);
                if (!v11 || (v12 = v11, v13 = CFGetTypeID(v11), v13 != CFNumberGetTypeID()) || !CFNumberIsFloatType(v12) || !CFNumberGetValue(v12, kCFNumberFloatType, &valuePtr))
                {
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                  {
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
                  }
                }
              }

              else
              {
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                {
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
                }
              }

              goto LABEL_41;
            }
          }

          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
          }
        }

        else
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
          }
        }

        v7 = 0.0;
LABEL_41:
        CFRelease(v2);
        return v7;
      }

      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v7 = 0.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v7 = 0.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "GetFrontCameraOffsetFromDisplayCenter";
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Device has no Front Camera Offset Data!\n", buf, 0xCu);
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v7 = 0.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
    }
  }

  return v7;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter(H16ISP::H16ISPDevice *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = 3758097136;
  v17 = 0;
  v18 = 0;
  v24 = 0;
  v23 = 0;
  v2 = MEMORY[0x277D86220];
  if (*(this + 1086))
  {
    if (MGIsQuestionValid())
    {
      v4 = MGCopyAnswerWithError();
      if (v4)
      {
        v5 = v4;
        v6 = CFCopyDescription(v4);
        if (v6)
        {
          v7 = v6;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v2)
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v20 = "ISP_SetFrontCameraOffsetFromDisplayCenter";
            v21 = 2080;
            CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - kMGQFrontCameraOffsetFromDisplayCenter Description=%s\n", buf, 0x16u);
          }

          CFRelease(v7);
        }

        v8 = CFGetTypeID(v5);
        if (v8 == CFArrayGetTypeID() && CFArrayGetCount(v5) == 3)
        {
          v9 = 0;
          v10 = &v23;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
            if (!ValueAtIndex)
            {
              break;
            }

            v12 = ValueAtIndex;
            v13 = CFGetTypeID(ValueAtIndex);
            if (v13 != CFNumberGetTypeID() || !CFNumberIsFloatType(v12))
            {
              goto LABEL_26;
            }

            Value = CFNumberGetValue(v12, kCFNumberFloatType, v10);
            if (Value)
            {
              v10 = (v10 + 4);
              if (v9++ != 2)
              {
                continue;
              }
            }

            if (Value)
            {
              v1 = 0;
            }

            else
            {
              v1 = 3758097102;
            }

            if (Value)
            {
              v17 = v23;
              LODWORD(v18) = v24;
              v1 = IOConnectCallStructMethod(*(this + 1086), 0x56u, &v17, 0xCuLL, 0, 0);
              goto LABEL_36;
            }

            break;
          }
        }

        else
        {
LABEL_26:
          v1 = 3758096385;
        }
      }

      else
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v2)
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter();
        }

        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      v1 = 3758097095;
    }
  }

  else
  {
    v5 = 0;
    v1 = 3758097087;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v2)
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter();
    if (!v5)
    {
      return v1;
    }

    goto LABEL_36;
  }

  if (v5)
  {
LABEL_36:
    CFRelease(v5);
  }

  return v1;
}

uint64_t H16ISP::H16ISPDevice::LoadFirmwareBinary(H16ISP::H16ISPDevice *this)
{
  v17 = *MEMORY[0x277D85DE8];
  outputStructCnt = 24;
  v2 = *(this + 1086);
  if (v2 && (IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt), (outputStruct[20] & 1) == 0))
  {
    DCSConfig = H16ISP::H16ISPDevice::ISP_GetDCSConfig(this, &v12);
    if (v12)
    {
      v5 = DCSConfig == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = "/usr/local/share/firmware/isp/dcs_isp_fw.bin";
    }

    else
    {
      v6 = "/usr/local/share/firmware/isp/isp_fw.bin";
    }

    v7 = fopen(v6, "rb");
    v8 = fopen(0, "rb");
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        fclose(v7);
      }
    }

    else
    {
      v9 = v7;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFirmwareBinary();
    }

    if (v9)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::LoadFirmwareBinary();
      }

      fseeko(v9, 0, 2);
      ftello(v9);
      fseeko(v9, 0, 0);
      operator new[]();
    }

    perror("error loading ISPCPU firmware ");
    outputStructCnt = 0;
    v15 = 0;
    v16 = *(this + 1074);
    return IOConnectCallScalarMethod(*(this + 1086), 7u, &outputStructCnt, 3u, 0, 0);
  }

  else
  {
    outputStructCnt = 0;
    v15 = 0;
    v16 = *(this + 1074);
    return IOConnectCallScalarMethod(*(this + 1086), 7u, &outputStructCnt, 3u, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::SendDataFileToFirmware(H16ISP::H16ISPDevice *this, const char *__filename, const char *a3, const unsigned __int8 *a4, unsigned int a5, int a6, unsigned int a7, int a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = fopen(a3, "rb");
    if (v10)
    {
      v11 = v10;
      goto LABEL_6;
    }
  }

  v12 = fopen(__filename, "rb");
  if (v12)
  {
    v11 = v12;
LABEL_6:
    fseeko(v11, 0, 2);
    ftello(v11);
    rewind(v11);
    operator new[]();
  }

  if (a4)
  {
    operator new[]();
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v17 = "SendDataFileToFirmware";
    v18 = 1024;
    v19 = a6;
    v20 = 1024;
    v21 = 0;
    v22 = 2080;
    v23 = __filename;
    v24 = 1024;
    v25 = 0;
    v26 = 1024;
    v27 = a8;
    v28 = 1024;
    v29 = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - type=0x%X, isOverride=%d, file=%s, size=%u, isEarlyBoot=%d, status=%08x\n", buf, 0x34u);
  }

  return 0;
}

void H16ISP::H16ISPDevice::LoadFDRCalDataFile(H16ISP::H16ISPDevice *this)
{
  v31 = *MEMORY[0x277D85DE8];
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(this, 1919246706, 1852793709);
  v3 = MEMORY[0x277D86220];
  if (SensorChannel == -1)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRCalDataFile();
    }
  }

  else
  {
    v4 = SensorChannel;
    v5 = *MEMORY[0x277CD2898];
    v6 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    v8 = *MEMORY[0x277CBECE8];
    v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackCameraModuleSerialNumString", *MEMORY[0x277CBECE8], 3u);
    IOObjectRelease(MatchingService);
    if (v9)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v10 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "backCameraModuleSerialNumString exists - load FDR CmCl calibration data\n\n", buf, 2u);
      }

      v11 = -1431699456;
      CFRelease(v9);
      v12 = fopen("/usr/local/share/firmware/isp/CmCl-Override.DAT", "rb");
      if (v12)
      {
        v13 = v12;
        fseeko(v12, 0, 2);
        ftello(v13);
        fseeko(v13, 0, 0);
        operator new[]();
      }

      v14 = CFStringCreateWithCString(v8, "CmCl", 0x8000100u);
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", *MEMORY[0x277CBED28]);
      MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
      v16 = AMFDRSealingMapCopyLocalDataForClass();
      if (!v16)
      {
        v23 = *(this + 538);
        if (!v23 || *(v23 + 675) != 1 || (v24 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
LABEL_31:
          if (v14)
          {
            CFRelease(v14);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }

        v16 = v24;
        v11 = -1145372672;
      }

      BytePtr = CFDataGetBytePtr(v16);
      Length = CFDataGetLength(v16);
      DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, BytePtr, Length, v11 | 0x300u);
      v20 = CFCopyDescription(v16);
      if (v20)
      {
        v21 = v20;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v21, 0);
          *buf = 136315650;
          v26 = "LoadFDRCalDataFile";
          v27 = 1024;
          v28 = DataFile;
          v29 = 2080;
          v30 = CStringPtr;
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; CmCl data - %s\n", buf, 0x1Cu);
        }

        CFRelease(v21);
      }

      CFRelease(v16);
      goto LABEL_31;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRCalDataFile();
    }

    H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void H16ISP::H16ISPDevice::LoadFDRFCClDataFile(H16ISP::H16ISPDevice *this)
{
  v39 = *MEMORY[0x277D85DE8];
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(this, 1718775412, 1718776695);
  v3 = MEMORY[0x277D86220];
  if (SensorChannel == -1)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRFCClDataFile();
    }
  }

  else
  {
    v4 = SensorChannel;
    v5 = *MEMORY[0x277CD2898];
    v6 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    v8 = *MEMORY[0x277CBECE8];
    v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", *MEMORY[0x277CBECE8], 3u);
    IOObjectRelease(MatchingService);
    if (v9)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v10 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load FDR FCCl calibration data\n\n", buf, 2u);
      }

      v11 = -1431699456;
      CFRelease(v9);
      v12 = fopen("/usr/local/share/firmware/isp/FCCl-Override.DAT", "rb");
      if (v12)
      {
        v13 = v12;
        fseeko(v12, 0, 2);
        ftello(v13);
        fseeko(v13, 0, 0);
        operator new[]();
      }

      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", *MEMORY[0x277CBED28]);
      MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
      v15 = CFStringCreateWithCString(v8, "FCCl", 0x8000100u);
      v16 = AMFDRSealingMapCopyLocalDataForClass();
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        theDict = 0;
        v19 = 0;
      }

      else
      {
        v26 = *(this + 538);
        if (!v26 || *(v26 + 675) != 1 || (v27 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          v18 = CFStringCreateWithCString(v8, "iCCl", 0x8000100u);
          theDict = AMFDRSealingMapCopyLocalDictForClass();
          if (theDict && (v28 = *(this + 538)) != 0 && *(v28 + 675) == 1)
          {
            v19 = CFStringCreateWithCString(v8, "FCCl", 0x8000100u);
            Value = CFDictionaryGetValue(theDict, v19);
            if (Value)
            {
              v17 = Value;
              goto LABEL_20;
            }
          }

          else
          {
            v19 = 0;
          }

          H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
          v25 = 0;
          v17 = 0;
LABEL_36:
          if (v15)
          {
            CFRelease(v15);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          v30 = v25 ^ 1;
          if (theDict)
          {
            v30 = 0;
          }

          if ((v30 & 1) == 0)
          {
            if (theDict)
            {
              v31 = theDict;
            }

            else
            {
              v31 = v17;
            }

            CFRelease(v31);
          }

          return;
        }

        v17 = v27;
        v18 = 0;
        theDict = 0;
        v19 = 0;
        v11 = -1145372672;
      }

LABEL_20:
      BytePtr = CFDataGetBytePtr(v17);
      Length = CFDataGetLength(v17);
      DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, BytePtr, Length, v11 | 0x300u);
      v23 = CFCopyDescription(v17);
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v23, 0);
        *buf = 136315650;
        v34 = "LoadFDRFCClDataFile";
        v35 = 1024;
        v36 = DataFile;
        v37 = 2080;
        v38 = CStringPtr;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; FCCl data - %s\n", buf, 0x1Cu);
      }

      CFRelease(v23);
      v25 = 1;
      goto LABEL_36;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRFCClDataFile();
    }

    H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(H16ISP::H16ISPDevice *this)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "rb");
  if (v2)
  {
    fclose(v2);
    remove("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", v3);
  }

  v4 = fopen("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", "rb");
  if (v4)
  {
    fclose(v4);
    remove("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", v5);
  }

  v75[1] = xmmword_27853B630;
  v75[2] = *&off_27853B640;
  v76 = 0x7265746C00000000;
  v74 = xmmword_27853B610;
  v75[0] = unk_27853B620;
  v6 = *MEMORY[0x277CD2898];
  v7 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v6, v7);
  v9 = 0;
  v10 = 0;
  allocator = *MEMORY[0x277CBECE8];
  v55 = this;
  do
  {
    v11 = &v75[-1] + v10;
    *(v11 + 4) = H16ISP::H16ISPDevice::getSensorChannel(this, *(v75 + v10 + 4), 1852793709);
    v12 = *(&v75[-1] + v10);
    v13 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", v12, allocator, 3u);
    *(v11 + 1) = v13;
    if (CFStringGetCStringPtr(v13, 0x8000100u))
    {
      v14 = MEMORY[0x277D86220];
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
        v16 = CFStringGetCStringPtr(v13, 0x8000100u);
        v17 = CFStringGetCStringPtr(v13, 0x8000100u);
        v18 = strlen(v17);
        *buf = 136315650;
        *v69 = CStringPtr;
        *&v69[8] = 2080;
        *&v69[10] = v16;
        v70 = 2048;
        v71 = v18;
        _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_DEFAULT, "%s:%s exists, length of the string = %ld.\n\n", buf, 0x20u);
      }

      v9 = 1;
    }

    else
    {
      v19 = MEMORY[0x277D86220];
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v72, v12, &v73);
      }
    }

    this = v55;
    v10 += 24;
  }

  while (v10 != 72);
  IOObjectRelease(MatchingService);
  v20 = AMFDRSealingMapCopyMultiInstanceForClass();
  v21 = v20;
  if ((v9 & (v20 != 0)) == 0)
  {
    H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v55);
    goto LABEL_76;
  }

  Count = CFArrayGetCount(v20);
  if (Count >= 1)
  {
    v22 = 0;
    v23 = 0;
    value = *MEMORY[0x277CBED28];
    v53 = v21;
LABEL_20:
    v57 = v23;
    ValueAtIndex = CFArrayGetValueAtIndex(v21, v23);
    v25 = 72;
    v26 = v75;
    while (1)
    {
      v27 = *(v26 - 1);
      if (CFStringGetCStringPtr(v27, 0x8000100u))
      {
        if (CFStringCompare(ValueAtIndex, v27, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }
      }

      v26 += 6;
      v25 -= 24;
      if (!v25)
      {
        goto LABEL_29;
      }
    }

    v22 = *v26;
    v28 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      *buf = 67109378;
      *v69 = v22;
      *&v69[4] = 2080;
      *&v69[6] = v29;
      _os_log_impl(&dword_2247DB000, v28, OS_LOG_TYPE_DEFAULT, "camChannel: %d, cmpmInstance: %s\n", buf, 0x12u);
    }

LABEL_29:
    MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", value);
    v56 = Mutable;
    v31 = AMFDRSealingMapCopyLocalDict();
    v32 = 0;
    *v58 = v22;
    while (1)
    {
      v33 = &off_27853B658[v32];
      snprintf(buf, 0x30uLL, "%s-Ch%d.DAT", off_27853B658[v32], v22);
      if (v31)
      {
        v34 = CFStringCreateWithCString(allocator, v33[1], 0x8000100u);
        v35 = CFDictionaryGetValue(v31, v34);
        if (v35)
        {
          v36 = v35;
          BytePtr = CFDataGetBytePtr(v35);
          v38 = -1431699456;
          Length = CFDataGetLength(v36);
          goto LABEL_35;
        }
      }

      else
      {
        v34 = 0;
      }

      Length = 0;
      BytePtr = 0;
      v38 = -859045888;
LABEL_35:
      v40 = *(v33 + 4);
      if (v40 == 771)
      {
        v41 = fopen(buf, "rb");
        if (v41)
        {
          v42 = v41;
          fseeko(v41, 0, 2);
          ftello(v42);
          rewind(v42);
          operator new[]();
        }

        if (BytePtr)
        {
          correction_model_from_fdr = bfpn_create_correction_model_from_fdr();
          v44 = MEMORY[0x277D86220];
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
            v44 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *v64 = 136315650;
            v65 = "LoadFDRDataFileCMPM";
            v66 = 1024;
            *v67 = correction_model_from_fdr;
            *&v67[4] = 2048;
            *&v67[6] = 8;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - result = %d, outputPixelBufferRef = %lu\n", v64, 0x1Cu);
          }

          if (!correction_model_from_fdr)
          {
            if (mkdir("/var/mobile/Library/ISP/", 0x1FFu) && *__error() != 17)
            {
              v47 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
              {
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                v47 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v62, &v63);
              }
            }

            else if (mkdir("/var/mobile/Library/ISP/CalData", 0x1FFu) && *__error() != 17)
            {
              v48 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
              {
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                v48 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v60, &v61);
              }
            }

            else
            {
              v45 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "wb");
              if (v45)
              {
                v46 = v45;
                fwrite(0, 1uLL, MEMORY[2], v45);
                fclose(v46);
                H16ISP::H16ISPDevice::SendDataFileToFirmware(v55, "/var/mobile/Library/ISP/CalData/DCNUMetadata_0", 0, 0, 0, v38 | 0x304, v58[0], 1);
                H16ISP::H16ISPDevice::SendDataFileToFirmware(v55, "/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", 0, 0, 0, v38 | 0x303, v58[0], 1);
              }

              else
              {
                v49 = MEMORY[0x277D86220];
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                {
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                  v49 = MEMORY[0x277D86220];
                }

                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *v64 = 136315394;
                  v65 = "LoadFDRDataFileCMPM";
                  v66 = 2080;
                  *v67 = "/var/mobile/Library/ISP/CalData/DCNUMetadata_0";
                  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - Could not open %s file\n", v64, 0x16u);
                }
              }
            }

            free(0);
          }
        }

        v22 = *v58;
        if (!v34)
        {
          goto LABEL_40;
        }

LABEL_39:
        CFRelease(v34);
        goto LABEL_40;
      }

      H16ISP::H16ISPDevice::SendDataFileToFirmware(v55, 0, buf, BytePtr, Length, v40 | v38, v22, 1);
      if (v34)
      {
        goto LABEL_39;
      }

LABEL_40:
      v32 += 3;
      if (v32 == 18)
      {
        v21 = v53;
        if (v31)
        {
          CFRelease(v31);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        v23 = v57 + 1;
        if (v57 + 1 == Count)
        {
          break;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_76:
  for (i = 8; i != 80; i += 24)
  {
    v51 = *(&v75[-1] + i);
    if (CFStringGetCStringPtr(v51, 0x8000100u))
    {
      CFRelease(v51);
      *(&v75[-1] + i) = 0;
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void H16ISP::H16ISPDevice::LoadOCClCalDataFile(H16ISP::H16ISPDevice *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = *MEMORY[0x277CBECE8];
  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", *MEMORY[0x277CBECE8], 3u);
  if (!v6)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadOCClCalDataFile();
    }

    goto LABEL_38;
  }

  v7 = v6;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  v8 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v7);
  v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackTeleCameraModuleSerialNumString", v5, 3u);
  if (!v9)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v8)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadOCClCalDataFile();
    }

LABEL_38:
    IOObjectRelease(MatchingService);
    return;
  }

  v10 = v9;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v8)
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "backTeleCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v10);
  IOObjectRelease(MatchingService);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = CFStringCreateWithCString(v5, "OCCl", 0x8000100u);
  MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
  CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", *MEMORY[0x277CBED28]);
  v29 = Mutable;
  v13 = AMFDRSealingMapCopyLocalDictForClass();
  v30 = this;
  v14 = 0;
  do
  {
    while (1)
    {
      v15 = v14;
      v16 = &off_27853B5E0[3 * v14];
      v17 = fopen(*v16, "rb");
      if (v17)
      {
        v18 = v17;
        fseeko(v17, 0, 2);
        ftello(v18);
        fseeko(v18, 0, 0);
        operator new[]();
      }

      if (v13)
      {
        break;
      }

      v14 = 1;
      if (v15)
      {
        goto LABEL_26;
      }
    }

    v19 = v16[1];
    v20 = CFStringCreateWithCString(v5, v19, 0x8000100u);
    Value = CFDictionaryGetValue(v13, v20);
    if (Value)
    {
      v22 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v22);
      DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(v30, 0x80000000, BytePtr, Length, *(v16 + 4));
      v26 = CFCopyDescription(v22);
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v27, 0);
          *buf = 136315906;
          v32 = "LoadOCClCalDataFile";
          v33 = 1024;
          v34 = DataFile;
          v35 = 2080;
          v36 = v19;
          v37 = 2080;
          v38 = CStringPtr;
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s : Status = %08x; OCCl (%s) data - %s \n", buf, 0x26u);
        }

        CFRelease(v27);
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v14 = 1;
  }

  while (!v15);
  CFRelease(v13);
LABEL_26:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v29)
  {
    CFRelease(v29);
  }
}

uint64_t H16ISP::H16ISPDevice::LoadSyscfgCalDataFiles(H16ISP::H16ISPDevice *this, __CFDictionary *a2)
{
  v4 = 0;
  v7 = *MEMORY[0x277D85DE8];
  v6[2] = xmmword_27853B5A0;
  v6[3] = *&off_27853B5B0;
  v6[4] = xmmword_27853B5C0;
  v6[5] = off_27853B5D0;
  v6[0] = xmmword_27853B580;
  v6[1] = *&off_27853B590;
  do
  {
    result = H16ISP::H16ISPDevice::SendSysConfigCalibrationDataByKey(this, &v6[v4], a2);
    v4 += 2;
  }

  while (v4 != 6);
  return result;
}

void H16ISP::H16ISPDevice::LoadIspAneNetworkFile(H16ISP::H16ISPDevice *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = MGCopyAnswer();
  if (!v1)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadIspAneNetworkFile();
    }

    return;
  }

  v2 = v1;
  Length = CFStringGetLength(v1);
  HasSuffix = CFStringHasSuffix(v2, @"AP");
  v5 = MEMORY[0x277CBECE8];
  if (HasSuffix)
  {
    v6.length = Length - 2;
  }

  else
  {
    if (!CFStringHasSuffix(v2, @"DEV"))
    {
      v7 = *v5;
      goto LABEL_13;
    }

    v6.length = Length - 3;
  }

  v7 = *v5;
  if (v6.length >= 1)
  {
    v6.location = 0;
    v8 = CFStringCreateWithSubstring(*v5, v2, v6);
    CFRelease(v2);
    v2 = v8;
  }

LABEL_13:
  MutableCopy = CFStringCreateMutableCopy(v7, 0, v2);
  CFStringLowercase(MutableCopy, 0);
  CFShow(MutableCopy);
  CFRelease(v2);
  if (MutableCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    memset(__s, 0, sizeof(__s));
    strcat(__s, "/System/Library/Isp/afpp/");
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
    strcat(__s, CStringPtr);
    strcat(__s, "/ispane.afpp");
    CFRelease(MutableCopy);
    v11 = fopen(__s, "rb");
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v12 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = __s;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loading file for ISP-ANE networks - %s\n", &v15, 0xCu);
    }

    v13 = fopen("/usr/local/share/firmware/isp/ispane.afpp", "rb");
    if (v13)
    {
      v14 = v13;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v12)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using override ISP-ANE AFPP file\n", &v15, 2u);
      }

      if (v11)
      {
        fclose(v11);
      }

      v11 = v14;
LABEL_27:
      fseeko(v11, 0, 2);
      ftello(v11);
      fseeko(v11, 0, 0);
      operator new[]();
    }

    if (v11)
    {
      goto LABEL_27;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v12)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadIspAneNetworkFile();
    }
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_RegisterFirmwareWorkProcessor(uint64_t a1, _DWORD *inputStruct)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x28u, inputStruct[4], &reference, 8u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_UnregisterFirmwareWorkProcessor(H16ISP::H16ISPDevice *this, mach_port_t wake_port)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x29u, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetFirmwareWorkProcessorItem(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2024;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Au, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_CompleteFirmwareWorkProcessorItem(uint64_t a1, mach_port_t wake_port, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a3;
  input[1] = 2024;
  v6 = 0u;
  return IOConnectCallAsyncMethod(v3, 0x2Bu, wake_port, &reference, 8u, input, 2u, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ReleaseFirmwareWorkProcessorBuffers(H16ISP::H16ISPDevice *this, mach_port_t wake_port)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v5 = 0u;
  return IOConnectCallAsyncMethod(v2, 0x2Eu, wake_port, &reference, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ReleaseChannel(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x31u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableS2R(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x42u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableFirmwareRecovery(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x32u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetPearlStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 3028;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x3Du, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GetPowerStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 40;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x4Cu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GetToFSACAnalytics(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  result = 3758097084;
  v5 = *(a1 + 4344);
  if (v5)
  {
    if (outputStruct)
    {
      v6 = 584;
      input[0] = a2;
      return IOConnectCallMethod(v5, 0x4Du, input, 1u, 0, 0, 0, 0, outputStruct, &v6);
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCamStreamingStatistics(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v5 = 8;
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  return IOConnectCallMethod(v3, 0x63u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetFWErrorStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 16;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x64u, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_MemoryDiagnostics(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1086);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 0x3Eu, 0, 0, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableMOVReplay(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 353;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1086);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 0x45u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_IsFirmwareLoaded(H16ISP::H16ISPDevice *this)
{
  output = 0;
  outputCnt = 1;
  result = *(this + 1086);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 0x39u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSensorConfigInfo(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  input[2] = *MEMORY[0x277D85DE8];
  v6 = 212;
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallMethod(v4, 0x1Cu, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetDriverLoggingFlags(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x10u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetFullStatsMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x16u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetFirmwareBootArg(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x43u, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_CreateClientLoggingSession(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x1Eu, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_TerminateClientLoggingSession(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x1Fu, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ShowSharedMemoryAllocations(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  input = a2;
  v2 = *(this + 1086);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 0x11u, &input, 1u, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_SetBestMIPIFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x1Du, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetBestChargePumpFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x2Du, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetBestPixClockFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x3Cu, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_InstallFakeSensor(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x2Fu, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, _DWORD *a5)
{
  input[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 4344);
  if (!v5)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v5, 0x34u, input, 3u, &output, &outputCnt);
  *a5 = output;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_PPMActivityStopped(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  return IOConnectCallScalarMethod(v4, 0x35u, v6, 3u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSavagePubKey(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v15[94] = *MEMORY[0x277D85DE8];
  if (*a4 != 128)
  {
    return 3758097090;
  }

  bzero(v11, 0x304uLL);
  v12 = 1308;
  v13 = a2;
  __n = 0x8000000000;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x304u, 0, 0xFFFFFFFF);
  if (!v8)
  {
    v9 = BYTE4(__n);
    memcpy(a3, v15, HIDWORD(__n));
    *a4 = v9;
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetHostPubKey(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 != 128)
  {
    return 3758097090;
  }

  bzero(v14, 0x304uLL);
  v17 = 0x8000000003;
  v9 = *(a3 + 5);
  v22 = *(a3 + 4);
  v23 = v9;
  v10 = *(a3 + 7);
  v24 = *(a3 + 6);
  v25 = v10;
  v11 = *(a3 + 1);
  v18 = *a3;
  v19 = v11;
  v12 = *(a3 + 3);
  v20 = *(a3 + 2);
  v15 = 1308;
  v16 = a2;
  v26 = a5;
  v21 = v12;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v14, 0x304u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_YonkersFusing(H16ISP::H16ISPDevice *this, unsigned int a2, const unsigned __int8 *a3, unsigned int a4, unsigned int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = 3758097084;
  if (*(this + 1086))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Yonkers/YonkersPatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to use override YonkersPatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (H16ISP::H16ISPDevice::ISP_LoadDataFile(this, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(this + 1086), 0x41u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) && (H16ISP::H16ISPDevice::ISP_YonkersFusing(0) & 1) != 0)
      {
        MEMORY[0x22AA55B40](0, 0x1000C8077774924);
      }
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_LoadDataFile(H16ISP::H16ISPDevice *this, int a2, const unsigned __int8 *a3, unsigned int a4, unsigned int a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *(this + 1086);
  if (v7)
  {
    v11 = a3;
    v12 = a4;
    v13 = a2;
    v14 = a5;
    v8 = IOConnectCallScalarMethod(v7, 0x25u, &v11, 4u, 0, 0);
  }

  else
  {
    v8 = 3758097084;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 67109890;
    HIDWORD(v11) = a2 & 0x7FFFFFFF;
    v9 = "false";
    LOWORD(v12) = 1024;
    if (a2 < 0)
    {
      v9 = "true";
    }

    *(&v12 + 2) = a5;
    HIWORD(v12) = 2080;
    v13 = v9;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = v8;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Load data file: channel: %d, type: %d, isEarlyBootDataFile: %s, status: %08x\n\n", &v11, 0x1Eu);
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::ISP_LoadIspAneAFPPFile(H16ISP::H16ISPDevice *this, const unsigned __int8 *a2, unsigned int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (v3)
  {
    *v6 = a2;
    *&v6[8] = a3;
    v4 = IOConnectCallScalarMethod(v3, 0x62u, v6, 2u, 0, 0);
  }

  else
  {
    v4 = 3758097084;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 136315394;
    *&v6[4] = "ISP_LoadIspAneAFPPFile";
    *&v6[12] = 1024;
    *&v6[14] = v4;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - status: %08x\n", v6, 0x12u);
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_SavageFusing(H16ISP::H16ISPDevice *this, unsigned int a2, const unsigned __int8 *a3, unsigned int a4, unsigned int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = 3758097084;
  if (*(this + 1086))
  {
    v11 = fopen("/usr/local/share/firmware/isp/Savage/SavagePatchOverride.DAT", "rb");
    if (v11)
    {
      v12 = v11;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to use SavagePatchOverride.DAT file\n", buf, 2u);
      }

      fseeko(v12, 0, 2);
      ftello(v12);
      fseeko(v12, 0, 0);
      operator new[]();
    }

    v16 = a2;
    if (a3 && a4)
    {
      *buf = a3;
      v15 = a4;
      if (H16ISP::H16ISPDevice::ISP_LoadDataFile(this, a2, a3, a4, a5) != -536870212)
      {
        return IOConnectCallScalarMethod(*(this + 1086), 2u, buf, 3u, 0, 0);
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR) && (H16ISP::H16ISPDevice::ISP_SavageFusing(0) & 1) != 0)
      {
        MEMORY[0x22AA55B40](0, 0x1000C8077774924);
      }
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_SavageAuth(H16ISP::H16ISPDevice *this, unsigned int a2, const unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = *(this + 1086);
  if (v6)
  {
    if (a3 && a4)
    {
      *&buf = a3;
      *(&buf + 1) = a4;
      v22[0] = a2;
      v9 = IOConnectCallScalarMethod(v6, 0x6Du, v22, 1u, 0, 0);
      if (v9)
      {
        v10 = v9;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315394;
          v18 = "ISP_SavageAuth";
          v19 = 1024;
          v20 = v10;
          v11 = MEMORY[0x277D86220];
          v12 = "%s: Savage Pre Auth failed, status = 0x%x\n";
LABEL_28:
          p_buf = &v17;
          v14 = 18;
          goto LABEL_29;
        }
      }

      else
      {
        DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, a2, buf, DWORD2(buf), a5);
        if (DataFile)
        {
          v10 = DataFile;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136315394;
            v18 = "ISP_SavageAuth";
            v19 = 1024;
            v20 = v10;
            v11 = MEMORY[0x277D86220];
            v12 = "%s: Data file load failed, status = 0x%x\n";
            goto LABEL_28;
          }
        }

        else
        {
          v10 = IOConnectCallScalarMethod(*(this + 1086), 0x6Eu, v22, 1u, 0, 0);
          if (v10)
          {
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
            {
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v17 = 136315394;
              v18 = "ISP_SavageAuth";
              v19 = 1024;
              v20 = v10;
              v11 = MEMORY[0x277D86220];
              v12 = "%s: Savage Auth failed, status = 0x%x\n";
              goto LABEL_28;
            }
          }
        }
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "ISP_SavageAuth";
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Invalid data file arguments\n", &buf, 0xCu);
      }

      return 3758096385;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v10 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "ISP_SavageAuth";
      v11 = MEMORY[0x277D86220];
      v12 = "%s: Invalid connection\n";
      p_buf = &buf;
      v14 = 12;
LABEL_29:
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, v12, p_buf, v14);
    }
  }

  return v10;
}

uint64_t H16ISP::H16ISPDevice::CopyFileToBuffer(H16ISP::H16ISPDevice *this, const char *__filename, unsigned __int8 **a3, uint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = 3758097090;
  if (a3 && a4)
  {
    *a3 = 0;
    *a4 = 0;
    v8 = fopen(__filename, "rb");
    if (v8)
    {
      v9 = v8;
      fseeko(v8, 0, 2);
      v10 = ftello(v9);
      fseeko(v9, 0, 0);
      v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v13 = fread(v11, 1uLL, v10, v9);
        if (v13 == v10)
        {
          *a3 = v12;
          *a4 = v10;
          v14 = v10;
        }

        else
        {
          v14 = v13;
          free(v12);
        }
      }

      else
      {
        v14 = 0;
      }

      fclose(v9);
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v4 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = "CopyFileToBuffer";
        v18 = 2080;
        v19 = __filename;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v14;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Trying to use %s: Size = %lld (== %lld ?);\n", &v16, 0x2Au);
        return 0;
      }
    }

    else
    {
      return 3758097136;
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::SendSysConfigCalibrationDataByKey(H16ISP::H16ISPDevice *a1, uint64_t a2, const __CFDictionary *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  DataFile = 3758097090;
  BytePtr = 0;
  *v19 = 0;
  if (a2)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      if (*(a2 + 4) >= 1024)
      {
        v25 = 0u;
        v26 = 0u;
        memset(__str, 0, sizeof(__str));
        v8 = snprintf(__str, 0x40uLL, "%s%s.%s", "/usr/local/share/firmware/isp/", v5, "DAT");
        v9 = H16ISP::H16ISPDevice::CopyFileToBuffer(v8, __str, &BytePtr, v19);
        if (v9)
        {
          if (!a3)
          {
            goto LABEL_34;
          }

          Value = CFDictionaryGetValue(a3, *(a2 + 16));
          if (!Value)
          {
            goto LABEL_34;
          }

          v11 = CFRetain(Value);
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a2 + 8);
            *buf = 136315394;
            v21 = "SendSysConfigCalibrationDataByKey";
            v22 = 2080;
            v23 = v12;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Using %s from unit info plist\n", buf, 0x16u);
          }

          if (!v11)
          {
LABEL_34:
            v13 = *MEMORY[0x277CD28A0];
            v14 = IOServiceNameMatching("AppleH16CamIn");
            MatchingService = IOServiceGetMatchingService(v13, v14);
            v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", *(a2 + 24), *MEMORY[0x277CBECE8], 3u);
            if (!v11)
            {
              return 3758097084;
            }
          }

          *v19 = CFDataGetLength(v11);
          BytePtr = CFDataGetBytePtr(v11);
        }

        else
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v21 = __str;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loaded calibration file from override path: %s\n", buf, 0xCu);
          }

          v11 = 0;
        }

        DataFile = 0;
        if (BytePtr && *v19)
        {
          DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(a1, *a2 | 0x80000000, BytePtr, v19[0], *(a2 + 4));
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a2 + 8);
            *__str = 136315906;
            *&__str[4] = "SendSysConfigCalibrationDataByKey";
            *&__str[12] = 2080;
            *&__str[14] = v16;
            *&__str[22] = 2048;
            *&__str[24] = *v19;
            LOWORD(v25) = 1024;
            *(&v25 + 2) = DataFile;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - %s - length = %ld; status = %08x\n", __str, 0x26u);
          }
        }

        if (!v9 && BytePtr)
        {
          free(BytePtr);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  return DataFile;
}

void H16ISP::fdrLogMessages(H16ISP *this, uint64_t a2, const char *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "fdrLogMessages";
    v6 = 2080;
    v7 = a2;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - %s\n", &v4, 0x16u);
  }
}

uint64_t H16ISP::H16ISPDevice::isYonkersSensorSupported(H16ISP::H16ISPDevice *this, unsigned int *a2)
{
  v2 = 0;
  v3 = *(this + 538);
  result = *(v3 + 648);
  for (i = (v3 + 16); ; i += 26)
  {
    if (*(i - 2))
    {
      if (*i == 1718776695 || *i == 1718775412)
      {
        break;
      }
    }

    if (++v2 == 6)
    {
      return result;
    }
  }

  *a2 = v2;
  return result;
}

BOOL H16ISP::H16ISPDevice::isSavageSensorSupported(H16ISP::H16ISPDevice *this, unsigned int *a2)
{
  v2 = 0;
  v3 = *(this + 538) + 16;
  v4 = 1;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 += 26;
    if (v6 == 1718186595 && *(v3 - 8) == 1)
    {
      break;
    }

    v4 = v2 < 5;
    v3 = v5;
    if (++v2 == 6)
    {
      return 0;
    }
  }

  *a2 = v2;
  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_IsSupportedFrontAutoFocus(H16ISP::H16ISPDevice *this)
{
  output = 0;
  outputCnt = 1;
  result = *(this + 1086);
  if (result)
  {
    if (IOConnectCallScalarMethod(result, 0x53u, 0, 0, &output, &outputCnt))
    {
      v2 = 1;
    }

    else
    {
      v2 = output == 0;
    }

    return !v2;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetFlickerDetectorHWType(uint64_t result, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(*(result + 4304) + 668);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetDARTCacheTTL(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x1Au, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableMIPIClockAdjustments(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x1Bu, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ClockSet(H16ISP::H16ISPDevice *this, char a2)
{
  bzero(v5, 0xCuLL);
  v6 = 32;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessStart(H16ISP::H16ISPDevice *a1, unsigned int a2, _WORD *a3)
{
  result = 3758097090;
  if (a2 <= 9 && ((0x2FFu >> a2) & 1) != 0)
  {
    v6 = word_2249D2680[a2];
    bzero(v7, 0x10uLL);
    v8 = 303;
    v9 = v6;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessStop(H16ISP::H16ISPDevice *this, __int16 a2)
{
  bzero(v5, 0x10uLL);
  v7 = a2;
  v6 = 304;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessGeneric(uint64_t a1, void *inputStruct, mach_port_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  if (a3)
  {
    v6 = 0u;
    return IOConnectCallAsyncMethod(v3, 0x27u, a3, &reference, 8u, 0, 0, inputStruct, 0x478uLL, 0, 0, 0, 0);
  }

  else
  {

    return IOConnectCallStructMethod(v3, 0x27u, inputStruct, 0x478uLL, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcess(uint64_t a1, void *inputStruct, mach_port_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  if (a3)
  {
    v6 = 0u;
    return IOConnectCallAsyncMethod(v3, 0x26u, a3, &reference, 8u, 0, 0, inputStruct, 0x3C8uLL, 0, 0, 0, 0);
  }

  else
  {

    return IOConnectCallStructMethod(v3, 0x26u, inputStruct, 0x3C8uLL, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_GeneralProcessBuffers(uint64_t a1, void *inputStruct, mach_port_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  if (a3)
  {
    v6 = 0u;
    return IOConnectCallAsyncMethod(v3, 0x71u, a3, &reference, 8u, 0, 0, inputStruct, 0x628uLL, 0, 0, 0, 0);
  }

  else
  {

    return IOConnectCallStructMethod(v3, 0x71u, inputStruct, 0x628uLL, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::GetMultiCamSessionStatus(H16ISP::H16ISPDevice *a1, void *a2, unsigned __int16 *a3)
{
  bzero(v9, 0xB4uLL);
  v10 = 13315;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0xB4u, 0, 0xFFFFFFFF);
  v7 = v11;
  memcpy(a2, &v12, 28 * v11);
  *a3 = v7;
  return v6;
}

uint64_t H16ISP::H16ISPDevice::EnableTimewarpRecording(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 14592;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTimewarpParameters(H16ISP::H16ISPDevice *this, int a2, char a3, int a4, int a5, int a6)
{
  bzero(v13, 0x1CuLL);
  v14 = 14593;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTimewarpForceFPS(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 14594;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetTimeOfFlightProjectorMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x4Au, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetJasperStatistics(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 100;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x4Eu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::GetDriverPerformanceMetrics(uint64_t a1, void *outputStruct)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097112;
  }

  v4 = 8;
  return IOConnectCallMethod(v2, 0x6Fu, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
}

uint64_t H16ISP::H16ISPDevice::GetDriverKextInfo(uint64_t a1, void *outputStruct)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097112;
  }

  v4 = 75;
  return IOConnectCallMethod(v2, 0x70u, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
}

uint64_t H16ISP::H16ISPDevice::ISP_MapMPMMemory(H16ISP::H16ISPDevice *this, uint64_t a2, uint64_t a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x54u, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_UnmapMPMMemory(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x55u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetLowMemoryMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x6Au, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetLowMemoryMode(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  result = 3758097084;
  v4 = *(this + 1086);
  if (v4)
  {
    if (a2)
    {
      output = 0;
      outputCnt = 1;
      result = IOConnectCallScalarMethod(v4, 0x6Cu, 0, 0, &output, &outputCnt);
      if (!result)
      {
        *a2 = output != 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetDeskViewEnabled(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2640;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverCallbackBlock(uint64_t a1, uint64_t a2)
{
  *(a1 + 4680) = a2;
  v2 = *(a1 + 4712);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetCallbackBlock(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverCallbackPtr(H16ISP::H16ISPDevice *this, void (*a2)(__CVBuffer *, CMTime *__struct_ptr))
{
  *(this + 586) = a2;
  v2 = *(this + 589);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetCallbackPtr(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverMessageCallbackBlock(uint64_t a1, uint64_t a2)
{
  *(a1 + 4696) = a2;
  v2 = *(a1 + 4712);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetMessageCallbackBlock(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverMessageCallbackPtr(H16ISP::H16ISPDevice *this, void (*a2)(unsigned int, unsigned int, unsigned int))
{
  *(this + 588) = a2;
  v2 = *(this + 589);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetMessageCallbackPtr(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioTestMode(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  *(this + 584) = a2;
  v2 = *(this + 589);
  if (v2)
  {
    H16ISP::DCSAudioAccelManager::SetTestMode(v2, a2);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_EnableAudioAccelStreaming(H16ISP::H16ISPDevice *this, int a2, uint64_t a3, H16ISP::DCSAudioAccelManager **a4)
{
  result = *(this + 589);
  if (!a2)
  {
    if (!result)
    {
      return result;
    }

    v8 = 0;
    if (!H16ISP::DCSAudioAccelManager::GetStreamingStatus(result, &v8))
    {
      if (v8)
      {
        result = H16ISP::DCSAudioAccelManager::StopStreaming(*(this + 589));
        if (result)
        {
          return result;
        }

        result = H16ISP::DCSAudioAccelManager::DestroyStreamSession(*(this + 589));
        if (result)
        {
          return result;
        }

        result = H16ISP::DestroyAudioAccelManager(this + 589, v6);
        if (result)
        {
          return result;
        }

        *(this + 589) = 0;
      }

      return 0;
    }

    return 3758097084;
  }

  if (!result)
  {
    H16ISP::CreateAudioAccelManager(this, (this + 4672), (this + 4712), a4);
  }

  v7 = 0;
  if (H16ISP::DCSAudioAccelManager::GetStreamingStatus(result, &v7))
  {
    return 3758097084;
  }

  if (v7)
  {
    return 0;
  }

  result = H16ISP::DCSAudioAccelManager::CreateStreamSession(*(this + 589));
  if (!result)
  {
    result = H16ISP::DCSAudioAccelManager::StartStreaming(*(this + 589));
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_GetAudioAccelStreaming(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  v3 = *(this + 589);
  if (v3)
  {
    v6 = 0;
    if (H16ISP::DCSAudioAccelManager::GetStreamingStatus(v3, &v6))
    {
      return 3758097084;
    }

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_EnableAudio(H16ISP::H16ISPDevice *this, char a2, char a3)
{
  bzero(v7, 0xCuLL);
  v8 = -24576;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_GetAudioConfig(H16ISP::H16ISPDevice *a1, void *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  bzero(a2, 0x18uLL);
  *(a2 + 2) = -24574;

  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, a2, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_DCS_SetAudioAccelConfig(H16ISP::H16ISPDevice *this, char a2, char a3, char a4, char a5)
{
  bzero(v11, 0x10uLL);
  v12 = -24575;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetExclaveDeviceType(H16ISP::H16ISPDevice *this)
{
  v1 = **(this + 538);
  if (v1 > 96)
  {
    if ((v1 - 100) < 4)
    {
      return 3;
    }

    if ((v1 - 97) < 3)
    {
      return 7;
    }

    if ((v1 - 237) < 3)
    {
      return 9;
    }
  }

  else if (v1 > 68)
  {
    if ((v1 - 69) < 4)
    {
      return 1;
    }

    if (v1 == 79)
    {
      return 8;
    }
  }

  else
  {
    if ((v1 - 51) < 4)
    {
      return 0;
    }

    if (v1 == 58)
    {
      return 4;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t H16ISP::H16ISPDevice::SetupConclave(H16ISP::H16ISPDevice *this, int a2, BOOL *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(this + 4288))
  {
    bzero(v22, 0x20CuLL);
    if (ispExclaveKitCommand())
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
      }

      v7 = 3758097087;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        H16ISP::H16ISPDevice::SetupConclave();
      }
    }

    else
    {
      bzero(v41, 0x30CuLL);
      v40 = 1;
      ExclaveDeviceType = H16ISP::H16ISPDevice::GetExclaveDeviceType(this);
      if (ExclaveDeviceType == -1)
      {
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v12 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
        }

        v7 = 3758097084;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          H16ISP::H16ISPDevice::SetupConclave();
        }
      }

      else
      {
        v41[130] = ExclaveDeviceType;
        if (ispExclaveKitCommand())
        {
          v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
          {
            v11 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
          }

          v7 = 3758097087;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            H16ISP::H16ISPDevice::SetupConclave();
          }
        }

        else
        {
          bzero(v24, 0x30CuLL);
          v23 = 65541;
          v24[130] = a2;
          if (a3)
          {
            *(v39 + 15) = *(a3 + 239);
            v13 = *(a3 + 13);
            v37 = *(a3 + 12);
            v38 = v13;
            v39[0] = *(a3 + 14);
            v14 = *(a3 + 9);
            v33 = *(a3 + 8);
            v34 = v14;
            v15 = *(a3 + 11);
            v35 = *(a3 + 10);
            v36 = v15;
            v16 = *(a3 + 5);
            v29 = *(a3 + 4);
            v30 = v16;
            v17 = *(a3 + 7);
            v31 = *(a3 + 6);
            v32 = v17;
            v18 = *(a3 + 1);
            v25 = *a3;
            v26 = v18;
            v19 = *(a3 + 3);
            v27 = *(a3 + 2);
            v28 = v19;
            if (ispExclaveKitCommand())
            {
              v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
              {
                v20 = os_log_create("com.apple.isp", "exclaves");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v20;
              }

              v7 = 3758097087;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::SetupConclave();
              }
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
            {
              v21 = os_log_create("com.apple.isp", "exclaves");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v21;
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              H16ISP::H16ISPDevice::SetupConclave();
            }

            return 3758096385;
          }
        }
      }
    }
  }

  else
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
    }

    v7 = 3758097095;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      H16ISP::H16ISPDevice::SetupConclave();
    }
  }

  return v7;
}

uint64_t H16ISP::H16ISPDevice::ISP_SecureStreamConfig(uint64_t a1, void *inputStruct, void *outputStruct)
{
  outputStructCnt = 60;
  v3 = *(a1 + 4344);
  if (v3)
  {
    return IOConnectCallStructMethod(v3, 0x58u, inputStruct, 0x14uLL, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::SetExclusiveExclaveStreamingMode(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  v3 = a3;
  v6 = 1 << a2;
  if (a3)
  {
    v7 = *(this + 1073) | v6;
  }

  else
  {
    v7 = *(this + 1073) & ~v6;
  }

  *(this + 1073) = v7;
  bzero(v9, 0x10uLL);
  v11 = a2;
  v10 = -28670;
  v12 = v3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetExclaveOutputMetadata(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v9 = a2;
  v8 = -28669;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v9, 0x210uLL);
  v9[130] = a2;
  if (ispExclaveKitCommand())
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
    }

    started = 3758097084;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices();
    }
  }

  else if (v10)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      operator new();
    }

    *v7 = v10;
    started = H16ISPExclaveDebugService::StartDebugService(v7, a2);
    if (started)
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices();
      }
    }
  }

  else
  {
    return 0;
  }

  return started;
}

uint64_t H16ISP::H16ISPDevice::PowerOnExclaveKit(H16ISP::H16ISPDevice *this, int a2, BOOL *a3)
{
  v4 = H16ISP::H16ISPDevice::SetupConclave(this, a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      H16ISP::H16ISPDevice::PowerOnExclaveKit();
    }
  }

  else
  {
    bzero(v9, 0x208uLL);
    v9[130] = a2;
    if (ispExclaveKitCommand())
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
      }

      v5 = 3758097087;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::PowerOnExclaveKit();
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::PowerOffExclaveKit(H16ISP::H16ISPDevice *this, int a2)
{
  v3 = *(this + 16);
  if (v3)
  {
    H16ISPExclaveDebugService::StopDebugService(v3);
  }

  bzero(v7, 0x208uLL);
  v7[130] = a2;
  if (!ispExclaveKitCommand())
  {
    return 0;
  }

  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
  }

  v5 = 3758097087;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::PowerOffExclaveKit();
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_RegisterEPipeDoneCallback(uint64_t a1, _DWORD *inputStruct)
{
  v7 = *MEMORY[0x277D85DE8];
  result = 3758097084;
  v4 = *(a1 + 4344);
  if (v4)
  {
    if (inputStruct)
    {
      v6 = 0u;
      return IOConnectCallAsyncMethod(v4, 0x59u, inputStruct[6], &reference, 8u, 0, 0, inputStruct, 0x20uLL, 0, 0, 0, 0);
    }

    else
    {
      return 3758097090;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_UnregisterEPipeDoneCallback(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = 3758097090;
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  if (*(this + 1167) <= a2)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_UnregisterEPipeDoneCallback();
    }
  }

  else
  {
    v6[0] = a2;
    return IOConnectCallScalarMethod(v4, 0x5Au, v6, 1u, 0, 0);
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::GetExclaveCameraConfig(uint64_t a1, unsigned int a2, unsigned int a3, void *__dst)
{
  v4 = 3758097090;
  if (*(a1 + 4))
  {
    if (*(a1 + 4668) > a2)
    {
      v5 = *(a1 + 40) + 432 * a2;
      if (*v5 > a3)
      {
        memmove(__dst, (*(v5 + 16) + 60 * a3), 0x3CuLL);
        return 0;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v4 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetExclaveCameraConfig();
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ReadPropertyValueExclave(H16ISP::H16ISPDevice *this, unsigned int a2, int a3, unsigned int *a4)
{
  v4 = 3758097084;
  if (!*(this + 1086))
  {
    return 3758097112;
  }

  if (*(this + 1167) <= a2)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    v4 = 3758097090;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ReadPropertyValueExclave();
    }
  }

  else
  {
    bzero(v11, 0x214uLL);
    v11[130] = a2;
    v11[131] = a3;
    if (ispExclaveKitCommand())
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ReadPropertyValueExclave();
      }
    }

    else
    {
      v4 = 0;
      *a4 = v11[132];
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::WritePropertyValueExclave(H16ISP::H16ISPDevice *this, unsigned int a2, int a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = 3758097084;
  if (!*(this + 1086))
  {
    return 3758097112;
  }

  if (*(this + 1167) <= a2)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
    }

    v4 = 3758097090;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::WritePropertyValueExclave();
    }
  }

  else
  {
    bzero(v13, 0x208uLL);
    v13[130] = a2;
    v13[131] = a3;
    v13[132] = a4;
    v8 = ispExclaveKitCommand();
    if (v8)
    {
      v9 = v8;
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v15 = "WritePropertyValueExclave";
        v16 = 1024;
        v17 = a3;
        v18 = 1024;
        v19 = a2;
        v20 = 1024;
        v21 = v9;
        _os_log_error_impl(&dword_2247DB000, v10, OS_LOG_TYPE_ERROR, "%s - failed to write property=0x%08x channel=%u err=%u\n", buf, 0x1Eu);
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::SetExclaveAEConfig(H16ISP::H16ISPDevice *a1, int a2, __int128 *a3)
{
  v3 = a3[1];
  v7 = *a3;
  *v5 = 0x900400000000;
  v6 = a2;
  v8 = v3;
  *v9 = a3[2];
  *&v9[12] = *(a3 + 44);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v5, 0x48u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_IsSafeToStartConclave(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097111;
  }

  output = 0;
  outputCnt = 1;
  v4 = IOConnectCallScalarMethod(v2, 0x5Du, 0, 0, &output, &outputCnt);
  if (v4)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_IsSafeToStartConclave();
    }
  }

  else
  {
    *a2 = output != 0;
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetPDPConfig(uint64_t a1, unsigned int a2, void *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  outputStruct = 0;
  v9 = -3;
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097111;
  }

  input[0] = a2;
  v5 = IOConnectCallMethod(v3, 0x5Eu, input, 1u, 0, 0, 0, 0, &outputStruct, &v9);
  v6 = v5;
  if (v5)
  {
    H16ISP::H16ISPDevice::ISP_GetPDPConfig(v5);
  }

  else
  {
    memcpy(a3, outputStruct, v9);
  }

  return v6;
}

uint64_t H16ISP::H16ISPDevice::SetExclaveTargetFrameRate(H16ISP::H16ISPDevice *this, int a2, float a3)
{
  v4 = 0x900700000000;
  v5 = a2;
  v6 = vcvts_n_u32_f32(a3, 8uLL);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v4, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetDCSConfig(uint64_t a1, void *outputStruct)
{
  v4 = 8;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x73u, 0, 0, 0, 0, 0, 0, outputStruct, &v4);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::GetChannelSensorID(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86220];
  if (*(this + 4))
  {
    if (*(this + 1167) > a2)
    {
      v4 = *(*(this + 5) + 432 * a2 + 64);
      goto LABEL_9;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetChannelSensorID();
    }
  }

  v4 = 0;
LABEL_9:
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "GetChannelSensorID";
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - sensorID: 0x%04X, chan: %d\n", &v6, 0x18u);
  }

  return v4;
}

float H16ISP::H16ISPDevice::ISP_GetOpticalfNumber(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  result = -1.0;
  if (*(this + 4) == 1 && *(this + 1167) > a2)
  {
    return *(*(this + 6) + 156 * a2 + 140);
  }

  return result;
}

float H16ISP::H16ISPDevice::ISP_GetOpticalEffectiveFocalLength(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  result = -1.0;
  if (*(this + 4) == 1 && *(this + 1167) > a2)
  {
    return *(*(this + 6) + 156 * a2 + 144);
  }

  return result;
}

float H16ISP::H16ISPDevice::ISP_GetOpticalManualParamsFoV(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  result = -1.0;
  if (*(this + 4) == 1 && *(this + 1167) > a2)
  {
    return *(*(this + 6) + 156 * a2 + 152);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_UnloadDataFile(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v5 = *(this + 1086);
  if (v5)
  {
    input[0] = a2;
    input[1] = a3;
    v6 = IOConnectCallScalarMethod(v5, 0x67u, input, 2u, 0, 0);
  }

  else
  {
    v6 = 3758097084;
  }

  printf("Unload data file: channel: %d, type: %d, status: 0x%08X\n", a2, a3, v6);
  return v6;
}

uint64_t H16ISP::H16ISPDevice::ISP_SavagePrePersonalize(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SavagePreFusing(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 1u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_YonkersPrePersonalize(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x3Fu, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_YonkersPreFusing(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x40u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetStrobeState(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097111;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x60u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetLidarState(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097111;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x61u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetCILDutyCycle(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  if (!*(this + 1086))
  {
    return 3758097111;
  }

  if (a2 >= 0xFFFF)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2;
  }

  bzero(v6, 0x10uLL);
  v8 = v3;
  v7 = 1551;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v6, 0x10u, 0, 0xFFFFFFFF);
  if (v4)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_SetCILDutyCycle();
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCILDutyCycleRange(H16ISP::H16ISPDevice *this, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097111;
  }

  output = 0;
  v10 = 0;
  outputCnt = 2;
  result = IOConnectCallScalarMethod(v3, 0x68u, 0, 0, &output, &outputCnt);
  v7 = v10;
  *a2 = output;
  *a3 = v7;
  return result;
}

_BYTE *OUTLINED_FUNCTION_1_9(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_6_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

H16ISP::H16ISPDeviceImpactManager *H16ISP::H16ISPDeviceImpactManager::H16ISPDeviceImpactManager(H16ISP::H16ISPDeviceImpactManager *this, H16ISP::H16ISPDevice *a2)
{
  *this = a2;
  v3 = dispatch_group_create();
  *(this + 1) = v3;
  if (v3)
  {
    v4 = malloc_type_malloc(0x48uLL, 0x1000040773C5DECuLL);
    if (v4)
    {
      v5 = v4;
      pthread_mutex_init(v4, 0);
      LOBYTE(v5[1].__sig) = 1;
      dispatch_set_context(*(this + 1), v5);
      dispatch_set_finalizer_f(*(this + 1), H16ISP::finalize_context);
    }
  }

  return this;
}

void H16ISP::finalize_context(pthread_mutex_t *this, void *a2)
{
  pthread_mutex_destroy(this);

  free(this);
}

void H16ISP::H16ISPDeviceImpactManager::~H16ISPDeviceImpactManager(H16ISP::H16ISPDeviceImpactManager *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    context = dispatch_get_context(*(this + 1));
    if (context)
    {
      v4 = context;
      pthread_mutex_lock(context);
      LOBYTE(v4[1].__sig) = 0;
      pthread_mutex_unlock(v4);
      v2 = *(this + 1);
    }

    dispatch_release(v2);
    *(this + 1) = 0;
  }

  *this = 0;
}

uint64_t H16ISP::QueryDeviceImpactsInternal(NSObject *a1, int a2, const void *a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CC1C60]);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v6 isDeviceImpactAvailable])
    {
      if (a1 && dispatch_get_context(a1))
      {
        v7 = _Block_copy(a3);
        dispatch_group_enter(a1);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = ___ZN6H16ISPL26QueryDeviceImpactsInternalEPU28objcproto17OS_dispatch_group8NSObjectbU13block_pointerFvP25sCIspCmdDeviceImpactEventhE_block_invoke;
        v36[3] = &unk_27853B710;
        v36[4] = a1;
        v36[5] = v7;
        [v6 queryDeviceImpactsWithCompletion:v36];
        if (a2)
        {
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___ZN6H16ISPL26QueryDeviceImpactsInternalEPU28objcproto17OS_dispatch_group8NSObjectbU13block_pointerFvP25sCIspCmdDeviceImpactEventhE_block_invoke_2;
          block[3] = &unk_27853B738;
          block[4] = v6;
          dispatch_group_notify(a1, global_queue, block);
        }

        else
        {
          dispatch_group_wait(a1, 0xFFFFFFFFFFFFFFFFLL);
        }

        return 0;
      }

      v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
      {
        v27 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v27;
      }

      v17 = 3758097084;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        H16ISP::QueryDeviceImpactsInternal(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }

    else
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v19;
      }

      v17 = 3758097112;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        H16ISP::QueryDeviceImpactsInternal(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

LABEL_14:

    return v17;
  }

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    H16ISP::QueryDeviceImpactsInternal(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = 3758097095;
  if (v6)
  {
    goto LABEL_14;
  }

  return v17;
}

void ___ZNK6H16ISP25H16ISPDeviceImpactManager17SendDeviceImpactsEv_block_invoke(uint64_t a1, char *a2, unsigned int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 32);
  v3 = MEMORY[0x277D86220];
  if (a3)
  {
    v4 = a3;
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    v6 = a2 + 8;
    do
    {
      if (v5 == v3)
      {
        v5 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *v6;
        v8 = *(v6 + 4);
        v9 = *(v6 - 8);
        v10 = *(v6 - 1);
        *buf = 136316162;
        v18 = "SendDeviceImpacts_block_invoke";
        v19 = 1024;
        v20 = v7;
        v21 = 2048;
        v22 = v8;
        v23 = 1024;
        v24 = v9;
        v25 = 2048;
        v26 = v10;
        _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_INFO, "%s - Device Impact Callback: impactType=%u date=%lld simulated=%d peakAccel=%f\n", buf, 0x2Cu);
        v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      }

      v6 += 20;
      --v4;
    }

    while (v4);
  }

  v11 = H16ISP::H16ISPDevice::SendDeviceImpactSamples(*v14, a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == v3)
    {
      v13 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___ZNK6H16ISP25H16ISPDeviceImpactManager17SendDeviceImpactsEv_block_invoke_cold_1(v12, v13);
    }
  }
}

void ___ZN6H16ISPL26QueryDeviceImpactsInternalEPU28objcproto17OS_dispatch_group8NSObjectbU13block_pointerFvP25sCIspCmdDeviceImpactEventhE_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  context = dispatch_get_context(*(a1 + 32));
  memset(v27, 0, 220);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a2;
  v3 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
LABEL_3:
    v7 = 0;
    v8 = 0;
    v9 = v5;
    v10 = v5 <= 0xBu;
    v11 = 11 - v5;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v27 + 20 * v9;
    v13 = 20 * v11;
    while (1)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(obj);
      }

      if (v13 == v7)
      {
        break;
      }

      v14 = *(*(&v22 + 1) + 8 * v8);
      v15 = &v12[v7];
      [objc_msgSend(v14 "date")];
      v17 = (v16 * 1000000000.0);
      *(v15 + 2) = [v14 impactType];
      *(v15 + 12) = v17;
      *v15 = [v14 isSimulated];
      [v14 peakAcceleration];
      *&v18 = v18;
      *(v15 + 1) = LODWORD(v18);
      LOBYTE(v9) = v9 + 1;
      ++v8;
      v7 += 20;
      if (v4 == v8)
      {
        v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        v5 = v9;
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  pthread_mutex_lock(context);
  if (LOBYTE(context[1].__sig) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  pthread_mutex_unlock(context);
  _Block_release(*(a1 + 40));
  dispatch_group_leave(*(a1 + 32));
}

double bilinearInterpolate(double *a1, double *a2, double a3, double a4)
{
  v4 = a3 - *a2;
  v5 = a2[2] - a3;
  return ((v5 * a1[1] + v4 * a1[3]) / (v4 + v5) * (a2[3] - a4) + (a4 - a2[1]) * ((v5 * *a1 + v4 * a1[2]) / (v4 + v5))) / (a4 - a2[1] + a2[3] - a4);
}

double InitCubicPoly(double *a1, double a2, double a3, double a4, double a5)
{
  *a1 = a2;
  a1[1] = a4;
  v5 = a3 * 3.0 + a2 * -3.0 + a4 * -2.0 - a5;
  result = a3 * -2.0 + a2 * 2.0 + a4 + a5;
  a1[2] = v5;
  a1[3] = result;
  return result;
}

double InitNonuniformCatmullRom(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a3 - a2) / a6 - (a4 - a2) / (a6 + a7);
  v9 = (a4 - a3) / a7;
  *&v8 = v9 + v8;
  v10 = (a5 - a4) / a8 + v9 - (a5 - a3) / (a7 + a8);
  *&v8 = *&v8 * a7;
  v11 = v10 * a7;
  v12 = *&v8;
  v13 = v11;
  *a1 = a3;
  a1[1] = v12;
  v14 = a4 * 3.0 + a3 * -3.0 + v12 * -2.0 - v13;
  result = a4 * -2.0 + a3 * 2.0 + v12 + v13;
  a1[2] = v14;
  a1[3] = result;
  return result;
}

void bicubicInterpolateNonuniform(double (*a1)[4], double *a2, double *a3, double a4, double a5)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = cubicInterpolateNonuniform(a1, a3, a5);
  v10[1] = cubicInterpolateNonuniform(&(*a1)[4], a3, a5);
  v10[2] = cubicInterpolateNonuniform(&(*a1)[8], a3, a5);
  v10[3] = cubicInterpolateNonuniform(&(*a1)[12], a3, a5);
  cubicInterpolateNonuniform(v10, a2, a4);
}

void ComputeIdealLs(unsigned __int16 *a1, long double *a2, unsigned int a3)
{
  v3 = a1[7];
  if (a1[7])
  {
    v6 = 0;
    v7 = vcvtd_n_f64_u32(*a1 + 1, 1uLL) + a1[8];
    v8 = a1[6];
    v9 = vcvtd_n_f64_u32(a1[1] + 1, 1uLL) + a1[9];
    v10 = 0.0;
    do
    {
      if (a1[6])
      {
        v11 = a1[4];
        v12 = (a1[5] + v6 * a1[3]) - v9;
        v13 = v12 * v12;
        v14 = a1[6];
        do
        {
          v15 = sqrt((v11 - v7) * (v11 - v7) + v13);
          if (v15 > v10)
          {
            v10 = v15;
          }

          v11 += a1[2];
          --v14;
        }

        while (v14);
      }

      ++v6;
    }

    while (v6 != v3);
    v16 = pow(a3 / 100.0, 0.25);
    v17 = acos(v16);
    v18 = 0;
    v19 = v10 / tan(v17);
    do
    {
      if (v8)
      {
        v20 = a1[4];
        v21 = a1[2];
        v22 = (a1[5] + v18 * a1[3]) - v9;
        v23 = v22 * v22;
        v24 = v8;
        v25 = a2;
        do
        {
          v26 = atan(sqrt((v20 - v7) * (v20 - v7) + v23) / v19);
          v27 = cos(v26);
          *v25++ = pow(v27, 4.0);
          v20 += v21;
          --v24;
        }

        while (v24);
      }

      ++v18;
      a2 += v8;
    }

    while (v18 != v3);
  }
}

uint64_t FTCInterpolateNvm(uint64_t result, uint64_t a2, unsigned __int16 *a3, _WORD *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, float a12)
{
  v15 = a3[7];
  if (!a3[7])
  {
    return result;
  }

  v16 = 0;
  v17 = a3[3];
  v18 = a3[2];
  v19 = a3[5];
  v20 = a4 + 28;
  v21 = a4 + 170;
  v22 = a3[4];
  v23 = a3[6];
  do
  {
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = 0;
    v25 = (v19 + v16 * v17);
    do
    {
      v26 = (v22 + v24 * v18);
      v27 = a4[20];
      if (a4[20])
      {
        v28 = 0;
        LOWORD(a12) = *a4;
        a12 = LODWORD(a12);
        while (v26 >= (*&v20[2 * v28] * a12))
        {
          if (v27 == ++v28)
          {
            v29 = a4[20];
            goto LABEL_12;
          }
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

LABEL_12:
      v30 = (v29 - 1);
      v31 = a4[21];
      LOWORD(a12) = a4[1];
      v32 = LODWORD(a12);
      if (a4[21])
      {
        v33 = 0;
        while (v25 >= (*&v21[2 * v33] * v32))
        {
          if (v31 == ++v33)
          {
            LOWORD(v33) = a4[21];
            break;
          }
        }

        if (!v29)
        {
          v30 = 0.0;
        }

        if (v33)
        {
          v34 = (v33 - 1);
          goto LABEL_24;
        }
      }

      else if (!v29)
      {
        v30 = 0.0;
      }

      v34 = 0.0;
LABEL_24:
      if (v30 >= (v27 - 2))
      {
        v30 = (v27 - 2);
      }

      v35 = (v31 - 2);
      v36 = vcvtmd_u64_f64(v30);
      if (v34 >= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v34;
      }

      v38 = vcvtmd_u64_f64(v37);
      v39 = v36 + v38 * v27;
      LOBYTE(v37) = *(a2 + v39);
      LOBYTE(v12) = *(a2 + v39 + 1);
      v12 = (*&v12 + -128.0) * 0.125 * 0.0078125 + 1.0;
      v40 = v36 + (v38 + 1) * v27;
      LOBYTE(v13) = *(a2 + v40);
      LOBYTE(v14) = *(a2 + v40 + 1);
      v41 = *&v14;
      v42 = (v41 + -128.0) * 0.125 * 0.0078125 + 1.0;
      LOWORD(v41) = *a4;
      *&v41 = LODWORD(v41);
      v43 = roundf(*&v20[2 * v36] * *&v41);
      v44 = roundf(*&v21[2 * v38] * v32);
      v14 = roundf(*&v20[2 * v36 + 2] * *&v41);
      a12 = roundf(*&v21[2 * v38 + 2] * v32);
      v45 = v26 - v43;
      v46 = v14 - v26;
      v47 = ((*&v13 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v42;
      v13 = v45 + v46;
      v48 = fmax(fmin(((a12 - v25) * ((((*&v37 + -128.0) * 0.125 * 0.0078125 + 1.0) * v46 + v45 * v12) / (v45 + v46)) + (v25 - v44) * (v47 / (v45 + v46))) / (v25 - v44 + a12 - v25), 2.0), 0.0);
      HIWORD(a12) = 0;
      *(result + 2 * (v24 + v23 * v16)) = llround(fmin(v48 * 4096.0, 65535.0));
      ++v24;
      v23 = a3[6];
    }

    while (v24 < v23);
    v15 = a3[7];
LABEL_31:
    ++v16;
  }

  while (v16 < v15);
  return result;
}

uint64_t LSCComputeGain(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unsigned int a7, int a8)
{
  v8 = *(a5 + 14);
  if (*(a5 + 14))
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a5 + 12);
    do
    {
      if (v11)
      {
        for (i = 0; i < v11; ++i)
        {
          v13 = i + v10 * v11;
          v14 = 1 << a6;
          if (a8 != 2)
          {
            LOWORD(v14) = llround(fmin(*(a3 + 8 * v13) / *(a4 + 8 * v13) * (1 << a6), a7));
          }

          *(result + 2 * v13) = v14;
          if (v14 > v9)
          {
            v9 = v14;
          }

          v11 = *(a5 + 12);
        }

        v8 = *(a5 + 14);
      }

      ++v10;
    }

    while (v10 < v8);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t ApplyFTCGain(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 12);
    do
    {
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = v11 + v7 * v10;
          LOWORD(a6) = *(result + 2 * v12);
          HIWORD(v13) = 17792;
          LOWORD(v13) = *(a3 + 2 * v12);
          a6 = fmin(((LODWORD(a6) * 4096.0) / v13), 65535.0);
          v14 = llround(a6);
          *(result + 2 * v12) = v14;
          if (v9 <= v14)
          {
            v9 = v14;
          }

          v10 = *(a4 + 12);
          ++v11;
        }

        while (v11 < v10);
        v6 = *(a4 + 14);
      }

      ++v8;
      ++v7;
    }

    while (v8 < v6);
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t CICComputeGain(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *(a4 + 14);
  if (*(a4 + 14))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a4 + 12);
    do
    {
      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = v10 + v6 * v9;
          v12 = llround(fmin(1.0 / *(a3 + 8 * v11) * (1 << a5), 65535.0));
          *(result + 2 * v11) = v12;
          if (v7 <= v12)
          {
            v7 = v12;
          }

          v9 = *(a4 + 12);
          ++v10;
        }

        while (v10 < v9);
        v5 = *(a4 + 14);
      }

      ++v8;
      ++v6;
    }

    while (v8 < v5);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t GICComputeGain(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a3 + 14);
  if (*(a3 + 14))
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 12);
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          *(result + 2 * (v8 + v5 * v7)) = llround(fmin((*(a2 + 8 * (v8 + v5 * v7)) + 1.0) * (1 << a4), 65535.0));
          v7 = *(a3 + 12);
          ++v8;
        }

        while (v8 < v7);
        v4 = *(a3 + 14);
      }

      ++v6;
      ++v5;
    }

    while (v6 < v4);
  }

  return result;
}

_WORD *flip(_WORD *result, int a2, int a3)
{
  v3 = (((a2 * a3) << 32) - 0x100000000) >> 31;
  if (v3 >= 1)
  {
    v4 = result + v3 - 2;
    do
    {
      v5 = *(v4 + 2);
      *(v4 + 2) = *result;
      *result++ = v5;
      v6 = v4 > result;
      v4 -= 2;
    }

    while (v6);
  }

  return result;
}

uint64_t FTCComputeFromNVMApple(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, unsigned __int16 *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, float a16, uint64_t a17)
{
  v64[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v21 = 0;
    do
    {
      v60[v21] = *(a5 + 4 * v21);
      ++v21;
    }

    while (a3 > v21);
  }

  if (a4)
  {
    v22 = 0;
    do
    {
      v60[v22 + 71] = *(a6 + 4 * v22);
      ++v22;
    }

    while (a4 > v22);
  }

  v23 = a3 - 1;
  v54 = vdupq_n_s64(0x3F847AE147AE147BuLL);
  v24 = a4 - 1;
  v64[0] = a1 + 18;
  v64[1] = a1 + 36;
  v64[2] = a1 + 54;
  v64[3] = a1 + 72;
  v53[0] = *(a1 + 14) >> 1;
  v25 = *(a1 + 16) >> 1;
  v53[1] = *(a1 + 16) >> 1;
  v57 = a3;
  v58 = a4;
  v55 = 0.98 / (a3 - 1);
  v56 = 0.98 / (a4 - 1);
  v59 = 0x406F400000000000;
  v61[0] = v53[0];
  v61[1] = v25;
  v62 = *(a1 + 20);
  v63 = *(a1 + 28);
  v52 = HIDWORD(v63);
  FTCInterpolateNvm(a17, a2, v61, v53, v63, v55, (a4 - 1), a12, a13, a14, a15, a16);
  if (HIWORD(v52))
  {
    v27 = 0;
    v28 = (a8 + (a4 & 0xFFFE));
    v29 = a17;
    do
    {
      if (v52)
      {
        v30 = 0;
        do
        {
          if (v30 < *a7 - 1 || v30 >= a7[v23] || v27 > *(v28 - 1) && v27 < *v28)
          {
            *(v29 + 2 * v30) = 4096;
          }

          ++v30;
        }

        while (v52 != v30);
      }

      ++v27;
      v29 += 2 * v52;
    }

    while (v27 != HIWORD(v52));
  }

  v31 = *a8;
  if (v31 > 1)
  {
    v32 = (v31 - 2);
    v33 = (a17 + 2 * v52 * v32);
    v34 = (a17 + 2 * (v52 + v52 * v32));
    do
    {
      v35 = v52;
      v36 = v34;
      v37 = v33;
      if (v52)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
          --v35;
        }

        while (v35);
      }

      v33 -= v52;
      v34 -= v52;
    }

    while (v32-- > 0);
  }

  v40 = a8[v24];
  if (v40 < a4)
  {
    v41 = (a17 + 2 * v52 * a8[v24]);
    v42 = 2 * v52;
    v43 = (a17 + 2 * (v40 - 1) * v52);
    do
    {
      v44 = v52;
      v45 = v43;
      v46 = v41;
      if (v52)
      {
        do
        {
          v47 = *v45++;
          *v46++ = v47;
          --v44;
        }

        while (v44);
      }

      ++v40;
      v41 = (v41 + v42);
      v43 = (v43 + v42);
    }

    while (v40 != a4);
  }

  v48 = 0;
  v49 = a1 + 92;
  do
  {
    v50 = v64[v48];
    v62 = *(v50 + 2);
    v63 = *(v50 + 10);
    result = ApplyFTCGain(v49 + 2 * *(v50 + 6), v50, a17, v61, v63, v26);
    ++v48;
  }

  while (v48 != 4);
  return result;
}

uint64_t LSCFlipApple(uint64_t result)
{
  v1 = 0;
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = result + 18;
  v9[1] = result + 36;
  v9[2] = result + 54;
  v9[3] = result + 72;
  do
  {
    v2 = v9[v1];
    v3 = (((*(v2 + 14) * *(v2 + 16)) << 32) - 0x100000000) >> 31;
    if (v3 >= 1)
    {
      v4 = *(v2 + 6);
      v5 = (result + 92 + 2 * v4);
      v6 = result + 90 + v3 + 2 * v4;
      do
      {
        v7 = *(v6 + 2);
        *(v6 + 2) = *v5;
        *v5++ = v7;
        v8 = v6 > v5;
        v6 -= 2;
      }

      while (v8);
    }

    ++v1;
  }

  while (v1 != 4);
  return result;
}

unint64_t LSCFlipPerModule(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1[1] * *a1;
  v5 = a1 + 264;
  v6 = (v4 - 1);
  v7 = a2 + v6;
  v8 = &a1[v6 + 264];
  do
  {
    v9 = v5;
    v10 = v8;
    v11 = a2;
    v12 = v7;
    do
    {
      *(v11 + v2) = v10[v2];
      result = v11 + v2 + 1;
      *(v12 + v2) = v9[v2];
      --v12;
      ++v11;
      --v10;
      ++v9;
    }

    while (v12 + v2 >= result);
    ++v3;
    v2 += v4;
  }

  while (v3 != 4);
  return result;
}

_WORD *averageGreen(_WORD *result, unsigned __int16 *a2, int a3, int a4)
{
  if (a4 * a3)
  {
    v4 = 0;
    do
    {
      v5 = (*a2 + *result) >> 1;
      *result++ = v5;
      *a2++ = v5;
      ++v4;
    }

    while (a4 * a3 > v4);
  }

  return result;
}

uint64_t LSCAverageGreenApple(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != *(result + 86))
  {
    LSCAverageGreenApple();
  }

  v2 = *(result + 34);
  if (v2 != *(result + 88))
  {
    LSCAverageGreenApple();
  }

  v3 = v2 * v1;
  if (v3)
  {
    v4 = 0;
    v5 = (result + 92 + 2 * *(result + 78));
    v6 = (result + 92 + 2 * *(result + 24));
    do
    {
      v7 = (*v5 + *v6) >> 1;
      *v6++ = v7;
      *v5++ = v7;
      ++v4;
    }

    while (v3 > v4);
  }

  return result;
}

uint64_t LSCComputeSNFRadialGains(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = 0;
  v86[4] = *MEMORY[0x277D85DE8];
  v9 = *(a3 + 14);
  v10 = *(a3 + 16);
  v86[0] = a3 + 18;
  v86[1] = a3 + 36;
  v86[2] = a3 + 54;
  v86[3] = a3 + 72;
  memset(v85, 0, 32);
  do
  {
    v85[v8] = a3 + 92 + 2 * *(v86[v8] + 6);
    ++v8;
  }

  while (v8 != 4);
  v11 = 0;
  v12 = vcvtd_n_f64_u32(v9, 1uLL);
  v13 = vcvtd_n_f64_u32(v10, 1uLL);
  v14 = a5 + v12;
  v15 = a6 + v13;
  v84[0] = 0;
  v84[1] = v9;
  v84[2] = 0;
  v84[3] = v9;
  v81 = 0;
  v82 = v10;
  v83 = v10;
  v80[0] = 0;
  v80[1] = 0;
  v16 = 0.0;
  do
  {
    v17 = (v14 - v84[v11]);
    v18 = (v15 - *(&v81 + v11 * 4));
    v19 = sqrt(v17 * v17 + v18 * v18);
    *(v80 + v11 * 4) = v19;
    if (v16 < v19)
    {
      v16 = v19;
    }

    ++v11;
  }

  while (v11 != 4);
  bzero(v79, 0x808uLL);
  bzero(v78, 0x404uLL);
  v20 = log2f(v16 * 0.0039062);
  v21 = 0;
  v22 = vcvtps_s32_f32(v20);
  *(a1 + 12) = v22;
  v23 = 256 << v22;
  do
  {
    v24 = 0;
    v25 = v86[v21];
    v26 = v25[1];
    v27 = v25[2];
    result = v25[7];
    v29 = v25[8] - 2;
    v30 = v85[v21];
    do
    {
      v31 = 0;
      v32 = 0;
      v33 = v84[v24] - v14;
      v34 = *(v80 + v24);
      v35 = *(&v81 + v24) - v15;
      do
      {
        v36 = vcvts_n_f32_u32(v31, 8uLL);
        if (v36 >= v16)
        {
          v36 = v16;
        }

        v37 = (v14 + ((v36 * v33) / v34)) * 0.5;
        v38 = (v15 + ((v36 * v35) / v34)) * 0.5;
        v39 = (v37 / v26) & ~((v37 / v26) >> 31);
        v40 = (v38 / v27) & ~((v38 / v27) >> 31);
        if (v39 >= result - 2)
        {
          v39 = result - 2;
        }

        if (v40 >= v29)
        {
          v40 = v29;
        }

        v41 = (v30 + 2 * v40 * result + 2 * v39);
        v42 = vcvts_n_f32_u32(*v41, 0xCuLL);
        v43 = vcvts_n_f32_u32(v41[1], 0xCuLL);
        v44 = (v30 + 2 * (v40 + 1) * result + 2 * v39);
        v45 = v39 * v26;
        v46 = v37 - v45;
        v47 = (v26 + v45) - v37;
        v48 = v78[v32];
        v79[v32] = v79[v32] + ((((v40 + 1) * v27) - v38) * ((v47 * v42 + v46 * v43) / (v46 + v47)) + (v38 - (v40 * v27)) * ((v47 * vcvts_n_f32_u32(*v44, 0xCuLL) + v46 * vcvts_n_f32_u32(v44[1], 0xCuLL)) / (v46 + v47))) / (v38 - (v40 * v27) + ((v40 + 1) * v27) - v38);
        v78[v32++] = v48 + 1;
        v31 += v23;
      }

      while (v32 != 257);
      ++v24;
    }

    while (v24 != 4);
    ++v21;
  }

  while (v21 != 4);
  for (i = 0; i != 257; ++i)
  {
    v50 = v78[i];
    v51 = v79[i];
    if (v50 >= 1)
    {
      v51 = v51 / v50;
      v79[i] = v51;
    }

    *(a1 + 14 + 2 * i) = vcvtd_n_s64_f64(1.0 / v51, 0xCuLL);
  }

  if (a2)
  {
    v52 = 0;
    v53 = 0.0;
    v54 = 0.0;
    do
    {
      v55 = v86[v52];
      v56 = *(v55 + 14);
      v57 = v85[v52];
      LODWORD(v55) = *(v55 + 16);
      v54 = v54 + vcvts_n_f32_u32(*(v57 + 2 * (v56 >> 1)), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * ((v56 >> 1) + (v55 - 1) * v56)), 0xCuLL);
      v53 = v53 + vcvts_n_f32_u32(*(v57 + 2 * (v55 >> 1) * v56), 0xCuLL) + vcvts_n_f32_u32(*(v57 + 2 * (v56 + (v55 >> 1) * v56 - 1)), 0xCuLL);
      ++v52;
    }

    while (v52 != 4);
    v58 = 0;
    v59 = 0;
    v60 = v54 * 0.125;
    v61 = v53 * 0.125;
    v62 = v79;
    while (*v62 <= v61)
    {
      ++v62;
      --v59;
      v58 -= v23;
      if (v59 == -257)
      {
        v63 = v12;
        goto LABEL_34;
      }
    }

    v64 = ~v59;
    v63 = v12;
    if (v64 <= 0xFF)
    {
      v65 = vcvts_n_f32_u32(-v58, 8uLL);
      v66 = vcvts_n_f32_u32(-(v23 + v58), 8uLL);
      v67 = v79[v64];
      v68 = 0.5;
      if (vabdd_f64(*v62, v67) > 1.0e-10)
      {
        v68 = (v61 - v67) / (*v62 - v67);
      }

      v63 = v68 * v65 + (1.0 - v68) * v66;
    }

LABEL_34:
    v69 = 0;
    v70 = 0;
    v71 = v79;
    while (*v71 <= v60)
    {
      ++v71;
      --v70;
      v69 -= v23;
      if (v70 == -257)
      {
        v72 = v13;
        goto LABEL_42;
      }
    }

    v73 = ~v70;
    v72 = v13;
    if (v73 <= 0xFF)
    {
      v74 = vcvts_n_f32_u32(-v69, 8uLL);
      v75 = vcvts_n_f32_u32(-(v23 + v69), 8uLL);
      v76 = v79[v73];
      v77 = 0.5;
      if (vabdd_f64(*v71, v76) > 1.0e-10)
      {
        v77 = (v60 - v76) / (*v71 - v76);
      }

      v72 = v77 * v74 + (1.0 - v77) * v75;
    }

LABEL_42:
    *(a2 + 12) = llround(fmin(v63 / v12 * 4096.0 + 0.5, 65535.0));
    *(a2 + 14) = llround(fmin(v72 / v13 * 4096.0 + 0.5, 65535.0));
  }

  return result;
}

void LSCComputeSNFVerticalGains(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v7 = v6;
  v9 = v8;
  v10 = v2;
  v11 = 0;
  v91[4] = *MEMORY[0x277D85DE8];
  v12 = *(v3 + 14);
  v13 = *(v3 + 16);
  v91[0] = v3 + 18;
  v91[1] = v3 + 36;
  v91[2] = v3 + 54;
  v91[3] = v3 + 72;
  memset(v90, 0, 32);
  do
  {
    v90[v11] = v3 + 92 + 2 * *(v91[v11] + 6);
    ++v11;
  }

  while (v11 != 4);
  v14 = vcvtd_n_f64_u32(v13, 1uLL);
  v15 = vcvtd_n_f64_u32(v12, 1uLL);
  v16 = v4 + v15;
  v17 = v5;
  bzero(v89, 0x808uLL);
  bzero(v88, 0x808uLL);
  v18 = (v12 >> 1);
  v19 = log2f(vcvts_n_f32_u32(v12 >> 1, 8uLL));
  v20 = 0;
  v21 = vcvtps_s32_f32(v19);
  *(v10 + 12) = v21;
  v22 = 256 << v21;
  do
  {
    v23 = 0;
    v24 = v91[v20];
    v25 = v24[1];
    v26 = v24[7];
    v27 = v26 - 2;
    v28 = v24[8];
    v29 = 2 * v26;
    do
    {
      v30 = 0;
      v31 = vcvts_n_f32_u32(v22 * v23, 8uLL);
      if (v31 >= v18)
      {
        v32 = v18;
      }

      else
      {
        v32 = v31;
      }

      v33 = v89[v23];
      v34 = 1;
      do
      {
        v35 = *(&unk_2249D26B8 + v30);
        v36 = v34;
        v37 = (v16 + (v35 * v32)) * 0.5;
        v38 = (v37 / v25);
        if (v38 <= 1)
        {
          v38 = 1;
        }

        if (v38 >= v27)
        {
          v38 = v27;
        }

        if (v28)
        {
          v39 = (v90[v20] + 2 * v38);
          v40 = 0.0;
          v41 = v28;
          v42 = 0.0;
          do
          {
            v40 = v40 + vcvts_n_f32_u32(*v39, 0xCuLL);
            v42 = v42 + vcvts_n_f32_u32(v39[v35], 0xCuLL);
            v39 = (v39 + v29);
            --v41;
          }

          while (v41);
        }

        else
        {
          v42 = 0.0;
          v40 = 0.0;
        }

        v34 = 0;
        v33 = ((((v38 + v35) * v25) - v37) * v40 + (v37 - (v38 * v25)) * v42) / (v37 - (v38 * v25) + ((v38 + v35) * v25) - v37) / v28 + v33;
        v30 = 1;
      }

      while ((v36 & 1) != 0);
      v89[v23++] = v33;
    }

    while (v23 != 257);
    ++v20;
  }

  while (v20 != 4);
  for (i = 0; i != 257; ++i)
  {
    v45 = v89[i] * 0.125;
    v89[i] = v45;
    if (v45 <= 0.0)
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 1.0 / v45;
    }

    v88[i] = v46;
    *(v10 + 14 + 2 * i) = vcvtd_n_s64_f64(v46, 0xCuLL);
  }

  v44 = v14;
  v47 = v17 + v44;
  bzero(v87, 0x408uLL);
  v48 = v13;
  v49 = v13 - v47;
  if (v47 > v49)
  {
    v49 = v47;
  }

  v50 = log2f((v49 + v49) * 0.0078125);
  v51 = 0;
  v52 = 128 << vcvtps_u32_f32(v50);
  do
  {
    v53 = 0;
    v54 = v91[v51];
    v55 = v54[2];
    v56 = v54[8] - 2;
    v57 = v54[7];
    do
    {
      v58 = v47 + (vcvts_n_f32_u32(v52 * v53, 7uLL) - (v52 >> 1));
      if (v58 < 0.0)
      {
        v58 = 0.0;
      }

      if (v58 > v48)
      {
        v58 = v48;
      }

      v59 = v58 * 0.5;
      v60 = (v59 / v55) & ~((v59 / v55) >> 31);
      if (v60 >= v56)
      {
        v60 = v56;
      }

      if (v57)
      {
        v61 = 0;
        v62 = v90[v51];
        v63 = (v62 + 2 * v60 * v57);
        v64 = v60 + 1;
        v65 = (v62 + 2 * (v60 + 1) * v57);
        v66 = 0.0;
        v67 = v57;
        v68 = 0.0;
        do
        {
          v69 = v61 - v16;
          if (v69 < 0.0)
          {
            v69 = -v69;
          }

          if (v69 > v22)
          {
            v69 = v22;
          }

          v70 = v69 / (1 << v21);
          v71 = v70 & ~(v70 >> 31);
          if (v71 >= 127)
          {
            v71 = 127;
          }

          v72 = (v88[v71] * ((v71 + 1) - v70) + (v70 - v71) * v88[v71 + 1]) / (v70 - v71 + (v71 + 1) - v70);
          v73 = *v63++;
          v74 = vcvts_n_f32_u32(v73, 0xCuLL);
          v75 = *v65++;
          v68 = v68 + v74 * v72;
          v66 = v66 + vcvts_n_f32_u32(v75, 0xCuLL) * v72;
          v61 += 2 * v54[1];
          --v67;
        }

        while (v67);
      }

      else
      {
        v64 = v60 + 1;
        v68 = 0.0;
        v66 = 0.0;
      }

      v87[v53] = (((v64 * v55) - v59) * v68 + (v59 - (v60 * v55)) * v66) / (v59 - (v60 * v55) + (v64 * v55) - v59) / v57 + v87[v53];
      ++v53;
    }

    while (v53 != 129);
    ++v51;
  }

  while (v51 != 4);
  v76 = 0;
  v77 = 0.0;
  do
  {
    v78 = v87[v76] * 0.25;
    v87[v76] = v78;
    if (v78 <= 0.0)
    {
      v79 = 0.0;
    }

    else
    {
      v79 = 1.0 / v78;
    }

    if (v79 > v77)
    {
      v77 = v79;
    }

    ++v76;
  }

  while (v76 != 129);
  v80 = 0;
  v81 = 255.0 / v77;
  if (v77 <= 0.0)
  {
    v81 = 1.0;
  }

  do
  {
    v82 = v87[v80];
    if (v82 <= 0.0)
    {
      v83 = 1.0;
    }

    else
    {
      v83 = 1.0 / v82;
    }

    *(v9 + 14 + 2 * v80++) = (v81 * v83);
  }

  while (v80 != 129);
  v84 = 128.0;
  v85 = 14;
  v86 = 128.0 / v81;
  do
  {
    LOWORD(v84) = *(v10 + v85);
    v84 = v86 * *&v84;
    *(v10 + v85) = v84;
    v85 += 2;
  }

  while (v85 != 528);
  if (v7)
  {
    *(v7 + 12) = 4096;
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LSCComputeSNFVerticalGains();
    }
  }
}

uint64_t LSCComputeSNFGainsLLM(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v7 = v6;
  v8 = v2;
  v9 = 0;
  v96[4] = *MEMORY[0x277D85DE8];
  v10 = *(v3 + 14);
  v11 = *(v3 + 16);
  v96[0] = v3 + 18;
  v96[1] = v3 + 36;
  v96[2] = v3 + 54;
  v96[3] = v3 + 72;
  memset(v95, 0, 32);
  do
  {
    v95[v9] = v3 + 92 + 2 * *(v96[v9] + 6);
    ++v9;
  }

  while (v9 != 4);
  v12 = vcvtd_n_f64_u32(v11, 1uLL);
  v13 = vcvtd_n_f64_u32(v10, 1uLL);
  v14 = v4 + v13;
  v15 = v5;
  bzero(v94, 0x808uLL);
  bzero(v93, 0x808uLL);
  v16 = (v10 >> 1);
  v17 = log2f(vcvts_n_f32_u32(v10 >> 1, 8uLL));
  v18 = 0;
  v19 = vcvtps_s32_f32(v17);
  v20 = 256 << v19;
  v21 = vcvtd_n_f64_u32(v7, 8uLL);
  do
  {
    v22 = 0;
    v23 = v96[v18];
    v24 = v23[1];
    v25 = v23[7];
    v26 = v25 - 2;
    v27 = v23[8];
    v28 = 2 * v25;
    do
    {
      v29 = 0;
      v30 = vcvts_n_f32_u32(v20 * v22, 8uLL);
      if (v30 >= v16)
      {
        v31 = v16;
      }

      else
      {
        v31 = v30;
      }

      v32 = v94[v22];
      v33 = 1;
      do
      {
        v34 = *(&unk_2249D26B8 + v29);
        v35 = v33;
        v36 = (v14 + (v34 * v31)) * 0.5;
        v37 = (v36 / v24);
        if (v37 <= 1)
        {
          v37 = 1;
        }

        if (v37 >= v26)
        {
          v37 = v26;
        }

        if (v27)
        {
          v38 = (v95[v18] + 2 * v37);
          v39 = 0.0;
          v40 = v27;
          v41 = 0.0;
          do
          {
            v39 = v39 + v21 * (vcvts_n_f32_u32(*v38, 0xCuLL) + -1.0) + 1.0;
            v41 = v41 + v21 * (vcvts_n_f32_u32(v38[v34], 0xCuLL) + -1.0) + 1.0;
            v38 = (v38 + v28);
            --v40;
          }

          while (v40);
        }

        else
        {
          v41 = 0.0;
          v39 = 0.0;
        }

        v33 = 0;
        v32 = ((((v37 + v34) * v24) - v36) * v39 + (v36 - (v37 * v24)) * v41) / (v36 - (v37 * v24) + ((v37 + v34) * v24) - v36) / v27 + v32;
        v29 = 1;
      }

      while ((v35 & 1) != 0);
      v94[v22++] = v32;
    }

    while (v22 != 257);
    ++v18;
  }

  while (v18 != 4);
  v42 = 0;
  v43 = v12;
  v44 = v15 + v43;
  do
  {
    v45 = v94[v42] * 0.125;
    v94[v42] = v45;
    if (v45 <= 0.0)
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 1.0 / v45;
    }

    v93[v42++] = v46;
  }

  while (v42 != 257);
  v47 = 1 << v19;
  bzero(v92, 0x408uLL);
  v48 = v11;
  v49 = v11 - v44;
  if (v44 > v49)
  {
    v49 = v44;
  }

  v50 = log2f((v49 + v49) * 0.0078125);
  v51 = 0;
  v52 = 128 << vcvtps_u32_f32(v50);
  do
  {
    v53 = 0;
    v54 = v96[v51];
    v55 = v54[2];
    v56 = v54[8] - 2;
    result = v54[7];
    do
    {
      v58 = v44 + (vcvts_n_f32_u32(v52 * v53, 7uLL) - (v52 >> 1));
      if (v58 < 0.0)
      {
        v58 = 0.0;
      }

      if (v58 > v48)
      {
        v58 = v48;
      }

      v59 = v58 * 0.5;
      v60 = (v59 / v55) & ~((v59 / v55) >> 31);
      if (v60 >= v56)
      {
        v60 = v56;
      }

      if (result)
      {
        v61 = 0;
        v62 = v95[v51];
        v63 = (v62 + 2 * v60 * result);
        v64 = v60 + 1;
        v65 = (v62 + 2 * (v60 + 1) * result);
        v66 = 0.0;
        v67 = result;
        v68 = 0.0;
        do
        {
          v69 = v61 - v14;
          if (v69 < 0.0)
          {
            v69 = -v69;
          }

          if (v69 > v20)
          {
            v69 = v20;
          }

          v70 = v69 / v47;
          v71 = v70 & ~(v70 >> 31);
          if (v71 >= 127)
          {
            v71 = 127;
          }

          v72 = v71;
          v73 = v93[v71];
          v74 = v71 + 1;
          v75 = v70;
          v76 = v75 - v72;
          v77 = v74 - v75;
          v78 = v73 * v77 + v76 * v93[v74];
          v79 = *v63++;
          v80 = v76 + v77;
          *&v76 = vcvts_n_f32_u32(v79, 0xCuLL);
          v81 = v78 / v80;
          v82 = *v65++;
          v68 = v68 + (v21 * (*&v76 + -1.0) + 1.0) * v81;
          v66 = v66 + (v21 * (vcvts_n_f32_u32(v82, 0xCuLL) + -1.0) + 1.0) * v81;
          v61 += 2 * v54[1];
          --v67;
        }

        while (v67);
      }

      else
      {
        v64 = v60 + 1;
        v68 = 0.0;
        v66 = 0.0;
      }

      v92[v53] = (((v64 * v55) - v59) * v68 + (v59 - (v60 * v55)) * v66) / (v59 - (v60 * v55) + (v64 * v55) - v59) / result + v92[v53];
      ++v53;
    }

    while (v53 != 129);
    ++v51;
  }

  while (v51 != 4);
  v83 = 0;
  v84 = 0.0;
  do
  {
    v85 = v92[v83] * 0.25;
    v92[v83] = v85;
    if (v85 <= 0.0)
    {
      v86 = 0.0;
    }

    else
    {
      v86 = 1.0 / v85;
    }

    if (v86 > v84)
    {
      v84 = v86;
    }

    ++v83;
  }

  while (v83 != 129);
  v87 = 0;
  v88 = 255.0 / v84;
  if (v84 <= 0.0)
  {
    v88 = 1.0;
  }

  do
  {
    v89 = v92[v87];
    if (v89 <= 0.0)
    {
      v90 = 1.0;
    }

    else
    {
      v90 = 1.0 / v89;
    }

    *(v8 + 14 + 2 * v87++) = (v88 * v90);
  }

  while (v87 != 129);
  for (i = 0; i != 257; ++i)
  {
    *(v8 + 272 + 2 * i) = (v93[i] * 4096.0 * 128.0 / v88);
  }

  *(v8 + 12) = v7;
  return result;
}