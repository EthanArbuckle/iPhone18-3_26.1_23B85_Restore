__n128 DspLib::LoudspeakerManagerV2::ModelManager::setParameters(std::span<float const,18446744073709551615ul>)::$_0::operator()(_DWORD *a1, __int128 *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = a1[2];
  v6 = *(a2 + 113);
  if (v4 != DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, 0x18u))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v7 = v5 + 3 * v6 + 3;
  if (v7 >= 0x18)
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v8 = DspLib::groupOffset(&DspLib::LoudspeakerManagerV2::Parameters::kDefinition, v7);
  v9 = v3 + 4 * v8;
  *(a2 + 1) = *(v9 + 4);
  v10.i32[0] = *v9;
  v10.i32[1] = *(v9 + 12);
  v10.i32[2] = *(v9 + 36);
  v10.i32[3] = *(v9 + 56);
  v11.i64[0] = 0x3F0000003F000000;
  v11.i64[1] = 0x3F0000003F000000;
  *v10.f32 = vand_s8(vmovn_s32(vcgeq_f32(v10, v11)), 0x1000100010001);
  *(a2 + 54) = vuzp1_s8(*v10.f32, *v10.f32).u32[0];
  *(a2 + 233) = *(v9 + 92) >= 0.5;
  if (*(v9 + 8) == 0.0)
  {
    v18 = 0;
    *(a2 + 60) = 0;
    *(a2 + 52) = 0;
    v12 = 0;
    *(a2 + 76) = 0;
    v16 = 0;
    v17 = 0;
    *(a2 + 68) = 0;
  }

  else
  {
    v12 = *(v9 + 16);
    v13 = *(v9 + 20) * 0.001;
    *&v14 = *(v9 + 24);
    v32 = *(v9 + 84);
    v15 = *(v9 + 72) == 2;
    *(a2 + 232) = v15;
    v33 = v12;
    v34 = v13;
    *(&v14 + 1) = v32;
    v35 = v14;
    v8 = DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(&v33, v15, v36);
    v16 = v32;
    *(a2 + 52) = *v36;
    *(a2 + 61) = *&v36[9];
    v17 = HIDWORD(v32);
    v18 = 1;
  }

  *(a2 + 92) = v18;
  if (*(v9 + 32) == 0.0 || *(v9 + 8) == 0.0)
  {
    v20 = 0;
    *(a2 + 12) = 0;
    *(a2 + 13) = 0;
    *(a2 + 120) = 0;
    *(a2 + 14) = 0;
  }

  else
  {
    v19 = *(v9 + 40) * 0.001;
    v33 = v12;
    v34 = v19;
    *&v35 = *(v9 + 44);
    *(&v35 + 1) = __PAIR64__(v17, v16);
    v8 = DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(&v33, 0, v36);
    a2[6] = *v36;
    *(a2 + 105) = *&v36[9];
    v20 = 1;
  }

  *(a2 + 136) = v20;
  if (*(v9 + 52) == 0.0)
  {
    v23 = 0;
    *(a2 + 25) = 0;
    *(a2 + 20) = 0;
  }

  else
  {
    v8 = DspLib::LoudspeakerSystemIDV2::tsParametersToCoeffs(*(v9 + 64), *(v9 + 68), *(v9 + 60));
    *(a2 + 20) = v8;
    *(a2 + 7) = v21;
    *(a2 + 32) = v22;
    v23 = 1;
  }

  *(a2 + 48) = v23;
  v24 = *(v9 + 76) * 6.2832;
  *(a2 + 55) = v24 * DspLib::dB2Amp(v8, *(v9 + 80));
  *(a2 + 56) = v24;
  *(a2 + 228) = *(v9 + 72) >= 0.5;
  v25 = *a2;
  *(a2 + 252) = a2[1];
  *(a2 + 236) = v25;
  v26 = a2[5];
  *(a2 + 300) = a2[4];
  *(a2 + 316) = v26;
  v27 = a2[3];
  *(a2 + 268) = a2[2];
  *(a2 + 284) = v27;
  v28 = a2[9];
  *(a2 + 364) = a2[8];
  *(a2 + 380) = v28;
  v29 = a2[7];
  *(a2 + 332) = a2[6];
  *(a2 + 348) = v29;
  *(a2 + 444) = *(a2 + 26);
  result = a2[11];
  v31 = a2[12];
  *(a2 + 412) = result;
  *(a2 + 428) = v31;
  *(a2 + 396) = a2[10];
  return result;
}

uint64_t DspLib::Loudspeaker::Calibration::ThermalCoefficients::setParameters(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 48);
  *(result + 40) = v4;
  v5 = *(a2 + 52);
  *(result + 44) = v5;
  v6 = *(a2 + 40);
  *(result + 48) = v6;
  v7 = *(a2 + 44);
  *(result + 52) = v7;
  if (*(a2 + 56) >= 0.5)
  {
    v9 = *(a2 + 4);
    *(result + 4) = v9;
    v8 = *a2;
  }

  else if (a4)
  {
    v9 = *(result + 56);
    v8 = *(result + 60);
    *(result + 4) = v9;
  }

  else
  {
    *(result + 4) = -998637568;
    v8 = -1000.0;
    v9 = -1000.0;
  }

  *(result + 8) = v8;
  if (v9 < v4 || v9 > v5 || v8 < v6)
  {
    *(result + 64) = 0;
    *(result + 32) = *(a2 + 32);
    *(result + 36) = *(a2 + 36);
    v12 = 0.0;
  }

  else
  {
    v13 = v8 > v7;
    *(result + 64) = v8 <= v7;
    v14 = *(a2 + 32);
    *(result + 32) = v14;
    v15 = *(a2 + 36);
    *(result + 36) = v15;
    v12 = 0.0;
    if (!v13)
    {
      v12 = (v14 + (((v15 - v14) / 15.0) * -20.0)) + (((v15 - v14) / 15.0) * v8);
    }
  }

  *result = v12;
  *(result + 12) = *(a2 + 12);
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 24) = *(a2 + 24);
  *(result + 28) = *(a2 + 28);
  *(result + 65) = *(a2 + 60) != 0.0;
  return result;
}

double DspLib::LoudspeakerManagerV2::ModelManager::getSDomainModel@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X3>, int a5@<W4>, _OWORD *a6@<X8>)
{
  v8 = *(a2 + 176);
  v46[10] = *(a2 + 160);
  v46[11] = v8;
  v46[12] = *(a2 + 192);
  v47 = *(a2 + 208);
  v9 = *(a2 + 112);
  v46[6] = *(a2 + 96);
  v46[7] = v9;
  v10 = *(a2 + 144);
  v46[8] = *(a2 + 128);
  v46[9] = v10;
  v11 = *(a2 + 48);
  v46[2] = *(a2 + 32);
  v46[3] = v11;
  v12 = *(a2 + 80);
  v46[4] = *(a2 + 64);
  v46[5] = v12;
  v13 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v13;
  v14 = a3[13];
  v44 = a3[12];
  v45[0] = v14;
  *(v45 + 12) = *(a3 + 220);
  v15 = a3[9];
  v40 = a3[8];
  v41 = v15;
  v16 = a3[11];
  v42 = a3[10];
  v43 = v16;
  v17 = a3[5];
  v36 = a3[4];
  v37 = v17;
  v18 = a3[7];
  v38 = a3[6];
  v39 = v18;
  v19 = a3[1];
  v32 = *a3;
  v33 = v19;
  v20 = a3[3];
  v34 = a3[2];
  v35 = v20;
  *a4 = DspLib::LoudspeakerManagerV2::updateAppliedModel(v46, &v32, (a3 + 236), *a1, a5, *(a1 + 20), *(a1 + 24));
  DspLib::LoudspeakerManagerV2::modelPolynomial(a3 + 236, *(a3 + 113), a3 + 220, a3 + 232, &v32, v21);
  if (v40)
  {
    v22 = 0;
    v23 = 1;
    while ((*(&v32 + v22) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v22 = v23;
      v24 = v40 > v23++;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_10;
  }

LABEL_5:
  if (*(&v40 + 1))
  {
    v25 = 0;
    v26 = 1;
    while ((*(&v36 + v25) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v25 = v26;
      v24 = *(&v40 + 1) > v26++;
      if (!v24)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    *&v30 = 0;
    a6[7] = 0u;
    a6[8] = 0u;
    a6[5] = 0u;
    a6[6] = 0u;
    a6[3] = 0u;
    a6[4] = 0u;
    a6[1] = 0u;
    a6[2] = 0u;
    *a6 = 0u;
    return *&v30;
  }

LABEL_9:
  v27 = v39;
  a6[6] = v38;
  a6[7] = v27;
  a6[8] = v40;
  v28 = v35;
  a6[2] = v34;
  a6[3] = v28;
  v29 = v37;
  a6[4] = v36;
  a6[5] = v29;
  v30 = v33;
  *a6 = v32;
  a6[1] = v30;
  return *&v30;
}

uint64_t DspLib::LoudspeakerManagerV2::updateAppliedModel(uint64_t a1, uint64_t a2, __int128 *a3, char a4, int a5, float a6, float a7)
{
  v33 = a3[10];
  v34 = a3[11];
  v35 = a3[12];
  v36 = *(a3 + 26);
  v29 = a3[6];
  v30 = a3[7];
  v31 = a3[8];
  v32 = a3[9];
  v25 = a3[2];
  v26 = a3[3];
  v27 = a3[4];
  v28 = a3[5];
  v23 = *a3;
  v24 = a3[1];
  v13 = a1 + 96;
  if ((*a1 & 1) != 0 || (a4 & 1) != 0 || *(a2 + 233) == 1)
  {
    *(a3 + 1) = *(a3 + 1) + ((*(a2 + 4) - *(a3 + 1)) * 0.2);
    *(a3 + 7) = *(a3 + 7) + ((*(a2 + 28) - *(a3 + 7)) * 0.2);
    v14 = vdup_n_s32(0x3E4CCCCDu);
    *(a3 + 20) = vmla_f32(*(a3 + 20), v14, vsub_f32(*(a2 + 20), *(a3 + 20)));
    v15 = 1;
    if (*(a3 + 16) <= 0.0)
    {
      v15 = *(a2 + 232);
    }

    DspLib::LoudspeakerManagerV2::smoothResonatorCoefficients(a3 + 52, a2 + 52, v15 & 1);
    *(a3 + 100) = vmla_f32(*(a3 + 100), v14, vsub_f32(*(a2 + 100), *(a3 + 100)));
    *(a3 + 14) = vmla_f32(a3[7], v14, vsub_f32(*(a2 + 112), a3[7]));
    *(a3 + 24) = 0;
    *(a3 + 27) = 0;
    *a3 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  *(a3 + 1) = *(a3 + 1) + ((*(a1 + 4) - *(a3 + 1)) * 0.2);
  if (*(a1 + 48) != 1 || *(a2 + 48) != 1)
  {
    v18 = 0;
    *(a3 + 25) = 0;
    *(a3 + 20) = 0;
    goto LABEL_25;
  }

  if (*(a1 + 44) == 1)
  {
    *(a3 + 7) = *(a3 + 7) + ((*(a1 + 28) - *(a3 + 7)) * 0.2);
    *(a3 + 20) = vmla_f32(*(a3 + 20), vdup_n_s32(0x3E4CCCCDu), vsub_f32(*(a1 + 20), *(a3 + 20)));
    v18 = 1;
LABEL_25:
    *(a3 + 48) = v18;
  }

  if (*(a1 + 92) != 1 || *(a2 + 92) != 1)
  {
    v21 = 0;
    *(a3 + 60) = 0;
    *(a3 + 52) = 0;
    *(a3 + 76) = 0;
    *(a3 + 68) = 0;
LABEL_33:
    *(a3 + 92) = v21;
    goto LABEL_34;
  }

  if (*(a1 + 88) == 1)
  {
    v19 = *(a1 + 64);
    if (*(a2 + 232) == 1)
    {
      if (v19 != 0.0)
      {
        v20 = 1;
LABEL_42:
        DspLib::LoudspeakerManagerV2::smoothResonatorCoefficients(a3 + 52, a1 + 52, v20 & 1);
        v21 = 1;
        goto LABEL_33;
      }
    }

    else if (v19 == 0.0)
    {
      v20 = 0;
      goto LABEL_42;
    }

    v22 = *(a2 + 52);
    *(a1 + 61) = *(a2 + 61);
    *(a1 + 52) = v22;
    v20 = *(a2 + 232);
    goto LABEL_42;
  }

LABEL_34:
  if (*(a1 + 136) == 1 && *(a2 + 136) == 1)
  {
    if (*(a1 + 132) == 1)
    {
      DspLib::LoudspeakerManagerV2::smoothResonatorCoefficients((a3 + 6), v13, 0);
      *(a3 + 136) = 1;
    }
  }

  else
  {
    *(a3 + 12) = 0;
    *(a3 + 13) = 0;
    *(a3 + 120) = 0;
    *(a3 + 14) = 0;
    *(a3 + 136) = 0;
  }

LABEL_7:
  v16 = *(a3 + 1);
  if (vabds_f32(v16, *(a1 + 4)) / *(a1 + 4)) > a6 && (*(a1 + 16) & 1) != 0 || (vabds_f32(*(a3 + 15), *(a1 + 60)) / *(a1 + 60)) > a7 && (*(a1 + 132))
  {
    goto LABEL_16;
  }

  if ((vabds_f32(v16, *(a2 + 4)) / *(a2 + 4)) <= a6)
  {
    if (a5 != 1)
    {
LABEL_17:
      result = 0;
      *(a3 + 26) = v36;
      a3[10] = v33;
      a3[11] = v34;
      a3[12] = v35;
      a3[6] = v29;
      a3[7] = v30;
      a3[8] = v31;
      a3[9] = v32;
      a3[2] = v25;
      a3[3] = v26;
      a3[4] = v27;
      a3[5] = v28;
      *a3 = v23;
      a3[1] = v24;
      goto LABEL_18;
    }

LABEL_16:
    result = 1;
    goto LABEL_18;
  }

  result = 1;
  if (a5 != 1 && (*a1 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  *(a3 + 1) = result;
  return result;
}

void DspLib::LoudspeakerManagerV2::ModelManager::status(uint64_t a1, uint64_t a2, double a3, double a4, int64x2_t a5)
{
  v8 = *(a1 + 4);
  v7 = *(a1 + 8);
  v9 = *(a1 + 32) + 2632 * v8;
  v10 = *(v9 + 2616);
  if (v7 < 2)
  {
    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v16 = 1368;
    }

    else
    {
      if (v7 != 4)
      {
LABEL_12:
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v13 = (v9 + 2452);
        v66 = 0u;
        v65 = *(v9 + 2464) != 0.0;
        v12 = v9;
        if (v7)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v16 = 1824;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v12 = v9 + 912;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v13 = (v9 + 2452);
        v65 = *(v9 + 2464) != 0.0;
        v14 = *(v9 + 1364);
        DspLib::LoudspeakerManagerV2::modelPolynomial(v9 + 912, v14, v9 + 1132, (v9 + 1144), &v66, a5);
        if (*(v9 + 2404) <= 0.0)
        {
          v81 = v72;
          v82 = v73;
          v83 = v74;
          v77 = v68;
          v78 = v69;
          v79 = v70;
          v80 = v71;
          v75 = v66;
          v76 = v67;
        }

        else
        {
          DspLib::LoudspeakerManagerV2::modelPolynomial(v9 + 2400, 2, v9 + 1132, &v65, &v75, v15);
        }

        DspLib::LoudspeakerManagerV2::modelPolynomial(v9 + 1148, v14, v9 + 1132, (v9 + 1144), &v84, v15);
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v16 = 456;
  }

  v91 = 0u;
  v92 = 0u;
  v12 = v9 + v16;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = (v9 + 2452);
  v66 = 0u;
  v65 = *(v9 + 2464) != 0.0;
LABEL_17:
  DspLib::LoudspeakerManagerV2::modelPolynomial(v12, *(v12 + 452), v12 + 220, (v12 + 232), v57, a5);
  v72 = v62;
  v73 = v63;
  v74 = v64;
  v17 = v59;
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v66 = *v57;
  v67 = *&v57[16];
  if (*(v9 + 2404) <= 0.0)
  {
    v81 = v72;
    v82 = v73;
    v83 = v74;
    v77 = v68;
    v78 = v69;
    v79 = v70;
    v80 = v71;
    v19 = v66;
    v18 = v67;
  }

  else
  {
    DspLib::LoudspeakerManagerV2::modelPolynomial(v9 + 2400, v7, v12 + 220, &v65, v57, v59);
    v81 = v62;
    v82 = v63;
    v83 = v64;
    v17 = v59;
    v77 = v58;
    v78 = v59;
    v79 = v60;
    v80 = v61;
    v19 = *v57;
    v18 = *&v57[16];
  }

  v75 = v19;
  v76 = v18;
  DspLib::LoudspeakerManagerV2::modelPolynomial(v12 + 236, *(v12 + 452), v12 + 220, (v12 + 232), v57, v17);
  v90 = v62;
  v91 = v63;
  v92 = v64;
  v86 = v58;
  v87 = v59;
  v88 = v60;
  v89 = v61;
  v84 = *v57;
  v85 = *&v57[16];
LABEL_23:
  *(a2 + 8968) = vcvt_hight_f32_f64(vcvt_f32_f64(v75), v76);
  *(a2 + 8984) = vcvt_hight_f32_f64(vcvt_f32_f64(v77), v78);
  *(a2 + 9000) = vcvt_hight_f32_f64(vcvt_f32_f64(v79), v80);
  *(a2 + 9016) = vcvt_hight_f32_f64(vcvt_f32_f64(v81), v82);
  *(a2 + 9032) = vcvt_f32_f64(vcvtq_f64_u64(v83));
  *(a2 + 9040) = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v67);
  *(a2 + 9056) = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
  *(a2 + 9072) = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
  v20 = LODWORD(v73.f64[0]);
  LOBYTE(v20) = *(v12 + 237);
  *(a2 + 9088) = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
  *(a2 + 9104) = vcvt_f32_f64(vcvtq_f64_u64(v74));
  *(a2 + 8936) = v20;
  v21 = *(a1 + 128) + 20 * v8;
  v22 = *(v21 + 16);
  *v57 = *v21;
  *&v57[16] = v22;
  DspLib::Biquad::write(v57, a2 + 9192);
  v23 = *(a1 + 32) + 2632 * *(a1 + 4);
  DspLib::LoudspeakerManagerV2::displacementPassiveRadiatorPolynomial(v23 + 912, v23 + 2616, *(v23 + 1144), v57);
  v68 = v58;
  v69 = v59;
  v66 = *v57;
  v67 = *&v57[16];
  v72 = v62;
  v73 = v63;
  v70 = v60;
  v71 = v61;
  v74 = v64;
  *(a2 + 9212) = vcvt_hight_f32_f64(vcvt_f32_f64(*v57), *&v57[16]);
  *(a2 + 9228) = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
  *(a2 + 9244) = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
  *(a2 + 9260) = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
  *(a2 + 9276) = vcvt_f32_f64(vcvtq_f64_u64(v74));
  v24 = *(a1 + 32) + 2632 * *(a1 + 4);
  DspLib::LoudspeakerManagerV2::displacementPassiveRadiatorPolynomial(v24 + 2400, v24 + 2616, *(v24 + 2464) != 0.0, v57);
  v68 = v58;
  v69 = v59;
  v66 = *v57;
  v67 = *&v57[16];
  v72 = v62;
  v73 = v63;
  v70 = v60;
  v71 = v61;
  v74 = v64;
  *(a2 + 9284) = vcvt_hight_f32_f64(vcvt_f32_f64(*v57), *&v57[16]);
  *(a2 + 9300) = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v69);
  *(a2 + 9316) = vcvt_hight_f32_f64(vcvt_f32_f64(v70), v71);
  *(a2 + 9332) = vcvt_hight_f32_f64(vcvt_f32_f64(v72), v73);
  *(a2 + 9348) = vcvt_f32_f64(vcvtq_f64_u64(v74));
  DspLib::Biquad::write(*(a1 + 152), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 160) - *(a1 + 152)) >> 2), a2 + 9356);
  v25 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 160) - *(a1 + 152)) >> 2);
  if (v25 <= 3)
  {
    v26 = v25 - 4;
    v27 = a2 + 4 * ((*(a1 + 160) - *(a1 + 152)) >> 2) + 9356;
    do
    {
      *&v57[16] = 0;
      *v57 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(v57, v27);
      v27 += 20;
      v28 = __CFADD__(v26++, 1);
    }

    while (!v28);
  }

  *(a2 + 9440) = v10;
  v61 = v89;
  v62 = v90;
  v63 = v91;
  v64 = v92;
  v58 = v86;
  v59 = v87;
  v60 = v88;
  *v57 = v84;
  *&v57[16] = v85;
  DspLib::LoudspeakerManagerV2::updateBiquadCoefficients(v57, (a1 + 56), (a1 + 80), *(a1 + 8), v11, 48000.0);
  DspLib::Biquad::write(*(a1 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 64) - *(a1 + 56)) >> 2), a2 + 9112);
  v29 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 64) - *(a1 + 56)) >> 2);
  if (v29 <= 3)
  {
    v30 = v29 - 4;
    v31 = a2 + 4 * ((*(a1 + 64) - *(a1 + 56)) >> 2) + 9112;
    do
    {
      *&v57[16] = 0;
      *v57 = DspLib::Biquad::kBypassSection;
      DspLib::Biquad::write(v57, v31);
      v31 += 20;
      v28 = __CFADD__(v30++, 1);
    }

    while (!v28);
  }

  v32 = *(a1 + 32);
  v33 = *(a1 + 40) - v32;
  if (v33)
  {
    v34 = 0xE719AD850EC8C0F9 * (v33 >> 3);
    v35 = v32 + 2280;
    v36 = 2209;
    do
    {
      if (*v35 == 0.0)
      {
        v37 = 1000.0;
      }

      else
      {
        v37 = *(v35 + 8) + ((1.0 / *v35) * ((*(v35 + 124) / *(v35 + 4)) + -1.0));
      }

      *(a2 + 4 * (v36 - 8)) = v37;
      LOBYTE(v37) = *(v35 + 136);
      *(a2 + 4 * v36) = LODWORD(v37);
      v38 = v36 - 2208;
      v35 += 2632;
      ++v36;
    }

    while (v34 > v38);
  }

  *(a2 + 8868) = *(v9 + 2404);
  *(a2 + 8872) = *(v9 + 2412);
  v39 = *(v9 + 2472);
  v40 = *v13;
  *&v57[12] = *(v13 + 12);
  *v57 = v40;
  DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters(v57, 1, *(v9 + 2464) > 0.0, v56, v39, 1.0, 1.0);
  if (*(v9 + 2492))
  {
    *(a2 + 8876) = v39;
    v42 = *&v56[16];
    *(a2 + 8880) = *&v56[4];
    v43 = *&v56[20];
    *(a2 + 8896) = *&v56[20];
    LOBYTE(v41) = *(v9 + 2488);
    *(a2 + 8900) = v41;
    if (v43 < 0.0 || v42 < 0.0)
    {
      return;
    }
  }

  else
  {
    *(a2 + 8876) = 0;
    *(a2 + 8884) = 0;
    *(a2 + 8900) = 0;
    *(a2 + 8892) = 0;
  }

  v44 = 0uLL;
  if (*(v9 + 2536) == 1)
  {
    v45 = *(v9 + 2496);
    *&v57[12] = *(v9 + 2508);
    *v57 = v45;
    DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters(v57, 1, 0, &v54, v39, 1.0, 1.0);
    *v56 = v54;
    *&v56[16] = v55;
    *&v44 = v54 >> 32;
    LOBYTE(v46) = *(v9 + 2532);
    DWORD2(v44) = *(v56 | 0xC);
    *(&v44 + 3) = v46;
  }

  *(a2 + 8904) = v44;
  v47 = 0;
  v48 = 0.0;
  v49 = 0;
  v50 = 0.0;
  if (*(v9 + 2448) == 1)
  {
    v48 = DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters(*(v9 + 2420));
    LOBYTE(v51) = *(v9 + 2444);
    v50 = v51;
  }

  *(a2 + 8920) = v47;
  *(a2 + 8924) = v48;
  *(a2 + 8928) = v49;
  *(a2 + 8932) = v50;
  LOBYTE(v48) = *(a1 + 16);
  *(a2 + 8940) = LODWORD(v48);
  v52 = *(a1 + 32) + 2632 * *(a1 + 4);
  *(a2 + 8944) = *(v52 + 2284);
  *(a2 + 8948) = *(v52 + 2288);
  *(a2 + 8952) = *(v52 + 2336);
  *(a2 + 8956) = *(v52 + 2340);
  v53 = *(v52 + 2280);
  *(a2 + 8960) = v53;
  LOBYTE(v53) = *(v52 + 2344);
  *(a2 + 8964) = v53;
}

uint64_t DspLib::LoudspeakerManagerV2::displacementPassiveRadiatorPolynomial@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*(result + 92) == 1 && *(result + 136) == 1)
  {
    v5 = *(a2 + 8);
    if (!a3 || (v6 = *(result + 64), v6 == 0.0))
    {
      v20 = *(result + 4);
      v21 = *(result + 56);
      v22 = *(result + 60);
      v23 = *(result + 100);
      v24 = *(result + 104);
      v25 = *(result + 112);
      v26 = *(result + 68);
      v27 = *(result + 72);
      *(a4 + 88) = 0u;
      *(a4 + 8) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 40) = 0u;
      *(a4 + 56) = 0u;
      *(a4 + 72) = 0u;
      *(a4 + 104) = 0u;
      *(a4 + 120) = 0;
      *a4 = v5 * (-v27 / v20 * (v27 * v27 / v26 + v27 * v27 / v25) / (v27 * v27 / v26 * (v27 * v27 / v25)));
      *(a4 + 88) = 1.0 / v20 * (v20 * v21 * v24 + v20 * v22 * v23 + (v22 * v25) + (v26 * v24));
      *(a4 + 96) = (v22 * v24);
      *(a4 + 72) = 1.0 / v20 * (v20 * v23 + v20 * v21 + v26 + v25);
      *(a4 + 80) = 1.0 / v20 * (v20 * v21 * v23 + v20 * v22 + v20 * v24 + (v21 * v25) + (v26 * v23));
      *(a4 + 64) = 0x3FF0000000000000;
      v19 = xmmword_1DE0952E0;
    }

    else
    {
      v7 = *(result + 4);
      v8 = *(result + 56);
      v30 = *(result + 52);
      v9 = *(result + 60);
      v29 = *(result + 68);
      v32 = *(result + 100);
      v31 = *(result + 104);
      v10 = *(result + 112);
      v35 = *(result + 72);
      v11 = *&v35;
      v12 = *&v35;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 112) = 0u;
      v33 = v6;
      v13 = v12 * v12 / v6;
      *v34 = v30;
      *&v34[1] = v8;
      *&v34[2] = v9;
      *&v34[3] = v6;
      *&v34[4] = v29;
      v14 = v13;
      v28 = v6;
      result = DspLib::LoudspeakerSystemIDV2::coeffsToTsParameters(v34, 1, 1, v36, v11, v14, v14);
      v15 = v5 * (-v12 / v7 * (v13 + v12 * v12 / v10) / (v13 * (v12 * v12 / v10)));
      v16 = v15 * ((v37 + v39) / v38);
      *a4 = v15;
      *(a4 + 8) = v16;
      *(a4 + 104) = (v9 * v31);
      v17 = v7 * v8;
      v18.f64[0] = (v8 * v10) + v7 * v9 + v17 * v32 + v7 * v30 * v31 + (v29 * v32);
      v18.f64[1] = (v9 * v10) + v7 * v9 * v32 + v17 * v31;
      *(a4 + 88) = vmulq_n_f64(vaddq_f64(v18, vcvtq_f64_f32(vmul_n_f32(__PAIR64__(LODWORD(v29), LODWORD(v28)), v31))), 1.0 / v7);
      *(a4 + 72) = 1.0 / v7 * (v10 + v7 * v30 + v7 * v32 + v33);
      *(a4 + 80) = 1.0 / v7 * ((v30 * v10) + v17 + v7 * v30 * v32 + v7 * v31 + v29 + (v28 * v32));
      *(a4 + 64) = 0x3FF0000000000000;
      v19 = xmmword_1DE0952F0;
    }
  }

  else
  {
    *(a4 + 56) = 0u;
    *(a4 + 120) = 0;
    *(a4 + 104) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 8) = 0u;
    *a4 = 0x3FF0000000000000;
    *(a4 + 64) = *(result + 4);
    v19 = vdupq_n_s64(1uLL);
  }

  *(a4 + 128) = v19;
  return result;
}

void DspLib::LoudspeakerManagerV2::updateBiquadCoefficients(_OWORD *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, double a6)
{
  v8 = a1[8];
  v27[3] = a1[7];
  v28 = v8;
  v9 = a1[6];
  v10 = a1[3];
  v26[2] = a1[2];
  v26[3] = v10;
  v11 = a1[4];
  v27[1] = a1[5];
  v27[2] = v9;
  v27[0] = v11;
  v12 = a1[1];
  v26[0] = *a1;
  v26[1] = v12;
  DspLib::sPolynomialToBiquadCoefficients(v26, a6, v28, v27, *(&v28 + 1), a3, a2, a5);
  switch(a4)
  {
    case 3:
      v22 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
      if (v22 <= 2)
      {
        std::vector<DspLib::Biquad::Section>::resize(a2, 3uLL);
        v23 = v22 - 3;
        v24 = 20 * v22;
        do
        {
          v25 = *a2 + v24;
          *v25 = DspLib::Biquad::kBypassSection;
          *(v25 + 16) = 0;
          v24 += 20;
          v17 = __CFADD__(v23++, 1);
        }

        while (!v17);
      }

      break;
    case 2:
      v18 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
      if (v18 <= 3)
      {
        std::vector<DspLib::Biquad::Section>::resize(a2, 4uLL);
        v19 = v18 - 4;
        v20 = 20 * v18;
        do
        {
          v21 = *a2 + v20;
          *v21 = DspLib::Biquad::kBypassSection;
          *(v21 + 16) = 0;
          v20 += 20;
          v17 = __CFADD__(v19++, 1);
        }

        while (!v17);
      }

      break;
    case 1:
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
      if (v13 <= 3)
      {
        std::vector<DspLib::Biquad::Section>::resize(a2, 4uLL);
        v14 = v13 - 4;
        v15 = 20 * v13;
        do
        {
          v16 = *a2 + v15;
          *v16 = DspLib::Biquad::kBypassSection;
          *(v16 + 16) = 0;
          v15 += 20;
          v17 = __CFADD__(v14++, 1);
        }

        while (!v17);
      }

      break;
  }
}

uint64_t DspLib::LoudspeakerManagerV2::ModelManager::setSpTSCalibration(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (0xE719AD850EC8C0F9 * ((v4 - v3) >> 3) == (a2[1] - *a2) >> 3)
  {
    if (v4 != v3)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        result = DspLib::Loudspeaker::Calibration::ThermalCoefficients::setCalibration(v3 + 2632 * v6 + 2280, *(*a2 + 8 * v6));
        v6 = v7;
        v3 = *(v2 + 32);
      }

      while (0xE719AD850EC8C0F9 * ((*(v2 + 40) - v3) >> 3) > v7++);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *(v2 + 16) = v9;
  return result;
}

uint64_t DspLib::Loudspeaker::Calibration::ThermalCoefficients::setCalibration(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 8);
  v4 = *(result + 40);
  v5 = *(result + 44);
  v6 = 4;
  if (v5 < v2)
  {
    v6 = 44;
  }

  if (v2 < v4)
  {
    v6 = 40;
  }

  v7 = *(result + 48);
  v8 = *(result + 52);
  v9 = 8;
  if (v8 < v3)
  {
    v9 = 52;
  }

  if (v3 < v7)
  {
    v9 = 48;
  }

  *(result + 4) = v2;
  *(result + 8) = v3;
  v10 = *(result + v9);
  v11 = (*(result + 32) + (((*(result + 36) - *(result + 32)) / 15.0) * -20.0)) + (((*(result + 36) - *(result + 32)) / 15.0) * v10);
  *(result + 56) = v2;
  *(result + 60) = v3;
  v12 = *(result + v6);
  *(result + 4) = v12;
  *(result + 8) = v10;
  v14 = v10 >= v7 && v12 >= v4;
  v15 = v14 && v12 <= v5;
  if (v10 > v8)
  {
    v15 = 0;
  }

  *(result + 64) = v15;
  *result = v11;
  return result;
}

uint64_t DspLib::LoudspeakerManagerV2::ModelManager::getZDomainLoudspeakerModel(void *a1, uint64_t a2, int a3, int a4, _BYTE *a5, int a6, double a7)
{
  v12 = a1[4] + 2632 * a2;
  v13 = (v12 + 1368);
  v14 = v12 + 1824;
  if (a3 != 4)
  {
    v14 = a1[4] + 2632 * a2;
  }

  if (a3 != 3)
  {
    v13 = v14;
  }

  v15 = (v12 + 456);
  v16 = v12 + 912;
  if (a3 != 2)
  {
    v16 = a1[4] + 2632 * a2;
  }

  if (a3 != 1)
  {
    v15 = v16;
  }

  if (a3 <= 2)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  DspLib::LoudspeakerManagerV2::ModelManager::getSDomainModel(a1, v12 + 2400, v17, a5, a6, v20);
  if (*a5 == 1)
  {
    v19[6] = v20[6];
    v19[7] = v20[7];
    v19[8] = v20[8];
    v19[2] = v20[2];
    v19[3] = v20[3];
    v19[4] = v20[4];
    v19[5] = v20[5];
    v19[0] = v20[0];
    v19[1] = v20[1];
    DspLib::LoudspeakerManagerV2::updateBiquadCoefficients(v19, a1 + 7, a1 + 10, a3, a4, a7);
  }

  return a1[7];
}

BOOL DspLib::LoudspeakerManagerV2::ModelManager::appliedAccelerationModelDidChange(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 32) + 2632 * a2;
  v6 = *(v5 + 2576);
  v25[10] = *(v5 + 2560);
  v25[11] = v6;
  v25[12] = *(v5 + 2592);
  v26 = *(v5 + 2608);
  v7 = *(v5 + 2512);
  v25[6] = *(v5 + 2496);
  v25[7] = v7;
  v8 = *(v5 + 2544);
  v25[8] = *(v5 + 2528);
  v25[9] = v8;
  v9 = *(v5 + 2448);
  v25[2] = *(v5 + 2432);
  v25[3] = v9;
  v10 = *(v5 + 2480);
  v25[4] = *(v5 + 2464);
  v25[5] = v10;
  v11 = *(v5 + 2416);
  v25[0] = *(v5 + 2400);
  v25[1] = v11;
  v12 = *(v5 + 2000);
  v13 = *(v5 + 2032);
  v23[12] = *(v5 + 2016);
  v24[0] = v13;
  *(v24 + 12) = *(v5 + 2044);
  v14 = *(v5 + 1936);
  v15 = *(v5 + 1968);
  v23[8] = *(v5 + 1952);
  v23[9] = v15;
  v23[10] = *(v5 + 1984);
  v23[11] = v12;
  v16 = *(v5 + 1872);
  v17 = *(v5 + 1904);
  v23[4] = *(v5 + 1888);
  v23[5] = v17;
  v23[6] = *(v5 + 1920);
  v23[7] = v14;
  v18 = *(v5 + 1840);
  v23[0] = *(v5 + 1824);
  v23[1] = v18;
  v23[2] = *(v5 + 1856);
  v23[3] = v16;
  if (DspLib::LoudspeakerManagerV2::updateAppliedModel(v25, v23, (v5 + 2060), *a1, a3, *(a1 + 20), *(a1 + 24)))
  {
    v19 = *(a1 + 32) + 2632 * a2;
    return *(v19 + 1896) > 0.0 && *(v19 + 1828) > 0.0;
  }

  else
  {
    return 0;
  }
}

_OWORD *DspLib::LoudspeakerManagerV2::findCompensator@<X0>(_OWORD *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  v3 = result[5];
  *a3 = result[4];
  *(a3 + 16) = v3;
  v4 = result[7];
  *(a3 + 32) = result[6];
  *(a3 + 48) = v4;
  *(a3 + 120) = 0;
  *(a3 + 128) = 3;
  *(a3 + 64) = 0x3FF0000000000000;
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  v7 = v5 / a2[296];
  if (a2[294] * a2[294] >= v7)
  {
    v7 = a2[294] * a2[294];
  }

  v8 = a2[298];
  v9 = v8 == 1.0;
  v10 = 1.0 / v8 * v7;
  if (!v9)
  {
    v7 = v10;
  }

  *(a3 + 80) = v7;
  v11 = (v7 - v5) * (v7 - v5) / v5;
  v12 = v7 / (a2[295] * a2[295]);
  v13 = fmax(v6 * v6 / (a2[297] * a2[297]) - v11, 0.0);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  v14 = sqrt(v13);
  v15 = a2[299];
  if (v15 != 1.0)
  {
    v14 = sqrt(v11 * (1.0 - v15 * v15) + v14 * v14) / v15;
  }

  *(a3 + 72) = v14;
  *(a3 + 136) = 3;
  return result;
}

uint64_t DspLib::LoudspeakerManagerV2::ModelManager::getZDomainAcousticResonanceControl(DspLib::LoudspeakerManagerV2::ModelManager *this, double a2, uint64_t a3)
{
  v5 = *(this + 4) + 2632 * a3;
  if (*(v5 + 2348) == 1)
  {
    v7 = 96;
    if (!*(v5 + 2056))
    {
      v7 = 52;
    }

    v8 = (v5 + v7);
    v9 = *(v5 + 2064);
    v10 = v8[516];
    v11 = v8[517];
    v12 = v8[519];
    v13 = *(v5 + 2132);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v22 = vdupq_n_s64(0x3DA5FD7FE0000000uLL);
    v14 = v12;
    v21 = v14 / (v9 * v13);
    v28 = v11;
    v27 = (v14 + v9 * v10) / v9;
    v26 = 0x3FF0000000000000;
    v32 = vdupq_n_s64(3uLL);
    memcpy(__dst, v5, sizeof(__dst));
    DspLib::LoudspeakerManagerV2::findCompensator(&v21, __dst, v33);
    DspLib::sPolynomialToBiquadCoefficients(v33, a2, v34[8], v34, v34[9], this + 13, 0);
  }

  else
  {
    std::vector<DspLib::Biquad::Section>::resize(this + 13, 1uLL);
    v15 = *(this + 13);
    *v15 = DspLib::Biquad::kBypassSection;
    *(v15 + 16) = 0;
  }

  v16 = *(this + 13);
  v17 = *(this + 16) + 20 * a3;
  v18 = *v16;
  *(v17 + 16) = *(v16 + 4);
  *v17 = v18;
  return *(this + 13);
}

uint64_t DspLib::LoudspeakerManagerV2::ModelManager::passiveRadiatorZDomainCoefficients(DspLib::LoudspeakerManagerV2::ModelManager *this, double a2, uint64_t a3)
{
  v4 = *(this + 4);
  v5 = v4 + 2632 * a3;
  if (*(v5 + 2616) == 1)
  {
    v7 = *(v4 + 2632 * *(this + 1) + 1144);
    if (*(v5 + 2617) == 1)
    {
      v8 = v5 + 1148;
    }

    else
    {
      v8 = v5 + 912;
    }

    DspLib::LoudspeakerManagerV2::displacementPassiveRadiatorPolynomial(v8, v5 + 2616, v7, v12);
    v15[2] = v12[6];
    v15[3] = v12[7];
    v15[4] = v13;
    v14[2] = v12[2];
    v14[3] = v12[3];
    v15[0] = v12[4];
    v15[1] = v12[5];
    v14[0] = v12[0];
    v14[1] = v12[1];
    DspLib::sPolynomialToBiquadCoefficients(v14, a2, v13, v15, *(&v13 + 1), this + 10, this + 19, 0);
  }

  else
  {
    v9 = *(this + 19);
    *v9 = DspLib::Biquad::kBypassSection;
    *(v9 + 16) = 0;
    v10 = *(this + 19);
    *(v10 + 20) = DspLib::Biquad::kBypassSection;
    *(v10 + 36) = 0;
  }

  return *(this + 19);
}

void std::allocator<DspLib::Biquad::SDomainSection>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<DspLib::LoudspeakerManagerV2::ModelCollection>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xE719AD850EC8C0F9 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 2632 * a2);
      v11 = 2632 * a2;
      do
      {
        DspLib::LoudspeakerManagerV2::ModelCollection::ModelCollection(v5);
        v5 = (v5 + 2632);
        v11 -= 2632;
      }

      while (v11);
      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xE719AD850EC8C0F9 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x18E6527AF1373FLL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xE719AD850EC8C0F9 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xC73293D789B9FLL)
    {
      v9 = 0x18E6527AF1373FLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::allocator<DspLib::LoudspeakerManagerV2::ModelCollection>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v12 = 8 * ((v5 - *a1) >> 3);
    v13 = 2632 * a2;
    v14 = v12 + v13;
    v15 = v12;
    do
    {
      v15 = (DspLib::LoudspeakerManagerV2::ModelCollection::ModelCollection(v15) + 2632);
      v13 -= 2632;
    }

    while (v13);
    v16 = *(a1 + 8) - *a1;
    v17 = v12 - v16;
    memcpy((v12 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

DspLib::LoudspeakerManagerV2::ModelCollection *DspLib::LoudspeakerManagerV2::ModelCollection::ModelCollection(DspLib::LoudspeakerManagerV2::ModelCollection *this)
{
  DspLib::LoudspeakerManagerV2::ModelWithDefault::ModelWithDefault(this, 0);
  DspLib::LoudspeakerManagerV2::ModelWithDefault::ModelWithDefault(v2 + 456, 1);
  DspLib::LoudspeakerManagerV2::ModelWithDefault::ModelWithDefault(this + 912, 2);
  DspLib::LoudspeakerManagerV2::ModelWithDefault::ModelWithDefault(this + 1368, 3);
  DspLib::LoudspeakerManagerV2::ModelWithDefault::ModelWithDefault(this + 1824, 4);
  v3 = 0;
  *(this + 2312) = 0u;
  *(this + 2328) = 0u;
  *(this + 2280) = 0u;
  *(this + 2296) = 0u;
  *(this + 1172) = 0;
  *(this + 2348) = 0;
  *(this + 147) = 0u;
  *(this + 148) = xmmword_1DE095300;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 149) = _Q1;
  *(this + 1200) = 1;
  *(this + 2404) = 0;
  *(this + 2409) = 0;
  *(this + 2420) = 0;
  *(this + 2425) = 0;
  *(this + 2444) = 0;
  *(this + 2436) = 0;
  *(this + 2448) = 0;
  do
  {
    v9 = this + v3;
    v9[2476] = 0;
    v10 = this + v3 + 2452;
    *(v10 + 2) = 0;
    *v10 = 0uLL;
    *(v9 + 310) = 0;
    v9[2488] = 0;
    v9[2492] = 0;
    v3 += 44;
  }

  while (v3 != 132);
  *(this + 323) = vdup_n_s32(0xC2C80000);
  *(this + 648) = 1065353216;
  *(this + 2596) = 0;
  *(this + 650) = 1112014848;
  *(this + 2604) = 0;
  *(this + 328) = 0;
  *(this + 326) = 0;
  *(this + 1308) = 0;
  return this;
}

double DspLib::LoudspeakerManagerV2::ModelWithDefault::ModelWithDefault(uint64_t a1, int a2)
{
  v2 = 0;
  *a1 = 1;
  *(a1 + 4) = 0;
  *(a1 + 9) = 0;
  *(a1 + 20) = 0;
  *(a1 + 25) = 0;
  *(a1 + 36) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  do
  {
    v3 = a1 + v2;
    *(v3 + 60) = 0;
    *(v3 + 52) = 0;
    *(v3 + 76) = 0;
    *(v3 + 68) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    v2 += 44;
    *(v3 + 92) = 0;
  }

  while (v2 != 132);
  v4 = 0;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 1112014848;
  *(a1 + 236) = 1;
  *(a1 + 256) = 0;
  *(a1 + 261) = 0;
  *(a1 + 184) = vdup_n_s32(0xC2C80000);
  *(a1 + 196) = 0;
  *(a1 + 204) = 0;
  *(a1 + 232) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 221) = 0;
  *(a1 + 240) = 0;
  *(a1 + 245) = 0;
  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 284) = 0;
  do
  {
    v5 = a1 + v4;
    *(v5 + 288) = 0;
    *(v5 + 296) = 0;
    *(v5 + 312) = 0;
    *(v5 + 304) = 0;
    *(v5 + 324) = 0;
    *(a1 + v4 + 316) = 0;
    v4 += 44;
    *(v5 + 328) = 0;
  }

  while (v4 != 132);
  *(a1 + 420) = -1027080192;
  result = 0.00781250567;
  *(a1 + 424) = 0x3F800000C2C80000;
  *(a1 + 432) = 0;
  *(a1 + 436) = 1112014848;
  *(a1 + 440) = 0;
  *(a1 + 444) = 0;
  *(a1 + 452) = a2;
  return result;
}

void std::allocator<DspLib::LoudspeakerManagerV2::ModelCollection>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x18E6527AF13740)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<DspLib::Biquad::Section>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 20 * a2;
      do
      {
        *v4 = 1065353216;
        *(v4 + 12) = 0;
        *(v4 + 4) = 0;
        v4 += 20;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<DspLib::Biquad::Section>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v11 = 20 * v6;
    v12 = 20 * v6 + 20 * a2;
    v13 = v11;
    do
    {
      *v13 = 1065353216;
      *(v13 + 12) = 0;
      *(v13 + 4) = 0;
      v13 += 20;
    }

    while (v13 != v12);
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t DspLib::LoudspeakerManagerV2::smoothResonatorCoefficients(uint64_t result, uint64_t a2, char a3)
{
  v3 = vdup_n_s32(0x3E4CCCCDu);
  *(result + 4) = vmla_f32(*(result + 4), v3, vsub_f32(*(a2 + 4), *(result + 4)));
  *(result + 16) = vmla_f32(*(result + 16), v3, vsub_f32(*(a2 + 16), *(result + 16)));
  if (a3)
  {
    *result = *result + ((*a2 - *result) * 0.2);
    *(result + 12) = *(result + 12) + ((*(a2 + 12) - *(result + 12)) * 0.2);
  }

  else
  {
    *result = 0;
    *(result + 12) = 0;
  }

  return result;
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::initialize(DspLib::LoudspeakerSystemIDV2::ModelFit *this, double a2, uint64_t a3)
{
  *(this + 164) = a2;
  *(this + 166) = a3;
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::initialize((this + 1336), a2, a3);
}

void sub_1DDB9B368(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::initialize((v14 + 581), v16, v15);
  DspLib::ComplexVector::setLength((v14 + 1), v14[226]);
  DspLib::ComplexVector::setLength((v14 + 11), v14[364]);
  DspLib::ComplexVector::setLength((v14 + 21), v14[502]);
  DspLib::ComplexVector::setLength((v14 + 31), v14[638]);
  DspLib::ComplexVector::setLength((v14 + 41), v14[364]);
  DspLib::ComplexVector::setLength((v14 + 51), v14[502]);
  DspLib::ComplexVector::setLength((v14 + 61), v14[638]);
  DspLib::ComplexVector::setLength((v14 + 71), v14[226]);
  DspLib::ComplexVector::setLength((v14 + 81), v14[502]);
  DspLib::ComplexVector::setLength((v14 + 92), v14[638]);
  DspLib::ComplexVector::setLength((v14 + 102), v14[226]);
  DspLib::ComplexVector::setLength((v14 + 112), v14[364]);
  DspLib::ComplexVector::setLength((v14 + 122), v14[226]);
  DspLib::ComplexVector::setLength((v14 + 132), v14[364]);
  DspLib::ComplexVector::setLength((v14 + 142), v14[502]);
  DspLib::ComplexVector::setLength((v14 + 152), v14[638]);
  *v14 = 1;

  DspLib::LoudspeakerSystemIDV2::ModelFit::reset(v14);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::uninitialize(DspLib::LoudspeakerSystemIDV2::ModelFit *this)
{
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::uninitialize((this + 1336));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::uninitialize((this + 2440));
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::uninitialize((this + 3544));
  DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::uninitialize((this + 4648));
  DspLib::ComplexVector::setLength((this + 8), 0);
  DspLib::ComplexVector::setLength((this + 88), 0);
  DspLib::ComplexVector::setLength((this + 168), 0);
  DspLib::ComplexVector::setLength((this + 248), 0);
  DspLib::ComplexVector::setLength((this + 328), 0);
  DspLib::ComplexVector::setLength((this + 408), 0);
  DspLib::ComplexVector::setLength((this + 488), 0);
  DspLib::ComplexVector::setLength((this + 568), 0);
  DspLib::ComplexVector::setLength((this + 648), 0);
  DspLib::ComplexVector::setLength((this + 736), 0);
  DspLib::ComplexVector::setLength((this + 816), 0);
  DspLib::ComplexVector::setLength((this + 896), 0);
  DspLib::ComplexVector::setLength((this + 976), 0);
  DspLib::ComplexVector::setLength((this + 1056), 0);
  DspLib::ComplexVector::setLength((this + 1136), 0);

  DspLib::ComplexVector::setLength((this + 1216), 0);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::setParameters(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t *a5)
{
  if (*a1)
  {
    v5 = a5;
    DspLib::LoudspeakerSystemIDV2::ModelFit::readFromNvm(a1, a5);
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v10 = 7 * a4;
    v11 = 7 * a4 + 6;
    if (v11 >= 0x17)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v12 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v11);
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    if ((v10 + 7) >= 0x17)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v13 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v10 + 7);
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    if ((v10 + 8) >= 0x17)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v14 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v10 + 8);
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    if ((v10 + 5) >= 0x17)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v15 = (a2 + 4 * v12);
    v16 = (a2 + 4 * v14);
    v17 = a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v10 + 5);
    v18.i64[0] = *v16;
    v18.i32[2] = *(v17 + 12);
    v18.i32[3] = *(v17 + 84);
    v19.i64[0] = 0x3F0000003F000000;
    v19.i64[1] = 0x3F0000003F000000;
    *v20.i8 = vand_s8(vmovn_s16(vuzp1q_s16(vcgeq_f32(*v15, v19), vcgeq_f32(v18, v19))), 0x101010101010101);
    v20.i64[1] = v20.i64[0];
    *(a1 + 1296) = vqtbl1_s8(v20, 0x607050301040200);
    v21 = *(a1 + 2176);
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::setParameters((a1 + 1336), v15->f32);
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::setParameters((a1 + 2440), (a2 + 4 * v13));
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::setParameters((a1 + 3544), v16);
    DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::setParameters(a1 + 4648, a2, a3, a4);
    if (v21 != *(a1 + 2176))
    {
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::resetNvm((a1 + 1336), v5);
    }

    DspLib::LoudspeakerSystemIDV2::ModelFit::configureZms1(a1);
    DspLib::LoudspeakerSystemIDV2::ModelFit::configureZms2(a1);
    DspLib::LoudspeakerSystemIDV2::ModelFit::configureZms3(a1);
    DspLib::LoudspeakerSystemIDV2::ModelFit::configureZle(a1);
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    if ((v10 + 4) >= 0x17)
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    *(a1 + 1324) = *(a2 + 4 * DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, v10 + 4)) * 6.2832;
    if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV2::Parameters::kDefinition, 0x17u))
    {
      DspLib::AlgorithmBaseNewParameters::parameterGroup();
    }

    v22 = *(a2 + 4);
    if (v22 >= 0.5 && (*(a1 + 2) & 1) == 0)
    {
      DspLib::LoudspeakerSystemIDV2::ModelFit::reset(a1);
    }

    *(a1 + 2) = v22 >= 0.5;
    *(a1 + 1) = 1;
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::ModelFit::setParameters();
  }
}

double DspLib::LoudspeakerSystemIDV2::ModelFit::readFromNvm(DspLib::LoudspeakerSystemIDV2::ModelFit *this, unint64_t *a2)
{
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::readFromNvm((this + 1336), 0, a2);
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::readFromNvm((this + 2440), 1, a2);
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::readFromNvm((this + 3544), 2, a2);

  return DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::readFromNvm((this + 4648), a2);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::configureZms1(DspLib::LoudspeakerSystemIDV2::ModelFit *this)
{
  if (*(this + 1299) == 1)
  {
    if (*(this + 1297) == 1)
    {
      DspLib::ComplexVector::setLength((this + 568), *(this + 226));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 2440), (this + 568), (this + 1872), this + 842, *(this + 3280));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 568), 0);
    }

    if (*(this + 1298) == 1)
    {
      DspLib::ComplexVector::setLength((this + 816), *(this + 226));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 3544), this + 51, (this + 1872), this + 1118, *(this + 4384));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 816), 0);
    }

    if (*(this + 1302) == 1)
    {
      DspLib::ComplexVector::setLength((this + 8), *(this + 226));
      DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel((this + 4648), (this + 8), (this + 1872), this + 1388);
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 8), 0);
    }

    DspLib::ComplexVector::setLength((this + 976), *(this + 226));
    v2 = DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(*(this + 330), *(this + 331), this + 1336, this + 566, *(this + 2176));
  }

  else
  {
    DspLib::ComplexVector::setLength((this + 568), 0);
    DspLib::ComplexVector::setLength((this + 816), 0);
    DspLib::ComplexVector::setLength((this + 8), 0);
    DspLib::ComplexVector::setLength((this + 976), 0);
    v2 = 0.0;
  }

  *(this + 182) = v2;
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::configureZms2(DspLib::LoudspeakerSystemIDV2::ModelFit *this)
{
  if (*(this + 1300) == 1)
  {
    if (*(this + 1296) == 1)
    {
      DspLib::ComplexVector::setLength((this + 328), *(this + 364));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 1336), (this + 328), (this + 2976), this + 566, *(this + 2176));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 328), 0);
    }

    if (*(this + 1298) == 1)
    {
      DspLib::ComplexVector::setLength((this + 896), *(this + 364));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 3544), this + 56, (this + 2976), this + 1118, *(this + 4384));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 896), 0);
    }

    if (*(this + 1302) == 1)
    {
      DspLib::ComplexVector::setLength((this + 88), *(this + 364));
      DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel((this + 4648), (this + 88), (this + 2976), this + 1388);
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 88), 0);
    }

    v3 = *(this + 364);
    v2 = (this + 1056);
  }

  else
  {
    DspLib::ComplexVector::setLength((this + 328), 0);
    DspLib::ComplexVector::setLength((this + 896), 0);
    DspLib::ComplexVector::setLength((this + 88), 0);
    v2 = (this + 1056);
    v3 = 0;
  }

  DspLib::ComplexVector::setLength(v2, v3);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::configureZms3(DspLib::LoudspeakerSystemIDV2::ModelFit *this)
{
  if (*(this + 1301) == 1)
  {
    if (*(this + 1296) == 1)
    {
      DspLib::ComplexVector::setLength((this + 408), *(this + 502));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 1336), (this + 408), (this + 4080), this + 566, *(this + 2176));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 408), 0);
    }

    if (*(this + 1297) == 1)
    {
      DspLib::ComplexVector::setLength((this + 648), *(this + 502));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 2440), (this + 648), (this + 4080), this + 842, *(this + 3280));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 648), 0);
    }

    if (*(this + 1302) == 1)
    {
      DspLib::ComplexVector::setLength((this + 168), *(this + 502));
      DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel((this + 4648), (this + 168), (this + 4080), this + 1388);
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 168), 0);
    }

    v3 = *(this + 502);
    v2 = (this + 1136);
  }

  else
  {
    DspLib::ComplexVector::setLength((this + 408), 0);
    DspLib::ComplexVector::setLength((this + 648), 0);
    DspLib::ComplexVector::setLength((this + 168), 0);
    v2 = (this + 1136);
    v3 = 0;
  }

  DspLib::ComplexVector::setLength(v2, v3);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::configureZle(DspLib::LoudspeakerSystemIDV2::ModelFit *this)
{
  if (*(this + 1303) == 1)
  {
    if (*(this + 1296) == 1)
    {
      DspLib::ComplexVector::setLength((this + 248), *(this + 638));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 1336), (this + 248), (this + 5168), this + 566, *(this + 2176));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 248), 0);
    }

    if (*(this + 1297) == 1)
    {
      DspLib::ComplexVector::setLength((this + 488), *(this + 638));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 2440), (this + 488), (this + 5168), this + 842, *(this + 3280));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 488), 0);
    }

    if (*(this + 1298) == 1)
    {
      DspLib::ComplexVector::setLength((this + 736), *(this + 638));
      DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((this + 3544), this + 46, (this + 5168), this + 1118, *(this + 4384));
    }

    else
    {
      DspLib::ComplexVector::setLength((this + 736), 0);
    }

    v3 = *(this + 638);
    v2 = (this + 1216);
  }

  else
  {
    DspLib::ComplexVector::setLength((this + 248), 0);
    DspLib::ComplexVector::setLength((this + 488), 0);
    DspLib::ComplexVector::setLength((this + 736), 0);
    v2 = (this + 1216);
    v3 = 0;
  }

  DspLib::ComplexVector::setLength(v2, v3);
}

uint64_t DspLib::LoudspeakerSystemIDV2::ModelFit::writeToNvm(DspLib::LoudspeakerSystemIDV2::ModelFit *this, unsigned int a2)
{
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::writeToNvm((this + 1336), 0, a2);
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::writeToNvm((this + 2440), 1, a2);
  DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::writeToNvm((this + 3544), 2, a2);

  return DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::writeToNvm((this + 4648), a2);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::process(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, char a6, unint64_t *a7, float a8)
{
  if ((*(a1 + 1) & 1) == 0)
  {
    DspLib::LoudspeakerSystemIDV2::ModelFit::process();
    return;
  }

  v8 = a7;
  DspLib::LoudspeakerSystemIDV2::ModelFit::readFromNvm(a1, a7);
  if (a6)
  {
    v17 = *(a1 + 4);
    if (v17 > 2)
    {
      if (v17 != 3)
      {
        if (v17 == 4)
        {
          if (*(a1 + 1302) == 1 && *(a1 + 1303) == 1)
          {
            if (*(a1 + 1296) == 1)
            {
              DspLib::copy((a1 + 248), (a1 + 1216), v16);
            }

            else
            {
              DspLib::ComplexVector::operator=(a1 + 1216, 0.0);
            }

            if (*(a1 + 1297) == 1)
            {
              DspLib::operator+=(a1 + 1216, a1 + 488);
            }

            if (*(a1 + 1298) == 1)
            {
              DspLib::operator+=(a1 + 1216, a1 + 736);
            }

            DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::process(a1 + 4648, a2, a3, a4, a5, (a1 + 1216), a8);
            DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel((a1 + 4648), (a1 + 8), (a1 + 1872), (a1 + 5552));
            DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel((a1 + 4648), (a1 + 88), (a1 + 2976), (a1 + 5552));
            DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel((a1 + 4648), (a1 + 168), (a1 + 4080), (a1 + 5552));
          }

          else
          {
            *(a1 + 5068) = 0;
          }

          *(a1 + 1304) = 1;
          *(a1 + 4) = 0;
        }

        goto LABEL_63;
      }

      if (*(a1 + 1298) == 1)
      {
        if (*(a1 + 1301) == 1)
        {
          if (*(a1 + 1302) == 1)
          {
            DspLib::copy((a1 + 168), (a1 + 1136), v16);
          }

          else
          {
            DspLib::ComplexVector::operator=(a1 + 1136, 0.0);
          }

          if (*(a1 + 1296) == 1)
          {
            DspLib::operator+=(a1 + 1136, a1 + 408);
          }

          if (*(a1 + 1297) == 1)
          {
            DspLib::operator+=(a1 + 1136, a1 + 648);
          }

          *(a1 + 4600) = *(a1 + 2320);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::process(a1 + 3544, a2, a3, a4, a5, (a1 + 1136), a8);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 3544), (a1 + 816), (a1 + 1872), (a1 + 4472), 0);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 3544), (a1 + 896), (a1 + 2976), (a1 + 4472), 0);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 3544), (a1 + 736), (a1 + 5168), (a1 + 4472), 0);
        }

        else
        {
          *(a1 + 3964) = 0;
        }
      }

      else
      {
        *(a1 + 3964) = 0;
      }

      v21 = 4;
      goto LABEL_62;
    }

    if (v17 == 1)
    {
      if (*(a1 + 1296) == 1 && *(a1 + 1299) == 1)
      {
        v19 = DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(*(a1 + 1320), *(a1 + 1324), a1 + 1336, (a1 + 2264), *(a1 + 2176));
        v20 = v19 + ((*(a1 + 728) - v19) * 0.1);
        if (v20 > 0.1)
        {
          v20 = 0.1;
        }

        *(a1 + 728) = v20;
        if (*(a1 + 1302) == 1)
        {
          DspLib::copy((a1 + 8), (a1 + 976), v18);
        }

        else
        {
          DspLib::ComplexVector::operator=(a1 + 976, 0.0);
        }

        if (*(a1 + 1297) == 1)
        {
          DspLib::operator+=(a1 + 976, a1 + 568);
        }

        if (*(a1 + 1298) == 1)
        {
          DspLib::operator+=(a1 + 976, a1 + 816);
        }

        DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::process(a1 + 1336, a2, a3, a4, a5, (a1 + 976), a8);
        DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 1336), (a1 + 328), (a1 + 2976), (a1 + 2264), *(a1 + 2176));
        DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 1336), (a1 + 408), (a1 + 4080), (a1 + 2264), *(a1 + 2176));
        DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 1336), (a1 + 248), (a1 + 5168), (a1 + 2264), *(a1 + 2176));
      }

      else
      {
        *(a1 + 1756) = 0;
      }

      v21 = 2;
      goto LABEL_62;
    }

    if (v17 == 2)
    {
      if (*(a1 + 1297) == 1)
      {
        if (*(a1 + 1300) == 1 && *(a1 + 1756) == 1)
        {
          if (*(a1 + 1302) == 1)
          {
            DspLib::copy((a1 + 88), (a1 + 1056), v16);
          }

          else
          {
            DspLib::ComplexVector::operator=(a1 + 1056, 0.0);
          }

          if (*(a1 + 1296) == 1)
          {
            DspLib::operator+=(a1 + 1056, a1 + 328);
          }

          if (*(a1 + 1298) == 1)
          {
            DspLib::operator+=(a1 + 1056, a1 + 896);
          }

          *(a1 + 3496) = *(a1 + 2320);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::process(a1 + 2440, a2, a3, a4, a5, (a1 + 1056), a8);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 2440), (a1 + 568), (a1 + 1872), (a1 + 3368), 0);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 2440), (a1 + 648), (a1 + 4080), (a1 + 3368), 0);
          DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel((a1 + 2440), (a1 + 488), (a1 + 5168), (a1 + 3368), 0);
        }

        else
        {
          *(a1 + 2860) = 0;
        }
      }

      else
      {
        *(a1 + 2860) = 0;
      }

      v21 = 3;
LABEL_62:
      *(a1 + 4) = v21;
    }
  }

  else
  {
    *(a1 + 1756) = 0;
    *(a1 + 2860) = 0;
    *(a1 + 3964) = 0;
    *(a1 + 5068) = 0;
  }

LABEL_63:

  DspLib::LoudspeakerSystemIDV2::ModelFit::writeToNvm(a1, v8);
}

DSPSplitComplex *DspLib::LoudspeakerSystemIDV2::updateEstimatedModel(DspLib::LoudspeakerSystemIDV2 *this, DSPSplitComplex *a2, float a3, DspLib::ComplexSpan *a4, float a5, const DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *a6, uint64_t a7, const DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *a8, uint64_t a9, const DspLib::LoudspeakerSystemIDV2::SingleResonanceModel *a10, uint64_t a11, const DspLib::LoudspeakerSystemIDV2::LR2InductanceModel *a12, BOOL a13, BOOL a14)
{
  v14 = a10;
  v16 = a8;
  v18 = a6;
  v37[5] = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1EEE9AC00](this);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v37[0] = v25;
  v37[1] = &v34 - v24;
  v37[2] = 3 * v23;
  v37[3] = 3;
  v37[4] = v23;
  DspLib::LoudspeakerSystemIDV2::calculateSPlaneFrequencyVector(v37, 0.0, v27, v26);
  v28 = DspLib::ComplexSpan::operator=(a2, a5);
  v29 = MEMORY[0x1EEE9AC00](v28);
  result = MEMORY[0x1EEE9AC00](v29);
  __B.realp = v32;
  __B.imagp = (&v34 - v31);
  v36 = v33;
  if (v18)
  {
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(a4, &__B, v37, a4 + 232, BYTE1(a12));
    result = DspLib::operator+=(a2, &__B);
  }

  if (v16)
  {
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(a7, &__B, v37, (a7 + 928), 0);
    result = DspLib::operator+=(a2, &__B);
  }

  if (v14)
  {
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::calculateEstimatedResonanceModel(a9, &__B, v37, (a9 + 928), 0);
    result = DspLib::operator+=(a2, &__B);
  }

  if (a12)
  {
    DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::calculateEstimatedInductanceModel(a11, &__B, v37, (a11 + 904));
    return DspLib::operator+=(a2, &__B);
  }

  return result;
}

void DspLib::LoudspeakerSystemIDV2::calculateSPlaneFrequencyVector(DspLib::LoudspeakerSystemIDV2 *this, float a2, float a3, DspLib::ComplexMatrixSpan *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    v7 = MEMORY[0x1EEE9AC00](this);
    MEMORY[0x1EEE9AC00](v7);
    v8 = 0;
    v9 = 0;
    __A.realp = v11;
    __A.imagp = (&v20 - v10);
    v24 = v12;
    do
    {
      v26.imag = (a2 + (v9 * a3)) * 6.2832;
      v26.real = 0.0;
      v13 = DspLib::ComplexSpan::setElement(&__A, v8, v26);
      v8 = ++v9;
    }

    while (v24 > v9);
    v14 = MEMORY[0x1EEE9AC00](v13);
    MEMORY[0x1EEE9AC00](v14);
    __C.realp = v16;
    __C.imagp = (&v20 - v15);
    v22 = v17;
    DspLib::ComplexSpan::operator=(&__C, &__A);
    DspLib::ComplexMatrixSpan::setRow(this, 0, &__C);
    if (*(this + 3) >= 2uLL)
    {
      v18 = 3;
      do
      {
        DspLib::operator*=(&__C, &__A);
        DspLib::ComplexMatrixSpan::setRow(this, v18 - 2, &__C);
      }

      while (*(this + 3) >= v18++);
    }
  }
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::status(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v6 = MEMORY[0x1EEE9AC00]((*(a1 + 1328) >> 1) - 1);
    v7 = MEMORY[0x1EEE9AC00](v6);
    __A.realp = v9;
    __A.imagp = (&__A - v8);
    v16 = v7;
    BYTE1(v14) = *(a1 + 2176);
    LOBYTE(v14) = *(a1 + 1302);
    DspLib::LoudspeakerSystemIDV2::updateEstimatedModel(v7, &__A, v10, (a1 + 1336), v11, *(a1 + 1296), a1 + 2440, *(a1 + 1297), a1 + 3544, *(a1 + 1298), a1 + 4648, v14, __A.realp, SBYTE1(__A.realp));
    vDSP_zvabs(&__A, 1, (a2 + 12604), 1, v16);
    vDSP_zvphas(&__A, 1, (a2 + 16704), 1, v16);
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::status(a1 + 1336, a2, a3, 0);
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::status(a1 + 2440, a2, a3, 1);
    DspLib::LoudspeakerSystemIDV2::SingleResonanceModel::status(a1 + 3544, a2, a3, 2);
    DspLib::LoudspeakerSystemIDV2::LR2InductanceModel::status(a1 + 4648, a2);
    *(a2 + 20804) = *(a1 + 728);
    if (a3)
    {
      v12 = 1;
      do
      {
        if ((*a2 & 0x7FFFFFFFu) >= 0x7F800000)
        {
          *a2 = 0;
        }

        a2 += 4;
      }

      while (a3 > v12++);
    }
  }

  else
  {
    DspLib::LoudspeakerSystemIDV2::ModelFit::status();
  }
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::setParameters()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ModelFit.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 90);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ModelFit.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 344);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerSystemIDV2::ModelFit::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV2/LoudspeakerSystemIDV2/dsp/DspLibLoudspeakerSystemIDV2ModelFit.cpp");
  printf("DSP Sound assertion in %s at line %d\n", v0, 552);
  OUTLINED_FUNCTION_0(&DspLibDebug::mAssertCounter);
}

void DspLib::LoudspeakerManagerV1::ModelManager::coldStartBiquad(uint64_t *a1, double a2, float a3)
{
  v12 = a3;
  v11 = 1065353216;
  DspLib::sPolynomialToBiquadCoefficients(&v11, a2, 1, &v12, 1, a1, 1);
  v4 = *a1;
  v5 = a1[1];
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
  if (v6 <= 1)
  {
    do
    {
      v7 = a1[2];
      if (v5 >= v7)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 2);
        if (2 * v8 <= v6 + 1)
        {
          v9 = v6 + 1;
        }

        else
        {
          v9 = 2 * v8;
        }

        if (v8 >= 0x666666666666666)
        {
          v10 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<DspLib::Biquad::Section>::allocate_at_least[abi:ne200100](a1, v10);
      }

      *(v5 + 16) = 0;
      *v5 = DspLib::Biquad::kBypassSection;
      v5 += 20;
      a1[1] = v5;
      v4 = *a1;
      v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    }

    while (v6 < 2);
  }
}

void DspLib::LoudspeakerManagerV1::ModelManager::initialize(DspLib::LoudspeakerManagerV1::ModelManager *this)
{
  std::vector<DspLib::Biquad::Section>::reserve(this + 8, 3uLL);
  DspLib::LoudspeakerManagerV1::ModelManager::pageInRootsPath(this);
  *(this + 9) = *(this + 8);
}

void DspLib::LoudspeakerManagerV1::ModelManager::pageInRootsPath(DspLib::LoudspeakerManagerV1::ModelManager *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = xmmword_1DE095420;
  v29 = 1084227584;
  v26 = xmmword_1DE095440;
  v27 = 1092616192;
  v2 = (this + 64);
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - *(this + 8)) >> 2);
  MEMORY[0x1EEE9AC00](this);
  v5 = &v26 - v4;
  v7 = &v26 + 4 * v6 - v4;
  v8 = &v26 - v4;
  do
  {
    *v8 = 1065353216;
    *(v8 + 12) = 0;
    *(v8 + 4) = 0;
    v8 += 20;
  }

  while (v8 != v7);
  v9 = *(this + 8);
  v10 = *(this + 9) - v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 2);
    v13 = 1;
    do
    {
      v14 = 5 * v11;
      v15 = (v9 + 4 * v14);
      v16 = &v5[4 * v14];
      v17 = *v15;
      *(v16 + 4) = *(v15 + 4);
      *v16 = v17;
      v11 = v13;
      v18 = v12 > v13++;
    }

    while (v18);
  }

  std::vector<DspLib::Biquad::Section>::resize(v2, 2uLL);
  DspLib::sPolynomialToBiquadCoefficients(&v28, 6000.0, 5, &v26, 5, v2, 1);
  std::vector<DspLib::Biquad::Section>::resize(v2, v3);
  v19 = *(this + 8);
  if (*(this + 9) != v19)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      v22 = 5 * v20;
      v23 = &v5[4 * v22];
      v24 = v19 + 4 * v22;
      v25 = *v23;
      *(v24 + 16) = *(v23 + 4);
      *v24 = v25;
      v20 = v21;
      v19 = *(this + 8);
      v18 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v19) >> 2) > v21++;
    }

    while (v18);
  }

  *(this + 14) = 0;
}

void DspLib::LoudspeakerManagerV1::ModelManager::getAdmittanceModel(DspLib::LoudspeakerManagerV1::ModelManager *this@<X0>, int *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v43[2] = *MEMORY[0x1E69E9840];
  v10 = *(this + 8);
  v11 = (this + 64);
  v12 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v10) >> 2);
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = 1.0 / *(this + 24);
  ++*(this + 14);
  if (*(this + 90) == 1)
  {
    DspLib::LoudspeakerManagerV1::ModelManager::coldStartBiquad(this + 8, a5, *(this + 23));
    v13 = *(this + 8);
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v13) >> 2);
    *a4 = v13;
    *(a4 + 8) = v14;
    *(a4 + 16) = 1.0 / *(this + 23);
    *(this + 90) = 0;
  }

  if (*(this + 88) == 1)
  {
    v15 = *a2;
    v16 = *(a2 + 1);
    v17 = *(a2 + 16);
    v43[0] = *(a2 + 17);
    *(v43 + 7) = *(a2 + 3);
    v18 = *(a2 + 40);
    v42[0] = *(a2 + 41);
    *(v42 + 7) = *(a2 + 6);
    v19 = *(a2 + 64);
    if ((a3 & 1) != 0 || *(this + 89) != 1 || vabds_f32(v16, *(this + 24)) > 0.01)
    {
      *(this + 24) = v16;
      *&v38 = v43[0];
      *(&v38 + 7) = *(v43 + 7);
      v41[0] = v42[0];
      *(v41 + 7) = *(v42 + 7);
      v20 = *(this + 23);
      if ((atomic_load_explicit(&qword_1ECDA7E28, memory_order_acquire) & 1) == 0)
      {
        v34 = v20;
        v29 = v16;
        v30 = v19;
        v33 = v17;
        v31 = LOBYTE(v15);
        v32 = v18;
        DspLib::LoudspeakerManagerV1::ModelManager::getAdmittanceModel(v20);
        v18 = v32;
        LOBYTE(v15) = v31;
        v17 = v33;
        v19 = v30;
        v16 = v29;
        v20 = v34;
      }

      if (LOBYTE(v15))
      {
        _MergedGlobals = LODWORD(v20);
        LODWORD(DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es) = DspLib::LoudspeakerSystemIDV1::tsParametersToCoeffs(0.0000215, 0.000016, 1.9);
        HIDWORD(DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es) = v21;
        dword_1ECDA7E10 = v22;
        LODWORD(DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms) = DspLib::LoudspeakerSystemIDV1::tsParametersToCoeffs(5.006, 0.0282);
        HIDWORD(DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms) = v23;
        dword_1ECDA7E1C = v24;
      }

      else if (v17)
      {
        _MergedGlobals = LODWORD(v16);
        if (v18)
        {
          DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es = *(&v38 + 3);
          dword_1ECDA7E10 = *(&v38 + 11);
        }

        if (v19)
        {
          DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms = *(v41 + 3);
          dword_1ECDA7E1C = *(&v41[1] + 3);
        }
      }

      v25 = 0;
      LODWORD(v35) = HIDWORD(DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es);
      v36 = (*&_MergedGlobals * *&dword_1ECDA7E10) * *(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms + 1);
      *v37 = 1065353216;
      *&v37[4] = *&dword_1ECDA7E10 + *&dword_1ECDA7E1C;
      *&v37[8] = *(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms + 1) + (*&dword_1ECDA7E10 * *&dword_1ECDA7E1C);
      *&v37[12] = COERCE_UNSIGNED_INT(*&dword_1ECDA7E10 * *(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms + 1));
      do
      {
        v25 += 4;
      }

      while (v25 != 20);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v37, *v37)))) & 1) == 0)
      {
        *(&v35 + 3) = (((*&_MergedGlobals * *(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms + 1)) + ((*&_MergedGlobals * *&dword_1ECDA7E10) * *&dword_1ECDA7E1C)) + (*&dword_1ECDA7E10 * *&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms)) + (*(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms + 1) * *&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es);
        *(&v35 + 2) = *&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms + ((((*&_MergedGlobals * *&dword_1ECDA7E1C) + (*&_MergedGlobals * *&dword_1ECDA7E10)) + (*(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::ms + 1) * *(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es + 1))) + (*&dword_1ECDA7E1C * *&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es));
        *(&v35 + 1) = *&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es + (*&_MergedGlobals + (*&dword_1ECDA7E1C * *(&DspLib::LoudspeakerManagerV1::impedancePolynomialSingleResonatorPlusLR2Inductance(DspLib::LoudspeakerSystemIDV1::SpeakerModel,float)::es + 1)));
        *(this + 20) = v35;
        *(this + 9) = v36;
        *this = *v37;
        *(this + 4) = *&v37[16];
        *(this + 40) = xmmword_1DE095220;
      }

      v26 = *(this + 2);
      v39[0] = *(this + 1);
      v39[1] = v26;
      v38 = *this;
      v40 = *(this + 6);
      DspLib::sPolynomialToBiquadCoefficients(&v38, a5, *(&v26 + 1), (v39 + 4), v40, v11, 1);
      *(this + 14) = 0;
      v27 = *(this + 8);
      v28 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 9) - v27) >> 2);
      *a4 = v27;
      *(a4 + 8) = v28;
      *(a4 + 16) = 1.0 / *(this + 24);
    }

    *(this + 89) = 1;
  }

  else
  {
    *(this + 89) = 0;
  }

  if (*(this + 14) >= 0x1F5u)
  {
    DspLib::LoudspeakerManagerV1::ModelManager::pageInRootsPath(this);
  }
}

void DspLib::LoudspeakerManagerV1::ModelManager::getAdmittanceModel(float a1)
{
  if (__cxa_guard_acquire(&qword_1ECDA7E28))
  {
    _MergedGlobals = LODWORD(a1);

    __cxa_guard_release(&qword_1ECDA7E28);
  }
}

DspLib::LoudspeakerManagerV2::Algorithm *DspLib::LoudspeakerManagerV2::Algorithm::Algorithm(DspLib::LoudspeakerManagerV2::Algorithm *this)
{
  v2 = DspLib::AlgorithmBaseNewParameters::AlgorithmBaseNewParameters(this, &DspLib::LoudspeakerManagerV2::Parameters::kSystemDefinition);
  *v2 = &unk_1F5919480;
  *(v2 + 312) = 256;
  *(v2 + 314) = 0;
  *(v2 + 316) = 0;
  *(v2 + 321) = 0;
  *(v2 + 332) = 0;
  *(v2 + 340) = 0;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 500) = 0u;
  *(v2 + 516) = 1;
  *(v2 + 536) = 0;
  *(v2 + 520) = 0u;
  *(v2 + 544) = 0;
  *(v2 + 568) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 576) = 1;
  *(v2 + 584) = 0;
  *(v2 + 592) = 0;
  *(v2 + 596) = 0u;
  *(v2 + 612) = 0u;
  *(v2 + 628) = 0u;
  *(v2 + 644) = 0u;
  *(v2 + 660) = 0u;
  *(v2 + 676) = 0u;
  *(v2 + 692) = 0u;
  *(v2 + 708) = 0u;
  *(v2 + 724) = 0u;
  *(v2 + 740) = 0u;
  *(v2 + 756) = 0u;
  *(v2 + 772) = 0u;
  *(v2 + 788) = 0u;
  *(v2 + 804) = 0;
  *(v2 + 808) = 0;
  DspLib::Log::Log((v2 + 816));
  DspLib::Log::Log(this + 103);
  DspLib::Log::Log(this + 104);
  return this;
}

void sub_1DDB9D360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  DspLib::Log::~Log((v10 + 824));
  DspLib::Log::~Log((v10 + 816));
  DspLib::LoudspeakerHealth::~LoudspeakerHealth((v10 + 584));
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 528) = v13;
    operator delete(v13);
  }

  a10 = (v10 + 488);
  std::vector<DspLib::PilotToneV2::PilotTone>::__destroy_vector::operator()[abi:ne200100](&a10);
  SpeechEnhancerFilterBank<float>::~SpeechEnhancerFilterBank((v10 + 312));
  DspLib::AlgorithmBaseNewParameters::~AlgorithmBaseNewParameters(v10);
  _Unwind_Resume(a1);
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::initialize(DspLib::LoudspeakerManagerV2::Algorithm *this, uint64_t a2, double a3)
{
  v5 = DspLib::AlgorithmBaseNewParameters::initialize(this, a2, a3);
  if (v5)
  {
    v6 = (*(*this + 64))(this);
    DspLib::LoudspeakerManagerV2::ModelManager::initialize((this + 312), v6);
    v7 = (*(*this + 64))(this);
    std::vector<float>::resize(this + 65, v7);
    std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](&__p, 4uLL);
    for (i = 0; i < (*(*this + 64))(this); ++i)
    {
      v9 = *(this + 33);
      if (*(this + 34) == v9)
      {
        abort();
      }

      DspLib::LoudspeakerController::Algorithm::setSpeakerModel(*v9, __p, 0xCCCCCCCCCCCCCCCDLL * ((v16 - __p) >> 2), 1, i);
    }

    v10 = (*(*this + 64))(this);
    std::vector<DspLib::PilotToneV2::PilotTone>::resize(this + 61, v10);
    v11 = *(this + 61);
    v12 = *(this + 62);
    while (v11 != v12)
    {
      DspLib::PilotToneV2::PilotTone::initialize(v11, *(this + 2));
      v11 = (v11 + 288);
    }

    v13 = (*(*this + 64))(this);
    DspLib::LoudspeakerHealth::initialize((this + 584), a3, v13);
    *(this + 8) = 1;
    (*(*this + 160))(this);
    (*(*this + 168))(this);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  return v5;
}

void sub_1DDB9D600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DspLib::PilotToneV2::PilotTone>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<DspLib::PilotToneV2::PilotTone>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<DspLib::PilotToneV2::PilotTone>::__base_destruct_at_end[abi:ne200100](a1, (*a1 + 288 * a2));
  }
}

DspLib::Log::Instance *DspLib::LoudspeakerManagerV2::Algorithm::uninitialize(DspLib::LoudspeakerManagerV2::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 32))(v4);
  }

  DspLib::LoudspeakerManagerV2::ModelManager::uninitialize(this + 39);
  v5 = *(this + 61);
  v6 = *(this + 62);
  if (v5 != v6)
  {
    do
    {
      DspLib::PilotToneV2::PilotTone::uninitialize(v5);
      v5 += 288;
    }

    while (v5 != v6);
    v5 = *(this + 61);
  }

  std::vector<DspLib::PilotToneV2::PilotTone>::__base_destruct_at_end[abi:ne200100](this + 488, v5);
  DspLib::LoudspeakerHealth::uninitialize(this + 584);
  *(this + 8) = 0;

  return DspLib::LoudspeakerManagerV2::Algorithm::uninitializeLogging(this);
}

DspLib::Log::Instance *DspLib::LoudspeakerManagerV2::Algorithm::uninitializeLogging(caulk::concurrent::messenger ***this)
{
  DspLib::Log::uninitialize(this + 102);
  DspLib::Log::uninitialize(this + 103);
  result = DspLib::Log::uninitialize(this + 104);
  *(this + 808) = 0;
  return result;
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::setParameters(uint64_t a1, float *a2, uint64_t a3, int a4)
{
  result = DspLib::AlgorithmBaseNewParameters::setParameters(a1, a2, a3, a4);
  if (*(a1 + 8) == 1)
  {
    v6 = *(a1 + 16) * (*(*a1 + 128))(a1, 0x200000000, 0);
    *(a1 + 552) = vcvtad_u64_f64(v6 / (4 * (*(*a1 + 64))(a1)));
    v7 = (*(*a1 + 128))(a1, 0x100000000, 0);
    *(a1 + 516) = v7 != 0.0;
    if (v7 == 0.0)
    {
      v8 = *(a1 + 264);
      if (*(a1 + 272) == v8)
      {
        goto LABEL_33;
      }

      DspLib::LoudspeakerController::Algorithm::resetClosedLoopTemperature(*v8);
    }

    DspLib::LoudspeakerManagerV2::ModelManager::setParameters(a1 + 312, *(a1 + 288), (*(a1 + 296) - *(a1 + 288)) >> 2);
    if (*(a1 + 352) != *(a1 + 344))
    {
      v9 = 0;
      v10 = 1;
      do
      {
        if (DspLib::LoudspeakerManagerV2::ModelManager::appliedAccelerationModelDidChange(a1 + 312, v9, 1))
        {
          v11 = *(a1 + 264);
          if (*(a1 + 272) == v11)
          {
            goto LABEL_33;
          }

          v12 = (*(**v11 + 48))();
          ZDomainAcousticResonanceControl = DspLib::LoudspeakerManagerV2::ModelManager::getZDomainAcousticResonanceControl((a1 + 312), v12, v9);
          v15 = *(a1 + 264);
          if (*(a1 + 272) == v15)
          {
            goto LABEL_33;
          }

          DspLib::LoudspeakerController::Algorithm::setSpeakerModel(*v15, ZDomainAcousticResonanceControl, v14, 6, v9);
        }

        v16 = *(a1 + 264);
        if (*(a1 + 272) == v16)
        {
          goto LABEL_33;
        }

        DspLib::LoudspeakerController::Algorithm::setHasPassiveRadiator(*v16, v9, *(*(a1 + 344) + 2632 * v9 + 2616));
        v9 = v10;
      }

      while (0xE719AD850EC8C0F9 * ((*(a1 + 352) - *(a1 + 344)) >> 3) > v10++);
    }

    v18 = *(a1 + 488);
    v19 = *(a1 + 496);
    if (v18 != v19)
    {
      v20 = 0;
      do
      {
        v21 = (v20 + 1);
        v22 = (*(*a1 + 128))(a1, (v20 << 32) | 0x15, 0);
        if (v22 == 1)
        {
          v23 = 22;
        }

        else
        {
          v23 = 1;
        }

        if (v22 == 2)
        {
          v24 = 23;
        }

        else
        {
          v24 = v23;
        }

        v25 = (*(*a1 + 144))(a1, v24, 0);
        DspLib::PilotToneV2::PilotTone::setParameters(v18, v25);
        v18 += 288;
        v20 = v21;
      }

      while (v18 != v19);
    }

    result = (*(*a1 + 64))(a1);
    if (result)
    {
      v26 = 0;
      v27 = 3144;
      for (i = 192; ; i += 288)
      {
        v29 = *(a1 + 264);
        if (*(a1 + 272) == v29)
        {
          break;
        }

        v30 = *v29;
        v31 = *(a1 + 488);
        v32 = *(v31 + i);
        if (v32 <= 1.0)
        {
          v33 = *(v31 + i);
        }

        else
        {
          v33 = 1.0;
        }

        if (v32 >= 0.0)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0.0;
        }

        v35 = (*(v30 + 624) + v27);
        *(v35 - 777) = v34;
        v36 = DspLib::LoudspeakerHealth::setAmplifierVoltsPerFullScale((a1 + 584), v26++, *v35);
        result = (*(*a1 + 64))(a1, v36);
        v27 += 4608;
        if (v26 >= result)
        {
          return result;
        }
      }

LABEL_33:
      abort();
    }
  }

  return result;
}

uint64_t DspLib::LoudspeakerController::Algorithm::setHasPassiveRadiator(DspLib::LoudspeakerController::Algorithm *this, uint64_t a2, char a3)
{
  v5 = *(this + 78) + 4608 * a2;
  DspLib::LoudspeakerController::SpeakerSystemModel::setHasPassiveRadiator((v5 + 208), a3);
  DspLib::LoudspeakerController::SpeakerSystemModel::setHasPassiveRadiator((v5 + 3312), a3);
  v7 = (*(*this + 152))(this, 0);
  v8 = *(*this + 160);

  return v8(this, v7, v6, 0);
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::reset(DspLib::LoudspeakerManagerV2::Algorithm *this)
{
  v2 = *(this + 33);
  v3 = *(this + 34);
  while (v2 != v3)
  {
    v4 = *v2++;
    (*(*v4 + 168))(v4);
  }

  v5 = *(this + 61);
  v6 = *(this + 62);
  while (v5 != v6)
  {
    DspLib::PilotToneV2::PilotTone::reset(v5);
    v5 = (v5 + 288);
  }

  *(this + 544) = 0;
  DspLib::fill(*(this + 65), (*(this + 66) - *(this + 65)) >> 2, NAN);
  *(this + 35) = 0u;
  *(this + 144) = 1;
  DspLib::LoudspeakerHealth::reset((this + 584));

  return DspLib::LoudspeakerManagerV2::Algorithm::resetLogging(this);
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::resetLogging(uint64_t this)
{
  v1 = this;
  if (*(this + 816))
  {
    this = DspLib::Log::flush((this + 816));
  }

  if (*(v1 + 824))
  {
    this = DspLib::Log::flush((v1 + 824));
  }

  if (*(v1 + 832))
  {

    return DspLib::Log::flush((v1 + 832));
  }

  return this;
}

DspLib::Log::Instance *DspLib::LoudspeakerManagerV2::Algorithm::configureLogging(DspLib::LoudspeakerManagerV2::Algorithm *this, int a2)
{
  *(this + 808) = 0;
  if ((a2 & 2) != 0)
  {
    v4 = "/tmp/lsm2/";
  }

  else
  {
    v4 = "/private/var/mobile/tmp/com.apple.audiomxd/lsm2/";
  }

  if ((*&a2 & 0x10001) != 0)
  {
    (*(*this + 232))(this);
    (*(*this + 64))(this);
    std::string::basic_string[abi:ne200100]<0>(&v11, v4);
    v5 = std::string::append(&v11, "LsmFrameLog.bin", 0xFuLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v13 = v5->__r_.__value_.__r.__words[2];
    *__p = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (*(this + 102))
  {
    DspLib::Log::uninitialize(this + 102);
  }

  if ((*&a2 & 0x20001) != 0)
  {
    (*(*this + 64))(this);
    std::string::basic_string[abi:ne200100]<0>(&v11, v4);
    v7 = std::string::append(&v11, "LsmSignalLog.bin", 0x10uLL);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (*(this + 103))
  {
    DspLib::Log::uninitialize(this + 103);
  }

  if ((*&a2 & 0x40001) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, v4);
    v8 = std::string::append(&v11, "LsmConfigurationLog.bin", 0x17uLL);
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    DspLib::Log::initialize();
  }

  if (*(this + 104))
  {
    DspLib::Log::uninitialize(this + 104);
  }

  v9 = *(this + 33);
  if (*(this + 34) == v9)
  {
    abort();
  }

  return DspLib::LoudspeakerController::Algorithm::configureLogging(*v9, a2);
}

void sub_1DDB9E0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::processLogging(std::string::size_type *a1, void *a2, uint64_t a3)
{
  v6 = a1 + 102;
  if (a1[102])
  {
    DspLib::Log::write(a1 + 102, a2[2]);
  }

  if (a1[103])
  {
    DspLib::Log::write(a1 + 103, a2[2]);
  }

  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v8 = 0;
    v9 = 2404;
    do
    {
      if (*v6)
      {
        v10 = (a1[43] + v9);
        v11 = *(v10 - 31);
        if (v11 == 0.0)
        {
          v12 = 1000.0;
        }

        else
        {
          v12 = *(v10 - 29) + ((1.0 / v11) * ((*v10 / *(v10 - 30)) + -1.0));
        }

        DspLib::Log::write(v6, v12);
      }

      if (a1[103])
      {
        DspLib::Log::write(a1 + 103, *(*a2 + 8 * v8), a2[2]);
        if (*(a3 + 24) == 1)
        {
          DspLib::Log::write(a1 + 103, *(*a3 + 8 * v8), *(a3 + 16));
        }
      }

      ++v8;
      result = (*(*a1 + 64))(a1);
      v9 += 2632;
    }

    while (v8 < result);
  }

  return result;
}

void DspLib::LoudspeakerManagerV2::Algorithm::updateAcousticResonanceControlIfNeeded(DspLib::LoudspeakerManagerV2::Algorithm *this)
{
  if (DspLib::LoudspeakerManagerV2::ModelManager::appliedAccelerationModelDidChange(this + 312, *(this + 71), 0))
  {
    v2 = *(this + 33);
    if (*(this + 34) == v2 || (v3 = (*(**v2 + 48))(), ZDomainAcousticResonanceControl = DspLib::LoudspeakerManagerV2::ModelManager::getZDomainAcousticResonanceControl((this + 312), v3, *(this + 71)), v6 = *(this + 33), *(this + 34) == v6))
    {
      abort();
    }

    v7 = ZDomainAcousticResonanceControl;
    v8 = *v6;
    v9 = *(this + 71);

    DspLib::LoudspeakerController::Algorithm::setSpeakerModel(v8, v7, v5, 6, v9);
  }
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::processBlock(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v41 = a1;
  if (*(a1 + 313) == 1)
  {
    v6 = *(a2 + 2);
    if ((*(a1 + 544) & 1) == 0)
    {
      if ((*(*a1 + 64))(a1))
      {
        v7 = 0;
        do
        {
          DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(&v41, v7, 1, 1);
          DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(&v41, v7, 2, 1);
          DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(&v41, v7, 3, 1);
          DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(&v41, v7, 4, 1);
          DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(&v41, v7++, 5, 1);
        }

        while (v7 < (*(*a1 + 64))(a1));
      }

      *(a1 + 544) = 1;
    }

    if ((*(*a1 + 64))(a1))
    {
      v8 = 0;
      for (i = 0; i < (*(*a1 + 64))(a1); ++i)
      {
        DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(&v41, i, 5, 1);
        v10 = *(a1 + 344);
        v11 = *(a1 + 264);
        v12 = *(a1 + 272);
        if (*(v10 + v8 + 2604) == 1)
        {
          if (v12 == v11)
          {
            goto LABEL_60;
          }

          DspLib::LoudspeakerController::Algorithm::setAmbientTemperatureWithCoilCorrection(*v11, *(v10 + v8 + 2308), i, v6);
          v13 = *(a1 + 264);
          if (*(a1 + 272) == v13)
          {
            goto LABEL_60;
          }

          DspLib::LoudspeakerController::Algorithm::setDeltaMagnetTemperature(*v13, *(*(a1 + 344) + v8 + 2608), i);
        }

        else
        {
          if (v12 == v11)
          {
            goto LABEL_60;
          }

          DspLib::LoudspeakerController::Algorithm::setAmbientTemperature(*v11, *(v10 + v8 + 2308), i);
        }

        v14 = *(a1 + 344);
        if (*(a1 + 516) == 1 && *(v14 + v8 + 2344) == 1 && *(v14 + v8 + 2416) == 1)
        {
          v15 = (v14 + v8);
          v16 = v15[570];
          if (v16 == 0.0)
          {
            v17 = 1000.0;
          }

          else
          {
            v17 = v15[572] + ((1.0 / v16) * ((v15[601] / v15[571]) + -1.0));
          }

          if (v17 != *(*(a1 + 520) + 4 * i))
          {
            v19 = *(a1 + 264);
            if (*(a1 + 272) == v19)
            {
              goto LABEL_60;
            }

            DspLib::LoudspeakerController::Algorithm::setClosedLoopTemperature(*v19, v17, i);
            *(*(a1 + 520) + 4 * i) = v17;
          }
        }

        else if (*(v14 + v8 + 2400) == 1)
        {
          v18 = *(a1 + 264);
          if (*(a1 + 272) == v18)
          {
            goto LABEL_60;
          }

          DspLib::LoudspeakerController::Algorithm::decayClosedLoopTemperatureOffset(*v18, i, v6);
        }

        v8 += 2632;
      }
    }

    v20 = *(a1 + 560) + v6;
    *(a1 + 560) = v20;
    if (v20 >= *(a1 + 552))
    {
      DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(&v41, *(a1 + 568), *(a1 + 576), 0);
      *(a1 + 560) = 0;
      v21 = *(a1 + 568);
      v22 = *(a1 + 576);
      if (v21 >= (*(*a1 + 64))(a1) - 1)
      {
        if (v22 == 1)
        {
          v23 = 0;
          LODWORD(v22) = 2;
        }

        else
        {
          v23 = 0;
          if (v22 == 2)
          {
            LODWORD(v22) = 3;
          }

          else
          {
            LODWORD(v22) = 1;
          }
        }
      }

      else
      {
        v23 = v21 + 1;
      }

      *(a1 + 568) = v23;
      *(a1 + 576) = v22;
      v24 = *(a1 + 264);
      if (*(a1 + 272) == v24)
      {
        goto LABEL_60;
      }

      while (1)
      {
        v25 = *v24;
        if (!*(v25 + 552) || (v22 & 0xFFFFFFFE) != 2 || *(*(v25 + 560) + 16 * v23) != 2)
        {
          break;
        }

        v22 = *(a1 + 576);
        if (v23 >= (*(*a1 + 64))(a1) - 1)
        {
          if (v22 == 2)
          {
            v26 = 3;
          }

          else
          {
            v26 = 1;
          }

          v23 = 0;
          if (v22 == 1)
          {
            LODWORD(v22) = 2;
          }

          else
          {
            LODWORD(v22) = v26;
          }
        }

        else
        {
          ++v23;
        }

        *(a1 + 568) = v23;
        *(a1 + 576) = v22;
        v24 = *(a1 + 264);
        if (*(a1 + 272) == v24)
        {
          goto LABEL_60;
        }
      }

      DspLib::LoudspeakerManagerV2::Algorithm::updateAcousticResonanceControlIfNeeded(a1);
    }
  }

  v27 = *(a1 + 264);
  if (*(a1 + 272) == v27)
  {
    goto LABEL_60;
  }

  v28 = *v27;
  v29 = *a2;
  *&v40[16] = *(a2 + 2);
  v30 = a3[1];
  v38 = *a3;
  v39 = v30;
  *v40 = v29;
  (*(*v28 + 176))(v28, v40, &v38);
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 2400;
    while (1)
    {
      v36 = *(a1 + 264);
      if (*(a1 + 272) == v36)
      {
        break;
      }

      DspLib::PilotToneV2::PilotTone::process(*(a1 + 488) + v33, *(*a2 + 8 * v34), *(a2 + 2), *(*(*v36 + 624) + v32), (*(*(*v36 + 624) + v32 + 8) - *(*(*v36 + 624) + v32)) >> 2);
      DspLib::LoudspeakerHealth::process(a1 + 584, *(*a2 + 8 * v34), *(a2 + 2), *(a1 + 344) + v35, v34);
      ++v34;
      result = (*(*a1 + 64))(a1);
      v33 += 288;
      v35 += 2632;
      v32 += 4608;
      if (v34 >= result)
      {
        goto LABEL_57;
      }
    }

LABEL_60:
    abort();
  }

LABEL_57:
  if (*(a1 + 808))
  {
    *v40 = *a2;
    *&v40[8] = *(a2 + 8);
    v37 = a3[1];
    v38 = *a3;
    v39 = v37;
    return DspLib::LoudspeakerManagerV2::Algorithm::processLogging(a1, v40, &v38);
  }

  return result;
}

void DspLib::LoudspeakerManagerV2::Algorithm::processBlock(DspLib::MultiSpan<float>,std::optional<DspLib::MultiSpan<float const>>)::$_0::operator()(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v7 = *a1;
  v8 = *(*a1 + 344);
  v9 = *(v8 + 2632 * a2 + 2616);
  if (a3 <= 2)
  {
    if (a3 >= 2)
    {
      if (a3 == 2)
      {
        v13 = *(v7 + 264);
        if (*(v7 + 272) == v13)
        {
          goto LABEL_35;
        }

        v4 = *(*v13 + 16);
        goto LABEL_17;
      }

LABEL_12:
      if ((a3 | 2) != 3)
      {
        return;
      }

LABEL_17:
      LOBYTE(v35) = 0;
      ZDomainLoudspeakerModel = DspLib::LoudspeakerManagerV2::ModelManager::getZDomainLoudspeakerModel((v7 + 312), a2, a3, (a3 < 2) & (v9 ^ 1u), &v35, a4, v4);
      if (v35 != 1)
      {
        return;
      }

      v16 = *(v7 + 264);
      if (*(v7 + 272) != v16)
      {
        DspLib::LoudspeakerController::Algorithm::setSpeakerModel(*v16, ZDomainLoudspeakerModel, v15, a3, a2);
        if (a3 != 2 || *(*(v7 + 344) + 2632 * a2 + 2616) != 1)
        {
          return;
        }

        v17 = *(v7 + 264);
        if (*(v7 + 272) != v17)
        {
          v18 = *v17;
          v19 = DspLib::LoudspeakerManagerV2::ModelManager::passiveRadiatorZDomainCoefficients((v7 + 312), v4, a2);
          DspLib::LoudspeakerController::Algorithm::setPassiveRadiatorDisplacementModel(v18, v19, v20, a2);
          return;
        }
      }

      goto LABEL_35;
    }

LABEL_10:
    v12 = *(v7 + 264);
    if (*(v7 + 272) == v12)
    {
      goto LABEL_35;
    }

    v4 = *(*v12 + 16);
    goto LABEL_12;
  }

  if ((a3 - 3) < 2)
  {
    goto LABEL_10;
  }

  if (a3 == 5)
  {
    v21 = *(v7 + 264);
    if (*(v7 + 272) != v21)
    {
      v22 = *(*v21 + 16) / *(*v21 + 320);
      DspLib::LoudspeakerManager::zDomainVoiceCoilThermalModel((v8 + 2632 * a2 + 2280), &v35, v22);
      v23 = *(v7 + 264);
      if (*(v7 + 272) != v23)
      {
        v24 = *v23;
        v33 = v35;
        v34 = v36;
        DspLib::LoudspeakerController::Algorithm::setVoiceCoilModel(v24, &v33, a2);
        DspLib::LoudspeakerManager::zDomainMagnetThermalModel((*(v7 + 344) + 2632 * a2 + 2280), &v33, v22);
        v25 = *(v7 + 264);
        if (*(v7 + 272) != v25)
        {
          v26 = *v25;
          v31 = v33;
          v32 = v34;
          DspLib::LoudspeakerController::Algorithm::setMagnetModel(v26, &v31, a2);
          if ((*(v7 + 544) & 1) == 0)
          {
            v27 = *(v7 + 264);
            if (*(v7 + 272) == v27)
            {
              goto LABEL_35;
            }

            DspLib::LoudspeakerController::Algorithm::readNVM(*v27, a2);
            if ((*(v7 + 516) & 1) == 0)
            {
              v28 = *(v7 + 264);
              if (*(v7 + 272) == v28)
              {
                goto LABEL_35;
              }

              DspLib::LoudspeakerController::Algorithm::resetClosedLoopTemperature(*v28);
            }
          }

          v29 = *(v7 + 344);
          if (*(v29 + 2632 * a2 + 2604) != 1)
          {
            return;
          }

          *(v29 + 2632 * a2 + 2308) = *(v29 + 2632 * a2 + 2612) + *(v29 + 2632 * a2 + 2600);
          *(v7 + 516) = 0;
          v30 = *(v7 + 264);
          if (*(v7 + 272) != v30)
          {
            DspLib::LoudspeakerController::Algorithm::resetClosedLoopTemperature(*v30);
            return;
          }
        }
      }
    }

LABEL_35:
    abort();
  }

  if (a3 != 6)
  {
    goto LABEL_12;
  }

  v10 = *(v7 + 264);
  if (*(v7 + 272) == v10)
  {
    goto LABEL_35;
  }

  v11 = *(**v10 + 48);

  v11();
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::selfStatus(void *a1, float *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v8 = 2604;
    do
    {
      v7 |= *(a1[43] + v8);
      ++v6;
      result = (*(*a1 + 64))(a1);
      v8 += 2632;
    }

    while (v6 < result);
    v9 = (v7 & 1);
  }

  else
  {
    v9 = 0.0;
  }

  a2[7] = v9;
  return result;
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::status(void *a1, float *a2, vDSP_Length __N)
{
  DspLib::clear(a2, __N);
  v5 = *(a1 + 128);
  if (v5 < (*(*a1 + 64))(a1))
  {
    DspLib::PilotToneV2::PilotTone::status(a1[61] + 288 * *(a1 + 128), (a2 + 2198));
  }

  DspLib::LoudspeakerManagerV2::ModelManager::status((a1 + 39), a2, v6, v7, v8);
  DspLib::LoudspeakerHealth::status((a1 + 73), (a2 + 2361), 50);
  DspLib::LoudspeakerManagerV2::Algorithm::selfStatus(a1, a2, 8uLL);
  v9 = a1[33];
  if (a1[34] == v9)
  {
    abort();
  }

  v10 = *(**v9 + 200);

  return v10();
}

void DspLib::LoudspeakerManagerV2::Algorithm::~Algorithm(DspLib::Log::Instance **this)
{
  DspLib::LoudspeakerManagerV2::Algorithm::~Algorithm(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5919480;
  DspLib::Log::~Log(this + 104);
  DspLib::Log::~Log(this + 103);
  DspLib::Log::~Log(this + 102);
  DspLib::LoudspeakerHealth::~LoudspeakerHealth((this + 73));
  v2 = this[65];
  if (v2)
  {
    this[66] = v2;
    operator delete(v2);
  }

  v10 = (this + 61);
  std::vector<DspLib::PilotToneV2::PilotTone>::__destroy_vector::operator()[abi:ne200100](&v10);
  v3 = this[58];
  if (v3)
  {
    this[59] = v3;
    operator delete(v3);
  }

  v4 = this[55];
  if (v4)
  {
    this[56] = v4;
    operator delete(v4);
  }

  v5 = this[52];
  if (v5)
  {
    this[53] = v5;
    operator delete(v5);
  }

  v6 = this[49];
  if (v6)
  {
    this[50] = v6;
    operator delete(v6);
  }

  v7 = this[46];
  if (v7)
  {
    this[47] = v7;
    operator delete(v7);
  }

  v8 = this[43];
  if (v8)
  {
    this[44] = v8;
    operator delete(v8);
  }

  *this = &unk_1F591AE18;
  v9 = this[36];
  if (v9)
  {
    this[37] = v9;
    operator delete(v9);
  }

  v10 = (this + 33);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&v10);
  DspLib::AlgorithmBase::~AlgorithmBase(this);
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::latencySamples(DspLib::LoudspeakerManagerV2::Algorithm *this)
{
  v2 = *(this + 33);
  if (*(this + 34) == v2)
  {
    abort();
  }

  v3 = *(**v2 + 72);

  return v3();
}

uint64_t DspLib::LoudspeakerManagerV2::Algorithm::tailTimeSamples(DspLib::LoudspeakerManagerV2::Algorithm *this)
{
  v2 = *(this + 33);
  if (*(this + 34) == v2)
  {
    abort();
  }

  v3 = *(**v2 + 80);

  return v3();
}

void DspLib::LoudspeakerHealth::~LoudspeakerHealth(DspLib::LoudspeakerHealth *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 6) = v8;
    operator delete(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    *(this + 3) = v9;
    operator delete(v9);
  }
}

void std::vector<DspLib::PilotToneV2::PilotTone>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<DspLib::PilotToneV2::PilotTone>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<DspLib::PilotToneV2::PilotTone>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0x8E38E38E38E38E39 * ((v5 - v4) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 288 * a2;
      do
      {
        *(v4 + 240) = 0uLL;
        *(v4 + 256) = 0uLL;
        *(v4 + 208) = 0uLL;
        *(v4 + 224) = 0uLL;
        *(v4 + 176) = 0uLL;
        *(v4 + 192) = 0uLL;
        *(v4 + 144) = 0uLL;
        *(v4 + 160) = 0uLL;
        *(v4 + 112) = 0uLL;
        *(v4 + 128) = 0uLL;
        *(v4 + 80) = 0uLL;
        *(v4 + 96) = 0uLL;
        *(v4 + 48) = 0uLL;
        *(v4 + 64) = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 112) = 1;
        v11 = (v4 + 268);
        *(v4 + 120) = 0;
        *(v4 + 126) = 0;
        *(v4 + 136) = 0;
        *(v4 + 144) = 0;
        *(v4 + 152) = 0;
        *(v4 + 160) = 0;
        *(v4 + 168) = 0;
        *(v4 + 200) = 0uLL;
        *(v4 + 216) = 0uLL;
        *(v4 + 229) = 0;
        *(v4 + 248) = 0;
        *(v4 + 256) = 0;
        *(v4 + 240) = 0;
        *(v4 + 264) = 0;
        *(v4 + 276) = 0;
        *(v4 + 284) = 0;
        v4 += 288;
        *v11 = 0;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0xE38E38E38E38E3)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x71C71C71C71C71)
    {
      v9 = 0xE38E38E38E38E3;
    }

    else
    {
      v9 = v7;
    }

    v22 = result;
    if (v9)
    {
      std::allocator<DspLib::PilotToneV2::PilotTone>::allocate_at_least[abi:ne200100](result, v9);
    }

    v12 = 288 * v6;
    v19 = 0;
    v20 = 288 * v6;
    *(&v21 + 1) = 0;
    v13 = 288 * v6;
    do
    {
      *(v13 + 240) = 0uLL;
      *(v13 + 256) = 0uLL;
      *(v13 + 208) = 0uLL;
      *(v13 + 224) = 0uLL;
      *(v13 + 176) = 0uLL;
      *(v13 + 192) = 0uLL;
      *(v13 + 144) = 0uLL;
      *(v13 + 160) = 0uLL;
      *(v13 + 112) = 0uLL;
      *(v13 + 128) = 0uLL;
      *(v13 + 80) = 0uLL;
      *(v13 + 96) = 0uLL;
      *(v13 + 48) = 0uLL;
      *(v13 + 64) = 0uLL;
      *(v13 + 16) = 0uLL;
      *(v13 + 32) = 0uLL;
      *v13 = 0uLL;
      *(v13 + 112) = 1;
      v14 = (v13 + 268);
      *(v13 + 120) = 0;
      *(v13 + 126) = 0;
      *(v13 + 136) = 0;
      *(v13 + 144) = 0;
      *(v13 + 152) = 0;
      *(v13 + 160) = 0;
      *(v13 + 168) = 0;
      *(v13 + 200) = 0uLL;
      *(v13 + 216) = 0uLL;
      *(v13 + 229) = 0;
      *(v13 + 248) = 0;
      *(v13 + 256) = 0;
      *(v13 + 240) = 0;
      *(v13 + 264) = 0;
      *(v13 + 276) = 0;
      *(v13 + 284) = 0;
      v13 += 288;
      *v14 = 0;
    }

    while (v13 != 288 * v6 + 288 * a2);
    *&v21 = v12 + 288 * a2;
    v15 = *(result + 8);
    v16 = v12 + *result - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PilotToneV2::PilotTone>,DspLib::PilotToneV2::PilotTone*>(result, *result, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = *(v3 + 16);
    *(v3 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return std::__split_buffer<DspLib::PilotToneV2::PilotTone>::~__split_buffer(&v19);
  }

  return result;
}

void sub_1DDB9F2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<DspLib::PilotToneV2::PilotTone>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<DspLib::PilotToneV2::PilotTone>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<DspLib::PilotToneV2::PilotTone>,DspLib::PilotToneV2::PilotTone*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v21 = a4;
  v22 = a4;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  v20 = 0;
  if (a2 == a3)
  {
    v20 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 7;
    do
    {
      v9 = v8 - 7;
      *v4 = *(v8 - 28);
      *(v4 + 8) = *(v8 - 48);
      *(v4 + 16) = *(v8 - 5);
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 32) = 0;
      *(v4 + 32) = *(v8 - 3);
      *(v4 + 48) = *(v8 - 1);
      *(v8 - 3) = 0;
      *(v8 - 2) = 0;
      *(v8 - 1) = 0;
      DspLib::Biquad::SetupWrapper::SetupWrapper((v4 + 56), v8);
      v10 = *(v8 + 3);
      v11 = *(v8 + 5);
      v12 = *(v8 + 9);
      *(v4 + 112) = *(v8 + 7);
      *(v4 + 128) = v12;
      *(v4 + 80) = v10;
      *(v4 + 96) = v11;
      v13 = *(v8 + 11);
      v14 = *(v8 + 13);
      v15 = *(v8 + 15);
      *(v4 + 192) = *(v8 + 34);
      *(v4 + 160) = v14;
      *(v4 + 176) = v15;
      *(v4 + 144) = v13;
      *(v4 + 208) = 0;
      *(v4 + 216) = 0;
      *(v4 + 200) = 0;
      *(v4 + 200) = *(v8 + 9);
      *(v4 + 216) = v8[20];
      v8[18] = 0;
      v8[19] = 0;
      v8[20] = 0;
      v16 = v8[21];
      *(v4 + 229) = *(v8 + 173);
      *(v4 + 224) = v16;
      *(v4 + 248) = 0;
      *(v4 + 256) = 0;
      *(v4 + 240) = 0;
      *(v4 + 240) = *(v8 + 23);
      *(v4 + 256) = v8[25];
      v8[23] = 0;
      v8[24] = 0;
      v8[25] = 0;
      v17 = *(v8 + 13);
      *(v4 + 280) = v8[28];
      *(v4 + 264) = v17;
      v4 = v22 + 288;
      v22 += 288;
      v8 += 36;
    }

    while (v9 + 36 != a3);
    v20 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<DspLib::PilotToneV2::PilotTone>>::destroy[abi:ne200100]<DspLib::PilotToneV2::PilotTone,void,0>(a1, v6);
      v6 += 36;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PilotToneV2::PilotTone>,DspLib::PilotToneV2::PilotTone*>>::~__exception_guard_exceptions[abi:ne200100](v19);
}

void std::allocator_traits<std::allocator<DspLib::PilotToneV2::PilotTone>>::destroy[abi:ne200100]<DspLib::PilotToneV2::PilotTone,void,0>(uint64_t a1, void *a2)
{
  v3 = a2[30];
  if (v3)
  {
    a2[31] = v3;
    operator delete(v3);
  }

  v4 = a2[25];
  if (v4)
  {
    a2[26] = v4;
    operator delete(v4);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((a2 + 7));
  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;

    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PilotToneV2::PilotTone>,DspLib::PilotToneV2::PilotTone*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PilotToneV2::PilotTone>,DspLib::PilotToneV2::PilotTone*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<DspLib::PilotToneV2::PilotTone>,DspLib::PilotToneV2::PilotTone*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 36;
      std::allocator_traits<std::allocator<DspLib::PilotToneV2::PilotTone>>::destroy[abi:ne200100]<DspLib::PilotToneV2::PilotTone,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<DspLib::PilotToneV2::PilotTone>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<DspLib::PilotToneV2::PilotTone>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<DspLib::PilotToneV2::PilotTone>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 288;
    std::allocator_traits<std::allocator<DspLib::PilotToneV2::PilotTone>>::destroy[abi:ne200100]<DspLib::PilotToneV2::PilotTone,void,0>(v5, (v4 - 288));
  }
}

void std::vector<DspLib::PilotToneV2::PilotTone>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<DspLib::PilotToneV2::PilotTone>>::destroy[abi:ne200100]<DspLib::PilotToneV2::PilotTone,void,0>(a1, i))
  {
    i -= 36;
  }

  *(a1 + 8) = a2;
}

void DspLib::LoudspeakerController::SpeakerSystemModel::setHasPassiveRadiator(DspLib::LoudspeakerController::SpeakerSystemModel *this, char a2)
{
  if (a2)
  {
    if ((*(this + 904) & 1) == 0)
    {
      memset(v10, 0, sizeof(v10));
      *__p = 0u;
      memset(v8, 0, sizeof(v8));
      *v6 = 0u;
      v7 = 0u;
      v5 = 0u;
      v11 = -1;
      std::optional<DspLib::LoudspeakerController::BiquadModel>::operator=[abi:ne200100]<DspLib::LoudspeakerController::BiquadModel,void>(this + 752, &v5);
      DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v10 + 8));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      DspLib::Biquad::SetupWrapper::destroyvDSPSetup(v8);
      if (v6[1])
      {
        *&v7 = v6[1];
        operator delete(v6[1]);
      }

      DspLib::LoudspeakerController::BiquadModel::initialize((this + 752), 3uLL);
    }
  }

  else if (*(this + 904))
  {
    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 872));
    v3 = *(this + 106);
    if (v3)
    {
      *(this + 107) = v3;
      operator delete(v3);
    }

    DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 800));
    v4 = *(this + 97);
    if (v4)
    {
      *(this + 98) = v4;
      operator delete(v4);
    }

    *(this + 904) = 0;
  }
}

uint64_t std::optional<DspLib::LoudspeakerController::BiquadModel>::operator=[abi:ne200100]<DspLib::LoudspeakerController::BiquadModel,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 152);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (v4 == 1)
  {
    std::vector<double>::__move_assign(a1 + 24, (a2 + 24));
    DspLib::Biquad::SetupWrapper::operator=((a1 + 48), (a2 + 48));
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    std::vector<double>::__move_assign(a1 + 96, (a2 + 96));
    DspLib::Biquad::SetupWrapper::operator=((a1 + 120), (a2 + 120));
    *(a1 + 144) = *(a2 + 144);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 48), (a2 + 48));
    *(a1 + 72) = *(a2 + 72);
    v5 = *(a2 + 80);
    *(a1 + 96) = 0;
    *(a1 + 80) = v5;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    DspLib::Biquad::SetupWrapper::SetupWrapper((a1 + 120), (a2 + 120));
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = 1;
  }

  return a1;
}

void sub_1DDB9F8FC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 13) = v4;
    operator delete(v4);
  }

  DspLib::Biquad::Filter::~Filter(v1);
  _Unwind_Resume(a1);
}

__n128 std::vector<double>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void DspLib::LoudspeakerController::BiquadModel::~BiquadModel(DspLib::LoudspeakerController::BiquadModel *this)
{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 120));
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 120));
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

uint64_t DspLib::LoudspeakerSystemIDV1::TestToneGenerator::TestToneGenerator(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t DspLib::LoudspeakerSystemIDV1::TestToneGenerator::initialize(uint64_t this, double a2)
{
  *this = a2;
  *(this + 8) = 1;
  *(this + 24) = 0;
  return this;
}

void DspLib::LoudspeakerSystemIDV1::TestToneGenerator::setParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 0xAu))
  {
    DspLib::AlgorithmBaseNewParameters::parameterGroup();
  }

  v5 = DspLib::groupOffset(&DspLib::LoudspeakerSystemIDV1::Parameters::kDefinition, 2u);
  v6 = a2 + 4 * v5;
  LODWORD(a2) = vcvtad_u64_f64(*a1 / *(v6 + 4));
  v7 = *a1 / a2;
  v8 = v7 * 6.28318531 / *a1;
  *(a1 + 12) = v8;
  *(a1 + 16) = DspLib::dB2Amp(v5, *(v6 + 8));
  *(a1 + 9) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
}

uint64_t DspLib::LoudspeakerSystemIDV1::TestToneGenerator::process(DspLib::LoudspeakerSystemIDV1::TestToneGenerator *this, float *a2, unint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(this + 9))
  {
    DspLib::LoudspeakerSystemIDV1::TestToneGenerator::updateTestToneGeneratorVector(this, &v4, a3);
    DspLib::add();
  }

  return DspLib::LoudspeakerSystemIDV1::TestToneGenerator::process();
}

uint64_t DspLib::LoudspeakerSystemIDV1::TestToneGenerator::updateTestToneGeneratorVector(DspLib::LoudspeakerSystemIDV1::TestToneGenerator *this, float *a2, unint64_t a3)
{
  v6 = *(this + 3);
  if (a3)
  {
    v7 = 1;
    v8 = *(this + 3);
    v9 = a2;
    do
    {
      *v9++ = sinf(*(this + 3) * v8);
      v10 = v7;
      ++v8;
      ++v7;
    }

    while (v10 < a3);
  }

  *(this + 3) = v6 + a3;
  v11 = *(this + 4);
  if (v6 + a3 >= v11)
  {
    *(this + 3) = v6 + a3 - v11;
  }

  v12 = *(this + 4);

  return DspLib::multiply(a2, a3, v12);
}

uint64_t DspLib::LoudspeakerSystemIDV1::TestToneGenerator::status(uint64_t result, uint64_t a2)
{
  if ((*(result + 8) & 1) == 0)
  {
    return DspLib::LoudspeakerSystemIDV1::TestToneGenerator::status();
  }

  v2 = *result * (*(result + 12) / 6.28318531);
  *(a2 + 228) = v2;
  return result;
}

uint64_t DspLib::LoudspeakerSystemIDV1::TestToneGenerator::process()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1TestToneGenerator.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 53);
  ++DspLibDebug::mAssertCounter;
  return result;
}

uint64_t DspLib::LoudspeakerSystemIDV1::TestToneGenerator::status()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/LoudspeakerManagerV1/LoudspeakerSystemIDV1/dsp/DspLibLoudspeakerSystemIDV1TestToneGenerator.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 62);
  ++DspLibDebug::mAssertCounter;
  return result;
}

float DspLib::Biquad::Design::lengthThreeFIR(float a1, float a2, float a3, float a4)
{
  v8 = cosf(a4);
  v9 = cosf(a4 + a4);
  v10 = ((((a2 * a2) - (a3 * a3)) / (v8 * 4.0)) * -4.0) + (a1 * a1);
  v11 = v10 < 0.0;
  v12 = sqrtf(-(v10 - (a1 * a1)));
  v13 = a1 - sqrtf(v10);
  if (v11)
  {
    v13 = v12;
  }

  v14 = v13 * 0.5;
  v15 = (1.0 - v9) + (1.0 - v9);
  v16 = a1 - v14;
  v17 = (v9 + -1.0) * (v16 + v16);
  v18 = ((v15 * -4.0) * ((((v14 * v14) + (v16 * v16)) + ((v14 * (v16 + v16)) * v8)) - (a2 * a2))) + (v17 * v17);
  v19 = sqrtf(-(v18 - (v17 * v17)));
  v20 = -v17 - sqrtf(v18);
  if (v18 < 0.0)
  {
    v20 = v19;
  }

  return v16 - (v20 / (v15 + v15));
}

float *DspLib::Biquad::Design::bilinearTransformStoZUnwarped(float *result, double a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  if (v2 != 0.0 || v4 != 0.0 || v3 != 0.0 || v5 != 0.0)
  {
    if (v5 == 0.0 && v3 == 0.0)
    {
      if (v4 == 0.0)
      {
        return DspLib::Biquad::Design::bilinearTransformStoZUnwarped();
      }

      else
      {
        v6 = a2 + a2;
        v7 = v4;
        v8 = *result;
        v9 = v2;
        v10 = (v9 + v8 * v6) / (v6 + v7);
        *&v9 = (v9 - v8 * v6) / (v6 + v7);
        *&v6 = (v7 - v6) / (v6 + v7);
        *result = v10;
        result[1] = *&v9;
        result[3] = *&v6;
      }
    }

    else
    {
      v11 = a2 + a2;
      v12 = v11 * v11;
      v13 = v4;
      if (v5 == 0.0)
      {
        v14 = *result;
        v15 = v11 * v2;
        v16.f64[0] = v15 + v14 * v12 + v3;
        v17.f64[0] = v3 - (v15 - v14 * v12);
        v18 = (v13 - v11) / (v12 + v13);
        v16.f64[1] = (v3 + v3) + v14 * -2.0 * v12;
        v17.f64[1] = (v4 + v4);
        v19 = vdupq_lane_s64(COERCE__INT64(v12 + v13), 0);
        v20 = vdivq_f64(v17, v19);
        v21 = vdivq_f64(v16, v19);
      }

      else
      {
        *&v22 = v12 + v13 * v11 + v5;
        v23 = *result;
        v24 = v11 * v2;
        v25.f64[0] = v24 + v23 * v12 + v3;
        v26.f64[0] = v3 - (v24 - v23 * v12);
        v18 = (v12 - v13 * v11 + v5) / *&v22;
        v25.f64[1] = (v3 + v3) - (*result + *result) * v12;
        v26.f64[1] = (v5 + v5) + v12 * -2.0;
        v27 = vdupq_lane_s64(v22, 0);
        v20 = vdivq_f64(v26, v27);
        v21 = vdivq_f64(v25, v27);
      }

      *result = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v20);
      result[4] = v18;
    }
  }

  return result;
}

float *DspLib::Biquad::Design::zeroOrderNumeratorbilinearTransformStoZUnwarped@<X0>(float *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = a4 + a4;
  if (a2 == 2)
  {
    v12 = v4 * v4;
    v13 = result[5];
    v14 = result[3];
    v15 = v4 * result[4];
    v16 = v14;
    v17 = 1.0 / (v15 + v12 * v13 + v14);
    v5 = v17 * *result;
    v7 = v17 * (*result + *result);
    v18.f64[0] = (v14 + v14) + v12 * -2.0 * v13;
    v18.f64[1] = v16 - (v15 - v12 * v13);
    v6 = vcvt_f32_f64(vmulq_n_f64(v18, v17));
    v11 = v5;
  }

  else
  {
    v5 = 0.0;
    if (a2 == 1)
    {
      v8 = result[4];
      v9 = result[3];
      v10 = 1.0 / (v9 + v4 * v8);
      v7 = v10 * *result;
      *&v9 = (v9 - v4 * v8) * v10;
      v6 = LODWORD(v9);
      v11 = v7;
    }

    else
    {
      v6 = 0;
      if (a2)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = *result * (1.0 / result[3]);
        v6 = 1065353216;
      }

      v11 = 0.0;
    }
  }

  *a3 = v11;
  *(a3 + 4) = v7;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  return result;
}

float *DspLib::Biquad::Design::firstOrderNumeratorbilinearTransformStoZUnwarped@<X0>(float *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = a4 + a4;
  if (a2 == 2)
  {
    v16 = v4 * v4;
    v17 = result[5];
    v18 = result[3];
    v19 = v4 * result[4];
    v20 = v18;
    v21 = 1.0 / (v19 + v4 * v4 * v17 + v18);
    v22 = result[1];
    v23 = *result;
    v8 = (v23 + v4 * v22) * v21;
    v24.f64[0] = (*result + *result);
    v24.f64[1] = v23 - v4 * v22;
    v9 = vcvt_f32_f64(vmulq_n_f64(v24, v21));
    v25.f64[0] = (v18 + v18) + v16 * -2.0 * v17;
    v25.f64[1] = v20 - (v19 - v16 * v17);
    v10 = vcvt_f32_f64(vmulq_n_f64(v25, v21));
  }

  else if (a2 == 1)
  {
    v11 = result[4];
    v12 = result[3];
    v13 = 1.0 / (v12 + v4 * v11);
    v14 = result[1];
    v15 = *result;
    v8 = v13 * (v15 + v4 * v14);
    *&v15 = v13 * (v15 - v4 * v14);
    *&v11 = (v12 - v4 * v11) * v13;
    v9 = LODWORD(v15);
    v10 = LODWORD(v11);
  }

  else if (a2)
  {
    v9 = 0;
    v8 = 0.0;
    v10 = 0;
  }

  else
  {
    v5 = (1.0 / result[3]);
    v6 = result[1];
    v7 = *result;
    v8 = (v7 + v4 * v6) * v5;
    *&v5 = (v7 - v4 * v6) * v5;
    v9 = LODWORD(v5);
    v10 = 1065353216;
  }

  *a3 = v8;
  *(a3 + 4) = v9;
  *(a3 + 12) = v10;
  return result;
}

float *DspLib::Biquad::Design::secondOrderNumeratorbilinearTransformStoZUnwarped@<X0>(float *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = a4 + a4;
  v5 = v4 * v4;
  if (a2 == 2)
  {
    v19 = result[5];
    v20 = v4 * result[4];
    v21 = result[3];
    v22 = v21;
    v23 = 1.0 / (v20 + v5 * v19 + v21);
    v24 = result[2];
    v25 = v4 * result[1];
    v26 = *result;
    v7 = v23 * (v25 + v5 * v24 + v26);
    v27.f64[0] = (*result + *result) + v5 * -2.0 * v24;
    v28.f64[0] = (v21 + v21) + v5 * -2.0 * v19;
    v27.f64[1] = v26 - (v25 - v5 * v24);
    v28.f64[1] = v22 - (v20 - v5 * v19);
    v17 = vmulq_n_f64(v28, v23);
    v18 = vmulq_n_f64(v27, v23);
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v8 = result[4];
    v9 = result[3];
    v10 = 1.0 / (v9 + v4 * v8);
    v11 = result[2];
    v12 = v4 * result[1];
    v13 = *result;
    v7 = v10 * (v12 + v5 * v11 + v13);
    v14.f64[0] = (*result + *result) + v5 * -2.0 * v11;
    v15 = v13 - (v12 - v5 * v11);
    v16.f64[0] = v9 + v9;
    v14.f64[1] = v15;
    v16.f64[1] = v9 - v4 * v8;
    v17 = vmulq_n_f64(v16, v10);
    v18 = vmulq_n_f64(v14, v10);
LABEL_7:
    v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v17);
    goto LABEL_8;
  }

  v6 = 0uLL;
  v7 = 0.0;
  if (!a2)
  {
    v6.f32[0] = *result * (1.0 / result[3]);
    v6.i32[1] = 0;
    v6.i64[1] = COERCE_UNSIGNED_INT(1.0);
  }

LABEL_8:
  *a3 = v7;
  *(a3 + 4) = v6;
  return result;
}

float *DspLib::Biquad::Design::bilinearTransformStoZUnwarped@<X0>(float *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = result[1];
  if (*result == 0.0 && v3 == 0.0 && result[2] == 0.0 && result[3] == 0.0 && result[4] == 0.0 && result[5] == 0.0)
  {
    *(a2 + 16) = 0;
    *a2 = DspLib::Biquad::kBypassSection;
  }

  else
  {
    v4 = v3 != 0.0;
    if (result[2] != 0.0)
    {
      v4 = 2;
    }

    if (result[5] == 0.0)
    {
      v5 = result[4] != 0.0;
    }

    else
    {
      v5 = 2;
    }

    if (v4 == 2)
    {
      return DspLib::Biquad::Design::secondOrderNumeratorbilinearTransformStoZUnwarped(result, v5, a2, a3);
    }

    else if (v4 == 1)
    {
      return DspLib::Biquad::Design::firstOrderNumeratorbilinearTransformStoZUnwarped(result, v5, a2, a3);
    }

    else
    {
      return DspLib::Biquad::Design::zeroOrderNumeratorbilinearTransformStoZUnwarped(result, v5, a2, a3);
    }
  }

  return result;
}

uint64_t DspLib::Biquad::Design::ParametricEQ::design@<X0>(DspLib::Biquad::Design::ParametricEQ *this@<X0>, float a2@<S0>, int a3@<W1>, double *a4@<X2>, uint64_t a5@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*this <= 0x13u && ((1 << *this) & 0xB4007) != 0)
    {
      v7 = *this;
      v8 = *(this + 1);
      LODWORD(v9) = HIDWORD(*this);
      v10 = 0.125;
      v11 = 0.5;
      if (*this <= 1)
      {
        if (v7)
        {
          LODWORD(v12) = HIDWORD(*(this + 1));
          if (v7 == 1)
          {
            if (*(&v8 + 1) <= 0.3)
            {
              v12 = 0.3;
            }

            else
            {
              LODWORD(v12) = HIDWORD(*(this + 1));
            }

            v10 = 1.25;
            v11 = 1.0;
          }
        }

        else
        {
          if (*(&v8 + 1) <= 0.3)
          {
            v12 = 0.3;
          }

          else
          {
            LODWORD(v12) = HIDWORD(*(this + 1));
          }

          v11 = 1.0;
          v10 = 0.8;
        }
      }

      else
      {
        if (v7 == 19)
        {
          v10 = 0.5;
          v11 = 0.25;
LABEL_21:
          LODWORD(v12) = HIDWORD(*(this + 1));
          goto LABEL_27;
        }

        if (v7 != 17)
        {
          LODWORD(v12) = HIDWORD(*(this + 1));
          if (v7 != 2)
          {
            goto LABEL_27;
          }

          v10 = 0.5;
          v11 = 0.8;
          goto LABEL_21;
        }

        v10 = 0.5;
        v11 = 0.25;
        LODWORD(v12) = HIDWORD(*(this + 1));
      }

LABEL_27:
      v16 = sqrtf(*(&v8 + 1));
      v17 = logf(v11);
      v39[0] = expf(v17 / v16) * v9;
      v18 = logf(v10);
      v39[1] = expf(v18 / v16) * v9;
      LOBYTE(v32) = 0;
      v33 = 0u;
      *v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      DspLib::Biquad::Filter::initialize(&v32, 1uLL, 1uLL);
      LOBYTE(v27) = 0;
      v28 = 0u;
      *__p = 0u;
      v30 = 0u;
      v31 = 0u;
      DspLib::Biquad::Filter::initialize(&v27, 1uLL, 1uLL);
      *&v19 = fabsf(*&v8);
      DspLib::Biquad::Design::parametricSectionRegular(v7, v19 | (LODWORD(v12) << 32), v20, &v38, a2);
      DspLib::Biquad::Filter::setCoefficients(&v32, &v38, 1, 0, 0x41uLL);
      DspLib::Biquad::amplitudeResponse(&v32, v39, 2uLL, __C, 2, 0, 44100.0, v21, v22);
      DspLib::amp2dB(__C, 2uLL, 1.0);
      DspLib::Biquad::Design::parametricSectionRegular(v7, COERCE_UNSIGNED_INT(*&v19 * 0.5) | (HIDWORD(v8) << 32), v23, &v38, a2);
      DspLib::Biquad::Filter::setCoefficients(&v27, &v38, 1, 0, 0x41uLL);
      DspLib::Biquad::amplitudeResponse(&v27, v39, 2uLL, &v38, 2, 0, 44100.0, v24, v25);
      DspLib::amp2dB(v38.f32, 2uLL, 1.0);
      DspLib::multiply(&v38, 2, 2.0);
      DspLib::subtract();
    }

    result = puts("ERROR: prototypeForPhaseCompensation not available for this filter type.");
    *a5 = 1065353216;
    *(a5 + 12) = 0;
    *(a5 + 4) = 0;
  }

  else
  {
    v13 = *(this + 1);
    v14 = *this;

    return DspLib::Biquad::Design::parametricSectionRegular(v14, v13, a4, a5, a2);
  }

  return result;
}

void sub_1DDBA0A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::Biquad::Design::parametricSectionRegular@<X0>(DspLib *a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, float32x4_t *a4@<X8>, float a5@<S0>)
{
  v7 = *(&a1 + 1);
  v8 = *&a2;
  switch(a1)
  {
    case 0:
      v9 = *(&a2 + 1);
      v10 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      v11 = 1.0;
      v12 = v10.__sinval * sinh(1.0 / (v9 + v9));
      v13 = 1.0 / (v12 + 1.0);
      cosval = v10.__cosval;
      v15.f64[0] = 1.0 - v10.__cosval;
      v16 = (1.0 - v10.__cosval) * v13;
      goto LABEL_19;
    case 1:
      v87 = *(&a2 + 1);
      v88 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      v11 = 1.0;
      v12 = v88.__sinval * sinh(1.0 / (v87 + v87));
      v13 = 1.0 / (v12 + 1.0);
      cosval = v88.__cosval;
      v15.f64[0] = v88.__cosval + 1.0;
      v16 = (-1.0 - v88.__cosval) * v13;
LABEL_19:
      v15.f64[1] = cosval;
      v89 = vmulq_n_f64(vmulq_f64(v15, xmmword_1DE095630), v13);
      v221[0].f64[0] = v89.f64[0];
      v221[0].f64[1] = v16;
      v221[1] = v89;
      v90 = (v11 - v12) * v13;
      goto LABEL_52;
    case 2:
      v105 = *(&a2 + 1);
      v106 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      v107 = v106.__sinval * sinh(1.0 / (v105 + v105));
      v108 = 1.0 / (v107 + 1.0);
      v221[0].f64[0] = v108;
      v221[0].f64[1] = v106.__cosval * -2.0 * v108;
      v221[1].f64[0] = v108;
      v221[1].f64[1] = v221[0].f64[1];
      v109 = 1.0 - v107;
      goto LABEL_36;
    case 3:
      if (*&a2 == 0.0)
      {
        goto LABEL_17;
      }

      v213 = *(&a2 + 1);
      v214 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      v215 = v214.__sinval * sinh(1.0 / (v213 + v213));
      v216 = __exp10(v8 * 0.025);
      v82 = 1.0 / (v215 / v216 + 1.0);
      v221[0].f64[0] = (v215 * v216 + 1.0) * v82;
      v221[0].f64[1] = v214.__cosval * -2.0 * v82;
      v221[1].f64[0] = (1.0 - v215 * v216) * v82;
      v221[1].f64[1] = v221[0].f64[1];
      v120 = 1.0 - v215 / v216;
      goto LABEL_29;
    case 4:
      v115 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      sinval = v115.__sinval;
      v116 = __exp10(v8 * 0.025);
      v117 = v116 + -1.0;
      v79 = sqrt((v116 * v116 + 1.0) / 0.707106781 - v117 * v117);
      v118 = v116 + 1.0;
      v81 = v116 + 1.0 + (v116 + -1.0) * v115.__cosval;
      v82 = 1.0 / (v81 + v79 * v115.__sinval);
      v119 = v116 + 1.0 - (v116 + -1.0) * v115.__cosval;
      v221[0].f64[0] = v116 * (v119 + v79 * v115.__sinval) * v82;
      v221[0].f64[1] = (v116 + v116) * (v116 + -1.0 - (v116 + 1.0) * v115.__cosval) * v82;
      v84 = v116 * (v119 - v79 * v115.__sinval) * v82;
      v85 = (v117 + v118 * v115.__cosval) * -2.0;
      goto LABEL_28;
    case 5:
      v75 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      sinval = v75.__sinval;
      v77 = __exp10(v8 * 0.025);
      v78 = v77 + -1.0;
      v79 = sqrt((v77 * v77 + 1.0) / 0.707106781 - v78 * v78);
      v80 = v77 + 1.0;
      v81 = v77 + 1.0 - (v77 + -1.0) * v75.__cosval;
      v82 = 1.0 / (v81 + v79 * v75.__sinval);
      v83 = v77 + 1.0 + (v77 + -1.0) * v75.__cosval;
      v221[0].f64[0] = v77 * (v83 + v79 * v75.__sinval) * v82;
      v221[0].f64[1] = v77 * -2.0 * (v77 + -1.0 + (v77 + 1.0) * v75.__cosval) * v82;
      v84 = v77 * (v83 - v79 * v75.__sinval) * v82;
      v85 = v78 - v80 * v75.__cosval + v78 - v80 * v75.__cosval;
LABEL_28:
      v221[1].f64[0] = v84;
      v221[1].f64[1] = v85 * v82;
      v120 = v81 - v79 * sinval;
LABEL_29:
      v90 = v120 * v82;
      goto LABEL_52;
    case 6:
      v86 = 1.0 / tan(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v221[0].f64[0] = 1.0 / (v86 + 1.0);
      v221[0].f64[1] = v221[0].f64[0];
      v221[1].f64[0] = 0.0;
      v48 = (1.0 - v86) * v221[0].f64[0];
      goto LABEL_47;
    case 7:
      v93 = tan(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v94 = 1.0 / (v93 + 1.0);
      v221[0].f64[0] = v94;
      v221[0].f64[1] = -v94;
      v221[1].f64[0] = 0.0;
      v48 = (v93 + -1.0) * v94;
      goto LABEL_47;
    case 8:
      v91 = 1.0 / tan(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v92 = 1.0 / (v91 * v91 + v91 * 1.41421356 + 1.0);
      v221[0].f64[0] = v92;
      v221[0].f64[1] = v92 + v92;
      v221[1].f64[0] = v92;
      v221[1].f64[1] = (1.0 - v91 * v91 + 1.0 - v91 * v91) * v92;
      v90 = (v91 * -1.41421356 + 1.0 + v91 * v91) * v92;
      goto LABEL_52;
    case 9:
      v143 = tan(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v108 = 1.0 / (v143 * 1.41421356 + v143 * v143 + 1.0);
      v221[0].f64[0] = v108;
      v221[0].f64[1] = v108 * -2.0;
      v221[1].f64[0] = v108;
      v221[1].f64[1] = (v143 * v143 + -1.0 + v143 * v143 + -1.0) * v108;
      v109 = v143 * -1.41421356 + 1.0 + v143 * v143;
LABEL_36:
      v90 = v109 * v108;
      goto LABEL_52;
    case 10:
      v60 = tan(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v48 = (1.0 - 1.0 / v60) * (1.0 / (1.0 / v60 + 1.0));
      v221[0].f64[0] = v48;
      *(v221 + 8) = xmmword_1DE095300;
      goto LABEL_47;
    case 11:
      v53 = *(&a2 + 1);
      v54 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      v55 = v54.__sinval * sinh(1.0 / (v53 + v53));
      v56 = v55 / __exp10(v8 * 0.025);
      v57 = 1.0 / (v56 + 1.0);
      v58 = (1.0 - v56) * v57;
      v59 = v54.__cosval * -2.0 * v57;
      v221[0].f64[0] = v58;
      v221[0].f64[1] = v59;
      v221[1].f64[0] = 1.0;
      goto LABEL_38;
    case 12:
      v147 = tan(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v148 = v147 * v147;
      v149 = __exp10(fabsf(v8) * 0.05);
      if (v8 >= 0.0)
      {
        v211 = v147 * 1.41421356 + 1.0 + v148;
        v212 = sqrt(v149 + v149);
        v154 = (v149 + v212 * v147 + v148) / v211;
        v155 = (v148 - v149 + v148 - v149) / v211;
        v156 = (v149 - v212 * v147 + v148) / v211;
        v157 = (v148 + -1.0 + v148 + -1.0) / v211;
        v158 = (v147 * -1.41421356 + 1.0 + v148) / v211;
      }

      else
      {
        v150 = v149 + sqrt(v149 + v149) * v147 + v148;
        v151 = sqrt(2.0 / v149);
        v152 = v148 / v149;
        v153 = v151 * v147 + 1.0 + v148 / v149;
        v154 = (v147 * 1.41421356 + 1.0 + v148) / v150;
        v155 = (v148 + -1.0 + v148 + -1.0) / v150;
        v156 = (v147 * -1.41421356 + 1.0 + v148) / v150;
        v157 = (v152 + -1.0 + v152 + -1.0) / v153;
        v158 = (1.0 - v151 * v147 + v152) / v153;
      }

      v221[0].f64[0] = v154;
      v221[0].f64[1] = v155;
      v221[1].f64[0] = v156;
      v221[1].f64[1] = v157;
      v221[2].f64[0] = v158;
      break;
    case 13:
      v95 = *(&a2 + 1);
      v96 = a5;
      v98 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v99 = v98.__cosval / v98.__sinval * (v98.__cosval / v98.__sinval);
      v100 = v99 * 1102.5 / (v95 * 3.14159265 * v96);
      v101 = v99 + v100 + 1.0;
      v217 = v100 / v101;
      v102 = -v100 / v101;
      v103 = (1.0 - v99 + 1.0 - v99) / v101;
      v104 = v99 + 1.0 - v100;
      goto LABEL_26;
    case 14:
      v110 = *(&a2 + 1);
      v111 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5 * 0.5);
      v112 = v111.__cosval / v111.__sinval * (v111.__cosval / v111.__sinval);
      v113 = v111.__cosval / v111.__sinval / v110;
      v101 = v112 + v113 + 1.0;
      v217 = v113 / v101;
      v102 = -v113 / v101;
      v103 = (1.0 - v112 + 1.0 - v112) / v101;
      v104 = v112 + 1.0 - v113;
LABEL_26:
      v221[1].f64[1] = v103;
      v221[2].f64[0] = v104 / v101;
      v114 = DspLib::dB2Amp(v97, v8);
      v221[0] = vmulq_n_f64(*&v217, v114);
      v221[1].f64[0] = v102 * v114;
      break;
    case 15:
      v144 = 1.0 / *(&a2 + 1) * 0.5;
      v145 = __sincos_stret(*(&a1 + 1) * 6.28318531 / a5);
      v58 = (1.0 - v144 * v145.__sinval) / (v144 * v145.__sinval + 1.0);
      v146 = (v58 + 1.0 + v145.__cosval * (v58 + 1.0)) * 0.25;
      v221[0].f64[0] = v146;
      v221[0].f64[1] = v146 * -2.0;
      v59 = -(v145.__cosval * (v58 + 1.0));
      v221[1].f64[0] = v146;
LABEL_38:
      v221[1].f64[1] = v59;
      v221[2].f64[0] = v58;
      break;
    case 16:
      v121 = *(&a2 + 1);
      v123 = DspLib::dB2Amp(a1, *&a2);
      if (v123 >= 1.0)
      {
        v124 = v123;
      }

      else
      {
        v124 = 1.0 / v123;
      }

      v125 = v121;
      v126 = v7 * 6.28318531 / a5;
      memset(v221, 0, 40);
      DspLib::Biquad::Design::matchedZtransform(&v221[1].f64[1], v126, v125, 1.0, v221[2].f64, v122);
      v127 = v221[1].f64[1];
      v128 = v221[2].f64[0];
      v218 = 1.0 / (v221[1].f64[1] + 1.0 + v221[2].f64[0]);
      v129 = 1.0 / sqrt(fabs(v221[1].f64[1] + 1.0 - v221[2].f64[0] + v127 * v127 + v127 * v221[2].f64[0] + v128 * v128));
      v130 = 1.0 / sqrt(fabs(1.0 - v221[1].f64[1] - v221[2].f64[0] + v127 * v127 - v127 * v221[2].f64[0] + v128 * v128));
      *&v128 = 1.04719755 / v126;
      *&v126 = *&v128 + *&v128;
      LODWORD(v127) = 0;
      v219.i32[0] = DspLib::Biquad::Design::analogBell(v131, *&v127, v124, v125);
      v219.i32[1] = v132;
      v134 = DspLib::abs(&v219, v133);
      v224.real = 0.0;
      v224.imag = *&v126;
      v219.i32[0] = DspLib::Biquad::Design::analogBell(v135, v224, v124, v125);
      v219.i32[1] = v136;
      v138 = DspLib::abs(&v219, v137);
      DspLib::Biquad::Design::secondOrderFIRWithGains(v221, 1.0 / v218, v134 / v129, v138 / v130, &v221[0].f64[1], v221[1].f64, v139);
      if (v123 < 1.0)
      {
        v140 = *&v221[0].f64[0];
        v221[0].f64[0] = 1.0 / v221[0].f64[0];
        v141 = vdupq_lane_s64(v140, 0);
        v142 = *(v221 + 8);
        *(v221 + 8) = vdivq_f64(*(&v221[1] + 8), v141);
        *(&v221[1] + 8) = vdivq_f64(v142, v141);
      }

      break;
    case 17:
      v17 = *(&a2 + 1);
      v18 = *(&a1 + 1) * 6.28318531 / a5;
      v19 = DspLib::dB2Amp(a1, *&a2);
      memset(v221, 0, 40);
      v20 = v17;
      DspLib::Biquad::Design::matchedZtransform(&v221[1].f64[1], v18, v20, v19, v221[2].f64, v21);
      v22 = v221[1].f64[1];
      v23 = v221[2].f64[0];
      v24 = 1.0 / (v221[1].f64[1] + 1.0 + v221[2].f64[0]);
      v25 = 1.0 / sqrt(fabs(v221[1].f64[1] + 1.0 - v221[2].f64[0] + v22 * v22 + v22 * v221[2].f64[0] + v23 * v23));
      v26 = 1.0 / sqrt(fabs(1.0 - v221[1].f64[1] - v221[2].f64[0] + v22 * v22 - v22 * v221[2].f64[0] + v23 * v23));
      *&v23 = 1.04719755 / v18;
      *&v18 = *&v23 + *&v23;
      LODWORD(v22) = 0;
      v219.i32[0] = DspLib::Biquad::Design::analogHighShelf(v27, *&v22, v19, v20);
      v219.i32[1] = v28;
      v30 = DspLib::abs(&v219, v29);
      v222.real = 0.0;
      v222.imag = *&v18;
      v219.i32[0] = DspLib::Biquad::Design::analogHighShelf(v31, v222, v19, v20);
      v219.i32[1] = v32;
      v35 = DspLib::abs(&v219, v33);
      v36 = 1.0 / v24;
      v37 = v30 / v25;
      v38 = v35 / v26;
      goto LABEL_55;
    case 18:
      v61 = *(&a1 + 1) * 6.28318531 / a5;
      memset(v221, 0, 40);
      v62 = *(&a2 + 1);
      DspLib::Biquad::Design::matchedZtransform(&v221[1].f64[1], v61, *(&a2 + 1), 1.0, v221[2].f64, a3);
      v63 = v221[1].f64[1];
      v64 = v221[2].f64[0];
      v65 = 1.0 / sqrt(v221[1].f64[1] + 1.0 - v221[2].f64[0] + v63 * v63 + v63 * v221[2].f64[0] + v64 * v64);
      v66 = 1.0 / sqrt(1.0 - v221[1].f64[1] - v221[2].f64[0] + v63 * v63 - v63 * v221[2].f64[0] + v64 * v64);
      *&v64 = 1.04719755 / v61;
      *&v61 = *&v64 + *&v64;
      LODWORD(v63) = 0;
      v219.i32[0] = DspLib::Biquad::Design::analogHighPass(v67, *&v63, v62);
      v219.i32[1] = v68;
      v70 = DspLib::abs(&v219, v69);
      v223.real = 0.0;
      v223.imag = *&v61;
      v219.i32[0] = DspLib::Biquad::Design::analogHighPass(v71, v223, v62);
      v219.i32[1] = v72;
      v74 = DspLib::abs(&v219, v73);
      v37 = v70 / v65;
      v38 = v74 / v66;
      v36 = 0.0;
      goto LABEL_55;
    case 19:
      v159 = *(&a2 + 1);
      v160 = *(&a1 + 1) * 6.28318531 / a5;
      v161 = DspLib::dB2Amp(a1, *&a2);
      memset(v221, 0, 40);
      v162 = v159;
      DspLib::Biquad::Design::matchedZtransform(&v221[1].f64[1], v160, v162, 1.0 / v161, v221[2].f64, v163);
      v164 = v221[1].f64[1];
      v165 = v221[2].f64[0];
      v166 = 1.0 / (v221[1].f64[1] + 1.0 + v221[2].f64[0]);
      v167 = 1.0 / sqrt(fabs(v221[1].f64[1] + 1.0 - v221[2].f64[0] + v164 * v164 + v164 * v221[2].f64[0] + v165 * v165));
      v168 = 1.0 / sqrt(fabs(1.0 - v221[1].f64[1] - v221[2].f64[0] + v164 * v164 - v164 * v221[2].f64[0] + v165 * v165));
      *&v165 = 1.04719755 / v160;
      *&v160 = *&v165 + *&v165;
      LODWORD(v164) = 0;
      v219.i32[0] = DspLib::Biquad::Design::analogLowShelf(v169, *&v164, v161, v162);
      v219.i32[1] = v170;
      v172 = DspLib::abs(&v219, v171);
      v225.real = 0.0;
      v225.imag = *&v160;
      v219.i32[0] = DspLib::Biquad::Design::analogLowShelf(v173, v225, v161, v162);
      v219.i32[1] = v174;
      v176 = DspLib::abs(&v219, v175);
      v36 = v161 / v166;
      v37 = v172 / v167;
      v38 = v176 / v168;
      goto LABEL_55;
    case 20:
      v39 = *(&a2 + 1);
      v40 = 1.0 / (v39 + v39);
      v41 = v40 * v40;
      v42 = *(&a1 + 1) * 6.28318531 / a5;
      memset(v221, 0, 24);
      v43 = -v42;
      if (*(&a2 + 1) >= 0.5)
      {
        v196 = exp(v40 * v43) * -2.0;
        v46 = v196 * cos(v42 * sqrt(1.0 - v41));
      }

      else
      {
        v44 = sqrt(v41 + -1.0);
        v45 = exp((v40 + v44) * v43);
        v46 = -(v45 + exp((v40 - v44) * v43));
      }

      v221[1].f64[1] = v46;
      v221[2].f64[0] = exp(v40 * (v42 * -2.0));
      v197 = 1.0 / (v221[2].f64[0] + v46 + 1.0);
      v198 = 1.0 / sqrt(fabs(v46 + 1.0 - v221[2].f64[0] + v46 * v46 + v46 * v221[2].f64[0] + v221[2].f64[0] * v221[2].f64[0]));
      v199 = 1.0 / sqrt(fabs(1.0 - v46 - v221[2].f64[0] + v46 * v46 - v46 * v221[2].f64[0] + v221[2].f64[0] * v221[2].f64[0]));
      v226.imag = 1.04719755 / v42;
      v200 = v226.imag + v226.imag;
      v226.real = 0.0;
      v219.i32[0] = DspLib::Biquad::Design::analogLowPass(v201, v226, v39);
      v219.i32[1] = v202;
      v204 = DspLib::abs(&v219, v203);
      v227.real = 0.0;
      v227.imag = v200;
      v219.i32[0] = DspLib::Biquad::Design::analogLowPass(v205, v227, v39);
      v219.i32[1] = v206;
      v208 = DspLib::abs(&v219, v207);
      v36 = 1.0 / v197;
      v37 = v204 / v198;
      v38 = v208 / v199;
LABEL_55:
      DspLib::Biquad::Design::secondOrderFIRWithGains(v221, v36, v37, v38, &v221[0].f64[1], v221[1].f64, v34);
      break;
    case 21:
      v49 = a5;
      v50 = *&a2;
      v51 = *(&a1 + 1);
      v52 = 0;
      goto LABEL_12;
    case 22:
      v49 = a5;
      v50 = *&a2;
      v51 = *(&a1 + 1);
      v52 = 1;
LABEL_12:
      DspLib::Biquad::Design::easttyBaxandallToneControl(v52, v49, v50, v51, v221[0].f64);
      break;
    case 23:
LABEL_17:
      v221[0] = DspLib::Biquad::Design::kBypassDouble;
      memset(&v221[1], 0, 24);
      break;
    case 26:
      memset(&v221[0].f64[1], 0, 32);
      v221[0].f64[0] = DspLib::dB2Amp(a1, *&a2);
      break;
    case 27:
      v47 = expf(-1.0 / ((*(&a1 + 1) * a5) / 1000.0));
      v221[0].f64[0] = (1.0 - v47);
      v221[0].f64[1] = 0.0;
      v221[1].f64[0] = 0.0;
      v48 = -v47;
      goto LABEL_47;
    case 28:
      v187 = *(&a2 + 1);
      v188 = DspLib::dB2Amp(a1, *&a2);
      if (v8 >= 0.0)
      {
        v189 = v187;
      }

      else
      {
        v189 = v187 * v188;
      }

      v190 = 1.0 / tan(v7 * 3.14159265 / a5);
      v191 = v190 * v190;
      v192 = v190 / v189;
      v193 = v190 * v190 + v190 / v189 + 1.0;
      v194 = (1.0 - v190 * v190 + 1.0 - v190 * v190) * (1.0 / v193);
      v195 = v190 * v188 / v189;
      v221[0].f64[0] = (v191 + v195 + 1.0) * (1.0 / v193);
      v221[0].f64[1] = v194;
      v221[1].f64[0] = (v191 + 1.0 - v195) * (1.0 / v193);
      v221[1].f64[1] = v194;
      v90 = (v191 + 1.0 - v192) / v193;
LABEL_52:
      v221[2].f64[0] = v90;
      break;
    case 29:
      v177 = *(&a1 + 1) * 6.28318531;
      v178 = a5 + a5;
      v179 = __exp10(fabsf(*&a2) * 0.05) + -1.0;
      v180 = v178 + v177 + v179 * v177;
      v181 = v177 - v178 + v179 * v177;
      v182 = (v178 + v177) / v180;
      v183 = (v177 - v178) / v180;
      v184 = v181 / v180;
      v185 = v180 / (v178 + v177);
      v186 = v181 / (v178 + v177);
      if (v8 < 0.0)
      {
        v185 = v182;
        v186 = v183;
      }

      v221[0].f64[0] = v185;
      v221[0].f64[1] = v186;
      v221[1].f64[0] = 0.0;
      v48 = (v177 - v178) / (v178 + v177);
      if (v8 < 0.0)
      {
        v48 = v184;
      }

LABEL_47:
      v221[1].f64[1] = v48;
      v221[2].f64[0] = 0.0;
      break;
    default:
      memset(v221, 0, 40);
      break;
  }

  *a4 = vcvt_hight_f32_f64(vcvt_f32_f64(v221[0]), v221[1]);
  v209 = v221[2].f64[0];
  a4[1].f32[0] = v209;
  v219 = *a4;
  v220 = a4[1].i32[0];
  result = DspLib::Biquad::validate(&v219);
  if ((result & 1) == 0)
  {
    result = printf("a1 = %f and a2 =%f, create a biquad filter which is not stable\n", v221[1].f64[1], v221[2].f64[0]);
    a4[1].i32[0] = 0;
    *a4 = DspLib::Biquad::kBypassSection;
  }

  return result;
}

void DspLib::Biquad::Design::butterworthLowPass(DspLib::Biquad::Design *this@<X0>, float a2@<S0>, float a3@<S1>, int a4@<W1>, void *a5@<X8>)
{
  if (this >= 0x14)
  {
    v7 = 20;
  }

  else
  {
    v7 = this;
  }

  if (this)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = a3 * 0.49;
  if ((a3 * 0.49) >= a2)
  {
    v9 = a2;
  }

  if (a2 >= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (a4)
  {
    v11 = v8;
    if (v8)
    {
      v10 = powf(1.6, 1.0 / v11) * v10;
    }

    v8 = vcvtas_u32_f32(v11 * 0.5);
  }

  std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a5, (v8 + 1) >> 1);
  v12 = (a3 * 0.5) * 0.9;
  if (v12 >= v10)
  {
    v12 = v10;
  }

  v13 = v12 * 6.28318531 / a3;
  v14 = v13;
  v15 = __sincos_stret(v13);
  if (v8 < 2)
  {
    v16 = 0;
    if ((v8 & 1) == 0)
    {
      return;
    }

LABEL_24:
    v25 = 1.0 / tan(v14 * 0.5);
    v26 = (1.0 - v25) / (v25 + 1.0);
    v27 = 1.0 / (2.0 / (v26 + 1.0));
    v28 = *a5 + 20 * v16;
    *v28 = v27;
    *(v28 + 4) = v27;
    *(v28 + 8) = 0;
    *(v28 + 12) = v26;
    *(v28 + 16) = 0;
    return;
  }

  cosval = v15.__cosval;
  v16 = v8 >> 1;
  v19 = (*a5 + 8);
  v20 = 1;
  v21 = v8 >> 1;
  do
  {
    v22 = sin((v20 * 2.0 + -1.0) * 3.14159265 * 0.5 / v8);
    sinval = v15.__sinval;
    v23 = (1.0 - (v22 * sinval)) / ((v22 * sinval) + 1.0);
    v24 = ((v23 + 1.0) - ((v23 + 1.0) * cosval)) * 0.25;
    *(v19 - 2) = v24;
    *(v19 - 1) = v24 + v24;
    *v19 = v24;
    v19[1] = -((v23 + 1.0) * cosval);
    v19[2] = v23;
    v19 += 5;
    ++v20;
    --v21;
  }

  while (v21);
  if (v8)
  {
    goto LABEL_24;
  }
}

void DspLib::Biquad::Design::butterworthHighPass(DspLib::Biquad::Design *this@<X0>, float a2@<S0>, float a3@<S1>, int a4@<W1>, float **a5@<X8>)
{
  v6 = a2;
  if (a4)
  {
    v8 = this;
    if (this)
    {
      v6 = a2 / powf(1.6, 1.0 / v8);
    }

    LODWORD(this) = vcvtas_u32_f32(v8 * 0.5);
  }

  DspLib::Biquad::Design::butterworthLowPass(this, v6, a3, 0, a5);
  v9 = *a5;
  v10 = a5[1];
  if (*a5 != v10)
  {
    do
    {
      v11 = v9[2];
      v12 = v9[1];
      v13 = ((1.0 - v9[3]) + v9[4]) / ((*v9 + v12) + v11);
      *v9 = *v9 * v13;
      v9[1] = -(v12 * v13);
      v9[2] = v11 * v13;
      v9 += 5;
    }

    while (v9 != v10);
  }
}

uint64_t DspLib::Biquad::Design::easttyBaxandallToneTilt@<X0>(DspLib::Biquad::Design *this@<X0>, unsigned int a2@<S0>, unsigned int a3@<S1>, float a4@<S2>, double *a5@<X2>, uint64_t a6@<X8>)
{
  if (this)
  {
    *&a3 = *&a3 * 0.5;
  }

  v8 = a2;
  v9 = a3;
  DspLib::Biquad::Design::parametricSectionRegular(((a2 << 32) | 0x15), a3 | 0x3F40000000000000, a5, a6, a4);
  return DspLib::Biquad::Design::parametricSectionRegular(((v8 << 32) | 0x16), v9 ^ 0x80000000 | 0x3F40000000000000, v10, (a6 + 20), a4);
}

void DspLib::Biquad::Design::fractionalOrderShelf(DspLib::Biquad::Design *this@<X0>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, void *a7@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {

    std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a7, 1uLL);
  }

  else if (this)
  {
    if (a2 < 0.0 || a3 < 0.0)
    {
      *&v43[16] = 0;
      *v43 = xmmword_1DE095890;
      a7[1] = 0;
      a7[2] = 0;
      *a7 = 0;
      std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(a7, v43, &v43[20], 1uLL);
    }

    else
    {
      DspLib::Biquad::Design::fractionalOrderShelfRegular(a2, a3, a4, a5, a6, &v37);
      v43[0] = 0;
      *&v43[8] = 0u;
      v44 = 0u;
      memset(v45, 0, sizeof(v45));
      DspLib::Biquad::Filter::initialize(v43, 1uLL, 1uLL);
      LOBYTE(v33) = 0;
      v34 = 0u;
      *__p = 0u;
      memset(v36, 0, sizeof(v36));
      DspLib::Biquad::Filter::initialize(&v33, 1uLL, 1uLL);
      DspLib::Biquad::Filter::setNumberOfStages(v43, -858993459 * ((v38 - v37) >> 2));
      DspLib::Biquad::Filter::setCoefficients(v43, v37, 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 2), 0, 0x41uLL);
      v11 = logf(((a2 * a2) * a2) * a3);
      v12 = expf(v11 * 0.25);
      v42[0] = sqrtf(v12 * a2);
      *&v42[1] = v12;
      if (a3 > a2)
      {
        v15 = a3 / a2;
      }

      else
      {
        v15 = a2 / a3;
      }

      *&v13 = a3 / a2;
      DspLib::Biquad::amplitudeResponse(v43, v42, 2uLL, &__C, 2, 0, 44100.0, v13, v14);
      DspLib::amp2dB(&__C, 2uLL, 1.0);
      std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a7, 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 2));
      v16 = fmaxf(sqrtf(v15) * 0.999, 1.0);
      v17 = a4 * 0.5;
      v18 = 50;
      v19 = 1.0;
      do
      {
        v20 = v19 * a3;
        v21 = a2 / v19;
        if (a3 > a2)
        {
          v21 = v19 * a2;
          v20 = a3 / v19;
        }

        DspLib::Biquad::Design::fractionalOrderShelfRegular(v21, v20, v17, a5, a6, &__B);
        v22 = *a7;
        if (*a7)
        {
          a7[1] = v22;
          operator delete(v22);
        }

        v23 = __B;
        *a7 = __B;
        v24 = v40;
        *(a7 + 1) = v40;
        DspLib::Biquad::Filter::setNumberOfStages(&v33, -858993459 * ((v24 - v23) >> 2));
        DspLib::Biquad::Filter::setCoefficients(&v33, *a7, 0xCCCCCCCCCCCCCCCDLL * ((a7[1] - *a7) >> 2), 0, 0x41uLL);
        DspLib::Biquad::amplitudeResponse(&v33, v42, 2uLL, &__B, 2, 0, 44100.0, v25, v26);
        DspLib::amp2dB(&__B, 2uLL, 1.0);
        DspLib::multiply(&__B, 2, 2.0);
        if (*(&__B + 1) == 0.0 || *&__B == 0.0)
        {
          break;
        }

        DspLib::divide(&__C, 2uLL, &__B, 2, &__B);
        v27 = fabsf(sqrtf(*&__B * *(&__B + 1)));
        v28 = INFINITY;
        if ((*&__B * *(&__B + 1)) != -INFINITY)
        {
          v28 = v27;
        }

        if (v28 < 1.001 && v28 > 0.999)
        {
          break;
        }

        v29 = v19 * sqrtf(v28);
        v30 = v16 >= v29 ? v29 : v16;
        v19 = v29 >= 1.0 ? v30 : 1.0;
        --v18;
      }

      while (v18);
      DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v36 + 8));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v45[8]);
      if (v44)
      {
        *(&v44 + 1) = v44;
        operator delete(v44);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }
    }
  }

  else
  {

    DspLib::Biquad::Design::fractionalOrderShelfRegular(a2, a3, a4, a5, a6, a7);
  }
}

void sub_1DDBA2444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::Biquad::Design::fractionalOrderShelfRegular(float a1@<S0>, float a2@<S1>, float a3@<S2>, float a4@<S3>, float a5@<S4>, float32x2_t **a6@<X8>)
{
  v92[10] = *MEMORY[0x1E69E9840];
  v10 = fminf(a4 * 0.499, 20000.0);
  if (v10 >= a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = v10;
  }

  if (a1 >= 20.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 20.0;
  }

  if (v10 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v10;
  }

  if (a2 >= 20.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = 40.0;
  if (a3 <= 40.0)
  {
    v15 = a3;
  }

  if (a3 >= -40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = -40.0;
  }

  std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a6, 1uLL);
  if (v12 != v14)
  {
    if (v12 <= v14)
    {
      v84 = 0.0;
      v17 = v12;
      v18 = v14;
    }

    else
    {
      v84 = v16;
      v16 = -v16;
      v17 = v14;
      v18 = v12;
    }

    v19 = fabsf(v16);
    v20 = log(v18);
    v22 = log(v17);
    v23 = v19 / (v20 - v22) * 0.693147181 / 6.0 + v19 / (v20 - v22) * 0.693147181 / 6.0;
    v24 = a5;
    if (v23 <= a5)
    {
      v24 = v23;
    }

    if (v23 >= 1.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    MEMORY[0x1EEE9AC00](v21);
    v28 = &v84 - ((v27 + 23) & 0xFFFFFFFFFFFFFFF0);
    v29 = v25;
    v30 = v25 & 1;
    v31 = v30 + v25;
    v32 = v31 >> 1;
    if (v31 >= 2)
    {
      v33 = 0;
      v34 = vcvts_n_f32_u32(v29, 1uLL);
      v35 = v29;
      v36 = v29 + 1;
      v37 = vcvts_n_f32_u32(v36, 1uLL);
      v38 = v36;
      v39 = v26 - (v25 - v35);
      if (v32 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v32;
      }

      while (1)
      {
        v41 = v33 + 1;
        v42 = (v33 + 1);
        if (!v30)
        {
          break;
        }

        if (v37 >= v42)
        {
          goto LABEL_36;
        }

        v44 = v33 - 1;
        v43 = v33;
LABEL_38:
        *&v28[8 * v33++] = (v25 - v35) * ((0.5 - ((v43 + 1) * 2.0 + -1.0) * 0.5 / v38) * 3.14159265) + v39 * ((0.5 - ((v44 + 1) * 2.0 + -1.0) * 0.5 / v35) * 3.14159265);
        if (v40 == v41)
        {
          goto LABEL_39;
        }
      }

      if (v34 >= v42)
      {
LABEL_36:
        v43 = v33;
      }

      else
      {
        v43 = v33 + 1;
      }

      v44 = v33;
      goto LABEL_38;
    }

LABEL_39:
    v45 = (v32 + 1);
    std::vector<DspLib::Biquad::Section>::resize(a6, v45);
    v87 = a4;
    DspLib::ComplexVector::ComplexVector(v92, v45, 0);
    v85 = v14;
    v86 = v12;
    DspLib::ComplexVector::ComplexVector(v91, v45, 0);
    v46 = v16 / (v25 * 40.0);
    if (v31 >= 2)
    {
      v47 = __exp10(-v46);
      v48 = __exp10(v16 / (v25 * 40.0));
      v49 = 0;
      if (v32 <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = v32;
      }

      do
      {
        v51 = __sincos_stret(*&v28[8 * v49]);
        v93.real = v51.__cosval * -v47;
        v93.imag = v47 * v51.__sinval;
        DspLib::ComplexSpan::setElement(v92, v49, v93);
        v94.real = v51.__cosval * -v48;
        v94.imag = v48 * v51.__sinval;
        DspLib::ComplexSpan::setElement(v91, v49++, v94);
      }

      while (v50 != v49);
    }

    v52 = ceil(v25);
    v53 = floor(v25);
    if ((v25 & 1) == 0)
    {
      v52 = v53;
    }

    v54 = v46 * (v52 - v25);
    v95.real = -__exp10f(v54);
    v95.imag = 0.0;
    DspLib::ComplexSpan::setElement(v92, v32, v95);
    v96.real = -__exp10f(-v54);
    v96.imag = 0.0;
    DspLib::ComplexSpan::setElement(v91, v32, v96);
    DspLib::ComplexVector::ComplexVector(v90, (v32 + 1), 0);
    v56 = v86;
    v55 = v87;
    v57 = v85;
    DspLib::ComplexVector::ComplexVector(v89, (v32 + 1), 0);
    v58 = tan(sqrtf(v56 * v57) * 6.28318531 / v55 * 0.5);
    DspLib::ComplexVector::ComplexVector(v88, (v32 + 1), 0);
    DspLib::ComplexVector::operator=(v90, v92);
    *&v58 = v58;
    DspLib::operator*=(v90, *&v58);
    DspLib::operator+=(v90, 1.0);
    DspLib::ComplexVector::operator=(v88, v92);
    DspLib::operator*=(v88, -*&v58);
    DspLib::operator+=(v88, 1.0);
    DspLib::operator/=(v90, v88);
    DspLib::ComplexVector::operator=(v89, v91);
    DspLib::operator*=(v89, *&v58);
    DspLib::operator+=(v89, 1.0);
    DspLib::ComplexVector::operator=(v88, v91);
    DspLib::operator*=(v88, -*&v58);
    DspLib::operator+=(v88, 1.0);
    DspLib::operator/=(v89, v88);
    v59 = v90[0];
    v60 = v90[1];
    v61 = v89[0];
    v62 = v89[1];
    v63 = *a6;
    v64 = &v63[1];
    do
    {
      v65 = *v59++;
      v66 = v65;
      v67 = *v60++;
      v68 = v67;
      v69 = -v66;
      v70 = *v61++;
      v71 = v70;
      v72 = -v70;
      v73 = *v62++;
      v74 = v73;
      v75 = v68 == 0.0;
      v76 = -v66;
      v77 = v66 * -2.0;
      v78 = -v73;
      v79 = -v68 * -v68 + v76 * v76;
      if (v75)
      {
        v77 = v69;
      }

      v80 = v71 * -2.0;
      if (v75)
      {
        v79 = 0.0;
      }

      v81 = v78 * v78 + v72 * v72;
      if (v74 == 0.0)
      {
        v80 = v72;
        v81 = 0.0;
      }

      v82 = ((1.0 - v80) + v81) / ((1.0 - v77) + v79);
      v64[1] = v77;
      v64[2] = v79;
      *(v64 - 2) = 1.0 / v82;
      *(v64 - 1) = v80 / v82;
      *v64 = v81 / v82;
      v64 += 5;
      --v45;
    }

    while (v45);
    v83 = __exp10(v84 / 20.0);
    *v63 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*v63), v83));
    *&v83 = v83 * v63[1].f32[0];
    v63[1].i32[0] = LODWORD(v83);
    DspLib::ComplexVector::~ComplexVector(v88);
    DspLib::ComplexVector::~ComplexVector(v89);
    DspLib::ComplexVector::~ComplexVector(v90);
    DspLib::ComplexVector::~ComplexVector(v91);
    DspLib::ComplexVector::~ComplexVector(v92);
  }
}

void sub_1DDBA2ABC(_Unwind_Exception *a1)
{
  DspLib::ComplexVector::~ComplexVector((v1 + 104));
  DspLib::ComplexVector::~ComplexVector((v1 + 184));
  DspLib::ComplexVector::~ComplexVector((v1 + 264));
  DspLib::ComplexVector::~ComplexVector((v3 - 232));
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void DspLib::Biquad::Design::fractionalOrderBandShelf(DspLib::Biquad::Design *this@<X0>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, float a7@<S5>, float a8@<S6>, void **a9@<X8>)
{
  DspLib::Biquad::Design::fractionalOrderShelf(this, a2, a3, -a6, a8, a7, &__p);
  DspLib::Biquad::Design::fractionalOrderShelf(this, a4, a5, a6, a8, a7, &v17);
  std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a9, 0xCCCCCCCCCCCCCCCDLL * ((v20 - __p) >> 2) - 0x3333333333333333 * ((v18 - v17) >> 2));
  if (v20 != __p)
  {
    memmove(*a9, __p, v20 - __p);
  }

  v16 = v17;
  if (v18 != v17)
  {
    memmove(*a9 + v20 - __p, v17, v18 - v17);
    v16 = v17;
  }

  if (v16)
  {
    v18 = v16;
    operator delete(v16);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_1DDBA2C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DspLib::Biquad::Design::allpass@<X0>(DspLib::Biquad::Design *this@<X0>, unsigned int a2@<S0>, unsigned int a3@<S1>, float a4@<S2>, unint64_t a5@<X1>, void *a6@<X8>)
{
  v10 = this;
  if (this > 0x13)
  {
    v10 = 19.9;
  }

  if (!this)
  {
    v10 = 1.0;
  }

  v11 = vcvtas_u32_f32(v10);
  LODWORD(a5) = vcvtps_u32_f32(vcvts_n_f32_u32(v11, 1uLL));
  result = std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a6, a5);
  if (v11 >= 2)
  {
    v15 = 0;
    v14 = v11 >> 1;
    do
    {
      result = DspLib::Biquad::Design::parametricSectionRegular(((a2 << 32) | 0xB), a3 << 32, v13, &v18, a4);
      v16 = (*a6 + v15);
      *v16 = v18;
      v16[1].i32[0] = v19;
      v15 += 20;
    }

    while (20 * (v11 >> 1) != v15);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    result = DspLib::Biquad::Design::parametricSectionRegular(((a2 << 32) | 0xA), a3 << 32, v13, &v18, a4);
    v17 = (*a6 + 20 * v14);
    *v17 = v18;
    v17[1].i32[0] = v19;
  }

  return result;
}

void sub_1DDBA2DB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *DspLib::Biquad::Design::allpassFromPoles@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  result = std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a4, a2);
  if (a2)
  {
    v8 = *result;
    v9 = (a1 + 16);
    v10 = 1;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      if (a3)
      {
        v16 = *v9;
      }

      else
      {
        v16 = *v9;
        if (fabsf(*v9) <= 1.0e-12 && fabsf(*(v9 - 2)) <= 1.0e-12)
        {
          v17 = *(v9 - 1);
          *v8 = v17;
          v18 = 1065353216;
          goto LABEL_8;
        }
      }

      *v8 = v16;
      v17 = *(v9 - 1);
      v18 = __PAIR64__(HIDWORD(_D0), v17);
LABEL_8:
      *(v8 + 4) = v18;
      *(v8 + 12) = v17;
      *(v8 + 16) = v16;
      v8 += 20;
      v19 = a2 > v10++;
      v9 += 5;
    }

    while (v19);
  }

  return result;
}

float DspLib::Biquad::Design::phaseComplement@<S0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<std::__wrap_iter<DspLib::Biquad::Section const*>,std::__wrap_iter<DspLib::Biquad::Section const*>>(a3, a1, a1 + 20 * a2, a2);
  v5 = *a3;
  v6 = a3[1];
  if (v6 != *a3)
  {
    do
    {
      result = *v5;
      *v5 = *(v5 + 8);
      *(v5 + 8) = result;
      v5 += 20;
    }

    while (v5 != v6);
  }

  return result;
}

void DspLib::Biquad::Design::squaredFilter(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<std::__wrap_iter<DspLib::Biquad::Section const*>,std::__wrap_iter<DspLib::Biquad::Section const*>>(a3, a1, a1 + 20 * a2, a2);
  DspLib::Biquad::Design::phaseComplement(a1, a2, &__p);
  std::vector<DspLib::Biquad::Section>::__insert_with_size[abi:ne200100]<std::__wrap_iter<DspLib::Biquad::Section*>,std::__wrap_iter<DspLib::Biquad::Section*>>(a3, *(a3 + 8), __p, v7, 0xCCCCCCCCCCCCCCCDLL * ((v7 - __p) >> 2));
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1DDBA2FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void DspLib::Biquad::Design::integrator(DspLib::Biquad::Design *this@<X0>, float a2@<S0>, float a3@<S1>, float a4@<S2>, uint64_t a5@<X8>)
{
  if (this > 1)
  {
    v13 = __sincos_stret(a2 * 6.28318531 / a4);
    v14 = sinh(0.588235294) * v13.__sinval;
    v15 = 1.0 / (v14 + 1.0);
    v16 = ((1.0 - v13.__cosval) * 0.5 * v15 + (1.0 - v13.__cosval) * 0.5 * v15 + (1.0 - v13.__cosval) * v15) * ((a3 / a2) * (a3 / a2));
    *a5 = v16;
    *(a5 + 4) = 0;
    *(a5 + 8) = 0;
    v17 = v13.__cosval * -2.0 * v15;
    *&v14 = (1.0 - v14) * v15;
    *(a5 + 12) = v17;
    *(a5 + 16) = LODWORD(v14);
  }

  else
  {
    v8 = a3 * 3.14159265 / a4;
    v9 = cos(a2 * 6.28318531 / a4);
    v10 = v8 * sqrt(v9 * 2.0 + 2.0) / ((a3 / a2) * 0.707106781);
    v11 = v9 * v9 + -1.0 + v10 * v10;
    if (v11 >= 0.0)
    {
      v18 = sqrt(v11);
      v19 = v9 + v18;
      v20 = v9 - v18;
      if (v19 <= 1.0)
      {
        v20 = v19;
      }

      v12 = v20;
    }

    else
    {
      v12 = 0.999;
    }

    v21 = v8 + v8;
    *a5 = v21;
    *(a5 + 4) = 0;
    *(a5 + 8) = 0;
    *(a5 + 12) = -v12;
    *(a5 + 16) = 0;
  }
}

void DspLib::Biquad::Design::phaseEqualizer(double a1@<D0>, double a2@<D1>, double a3@<D2>, double a4@<D3>, uint64_t a5@<X8>)
{
  v7 = 192000.0;
  if (a4 <= 192000.0)
  {
    v7 = a4;
  }

  if (a4 >= 8000.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 8000.0;
  }

  v9 = v8 * 0.49;
  if (v8 * 0.49 >= a1)
  {
    v9 = a1;
  }

  if (a1 >= 10.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 10.0;
  }

  v11 = 20.0;
  if (a2 <= 20.0)
  {
    v11 = a2;
  }

  if (a2 >= 0.5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.5;
  }

  v13 = 180.0;
  if (a3 <= 180.0)
  {
    v13 = a3;
  }

  LOBYTE(v33) = 0;
  v34 = 0u;
  *__p = 0u;
  memset(v36, 0, 32);
  if (a3 >= -180.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -180.0;
  }

  memset(&v36[2], 0, 32);
  DspLib::Biquad::ParametricFilter::initialize(&v33, 2uLL, v8, 1uLL);
  v15 = dbl_1DE095650[v14 >= 0.0];
  *&v16 = v12;
  v17 = (v16 << 32);
  v18 = v10;
  v31 = v18;
  v19 = 19;
  v20 = 0.0014 / v12;
  do
  {
    *&v21 = v10 / v15;
    DspLib::Biquad::ParametricFilter::setParametricEQ(&v33, (v21 << 32) | 0xB, v17, 0, 0);
    *&v22 = v10 * v15;
    DspLib::Biquad::ParametricFilter::setParametricEQ(&v33, (v22 << 32) | 0xB, v17, 0, 1uLL);
    *&v37 = v31;
    v32 = 0;
    DspLib::Biquad::phaseResponse(&v33, &v37, 1uLL, &v32 + 4, 1, 0, *&v36[2], v23, v24);
    DspLib::Biquad::phaseResponse(&v33, &v37, 1uLL, &v32, 1, 1, *&v36[2], v25, v26);
    v27 = (*&v32 - *(&v32 + 1));
    v28 = v27 * 57.2957795 + 360.0;
    v29 = v27 * 57.2957795 + -360.0;
    if (v14 >= 0.0)
    {
      v29 = v28;
    }

    if (vabdd_f64(v14, v29) < 1.0)
    {
      break;
    }

    v15 = v15 * ((v14 - v29) * v20 + 1.0);
    if (v15 > 3.0)
    {
      break;
    }
  }

  while (v15 >= 0.333333333 && v19-- != 0);
  DspLib::Biquad::Filter::section(&v33, 0, 0, a5);
  DspLib::Biquad::Filter::section(&v33, 0, 1, (a5 + 20));
  v37 = &v36[2] + 1;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v37);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v36 + 8));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1DDBA3414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DspLib::Biquad::ParametricFilter::~ParametricFilter(va);
  _Unwind_Resume(a1);
}

float *DspLib::Biquad::Design::aWeighting@<X0>(double a1@<D0>, _OWORD *a2@<X8>)
{
  v4 = a2;
  *a2 = xmmword_1DE0956EC;
  a2[1] = unk_1DE0956FC;
  a2[2] = xmmword_1DE09570C;
  *(a2 + 44) = *(&xmmword_1DE09570C + 12);
  v5 = 60;
  do
  {
    result = DspLib::Biquad::Design::bilinearTransformStoZUnwarped(v4, a1);
    v4 += 5;
    v5 -= 20;
  }

  while (v5);
  return result;
}

float *DspLib::Biquad::Design::cWeighting@<X0>(double a1@<D0>, uint64_t a2@<X8>)
{
  v4 = a2;
  *a2 = xmmword_1DE095728;
  *(a2 + 16) = unk_1DE095738;
  *(a2 + 32) = 0x4FAEF1FF4815A495;
  v5 = 40;
  do
  {
    result = DspLib::Biquad::Design::bilinearTransformStoZUnwarped(v4, a1);
    v4 += 5;
    v5 -= 20;
  }

  while (v5);
  return result;
}

void DspLib::Biquad::Design::kWeighting(double a1@<D0>, uint64_t a2@<X8>)
{
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  if (a1 == 48000.0)
  {
    *a2 = xmmword_1DE095660;
    *(a2 + 16) = 1060864988;
    v5 = 0x3F7D7560BFFEB9E0;
  }

  else
  {
    v6 = tan(5284.07858 / a1);
    *&v7 = v6 / 0.707175237 + 1.0 + v6 * v6;
    v8 = v6 * 1.25872093 / 0.707175237;
    v9.f64[0] = v8 + 1.5848647 + v6 * v6;
    v10.f64[0] = 1.5848647 - v8 + v6 * v6;
    v9.f64[1] = v6 * v6 + -1.5848647 + v6 * v6 + -1.5848647;
    v10.f64[1] = v6 * v6 + -1.0 + v6 * v6 + -1.0;
    *&v6 = (1.0 - v6 / 0.707175237 + v6 * v6) / *&v7;
    v11 = vdupq_lane_s64(v7, 0);
    *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v9, v11)), vdivq_f64(v10, v11));
    *(a2 + 16) = LODWORD(v6);
    v12 = tan(119.806115 / a1);
    v13.f64[0] = v12 * v12 + -1.0 + v12 * v12 + -1.0;
    v13.f64[1] = 1.0 - v12 / 0.500327037 + v12 * v12;
    v5 = vcvt_f32_f64(vdivq_f64(v13, vdupq_lane_s64(COERCE__INT64(v12 / 0.500327037 + 1.0 + v12 * v12), 0)));
  }

  *(a2 + 20) = 0xC00000003F800000;
  *(a2 + 28) = 1065353216;
  *(a2 + 32) = v5;
}

void DspLib::Biquad::Design::fromSDomain(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, __int128 **a5@<X8>, float a6@<S0>, double a7@<D1>)
{
  v90 = *MEMORY[0x1E69E9840];
  DspLib::ComplexVector::ComplexVector(v83, a2, 0);
  DspLib::ComplexVector::ComplexVector(v81, a4, 0);
  v13 = 1.0;
  v14 = 1.0;
  if (v84)
  {
    v15 = 0;
    v16 = a7 + a7;
    v17 = 1.0 / v16;
    v18 = 1;
    do
    {
      v19 = (a1 + 8 * v15);
      v20 = *v19;
      v21 = v19[1];
      v22 = v17 * *v19;
      v23 = v17 * v21;
      v24 = v22 + 1.0;
      v25 = 1.0 - v22;
      v26 = (v24 * v25) - (v23 * v23);
      v27 = ((v17 * v21) * v25) + (v24 * (v17 * v21));
      v28 = 1.0 / ((v23 * v23) + (v25 * v25));
      v91.real = v26 * v28;
      v91.imag = v27 * v28;
      DspLib::ComplexSpan::setElement(v83, v15, v91);
      v29 = (v21 * v21) + (v20 * v20);
      if (v21 == 0.0)
      {
        v29 = v20;
      }

      v14 = v14 * fabsf(v29);
      v15 = v18;
      v30 = v84 > v18++;
    }

    while (v30);
  }

  if (v82)
  {
    v31 = 0;
    v32 = a7 + a7;
    v33 = 1.0 / v32;
    v34 = 1;
    v13 = 1.0;
    do
    {
      v35 = (a3 + 8 * v31);
      v36 = *v35;
      v37 = v35[1];
      v38 = v33 * *v35;
      v39 = v33 * v37;
      v40 = v38 + 1.0;
      v41 = 1.0 - v38;
      v42 = (v40 * v41) - (v39 * v39);
      v43 = ((v33 * v37) * v41) + (v40 * (v33 * v37));
      v44 = 1.0 / ((v39 * v39) + (v41 * v41));
      v92.real = v42 * v44;
      v92.imag = v43 * v44;
      DspLib::ComplexSpan::setElement(v81, v31, v92);
      v45 = (v37 * v37) + (v36 * v36);
      if (v37 == 0.0)
      {
        v45 = v36;
      }

      v13 = v13 * fabsf(v45);
      v31 = v34;
      v30 = v82 > v34++;
    }

    while (v30);
  }

  DspLib::ComplexVector::ComplexVector(v79, 0, 0);
  DspLib::ComplexVector::ComplexVector(v78, 0, 0);
  DspLib::ComplexVector::ComplexVector(v76, 0, 0);
  DspLib::ComplexVector::ComplexVector(v75, 0, 0);
  v46 = DspLib::Biquad::Design::fromSDomain(std::span<DSPComplex const,18446744073709551615ul>,std::span<DSPComplex const,18446744073709551615ul>,float,double)::$_2::operator()(v83, v79, v78);
  v47 = DspLib::Biquad::Design::fromSDomain(std::span<DSPComplex const,18446744073709551615ul>,std::span<DSPComplex const,18446744073709551615ul>,float,double)::$_2::operator()(v81, v76, v75);
  if (v46 <= v47)
  {
    v48 = v47;
  }

  else
  {
    v48 = v46;
  }

  std::vector<DspLib::Biquad::Section>::vector[abi:ne200100](a5, v48);
  v49 = *a5;
  v50 = a5[1];
  if (v50 == *a5)
  {
    v60 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - *a5) >> 2);
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 1;
    do
    {
      memset(v85, 0, 12);
      if (v78[2] <= v52)
      {
        v58 = v53 + 1;
        if (v80 <= v58)
        {
          LODWORD(v85[0]) = 1065353216;
          if (v80 == v58)
          {
            v56 = -*(v79[0] + 4 * v53);
            *(v85 + 1) = v56;
            LODWORD(v85[1]) = 0;
            ++v53;
          }

          else
          {
            *(v85 + 4) = 0;
            v56 = 0.0;
          }
        }

        else
        {
          v88 = 1065353216;
          v89 = -*(v79[0] + 4 * v53);
          v86 = 1065353216;
          v87 = -*(v79[0] + 4 * v58);
          DspLib::convolve(v85, 3, &v88, 2uLL, &v86, 2);
          v53 += 2;
          v56 = *(v85 + 1);
        }
      }

      else
      {
        v55 = DspLib::ComplexSpan::operator[](v78, v52);
        LODWORD(v85[0]) = 1065353216;
        v56 = v55 * -2.0;
        *(v85 + 1) = v55 * -2.0;
        *&v85[1] = (v57 * v57) + (v55 * v55);
        ++v52;
      }

      v49 = *a5;
      v59 = *a5 + 20 * v51;
      *(v59 + 12) = v56;
      *(v59 + 16) = v85[1];
      v51 = v54;
      v50 = a5[1];
      v60 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - v49) >> 2);
      v30 = v60 > v54++;
    }

    while (v30);
  }

  v61 = v49;
  v62 = v49;
  if (v50 != v49)
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 1;
    while (1)
    {
      memset(v85, 0, 12);
      if (v75[2] > v64)
      {
        break;
      }

      v69 = v65 + 1;
      if (v77 <= v69)
      {
        LODWORD(v85[0]) = 1065353216;
        if (v77 != v69)
        {
          *(v85 + 4) = 0;
          goto LABEL_35;
        }

        *(v85 + 1) = -*(v76[0] + 4 * v65);
        LODWORD(v85[1]) = 0;
        v70 = 1.0;
        ++v65;
      }

      else
      {
        v88 = 1065353216;
        v89 = -*(v76[0] + 4 * v65);
        v86 = 1065353216;
        v87 = -*(v76[0] + 4 * v69);
        DspLib::convolve(v85, 3, &v88, 2uLL, &v86, 2);
        v65 += 2;
        v70 = *v85;
      }

LABEL_36:
      v62 = *a5;
      v71 = *a5 + 5 * v63;
      *v71 = v70;
      v71[1] = *(v85 + 1);
      v71[2] = *&v85[1];
      v63 = v66;
      v61 = a5[1];
      v60 = 0xCCCCCCCCCCCCCCCDLL * ((v61 - v62) >> 2);
      v30 = v60 > v66++;
      if (!v30)
      {
        v49 = v62;
        goto LABEL_38;
      }
    }

    v67 = DspLib::ComplexSpan::operator[](v75, v64);
    LODWORD(v85[0]) = 1065353216;
    *(v85 + 1) = v67 * -2.0;
    *&v85[1] = (v68 * v68) + (v67 * v67);
    ++v64;
LABEL_35:
    v70 = 1.0;
    goto LABEL_36;
  }

LABEL_38:
  if (COERCE_INT(fabs((v13 / v14) * a6)) > 2139095039)
  {
    goto LABEL_45;
  }

  if (v61 == v62)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 1.0;
    v73 = v62;
    do
    {
      v72 = v72 * (((*v73 + v73[1]) + v73[2]) / ((v73[3] + 1.0) + v73[4]));
      v73 += 5;
    }

    while (v73 != v61);
  }

  v74 = ((v13 / v14) * a6) / fabsf(v72);
  *v62 = vmul_n_f32(*v62, v74);
  v62[1].f32[0] = v74 * v62[1].f32[0];
  if ((DspLib::Biquad::validate(v49, v60) & 1) == 0)
  {
LABEL_45:
    std::vector<DspLib::Biquad::Section>::resize(a5, 0);
  }

  DspLib::ComplexVector::~ComplexVector(v75);
  DspLib::ComplexVector::~ComplexVector(v76);
  DspLib::ComplexVector::~ComplexVector(v78);
  DspLib::ComplexVector::~ComplexVector(v79);
  DspLib::ComplexVector::~ComplexVector(v81);
  DspLib::ComplexVector::~ComplexVector(v83);
}

void sub_1DDBA3C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  v62 = *v60;
  if (*v60)
  {
    *(v60 + 8) = v62;
    operator delete(v62);
  }

  DspLib::ComplexVector::~ComplexVector(&a10);
  DspLib::ComplexVector::~ComplexVector(&a20);
  DspLib::ComplexVector::~ComplexVector(&a30);
  DspLib::ComplexVector::~ComplexVector(&a40);
  DspLib::ComplexVector::~ComplexVector(&a50);
  DspLib::ComplexVector::~ComplexVector(&a60);
  _Unwind_Resume(a1);
}

uint64_t DspLib::Biquad::Design::fromSDomain(std::span<DSPComplex const,18446744073709551615ul>,std::span<DSPComplex const,18446744073709551615ul>,float,double)::$_2::operator()(void *a1, DspLib::ComplexVector *a2, DspLib::ComplexVector *a3)
{
  if (a1[2])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      DspLib::ComplexSpan::operator[](a1, v6);
      if (v10 == 0.0)
      {
        ++v7;
      }

      else
      {
        ++v8;
      }

      v6 = v9;
      v11 = a1[2] > v9++;
    }

    while (v11);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  DspLib::ComplexVector::setLength(a2, v7);
  DspLib::ComplexVector::setLength(a3, v8);
  if (a1[2])
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = DspLib::ComplexSpan::operator[](a1, v12);
      if (v17 == 0.0)
      {
        DspLib::ComplexSpan::setElement(a2, v13++, *&v16);
      }

      else
      {
        DspLib::ComplexSpan::setElement(a3, v14++, *&v16);
      }

      v12 = v15;
      v11 = a1[2] > v15++;
    }

    while (v11);
  }

  return v8 + vcvtps_u32_f32(vcvts_n_f32_u32(v7, 1uLL));
}

uint64_t DspLib::Biquad::Design::ISO226LoudnessEQ::design@<X0>(float a1@<S0>, double a2@<D1>, unsigned int a3@<S2>, unsigned int a4@<S3>, float a5@<S4>, float a6@<S5>, uint64_t a7@<X8>)
{
  v28 = *&a3;
  v29 = a1;
  v26 = 0.0;
  v27 = 1053609165;
  v25 = 0;
  DspLib::poly(DspLib::Biquad::Design::ISO226LoudnessEQ::design(float,double,float,float,float,float)::kLowShelfGainPolynomial, 4, &v29, 1uLL, &v26);
  DspLib::poly(DspLib::Biquad::Design::ISO226LoudnessEQ::design(float,double,float,float,float,float)::kBellGainPolynomial, 4, &v29, 1uLL, &v25 + 1);
  DspLib::poly(DspLib::Biquad::Design::ISO226LoudnessEQ::design(float,double,float,float,float,float)::kHighShelfGainPolynomial, 4, &v29, 1uLL, &v25);
  if (v26 < 0.0)
  {
    a5 = -30.0;
  }

  v26 = a5 * sinf(fminf(v26 / a5, 1.5708));
  if (*(&v25 + 1) >= 0.0)
  {
    v14 = 30.0;
  }

  else
  {
    v14 = -30.0;
  }

  *(&v25 + 1) = v14 * sinf(fminf(*(&v25 + 1) / v14, 1.5708));
  if (*&v25 < 0.0)
  {
    a6 = -30.0;
  }

  *&v25 = a6 * sinf(fminf(*&v25 / a6, 1.5708));
  if (DspLib::isEqual(v15, *&a3, 140.0, 1.0e-20))
  {
    v17 = a3;
    v18 = 0x3ECCCCCD00000000;
  }

  else
  {
    DspLib::poly(DspLib::Biquad::Design::ISO226LoudnessEQ::design(float,double,float,float,float,float)::kLowShelfQualityPolynomial, 4, &v28, 1uLL, &v27);
    v17 = LODWORD(v28);
    v18 = v27 << 32;
  }

  v19 = HIDWORD(v25);
  v20 = v25;
  v21 = a2;
  DspLib::Biquad::Design::parametricSectionRegular(((v17 << 32) | 0x13), v18 | LODWORD(v26), v16, a7, v21);
  DspLib::Biquad::Design::parametricSectionRegular(0x4525600000000010, v19 | 0x3ECCCCCD00000000, v22, (a7 + 20), v21);
  return DspLib::Biquad::Design::parametricSectionRegular(((a4 << 32) | 0x11), v20 | 0x3F33333300000000, v23, (a7 + 40), v21);
}

uint64_t DspLib::Biquad::Design::ChenMazurRiceLoudnessEQ::design@<X0>(float a1@<S0>, double a2@<D1>, float a3@<S2>, unsigned int a4@<S3>, float a5@<S4>, float a6@<S5>, uint64_t a7@<X8>)
{
  if ((a1 * -0.31579) <= a5)
  {
    v12 = a1 * -0.31579;
  }

  else
  {
    v12 = a5;
  }

  v13 = 0.0;
  if ((a1 * -0.31579) >= 0.0)
  {
    v13 = v12;
  }

  v24 = v13;
  v14 = a1 * -0.21053;
  if ((a1 * -0.21053) <= a6)
  {
    v15 = a1 * -0.21053;
  }

  else
  {
    v15 = a6;
  }

  v16 = LODWORD(v15);
  v22 = 0.0;
  v23 = 0.0;
  DspLib::poly(DspLib::Biquad::Design::ChenMazurRiceLoudnessEQ::design(float,double,float,float,float,float)::frequencyFactorPolynomial, 4, &v24, 1uLL, &v23);
  DspLib::poly(DspLib::Biquad::Design::ChenMazurRiceLoudnessEQ::design(float,double,float,float,float,float)::qualityFactorPolynomial, 4, &v24, 1uLL, &v22);
  v17 = a2;
  DspLib::Biquad::Design::parametricSectionRegular(((COERCE_UNSIGNED_INT(v23 * a3) << 32) | 0x13), LODWORD(v24) | (COERCE_UNSIGNED_INT((((a3 + -100.0) / 1000.0) + 0.5) * v22) << 32), v18, a7, v17);
  if (v14 >= 0.0)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  return DspLib::Biquad::Design::parametricSectionRegular(((a4 << 32) | 0xC), v20, v19, (a7 + 20), v17);
}

double DspLib::Biquad::Design::HilbertTransfrom::real@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  *(a1 + 32) = xmmword_1DE0957D0;
  *(a1 + 48) = unk_1DE0957E0;
  *(a1 + 64) = xmmword_1DE0957F0;
  *(a1 + 80) = unk_1DE095800;
  *&result = 1056273417;
  *a1 = xmmword_1DE0957B0;
  *(a1 + 16) = unk_1DE0957C0;
  return result;
}

double DspLib::Biquad::Design::HilbertTransfrom::imag@<D0>(_OWORD *a1@<X8>)
{
  a1[2] = xmmword_1DE095834;
  a1[3] = unk_1DE095844;
  a1[4] = xmmword_1DE095854;
  result = dbl_1DE095824[0];
  *a1 = xmmword_1DE095814;
  a1[1] = *dbl_1DE095824;
  return result;
}

void DspLib::Biquad::Design::LinkwitzRileyCrossover::design(DspLib::Biquad::Design *this@<X1>, int a2@<W0>, uint64_t a3@<X8>, float a4@<S0>, double a5@<D1>)
{
  v5 = this;
  if (this)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }

      v10 = a5;

      DspLib::Biquad::Design::butterworthHighPass(this, a4, v10, 0, a3);
    }

    else
    {
      v11 = a5;

      DspLib::Biquad::Design::butterworthLowPass(this, a4, v11, 0, a3);
    }
  }

  else
  {
    v8 = (this >> 1);
    if (a2)
    {
      if (a2 == 1)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        v12 = a5;
        *(a3 + 16) = 0;
        DspLib::Biquad::Design::butterworthHighPass(v8, a4, v12, 0, &v17);
        std::vector<DspLib::Biquad::Section>::resize(a3, 0x999999999999999ALL * (v18 - v17));
        if (v18 != v17)
        {
          memmove(*a3, v17, v18 - v17);
          if (v18 != v17)
          {
            memmove((v18 - v17 + *a3), v17, v18 - v17);
          }
        }

        if ((v5 & 2) != 0)
        {
          v13 = *a3;
          *v13 = vneg_f32(**a3);
          v13[1].f32[0] = -v13[1].f32[0];
        }

        goto LABEL_20;
      }

      if (a2 == 2)
      {
        v9 = a5;
        DspLib::Biquad::Design::butterworthLowPass(v8, a4, v9, 0, &v17);
        DspLib::Biquad::Design::allpassFromPoles(v17, 0xCCCCCCCCCCCCCCCDLL * (v18 - v17), 0, a3);
LABEL_20:
        v14 = v17;
        if (!v17)
        {
          return;
        }

        v18 = v17;
        goto LABEL_27;
      }

LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v15 = a5;
    *(a3 + 16) = 0;
    DspLib::Biquad::Design::butterworthLowPass(v8, a4, v15, 0, &v17);
    std::vector<DspLib::Biquad::Section>::resize(a3, 0x999999999999999ALL * (v18 - v17));
    v16 = v17;
    if (v18 != v17)
    {
      memmove(*a3, v17, v18 - v17);
      v16 = v17;
      if (v18 != v17)
      {
        memmove((v18 - v17 + *a3), v17, v18 - v17);
        v16 = v17;
      }
    }

    if (v16)
    {
      v18 = v16;
      v14 = v16;
LABEL_27:
      operator delete(v14);
    }
  }
}

void sub_1DDBA435C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

float DspLib::Biquad::Design::NevilleThieleCrossover::relativeNotchLocation(DspLib::Biquad::Design::NevilleThieleCrossover *this, float a2, float a3, float a4)
{
  v7 = 1.0 / (((tanf(((a3 * 6.2832) / a4) * 0.5) * a4) / 3.1416) * 6.2832);
  v8 = tanf(((a2 * 6.2832) / a4) * 0.5);
  v9 = (((v8 * a4) / 3.1416) * (((v8 * a4) / 3.1416) * 39.478)) * (v7 * v7);
  if (a2 > a3)
  {
    v9 = 1.0 / v9;
  }

  return sqrtf(v9);
}

void DspLib::Biquad::Design::NevilleThieleCrossover::analogDesign(int a1@<W0>, int a2@<W1>, void *a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v47 = 1.0 / (a4 * 6.2832);
  v46 = v47 * v47;
  v8 = a5 * a5;
  v9 = 1.0 - (a5 * a5);
  v10 = sqrtf(((a5 * a5) * -4.0) + 5.0);
  v44 = (v10 + 1.0) * 0.5;
  v45 = a5 * a5;
  v40 = sqrtf(v9);
  v11 = sqrtf((v8 * v8) + 8.0);
  v41 = sqrtf(((4.0 - (a5 * a5)) + v11) * 0.5);
  v42 = sqrtf(v9 + v9);
  v43 = sqrtf(((4.0 - (a5 * a5)) - v11) * 0.5);
  v39 = v9;
  v12 = fabsf(((((a5 * a5) + -2.0) * 3.0) + -1.0) / 3.0) / 3.0;
  v13 = sqrtf(v12 * (v12 * v12));
  v14 = acosf(-((v9 + -0.074074) + ((v8 + -2.0) / 3.0)) / (v13 + v13));
  v15 = sqrtf(v12);
  v16 = v15 + v15;
  v17 = cosf(v14 / 3.0);
  v18 = cosf((v14 + -3.1416) / 3.0);
  v19 = cosf((v14 + 3.1416) / 3.0);
  v20 = -((-v16 * v18) + 0.33333);
  if (a1 == 2)
  {
    if (a2 <= 5)
    {
      if (a2 == 3)
      {
        LODWORD(v48) = 1065353216;
        *(&v48 + 1) = -v47;
        *(&v48 + 1) = 0x3F80000000000000;
        v49 = v47;
        *v50 = 0;
      }

      else
      {
        if (a2 == 4)
        {
          LODWORD(v48) = 1065353216;
          v25 = v47;
          v26 = v42;
        }

        else
        {
          if (a2 != 5)
          {
            goto LABEL_32;
          }

          LODWORD(v48) = 1065353216;
          v25 = v47;
          v26 = (v10 + 1.0) * 0.5;
        }

        *(&v48 + 1) = -(v25 * v26);
        *(&v48 + 2) = v47 * v47;
        HIDWORD(v48) = 1065353216;
        v49 = v25 * v26;
        *v50 = v47 * v47;
      }

      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      v34 = &v50[4];
      v35 = a3;
      v36 = 1;
      goto LABEL_57;
    }

    switch(a2)
    {
      case 6:
        LODWORD(v48) = 1065353216;
        v27 = v47 * v47;
        v28 = v47;
        *(&v48 + 1) = -v47;
        *(&v48 + 1) = 0x3F80000000000000;
        v49 = v47;
        *v50 = 0x3F80000000000000;
        v29 = v40;
        break;
      case 7:
        LODWORD(v48) = 1065353216;
        *(&v48 + 1) = -v47;
        *(&v48 + 1) = 0x3F80000000000000;
        v49 = v47;
        *v50 = 0x3F80000000000000;
        v37 = v47 * v47;
        *&v50[8] = v47 * (0.33333 - (v16 * v18));
        *&v50[12] = v47 * v47;
        *&v50[16] = 1065353216;
        v38 = v47 * v20;
LABEL_52:
        v51 = v38;
        v52 = v37;
        goto LABEL_53;
      case 8:
        LODWORD(v48) = 1065353216;
        v27 = v47 * v47;
        v28 = v47;
        *(&v48 + 1) = -(v47 * v41);
        *(&v48 + 2) = v47 * v47;
        HIDWORD(v48) = 1065353216;
        v49 = v47 * v41;
        *v50 = v47 * v47;
        *&v50[4] = 1065353216;
        v29 = v43;
        break;
      default:
        goto LABEL_32;
    }

    *&v50[8] = -(v28 * v29);
    *&v50[12] = v27;
    *&v50[16] = 1065353216;
    v33 = v28 * v29;
LABEL_44:
    v51 = v33;
    v52 = v27;
LABEL_53:
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    v34 = &v53;
    v35 = a3;
    v36 = 2;
    goto LABEL_57;
  }

  v21 = (v16 * v17) + 0.33333;
  v22 = 0.33333 - (v16 * v19);
  if (a1 == 1)
  {
    if (a2 > 5)
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          LODWORD(v48) = 0;
          *(&v48 + 1) = -v47;
          *(&v48 + 1) = 0x3F80000000000000;
          v49 = v47;
          *v50 = 0;
          *&v50[8] = 0;
          *&v50[12] = v47 * v47;
          *&v50[16] = 1065353216;
          v51 = v47 * v21;
          v52 = v47 * v47;
          *&v53 = 0;
          *(&v53 + 2) = v47 * v47;
          HIDWORD(v53) = 1065353216;
          v54 = v47 * v20;
          v55 = v47 * v47;
          v56 = LODWORD(v45);
          v57 = v47 * v47;
          v58 = 1065353216;
          v59 = v47 * v22;
          v60 = v47 * v47;
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_32;
          }

          *&v48 = 0;
          *(&v48 + 2) = v47 * v47;
          HIDWORD(v48) = 1065353216;
          v49 = v47 * v41;
          *v50 = v47 * v47;
          *&v50[4] = 0;
          *&v50[12] = v47 * v47;
          *&v50[16] = 1065353216;
          v51 = v47 * v41;
          v52 = v47 * v47;
          *&v53 = 0;
          *(&v53 + 2) = v47 * v47;
          HIDWORD(v53) = 1065353216;
          v54 = v47 * v43;
          v55 = v47 * v47;
          v56 = LODWORD(v45);
          v57 = v47 * v47;
          v58 = 1065353216;
          v59 = v47 * v43;
          v60 = v47 * v47;
        }

        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
LABEL_56:
        v34 = v61;
        v35 = a3;
        v36 = 4;
        goto LABEL_57;
      }

      *&v48 = 0;
      v31 = v47 * v47;
      v32 = v47;
      *(&v48 + 2) = -v46;
      HIDWORD(v48) = 1065353216;
      v49 = v47 * v40;
      *v50 = v47 * v47;
      *&v50[4] = 0;
      *&v50[12] = v47 * v47;
      *&v50[16] = 1065353216;
      v51 = v47 * v40;
      v52 = v47 * v47;
      *&v53 = LODWORD(v45);
      *(&v53 + 2) = v47 * v47;
LABEL_41:
      HIDWORD(v53) = 1065353216;
      v54 = v32 + v32;
      v55 = v31;
      goto LABEL_42;
    }

    switch(a2)
    {
      case 3:
        LODWORD(v48) = 0;
        v27 = v47 * v47;
        v30 = v47;
        *(&v48 + 1) = -v47;
        *(&v48 + 1) = 0x3F80000000000000;
        v49 = v47;
        *v50 = 0;
        *&v50[4] = LODWORD(v45);
        *&v50[12] = v47 * v47;
LABEL_39:
        *&v50[16] = 1065353216;
        v33 = v30 * v39;
        goto LABEL_44;
      case 4:
        *&v48 = 0;
        v27 = v47 * v47;
        *(&v48 + 2) = v47 * v47;
        HIDWORD(v48) = 1065353216;
        v33 = v47 * v42;
        v49 = v47 * v42;
        *v50 = v47 * v47;
        *&v50[4] = LODWORD(v45);
        *&v50[12] = v47 * v47;
        *&v50[16] = 1065353216;
        goto LABEL_44;
      case 5:
        LODWORD(v48) = 0;
        v23 = v47 * v47;
        v24 = v47;
        *(&v48 + 1) = v47;
        *(&v48 + 1) = 0x3F80000000000000;
        v49 = v47;
        *&v50[4] = 0;
        *v50 = 0;
        *&v50[12] = v47 * v47;
        *&v50[16] = 1065353216;
        v51 = v47 * v44;
        v52 = v47 * v47;
        *&v53 = LODWORD(v45);
        *(&v53 + 2) = v47 * v47;
        goto LABEL_14;
    }

LABEL_32:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  if (a1)
  {
    goto LABEL_32;
  }

  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v48 = xmmword_1DE095670;
        v49 = v47;
        *v50 = xmmword_1DE095680;
        *&v50[16] = 1065353216;
        v51 = v47 * v21;
        v52 = v47 * v47;
        v53 = xmmword_1DE095670;
        v54 = v47 * v20;
        v55 = v47 * v47;
        v56 = 1065353216;
        v57 = v46 * v45;
        v58 = 1065353216;
        v59 = v47 * v22;
        v60 = v47 * v47;
      }

      else
      {
        if (a2 != 8)
        {
          goto LABEL_32;
        }

        v48 = xmmword_1DE095670;
        v49 = v47 * v41;
        *v50 = v47 * v47;
        *&v50[4] = xmmword_1DE095670;
        v51 = v47 * v41;
        v52 = v47 * v47;
        v53 = xmmword_1DE095670;
        v54 = v47 * v43;
        v55 = v47 * v47;
        v56 = 1065353216;
        v57 = v45 * v46;
        v58 = 1065353216;
        v59 = v47 * v43;
        v60 = v47 * v47;
      }

      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      goto LABEL_56;
    }

    v48 = xmmword_1DE095670;
    v31 = v47 * v47;
    v32 = v47;
    v49 = v47 * v40;
    *v50 = v47 * v47;
    *&v50[4] = xmmword_1DE095670;
    v51 = v47 * v40;
    v52 = v47 * v47;
    *&v53 = 1065353216;
    *(&v53 + 2) = v45 * v46;
    goto LABEL_41;
  }

  if (a2 == 3)
  {
    v48 = xmmword_1DE095670;
    v27 = v47 * v47;
    v30 = v47;
    v49 = v47;
    *v50 = 0x3F80000000000000;
    *&v50[8] = 0;
    *&v50[12] = v45 * v46;
    goto LABEL_39;
  }

  if (a2 == 4)
  {
    v48 = xmmword_1DE095670;
    v37 = v47 * v47;
    v38 = v47 * v42;
    v49 = v47 * v42;
    *v50 = v47 * v47;
    *&v50[4] = 1065353216;
    *&v50[12] = v45 * v46;
    *&v50[16] = 1065353216;
    goto LABEL_52;
  }

  if (a2 != 5)
  {
    goto LABEL_32;
  }

  v48 = xmmword_1DE095670;
  v23 = v47 * v47;
  v24 = v47;
  v49 = v47;
  *v50 = xmmword_1DE095680;
  *&v50[16] = 1065353216;
  v51 = v47 * v44;
  v52 = v47 * v47;
  *&v53 = 1065353216;
  *(&v53 + 2) = v45 * v46;
LABEL_14:
  HIDWORD(v53) = 1065353216;
  v54 = v24 * ((v10 + -1.0) * 0.5);
  v55 = v23;
LABEL_42:
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v34 = &v56;
  v35 = a3;
  v36 = 3;
LABEL_57:
  std::vector<DspLib::Biquad::SDomainSection>::__init_with_size[abi:ne200100]<DspLib::Biquad::SDomainSection const*,DspLib::Biquad::SDomainSection const*>(v35, &v48, v34, v36);
}

void DspLib::Biquad::Design::NevilleThieleCrossover::design(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, double a6@<D2>)
{
  v11 = (a4 * 6.2832) / a6;
  v12 = a6;
  v13 = tanf(v11 * 0.5);
  DspLib::Biquad::Design::NevilleThieleCrossover::analogDesign(a1, a2, &v31, (v13 * v12) / 3.1416, a5);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v14 = v31;
  v15 = v32;
  if (v31 != v32)
  {
    v16 = 0;
    do
    {
      v27 = *v14;
      v28 = v14[2];
      DspLib::Biquad::Design::bilinearTransformStoZUnwarped(&v27, &v29, a6);
      v17 = *(a3 + 16);
      if (v16 >= v17)
      {
        v19 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *a3) >> 2);
        v20 = v19 + 1;
        if (v19 + 1 > 0xCCCCCCCCCCCCCCCLL)
        {
          std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - *a3) >> 2);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x666666666666666)
        {
          v22 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::allocator<DspLib::Biquad::Section>::allocate_at_least[abi:ne200100](a3, v22);
        }

        v23 = 4 * ((v16 - *a3) >> 2);
        *v23 = v29;
        *(v23 + 16) = v30;
        v16 = 20 * v19 + 20;
        v24 = *(a3 + 8) - *a3;
        v25 = 20 * v19 - v24;
        memcpy((v23 - v24), *a3, v24);
        v26 = *a3;
        *a3 = v25;
        *(a3 + 8) = v16;
        *(a3 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        v18 = v29;
        *(v16 + 16) = v30;
        *v16 = v18;
        v16 += 20;
      }

      *(a3 + 8) = v16;
      v14 += 3;
    }

    while (v14 != v15);
    v14 = v31;
  }

  if (v14)
  {
    v32 = v14;
    operator delete(v14);
  }
}

void sub_1DDBA4E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double DspLib::Biquad::Design::easttyBaxandallToneControl@<D0>(DspLib::Biquad::Design *this@<X0>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double *a5@<X8>)
{
  v6 = this;
  v8 = tan(a4 * 3.14159265 / a2);
  v9 = exp(a3 * 0.11512925);
  if (v9 > 0.9999999 && v9 < 1.0000001)
  {
    v11 = 1.0000001;
  }

  else
  {
    v11 = v9;
  }

  v12 = sqrt(v11);
  v13 = sqrt(v11 * (v11 + 34.0) + 1.0);
  v14 = log(v11);
  v15 = exp((v13 + (v11 + 1.0) * 3.0) * v14 / ((v11 + -1.0) * -8.0));
  v16 = sqrt(v12);
  v17 = v16 * v15;
  v18 = v15 / v16;
  v19 = v8 / v17;
  v20 = v8 / v18;
  v21 = v8 * v17;
  v22 = v8 * v18;
  if (v6)
  {
    v19 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v6)
  {
    v23 = v11;
  }

  else
  {
    v23 = 1.0;
  }

  v24 = sqrt((v11 + v12 * 4.0 + 1.0 + v13) / (v12 * 8.0));
  v25 = v24 + v24;
  v26 = v25 * v19 + 1.0 + v19 * v19;
  v27 = v25 * v22 + 1.0 + v22 * v22;
  v28 = v23 * (v22 * v22 * v26 / (v19 * v19 * v27));
  *a5 = v28;
  a5[1] = (v19 * v19 + -1.0) * (v28 + v28) / v26;
  a5[2] = (v19 * v19 - v25 * v19 + 1.0) * v28 / v26;
  a5[3] = (v22 * v22 + -1.0 + v22 * v22 + -1.0) / v27;
  result = (v22 * v22 - v25 * v22 + 1.0) / v27;
  a5[4] = result;
  return result;
}

double DspLib::Biquad::Design::matchedZtransform(DspLib::Biquad::Design *this, double a2, double a3, double a4, double *a5, double *a6)
{
  v10 = 1.0 / (a3 + a3);
  v11 = 1.0 / (a3 * 4.0 * a3) + -1.0;
  v12 = sqrtf(sqrtf((v11 * v11) + 0.0));
  v13 = atan2f(0.0, v11);
  v14 = __sincosf_stret(v13 * 0.5);
  v15 = (v12 * v14.__cosval) + v10;
  v16 = v10 - (v12 * v14.__cosval);
  v17 = -(sqrt(sqrt(a4)) * a2);
  *&a4 = ((v12 * v14.__sinval) + 0.0) * v17;
  *&a2 = v16 * v17;
  v18 = (0.0 - (v12 * v14.__sinval)) * v17;
  v19 = (v16 * v17) + (v15 * v17);
  v20 = v18 + *&a4;
  v21 = expf(v15 * v17);
  v22 = v21 * cosf(*&a4);
  LODWORD(a4) = expf(*&a2);
  *this = -((*&a4 * cosf(v18)) + v22);
  LODWORD(a4) = expf(v19);
  result = (*&a4 * cosf(v20));
  *a5 = result;
  return result;
}

float DspLib::Biquad::Design::analogBell(DspLib::Biquad::Design *this, DSPComplex a2, double a3, double a4)
{
  v4 = (a2.real * a2.real) - (a2.imag * a2.imag);
  v5 = (a2.imag * a2.real) + (a2.real * a2.imag);
  v6 = a3 / a4;
  v7 = 1.0 / a4;
  return (((v5 + ((a2.imag * v6) + 0.0)) * (v5 + ((a2.imag * v7) + 0.0))) + ((v4 + ((a2.real * v6) + 1.0)) * (v4 + ((a2.real * v7) + 1.0)))) * (1.0 / (((v5 + ((a2.imag * v7) + 0.0)) * (v5 + ((a2.imag * v7) + 0.0))) + ((v4 + ((a2.real * v7) + 1.0)) * (v4 + ((a2.real * v7) + 1.0)))));
}

double DspLib::Biquad::Design::secondOrderFIRWithGains(DspLib::Biquad::Design *this, double a2, double a3, double a4, double *a5, double *a6, double *a7)
{
  v12 = a3 * -2.0 * a3 + a2 * a2 + (a4 + a4) * a4;
  v13 = sqrtf(sqrtf((v12 * v12) + 0.0));
  v14 = atan2f(0.0, v12);
  v16 = __sincosf_stret(v14 * 0.5);
  v17 = a2;
  v18 = v17 - (v13 * v16.__cosval);
  *v30 = v18;
  *&v30[1] = -(v13 * v16.__sinval);
  if (v12 < 0.0)
  {
    v18 = DspLib::abs(v30, v15);
  }

  v19 = (v18 * 0.5);
  *a5 = v19;
  v20 = a3 * 12.0 * a3 + a2 * -3.0 * a2 + a2 * -6.0 * v19 + v19 * -3.0 * v19;
  v21 = sqrtf(sqrtf((v20 * v20) + 0.0));
  v22 = atan2f(0.0, v20);
  v24 = __sincosf_stret(v22 * 0.5);
  v25 = (a2 - v19) * 3.0;
  v26 = v25 - (v24.__cosval * v21);
  *v29 = v26;
  *&v29[1] = -(v24.__sinval * v21);
  if (v20 < 0.0)
  {
    v26 = DspLib::abs(v29, v23);
  }

  v27 = (v26 / 6.0);
  *a6 = v27;
  result = a2 - *a5 - v27;
  *this = result;
  return result;
}

float DspLib::Biquad::Design::analogHighShelf(DspLib::Biquad::Design *this, DSPComplex a2, double a3, double a4)
{
  v4 = sqrt(a3);
  v5 = sqrt(v4) / a4;
  v6 = (a2.real * a2.real) - (a2.imag * a2.imag);
  v7 = (a2.imag * a2.real) + (a2.real * a2.imag);
  v8 = a2.real * v5;
  *&v4 = v4;
  return (((v7 + ((a2.imag * v5) + 0.0)) * (((v7 * *&v4) + ((a2.imag * v5) + 0.0)) * *&v4)) + ((((v6 * *&v4) + (v8 + 1.0)) * *&v4) * (v6 + (v8 + *&v4)))) * (1.0 / (((v7 + ((a2.imag * v5) + 0.0)) * (v7 + ((a2.imag * v5) + 0.0))) + ((v6 + (v8 + *&v4)) * (v6 + (v8 + *&v4)))));
}

float DspLib::Biquad::Design::analogHighPass(DspLib::Biquad::Design *this, DSPComplex a2, double a3)
{
  v3 = (a2.real * a2.real) - (a2.imag * a2.imag);
  v4 = (a2.imag * a2.real) + (a2.real * a2.imag);
  v5 = 1.0 / a3;
  return (((v4 + 0.0) * (v4 + ((a2.imag * v5) + 0.0))) + (v3 * (v3 + ((a2.real * v5) + 1.0)))) * (1.0 / (((v4 + ((a2.imag * v5) + 0.0)) * (v4 + ((a2.imag * v5) + 0.0))) + ((v3 + ((a2.real * v5) + 1.0)) * (v3 + ((a2.real * v5) + 1.0)))));
}

float DspLib::Biquad::Design::analogLowShelf(DspLib::Biquad::Design *this, DSPComplex a2, double a3, double a4)
{
  v4 = sqrt(a3);
  v5 = sqrt(v4) / a4;
  v6 = (a2.real * a2.real) - (a2.imag * a2.imag);
  v7 = (a2.imag * a2.real) + (a2.real * a2.imag);
  *&v4 = v4;
  v8 = (a2.imag * v5) + 0.0;
  return ((((v7 * *&v4) + v8) * ((v7 + v8) * *&v4)) + (((v6 + ((a2.real * v5) + *&v4)) * *&v4) * ((v6 * *&v4) + ((a2.real * v5) + 1.0)))) * (1.0 / ((((v7 * *&v4) + v8) * ((v7 * *&v4) + v8)) + (((v6 * *&v4) + ((a2.real * v5) + 1.0)) * ((v6 * *&v4) + ((a2.real * v5) + 1.0)))));
}

float DspLib::Biquad::Design::analogLowPass(DspLib::Biquad::Design *this, DSPComplex a2, double a3)
{
  v3 = (a2.real * a2.real) - (a2.imag * a2.imag);
  v4 = 1.0 / a3;
  return ((v3 + ((a2.real * v4) + 1.0)) + ((((a2.imag * a2.real) + (a2.real * a2.imag)) + ((a2.imag * v4) + 0.0)) * 0.0)) * (1.0 / (((((a2.imag * a2.real) + (a2.real * a2.imag)) + ((a2.imag * v4) + 0.0)) * (((a2.imag * a2.real) + (a2.real * a2.imag)) + ((a2.imag * v4) + 0.0))) + ((v3 + ((a2.real * v4) + 1.0)) * (v3 + ((a2.real * v4) + 1.0)))));
}

uint64_t std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<DspLib::Biquad::Section const*,DspLib::Biquad::Section const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBA55D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<DspLib::Biquad::Section>::__init_with_size[abi:ne200100]<std::__wrap_iter<DspLib::Biquad::Section const*>,std::__wrap_iter<DspLib::Biquad::Section const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DspLib::Biquad::Section>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBA5650(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<DspLib::Biquad::Section>::__insert_with_size[abi:ne200100]<std::__wrap_iter<DspLib::Biquad::Section*>,std::__wrap_iter<DspLib::Biquad::Section*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 2)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 2);
    if (v12 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 2);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x666666666666666)
    {
      v15 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      std::allocator<DspLib::Biquad::Section>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v34 = 4 * (v13 >> 2);
    v35 = 20 * a5;
    v36 = v34;
    do
    {
      v37 = *v7;
      *(v36 + 16) = *(v7 + 4);
      *v36 = v37;
      v36 += 20;
      v7 += 20;
      v35 -= 20;
    }

    while (v35);
    memcpy((v34 + 20 * a5), v5, *(a1 + 8) - v5);
    v38 = *a1;
    v39 = v34 + 20 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v40 = v5 - v38;
    v41 = (v34 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v34;
  }

  v16 = v10 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst) >> 2)) >= a5)
  {
    v29 = 5 * a5;
    v30 = &__dst[20 * a5];
    v31 = v10 - 20 * a5;
    v32 = *(a1 + 8);
    while (v31 < v10)
    {
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      v32 += 20;
      v31 += 20;
    }

    *(a1 + 8) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[20 * a5], __dst, v10 - v30);
    }

    v28 = 4 * v29;
    v26 = v5;
    v27 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[20 * a5];
    v21 = v10 + v18;
    if (&v19[-20 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -20 * a5];
      do
      {
        v24 = v22 - v7;
        v25 = *(v23 - v7);
        *(v24 + 16) = *(v23 - v7 + 16);
        *v24 = v25;
        v23 += 20;
        v22 += 20;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[20 * a5], v5, v19 - v20);
    }

    v26 = v5;
    v27 = v7;
    v28 = v10 - v5;
LABEL_28:
    memmove(v26, v27, v28);
  }

  return v5;
}

void DspLib::Biquad::ParametricFilter::~ParametricFilter(DspLib::Biquad::ParametricFilter *this)
{
  v3 = (this + 80);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  v3 = (this + 80);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<DspLib::Biquad::SDomainSection>::__init_with_size[abi:ne200100]<DspLib::Biquad::SDomainSection const*,DspLib::Biquad::SDomainSection const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<DspLib::Biquad::SDomainSection>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DDBA59B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DspLib::Biquad::SDomainSection>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<DspLib::Biquad::SDomainSection>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
}

uint64_t DspLib::Biquad::Design::bilinearTransformStoZUnwarped()
{
  v0 = basename("/Library/Caches/com.apple.xbs/Sources/AudioDSP_darwinOS/Source/AudioDSP/InternalAudioUnits/Effects/DspLib/Biquad/dsp/DspLibBiquadDesigns.cpp");
  result = printf("DSP Sound assertion in %s at line %d\n", v0, 55);
  ++DspLibDebug::mAssertCounter;
  return result;
}

DspLib::BassQueen::Algorithm *DspLib::BassQueen::Algorithm::Algorithm(DspLib::BassQueen::Algorithm *this)
{
  v2 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::BassQueen::Parameters::kDefault, 0x59uLL, &DspLib::BassQueen::Parameters::kMinimum, 89, &DspLib::BassQueen::Parameters::kMaximum, 89);
  *v2 = &unk_1F59195A0;
  memcpy(v2 + 30, &DspLib::BassQueen::Parameters::kMinimum, 0x164uLL);
  memcpy(this + 596, &DspLib::BassQueen::Parameters::kMaximum, 0x164uLL);
  *(this + 952) = 0;
  *(this + 120) = 0;
  *(this + 968) = 0u;
  *(this + 1080) = xmmword_1DE095C00;
  *(this + 1096) = unk_1DE095C10;
  *(this + 1112) = xmmword_1DE095C20;
  *(this + 1124) = *(&xmmword_1DE095C20 + 12);
  *(this + 1016) = xmmword_1DE095BC0;
  *(this + 1032) = unk_1DE095BD0;
  *(this + 1048) = xmmword_1DE095BE0;
  *(this + 1064) = unk_1DE095BF0;
  *(this + 984) = DspLib::LoudspeakerModel::Parameters::kDefault;
  *(this + 1000) = unk_1DE095BB0;
  *(this + 1236) = xmmword_1DE095C9C;
  *(this + 1252) = unk_1DE095CAC;
  *(this + 1268) = xmmword_1DE095CBC;
  *(this + 80) = *(&xmmword_1DE095CBC + 12);
  *(this + 1172) = xmmword_1DE095C5C;
  *(this + 1188) = unk_1DE095C6C;
  *(this + 1204) = xmmword_1DE095C7C;
  *(this + 1220) = unk_1DE095C8C;
  *(this + 1140) = DspLib::LoudspeakerModel::Parameters::kMinimum;
  *(this + 1156) = *algn_1DE095C4C;
  *(this + 87) = xmmword_1DE095D38;
  *(this + 88) = unk_1DE095D48;
  *(this + 89) = xmmword_1DE095D58;
  *(this + 1436) = *(&xmmword_1DE095D58 + 12);
  *(this + 83) = xmmword_1DE095CF8;
  *(this + 84) = unk_1DE095D08;
  *(this + 85) = xmmword_1DE095D18;
  *(this + 86) = unk_1DE095D28;
  *(this + 81) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(this + 82) = unk_1DE095CE8;
  *(this + 1452) = 1;
  *(this + 1464) = 0;
  *(this + 1544) = 0u;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 1592) = 0u;
  *(this + 204) = 0;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 94) = 0u;
  *(this + 95) = 0u;
  *(this + 1536) = 0;
  *(this + 205) = 1;
  *(this + 103) = 0u;
  *(this + 104) = 0u;
  *(this + 105) = 0u;
  *(this + 106) = 0u;
  *(this + 214) = 0;
  *(this + 430) = 1;
  *(this + 108) = 0u;
  *(this + 109) = 0u;
  *(this + 110) = 0u;
  *(this + 111) = 0u;
  *(this + 448) = 0;
  *(this + 231) = 0;
  *(this + 1832) = 0u;
  *(this + 227) = 0;
  *(this + 1800) = 0u;
  *(this + 1824) = 0;
  *(this + 122) = xmmword_1DE095C00;
  *(this + 123) = unk_1DE095C10;
  *(this + 124) = xmmword_1DE095C20;
  *(this + 1996) = *(&xmmword_1DE095C20 + 12);
  *(this + 118) = xmmword_1DE095BC0;
  *(this + 119) = unk_1DE095BD0;
  *(this + 120) = xmmword_1DE095BE0;
  *(this + 121) = unk_1DE095BF0;
  *(this + 116) = DspLib::LoudspeakerModel::Parameters::kDefault;
  *(this + 117) = unk_1DE095BB0;
  *(this + 2108) = xmmword_1DE095C9C;
  *(this + 2124) = unk_1DE095CAC;
  *(this + 2140) = xmmword_1DE095CBC;
  *(this + 2152) = *(&xmmword_1DE095CBC + 12);
  *(this + 2044) = xmmword_1DE095C5C;
  *(this + 2060) = unk_1DE095C6C;
  *(this + 2076) = xmmword_1DE095C7C;
  *(this + 2092) = unk_1DE095C8C;
  *(this + 2012) = DspLib::LoudspeakerModel::Parameters::kMinimum;
  *(this + 2028) = *algn_1DE095C4C;
  *(this + 2264) = xmmword_1DE095D38;
  *(this + 2280) = unk_1DE095D48;
  *(this + 2296) = xmmword_1DE095D58;
  *(this + 2308) = *(&xmmword_1DE095D58 + 12);
  *(this + 2200) = xmmword_1DE095CF8;
  *(this + 2216) = unk_1DE095D08;
  *(this + 2232) = xmmword_1DE095D18;
  *(this + 2248) = unk_1DE095D28;
  *(this + 2168) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(this + 2184) = unk_1DE095CE8;
  *(this + 2324) = 0;
  *(this + 2336) = 0;
  *(this + 151) = 0u;
  *(this + 152) = 0u;
  *(this + 153) = 0u;
  *(this + 154) = 0u;
  *(this + 313) = 0;
  *(this + 2344) = 0u;
  *(this + 2360) = 0u;
  *(this + 2376) = 0u;
  *(this + 2392) = 0u;
  *(this + 2408) = 0;
  *(this + 2512) = 0;
  *(this + 315) = 0;
  *(this + 158) = 0u;
  *(this + 159) = DspLib::LoudspeakerModel::Parameters::kDefault;
  *(this + 160) = unk_1DE095BB0;
  *(this + 164) = unk_1DE095BF0;
  *(this + 163) = xmmword_1DE095BE0;
  *(this + 162) = unk_1DE095BD0;
  *(this + 161) = xmmword_1DE095BC0;
  *(this + 2684) = *(&xmmword_1DE095C20 + 12);
  *(this + 167) = xmmword_1DE095C20;
  *(this + 166) = unk_1DE095C10;
  *(this + 165) = xmmword_1DE095C00;
  *(this + 2796) = xmmword_1DE095C9C;
  *(this + 2812) = unk_1DE095CAC;
  *(this + 2828) = xmmword_1DE095CBC;
  *(this + 2840) = *(&xmmword_1DE095CBC + 12);
  *(this + 2732) = xmmword_1DE095C5C;
  *(this + 2748) = unk_1DE095C6C;
  *(this + 2764) = xmmword_1DE095C7C;
  *(this + 2780) = unk_1DE095C8C;
  *(this + 2700) = DspLib::LoudspeakerModel::Parameters::kMinimum;
  *(this + 2716) = *algn_1DE095C4C;
  *(this + 2952) = xmmword_1DE095D38;
  *(this + 2968) = unk_1DE095D48;
  *(this + 2984) = xmmword_1DE095D58;
  *(this + 2996) = *(&xmmword_1DE095D58 + 12);
  *(this + 2888) = xmmword_1DE095CF8;
  *(this + 2904) = unk_1DE095D08;
  *(this + 2920) = xmmword_1DE095D18;
  *(this + 2936) = unk_1DE095D28;
  *(this + 2856) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(this + 2872) = unk_1DE095CE8;
  *(this + 3012) = 0;
  *(this + 3024) = 0;
  *(this + 194) = 0u;
  *(this + 195) = 0u;
  *(this + 196) = 0u;
  *(this + 197) = 0u;
  *(this + 399) = 0;
  *(this + 3032) = 0u;
  *(this + 3048) = 0u;
  *(this + 3064) = 0u;
  *(this + 3080) = 0u;
  *(this + 3096) = 0;
  *(this + 3200) = 0;
  *(this + 401) = 0;
  *(this + 201) = 0u;
  *(this + 202) = DspLib::LoudspeakerModel::Parameters::kDefault;
  *(this + 203) = unk_1DE095BB0;
  *(this + 207) = unk_1DE095BF0;
  *(this + 206) = xmmword_1DE095BE0;
  *(this + 205) = unk_1DE095BD0;
  *(this + 204) = xmmword_1DE095BC0;
  *(this + 3372) = *(&xmmword_1DE095C20 + 12);
  *(this + 210) = xmmword_1DE095C20;
  *(this + 209) = unk_1DE095C10;
  *(this + 208) = xmmword_1DE095C00;
  *(this + 3484) = xmmword_1DE095C9C;
  *(this + 3500) = unk_1DE095CAC;
  *(this + 3516) = xmmword_1DE095CBC;
  *(this + 3528) = *(&xmmword_1DE095CBC + 12);
  *(this + 3420) = xmmword_1DE095C5C;
  *(this + 3436) = unk_1DE095C6C;
  *(this + 3452) = xmmword_1DE095C7C;
  *(this + 3468) = unk_1DE095C8C;
  *(this + 3388) = DspLib::LoudspeakerModel::Parameters::kMinimum;
  *(this + 3404) = *algn_1DE095C4C;
  *(this + 3640) = xmmword_1DE095D38;
  *(this + 3656) = unk_1DE095D48;
  *(this + 3672) = xmmword_1DE095D58;
  *(this + 3684) = *(&xmmword_1DE095D58 + 12);
  *(this + 3576) = xmmword_1DE095CF8;
  *(this + 3592) = unk_1DE095D08;
  *(this + 3608) = xmmword_1DE095D18;
  *(this + 3624) = unk_1DE095D28;
  *(this + 3544) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(this + 3560) = unk_1DE095CE8;
  *(this + 3700) = 0;
  *(this + 3712) = 0;
  *(this + 237) = 0u;
  *(this + 238) = 0u;
  *(this + 239) = 0u;
  *(this + 240) = 0u;
  *(this + 485) = 0;
  *(this + 3720) = 0u;
  *(this + 3736) = 0u;
  *(this + 3752) = 0u;
  *(this + 3768) = 0u;
  *(this + 3784) = 0;
  *(this + 3888) = 0;
  *(this + 557) = 0;
  *(this + 279) = 0u;
  *(this + 4072) = 0;
  *(this + 4040) = 0u;
  *(this + 4056) = 0u;
  *(this + 4008) = 0u;
  *(this + 4024) = 0u;
  *(this + 3976) = 0u;
  *(this + 3992) = 0u;
  *(this + 4176) = 0;
  *(this + 260) = 0u;
  *(this + 259) = 0u;
  *(this + 258) = 0u;
  *(this + 257) = 0u;
  *(this + 256) = 0u;
  *(this + 255) = 0u;
  *(this + 4184) = 0u;
  *(this + 4200) = 0u;
  *(this + 4216) = 0u;
  *(this + 4232) = 0u;
  *(this + 4248) = 0u;
  *(this + 4264) = 0u;
  *(this + 4280) = 0;
  *(this + 268) = 0u;
  *(this + 269) = 0u;
  *(this + 270) = 0u;
  *(this + 271) = 0u;
  *(this + 272) = 0u;
  *(this + 273) = 0u;
  *(this + 4384) = 0;
  *(this + 4408) = 0u;
  *(this + 4424) = 0u;
  *(this + 4392) = 0u;
  *(this + 5112) = 0u;
  *(this + 641) = 0;
  *(this + 3896) = 0u;
  *(this + 3912) = 0u;
  *(this + 3928) = 0u;
  *(this + 3944) = 0u;
  *(this + 3953) = 0u;
  *(this + 4536) = 0;
  *(this + 4504) = 0u;
  *(this + 4520) = 0u;
  *(this + 4488) = 0u;
  *(this + 4640) = 0;
  *(this + 289) = 0u;
  *(this + 288) = 0u;
  *(this + 287) = 0u;
  *(this + 286) = 0u;
  *(this + 285) = 0u;
  *(this + 284) = 0u;
  *(this + 4801) = 0u;
  *(this + 4776) = 0u;
  *(this + 4792) = 0u;
  *(this + 4744) = 0u;
  *(this + 4760) = 0u;
  *(this + 4712) = 0u;
  *(this + 4728) = 0u;
  *(this + 4680) = 0u;
  *(this + 4696) = 0u;
  *(this + 4648) = 0u;
  *(this + 4664) = 0u;
  *(this + 5047) = 0;
  *(this + 5016) = 0u;
  *(this + 5032) = 0u;
  *(this + 4984) = 0u;
  *(this + 5000) = 0u;
  *(this + 4952) = 0u;
  *(this + 4968) = 0u;
  *(this + 4920) = 0u;
  *(this + 4936) = 0u;
  *(this + 4904) = 0u;
  DspLib::BassQueen::Algorithm::MeteringChain::MeteringChain((this + 5184));
  DspLib::BassQueen::Algorithm::MeteringChain::MeteringChain((this + 6096));
  *(this + 6) = 256;
  *(this + 1269) = 0;
  return this;
}

void sub_1DDBA5FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  DspLib::BassQueen::Algorithm::MeteringChain::~MeteringChain((v10 + 5184));
  v13 = *(v10 + v11);
  if (v13)
  {
    *(v10 + 5120) = v13;
    operator delete(v13);
  }

  v14 = *(v10 + 5024);
  if (v14)
  {
    *(v10 + 5032) = v14;
    operator delete(v14);
  }

  DspLib::BassQueen::FilterBankWeights::~FilterBankWeights((v10 + 4888));
  a10 = (v10 + 4792);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 4768);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 4744);
  std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&a10);
  DspLib::Biquad::ParametricFilter::~ParametricFilter((v10 + 4640));
  DspLib::Biquad::ParametricFilter::~ParametricFilter((v10 + 4536));
  DspLib::ConstantQFilterbank::Modifier::~Modifier((v10 + 3960));
  DspLib::Biquad::Filter::~Filter((v10 + 3888));
  DspLib::LoudspeakerModel::Algorithm::~Algorithm((v10 + 3200));
  DspLib::LoudspeakerModel::Algorithm::~Algorithm((v10 + 2512));
  DspLib::LoudspeakerModel::Algorithm::~Algorithm((v10 + 1824));
  DspLib::PolyPhaseInterpolator::~PolyPhaseInterpolator((v10 + 1720));
  DspLib::FIRDecimator::~FIRDecimator((v10 + 1640));
  DspLib::LoudspeakerModel::Algorithm::~Algorithm((v10 + 952));
  DspLib::AlgorithmBase::~AlgorithmBase(v10);
  _Unwind_Resume(a1);
}

void DspLib::LoudspeakerModel::Algorithm::~Algorithm(DspLib::LoudspeakerModel::Algorithm *this)
{
  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](this + 656);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 632));
  v2 = *(this + 76);
  if (v2)
  {
    *(this + 77) = v2;
    operator delete(v2);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((this + 560));
  v3 = *(this + 67);
  if (v3)
  {
    *(this + 68) = v3;
    operator delete(v3);
  }
}

uint64_t DspLib::BassQueen::Algorithm::initialize(DspLib::BassQueen::Algorithm *this, int a2, double a3)
{
  v4 = DspLib::AlgorithmBase::initialize(this, a2, a3);
  if (v4)
  {
    *(this + 8) = 1;
    v5 = (*(*this + 64))(this);
    std::vector<std::vector<float>>::resize(this + 211, v5);
    v6 = (*(*this + 64))(this);
    std::vector<std::vector<float>>::resize(this + 221, v6);
    v7 = (*(*this + 64))(this);
    DspLib::ConstantQFilterbank::Modifier::initialize((this + 3960), v7, *(this + 2));
    v8 = (*(*this + 64))(this);
    std::vector<DspLib::CircularDelay>::resize(this + 599, v8);
    v9 = (*(*this + 64))(this);
    std::vector<DspLib::CircularDelay>::resize(this + 596, v9);
    (*(*this + 160))(this);
    (*(*this + 168))(this);
  }

  return v4;
}

void DspLib::BassQueen::Algorithm::uninitialize(DspLib::BassQueen::Algorithm *this)
{
  *(this + 28) = *(this + 27);
  *(this + 8) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 1464));
  DspLib::Biquad::Filter::uninitialize((this + 1536));
  *(this + 952) = 0;
  std::vector<std::vector<float>>::resize(this + 211, 0);
  std::vector<std::vector<float>>::resize(this + 221, 0);
  DspLib::Biquad::Filter::uninitialize((this + 2336));
  DspLib::Biquad::Filter::uninitialize((this + 2408));
  *(this + 1824) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 3024));
  DspLib::Biquad::Filter::uninitialize((this + 3096));
  *(this + 2512) = 0;
  DspLib::Biquad::Filter::uninitialize((this + 3712));
  DspLib::Biquad::Filter::uninitialize((this + 3784));
  *(this + 3200) = 0;
  *(this + 640) = *(this + 639);
  std::vector<DspLib::Biquad::ParametricFilter>::clear[abi:ne200100](this + 613);
  *(this + 617) = *(this + 616);
  *(this + 620) = *(this + 619);
  *(this + 623) = *(this + 622);
  *(this + 626) = *(this + 625);
  DspLib::ConstantQFilterbank::Modifier::uninitialize((this + 3960));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 4536));
  DspLib::Biquad::ParametricFilter::uninitialize((this + 4640));
  *(this + 629) = *(this + 628);
  DspLib::Biquad::Filter::uninitialize((this + 3888));
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 593);
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 596);
  std::vector<AUSM::FloatVector>::clear[abi:ne200100](this + 599);
  DspLib::BassQueen::Algorithm::MeteringChain::uninitialize((this + 5184));

  DspLib::BassQueen::Algorithm::MeteringChain::uninitialize((this + 6096));
}

void DspLib::BassQueen::Algorithm::MeteringChain::uninitialize(DspLib::BassQueen::Algorithm::MeteringChain *this)
{
  DspLib::AudioMeter::Algorithm::uninitialize((this + 8));
  DspLib::Biquad::Filter::uninitialize((this + 712));
  DspLib::Biquad::Filter::uninitialize((this + 784));
  *(this + 200) = 0;
  *(this + 112) = *(this + 111);
}

void DspLib::BassQueen::Algorithm::reset(DspLib::BassQueen::Algorithm *this)
{
  v16[257] = *MEMORY[0x1E69E9840];
  DspLib::Biquad::SetupWrapper::reset((this + 1512));
  DspLib::Biquad::SetupWrapper::reset((this + 1584));
  DspLib::FIRDecimator::reset((this + 1640));
  v2 = *(this + 221);
  v3 = *(this + 222);
  while (v2 != v3)
  {
    v4 = *(v2 + 8);
    if (*v2 != v4)
    {
      bzero(*v2, v4 - *v2);
    }

    v2 += 24;
  }

  *(this + 448) = 0;
  DspLib::Biquad::SetupWrapper::reset((this + 2384));
  DspLib::Biquad::SetupWrapper::reset((this + 2456));
  DspLib::BassQueen::FilterBankWeights::reset((this + 4888));
  DspLib::ConstantQFilterbank::Modifier::reset((this + 3960));
  DspLib::Biquad::SetupWrapper::reset((this + 4584));
  DspLib::Biquad::SetupWrapper::reset((this + 4688));
  *(this + 303) = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 608) = _D0;
  *(this + 604) = 0;
  *(this + 609) = 0;
  *(this + 4877) = 0;
  *(this + 1290) = 0;
  DspLib::multiply(*(this + 616), (*(this + 617) - *(this + 616)) >> 2, v16, 0.0);
  DspLib::ConstantQFilterbank::Modifier::setGains(this + 3960);
  DspLib::Biquad::SetupWrapper::reset((this + 3936));
  v10 = *(this + 599);
  v11 = *(this + 600);
  while (v10 != v11)
  {
    DspLib::CircularDelay::reset(v10);
    v10 = (v10 + 32);
  }

  v12 = *(this + 593);
  v13 = *(this + 594);
  while (v12 != v13)
  {
    DspLib::CircularDelay::reset(v12);
    v12 = (v12 + 32);
  }

  v14 = *(this + 596);
  v15 = *(this + 597);
  while (v14 != v15)
  {
    DspLib::CircularDelay::reset(v14);
    v14 = (v14 + 32);
  }

  DspLib::BassQueen::Algorithm::MeteringChain::reset((this + 5184));
  DspLib::BassQueen::Algorithm::MeteringChain::reset((this + 6096));
  *(this + 646) = 0;
  *(this + 1294) = 0;
  *(this + 5164) = 0;
}

void DspLib::BassQueen::FilterBankWeights::reset(DspLib::BassQueen::FilterBankWeights *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    DspLib::Biquad::SetupWrapper::reset((v2 + 48));
    v2 += 104;
  }

  v4 = *(this + 8);
  v5 = (*(this + 9) - v4) >> 2;

  DspLib::clear(v4, v5);
}

void DspLib::BassQueen::Algorithm::MeteringChain::reset(DspLib::BassQueen::Algorithm::MeteringChain *this)
{
  DspLib::AudioMeter::Algorithm::reset((this + 8));
  DspLib::Biquad::SetupWrapper::reset((this + 760));
  DspLib::Biquad::SetupWrapper::reset((this + 832));
  v2 = *(this + 111);
  v3 = (*(this + 112) - v2) >> 2;

  DspLib::clear(v2, v3);
}

double DspLib::BassQueen::Algorithm::latencySamples(DspLib::BassQueen::Algorithm *this, double a2)
{
  if (*(this + 8))
  {
    LODWORD(a2) = *(this + 1267);
    return *&a2;
  }

  else
  {
    DspLib::BassQueen::Algorithm::latencySamples();
    return 0.0;
  }
}

void DspLib::BassQueen::Algorithm::setMeteringIsEnabled(DspLib::BassQueen::Algorithm *this, int a2)
{
  v2 = a2;
  if ((*(*this + 208))(this) != a2)
  {
    *(this + 96) = v2;
    if ((*(*this + 208))(this))
    {
      v4 = (*(*this + 64))(this);
      v5 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 5192), v4, v5);
      DspLib::LoudspeakerModel::Algorithm::initialize((this + 5384), v4, v5);
      v6 = (*(*this + 64))(this);
      v7 = (*(*this + 48))(this);
      DspLib::AudioMeter::Algorithm::initialize((this + 6104), v6, v7);
      DspLib::LoudspeakerModel::Algorithm::initialize((this + 6296), v6, v7);
      v8 = *(*this + 160);

      v8(this);
    }

    else
    {
      DspLib::BassQueen::Algorithm::MeteringChain::uninitialize((this + 5184));

      DspLib::BassQueen::Algorithm::MeteringChain::uninitialize((this + 6096));
    }
  }
}

uint64_t DspLib::BassQueen::Algorithm::setParameter(DspLib::BassQueen::Algorithm *this, uint64_t a2, float a3)
{
  if ((a2 - 31) > 1)
  {
    *(*(this + 3) + 4 * a2) = a3;
    v10 = *(*this + 160);

    return v10();
  }

  else
  {
    result = (*(*this + 112))(this, a2);
    if (v8 >= a3)
    {
      v8 = a3;
    }

    if (v7 <= a3)
    {
      v7 = v8;
    }

    v9 = *(this + 3);
    *(v9 + 4 * a2) = v7;
    *(this + 1285) = 100.0 / *(v9 + 124);
    *(this + 1286) = 100.0 / *(v9 + 128);
  }

  return result;
}

void DspLib::BassQueen::Algorithm::setParameters(uint64_t a1, void *a2, uint64_t a3)
{
  DspLib::BassQueen::Parameters::setBoundaries(a2, a3, a1 + 240, 89, a1 + 596);
  DspLib::AlgorithmBase::setParameters(a1, a2, a3, v6);
  if ((*(*a1 + 40))(a1))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    *(a1 + 5048) = *v7 >= 0.5;
    *(a1 + 5049) = v7[22] >= 0.5;
    *(a1 + 5050) = v7[23] >= 0.5;
    *(a1 + 5051) = vcvtas_u32_f32(v7[1]) > 6;
    *(a1 + 5152) = DspLib::BassQueen::Algorithm::findZerodBFrequency(a1, v7, 10.0, 10000.0, 10.0, (v8 - v7) >> 2, 0);
    *(a1 + 5156) = DspLib::BassQueen::Algorithm::findZerodBFrequency(a1, *(a1 + 24), 10.0, 10000.0, 10000.0, (*(a1 + 32) - *(a1 + 24)) >> 2, 1);
    isEqual = DspLib::isEqual(v9, *(a1 + 5152), 10000.0, 1.0e-20);
    if (isEqual & 1) != 0 || (isEqual = DspLib::isEqual(isEqual, *(a1 + 5156), 10.0, 1.0e-20), (isEqual))
    {
      *(a1 + 5152) = vdup_n_s32(0x42C80000u);
      v11 = 600.0;
    }

    else
    {
      v11 = *(a1 + 5156) * 6.0;
    }

    v12 = 20000.0;
    if (v11 <= 20000.0)
    {
      v12 = v11;
    }

    if (v11 < 1000.0)
    {
      v12 = 1000.0;
    }

    v13 = *(a1 + 16);
    v14 = (v13 / v12 * 0.5);
    if (v14 >= 0x20)
    {
      v15 = 32;
    }

    else
    {
      v15 = (v13 / v12 * 0.5);
    }

    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = *(a1 + 5076);
    *(a1 + 5076) = v16;
    if (v16 != v17)
    {
      v18 = v13 / v16;
      *(a1 + 5088) = v18;
      *(a1 + 5096) = v18 / (0x100u / v16);
      __p = 0;
      v71 = 0;
      v72 = 0;
      *(a1 + 5136) = DspLib::BassQueen::Algorithm::makeSRCCoefficients(a1, &__p);
      v19 = *(a1 + 5076);
      v20 = (*(*a1 + 232))(a1);
      DspLib::FIRDecimator::setSrcParameters((a1 + 1640), v19, v20);
      DspLib::FIRDecimator::setCoefficients((a1 + 1640), __p, (v71 - __p) >> 2);
      DspLib::multiply(__p, (v71 - __p) >> 2, *(a1 + 5076));
      LODWORD(v19) = *(a1 + 5076);
      v21 = (*(*a1 + 232))(a1);
      DspLib::PolyPhaseInterpolator::setSrcParameters((a1 + 1720), v19, v21 / *(a1 + 5076) + 1);
      DspLib::PolyPhaseInterpolator::setCoefficients((a1 + 1720), __p, (v71 - __p) >> 2);
      v22 = (*(*a1 + 232))(a1);
      LODWORD(v23) = *(a1 + 5076);
      LODWORD(v24) = vcvtpd_u64_f64(v22 / v23);
      *(a1 + 5080) = v24;
      *(a1 + 4896) = *(a1 + 5088);
      std::vector<float>::resize((a1 + 4976), v24);
      DspLib::ConstantQFilterbank::Modifier::setMaxFrameSize((a1 + 3960), *(a1 + 5080));
      v25 = (*(*a1 + 64))(a1);
      DspLib::LoudspeakerModel::Algorithm::initialize((a1 + 1824), v25, *(a1 + 5088));
      v26 = (*(*a1 + 64))(a1);
      DspLib::LoudspeakerModel::Algorithm::initialize((a1 + 2512), v26, *(a1 + 5088));
      v27 = (*(*a1 + 64))(a1);
      DspLib::LoudspeakerModel::Algorithm::initialize((a1 + 3200), v27, *(a1 + 5088));
      DspLib::ConstantQFilterbank::Modifier::setSampleRate((a1 + 3960), vcvtad_u64_f64(*(a1 + 5088)));
      isEqual = __p;
      if (__p)
      {
        v71 = __p;
        operator delete(__p);
      }
    }

    *(a1 + 5052) = DspLib::dB2Amp(isEqual, *(*(a1 + 24) + 8));
    *(a1 + 5060) = DspLib::dB2Amp(v28, *(*(a1 + 24) + 96));
    v30 = DspLib::isEqual(v29, *(*(a1 + 24) + 8), 0.0, 1.0e-20);
    *(a1 + 5056) = !v30;
    *(a1 + 5064) = !DspLib::isEqual(v30, *(*(a1 + 24) + 96), 0.0, 1.0e-20);
    v31 = *(a1 + 24);
    *(a1 + 5140) = 100.0 / v31[31];
    *(a1 + 5144) = 100.0 / v31[32];
    DspLib::LoudspeakerModel::Algorithm::setParameters(a1 + 1824, v31 + 50, 39);
    DspLib::LoudspeakerModel::Algorithm::setParameters(a1 + 2512, v31 + 50, 39);
    DspLib::LoudspeakerModel::Algorithm::setParameters(a1 + 3200, v31 + 50, 39);
    if ((*(*a1 + 208))(a1))
    {
      v32 = (a1 + 1824);
    }

    else
    {
      v32 = 0;
    }

    DspLib::BassQueen::Algorithm::MeteringChain::setParameters((a1 + 5184), v32);
    if ((*(*a1 + 208))(a1))
    {
      v33 = (a1 + 1824);
    }

    else
    {
      v33 = 0;
    }

    DspLib::BassQueen::Algorithm::MeteringChain::setParameters((a1 + 6096), v33);
    if (*(a1 + 5049) == 1)
    {
      DspLib::LoudspeakerModel::Algorithm::setParameters(a1 + 952, v31 + 50, 39);
      v34 = (*(*a1 + 64))(a1);
      DspLib::LoudspeakerModel::Algorithm::initialize((a1 + 952), v34, *(a1 + 16));
    }

    else
    {
      DspLib::Biquad::Filter::uninitialize((a1 + 1464));
      DspLib::Biquad::Filter::uninitialize((a1 + 1536));
      *(a1 + 952) = 0;
    }

    v35 = vcvtpd_u64_f64(logf(*(a1 + 5156) / *(a1 + 5152)) / (*(*(a1 + 24) + 40) * 0.693147181) + 1.0);
    if (v35 >= 0x14)
    {
      v36 = 20;
    }

    else
    {
      v36 = v35;
    }

    std::vector<float>::resize((a1 + 5112), v36);
    v37 = *(a1 + 5112);
    v38 = (*(a1 + 5120) - v37) >> 2;
    v39 = *(a1 + 5152);
    if (v35 < 2)
    {
      DspLib::fill(v37, v38, v39);
    }

    else
    {
      DspLib::ramp(v37, v38, 1, v39, *(a1 + 5156));
    }

    DspLib::ChannelBuffer::ChannelBuffer(&__p, 0, 0);
    DspLib::LoudspeakerModel::Algorithm::frequencyResponse(a1 + 1824, *(a1 + 5112), (*(a1 + 5120) - *(a1 + 5112)) >> 2, &__p);
    v40 = __p;
    if (0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 3) > 1)
    {
      DspLib::vmax(*__p, (*(__p + 1) - *__p) >> 2, *(__p + 3));
      v40 = __p;
    }

    DspLib::BassQueen::FilterBankWeights::setParameters(a1 + 4888, *(a1 + 5112), (*(a1 + 5120) - *(a1 + 5112)) >> 2, *v40, *(*(a1 + 24) + 48), *(*(a1 + 24) + 52));
    v42 = *(a1 + 24);
    if (v42[15] >= 0.5)
    {
      LODWORD(v41) = vcvtas_u32_f32(v42[17]);
      v43 = *(a1 + 5088);
      DspLib::Biquad::Design::butterworthHighPass(v41, v42[16], v43, 0, &v68);
      if (*(a1 + 3888) != 1 || (v44 = v68, v45 = 0xCCCCCCCCCCCCCCCDLL * ((v69 - v68) >> 2), *(a1 + 3944) != v45))
      {
        v46 = (*(*a1 + 64))(a1);
        DspLib::Biquad::Filter::initialize((a1 + 3888), v46, 0xCCCCCCCCCCCCCCCDLL * ((v69 - v68) >> 2));
        v44 = v68;
        v45 = 0xCCCCCCCCCCCCCCCDLL * ((v69 - v68) >> 2);
      }

      DspLib::Biquad::Filter::setCoefficients(a1 + 3888, v44, v45, 0, 0x41uLL);
      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }
    }

    else
    {
      DspLib::Biquad::Filter::uninitialize((a1 + 3888));
    }

    v54 = *(a1 + 5112);
    v47 = *(a1 + 5120);
    v48 = *(*(a1 + 24) + 44);
    v49 = (*(*a1 + 208))(a1);
    DspLib::ConstantQFilterbank::Modifier::setParameters(a1 + 3960, v54, (v47 - v54) >> 2, v49, *(*(a1 + 24) + 112) >= 0.5, v48);
    DspLib::Biquad::ParametricFilter::initialize((a1 + 4536), *(a1 + 4016), *(a1 + 4040), *(a1 + 4024));
    DspLib::Biquad::ParametricFilter::initialize((a1 + 4640), *(a1 + 4016), *(a1 + 4040), *(a1 + 4024));
    v50 = *(a1 + 24);
    v51 = *(v50 + 76);
    *(a1 + 4824) = *(v50 + 80);
    *(a1 + 4844) = v51;
    *(a1 + 4828) = -1056245401;
    *(a1 + 4816) = 1;
    std::vector<float>::resize((a1 + 5024), (*(a1 + 4936) - *(a1 + 4928)) >> 2);
    v52 = *(a1 + 24);
    v53 = *(a1 + 5088);
    LODWORD(v54) = vcvtad_u64_f64(v53 * (*(v52 + 28) / 1000.0));
    v55 = v54;
    if (*(a1 + 5051) == 1)
    {
      v55 = vcvtad_u64_f64(v53 * (*(v52 + 24) / 1000.0));
    }

    *(a1 + 5072) = v55;
    v56 = (*(*a1 + 64))(a1);
    std::vector<DspLib::CircularDelay>::resize((a1 + 4744), v56);
    v57 = *(a1 + 4744);
    v58 = *(a1 + 4752);
    if (v57 != v58)
    {
      v59 = (*(a1 + 5080) + *(a1 + 5072));
      do
      {
        DspLib::CircularDelay::setLength(v57, v59);
        v57 = (v57 + 32);
      }

      while (v57 != v58);
    }

    LODWORD(v57) = vcvtas_u32_f32((*(a1 + 5076) * v54) + (*(a1 + 5136) * 2.0));
    *(a1 + 5068) = v57;
    v60 = *(a1 + 4792);
    v61 = *(a1 + 4800);
    while (v60 != v61)
    {
      DspLib::CircularDelay::setLength(v60, v57);
      v60 = (v60 + 32);
    }

    v62 = *(a1 + 4768);
    v63 = *(a1 + 4776);
    while (v62 != v63)
    {
      DspLib::CircularDelay::setLength(v62, v54);
      v62 = (v62 + 32);
    }

    v64 = *(*(a1 + 24) + 108);
    v65 = *(a1 + 16);
    v66 = v65 / (*(*a1 + 232))(a1);
    *(a1 + 5148) = 1.0 - expf(-1.0 / ((v64 * v66) / 1000.0));
    v67 = *(a1 + 24);
    *(a1 + 5104) = (*(v67 + 72) / 200.0) + 1.0;
    *(a1 + 5108) = 1.0 - (*(v67 + 72) / 200.0);
    DspLib::ChannelBuffer::~ChannelBuffer(&__p);
  }
}

float DspLib::BassQueen::Algorithm::findZerodBFrequency(uint64_t a1, uint64_t a2, float a3, float a4, float a5, uint64_t a6, int a7)
{
  v80[4] = *MEMORY[0x1E69E9840];
  v26 = a5;
  std::vector<float>::vector[abi:ne200100](&v24, 1uLL);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<float>::resize(&v21, (v25 - v24) >> 2);
  v54[0] = 0;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v64 = xmmword_1DE095C00;
  v65 = unk_1DE095C10;
  memset(v66, 0, sizeof(v66));
  v60 = xmmword_1DE095BC0;
  v61 = unk_1DE095BD0;
  v62 = xmmword_1DE095BE0;
  v63 = unk_1DE095BF0;
  v58 = DspLib::LoudspeakerModel::Parameters::kDefault;
  v59 = unk_1DE095BB0;
  memset(v72, 0, 76);
  v69 = xmmword_1DE095C5C;
  v70 = unk_1DE095C6C;
  v71 = xmmword_1DE095C7C;
  v67 = DspLib::LoudspeakerModel::Parameters::kMinimum;
  v68 = *algn_1DE095C4C;
  *(&v72[21] + 4) = xmmword_1DE095D38;
  *(&v72[23] + 4) = unk_1DE095D48;
  memset(&v72[25] + 4, 0, 28);
  *(&v72[13] + 4) = xmmword_1DE095CF8;
  *(&v72[15] + 4) = unk_1DE095D08;
  *(&v72[17] + 4) = xmmword_1DE095D18;
  *(&v72[19] + 4) = unk_1DE095D28;
  *(&v72[9] + 4) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(&v72[11] + 4) = unk_1DE095CE8;
  v72[29] = 0;
  v73 = 0;
  v77 = 0u;
  v78 = 0u;
  memset(v79, 0, sizeof(v79));
  v80[3] = 0;
  v74 = 0u;
  v75 = 0u;
  memset(v76, 0, 33);
  v27[0] = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v37 = xmmword_1DE095C00;
  v38 = unk_1DE095C10;
  memset(v39, 0, sizeof(v39));
  v33 = xmmword_1DE095BC0;
  v34 = unk_1DE095BD0;
  v35 = xmmword_1DE095BE0;
  v36 = unk_1DE095BF0;
  v31 = DspLib::LoudspeakerModel::Parameters::kDefault;
  v32 = unk_1DE095BB0;
  memset(v45, 0, 76);
  v42 = xmmword_1DE095C5C;
  v43 = unk_1DE095C6C;
  v44 = xmmword_1DE095C7C;
  v40 = DspLib::LoudspeakerModel::Parameters::kMinimum;
  v41 = *algn_1DE095C4C;
  *(&v45[21] + 4) = xmmword_1DE095D38;
  *(&v45[23] + 4) = unk_1DE095D48;
  memset(&v45[25] + 4, 0, 28);
  *(&v45[13] + 4) = xmmword_1DE095CF8;
  *(&v45[15] + 4) = unk_1DE095D08;
  *(&v45[17] + 4) = xmmword_1DE095D18;
  *(&v45[19] + 4) = unk_1DE095D28;
  *(&v45[9] + 4) = DspLib::LoudspeakerModel::Parameters::kMaximum;
  *(&v45[11] + 4) = unk_1DE095CE8;
  v45[29] = 1;
  v46 = 0;
  v50 = 0u;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v53[3] = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, 33);
  memset(v20, 0, sizeof(v20));
  if (a7)
  {
    v12 = 0.7;
  }

  else
  {
    v12 = 1.4286;
  }

  DspLib::LoudspeakerModel::Algorithm::setParameters(v54, (a2 + 200), 39);
  DspLib::LoudspeakerModel::Algorithm::initialize(v54, 1, 48000.0);
  if (*(a2 + 88) >= 0.5)
  {
    DspLib::LoudspeakerModel::Algorithm::setParameters(v27, (a2 + 200), 39);
    DspLib::LoudspeakerModel::Algorithm::initialize(v27, 1, 48000.0);
  }

  v13 = 0;
  v14 = 0;
  v15 = v24;
  v16 = v21;
  while (1)
  {
    DspLib::BassQueen::Algorithm::totalStaticFrequencyResponse(a1, v15, (v25 - v15) >> 2, v16, 48000.0);
    DspLib::add(v21, (v22 - v21) >> 2, *(*(a1 + 24) + 12));
    v16 = v21;
    v17 = *v21;
    if (*v21 < 0.0 && fabsf(v17) < 0.1 || !v13 && v17 > 0.0)
    {
LABEL_16:
      a3 = *v24;
      goto LABEL_19;
    }

    if (v14 != v17 > 0.0)
    {
      v12 = sqrtf(1.0 / v12);
      v14 = v17 > 0.0;
    }

    v15 = v24;
    v18 = v12 * *v24;
    *v24 = v18;
    if (v18 < a3)
    {
      *v15 = a3;
      goto LABEL_19;
    }

    if (v18 > a4)
    {
      break;
    }

    if (--v13 == -100)
    {
      goto LABEL_16;
    }
  }

  *v15 = a4;
  a3 = a4;
LABEL_19:
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup((v20 + 8));
  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](v53);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v52[8]);
  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v49[8]);
  if (v48)
  {
    *(&v48 + 1) = v48;
    operator delete(v48);
  }

  std::__function::__value_func<void ()(DspLib::MultiSpan<float const>,DspLib::MultiSpan<float>)>::~__value_func[abi:ne200100](v80);
  DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v79[8]);
  if (v78)
  {
    *(&v78 + 1) = v78;
    operator delete(v78);
  }

  DspLib::Biquad::SetupWrapper::destroyvDSPSetup(&v76[8]);
  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return a3;
}

void sub_1DDBA7A40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

float DspLib::BassQueen::Algorithm::makeSRCCoefficients(uint64_t a1, uint64_t *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  std::vector<float>::resize(a2, (10 * *(a1 + 5076)) | 1u);
  v4 = *a2;
  v5 = (a2[1] - *a2) >> 2;
  v6 = *(a1 + 5076);
  v9[0] = &unk_1F59193D0;
  v9[1] = DspLib::makeChebychevWindow;
  v9[3] = v9;
  SincWindow = DspLib::makeSincWindow(v4, v5, v6, 0xAu, v9, 0.6);
  std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](v9);
  return SincWindow;
}

void sub_1DDBA7B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::span<float,18446744073709551615ul>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void DspLib::BassQueen::Algorithm::MeteringChain::setParameters(DspLib::BassQueen::Algorithm::MeteringChain *this, const DspLib::LoudspeakerModel::Algorithm *a2)
{
  if (a2 && (*(a2 + 512) & 1) != 0)
  {
    DspLib::LoudspeakerModel::Algorithm::setParameters(this + 200, a2 + 8, 39);
    v4 = *(a2 + 2) / *(a2 + 1);

    std::vector<float>::resize(this + 111, v4);
  }

  else
  {
    *(this + 112) = *(this + 111);
  }
}

void DspLib::BassQueen::FilterBankWeights::setParameters(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, float a5, float a6)
{
  *a1 = a6;
  std::vector<float>::resize((a1 + 40), a3);
  std::vector<float>::resize((a1 + 64), a3);
  std::vector<float>::resize((a1 + 112), a3);
  v11 = *(a1 + 112);
  v12 = (*(a1 + 120) - v11) >> 2;
  v14 = DspLib::dB2Power(v13, -20.0);
  DspLib::fill(v11, v12, v14);
  v15 = *(a1 + 8);

  DspLib::ConstantQFilterbank::Analyzer::setParameters((a1 + 16), a2, a3, a4, a5, v15);
}

float DspLib::BassQueen::Algorithm::computeMaxExcursion(float *a1, void *a2, uint64_t a3)
{
  if (!(*(*a1 + 64))(a1))
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = a1[1285];
    (*(*a1 + 64))(a1);
    v9 = v8 * DspLib::maxMagnitude(*(*a2 + 8 * v6), a2[2]);
    if (v7 < v9)
    {
      v7 = v9;
    }

    if (a3 == 2)
    {
      v10 = a1[1286];
      v11 = (*(*a1 + 64))(a1);
      v12 = v10 * DspLib::maxMagnitude(*(*a2 + 8 * (v6 + v11)), a2[2]);
      if (v7 < v12)
      {
        v7 = v12;
      }
    }

    ++v6;
  }

  while (v6 < (*(*a1 + 64))(a1));
  return v7;
}

void DspLib::BassQueen::Algorithm::processBlock(uint64_t a1, uint64_t *a2)
{
  v138 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 2336) & 1) == 0)
  {
    *v137 = *a2;
    *&v137[16] = a2[2];
    DspLib::clear(v137);
    return;
  }

  v2 = a2[2];
  if (!v2)
  {
    return;
  }

  v4 = (a1 + 4096);
  v5 = *(a1 + 5048);
  v6 = a2[2];
  v128 = a2;
  v122 = v2;
  if ((v5 & 1) == 0)
  {
    v6 = v2;
    if (*(a1 + 5056) == 1)
    {
      *v137 = *a2;
      *&v137[16] = a2[2];
      DspLib::multiply(v137, *(a1 + 5052));
      a2 = v128;
      v6 = v128[2];
    }

    if (v4[953] == 1)
    {
      v7 = a2[1];
      v8 = a2[2];
      *v137 = *a2;
      *&v137[8] = v7;
      *&v137[16] = v6;
      *v136 = *a2;
      *&v136[16] = v8;
      DspLib::LoudspeakerModel::Algorithm::process(a1 + 952, v137, v136);
      a2 = v128;
      v6 = v128[2];
    }
  }

  v129 = v4;
  v9 = *a2;
  v10 = a2[1];
  if ((*(*a1 + 208))(a1))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    *v137 = v9;
    *&v137[8] = v10;
    *&v137[16] = v6;
    DspLib::BassQueen::Algorithm::MeteringChain::process(a1 + 5184, v137);
    v11 = DspLib::CPUMeasure::resume((a1 + 104));
  }

  v12 = v129;
  if (v129[952])
  {
    i = 0;
    goto LABEL_107;
  }

  if (v129[954] == 1)
  {
    v14 = *(a1 + 5080);
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    if ((*(*a1 + 64))(a1, v11) == 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = 4 * (((v15 - 1) >> 2) + 1);
    }

    v17 = (*(*a1 + 64))(a1);
    v119 = &v119;
    MEMORY[0x1EEE9AC00](v17);
    v19 = &v119 - v18;
    v20 = (*(*a1 + 64))(a1);
    MEMORY[0x1EEE9AC00](v20);
    v23 = &v119 - v22;
    if (v21 >= 0x200)
    {
      v24 = 512;
    }

    else
    {
      v24 = v21;
    }

    bzero(&v119 - v22, v24);
    if ((*(*a1 + 64))(a1))
    {
      v25 = 0;
      v26 = 4 * v16;
      do
      {
        *&v23[8 * v25++] = v19;
        v19 += v26;
      }

      while (v25 < (*(*a1 + 64))(a1));
    }

    v27 = (*(*a1 + 64))(a1);
    v28 = *(a1 + 5080);
    *v133 = v23;
    *&v133[8] = v27;
    *&v133[16] = v28;
    *v137 = *v128;
    *&v137[8] = *(v128 + 1);
    DspLib::FIRDecimator::process((a1 + 1640), v137, v133);
    *v137 = *v133;
    v132 = *&v133[16];
    *&v137[16] = *&v133[16];
    DspLib::BassQueen::FilterBankWeights::compute(a1 + 4888, v137);
    v29 = *(a1 + 5072);
    if ((v129[955] & 1) == 0)
    {
      v29 = (*(a1 + 5080) + v29) - v132;
    }

    *v137 = *v133;
    *&v137[8] = *&v133[8];
    DspLib::MultiChannelCircularDelay::write((a1 + 4744), v137);
    v30 = v132;
    if (v132 <= 1)
    {
      v30 = 1;
    }

    v121 = v30;
    v31 = (*(*a1 + 64))(a1);
    v120 = ((v121 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    if (v31 == 1)
    {
      v32 = v121;
    }

    else
    {
      v32 = ((v121 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    }

    v33 = (*(*a1 + 64))(a1);
    MEMORY[0x1EEE9AC00](v33);
    v35 = &v119 - v34;
    v36 = (*(*a1 + 64))(a1);
    MEMORY[0x1EEE9AC00](v36);
    if (v37 >= 0x200)
    {
      v39 = 512;
    }

    else
    {
      v39 = v37;
    }

    v131 = &v119 - v38;
    bzero(&v119 - v38, v39);
    if ((*(*a1 + 64))(a1))
    {
      v40 = 0;
      v41 = 4 * v32;
      do
      {
        *&v131[8 * v40++] = v35;
        v35 += v41;
      }

      while (v40 < (*(*a1 + 64))(a1));
    }

    v42 = (*(*a1 + 64))(a1);
    v43 = *(a1 + 5072);
    *v137 = v131;
    *&v137[8] = v42;
    v124 = v42;
    *&v137[16] = v132;
    DspLib::MultiChannelCircularDelay::read((a1 + 4744), v132 + v43, v137);
    if (v29 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v29;
    }

    if ((*(*a1 + 64))(a1) == 1)
    {
      v45 = v44;
    }

    else
    {
      v45 = ((v44 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    }

    v46 = (*(*a1 + 64))(a1);
    MEMORY[0x1EEE9AC00](v46);
    v48 = &v119 - v47;
    v49 = (*(*a1 + 64))(a1);
    MEMORY[0x1EEE9AC00](v49);
    if (v50 >= 0x200)
    {
      v52 = 512;
    }

    else
    {
      v52 = v50;
    }

    v130 = &v119 - v51;
    bzero(&v119 - v51, v52);
    if ((*(*a1 + 64))(a1))
    {
      v53 = 0;
      v54 = 4 * v45;
      do
      {
        *&v130[8 * v53++] = v48;
        v48 += v54;
      }

      while (v53 < (*(*a1 + 64))(a1));
    }

    v55 = (*(*a1 + 64))(a1);
    v56 = *(a1 + 5072);
    *v137 = v130;
    *&v137[8] = v55;
    v123 = v55;
    *&v137[16] = v29;
    DspLib::MultiChannelCircularDelay::read((a1 + 4744), v56, v137);
    v127 = (a1 + 4536);
    DspLib::Biquad::Filter::copyStatesFrom((a1 + 4536), (a1 + 3968));
    DspLib::LoudspeakerModel::Algorithm::copyStatesFrom((a1 + 2512), (a1 + 1824));
    v57 = v132;
    if (v132 <= v29)
    {
      v57 = v29;
    }

    if (v57 <= 1)
    {
      v57 = 1;
    }

    v126 = v57;
    v125 = ((v57 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    for (i = 1; i != 30; ++i)
    {
      v58 = *(a1 + 1840);
      v59 = v58 / (*(*a1 + 64))(a1);
      if (v59 * (*(*a1 + 64))(a1) == 1)
      {
        v60 = v126;
      }

      else
      {
        v60 = v125;
      }

      v61 = (*(*a1 + 64))(a1);
      MEMORY[0x1EEE9AC00](v61);
      v63 = &v119 - v62;
      v64 = (*(*a1 + 64))(a1);
      MEMORY[0x1EEE9AC00](v64);
      v67 = &v119 - v66;
      if (v65 >= 0x200)
      {
        v68 = 512;
      }

      else
      {
        v68 = v65;
      }

      bzero(&v119 - v66, v68);
      if (v59 * (*(*a1 + 64))(a1))
      {
        v69 = 0;
        v70 = 1;
        do
        {
          *&v67[8 * v69] = &v63[4 * v69 * v60];
          v71 = (*(*a1 + 64))(a1);
          v69 = v70++;
        }

        while (v59 * v71 > v69);
      }

      v72 = (*(*a1 + 64))(a1);
      v73 = (*(*a1 + 64))(a1);
      *v137 = v131;
      *&v137[8] = v124;
      v74 = v73;
      *&v137[16] = v132;
      *v136 = v67;
      *&v136[8] = v73;
      *&v136[16] = v132;
      DspLib::Biquad::Filter::process((a1 + 3968), v137, v136);
      *v137 = v67;
      *&v137[8] = v74;
      v75 = v59 * v72;
      *&v137[16] = v132;
      *v136 = v67;
      *&v136[8] = v75;
      *&v136[16] = v132;
      DspLib::LoudspeakerModel::Algorithm::process(a1 + 1824, v137, v136);
      *v137 = v67;
      *&v137[8] = v75;
      *&v137[16] = v132;
      v76 = DspLib::BassQueen::Algorithm::computeMaxExcursion(a1, v137, v59);
      DspLib::Biquad::Filter::copyStatesFrom((a1 + 4640), (a1 + 3968));
      DspLib::LoudspeakerModel::Algorithm::copyStatesFrom((a1 + 3200), (a1 + 1824));
      *v137 = v130;
      *&v137[8] = v123;
      *&v137[16] = v29;
      *v136 = v67;
      *&v136[8] = v74;
      *&v136[16] = v29;
      DspLib::Biquad::Filter::process((a1 + 3968), v137, v136);
      *v137 = v67;
      *&v137[8] = v74;
      *&v137[16] = v29;
      *v136 = v67;
      *&v136[8] = v75;
      *&v136[16] = v29;
      DspLib::LoudspeakerModel::Algorithm::process(a1 + 1824, v137, v136);
      *v137 = v67;
      *&v137[8] = v75;
      *&v137[16] = v29;
      v78 = DspLib::BassQueen::Algorithm::computeMaxExcursion(a1, v137, v59);
      if (v76 < v78)
      {
        v76 = v78;
      }

      v79 = !DspLib::isEqual(v77, *(a1 + 4832), 0.0, 1.0e-20) && v76 <= *(a1 + 5108);
      if (v76 <= 1.0 && !v79)
      {
        break;
      }

      DspLib::BassQueen::MitigationAdaptation::update((a1 + 4816), v76 * *(a1 + 5104), i);
      if (v129[788])
      {
        break;
      }

      v80 = *(a1 + 4928);
      v81 = (*(a1 + 4936) - v80) >> 2;
      DspLib::copy(v80, v81, *(a1 + 5024));
      v82 = *(a1 + 5024);
      *v137 = v81;
      DspLib::multiply(v82, (*(a1 + 5032) - v82) >> 2, &v137[16], *(a1 + 4832));
      DspLib::ConstantQFilterbank::Modifier::setGains(a1 + 3960);
      DspLib::Biquad::Filter::copyStatesFrom((a1 + 3968), v127);
      DspLib::LoudspeakerModel::Algorithm::copyStatesFrom((a1 + 1824), (a1 + 2512));
      if (DspLib::BassQueen::MitigationAdaptation::mitigationIsAtLimit((a1 + 4816)))
      {
        break;
      }
    }

    DspLib::Biquad::Filter::copyStatesFrom((a1 + 3968), (a1 + 4640));
    DspLib::LoudspeakerModel::Algorithm::copyStatesFrom((a1 + 1824), (a1 + 3200));
    v84 = *(a1 + 4832);
    v85 = *(a1 + 5160);
    if (v84 >= v85)
    {
      if (v84 <= v85)
      {
LABEL_81:
        *v137 = *v133;
        *&v137[16] = v132;
        *v136 = *v133;
        *&v136[16] = v132;
        DspLib::MultiChannelCircularDelay::process((a1 + 4768), v137, v136);
        if ((*(*a1 + 64))(a1) == 1)
        {
          v86 = v121;
        }

        else
        {
          v86 = v120;
        }

        v87 = (*(*a1 + 64))(a1);
        MEMORY[0x1EEE9AC00](v87);
        v89 = &v119 - v88;
        v90 = (*(*a1 + 64))(a1);
        MEMORY[0x1EEE9AC00](v90);
        v93 = &v119 - v92;
        if (v91 >= 0x200)
        {
          v94 = 512;
        }

        else
        {
          v94 = v91;
        }

        bzero(&v119 - v92, v94);
        if ((*(*a1 + 64))(a1))
        {
          v95 = 0;
          v96 = 4 * v86;
          do
          {
            *&v93[8 * v95++] = v89;
            v89 += v96;
          }

          while (v95 < (*(*a1 + 64))(a1));
        }

        v97 = (*(*a1 + 64))(a1);
        *v137 = (*(a1 + 4936) - *(a1 + 4928)) >> 2;
        DspLib::multiply(*(a1 + 5024), (*(a1 + 5032) - *(a1 + 5024)) >> 2, &v137[16], *(a1 + 5160));
        v135 = v132;
        *v136 = *v133;
        *&v136[8] = *&v133[8];
        *&v134 = v93;
        *(&v134 + 1) = v97;
        if (v129[955])
        {
          v98 = 0;
        }

        else
        {
          v98 = v127;
        }

        DspLib::ConstantQFilterbank::Modifier::apply(a1 + 3960, v136, &v134, &v137[16], *v137, v98);
        if (*(a1 + 3888))
        {
          *v136 = v93;
          *&v136[8] = v97;
          *&v136[16] = v132;
          *&v134 = v93;
          *(&v134 + 1) = v97;
          v135 = v132;
          DspLib::Biquad::Filter::process((a1 + 3888), v136, &v134);
        }

        *v136 = *v133;
        *&v136[16] = *&v133[16];
        *&v134 = v93;
        *(&v134 + 1) = v97;
        v135 = v132;
        DspLib::subtract(v136, &v134);
        v99 = v128[1];
        v100 = v128[2];
        *v136 = *v128;
        *&v136[8] = v99;
        *&v136[16] = v100;
        *&v134 = *v136;
        *(&v134 + 1) = v99;
        v135 = v100;
        DspLib::MultiChannelCircularDelay::process((a1 + 4792), v136, &v134);
        if ((*(*a1 + 64))(a1) == 1)
        {
          v101 = v122;
        }

        else
        {
          v101 = ((v122 - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4;
        }

        v102 = (*(*a1 + 64))(a1);
        MEMORY[0x1EEE9AC00](v102);
        v104 = &v119 - v103;
        v105 = (*(*a1 + 64))(a1);
        MEMORY[0x1EEE9AC00](v105);
        v108 = &v119 - v107;
        if (v106 >= 0x200)
        {
          v109 = 512;
        }

        else
        {
          v109 = v106;
        }

        bzero(&v119 - v107, v109);
        if ((*(*a1 + 64))(a1))
        {
          v110 = 0;
          v111 = 4 * v101;
          do
          {
            *&v108[8 * v110++] = v104;
            v104 += v111;
          }

          while (v110 < (*(*a1 + 64))(a1));
        }

        v112 = (*(*a1 + 64))(a1);
        *&v136[8] = *&v133[8];
        *&v134 = v108;
        *(&v134 + 1) = v112;
        v135 = v122;
        *v136 = *v133;
        DspLib::PolyPhaseInterpolator::process((a1 + 1720), v136, &v134);
        *v136 = *v128;
        *&v136[16] = v128[2];
        *&v134 = v108;
        *(&v134 + 1) = v112;
        v135 = v122;
        DspLib::subtract(v136, &v134);
        v83 = v128;
        v12 = v129;
        goto LABEL_105;
      }

      v84 = v85 + ((v84 - v85) * *(a1 + 5148));
    }

    *(a1 + 5160) = v84;
    goto LABEL_81;
  }

  i = 0;
  v83 = v128;
LABEL_105:
  if (v12[968] != 1)
  {
    goto LABEL_108;
  }

  *v137 = *v83;
  *&v137[16] = v83[2];
  DspLib::multiply(v137, *(a1 + 5060));
LABEL_107:
  v83 = v128;
LABEL_108:
  v113 = *v83;
  v114 = v83[1];
  v115 = v83[2];
  if ((*(*a1 + 208))(a1, v11))
  {
    DspLib::CPUMeasure::pause((a1 + 104));
    v116 = i;
    if (*(a1 + 5168) > i)
    {
      v116 = *(a1 + 5168);
    }

    *(a1 + 5168) = v116;
    v117 = *(a1 + 5096);
    v118 = expf(-1.0 / ((v117 * 1000.0) / 1000.0));
    *(a1 + 5176) = ((1.0 - v118) * i) + (*(a1 + 5176) * v118);
    *v137 = v113;
    *&v137[8] = v114;
    *&v137[16] = v115;
    DspLib::BassQueen::Algorithm::MeteringChain::process(a1 + 6096, v137);
    DspLib::CPUMeasure::resume((a1 + 104));
  }
}