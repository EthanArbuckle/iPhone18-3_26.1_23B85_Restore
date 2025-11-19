void (*ACAMCrossModelLibrary::getResistanceGetter(ACAMCrossModelLibrary *this))(int a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (this == 2)
  {
    return ACAMCrossModelLibrary::getResistanceVersion2;
  }

  else
  {
    return ACAMCrossModelLibrary::getResistance;
  }
}

double ACAMCrossModelLibrary::convertXToSOC(ACAMCrossModelLibrary *this, double a2, double a3, double a4)
{
  result = 0.0;
  if (a4 > a2)
  {
    result = 1.0;
    if (a4 < a3)
    {
      return a4 / (a3 - a2);
    }
  }

  return result;
}

double *ACAMCrossModelLibrary::convertSocToX(double *this, double a2, double a3, double a4, double *a5)
{
  v5 = a3 + a2 * (a4 - a3);
  if (v5 >= a3)
  {
    a3 = v5;
  }

  if (v5 <= a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  *this = v6;
  return this;
}

double *ACAMCrossModelLibrary::convertSocToY(double *this, double a2, double a3, double a4, double *a5)
{
  v5 = a3 + a2 * (a4 - a3);
  if (v5 >= a4)
  {
    a4 = v5;
  }

  if (v5 <= a3)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  *this = v6;
  return this;
}

unint64_t ACAMCrossModelLibrary::convertXToOcpNeg(uint64_t *a1, void *a2, double a3)
{
  result = dataTable<double>::getValue(a1, 1, a3);
  *a2 = v5;
  return result;
}

unint64_t ACAMCrossModelLibrary::convertYToOcpPos(uint64_t *a1, void *a2, double a3)
{
  result = dataTable<double>::getValue(a1, 1, a3);
  *a2 = v5;
  return result;
}

double ACAMCrossModelLibrary::getSOCDependentStates(double *a1, uint64_t a2, uint64_t *a3, double *a4, uint64_t a5, __int16 a6, double *a7, double *a8)
{
  v16 = a1[3];
  v17 = *(a5 + 3353);
  if (a1[1] > 0.0)
  {
    v17 = 0;
  }

  if (a6 & 1 | v17)
  {
    v16 = ACAMCrossModelLibrary::calculateYShrinkAdjustedSOC((a3 + 43), a1[2], *(a2 + 88), v16);
  }

  v18 = *a2;
  v19 = *(a2 + 8);
  v20 = *a2 + v16 * (v19 - *a2);
  if (v20 >= *a2)
  {
    v18 = *a2 + v16 * (v19 - *a2);
  }

  if (v20 <= v19)
  {
    v21 = v18;
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = v22 + v16 * (v23 - v22);
  if (v24 >= v23)
  {
    v23 = v24;
  }

  if (v24 <= v22)
  {
    v25 = v23;
  }

  else
  {
    v25 = *(a2 + 16);
  }

  dataTable<double>::getValue(a3 + 14, 1, v21);
  v27 = v26;
  dataTable<double>::getValue(a3 + 18, 1, v25);
  v29 = v28;
  dataTable<double>::getValueArrhenius(a3 + 35, 1, a1[2], 273.15);
  v54 = v30;
  dataTable<double>::getValueArrhenius(a3 + 39, 1, a1[2], 273.15);
  v32 = v31;
  v57 = 0.0;
  v58 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  v33 = a1[1];
  v34 = 0uLL;
  if (*(a5 + 3352) == 1)
  {
    if (v33 <= 0.0)
    {
      v34 = vmulq_n_f64(*(a2 + 72), v54);
    }

    else
    {
      v34 = vmulq_n_f64(*(a2 + 56), v32);
    }
  }

  v52 = v34;
  v53 = v32;
  v35 = v33 > 0.0;
  if (*(a5 + 3384) == 2)
  {
    v36 = ACAMCrossModelLibrary::getResistanceVersion2;
  }

  else
  {
    v36 = ACAMCrossModelLibrary::getResistance;
  }

  v37 = *(a2 + 32);
  v38 = *(a2 + 40) * a4[1];
  v39 = *(a2 + 48) * a4[2];
  v40 = *(a1 + 2);
  v36(1, a3, &v58);
  (v36)(0, a3, &v57, a1[1], *(a2 + 32), *(a2 + 40) * a4[1], *(a2 + 48) * a4[2], a1[2], v21);
  v41 = *(&xmmword_241AB1050 + v35);
  (v36)(1, a3, &v56, v41 * *a4, a4[4], a4[1], a4[2], a1[2], v25);
  (v36)(0, a3, &v55, v41 * *a4, a4[4], a4[1], a4[2], a1[2], v21);
  v42 = a1[1];
  v43 = v58;
  v44 = v52.f64[0] / v56;
  v45 = v29 + v42 * v58 * (v52.f64[0] / v56 + 1.0);
  v46 = v57;
  v47 = v52.f64[1] / v55;
  v48 = v27 + -(v42 * v57) * (v52.f64[1] / v55 + 1.0);
  if ((a6 & 0x100) != 0)
  {
    v48 = fmin(fmax(v48, 0.0), *(a5 + 3376));
    v45 = fmax(fmin(v45, *(a5 + 16) + *(a5 + 3360)), *(a5 + 3368));
  }

  *a7 = v21;
  a7[1] = v25;
  a7[4] = v48;
  a7[5] = v45;
  a7[6] = v53;
  a7[7] = v54;
  v49 = v46 * v47;
  v50 = v43 * v44;
  a7[8] = v50;
  a7[9] = v49;
  a7[10] = v43 + v50;
  a7[11] = v46 + v49;
  result = v45 - v48;
  *a8 = v45 - v48;
  return result;
}

double ACAMCrossModelLibrary::calculateYShrinkAdjustedSOC(uint64_t a1, double a2, double a3, double a4)
{
  v7 = 1.0 / (a2 + 273.15);
  ACAMCrossModelLibrary::interpReciprical<3ul>(a1, a1 + 48, v7);
  v9 = fmax(v8, 0.0);
  ACAMCrossModelLibrary::interpReciprical<3ul>(a1, a1 + 24, v7);
  v11 = (fmax(v10, 0.0) + fmax(a3 - v9, 0.0)) / 100.0;
  return a4 - (1.0 - a4) * v11 / (1.0 - v11);
}

unint64_t ACAMCrossModelLibrary::interpReciprical<3ul>(uint64_t a1, uint64_t a2, double a3)
{
  v3 = 0;
  v9[3] = *MEMORY[0x277D85DE8];
  do
  {
    v9[v3] = 1.0 / (*(a1 + v3 * 8) + 273.15);
    ++v3;
  }

  while (v3 != 3);
  v6[0] = v9;
  v6[1] = 3;
  v7 = v9[0] > v9[2];
  v8 = a2;
  result = dataTable<double>::getValue(v6, 1, a3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t ACAMCrossModelLibrary::calculateApparentQmax(uint64_t a1, double *a2)
{
  v9[0] = a1 + 808;
  v9[1] = 101;
  v10 = *(a1 + 808) > *(a1 + 1608);
  v11 = a1;
  dataTable<double>::getValue(v9, 0, a2[1]);
  v4 = v3;
  result = dataTable<double>::getValue(v9, 0, a2[2]);
  v7 = v4 - v6;
  if (v7 <= 0.0)
  {
    v8 = *a2;
  }

  else
  {
    v8 = *a2 / v7;
  }

  return result;
}

double ACAMCrossModelLibrary::calculateApparentRss(double *a1, double *a2, uint64_t *a3, uint64_t a4, double *a5, double a6, double a7)
{
  v14 = (a1 + 47);
  v30[0] = (a1 + 148);
  v30[1] = 101;
  v31 = a1[148] > a1[248];
  v32 = a1 + 47;
  v27[0] = (a1 + 47);
  v27[1] = 101;
  v28 = a1[47] > a1[147];
  v29 = a1 + 148;
  dataTable<double>::getValue(v30, 0, a5[1]);
  v16 = v15;
  ACAMCrossModelLibrary::calculateApparentQmax(v14, a5);
  v18 = v17;
  dataTable<double>::getValue(v27, 0, a6);
  v20 = v19;
  v25[4] = 0.0;
  v26 = 0.0;
  v21 = a5[3];
  v22 = *(a4 + 32);
  v25[0] = 0.0;
  v25[1] = a7;
  v25[2] = 25.0;
  v25[3] = v21 - (v16 - a6) * v18 / v22;
  ACAMCrossModelLibrary::getSOCDependentStates(v25, a4, a3, a2, a1, 1, &v24, &v26);
  return (v26 - v20) / a7;
}

double ACAMCrossModelLibrary::calculateApparentWRa(double *a1, double *a2, uint64_t *a3, uint64_t a4, double *a5)
{
  v10 = 0;
  v11 = *a2 * a1[383];
  v12 = 0.0;
  do
  {
    v12 = v12 + ACAMCrossModelLibrary::calculateApparentRss(a1, a2, a3, a4, a5, a1[v10 + 14], v11) * a1[v10 + 23];
    ++v10;
  }

  while (v10 != 9);
  return v12;
}

void ACAMCrossModelLibrary::calculateRaTable(double *a1, double *a2, uint64_t *a3, uint64_t a4, double *a5, double *a6)
{
  v12 = *a2 * a1[383];
  for (i = 32; i != 47; ++i)
  {
    *a6++ = ACAMCrossModelLibrary::calculateApparentRss(a1, a2, a3, a4, a5, a1[i], v12);
  }
}

uint64_t ACAM::ACAM(uint64_t a1, const void *a2, ACAMPerformanceModelParameter *a3, const void *a4, const void *a5, uint64_t a6, const void *a7)
{
  *a1 = 0;
  memcpy((a1 + 8), a2, 0x6B8uLL);
  ACAMPerformanceModelParameter::ACAMPerformanceModelParameter((a1 + 1728), a3);
  memcpy((a1 + 2144), a4, 0x14A0uLL);
  v13 = *(a6 + 32);
  v14 = *(a6 + 16);
  *(a1 + 7424) = *a6;
  *(a1 + 7440) = v14;
  *(a1 + 7456) = v13;
  memcpy((a1 + 7464), a7, 0xDD0uLL);
  memcpy((a1 + 11000), a5, 0x65B8uLL);
  ACAMAgingModel::ACAMAgingModel((a1 + 37040), a1 + 8, a1 + 7424, a1 + 7464);
  ACAMPerformanceModel::ACAMPerformanceModel((a1 + 37064), a1 + 1728, a1 + 7424, a1 + 7464);
  ACAMAgingUpdator::ACAMAgingUpdator((a1 + 37088), a1 + 2144, a1 + 1728, a1 + 7424, a1 + 7464);
  *(a1 + 37912) = 0;
  *(a1 + 37968) = 0;
  *(a1 + 37976) = 0;
  *(a1 + 37960) = 0;
  *(a1 + 37936) = 0;
  *(a1 + 37944) = 0;
  *(a1 + 37928) = 0;
  *(a1 + 37992) = 2;
  *(a1 + 38000) = 0u;
  *(a1 + 38016) = 0u;
  *(a1 + 38032) = 0u;
  *(a1 + 38048) = 0u;
  *(a1 + 38064) = 0u;
  *(a1 + 38080) = 0u;
  return a1;
}

void ACAMStatus::~ACAMStatus(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

uint64_t ACAM::preInit(ACAM *this, const ACAMPersistentStates *a2, const ACAMStatus::SystemSignals *a3, BOOL *a4)
{
  *a4 = 0;
  v13 = 0;
  ACAMStatus::setFreshInitReason(this + 37928, 0);
  if (a2)
  {
    ACAMPersistentStates::restore(a2, this);
    ACAMStatus::setInitType(this + 37928, 1);
    v8 = *(this + 933);
    if (v8)
    {
      v9 = v8 == *(a2 + 106);
    }

    else
    {
      v9 = 0;
    }

    v10 = !v9;
    HIBYTE(v13) = v10;
    LOBYTE(v13) = ACAM::checkAgingBoundViolation(this);
  }

  else
  {
    *a4 = 1;
  }

  ACAMStatus::setAlgoStatusBuffer(this + 37928, a3, &v13);
  if (ACAMStatus::initializationRequired((this + 37928)))
  {
    *a4 = 1;
    if (!a2)
    {
      v11 = 2;
      return ACAMStatus::setFreshInitReason(this + 37928, v11);
    }

    goto LABEL_18;
  }

  if (*a4)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (a2 && *a4)
  {
LABEL_18:
    if (v13)
    {
      v11 = 5;
    }

    else if (HIBYTE(v13))
    {
      v11 = 4;
    }

    else
    {
      v11 = 3;
    }
  }

  return ACAMStatus::setFreshInitReason(this + 37928, v11);
}

BOOL ACAM::checkAgingBoundViolation(ACAM *this)
{
  v1 = *(this + 4703);
  v2 = *(this + 1367);
  v3 = *(this + 1368);
  if (v2 == v3)
  {
    v4 = v1 == v2;
  }

  else if (v3 <= v2)
  {
    v4 = v1 < v2;
    if (v1 < v3)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = v1 >= v2;
    if (v1 >= v3)
    {
      v4 = 0;
    }
  }

  v5 = *(this + 4698);
  v6 = *(this + 1369);
  v7 = *(this + 1370);
  if (v6 == v7)
  {
    v8 = v5 == v6;
  }

  else
  {
    v8 = v5 < v6;
    if (v5 < v7)
    {
      v8 = 0;
    }

    v9 = v5 >= v6;
    if (v5 >= v7)
    {
      v9 = 0;
    }

    if (v7 > v6)
    {
      v8 = v9;
    }
  }

  v10 = *(this + 4704);
  v11 = *(this + 1371);
  v12 = *(this + 1372);
  v13 = v10 < v11;
  if (v10 < v12)
  {
    v13 = 0;
  }

  v14 = v10 >= v11;
  if (v10 >= v12)
  {
    v14 = 0;
  }

  if (v12 > v11)
  {
    v13 = v14;
  }

  if (v11 == v12)
  {
    v13 = v10 == v11;
  }

  v15 = *(this + 4694);
  v16 = *(this + 1373);
  v17 = *(this + 1374);
  v18 = v15 < v16;
  if (v15 < v17)
  {
    v18 = 0;
  }

  v19 = v15 >= v16;
  if (v15 >= v17)
  {
    v19 = 0;
  }

  if (v17 > v16)
  {
    v18 = v19;
  }

  if (v16 == v17)
  {
    v18 = v15 == v16;
  }

  return !v4 || !v8 || !v13 || !v18;
}

uint64_t *ACAM::init(ACAM *this, const ACAMPersistentStates *a2)
{
  v4 = *(a2 + 4);
  v5 = *a2;
  *(this + 2326) = *(a2 + 1);
  *(this + 2325) = v5;
  *(this + 4654) = v4;
  v6 = *a2;
  v7 = *(a2 + 1);
  *(this + 4649) = *(a2 + 4);
  *(this + 37160) = v6;
  *(this + 37176) = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  *(this + 4644) = *(a2 + 9);
  *(this + 2321) = v9;
  *(this + 2320) = v8;
  v10 = *(a2 + 10);
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  *(this + 37496) = *(a2 + 9);
  *(this + 37512) = v10;
  *(this + 37464) = v12;
  *(this + 37480) = v11;
  v13 = *(a2 + 6);
  *(this + 37432) = *(a2 + 5);
  *(this + 37448) = v13;
  v14 = *(a2 + 6);
  *(this + 37336) = *(a2 + 5);
  *(this + 37352) = v14;
  v15 = *(a2 + 7);
  v16 = *(a2 + 8);
  v17 = *(a2 + 10);
  *(this + 37400) = *(a2 + 9);
  *(this + 37416) = v17;
  *(this + 37368) = v15;
  *(this + 37384) = v16;
  v18 = *(a2 + 12);
  *(this + 37240) = *(a2 + 11);
  *(this + 37256) = v18;
  v19 = *(a2 + 13);
  v20 = *(a2 + 14);
  v21 = *(a2 + 16);
  *(this + 37304) = *(a2 + 15);
  *(this + 37320) = v21;
  *(this + 37272) = v19;
  *(this + 37288) = v20;
  v22 = *(a2 + 18);
  *(this + 37528) = *(a2 + 17);
  *(this + 37544) = v22;
  v23 = *(a2 + 19);
  v24 = *(a2 + 20);
  v25 = *(a2 + 22);
  *(this + 37592) = *(a2 + 21);
  *(this + 37608) = v25;
  *(this + 37560) = v23;
  *(this + 37576) = v24;
  v26 = *(a2 + 23);
  v27 = *(a2 + 24);
  v28 = *(a2 + 26);
  *(this + 37656) = *(a2 + 25);
  *(this + 37672) = v28;
  *(this + 37624) = v26;
  *(this + 37640) = v27;
  v29 = *(a2 + 28);
  *(this + 37688) = *(a2 + 27);
  *(this + 37704) = v29;
  v30 = *(a2 + 29);
  v31 = *(a2 + 30);
  v32 = *(a2 + 32);
  *(this + 37752) = *(a2 + 31);
  *(this + 37768) = v32;
  *(this + 37720) = v30;
  *(this + 37736) = v31;
  v33 = *(a2 + 40);
  v35 = *(a2 + 37);
  v34 = *(a2 + 38);
  *(this + 37880) = *(a2 + 39);
  *(this + 37896) = v33;
  *(this + 37848) = v35;
  *(this + 37864) = v34;
  v36 = *(a2 + 33);
  v37 = *(a2 + 34);
  v38 = *(a2 + 36);
  *(this + 37816) = *(a2 + 35);
  *(this + 37832) = v38;
  *(this + 37784) = v36;
  *(this + 37800) = v37;
  *(this + 37912) = *(a2 + 41);
  v39 = *(a2 + 45);
  *(this + 4743) = *(a2 + 92);
  *(this + 37928) = v39;
  *(this + 18976) = *(a2 + 372);
  std::string::operator=((this + 37960), (a2 + 752));
  *(this + 2374) = *(a2 + 776);
  std::string::operator=((this + 38000), a2 + 33);
  v41 = *(a2 + 43);
  v40 = *(a2 + 44);
  *(this + 38024) = *(a2 + 42);
  *(this + 38040) = v41;
  *(this + 38056) = v40;
  *this = *(a2 + 840);

  return simpleList<ACAMHistory>::operator=(this + 4759, a2 + 102);
}

uint64_t *simpleList<ACAMHistory>::operator=(uint64_t *a1, __int128 **a2)
{
  v4 = *a1;
  if (v4)
  {
    do
    {
      v5 = *(v4 + 48);
      MEMORY[0x245CF6740]();
      v4 = v5;
    }

    while (v5);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a2;
  if (v6)
  {
    v9 = v6[1];
    v10 = v6[2];
    v8 = *v6;
    simpleList<ACAMHistory>::append(a1);
  }

  return a1;
}

void ACAM::init(ACAM *this, double a2, double a3, double a4)
{
  v27 = a4;
  v28 = a3;
  *(this + 37528) = 0u;
  *(this + 37544) = 0u;
  v5 = this + 36864;
  *(this + 37560) = 0u;
  *(this + 37576) = 0u;
  *(this + 37592) = 0u;
  *(this + 37608) = 0u;
  *(this + 37624) = 0u;
  *(this + 37640) = 0u;
  *(this + 37656) = 0u;
  *(this + 37672) = 0u;
  v26 = 21;
  v24[4] = this + 11000;
  v25 = 11;
  v24[0] = &v26;
  v24[1] = &v25;
  v24[2] = &v28;
  v24[3] = &v27;
  ACAM::init(double,double,double)::$_0::operator()(v24, this + 13016);
  *(v5 + 95) = v6;
  ACAM::init(double,double,double)::$_0::operator()(v24, this + 14864);
  *(v5 + 90) = v7;
  ACAM::init(double,double,double)::$_0::operator()(v24, this + 16712);
  *(v5 + 96) = v8;
  *(v5 + 91) = 1.0 - *(v5 + 90);
  if (*(this + 1337))
  {
    if (!*(this + 1338))
    {
      goto LABEL_7;
    }

    ACAM::init(double,double,double)::$_0::operator()(v24, this + 31496);
    *(v5 + 101) = v9;
    ACAM::init(double,double,double)::$_0::operator()(v24, this + 33344);
    *(v5 + 102) = v10;
    ACAM::init(double,double,double)::$_0::operator()(v24, this + 35192);
    v12 = 37664;
  }

  else
  {
    if (!*(this + 1336))
    {
      goto LABEL_7;
    }

    ACAM::init(double,double,double)::$_0::operator()(v24, this + 18560);
    *(v5 + 88) = v13;
    ACAM::init(double,double,double)::$_0::operator()(v24, this + 20408);
    *(v5 + 89) = v11;
    *(v5 + 98) = *(v5 + 88);
    v12 = 37656;
  }

  *(this + v12) = v11;
LABEL_7:
  ACAM::init(double,double,double)::$_0::operator()(v24, this + 24104);
  *(v5 + 97) = v14;
  ACAM::init(double,double,double)::$_0::operator()(v24, this + 27800);
  *(v5 + 83) = v15;
  ACAM::init(double,double,double)::$_0::operator()(v24, this + 29648);
  *(v5 + 84) = v16;
  if (*(this + 1335) == 2)
  {
    ACAM::init(double,double,double)::$_0::operator()(v24, this + 25952);
  }

  else
  {
    v21[0] = this + 1144;
    v21[1] = 3;
    v22 = *(this + 143) > *(this + 145);
    v23 = this + 1216;
    dataTable<double>::getValueArrhenius(v21, 1, 25.0, 273.15);
    v18 = v17;
    ACAM::init(double,double,double)::$_0::operator()(v24, this + 22256);
    *(v5 + 87) = v19;
    v20 = log(v19) / v18;
  }

  *(v5 + 86) = v20;
  *(this + 37752) = 0u;
  *(this + 37768) = 0u;
  *(this + 37720) = 0u;
  *(this + 37736) = 0u;
  *(this + 37688) = 0u;
  *(this + 37704) = 0u;
  ACAMAgingUpdator::updateStoichiometryLimits((this + 37088), *(v5 + 95) * *(*(v5 + 30) + 8), *(v5 + 90) * *(*(v5 + 30) + 16), *(v5 + 96) * *(*(v5 + 30) + 24), this + 4711, this + 4712, v5 + 105, v5 + 106);
}

unint64_t ACAM::init(double,double,double)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v44[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = **(a1 + 16);
  v7 = 21;
  do
  {
    v8 = v7 >> 1;
    v9 = v4 + (v7 >> 1);
    v10 = v5[v9];
    v11 = v10 > v6;
    if (*v5 <= v5[20])
    {
      v11 = v10 < v6;
    }

    v7 += ~(v7 >> 1);
    if (v11)
    {
      v4 = v9 + 1;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7);
  if (v4)
  {
    v12 = v4 - 1;
    if (v4 == **a1)
    {
      v13 = v4 - 1;
    }

    else
    {
      v13 = v4;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = **(a1 + 8);
  v15 = &v5[11 * v12];
  v17 = v15[21];
  v16 = v15 + 21;
  v18 = v17;
  v39[0] = v16;
  v39[1] = v14;
  v19 = &v16[v14];
  v20 = *(v19 - 1);
  v41 = a2 + 8 * v14 * v12;
  v21 = v5;
  if (v14 <= 1)
  {
    puts("dataTable<T>::dataTable requires at least two elements[pointer constructor]");
    v18 = *v16;
    v20 = *(v19 - 1);
    v14 = **(a1 + 8);
    v21 = *(a1 + 32);
  }

  v40 = v18 > v20;
  v22 = &v21[11 * v13];
  v24 = v22[21];
  v23 = v22 + 21;
  v25 = v24;
  v26 = a2 + 8 * v14 * v13;
  v36[0] = v23;
  v36[1] = v14;
  v27 = &v23[v14];
  v28 = *(v27 - 1);
  v38 = v26;
  if (v14 <= 1)
  {
    puts("dataTable<T>::dataTable requires at least two elements[pointer constructor]");
    v25 = *v23;
    v28 = *(v27 - 1);
  }

  v37 = v25 > v28;
  if (v12 == v13)
  {
    result = dataTable<double>::getValue(v39, 1, **(a1 + 24));
  }

  else
  {
    dataTable<double>::getValue(v39, 1, **(a1 + 24));
    v44[0] = v30;
    dataTable<double>::getValue(v36, 1, **(a1 + 24));
    v44[1] = v31;
    v42 = v5[v12];
    v43 = v5[v13];
    v33[0] = &v42;
    v33[1] = 2;
    v34 = v42 > v43;
    v35 = v44;
    result = dataTable<double>::getValue(v33, 1, **(a1 + 16));
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void ACAM::init(ACAM *a1, double *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v2 = *(a2 + 2);
  v5 = *(a2 + 3);
  ACAM::init(a1, a2[6], a2[5], a2[4]);
}

void sub_241AA964C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x72F]) < 0)
  {
    operator delete(STACK[0x718]);
  }

  ACAMPersistentStates::~ACAMPersistentStates(&STACK[0x780]);
  _Unwind_Resume(a1);
}

void simpleList<ACAMPersistentStates>::append(uint64_t *a1)
{
  ++a1[2];
  v1 = *a1;
  operator new();
}

uint64_t simpleList<ACAMHistory>::remove(uint64_t *a1, uint64_t a2)
{
  result = simpleList<ACAMHistory>::get(a1, a2);
  if (result)
  {
    v5 = *(result + 48);
    v4 = *(result + 56);
    if (v4)
    {
      *(v4 + 48) = v5;
    }

    if (v5)
    {
      *(v5 + 56) = v4;
    }

    if (result == *a1)
    {
      *a1 = v5;
    }

    if (result == a1[1])
    {
      a1[1] = v4;
    }

    result = MEMORY[0x245CF6740]();
    --a1[2];
  }

  return result;
}

void ACAM::updateDynamicConfiguration(double *a1, double a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 1293;
  v6 = 1291;
  v7 = 1289;
  v8 = 1287;
  if (a4)
  {
    v8 = 1288;
    v7 = 1290;
    v6 = 1292;
  }

  v9 = a1[v8];
  v10 = a1[v7];
  if (a4)
  {
    v5 = 1294;
  }

  v11 = a1[v5];
  v12 = a1[v6];
  *(a5 + 8) = a2;
  v13 = 0.0;
  ACAMAgingUpdator::getSOCTop((a1 + 4636), a1[929] * a1[4703], a1[930] * a1[4698], a1[931] * a1[4704], a2 - v9, &v13);
}

void simpleList<ACAMBatteryState>::append(uint64_t *a1)
{
  ++a1[2];
  v1 = *a1;
  operator new();
}

uint64_t simpleList<ACAMHistory>::get(uint64_t *a1, uint64_t a2)
{
  result = 0;
  v4 = a1[2];
  if (v4 > a2 && -v4 <= a2)
  {
    if (a2 < 0)
    {
      result = a1[1];
      if (a2 != -1)
      {
        v7 = a2 + 1;
        do
        {
          result = *(result + 56);
        }

        while (!__CFADD__(v7++, 1));
      }
    }

    else
    {
      result = *a1;
      if (a2)
      {
        v6 = a2 + 1;
        do
        {
          result = *(result + 48);
          --v6;
        }

        while (v6 > 1);
      }
    }
  }

  return result;
}

uint64_t ACAM::expandBatteryStates(uint64_t result, float64x2_t **a2, uint64_t *a3, double a4, double a5)
{
  v5 = *a2;
  v6 = *&(*a2)[2].f64[1];
  v7 = v6[2].f64[0] - (*a2)[2].f64[0];
  v8 = (*a2)[1];
  v9 = vsubq_f64(v6[1], v8);
  if (v7 / 3600.0 >= *(result + 10376) / 3600.0)
  {
    v12 = fmin(*(result + 7488), v9.f64[1] / (v7 / 3600.0));
    if (v9.f64[1] <= 0.0)
    {
      goto LABEL_12;
    }

    if (v8.f64[1] > *(result + 10408))
    {
      v12 = fmin(*(result + 10432), v12);
    }

    if (v8.f64[1] > *(result + 10416))
    {
      v12 = fmin(*(result + 10440), v12);
    }

    if (v8.f64[1] <= *(result + 10424))
    {
LABEL_12:
      v10 = 0;
      v11 = v12 * a4;
    }

    else
    {
      v13 = v6->f64[1];
      v14 = v12 * a4;
      v15 = fmin(v13, v14);
      v10 = v13 >= 0.0;
      if (v13 >= 0.0)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = v5->f64[1];
  }

  v16 = fmin(*(result + 10400), fmax(*(result + 10392), ceil(v7 / a5)));
  if (v16)
  {
    v17 = (v16 - 1);
    v18 = v7 / v17;
    v19 = (v6->f64[0] - v5->f64[0]) / v17;
    v22 = vdivq_f64(v9, vdupq_lane_s64(*&v17, 0));
    v20 = 0;
    if (v10)
    {
      v21 = v5->f64[1] + (v11 - v5->f64[1]) / v17 * 0;
    }

    v23 = v5->f64[0] + v19 * v20;
    v24 = vmlaq_n_f64(v5[1], v22, v20);
    v25 = v5[2].f64[0] + v18 * v20;
    simpleList<ACAMBatteryState>::append(a3);
  }

  return result;
}

uint64_t simpleList<ACAMBatteryState>::get(uint64_t *a1, uint64_t a2)
{
  result = 0;
  v4 = a1[2];
  if (v4 > a2 && -v4 <= a2)
  {
    if (a2 < 0)
    {
      result = a1[1];
      if (a2 != -1)
      {
        v7 = a2 + 1;
        do
        {
          result = *(result + 48);
        }

        while (!__CFADD__(v7++, 1));
      }
    }

    else
    {
      result = *a1;
      if (a2)
      {
        v6 = a2 + 1;
        do
        {
          result = *(result + 40);
          --v6;
        }

        while (v6 > 1);
      }
    }
  }

  return result;
}

__n128 ACAM::runOneStep(uint64_t a1, uint64_t a2)
{
  if (!ACAMStatus::skipAlgoRunning((a1 + 37928)))
  {
    v12 = *(a2 + 32);
    v13 = *(a2 + 24) - *(a1 + 37912);
    v14 = *(a2 + 16);
    *(a1 + 37120) = *a2;
    *(a1 + 37136) = v14;
    *(a1 + 37144) = v13;
    *(a1 + 37152) = v12;
    ACAMPerformanceModel::runOneStep(a1 + 37064, (a1 + 37120), a1 + 37688, a1 + 37240);
    v15 = (a1 + 37336);
    if (*(a1 + 37344) == 0.0 && *v15 == 0.0)
    {
      v16 = *(a1 + 37288);
      *(a1 + 37368) = *(a1 + 37272);
      *(a1 + 37384) = v16;
      v17 = *(a1 + 37320);
      *(a1 + 37400) = *(a1 + 37304);
      *(a1 + 37416) = v17;
      v18 = *(a1 + 37256);
      *v15 = *(a1 + 37240);
      *(a1 + 37352) = v18;
    }

    ACAMAgingModel::runOneStep((a1 + 37040));
  }

  v4 = *(a1 + 37176);
  *(a1 + 37200) = *(a1 + 37160);
  *(a1 + 37216) = v4;
  *(a1 + 37232) = *(a1 + 37192);
  v5 = *(a1 + 37384);
  *(a1 + 37464) = *(a1 + 37368);
  *(a1 + 37480) = v5;
  v6 = *(a1 + 37416);
  *(a1 + 37496) = *(a1 + 37400);
  *(a1 + 37512) = v6;
  v7 = *(a1 + 37352);
  *(a1 + 37432) = *(a1 + 37336);
  *(a1 + 37448) = v7;
  *(a1 + 37192) = *(a1 + 37152);
  v8 = *(a1 + 37136);
  *(a1 + 37160) = *(a1 + 37120);
  *(a1 + 37176) = v8;
  v9 = *(a1 + 37256);
  *(a1 + 37336) = *(a1 + 37240);
  *(a1 + 37352) = v9;
  v10 = *(a1 + 37320);
  *(a1 + 37400) = *(a1 + 37304);
  *(a1 + 37416) = v10;
  result = *(a1 + 37288);
  *(a1 + 37368) = *(a1 + 37272);
  *(a1 + 37384) = result;
  return result;
}

__n128 ACAM::updateStates(ACAM *this)
{
  v1 = *(this + 37176);
  *(this + 2325) = *(this + 37160);
  *(this + 2326) = v1;
  *(this + 4654) = *(this + 4649);
  v2 = *(this + 37384);
  *(this + 37464) = *(this + 37368);
  *(this + 37480) = v2;
  v3 = *(this + 37416);
  *(this + 37496) = *(this + 37400);
  *(this + 37512) = v3;
  v4 = *(this + 37352);
  *(this + 37432) = *(this + 37336);
  *(this + 37448) = v4;
  *(this + 4649) = *(this + 4644);
  v5 = *(this + 2321);
  *(this + 37160) = *(this + 2320);
  *(this + 37176) = v5;
  v6 = *(this + 37256);
  *(this + 37336) = *(this + 37240);
  *(this + 37352) = v6;
  v7 = *(this + 37320);
  *(this + 37400) = *(this + 37304);
  *(this + 37416) = v7;
  result = *(this + 37288);
  *(this + 37368) = *(this + 37272);
  *(this + 37384) = result;
  return result;
}

_BYTE *ACAM::runOnce(_BYTE *result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if ((*result & 1) == 0)
  {
    result = printf("Not yet initialized");
  }

  if (a3)
  {
    v5 = fmax(*(v4 + 1292), *(v4 + 1290));
    __src = *a2;
    v10 = a2[1];
    v11 = *(a2 + 4);
    v12 = *(a4 + 32);
    simpleList<ACAMHistory>::append(v4 + 4759);
  }

  return result;
}

void sub_241AAA5D8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  ACAMPersistentStates::~ACAMPersistentStates(&STACK[0x410]);
  _Unwind_Resume(a1);
}

double *ACAM::recordStatistics(double *this)
{
  v1 = this[4644] - this[4649];
  v2 = this + 4753;
  v3 = 6;
  while (1)
  {
    if (v3 == 1)
    {
      v4 = INFINITY;
    }

    else
    {
      v4 = this[1307];
    }

    v5 = this[1306];
    if (v5 == v4)
    {
      if (v1 == v5)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (v4 <= v5)
    {
      break;
    }

    if (v1 >= v5 && v1 < v4)
    {
      goto LABEL_22;
    }

LABEL_20:
    ++v2;
    ++this;
    if (!--v3)
    {
      return this;
    }
  }

  if (v1 >= v5 || v1 < v4)
  {
    goto LABEL_20;
  }

LABEL_22:
  ++*v2;
  return this;
}

double ACAMAgingModel::trapezoid(ACAMAgingModel *this, double a2, double a3, double a4, double *a5, double a6)
{
  result = *a5 + (a2 + a3) * 0.5 * a4 * a6;
  *a5 = result;
  return result;
}

double ACAMAgingModel::forwardEuler(ACAMAgingModel *this, double a2, double a3, double *a4, double a5)
{
  result = *a4 + a2 * a3 * a5;
  *a4 = result;
  return result;
}

void *ACAMAgingModel::ACAMAgingModel(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

void ACAMAgingModel::runOneStep(uint64_t *a1)
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  ACAMAgingModel::calculateAgingRate(a1);
}

void ACAMAgingModel::calculateAgingRate(uint64_t *a1)
{
  if (*(a1[2] + 3184) != 2)
  {
    ACAMAgingModel::calculateSEI(a1);
  }

  ACAMAgingModel::calculateSEIVersion2(a1);
}

BOOL ACAMAgingModel::checkDerivative(uint64_t a1, double *a2)
{
  result = 0;
  if ((a2[4] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v2 = *(a1 + 16);
    if (fabs(a2[4]) <= v2[406] + -2.22044605e-16 && (a2[8] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[8]) <= v2[407] + -2.22044605e-16 && (a2[9] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[9]) <= v2[408] + -2.22044605e-16 && (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[1]) <= v2[409] + -2.22044605e-16 && (a2[3] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[3]) <= v2[410] + -2.22044605e-16 && (a2[11] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[11]) <= v2[411] + -2.22044605e-16 && (a2[12] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[12]) <= v2[412] + -2.22044605e-16 && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(*a2) <= v2[413] + -2.22044605e-16 && (a2[14] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[14]) <= v2[414] + -2.22044605e-16 && (a2[15] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[15]) <= v2[415] + -2.22044605e-16 && (a2[13] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(a2[13]) <= v2[416] + -2.22044605e-16)
    {
      return 1;
    }
  }

  return result;
}

__n128 ACAMAgingModel::updateAgingState(uint64_t *a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, double *a6, double a7)
{
  v14 = a1[2];
  ACAMAgingModel::updateCBPT(a7, a1, a2, a3, a4, a5, a6);
  a6[12] = a6[12] + (*(a4 + 64) + *(a5 + 64)) * 0.5 * a7;
  ACAMAgingModel::updateSEI(a1, a7, v15, a3, a4, a5, a6);
  v20 = *a6;
  v21 = a6[1] + (*a4 + *a5) * 0.5 * a7;
  a6[1] = v21;
  v22 = a1[2];
  v23 = fmax(v21, *(v22 + 3336));
  v24 = v20 + (*(a4 + 8) + *(a5 + 8)) * 0.5 * a7;
  *a6 = v24;
  a6[1] = v23;
  *a6 = fmax(fmin(v24, *(v22 + 3344)), 0.0);
  if (*(v14 + 3216) == 2)
  {
    v25 = a6[3] + (*(a4 + 24) + *(a5 + 24)) * 0.5 * a7;
    a6[3] = v25;
    a6[3] = fmax(fmin(v25, *(v22 + 3344)), 0.0);
  }

  else
  {
    ACAMAgingModel::updateHardSwell(a1, a2, a7, v18, a4, v19, a6);
  }

  v26 = a1[2];
  v27 = v26[405];
  if (v26[403])
  {
    if (!v27)
    {
      ACAMAgingModel::updateImpedanceGrowth(a7, v16, v17, v18, a4, a5, a6);
      v26 = a1[2];
      if (!v26[405])
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (!v27)
    {
      goto LABEL_12;
    }

    v28 = a6[19];
    a6[18] = a6[18] + (*(a4 + 112) + *(a5 + 112)) * 0.5 * a7;
    a6[19] = v28 + (*(a4 + 120) + *(a5 + 120)) * 0.5 * a7;
  }

  if (v26[404])
  {
    a6[17] = a6[17] + (*(a4 + 104) + *(a5 + 104)) * 0.5 * a7;
  }

LABEL_12:
  v29 = *a4;
  v30 = *(a4 + 16);
  v31 = *(a4 + 48);
  *(a5 + 32) = *(a4 + 32);
  *(a5 + 48) = v31;
  *a5 = v29;
  *(a5 + 16) = v30;
  result = *(a4 + 64);
  v33 = *(a4 + 80);
  v34 = *(a4 + 112);
  *(a5 + 96) = *(a4 + 96);
  *(a5 + 112) = v34;
  *(a5 + 64) = result;
  *(a5 + 80) = v33;
  return result;
}

void ACAMAgingModel::calculateCBPT(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = 0.0;
  if (fabs(*(a2 + 8)) > *(a1[2] + 8))
  {
    v4 = 1.0;
  }

  v5 = vabdd_f64(*(a3 + 8), *(a3 + 24)) * v4;
  operator new[]();
}

void ACAMAgingModel::calculateCBPTVersion2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = 0.0;
  if (fabs(*(a2 + 8)) > *(a1[2] + 8))
  {
    v4 = 1.0;
  }

  v5 = vabdd_f64(*(a3 + 8), *(a3 + 24)) * v4;
  operator new[]();
}

void ACAMAgingModel::calculateHardSwell(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 32);
  v5 = *(a2 + 8);
  operator new[]();
}

void ACAMAgingModel::calculateHardSwellVersion2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = 0.0;
  if (fabs(*(a2 + 8)) > *(a1[2] + 8))
  {
    v6 = 1.0;
  }

  v7 = vabdd_f64(*a3, *(a3 + 16)) * v6;
  v8 = *(a3 + 32);
  v9 = *(a4 + 24);
  operator new[]();
}

long double ACAMAgingModel::calculateGasSwell(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  v6 = *a1;
  v7 = a4[1];
  v24 = *a4;
  v8 = *(a2 + 16) + 273.15;
  v9 = *(a3 + 32);
  v10 = *(a3 + 40);
  v11 = v10 - *(*a1 + 1024);
  v12 = exp(*(*a1 + 1032));
  v13 = atan(v11 * v12) + 1.57079633;
  v14 = exp(*(v6 + 1040));
  v15 = exp(*(v6 + 1048)) + v13 * v14;
  v16 = v15 * exp(-*(v6 + 1056) / v8) / -3600.0;
  v17 = *(v6 + 1088);
  v18 = *(v6 + 1128);
  v19 = exp(*(v6 + 1080) / v8 + *(v6 + 1064) + v10 * *(v6 + 1072) / v8);
  v20 = v19 / (exp(v8 * v17 * (v7 + v18)) + 1.0);
  v21 = *(v6 + 1120);
  v22 = exp(*(v6 + 1112) / v8 + *(v6 + 1096) + v9 * *(v6 + 1104) / v8);
  result = (v20 - (1.0 - exp(-(v21 * v24) / 100.0)) * v22) / 3600.0 * 100.0;
  *a5 = v16;
  a5[1] = result;
  return result;
}

void ACAMAgingModel::calculateImpedanceGrowth(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *a1;
  if (a4 >= 2)
  {
    puts("Not yet implemented");
  }

  v7 = *(a5 + 64);
  operator new[]();
}

void ACAMAgingModel::calculateImpedanceGrowthVersion2(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = *a1;
  if (a4 >= 2)
  {
    puts("Not yet implemented");
  }

  v8 = *(a5 + 56);
  v7 = *(a5 + 64);
  operator new[]();
}

void ACAMAgingModel::calculateYShrink(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1[2] + 8);
  operator new[]();
}

uint64_t *ACAMAgingModel::calculateAverageImpedance(uint64_t *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    v8 = *result;
    v7 = result[1];
    v9 = *(result[2] + 8);
LABEL_4:
    calculateKDAging<(ACAMCurrentDirection)0>();
  }

  if (!a4)
  {
    v5 = *result;
    v4 = result[1];
    v6 = *(result[2] + 8);
    goto LABEL_4;
  }

  return result;
}

double ACAMAgingModel::updateCBPT(double a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double *a7)
{
  v7 = a7[8];
  a7[7] = a7[7] + (a5[4] + a6[4]) * 0.5 * a1;
  a7[8] = v7 + (-a6[4] - a5[4]) * 0.5 * a1;
  v8 = a7[10];
  a7[9] = a7[9] + (-a6[5] - a5[5]) * 0.5 * a1;
  a7[10] = v8 + (-a6[6] - a5[6]) * 0.5 * a1;
  result = a7[11] + (-a6[7] - a5[7]) * 0.5 * a1;
  a7[11] = result;
  return result;
}

double ACAMAgingModel::updateAnodeCracking(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = *(a7 + 96) + (*(a5 + 64) + *(a6 + 64)) * 0.5 * a1;
  *(a7 + 96) = result;
  return result;
}

double ACAMAgingModel::updateSEI(uint64_t a1, double a2, uint64_t a3, double *a4, double *a5, double *a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  v8 = a5[9];
  v9 = a6[9];
  v10 = *(a7 + 104) + ((a5[4] + a6[4]) * 0.5 * a2 * (v7[2] / v7[3]) + 0.0) * ((a4[1] + a4[13]) * 0.5) + (v8 + v9) * 0.5 * a2 + 0.0 + ((a5[8] + a6[8]) * 0.5 * a2 * (v7[1] / v7[3]) + 0.0) * ((*a4 + a4[12]) * 0.5);
  result = (-v9 - v8) * 0.5 * a2 + *(a7 + 112);
  *(a7 + 104) = v10;
  *(a7 + 112) = result;
  return result;
}

double ACAMAgingModel::updateGasSwell(uint64_t a1, double a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double *a7)
{
  v7 = *a7;
  v8 = a7[1] + (*a5 + *a6) * 0.5 * a2;
  a7[1] = v8;
  v9 = *(a1 + 16);
  v10 = fmax(v8, *(v9 + 3336));
  v11 = v7 + (a5[1] + a6[1]) * 0.5 * a2;
  *a7 = v11;
  a7[1] = v10;
  result = fmax(fmin(v11, *(v9 + 3344)), 0.0);
  *a7 = result;
  return result;
}

double ACAMAgingModel::updateHardSwell(uint64_t *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = *a1 + 1208;
  v17[0] = *a1 + 1136;
  v17[1] = 3;
  v18 = *(v11 + 1136) > *(v11 + 1152);
  v19 = v12;
  dataTable<double>::getValueArrhenius(v17, 1, *(a2 + 16), 273.15);
  v14 = v13;
  v15 = exp(v13 * *(a7 + 24)) + *(a5 + 16) * a3;
  *(a7 + 32) = v15;
  result = fmax(fmin(log(v15) / v14, *(a1[2] + 3344)), 0.0);
  *(a7 + 24) = result;
  return result;
}

double ACAMAgingModel::updateHardSwellVersion2(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 24) + (*(a5 + 24) + *(a6 + 24)) * 0.5 * a2;
  *(a7 + 24) = v7;
  result = fmax(fmin(v7, *(*(a1 + 16) + 3344)), 0.0);
  *(a7 + 24) = result;
  return result;
}

float64x2_t ACAMAgingModel::updateImpedanceGrowth(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 120);
  *(a7 + 128) = *(a7 + 128) + (*(a5 + 96) + *(a6 + 96)) * 0.5 * a1;
  v8 = *(a5 + 96);
  v9 = *(a6 + 96);
  *(a7 + 120) = v7 + (*(a5 + 88) + *(a6 + 88)) * 0.5 * a1;
  v10 = *(a5 + 88);
  v10.f64[1] = v8;
  v11 = *(a6 + 88);
  v11.f64[1] = v9;
  v12 = vaddq_f64(v10, v11);
  __asm { FMOV            V2.2D, #0.5 }

  result = vaddq_f64(*(a7 + 40), vaddq_f64(vmulq_n_f64(vmulq_f64(v12, _Q2), a1), 0));
  *(a7 + 40) = result;
  return result;
}

double ACAMAgingModel::updateAverageImpedance(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 152);
  *(a7 + 144) = *(a7 + 144) + (*(a5 + 112) + *(a6 + 112)) * 0.5 * a1;
  result = v7 + (*(a5 + 120) + *(a6 + 120)) * 0.5 * a1;
  *(a7 + 152) = result;
  return result;
}

double ACAMAgingModel::updateYShrink(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = *(a7 + 136) + (*(a5 + 104) + *(a6 + 104)) * 0.5 * a1;
  *(a7 + 136) = result;
  return result;
}

double calculateSEIAtGridTemperatureCommon(double *a1, int a2, double *a3, double a4, double a5, double a6, double a7, double a8)
{
  v13 = &a1[a2];
  v22 = v13[10];
  v23 = v13[13];
  v14 = v13[4];
  v15 = v13[7];
  v16 = a1[3];
  v17 = 1.0 / (exp(-((a4 - a1[16]) * a1[17])) + 1.0);
  v18 = exp((a6 - v16) * (v15 / (*v13 + 273.15))) + v14 * fmax(a7, a1[18]);
  v19 = 0.0;
  if (a5 / a8 > 0.0)
  {
    v19 = -1.0;
  }

  result = v22 * (fabs(a5 / a8) * v19 * v17) / v18 - v23 / v18;
  *a3 = result;
  return result;
}

long double calculateCBPTAtGridTemperatureCommon(long double *a1, int a2, double *a3, double *a4, double *a5, double *a6, long double a7, double a8, double a9, double a10, double a11, double a12)
{
  v17 = &a1[a2];
  v37 = v17[9];
  v38 = v17[6];
  v36 = v17[12];
  v18 = v17[15];
  v19 = v17[18];
  v20 = v17[21];
  v21 = v17[3];
  v22 = a1[30];
  __y = a1[31];
  v23 = *v17 + 273.15;
  v24 = pow(v17[24] * a10 + 1.0 - v17[27] * a11, a1[32]);
  v25 = a8 - v21;
  v26 = exp(v25 * (v18 / v23));
  v27 = exp(v25 * (v19 / v23));
  v28 = exp(v25 * (v20 / v23));
  v29 = pow(fabs(a9 / a12), v22);
  result = -(v36 * (v29 * pow(a7, __y))) * v27;
  v31 = -(v38 * v24) * v28;
  *a3 = v31 + result - v37 * v26;
  *a4 = v31;
  *a6 = result;
  *a5 = -(v37 * v26);
  return result;
}

void ACAMAgingModel::calculateAnodeCrackingAtGridTemperatureVersion2(ACAMAgingModel *this, double a2, double a3, double a4, double a5, int a6, double *a7)
{
  v13 = *this;
  v14 = 1.0 / (exp(-((a4 - *(*this + 128)) * *(*this + 136))) + 1.0);
  v15 = *(*(this + 2) + 8);

  calculateAnodeCrackingAtGridTemperatureCommon((v13 + 416), a6, a7, a2, a3, v14, v15, a5);
}

void calculateAnodeCrackingAtGridTemperatureCommon(long double *a1, int a2, double *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = &a1[a2];
  v17 = v16[7];
  v18 = exp(v16[1] * a5 + 1.0 + v16[10] * a5 * a5);
  v19 = fabs(a4) < a7;
  v20 = -v17 / v18;
  if (!v19)
  {
    v21 = &a1[a2];
    if (a5 >= 0.650000095 || a5 <= 0.400000006)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = v21[13];
    }

    v22 = v21[4];
    v20 = v20 - v24 * v22 * a6 * pow(fabs(a4 / a8), *a1) / v18;
  }

  *a3 = v20;
}

long double ACAMAgingModel::IPBGasSwell(ACAMAgingModel *this, double a2, double a3, long double *a4)
{
  v6 = *this;
  v7 = a3 - *(*this + 1024);
  v8 = exp(*(*this + 1032));
  v9 = atan(v7 * v8) + 1.57079633;
  v10 = exp(*(v6 + 1040));
  v11 = exp(*(v6 + 1048)) + v9 * v10;
  result = v11 * exp(-*(v6 + 1056) / a2);
  *a4 = result;
  return result;
}

void ACAMAgingModel::calculateHardSwellAtGridTemperature(ACAMAgingModel *this, double a2, double a3, unsigned int a4, double *a5)
{
  v6 = 0.0;
  if (-*(*(this + 2) + 8) <= a3)
  {
    v7 = *this + 8 * a4;
    v8 = *(v7 + 1160);
    v6 = v8 * exp(*(v7 + 1184) * a2);
  }

  *a5 = v6;
}

double ACAMAgingModel::calculateHardSwellAtGridTemperatureVersion2(double **this, double a2, double a3, double a4, double a5, double a6, int a7, double *a8)
{
  v11 = &(*this)[a7];
  v12 = v11[154] + 273.15;
  v13 = (*this)[157];
  v23 = v11[164];
  v24 = v11[167];
  v14 = v11[161];
  v15 = v11[158];
  v16 = (*this)[172];
  v17 = 1.0 / (exp(-((*this)[171] * (a3 - (*this)[170]))) + 1.0);
  v18 = exp((a4 - v13) * v14 / v12) + fmax(v16, a6 * a6) * v15;
  v19 = a5 / *this[1];
  v20 = 0.0;
  if (v19 > 0.0)
  {
    v20 = 1.0;
  }

  result = v24 / v18 + v23 * (fabs(v19) * (v17 * v20)) / v18;
  *a8 = result;
  return result;
}

double calculateImpedanceGrowthAtGridTemperatureCommon(uint64_t a1, uint64_t a2, unsigned int a3, int a4, double *a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a4)
  {
    a2 = a1;
  }

  v13 = (a2 + 8 * a3);
  v14 = *v13 + 273.15;
  v15 = *(a2 + 136);
  v16 = v13[6];
  v26 = *(a2 + 144);
  v27 = v13[9];
  v28 = v13[12];
  v17 = *(a2 + 128);
  v18 = *(a2 + 160);
  __y = *(a2 + 152);
  v19 = a7 - *(a2 + 120);
  v20 = exp(v13[3] / v14 * v19);
  v21 = exp(v16 / v14 * v19);
  v22 = v17 / (exp(-(v15 * (a9 - v18))) + 1.0) + 1.0;
  v23 = pow(v26 * a9 + 1.0, __y);
  result = v28 * (v21 * (v23 * v22)) + fabs(a8 / a10) * (v27 * (v20 * (v23 * v22))) * a6;
  *a5 = result;
  return result;
}

long double calculateKDAgingAtGridTemperature<(ACAMCurrentDirection)6>(uint64_t a1, unsigned int a2, double *a3, double a4, double a5, double a6, double a7)
{
  v9 = (a1 + 8 * a2);
  v10 = *v9 + 273.15;
  v11 = v9[6];
  v12 = v9[9];
  v19 = v9[12];
  v13 = v9[16];
  v14 = fabs(a6);
  v15 = a5 - *(a1 + 120);
  v16 = v14 / a7 * v12 * a4 * exp(v9[3] * v15 / v10);
  v17 = exp(-(v13 * v14) / a7);
  result = v16 + v19 * v17 * exp(v11 * v15 / v10);
  *a3 = result;
  return result;
}

double ACAMAgingModel::calculateAverageImpedanceAtGridTemperature(void *a1, unsigned int a2, int a3, double *a4, double result, double a6, double a7, double a8)
{
  if (a3 == 1)
  {
    v8 = *a1 + 568;
    v9 = a4;
  }

  else
  {
    if (a3)
    {
      return result;
    }

    v8 = *a1 + 720;
    v9 = a4;
  }

  return calculateKDAgingAtGridTemperature<(ACAMCurrentDirection)6>(v8, a2, v9, result, a6, a7, a8);
}

void *ACAMAgingUpdator::ACAMAgingUpdator(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

void ACAMAgingUpdator::runOneStep(ACAMAgingUpdator *this, double *a2, double *a3)
{
  v3 = *(this + 3);
  v4 = *(v3 + 3224);
  v5 = *(v3 + 3240);
  if (v4)
  {
    v6 = 1.0;
    v7 = 1.0;
    if (!v5)
    {
      v6 = a2[5];
      v7 = a2[6];
    }
  }

  else if (v5)
  {
    v6 = a2[18];
    v7 = a2[19];
  }

  else
  {
    v6 = 1.0;
    v7 = 1.0;
  }

  v8 = *this;
  v10 = **this;
  v9 = *(*this + 8);
  a3[7] = v7 * (1.0 - v10);
  a3[8] = v7 * v10;
  a3[9] = v6 * (1.0 - v10);
  a3[10] = v6 * v10;
  ACAMAgingUpdator::updateStoichiometryLimits(this, a2[12] * *(*(this + 2) + 8), a2[7] * *(*(this + 2) + 16), a2[13] * *(*(this + 2) + 24), v9, *(v8 + 16), 0, a3, a3 + 1, a3 + 2, a3 + 3);
}

double ACAMAgingUpdator::updateQmax(ACAMAgingUpdator *this, double a2, double a3, double a4, double *a5)
{
  result = vabdd_f64(a3, a2) * a4;
  *a5 = result;
  return result;
}

void ACAMAgingUpdator::updateStoichiometryLimits(ACAMAgingUpdator *this, double a2, double a3, double a4, double a5, double a6, BOOL a7, double *a8, double *a9, double *a10, double *a11)
{
  *(*(this + 1) + 152);
  *(*(this + 1) + 120);
  operator new[]();
}

uint64_t ACAMAgingUpdator::expandOCP(ACAMAgingUpdator *this, double a2, double a3, double a4, double *a5, double *a6, double *a7)
{
  v13 = *(this + 1);
  v14 = v13[8];
  v32[0] = v13[7];
  v32[1] = v14;
  v15 = v13[10];
  v31[0] = v13[9];
  v31[1] = v15;
  v17 = *(&v32[0] + 1);
  v16 = *&v32[0];
  v18 = *(&v14 + 1);
  v19 = *(&v31[0] + 1);
  v20 = *&v31[0];
  v21 = *(&v15 + 1);
  memcpy(a5, *&v32[0], 8 * *(&v32[0] + 1));
  memcpy(a6, v18, 8 * *(&v32[0] + 1));
  result = memcpy(&a7[*(&v32[0] + 1)], v21, 8 * *(&v31[0] + 1));
  if (*(&v31[0] + 1))
  {
    v23 = -a3;
    v24 = &a6[*(&v32[0] + 1)];
    v25 = &a5[*(&v32[0] + 1)];
    do
    {
      v26 = *v20++;
      result = dataTable<double>::getValue(v32, 1, (a4 + v23 * v26) / a2);
      *v25++ = (a4 + v23 * v26) / a2;
      *v24++ = v27;
      --v19;
    }

    while (v19);
  }

  if (v17)
  {
    v28 = -a2;
    do
    {
      v29 = *v16++;
      result = dataTable<double>::getValue(v31, 1, (a4 + v28 * v29) / a3);
      *a7++ = v30;
      --v17;
    }

    while (v17);
  }

  return result;
}

void ACAMAgingUpdator::mergeSort(ACAMAgingUpdator *this, const double *a2, const double *a3, const double *a4, unint64_t a5, uint64_t a6, double *a7, double *a8, double *a9, unint64_t *a10)
{
  v10 = 0;
  v11 = a6 + a5;
  v12 = a5;
  v13 = 0;
  if (a5 && v11 > a5)
  {
    v13 = 0;
    v10 = 0;
    v12 = a5;
    do
    {
      v14 = a2[v13];
      v15 = a2[v12];
      v16 = v15 + -0.0000001;
      v17 = v15 + 0.0000001;
      if (v15 <= v14 && (v16 <= v14 ? (v18 = v17 < v14) : (v18 = 1), v18))
      {
        a7[v10] = v14;
        a8[v10] = a3[v13];
        a9[v10] = a4[v13];
        v19 = 1;
      }

      else
      {
        a7[v10] = v15;
        a8[v10] = a3[v12];
        a9[v10] = a4[v12++];
        v19 = v17 >= v14 && v16 <= v14;
      }

      v13 += v19;
      ++v10;
    }

    while (v13 < a5 && v12 < v11);
  }

  *a10 = v10;
  v21 = a5 - v13;
  if (a5 > v13)
  {
    v22 = &a4[v13];
    v23 = &a3[v13];
    v24 = &a2[v13];
    do
    {
      v25 = &a7[v10];
      if (*(v25 - 1) > *v24)
      {
        *v25 = *v24;
        a8[v10] = *v23;
        a9[v10++] = *v22;
        *a10 = v10;
      }

      ++v22;
      ++v23;
      ++v24;
      --v21;
    }

    while (v21);
  }

  if (v12 < v11)
  {
    v26 = &a4[v12];
    v27 = a6 + a5 - v12;
    v28 = &a3[v12];
    v29 = &a2[v12];
    do
    {
      v30 = &a7[v10];
      if (*(v30 - 1) > *v29)
      {
        *v30 = *v29;
        a8[v10] = *v28;
        a9[v10++] = *v26;
        *a10 = v10;
      }

      ++v26;
      ++v28;
      ++v29;
      --v27;
    }

    while (v27);
  }
}

void ACAMAgingUpdator::getOCV(ACAMAgingUpdator *this, double a2, double a3, double a4, const double *a5, unint64_t a6, double *a7)
{
  v7 = *(this + 1);
  v8 = v7[14];
  v9 = v7[18];
  __src = v7[17];
  v11 = v7[21];
  v7[19];
  v7[15];
  operator new[]();
}

void ACAMAgingUpdator::getSOCTop(ACAMAgingUpdator *this, double a2, double a3, double a4, double a5, double *a6)
{
  v6 = 0;
  v11[101] = *MEMORY[0x277D85DE8];
  v7 = xmmword_241AB1500;
  v8 = vdupq_n_s64(0x65uLL);
  v9 = vdupq_n_s64(2uLL);
  while (1)
  {
    if (vmovn_s64(vcgtq_u64(v8, v7)).u8[0])
    {
      v11[v6] = v6 * 0.01;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x65uLL), *&v7)).i32[1])
    {
      v11[v6 + 1] = (v6 + 1) * 0.01;
    }

    v6 += 2;
    v7 = vaddq_s64(v7, v9);
    if (v6 == 102)
    {
      ACAMAgingUpdator::getOCV(this, a2, a3, a4, v11, 0x65uLL, v10);
    }
  }
}

void ACAMAgingUpdator::getRawNCC(double **this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v10 = *this;
  v12 = this[2];
  v11 = this[3];
  v13 = (*this)[27];
  v14 = (*this)[20];
  v15 = (*this)[13];
  v28 = (*this)[34];
  v16 = (*this)[21];
  v47[0] = (*this + 21);
  v47[1] = 3;
  v48 = v16 > v10[23];
  v49 = v10 + 24;
  dataTable<double>::getValueArrhenius(v47, 1, 25.0, 273.15);
  v18 = v17;
  v19 = v10[14];
  v44[0] = (v10 + 14);
  v44[1] = 3;
  v45 = v19 > v10[16];
  v46 = v10 + 17;
  dataTable<double>::getValueArrhenius(v44, 1, 25.0, 273.15);
  v21 = v20;
  v41[0] = (v10 + 7);
  v41[1] = 3;
  v42 = v10[7] > v10[9];
  v43 = v10 + 10;
  dataTable<double>::getValueArrhenius(v41, 1, 25.0, 273.15);
  v23 = v22;
  v38[0] = (v10 + 28);
  v38[1] = 3;
  v39 = v10[28] > v10[30];
  v40 = v10 + 31;
  dataTable<double>::getValueArrhenius(v38, 1, 25.0, 273.15);
  v50[0] = (v13 * a2 + 1.0) * v18;
  v50[1] = v50[0];
  v50[2] = fmin((v14 * a2 + 1.0) * v21, 0.8);
  v50[3] = (v15 * a2 + 1.0) * v23;
  *&v35[1] = v10 + 3;
  *&v35[2] = 4;
  v24 = v10[3];
  v25 = v10[6];
  v37 = v50;
  v36 = v24 > v25;
  v27 = a7 + v26 * -(v11[390] * *v12) * (v28 * a2 + 1.0);
  v34 = 0.0;
  v35[0] = 0.0;
  v33 = 0.0;
  ACAMAgingUpdator::updateStoichiometryLimits(this, a4, a3, a5, 0.0, v27, 1, v35, &v34, v35, &v33);
}

double getValueNanIfOutOfRange(uint64_t a1, double a2)
{
  v2 = **a1;
  v3 = *(*a1 + 8 * *(a1 + 8) - 8);
  if (*(a1 + 16) != 1)
  {
    if (v2 > a2 || v3 < a2)
    {
      return NAN;
    }

LABEL_7:
    dataTable<double>::getValue(a1, 0, a2);
    return result;
  }

  if (v2 >= a2 && v3 <= a2)
  {
    goto LABEL_7;
  }

  return NAN;
}

void ACAMAgingUpdator::getRawNCCVersion2(ACAMAgingUpdator *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double *a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20](this, a10, a11);
  v13 = v12;
  v15 = v14;
  v57 = v16;
  v58 = v17;
  v56 = v18;
  v19 = v11;
  v20 = 0;
  v78[305] = *MEMORY[0x277D85DE8];
  v21 = *v11;
  v22 = *(v11 + 2);
  v23 = *(v11 + 3);
  v24 = *(*v11 + 360);
  v25 = *(*v11 + 384);
  v26 = *(*v11 + 408);
  v27 = vdupq_n_s64(0xBF6B4E81B4E81B4FLL);
  v28 = vdupq_n_s64(0x12DuLL);
  v29 = xmmword_241AB1500;
  __asm { FMOV            V3.2D, #1.0 }

  v35 = vdupq_n_s64(2uLL);
  do
  {
    v36.f64[0] = v20;
    v37 = v20 + 1;
    v36.f64[1] = (v20 + 1);
    v38 = vmlaq_f64(_Q3, v27, v36);
    if (vmovn_s64(vcgtq_u64(v28, v29)).u8[0])
    {
      v78[v20] = v38.f64[0];
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12DuLL), *&v29)).i32[1])
    {
      v78[v20 + 1] = v38.f64[1];
    }

    v29 = vaddq_s64(v29, v35);
    v20 += 2;
  }

  while (v37 != 301);
  v39 = v25 + v24 * (v13 + 1.0);
  v40 = (1.0 - v39) / 0.00333333333 + 1.0;
  memcpy(v77, v21 + 54, sizeof(v77));
  for (i = 101; i != 202; ++i)
  {
    v77[i] = v77[i] - v26;
  }

  v42 = v24 + v25;
  v72[0] = v77;
  v72[1] = 101;
  v73 = v77[0] > v77[100];
  v74 = &v77[101];
  memcpy(__dst, v21 + 54, sizeof(__dst));
  for (j = 0; j != 101; ++j)
  {
    v44 = &__dst[j];
    *v44 = v39 - v42 + __dst[j];
    v44[101] = __dst[j + 101] - v26;
  }

  v45 = v40;
  v69[0] = __dst;
  v69[1] = 101;
  v70 = __dst[0] > __dst[100];
  v71 = &__dst[101];
  if (v40)
  {
    v46 = 0;
    do
    {
      dataTable<double>::getValue(v72, 1, v78[v46]);
      v75[v46++] = v47 + (v13 + 1.0) * v26;
    }

    while (v45 != v46);
    dataTable<double>::getValue(v69, 1, v78[v45]);
    v49 = v48;
    if (v45 > 0x12C)
    {
LABEL_19:
      v65 = v78;
      v66 = 301;
      v67 = v78[0] > v78[300];
      v68 = v75;
      v53 = v21[41];
      v62[0] = (v21 + 35);
      v62[1] = 3;
      v63 = v21[35] > v21[37];
      v64 = v21 + 38;
      dataTable<double>::getValueArrhenius(v62, 1, 25.0, 273.15);
      v55 = v54 * -(*(v23 + 3120) * *v22);
      v60 = 0.0;
      v61 = 0.0;
      v59 = 0.0;
      ACAMAgingUpdator::updateStoichiometryLimits(v19, v57, v56, v58, 0.0, v15 + v55 * (v53 * v13 + 1.0), 1, &v61, &v60, &v61, &v59);
    }
  }

  else
  {
    dataTable<double>::getValue(v69, 1, v78[0]);
    v49 = v50;
  }

  v51 = v45 - 1;
  do
  {
    dataTable<double>::getValue(v69, 1, v78[v45]);
    v75[v45++] = v75[v51] + v52 - v49;
  }

  while (v45 != 301);
  goto LABEL_19;
}

double ACAMAgingUpdator::getNCCVersion3(uint64_t a1, double *a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 24);
  v8 = *(v7 + 3144);
  v21 = 0;
  v22 = 0.0;
  solveForSocAtVoltageAndCurrent(*(v7 + 3096), 0, a2, *(a1 + 8), *(a1 + 16), v7, &v22, &v21, a4, v8);
  v20 = 0.0;
  solveForSocAtVoltageAndCurrent(*(v7 + 3088), 1, a2, *(a1 + 8), *(a1 + 16), *(a1 + 24), &v20, &v19, *(v7 + 3056), *(v7 + 3064) * **(a1 + 16));
  v9 = v22;
  v10 = v20;
  v11 = v21;
  *a3 = a2[4] * (v22 - v20);
  *(a3 + 8) = v11;
  *(a3 + 24) = v9;
  v17 = 0.0;
  v18 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  ACAMCrossModelLibrary::convertSocToX(&v18, v10, *a2, a2[1], v12);
  ACAMCrossModelLibrary::convertSocToY(&v17, v10, a2[2], a2[3], v13);
  ACAMCrossModelLibrary::convertYToOcpPos((*(a1 + 8) + 144), &v16, v17);
  ACAMCrossModelLibrary::convertXToOcpNeg((*(a1 + 8) + 112), &v15, v18);
  result = v16 - v15;
  *(a3 + 16) = v16 - v15;
  *(a3 + 32) = v10;
  return result;
}

double solveForSocAtVoltageAndCurrent(unint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, double *a5, uint64_t a6, double *a7, double *a8, double a9, double a10)
{
  v20 = 1.0;
  v21 = 0.0;
  v22 = 1;
  do
  {
    v25 = 0.0;
    v26[0] = 0.0;
    v23 = (v20 + v21) * 0.5;
    v26[1] = a10;
    v26[2] = 25.0;
    v26[3] = v23;
    v26[4] = 0.0;
    ACAMCrossModelLibrary::getSOCDependentStates(v26, a3, a4, a5, a6, a2, v27, &v25);
    if (v25 < a9)
    {
      v21 = (v20 + v21) * 0.5;
    }

    else
    {
      v20 = (v20 + v21) * 0.5;
    }

    if (v22 >= a1)
    {
      break;
    }

    ++v22;
  }

  while (v20 - v21 > 0.00001);
  v25 = 0.0;
  v26[0] = 0.0;
  ACAMCrossModelLibrary::convertYToOcpPos(a4 + 18, v26, v27[1]);
  ACAMCrossModelLibrary::convertXToOcpNeg(a4 + 14, &v25, v27[0]);
  result = v26[0] - v25;
  *a8 = v26[0] - v25;
  *a7 = v23;
  return result;
}

void ACAMAgingUpdator::getNCCAdjustment(ACAMAgingUpdator *this, double a2, double a3, double a4, double a5, double a6, double a7, double *a8)
{
  v8 = 0;
  v13[101] = *MEMORY[0x277D85DE8];
  v9 = xmmword_241AB1500;
  v10 = vdupq_n_s64(0x65uLL);
  v11 = vdupq_n_s64(2uLL);
  while (1)
  {
    if (vmovn_s64(vcgtq_u64(v10, v9)).u8[0])
    {
      v13[v8] = v8 * 0.01;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x65uLL), *&v9)).i32[1])
    {
      v13[v8 + 1] = (v8 + 1) * 0.01;
    }

    v8 += 2;
    v9 = vaddq_s64(v9, v11);
    if (v8 == 102)
    {
      ACAMAgingUpdator::getOCV(this, a2, a3, a4, v13, 0x65uLL, v12);
    }
  }
}

float ACAMLogger::extractSBC(ACAMLogger *this, const ACAM *a2)
{
  result = *(this + 4659);
  v3 = *(this + 4660);
  return result;
}

double ACAMLogger::Daily::getNCCp(ACAMLogger::Daily *this, const ACAM *a2, double *a3, double *a4)
{
  v7 = *(this + 1330);
  v8 = *(this + 4703) * *(this + 929);
  v9 = *(this + 4698) * *(this + 930);
  v10 = *(this + 4704) * *(this + 931);
  v17[5] = 0;
  if (v7 == 2)
  {
    ACAMAgingUpdator::getRawNCCVersion2((this + 37088), v9, v8, v10, *(this + 4715), *(this + 1324), *(this + 4696), *(this + 4711), *(this + 4712), a2, a3);
  }

  if (v7 != 3)
  {
    ACAMAgingUpdator::getRawNCC(this + 4636, *(this + 4696), v9, v8, v10, *(this + 4715), *(this + 1324), a2);
  }

  v11 = *(this + 37736);
  v16[2] = *(this + 37720);
  v16[3] = v11;
  v12 = *(this + 37768);
  v16[4] = *(this + 37752);
  v16[5] = v12;
  v13 = *(this + 37704);
  v16[0] = *(this + 37688);
  v16[1] = v13;
  ACAMAgingUpdator::getNCCVersion3(this + 37088, v16, v17, *(this + 4740));
  v14 = *v17;
  *a2 = v17[0];
  result = v14 / *(this + 928);
  *a3 = result;
  return result;
}

void ACAMLogger::extractDaily(ACAMLogger *this@<X0>, double *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = (this + 36864);
  v7 = *(this + 4703);
  *a3 = v7;
  v8.f64[0] = *(this + 4698);
  v9 = (this + 37688);
  v8.f64[1] = *(this + 4704);
  *(a3 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(v8), *(this + 37688));
  v18 = *(this + 37704);
  v21 = 0;
  v22 = 0.0;
  ACAMLogger::Daily::getNCCp(this, &v21, &v22, a2);
  v10.f64[0] = v22;
  v10.f64[1] = v6[88];
  *(a3 + 20) = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v10);
  *v10.f64 = v6[89];
  *(a3 + 36) = LODWORD(v10.f64[0]);
  v10.f64[0] = v6[107];
  v10.f64[1] = v6[86];
  *(a3 + 40) = vcvt_hight_f32_f64(vcvt_f32_f64(v10), *(this + 37528));
  *(a3 + 64) = *(v6 + 269);
  v11 = *(this + 38040);
  *(a3 + 72) = *(this + 38024);
  *(a3 + 88) = v11;
  *(a3 + 104) = *(this + 38056);
  *v10.f64 = v6[131];
  *(a3 + 56) = LODWORD(v10.f64[0]);
  *(a3 + 120) = vcvt_f32_f64(*(this + 37672));
  *v10.f64 = v6[100];
  *(a3 + 128) = LODWORD(v10.f64[0]);
  if (*(this + 1330) == 3)
  {
    v12 = v9[3];
    v19[2] = v9[2];
    v19[3] = v12;
    v13 = v9[5];
    v19[4] = v9[4];
    v19[5] = v13;
    v14 = v9[1];
    v19[0] = *v9;
    v19[1] = v14;
    ACAMAgingUpdator::getNCCVersion3(this + 37088, v19, v20, v6[132]);
    v15 = ACAMCrossModelLibrary::calculateApparentWRa(this + 933, this + 928, this + 216, v9, v20);
    *(a3 + 136) = v15;
    ACAMCrossModelLibrary::calculateApparentQmax(this + 7840, v20);
    v17 = v16;
  }

  else
  {
    *(a3 + 136) = 0;
    v17 = 0.0;
  }

  *(a3 + 132) = v17;
}

void ACAMLogger::extractWeekly(ACAMLogger *this, const ACAM *a2)
{
  v2 = 0;
  v7[101] = *MEMORY[0x277D85DE8];
  v3 = xmmword_241AB1500;
  v4 = vdupq_n_s64(0x65uLL);
  v5 = vdupq_n_s64(2uLL);
  while (1)
  {
    if (vmovn_s64(vcgtq_u64(v4, v3)).u8[0])
    {
      v7[v2] = v2 * 0.01;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x65uLL), *&v3)).i32[1])
    {
      v7[v2 + 1] = (v2 + 1) * 0.01;
    }

    v2 += 2;
    v3 = vaddq_s64(v3, v5);
    if (v2 == 102)
    {
      ACAMAgingUpdator::getOCV((this + 37088), *(this + 4703) * *(this + 929), *(this + 4698) * *(this + 930), *(this + 4704) * *(this + 931), v7, 0x65uLL, v6);
    }
  }
}

void *ACAMPerformanceModel::ACAMPerformanceModel(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

__n128 ACAMPerformanceModel::runOneStep(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  ACAMCrossModelLibrary::getSOCDependentStates(a2, a3, *a1, *(a1 + 8), *(a1 + 16), 256, a4, &v9);
  if (*(a4 + 24) < 0.0 || (v8 = a2[1], v8 * a2[6] <= 0.0) || (result.n128_f64[0] = fabs(v8), result.n128_f64[0] < *(*(a1 + 16) + 8)))
  {
    result = *a4;
    *(a4 + 16) = *a4;
  }

  return result;
}

void *ACAMPerformanceModelParameter::_assignMemory(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = *a1;
  result = a1 + 1;
  v5 = result[a3];
  v6 = (v4 + 8 * v5);
  v7 = (result[a3 + 1] - v5) >> 1;
  v8 = &v6[v7];
  v9 = *v6 <= *(v8 - 1);
  *a2 = v6;
  *(a2 + 8) = v7;
  v10 = !v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v8;
  return result;
}

{
  v4 = *a1;
  result = a1 + 1;
  v5 = result[a3];
  v6 = result[a3 + 1];
  v7 = *(v4 + 8 * v5) > *(v4 + 8 * v6 - 8);
  *a2 = v4 + 8 * v5;
  *(a2 + 8) = v6 - v5;
  *(a2 + 16) = v7;
  return result;
}

void ACAMPerformanceModelParameter::_assignAddress(ACAMPerformanceModelParameter *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = (*this + 8 * v3);
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = (v5 - v3) >> 1;
  v8 = &v4[v7];
  v9 = *v4 > *(v8 - 1);
  v10 = (*this + 8 * v5);
  v11 = (v6 - v5) >> 1;
  v12 = &v10[v11];
  v13 = *v10 > *(v12 - 1);
  v14 = (*this + 8 * v6);
  v15 = *(this + 4);
  v16 = *(this + 5);
  v17 = (v2 + 8 * v15);
  v18 = *v17;
  v19 = *v14 > *(v17 - 1);
  v20 = (v2 + 8 * v16);
  v21 = *(v20 - 1);
  v22 = *v20;
  *(this + 14) = v4;
  *(this + 15) = v7;
  *(this + 128) = v9;
  *(this + 17) = v8;
  *(this + 18) = v10;
  *(this + 19) = v11;
  *(this + 160) = v13;
  *(this + 21) = v12;
  *(this + 22) = v14;
  *(this + 23) = v15 - v6;
  *(this + 192) = v19;
  *(this + 25) = v17;
  *(this + 26) = v16 - v15;
  *(this + 216) = v18 > v21;
  v23 = *(this + 6);
  LOBYTE(v7) = v22 > *(v2 + 8 * v23 - 8);
  *(this + 28) = v20;
  *(this + 29) = v23 - v16;
  *(this + 240) = v7;
  v24 = *(this + 10);
  v25 = *(this + 11);
  v26 = (v2 + 8 * v24);
  v27 = (v25 - v24) >> 1;
  v28 = &v26[v27];
  LOBYTE(v8) = *v26 > *(v28 - 1);
  *(this + 35) = v26;
  *(this + 36) = v27;
  *(this + 296) = v8;
  v29 = (v2 + 8 * v25);
  v30 = (*(this + 12) - v25) >> 1;
  v31 = &v29[v30];
  LOBYTE(v26) = *v29 > *(v31 - 1);
  *(this + 38) = v28;
  *(this + 39) = v29;
  *(this + 40) = v30;
  *(this + 328) = v26;
  *(this + 42) = v31;
  ACAMPerformanceModelParameter::_assignMemory();
}

__n128 ACAMPerformanceModelParameter::_deepCopyFrom(uint64_t a1, uint64_t a2)
{
  memcpy(*(a1 + 112), *(a2 + 112), 8 * *(a2 + 120));
  memcpy(*(a1 + 136), *(a2 + 136), 8 * *(a2 + 120));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  memcpy(*(a1 + 144), *(a2 + 144), 8 * *(a2 + 152));
  memcpy(*(a1 + 168), *(a2 + 168), 8 * *(a2 + 152));
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  memcpy(*(a1 + 176), *(a2 + 176), 8 * *(a2 + 184));
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  memcpy(*(a1 + 200), *(a2 + 200), 8 * *(a2 + 208));
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  memcpy(*(a1 + 224), *(a2 + 224), 8 * *(a2 + 232));
  v4 = *(a2 + 232);
  *(a1 + 232) = v4;
  *(a1 + 240) = *(a2 + 240);
  v5 = *(a1 + 184);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 208);
    do
    {
      if (v7)
      {
        v8 = 16;
        v9 = v7;
        do
        {
          v10 = *(*(a1 + 248) + 8 * v6) + v8;
          v11 = *(*(a2 + 248) + 8 * v6) + v8;
          memcpy(*(v10 - 16), *(v11 - 16), 8 * *(v11 - 8));
          memcpy(*(v10 + 8), *(v11 + 8), 8 * *(v11 - 8));
          *(v10 - 8) = *(v11 - 8);
          *v10 = *v11;
          v12 = *(*(a1 + 256) + 8 * v6) + v8;
          v13 = *(*(a2 + 256) + 8 * v6) + v8;
          memcpy(*(v12 - 16), *(v13 - 16), 8 * *(v13 - 8));
          memcpy(*(v12 + 8), *(v13 + 8), 8 * *(v13 - 8));
          *(v12 - 8) = *(v13 - 8);
          *v12 = *v13;
          v8 += 32;
          --v9;
        }

        while (v9);
      }

      if (v4)
      {
        v14 = 16;
        v15 = v4;
        do
        {
          v16 = *(*(a1 + 264) + 8 * v6) + v14;
          v17 = *(*(a2 + 264) + 8 * v6) + v14;
          memcpy(*(v16 - 16), *(v17 - 16), 8 * *(v17 - 8));
          memcpy(*(v16 + 8), *(v17 + 8), 8 * *(v17 - 8));
          *(v16 - 8) = *(v17 - 8);
          *v16 = *v17;
          v18 = *(*(a1 + 272) + 8 * v6) + v14;
          v19 = *(*(a2 + 272) + 8 * v6) + v14;
          memcpy(*(v18 - 16), *(v19 - 16), 8 * *(v19 - 8));
          memcpy(*(v18 + 8), *(v19 + 8), 8 * *(v19 - 8));
          *(v18 - 8) = *(v19 - 8);
          *v18 = *v19;
          v14 += 32;
          --v15;
        }

        while (v15);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  memcpy(*(a1 + 280), *(a2 + 280), 8 * *(a2 + 288));
  memcpy(*(a1 + 304), *(a2 + 304), 8 * *(a2 + 288));
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  memcpy(*(a1 + 312), *(a2 + 312), 8 * *(a2 + 320));
  memcpy(*(a1 + 336), *(a2 + 336), 8 * *(a2 + 320));
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  v21 = *(a2 + 376);
  result = *(a2 + 392);
  v22 = *(a2 + 360);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 376) = v21;
  *(a1 + 392) = result;
  *(a1 + 360) = v22;
  return result;
}

void ACAMPerformanceModelParameter::ACAMPerformanceModelParameter(ACAMPerformanceModelParameter *this, ACAMPerformanceModelParameter *a2)
{
  *this = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 216) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 240) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 296) = 0;
  *(this + 42) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 160) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 192) = 0;
  *(this + 23) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 38) = 0;
  *(this + 328) = 0;
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  *(this + 24) = v3;
  *(this + 8) = v2;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(this + 13) = *(a2 + 13);
  *(this + 88) = v6;
  *(this + 72) = v5;
  *(this + 56) = v4;
  operator new[]();
}

uint64_t ACAMPerformanceModelParameter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (memcmp((a1 + 8), (a2 + 8), 0x68uLL))
    {
      puts("_fieldOffset does not match");
    }

    ACAMPerformanceModelParameter::_deepCopyFrom(a1, a2);
  }

  return a1;
}

void ACAMPerformanceModelParameter::~ACAMPerformanceModelParameter(ACAMPerformanceModelParameter *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(*(this + 31) + 8 * i);
      if (v4)
      {
        MEMORY[0x245CF6720](v4 - 16, 0x10C0C803734C2A0);
      }

      v5 = *(*(this + 32) + 8 * i);
      if (v5)
      {
        MEMORY[0x245CF6720](v5 - 16, 0x10C0C803734C2A0);
      }

      v6 = *(*(this + 33) + 8 * i);
      if (v6)
      {
        MEMORY[0x245CF6720](v6 - 16, 0x10C0C803734C2A0);
      }

      v7 = *(*(this + 34) + 8 * i);
      if (v7)
      {
        MEMORY[0x245CF6720](v7 - 16, 0x10C0C803734C2A0);
      }
    }
  }

  v8 = *(this + 31);
  if (v8)
  {
    MEMORY[0x245CF6720](v8, 0x20C8093837F09);
  }

  v9 = *(this + 32);
  if (v9)
  {
    MEMORY[0x245CF6720](v9, 0x20C8093837F09);
  }

  v10 = *(this + 33);
  if (v10)
  {
    MEMORY[0x245CF6720](v10, 0x20C8093837F09);
  }

  v11 = *(this + 34);
  if (v11)
  {
    MEMORY[0x245CF6720](v11, 0x20C8093837F09);
  }

  if (*this)
  {
    MEMORY[0x245CF6720](*this, 0x1000C8000313F17);
  }
}

uint64_t *ACAMPersistentStates::retrieve(ACAMPersistentStates *this, const ACAM *a2)
{
  v4 = *(a2 + 2320);
  v5 = *(a2 + 2321);
  *(this + 9) = *(a2 + 4644);
  *(this + 56) = v5;
  *(this + 40) = v4;
  v6 = *(a2 + 37160);
  v7 = *(a2 + 37176);
  *(this + 4) = *(a2 + 4649);
  *this = v6;
  *(this + 1) = v7;
  v8 = *(a2 + 37320);
  v10 = *(a2 + 37272);
  v9 = *(a2 + 37288);
  *(this + 15) = *(a2 + 37304);
  *(this + 16) = v8;
  *(this + 13) = v10;
  *(this + 14) = v9;
  v11 = *(a2 + 37256);
  *(this + 11) = *(a2 + 37240);
  *(this + 12) = v11;
  v12 = *(a2 + 37416);
  v14 = *(a2 + 37368);
  v13 = *(a2 + 37384);
  *(this + 9) = *(a2 + 37400);
  *(this + 10) = v12;
  *(this + 7) = v14;
  *(this + 8) = v13;
  v15 = *(a2 + 37352);
  *(this + 5) = *(a2 + 37336);
  *(this + 6) = v15;
  v16 = *(a2 + 37544);
  *(this + 17) = *(a2 + 37528);
  *(this + 18) = v16;
  v17 = *(a2 + 37560);
  v18 = *(a2 + 37576);
  v19 = *(a2 + 37608);
  *(this + 21) = *(a2 + 37592);
  *(this + 22) = v19;
  *(this + 19) = v17;
  *(this + 20) = v18;
  v20 = *(a2 + 37624);
  v21 = *(a2 + 37640);
  v22 = *(a2 + 37672);
  *(this + 25) = *(a2 + 37656);
  *(this + 26) = v22;
  *(this + 23) = v20;
  *(this + 24) = v21;
  v23 = *(a2 + 37704);
  *(this + 27) = *(a2 + 37688);
  *(this + 28) = v23;
  v24 = *(a2 + 37720);
  v25 = *(a2 + 37736);
  v26 = *(a2 + 37768);
  *(this + 31) = *(a2 + 37752);
  *(this + 32) = v26;
  *(this + 29) = v24;
  *(this + 30) = v25;
  v27 = *(a2 + 37896);
  v29 = *(a2 + 37848);
  v28 = *(a2 + 37864);
  *(this + 39) = *(a2 + 37880);
  *(this + 40) = v27;
  *(this + 37) = v29;
  *(this + 38) = v28;
  v30 = *(a2 + 37784);
  v31 = *(a2 + 37800);
  v32 = *(a2 + 37832);
  *(this + 35) = *(a2 + 37816);
  *(this + 36) = v32;
  *(this + 33) = v30;
  *(this + 34) = v31;
  *(this + 41) = *(a2 + 37912);
  v33 = *(a2 + 38024);
  v34 = *(a2 + 38056);
  *(this + 43) = *(a2 + 38040);
  *(this + 44) = v34;
  *(this + 42) = v33;
  v35 = *(a2 + 37928);
  *(this + 92) = *(a2 + 4743);
  *(this + 45) = v35;
  *(this + 372) = *(a2 + 18976);
  std::string::operator=((this + 752), (a2 + 37960));
  *(this + 776) = *(a2 + 2374);
  std::string::operator=(this + 33, (a2 + 38000));
  *(this + 840) = *a2;
  result = simpleList<ACAMHistory>::operator=(this + 102, a2 + 4759);
  *(this + 106) = *(a2 + 933);
  return result;
}

uint64_t ACAMStatus::computeAlgoStatus(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!*a2)
  {
    return 2;
  }

  v6 = *(a1 + 95);
  v7 = *(a1 + 80);
  if ((v6 & 0x80u) == 0)
  {
    v8 = *(a1 + 95);
  }

  else
  {
    v8 = *(a1 + 80);
  }

  v9 = *(a2 + 71);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 56);
  }

  if (v8 != v9 || ((v6 & 0x80u) == 0 ? (v11 = (a1 + 72)) : (v11 = *(a1 + 72)), v10 >= 0 ? (v12 = (a2 + 48)) : (v12 = *(a2 + 48)), result = memcmp(v11, v12, v8), result))
  {
    if ((v6 & 0x80) != 0)
    {
      if (!v7)
      {
        return 0;
      }
    }

    else if (!v6)
    {
      return 0;
    }

    *(a1 + 25) = 1;
    std::string::operator=((a1 + 32), *(a1 + 56));
    return 0;
  }

  v14 = *(a1 + 64);
  if (v14 && v14 == *(a2 + 40))
  {
    if (a3[1] & 1) != 0 || (*a3)
    {
      return 0;
    }

    if ((v6 & 0x80) != 0)
    {
      if (!v7)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a1 + 56) <= *(a2 + 32))
    {
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

std::string *ACAMStatus::setAlgoStatusBuffer(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = ACAMStatus::computeAlgoStatus(a1, a2, a3);
  v7 = v6;
  *(a1 + 4) = v6;
  v8 = *a1;
  if (!(*a1 | v6))
  {
    v9 = 256;
    goto LABEL_22;
  }

  if (!v8)
  {
    if (v6 == 2)
    {
      v9 = 1536;
    }

    else
    {
      v9 = 3584;
    }

    if (v6 == 1)
    {
      v9 = 512;
    }

    goto LABEL_22;
  }

  if (v8 == 2)
  {
    if (!v6)
    {
      v9 = 1792;
      goto LABEL_22;
    }

    if (v6 == 2)
    {
      v9 = 2048;
      goto LABEL_22;
    }

LABEL_20:
    v9 = 3584;
    goto LABEL_22;
  }

  if (v8 != 1)
  {
    goto LABEL_20;
  }

  if (v6 == 1)
  {
    v9 = 768;
    goto LABEL_22;
  }

  if (v6)
  {
    if (v6 == 2)
    {
      v9 = 1536;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 40);
  if (!(v11 | v12) || v11 == v12)
  {
    v13 = *(a1 + 95);
    if (v13 >= 0)
    {
      v14 = *(a1 + 95);
    }

    else
    {
      v14 = *(a1 + 80);
    }

    v15 = *(a2 + 71);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 56);
    }

    if (v14 == v15 && (v13 >= 0 ? (v17 = (a1 + 72)) : (v17 = *(a1 + 72)), v16 >= 0 ? (v18 = (a2 + 48)) : (v18 = *(a2 + 48)), !memcmp(v17, v18, v14)))
    {
      if (*a3)
      {
        v9 = 2304;
      }

      else if (a3[1])
      {
        v9 = 2560;
      }

      else
      {
        v9 = 3840;
      }
    }

    else
    {
      v9 = 1280;
    }
  }

  else
  {
    v9 = 1024;
  }

LABEL_22:
  if ((*(a1 + 12) & 0xF00) != v9)
  {
    *(a1 + 12) = (16 * *(a1 + 12)) & 0xFFFFF000 | *(a1 + 12) | v9;
  }

  *a1 = v7;
  *(a1 + 24) = *a2;
  std::string::operator=((a1 + 32), (a2 + 8));
  *(a1 + 56) = *(a2 + 32);

  return std::string::operator=((a1 + 72), (a2 + 48));
}

uint64_t ACAMStatus::setDataErrorStatus(uint64_t result, uint64_t a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = a3[4] - *(a2 + 32);
  v7 = *a5;
  if (v6 >= 0.0)
  {
    v8 = (v6 > *a5) << 7;
  }

  else
  {
    v8 = ((v6 > *a5) << 7) | 0x40;
  }

  *(result + 8) = 0;
  if (v6 > v7 || v6 < 0.0)
  {
    *(result + 8) = v8;
  }

  v9 = *a3;
  if (*a3 < a5[2])
  {
    v8 |= 0x20u;
    *(result + 8) = v8;
  }

  if (v9 > a5[1])
  {
    v8 |= 0x10u;
    *(result + 8) = v8;
  }

  v10 = a3[1];
  v11 = a5[3];
  if (v10 > v11 * *a6 || v10 < *a6 * a5[4])
  {
    v8 |= 8u;
    *(result + 8) = v8;
  }

  if (v6 > 0.0 && fabs((a3[3] - *(a2 + 24)) / (v6 / 3600.0)) > fmax(fabs(v11), fabs(a5[4])))
  {
    v8 |= 8u;
    *(result + 8) = v8;
  }

  v12 = a3[2];
  v13 = v12 > a5[5];
  if (v12 < a5[6])
  {
    v13 = 1;
  }

  if (v13)
  {
    v8 |= 4u;
  }

  if (v6 > 31536000.0)
  {
    v8 |= 2u;
  }

  if (v13 || v6 > 31536000.0)
  {
    *(result + 8) = v8;
  }

  if (a4[12] < a5[7] || a4[7] < a5[8] || a4[13] < a5[9])
  {
    v8 |= 1u;
    *(result + 8) = v8;
  }

  *(result + 12) |= v8;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}