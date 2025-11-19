uint64_t sub_23BE50238()
{
  qword_27E1DC240 = [MEMORY[0x277D2C050] fontDescriptorForSectName:@"__Extra" fromMachO:&dword_23BE4F000];

  return MEMORY[0x2821F96F8]();
}

double sub_23BE50288(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1DC250);
  if (qword_27E1DC258)
  {
    v3 = qword_27E1DC258 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_27E1DC260))
  {
    v5 = qword_27E1DC248;
  }

  else
  {
    qword_27E1DC258 = v2;
    qword_27E1DC260 = [v2 version];
    v5 = sub_23BE50338(qword_27E1DC260, v2);
    qword_27E1DC248 = v5;
  }

  os_unfair_lock_unlock(&unk_27E1DC250);

  return *&v5;
}

double sub_23BE50338(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v8[0] = &unk_284E9B7E8;
  v8[1] = &unk_284E9B800;
  v9[0] = &unk_284E9BB60;
  v9[1] = &unk_284E9BB70;
  v8[2] = &unk_284E9B818;
  v8[3] = &unk_284E9B830;
  v9[2] = &unk_284E9BB80;
  v9[3] = &unk_284E9BB90;
  v8[4] = &unk_284E9B848;
  v8[5] = &unk_284E9B860;
  v9[4] = &unk_284E9BBA0;
  v9[5] = &unk_284E9BBB0;
  v8[6] = &unk_284E9B878;
  v9[6] = &unk_284E9BBC0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:7];
  [v2 constantValue:v3 withOverrides:279.72];
  v5 = v4;

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_23BE510B8(uint64_t a1, void *a2, uint64_t a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D2C020];
  v5 = a2;
  v6 = [v4 placementWithWatchOS12Group:12 zOrder:4000];
  v7 = v6;
  if (a3)
  {
    v14 = v6;
    v8 = &v14;
    v9 = 4000;
  }

  else
  {
    v15[0] = v6;
    v8 = v15;
    v9 = 8000;
  }

  v10 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:2 zOrder:4000];
  v8[1] = v10;
  v11 = [MEMORY[0x277D2C020] placementWithWatchOS12Group:17 zOrder:v9];
  v8[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v5 setCurationPlacements:v12];

  v13 = *MEMORY[0x277D85DE8];
}

id sub_23BE51E40(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = [MEMORY[0x277CD9F90] layer];
  [v10 setActions:*(a1 + 32)];
  [v10 setFrame:{a2, a3, a4, a5}];

  return v10;
}

id sub_23BE51EC8(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = a2;
  v13 = v11(v10, a3, a4, a5, a6);
  v14 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5A8]];
  [v13 setCompositingFilter:v14];

  v15 = [v12 CGColor];
  [v13 setFillColor:v15];

  return v13;
}

id sub_23BE51FA4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  v13 = a2;
  v14 = v12(v11, a3, a4, a5, a6);
  [v14 setLineWidth:*(*(a1 + 32) + 408)];
  [v14 setFillColor:0];
  v15 = [v13 CGColor];

  [v14 setStrokeColor:v15];

  return v14;
}

double sub_23BE52760(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1DC270);
  if (qword_27E1DC278)
  {
    v3 = qword_27E1DC278 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_27E1DC280))
  {
    v5 = qword_27E1DC268;
  }

  else
  {
    qword_27E1DC278 = v2;
    qword_27E1DC280 = [v2 version];
    v5 = sub_23BE52810(qword_27E1DC280, v2);
    qword_27E1DC268 = v5;
  }

  os_unfair_lock_unlock(&unk_27E1DC270);

  return *&v5;
}

double sub_23BE52810(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:2.25];
  v4 = v3;

  return v4;
}

void sub_23BE52864()
{
  v5[15] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB68] null];
  v4[0] = @"instanceTransform";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v0;
  v5[1] = v0;
  v4[2] = @"transform";
  v4[3] = @"hidden";
  v5[2] = v0;
  v5[3] = v0;
  v4[4] = @"position";
  v4[5] = @"opacity";
  v5[4] = v0;
  v5[5] = v0;
  v4[6] = @"instanceCount";
  v4[7] = @"instanceDelay";
  v5[6] = v0;
  v5[7] = v0;
  v4[8] = @"backgroundColor";
  v4[9] = @"path";
  v5[8] = v0;
  v5[9] = v0;
  v4[10] = @"contents";
  v4[11] = @"sublayers";
  v5[10] = v0;
  v5[11] = v0;
  v4[12] = @"string";
  v4[13] = @"fillColor";
  v5[12] = v0;
  v5[13] = v0;
  v4[14] = @"strokeColor";
  v5[14] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:15];
  v2 = qword_27E1DC288;
  qword_27E1DC288 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_23BE529B0()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284E9B920;
  v3[1] = &unk_284E9B938;
  v4[0] = &unk_284E9B920;
  v4[1] = &unk_284E9B938;
  v3[2] = &unk_284E9B950;
  v3[3] = &unk_284E9B968;
  v4[2] = &unk_284E9B950;
  v4[3] = &unk_284E9B968;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = qword_27E1DC298;
  qword_27E1DC298 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_23BE52A54()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284E9B920;
  v3[1] = &unk_284E9B938;
  v4[0] = &unk_284E9B920;
  v4[1] = &unk_284E9B938;
  v3[2] = &unk_284E9B950;
  v3[3] = &unk_284E9B968;
  v4[2] = &unk_284E9B968;
  v4[3] = &unk_284E9B968;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = qword_27E1DC2A8;
  qword_27E1DC2A8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_23BE53B28()
{
  v5[15] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB68] null];
  v4[0] = @"instanceTransform";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v0;
  v5[1] = v0;
  v4[2] = @"transform";
  v4[3] = @"hidden";
  v5[2] = v0;
  v5[3] = v0;
  v4[4] = @"position";
  v4[5] = @"opacity";
  v5[4] = v0;
  v5[5] = v0;
  v4[6] = @"instanceCount";
  v4[7] = @"instanceDelay";
  v5[6] = v0;
  v5[7] = v0;
  v4[8] = @"backgroundColor";
  v4[9] = @"path";
  v5[8] = v0;
  v5[9] = v0;
  v4[10] = @"contents";
  v4[11] = @"sublayers";
  v5[10] = v0;
  v5[11] = v0;
  v4[12] = @"string";
  v4[13] = @"fillColor";
  v5[12] = v0;
  v5[13] = v0;
  v4[14] = @"strokeColor";
  v5[14] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:15];
  v2 = qword_27E1DC2B8;
  qword_27E1DC2B8 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void sub_23BE54E60(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setFilters:0];
  [v3 setFilters:*(a1 + 32)];
}