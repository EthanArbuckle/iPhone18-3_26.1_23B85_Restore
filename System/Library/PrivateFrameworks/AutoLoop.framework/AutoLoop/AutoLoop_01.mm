uint64_t sub_2418E8CB8(void *a1)
{
  if (*a1)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_2418E8D20(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_2418E8B4C(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {

    MEMORY[0x245CF24E0](v6, 0x1080C40C39FFA3DLL);
  }

  result = 0;
  *(v5 + 16) = a3;
  return result;
}

uint64_t sub_2418E8D9C(uint64_t a1, int a2)
{
  result = sub_2418E8B4C(a1, a2);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_2418E8DBC(void *a1, int a2)
{
  v4 = sub_2418E8B4C(a1, a2);
  if (v4)
  {
    return *(v4 + 8);
  }

  if (a2 != 3)
  {
    return 0;
  }

  return sub_2418E8CB8(a1);
}

void *sub_2418E8E1C(void *a1)
{
  if (*a1)
  {
    v2 = sub_2418FF5A4();
    MEMORY[0x245CF24E0](v2, 0x1080C4022FFC67CLL);
  }

  v3 = a1[1];
  if (v3 != a1 + 2)
  {
    do
    {
      v4 = v3[5];
      if (v4)
      {
        v5 = sub_2418E9E34(v4);
        MEMORY[0x245CF24E0](v5, 0x1020C40F89CB87BLL);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != a1 + 2);
  }

  sub_2418DB78C((a1 + 1), a1[2]);
  return a1;
}

uint64_t sub_2418E8EF0(void *a1, int a2, _DWORD *a3)
{
  *a3 = -1;
  if (*a1 && sub_2418E8DBC(a1, a2))
  {
    operator new();
  }

  return 0;
}

__CFString *sub_2418E8FD0(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"UnknownFlavor";
  }

  else
  {
    return off_278CF7DD0[a1];
  }
}

uint64_t sub_2418E8FF4(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  *a2 = 0;
  if (([v3 isEqualToString:@"AutoLoop"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"Bounce"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PingPong"))
    {
      v5 = 1;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:@"LongExposure"])
    {
      v5 = 2;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:@"Stabilize"])
    {
      v5 = 3;
      goto LABEL_12;
    }

LABEL_11:
    v5 = 0;
    *a2 = -1;
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

uint64_t sub_2418E90D4(uint64_t a1, uint64_t a2)
{
  if (a2 > a1)
  {
    return 4294967291;
  }

  if (a2 < 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        NSLog(&cfstr_WarningLiveana.isa, a1, 1);
      }

      return 0;
    }

    else
    {
      NSLog(&cfstr_ErrorLiveanaly_0.isa, 0, 1);
      return 4294967294;
    }
  }

  else
  {
    NSLog(&cfstr_ErrorLiveanaly.isa, a1, a2, 1);
    return 4294967293;
  }
}

uint64_t validateLiveAnalysisDictionaryVersion_0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"Version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 unsignedIntValue];
      v5 = [v2 objectForKeyedSubscript:@"MinVersion"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = sub_2418E90D4(v4, [v5 unsignedIntValue]);
      }

      else
      {
        v6 = 0xFFFFFFFFLL;
      }

      v3 = v5;
    }

    else
    {
      v6 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 4294967292;
  }

  return v6;
}

uint64_t sub_2418E9280(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 24))
  {
    v5 = 4294967291;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"Version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 32) = [v6 unsignedIntValue];
      v7 = [v4 objectForKeyedSubscript:@"MinVersion"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 unsignedIntValue];
        *(a1 + 36) = v8;
        v5 = sub_2418E90D4(*(a1 + 32), v8);
        if ((v5 & 0x80000000) == 0)
        {
          v10 = [v4 objectForKeyedSubscript:@"NormStabilizeInstructions"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            operator new();
          }

          v5 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

      v6 = v7;
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t sub_2418E9878(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"loopFlavor"];
  v4 = 0;
  sub_2418E8FF4(v2, &v4);

  if (!v4)
  {
    operator new();
  }

  return 0;
}

id sub_2418E99DC(uint64_t a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"Version"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 36)];
  [v2 setObject:v4 forKeyedSubscript:@"MinVersion"];

  if (*a1)
  {
    v5 = sub_2418FFFC0(*a1);
    [v2 setObject:v5 forKeyedSubscript:@"NormStabilizeInstructions"];

    v6 = *(a1 + 8);
    if (v6 != (a1 + 16))
    {
      do
      {
        v7 = *(v6 + 8);
        v8 = v6[5];
        if (v8)
        {
          v9 = *v8;
          v10 = *(v8 + 1);
          if (v10 && (sub_2418E9CCC(v10), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v22[0] = @"ErrorCode";
            v12 = [MEMORY[0x277CCABB0] numberWithInt:v9];
            v22[1] = @"Params";
            v23[0] = v12;
            v23[1] = v11;
            v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
          }

          else
          {
            v20 = @"ErrorCode";
            v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
            v21 = v11;
            v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = @"UnknownFlavor";
        if (v7 <= 3)
        {
          v14 = off_278CF7DD0[v7];
        }

        [v2 setObject:v13 forKeyedSubscript:v14];

        v15 = v6[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v6[2];
            v17 = *v16 == v6;
            v6 = v16;
          }

          while (!v17);
        }

        v6 = v16;
      }

      while (v16 != (a1 + 16));
    }

    v18 = v2;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_2418E9CCC(unsigned int *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v3 = v2;
  v4 = a1[5];
  if (v4 > 3)
  {
    v5 = @"UnknownFlavor";
  }

  else
  {
    v5 = off_278CF7DD0[v4];
  }

  [v2 setObject:v5 forKeyedSubscript:@"loopFlavor"];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*a1];
  [v3 setObject:v6 forKeyedSubscript:@"loopStart"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:a1[1]];
  [v3 setObject:v7 forKeyedSubscript:@"loopPeriod"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:a1[2]];
  [v3 setObject:v8 forKeyedSubscript:@"loopFadeLen"];

  LODWORD(v9) = a1[4];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v3 setObject:v10 forKeyedSubscript:@"loopEnergy"];

  return v3;
}

uint64_t sub_2418E9E34(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    MEMORY[0x245CF24E0](v2, 0x1000C40504FFAC1);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    MEMORY[0x245CF24E0](v3, 0x1080C40C39FFA3DLL);
  }

  return a1;
}

uint64_t sub_2418EA02C()
{
  if (MEMORY[0x277CF3BC8])
  {
    off_281504A80 = MEMORY[0x277CF3B68];
    off_281504A78 = MEMORY[0x277CF3B70];
    qword_281504A70 = *MEMORY[0x277CF3BC0];
    result = *MEMORY[0x277CF3BC8];
  }

  else
  {
    off_281504A80 = sub_2418EA0F0;
    off_281504A78 = sub_2418EA0FC;
    qword_281504A70 = off_281504A48();
    result = off_281504A40();
  }

  qword_281504A68 = result;
  return result;
}

id sub_2418EA108(float a1, float a2, float a3, float a4)
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  *&v9 = a1;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v8 setObject:v10 forKeyedSubscript:@"X"];

  *&v11 = a2;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v8 setObject:v12 forKeyedSubscript:@"Y"];

  *&v13 = a3;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [v8 setObject:v14 forKeyedSubscript:@"Width"];

  *&v15 = a4;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [v8 setObject:v16 forKeyedSubscript:@"Height"];

  return v8;
}

id sub_2418EA22C(uint64_t a1, int a2)
{
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:a2];
  if (a2 >= 1)
  {
    v5 = a2;
    v6 = (a1 + 24);
    do
    {
      v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
      v8 = [MEMORY[0x277CCABB0] numberWithInt:*v6];
      [v7 setObject:v8 forKeyedSubscript:@"objectID"];

      v9 = sub_2418EA108(*(v6 - 4), *(v6 - 3), *(v6 - 2), *(v6 - 1));
      [v7 setObject:v9 forKeyedSubscript:@"boundsRect"];

      [v4 addObject:v7];
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t sub_2418EA344(uint64_t a1, void *a2)
{
  v54[1] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (*a1 > 3u)
  {
    return 4294949854;
  }

  v2 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v6 = *(a1 + 42);
  if (v6)
  {
    LODWORD(v5) = *(a1 + 4);
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v4 setObject:v7 forKeyedSubscript:@"privET"];

    v6 = *(a1 + 42);
  }

  if ((v6 & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 8)];
    [v4 setObject:v8 forKeyedSubscript:@"privAFS"];

    v6 = *(a1 + 42);
  }

  if ((v6 & 4) != 0)
  {
    v54[0] = *(a1 + 16);
    v43 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:8];
    [v4 setObject:v43 forKeyedSubscript:@"privECMVct"];

    v6 = *(a1 + 42);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_8;
  }

  v54[0] = *(a1 + 24);
  v44 = [MEMORY[0x277CBEA90] dataWithBytes:v54 length:8];
  [v4 setObject:v44 forKeyedSubscript:@"privEMBVct"];

  v6 = *(a1 + 42);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_51:
  LODWORD(v5) = *(a1 + 32);
  v45 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v4 setObject:v45 forKeyedSubscript:@"privTZF"];

  v6 = *(a1 + 42);
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_53;
  }

LABEL_52:
  LODWORD(v5) = *(a1 + 36);
  v46 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v4 setObject:v46 forKeyedSubscript:@"privImgG"];

  v6 = *(a1 + 42);
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_53:
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v4 setObject:v47 forKeyedSubscript:@"privAFSt"];

  if ((*(a1 + 42) & 0x80) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 41)];
    [v4 setObject:v9 forKeyedSubscript:@"privFM"];
  }

LABEL_13:
  if (*(a1 + 44))
  {
    v52 = v4;
    v53 = v2;
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (*(a1 + 44))
    {
      v11 = 0;
      v12 = (a1 + 78);
      do
      {
        v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
        v14 = *v12;
        if ((*v12 & 2) != 0)
        {
          v16 = sub_2418EA108(*(v12 - 11), *(v12 - 9), *(v12 - 7), *(v12 - 5));
          [v13 setObject:v16 forKeyedSubscript:@"Rect"];

          v14 = *v12;
          if ((*v12 & 4) != 0)
          {
LABEL_23:
            v17 = [MEMORY[0x277CCABB0] numberWithInt:*(v12 - 3)];
            [v13 setObject:v17 forKeyedSubscript:@"faceID"];

            if ((*v12 & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_19:
            v15 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v12 - 15)];
            [v13 setObject:v15 forKeyedSubscript:@"relSampleTime"];

            goto LABEL_20;
          }
        }

        else if ((v14 & 4) != 0)
        {
          goto LABEL_23;
        }

        if (v14)
        {
          goto LABEL_19;
        }

LABEL_20:
        [v10 addObject:v13];

        ++v11;
        v12 += 16;
      }

      while (v11 < *(a1 + 44));
    }

    v4 = v52;
    [v52 setObject:v10 forKeyedSubscript:@"privDFArray"];

    v2 = v53;
  }

  if (*a1 < 2u)
  {
    goto LABEL_47;
  }

  v19 = v4;
  v20 = *(a1 + 44);
  v21 = a1 + 32 * v20;
  v23 = *(v21 + 48);
  v24 = *(v21 + 52);
  v22 = (v21 + 48);
  v25 = v22[3];
  v26 = v22[2];
  if (v23)
  {
    v27 = sub_2418EA22C((v22 + 4), v23);
    [v19 setObject:v27 forKeyedSubscript:@"humanBodies"];
  }

  if (v24)
  {
    v28 = sub_2418EA22C(&v22[8 * v23 + 4], v24);
    [v19 setObject:v28 forKeyedSubscript:@"catBodies"];
  }

  if (v26)
  {
    v29 = sub_2418EA22C(&v22[8 * v24 + 4 + 8 * v23], v26);
    [v19 setObject:v29 forKeyedSubscript:@"dogBodies"];
  }

  v4 = v19;
  if (v25)
  {
    v30 = sub_2418EA22C(&v22[8 * v26 + 4 + 8 * v24 + 8 * v23], v25);
    [v19 setObject:v30 forKeyedSubscript:@"salientObjects"];
  }

  if (*a1 < 3u)
  {
    goto LABEL_47;
  }

  v31 = v22[3];
  v32 = (v22[1] + *v22 + v22[2]);
  v33 = &v22[8 * v32 + 8 * v31];
  v36 = *(v33 + 16);
  v35 = v33 + 16;
  LOBYTE(v34) = v36;
  if (v36)
  {
    v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
    v38 = 0;
    v39 = 32 * v20 + 32 * v31 + 32 * v32 + a1 + 68;
    do
    {
      v40 = [MEMORY[0x277CCABB0] numberWithDouble:*(v39 + v38)];
      [v37 addObject:v40];

      v38 += 4;
    }

    while (v38 != 36);
    [v4 setObject:v37 forKeyedSubscript:@"privRefHom"];

    v34 = *v35;
  }

  if ((v34 & 2) != 0)
  {
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v35 + 40)];
    [v4 setObject:v48 forKeyedSubscript:@"ptsInNanos"];

    v34 = *v35;
    if ((*v35 & 4) == 0)
    {
LABEL_43:
      if ((v34 & 8) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_57;
    }
  }

  else if ((v34 & 4) == 0)
  {
    goto LABEL_43;
  }

  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v35 + 48)];
  [v4 setObject:v49 forKeyedSubscript:@"originalPTSInNanos"];

  v34 = *v35;
  if ((*v35 & 8) == 0)
  {
LABEL_44:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_45;
    }

LABEL_58:
    v51 = [MEMORY[0x277CCABB0] numberWithChar:*(v35 + 57)];
    [v4 setObject:v51 forKeyedSubscript:@"IrisSequenceAdjusterDisplacement"];

    if ((*v35 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_57:
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v35 + 56)];
  [v4 setObject:v50 forKeyedSubscript:@"IrisSequenceAdjusterRecipe"];

  v34 = *v35;
  if ((*v35 & 0x10) != 0)
  {
    goto LABEL_58;
  }

LABEL_45:
  if ((v34 & 0x20) != 0)
  {
LABEL_46:
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v35 + 58)];
    [v4 setObject:v41 forKeyedSubscript:@"InterpolatedFrame"];
  }

LABEL_47:
  v42 = v4;
  *v2 = v4;

  return 0;
}

uint64_t sub_2418EA9F4(const __CFData *a1, void *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v14 = 0;
  size = 0;
  v6 = off_281504A80(BytePtr, Length, 3, 0, &v14, &size);
  if (v6)
  {
    v7 = v6;
    NSLog(&cfstr_Figlivephotome.isa, v6);
  }

  else
  {
    v8 = malloc_type_malloc(size, 0x1000040EED21634uLL);
    if (v8)
    {
      v9 = v8;
      v10 = off_281504A78(BytePtr, Length, v14, size, v8);
      if (v10)
      {
        v7 = v10;
        NSLog(&cfstr_Figlivephotome_0.isa, v10);
      }

      else
      {
        v12 = 0;
        v7 = sub_2418EA344(v9, &v12);
        *a2 = v12;
      }

      free(v9);
    }

    else
    {
      NSLog(&cfstr_CouldNotAlloca.isa);
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2418EBB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27E54E9D8 != -1)
  {
    sub_2418EBDC8();
  }

  v12 = dlsym(qword_27E54E9E0, "FigLivePhotoMetadataComputeDeserializationSize");
  off_281504A38 = v12;

  return (v12)(a1, a2, a3, a4, a5, a6);
}

void *sub_2418EBBE0()
{
  result = dlopen("/System/Library/Frameworks/CoreMedia.framework/CoreMedia", 2);
  qword_27E54E9E0 = result;
  return result;
}

uint64_t sub_2418EBC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27E54E9D8 != -1)
  {
    sub_2418EBDC8();
  }

  v10 = dlsym(qword_27E54E9E0, "FigLivePhotoMetadataDeserializeIntoBuffer");
  off_281504A30 = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t sub_2418EBCA8()
{
  if (qword_27E54E9D8 != -1)
  {
    sub_2418EBDC8();
  }

  v0 = dlsym(qword_27E54E9E0, "kFigMetadataDataType_QuickTimeMetadataLivePhotoInfo");
  if (v0)
  {
    result = *v0;
    qword_27E54E9E8 = result;
  }

  else
  {
    result = qword_27E54E9E8;
  }

  off_281504A48 = sub_2418EBD18;
  return result;
}

uint64_t sub_2418EBD24()
{
  if (qword_27E54E9D8 != -1)
  {
    sub_2418EBDC8();
  }

  v0 = dlsym(qword_27E54E9E0, "kFigMetadataIdentifier_QuickTimeMetadataLivePhotoInfo");
  if (v0)
  {
    result = *v0;
    qword_27E54E9F0 = result;
  }

  else
  {
    result = qword_27E54E9F0;
  }

  off_281504A40 = sub_2418EBD94;
  return result;
}

float sub_2418EBDDC(uint64_t *a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  *a4 = 0;
  v7 = a2[1] - *a2;
  if (!a1 || !a2 || !a3 || v7 != a3[1] - *a3)
  {
    *a4 = -1;
  }

  sub_2418E2610(a1, v7 >> 2);
  v9 = *a2;
  v10 = a2[1];
  v11 = v10 - *a2;
  if (v10 != *a2)
  {
    v12 = 0;
    v13 = v11 >> 2;
    v14 = *a3;
    v15 = *a1;
    do
    {
      result = *(v9 + 4 * v12) + *(v14 + 4 * v12);
      *(v15 + 4 * v12++) = result;
    }

    while (v13 > v12);
  }

  return result;
}

void sub_2418EBE80(uint64_t *a1, uint64_t *a2, char **a3, int *a4)
{
  *a4 = 0;
  v8 = *a3;
  v9 = a3[1];
  if (!a1 || !a2 || !a3 || v9 == v8)
  {
    *a4 = -1;
  }

  v10 = v9 - v8;
  if (!v10)
  {
    sub_2418DD5E8();
  }

  if (a2[1] - *a2 != *(v8 + 1) - *v8)
  {
    *a4 = -1;
  }

  sub_2418E2610(a1, 0xAAAAAAAAAAAAAAABLL * (v10 >> 3));
  v11 = *a3;
  v12 = a3[1];
  v13 = v12 - *a3;
  if (v12 != *a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    v18 = *a2;
    v17 = a2[1];
    v19 = v17 - *a2;
    v20 = *a1;
    v21 = (a1[1] - *a1) >> 2;
    do
    {
      v22 = &v11[24 * v14];
      v23 = *v22;
      if (v17 == v18)
      {
        v25 = 0.0;
      }

      else
      {
        v24 = 0;
        v25 = 0.0;
        do
        {
          v25 = v25 + (*(v18 + 4 * v24) * *(v23 + 4 * v24));
          ++v24;
        }

        while (v19 >> 2 > v24);
      }

      v26 = *(v22 + 1);
      if (v21 <= v14)
      {
        if (v19 == v26 - v23)
        {
          v28 = 0;
        }

        else
        {
          v28 = -1;
        }

        *a4 = v28;
        sub_2418DD5E8();
      }

      *(v20 + 4 * v14) = v25;
      v14 = ++v15;
    }

    while (v16 > v15);
    if (v19 == v26 - v23)
    {
      v27 = 0;
    }

    else
    {
      v27 = -1;
    }

    *a4 = v27;
  }
}

float sub_2418EBFD8(uint64_t *a1, uint64_t a2, char **a3, uint64_t *a4, int *a5)
{
  if (a3)
  {
    sub_2418EBE80(a1, a2, a3, a5);
  }

  else if (a1 != a2)
  {
    sub_2418DF224(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  if (a4 && !*a5)
  {

    return sub_2418EBDDC(a1, a1, a4, a5);
  }

  return result;
}

void sub_2418EC078(float **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v3 = v2 - *a1;
    v4 = 0.0;
    v5 = 1;
    v6 = *a1;
    do
    {
      v7 = *v6++;
      v4 = v4 + expf(v7);
      v8 = v3 > v5++;
    }

    while (v8);
    if (v2 != v1)
    {
      v9 = 1;
      do
      {
        *v1 = expf(*v1) / v4;
        ++v1;
        v8 = v3 > v9++;
      }

      while (v8);
    }
  }
}

id sub_2418EC108(uint64_t *a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      LODWORD(v3) = *(v4 + 4 * v5);
      v7 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
      [v2 addObject:v7];

      v5 = v6;
      v4 = *a1;
      ++v6;
    }

    while (v5 < (a1[1] - *a1) >> 2);
  }

  return v2;
}

void sub_2418EC1D4(void *a1, void *a2)
{
  v6 = a1;
  sub_2418E2610(a2, [v6 count]);
  for (i = 0; [v6 count] > i; ++i)
  {
    v4 = [v6 objectAtIndexedSubscript:i];
    [v4 floatValue];
    *(*a2 + 4 * i) = v5;
  }
}

uint64_t sub_2418EC2D4(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    printf("ALGatingClassifier: error reading model file.");
  }

  v2 = [v1 objectForKeyedSubscript:qword_27E54E8A8];
  if ([v2 isEqual:qword_27E54E880])
  {
    operator new();
  }

  if ([v2 isEqual:qword_27E54E888])
  {
    operator new();
  }

  if ([v2 isEqual:qword_27E54E890])
  {
    operator new();
  }

  if ([v2 isEqual:qword_27E54E898])
  {
    operator new();
  }

  if ([v2 isEqual:qword_27E54E8A0])
  {
    operator new();
  }

  printf("ALGatingClassifier: unrecognized model type.");
  if (sub_2418EC574(0, v1))
  {
    puts("ALGatingClassifier: error loading model from file.");
  }

  return 0;
}

void sub_2418EC530(_Unwind_Exception *a1)
{
  MEMORY[0x245CF24E0](v3, 0x10A1C407830D277);

  _Unwind_Resume(a1);
}

uint64_t sub_2418EC574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:qword_27E54E8A8];
    if (v5 && ((*(*a1 + 32))(a1), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, (v7 & 1) != 0))
    {
      v8 = [v4 objectForKeyedSubscript:qword_27E54E8B0];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:qword_27E54E8C0];

        if (v10)
        {
          v11 = [v9 objectForKeyedSubscript:qword_27E54E8C0];
          [v11 floatValue];
          *(a1 + 12) = v12;
        }

        v13 = [v9 objectForKeyedSubscript:qword_27E54E8C8];

        if (v13)
        {
          v14 = [v9 objectForKeyedSubscript:qword_27E54E8C8];
          *(a1 + 16) = [v14 BOOLValue];
        }

        v15 = (*(*a1 + 40))(a1, v9);
        if (!v15)
        {
          v15 = [v4 objectForKeyedSubscript:qword_27E54E8B8];

          if (v15)
          {
            if (!*(a1 + 24))
            {
              operator new();
            }

            if (!*(a1 + 32))
            {
              operator new();
            }

            v16 = [v4 objectForKeyedSubscript:qword_27E54E8B8];
            v15 = sub_2418ECB20(v16, *(a1 + 24), *(a1 + 32));
          }
        }
      }

      else
      {
        printf("ALGatingClassifier::loadModel: missing model dictionary key.");
        v15 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      printf("ALGatingClassifier::loadModel: missing or mismatched classifier type.");
      v15 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    printf("ALGatingClassifier::loadModel: missing model file dict.");
    v15 = 0xFFFFFFFFLL;
  }

  return v15;
}

void *sub_2418EC820(void *a1)
{
  *a1 = &unk_28537D0C8;
  v2 = a1[3];
  if (v2)
  {
    v6 = a1[3];
    sub_2418DB4C8(&v6);
    MEMORY[0x245CF24E0](v2, 0x20C40960023A9);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x245CF24E0](v3, 0x80C40D6874129);
    a1[4] = 0;
  }

  return a1;
}

float sub_2418EC8D4(void *a1, uint64_t a2, int *a3)
{
  *a3 = 0;
  v5 = a1[3];
  v6 = a1[4];
  if (*(a1 + 3) == 0)
  {
    return (*(*a1 + 56))(a1, a2, a3);
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  *a3 = 0;
  v8 = sub_2418EBFD8(&__p, a2, v5, v6, a3);
  v7 = 0.0;
  if (!*a3)
  {
    v7 = (*(*a1 + 56))(a1, &__p, a3, v8);
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return v7;
}

void sub_2418EC9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2418EC9F8(uint64_t a1, uint64_t a2, int *a3, float *a4)
{
  v7 = sub_2418EC8D4(a1, a2, a3);
  *a4 = v7;
  if (*a3)
  {
    puts("ALGatingClassifier::predict error.");
    return 0;
  }

  else
  {
    v9 = *(a1 + 12);
    if (*(a1 + 16) == 1)
    {
      return v7 <= v9;
    }

    else
    {
      return v7 > v9;
    }
  }
}

id sub_2418ECA70(uint64_t a1, int a2, float a3)
{
  v3 = a3;
  v4 = *(a1 + 12);
  if (a2)
  {
    v5 = @">";
    if (*(a1 + 16))
    {
      v5 = @"<=";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Failed (score = %f %@ threshold = %f).\n", *&v3, v5, *&v4];
  }

  else
  {
    v6 = @"<=";
    if (*(a1 + 16))
    {
      v6 = @">";
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Passed (score = %f %@ threshold = %f).\n", *&v3, v6, *&v4];
  }
  v7 = ;

  return v7;
}

uint64_t sub_2418ECB20(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:qword_27E54E8D0];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:qword_27E54E8D0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 count];
      sub_2418ED5D4(a2, v9);
      if (v9)
      {
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = [v8 objectAtIndex:v10];
          v13 = v12;
          if (v12)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v10)
            {
              sub_2418DD5E8();
            }

            sub_2418EC1D4(v12, (*a2 + 24 * v10));
          }

          v10 = v11;
        }

        while (v9 > v11++);
      }

      v15 = 0;
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [v5 objectForKeyedSubscript:qword_27E54E8D8];

  if (v16)
  {
    v17 = [v5 objectForKeyedSubscript:qword_27E54E8D8];
    if (v17)
    {
      v18 = [v5 objectForKeyedSubscript:qword_27E54E8D8];
      sub_2418EC1D4(v18, a3);
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }
  }

  return v15;
}

float sub_2418ECCF4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  *(a1 + 16) = 1;
  *(a1 + 12) = 0;
  return 1.0;
}

void sub_2418ECD0C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_28537D168;
  *(a1 + 40) = 0;
  operator new();
}

void *sub_2418ECD9C(void *a1)
{
  *a1 = &unk_28537D168;
  v2 = a1[6];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x245CF24E0](v2, 0x80C40D6874129);
    a1[6] = 0;
  }

  return sub_2418EC820(a1);
}

void sub_2418ECE24(void *a1)
{
  sub_2418ECD9C(a1);

  JUMPOUT(0x245CF24E0);
}

float sub_2418ECE5C(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = **(a1 + 48);
  if (v5 == *(*(a1 + 48) + 8) - v6)
  {
    result = *(a1 + 40);
    *a3 = 0;
    if (v4 != v3)
    {
      v8 = 0;
      v9 = v5 >> 2;
      do
      {
        result = result + (*(v3 + 4 * v8) * *(v6 + 4 * v8));
        ++v8;
      }

      while (v9 > v8);
    }
  }

  else
  {
    *a3 = -1;
    return -1.0;
  }

  return result;
}

void *sub_2418ECEBC(void *a1)
{
  *a1 = &unk_28537D1B8;
  v2 = a1[5];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x245CF24E0](v2, 0x20C40960023A9);
    a1[5] = 0;
  }

  return sub_2418EC820(a1);
}

void sub_2418ECF44(void *a1)
{
  sub_2418ECEBC(a1);

  JUMPOUT(0x245CF24E0);
}

float sub_2418ECF7C(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 0;
  *(a1 + 48) = -1;
  v4 = **(a1 + 40);
  if (*(v4 + 28))
  {
    v5 = 0;
    v6 = 0;
    v7 = **(a1 + 40);
  }

  else
  {
    v6 = 0;
    v7 = **(a1 + 40);
    do
    {
      v5 = v6;
      if (*(*a2 + 4 * *v7) >= *(v7 + 24))
      {
        v9 = 8;
      }

      else
      {
        v9 = 16;
      }

      v6 = *(v7 + v9);
      if (*(a1 + 8) == 1)
      {
        printf("tree traverse: node %zu (feature %zu): go to node %zu\n", v5, *v7, v6);
        v4 = **(a1 + 40);
      }

      v7 = v4 + 40 * v6;
    }

    while (*(v7 + 28) != 1);
  }

  *(a1 + 48) = *(v4 + 40 * v5);
  if (*(a1 + 8) == 1)
  {
    printf("tree traverse: leaf %zu: %f\n", v6, *(v7 + 32));
    v4 = **(a1 + 40);
  }

  return *(v4 + 40 * v6 + 32);
}

BOOL sub_2418ED0A8(uint64_t a1)
{
  v1 = **(a1 + 64);
  v2 = *(*(a1 + 64) + 8) - v1;
  if (v2)
  {
    v3 = **(a1 + 72);
    if (*(*(a1 + 72) + 8) - v3 == v2)
    {
      v5 = *v1;
      v4 = *(v1 + 8);
      v6 = v4 - *v1;
      if (v4 != *v1)
      {
        v7 = 0;
        v8 = 1;
        while (v5[1] != *v5)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
          if (v9 != (*(v3 + 24 * v7 + 8) - *(v3 + 24 * v7)) >> 2)
          {
            break;
          }

          if (0xAAAAAAAAAAAAAAABLL * (v2 >> 3) <= v8)
          {
            v11 = *(v1 + v2 - 16) - *(v1 + v2 - 24);
            if (!v11)
            {
              return 0;
            }

            return *(a1 + 56) < 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
          }

          v7 = v8;
          v10 = *(v1 + 24 * v8);
          if (*(v1 + 24 * v8 + 8) == v10 || v9 == (v10[1] - *v10) >> 2)
          {
            v5 = *(v1 + 24 * v8++);
            v6 = *(v1 + 24 * v7 + 8) - v5;
            if (v6)
            {
              continue;
            }
          }

          return 0;
        }
      }
    }
  }

  return 0;
}

void *sub_2418ED1A0(uint64_t a1)
{
  *a1 = &unk_28537D118;
  v2 = *(a1 + 64);
  if (v2)
  {
    v5 = *(a1 + 64);
    sub_2418EE7A4(&v5);
    MEMORY[0x245CF24E0](v2, 0x20C40960023A9);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = *(a1 + 72);
    sub_2418DB4C8(&v5);
    MEMORY[0x245CF24E0](v3, 0x20C40960023A9);
    *(a1 + 72) = 0;
  }

  return sub_2418EC820(a1);
}

void sub_2418ED258(uint64_t a1)
{
  sub_2418ED1A0(a1);

  JUMPOUT(0x245CF24E0);
}

float sub_2418ED290(uint64_t a1, uint64_t *a2, int *a3)
{
  *a3 = 0;
  v6 = *(a1 + 40);
  if (v6 == -1)
  {
    v6 = sub_2418ED0A8(a1);
    *(a1 + 40) = v6;
  }

  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  *a3 = v7;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_2418DCCCC(&v32, *a2, a2[1], (a2[1] - *a2) >> 2);
  __p = 0;
  v30 = 0;
  v31 = 0;
  v8 = 0.0;
  if (*a3)
  {
    goto LABEL_41;
  }

  v9 = **(a1 + 64);
  if (*(*(a1 + 64) + 8) == v9)
  {
LABEL_37:
    v27 = __p;
    v8 = *(__p + *(a1 + 56));
    goto LABEL_40;
  }

  v10 = 0;
  v11 = 0;
  v12 = @"NeuralNetActivation_ReLU";
  do
  {
    v13 = v9 + 24 * v10;
    v14 = *v13;
    v15 = *(v13 + 8) - *v13;
    if (!v15 || (v16 = v14[1] - *v14) == 0 || v33 - v32 != v16)
    {
LABEL_38:
      *a3 = -1;
      goto LABEL_39;
    }

    sub_2418E2610(&__p, 0xAAAAAAAAAAAAAAABLL * (v15 >> 3));
    v17 = **(a1 + 64);
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 64) + 8) - v17) >> 3) <= v10)
    {
      sub_2418DD5E8();
    }

    v18 = **(a1 + 72);
    if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 72) + 8) - v18) >> 3) <= v10)
    {
      sub_2418DD5E8();
    }

    *&v19 = sub_2418EBFD8(&__p, &v32, (v17 + 24 * v10), (v18 + 24 * v10), a3);
    if (*a3)
    {
      goto LABEL_39;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 64) + 8) - **(a1 + 64)) >> 3) - 1 == v10)
    {
      sub_2418EC078(&__p);
      goto LABEL_35;
    }

    if ([*(a1 + 48) isEqualToString:{v12, v19}])
    {
      v21 = __p;
      v20 = v30;
      v22 = (v30 - __p) >> 2;
      if (v30 != __p)
      {
        v23 = 0;
        do
        {
          if (*&v21[4 * v23] < 0.0)
          {
            *&v21[4 * v23] = 0;
          }

          ++v23;
        }

        while (v22 > v23);
      }

      goto LABEL_34;
    }

    if (![*(a1 + 48) isEqualToString:@"NeuralNetActivation_Sigmoid"])
    {
      if (![*(a1 + 48) isEqualToString:@"NeuralNetActivation_Tanh"])
      {
        goto LABEL_38;
      }

      v21 = __p;
      v20 = v30;
      v22 = (v30 - __p) >> 2;
      if (v30 == __p)
      {
        goto LABEL_34;
      }

      v24 = v12;
      v26 = 0;
      do
      {
        *&v21[4 * v26] = tanhf(*&v21[4 * v26]);
        ++v26;
      }

      while (v22 > v26);
      goto LABEL_33;
    }

    v21 = __p;
    v20 = v30;
    v22 = (v30 - __p) >> 2;
    if (v30 != __p)
    {
      v24 = v12;
      v25 = 0;
      do
      {
        *&v21[4 * v25] = 1.0 / (expf(*&v21[4 * v25]) + 1.0);
        ++v25;
      }

      while (v22 > v25);
LABEL_33:
      v12 = v24;
    }

LABEL_34:
    sub_2418DF224(&v32, v21, v20, v22);
LABEL_35:
    v9 = **(a1 + 64);
    v10 = ++v11;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 64) + 8) - v9) >> 3) > v11);
  if (!*a3)
  {
    goto LABEL_37;
  }

LABEL_39:
  v27 = __p;
  v8 = 0.0;
  if (__p)
  {
LABEL_40:
    v30 = v27;
    operator delete(v27);
  }

LABEL_41:
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  return v8;
}

void sub_2418ED5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void sub_2418ED5D4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2418EE818(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

id sub_2418ED694(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  LODWORD(v3) = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  [v2 setObject:v4 forKeyedSubscript:qword_27E54E8E0];

  v5 = sub_2418EC108(*(a1 + 48));
  [v2 setObject:v5 forKeyedSubscript:qword_27E54E8E8];

  return v2;
}

uint64_t sub_2418ED760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:qword_27E54E8E0];
  if (v4 && ([v3 objectForKeyedSubscript:qword_27E54E8E8], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [v3 objectForKeyedSubscript:qword_27E54E8E0];
    [v6 floatValue];
    *(a1 + 40) = v7;

    v8 = [v3 objectForKeyedSubscript:qword_27E54E8E8];
    sub_2418EC1D4(v8, *(a1 + 48));

    v9 = 0;
  }

  else
  {
    puts("linearModelFromInnerDictionary: bad or missing keys for model.");
    v9 = 0xFFFFFFFFLL;
  }

  return v9;
}

id sub_2418ED85C(uint64_t a1)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v3 = **(a1 + 40);
  if (*(*(a1 + 40) + 8) != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (v3 + 40 * v4);
      if (v6[7])
      {
        v7 = v6[8];
        v25[0] = qword_27E54E918;
        v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v25[1] = qword_27E54E920;
        v26[0] = v8;
        LODWORD(v9) = v7;
        v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
        v26[1] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
      }

      else
      {
        v12 = *(v6 + 1);
        v13 = *(v6 + 2);
        v14 = v6[6];
        v15 = *v6;
        v23[0] = qword_27E54E8F8;
        v8 = [MEMORY[0x277CCABB0] numberWithInt:v15];
        v24[0] = v8;
        v23[1] = qword_27E54E900;
        v10 = [MEMORY[0x277CCABB0] numberWithInt:v12];
        v24[1] = v10;
        v23[2] = qword_27E54E908;
        v16 = [MEMORY[0x277CCABB0] numberWithInt:v13];
        v24[2] = v16;
        v23[3] = qword_27E54E910;
        LODWORD(v17) = v14;
        v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
        v24[3] = v18;
        v23[4] = qword_27E54E918;
        v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v24[4] = v19;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];
      }

      [v2 addObject:v11];
      v4 = v5;
      v3 = **(a1 + 40);
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 40) + 8) - v3) >> 3) > v5++);
  }

  [v22 setObject:v2 forKeyedSubscript:qword_27E54E8F0];

  return v22;
}

uint64_t sub_2418EDB80(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 objectForKeyedSubscript:qword_27E54E8F0];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  puts("binaryTreeFromInnerDictionary: bad or missing keys for model.");

  return 0xFFFFFFFFLL;
}

void sub_2418EDE44(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_2418D3940();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_2418EEA1C(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

id sub_2418EDF4C(uint64_t a1)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v3 = *(a1 + 64);
  v4 = *v3;
  v5 = v3[1];
  if (v5 != *v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) <= v6)
      {
        sub_2418DD5E8();
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      sub_2418EEA74(&v23, *(v4 + 24 * v6), *(v4 + 24 * v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 24 * v6 + 8) - *(v4 + 24 * v6)) >> 3));
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v9 = v23;
      if (v24 != v23)
      {
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = sub_2418EC108((v9 + 24 * v10));
          [v8 addObject:v12];

          v10 = v11;
          v9 = v23;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3) > v11++;
        }

        while (v13);
      }

      [v2 addObject:v8];

      v26 = &v23;
      sub_2418DB4C8(&v26);
      v4 = **(a1 + 64);
      v5 = *(*(a1 + 64) + 8);
      v6 = ++v7;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) > v7);
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v15 = **(a1 + 72);
  if (*(*(a1 + 72) + 8) != v15)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = sub_2418EC108((v15 + 24 * v16));
      [v14 addObject:v18];

      v16 = v17;
      v15 = **(a1 + 72);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 72) + 8) - v15) >> 3) > v17++;
    }

    while (v13);
  }

  v19 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v27[0] = qword_27E54E928;
  v27[1] = qword_27E54E930;
  v20 = *(a1 + 48);
  v28[0] = v19;
  v28[1] = v20;
  v27[2] = qword_27E54E940;
  v27[3] = qword_27E54E938;
  v28[2] = v14;
  v28[3] = v2;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

  return v21;
}

uint64_t sub_2418EE26C(void *a1, void *a2)
{
  v32 = a2;
  if (!a1[8])
  {
    operator new();
  }

  if (!a1[9])
  {
    operator new();
  }

  v3 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v4 = a1[6];
  a1[6] = v3;

  v5 = [v32 objectForKeyedSubscript:qword_27E54E928];
  a1[7] = [v5 intValue];

  v6 = [v32 objectForKeyedSubscript:qword_27E54E930];
  v7 = a1[6];
  a1[6] = v6;

  v8 = [v32 objectForKeyedSubscript:qword_27E54E938];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 count];
    sub_2418EE664(a1[8], v10);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = v9;
        v14 = [v9 objectAtIndexedSubscript:v11];
        sub_2418EED48(&__p, [v14 count]);
        for (i = 0; [v14 count] > i; ++i)
        {
          v16 = [v14 objectAtIndexedSubscript:i];
          v17 = v16;
          if (v16)
          {
            sub_2418EC1D4(v16, __p + 3 * i);
          }
        }

        v18 = *a1[8];
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1[8] + 8) - v18) >> 3) <= v11)
        {
          sub_2418DD5E8();
        }

        v19 = (v18 + 24 * v11);
        if (v19 != &__p)
        {
          sub_2418DF4AC(v19, __p, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - __p) >> 3));
        }

        p_p = &__p;
        sub_2418DB4C8(&p_p);

        v11 = ++v12;
        v9 = v13;
      }

      while (v10 > v12);
    }
  }

  v20 = v9;
  v21 = [v32 objectForKeyedSubscript:qword_27E54E940];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 count];
    sub_2418ED5D4(a1[9], v23);
    if (v23)
    {
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = [v22 objectAtIndexedSubscript:v24];
        sub_2418DD410(&__p, [v26 count]);

        v27 = [v22 objectAtIndexedSubscript:v24];
        sub_2418EC1D4(v27, &__p);

        v28 = *a1[9];
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1[9] + 8) - v28) >> 3) <= v24)
        {
          sub_2418DD5E8();
        }

        v29 = (v28 + 24 * v24);
        if (v29 != &__p)
        {
          sub_2418DF224(v29, __p, v34, (v34 - __p) >> 2);
        }

        if (__p)
        {
          v34 = __p;
          operator delete(__p);
        }

        v24 = v25;
      }

      while (v23 > v25++);
    }
  }

  return 0;
}

void sub_2418EE664(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2418EEAFC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_2418DB4C8(&v8);
    }

    *(a1 + 8) = v7;
  }
}

void sub_2418EE720(void *a1)
{
  sub_2418EC820(a1);

  JUMPOUT(0x245CF24E0);
}

void sub_2418EE764(void *a1)
{
  sub_2418ECD9C(a1);

  JUMPOUT(0x245CF24E0);
}

void sub_2418EE7A4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_2418DB4C8(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_2418EE818(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2418D3940();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_2418DD590(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_2418EE984(v18);
  }
}

uint64_t sub_2418EE984(uint64_t a1)
{
  sub_2418EE9BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2418EE9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_2418EEA1C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2418D3A40();
}

uint64_t sub_2418EEA74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DD544(result, a4);
  }

  return result;
}

void sub_2418EEADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2418DB4C8(&a9);
  _Unwind_Resume(a1);
}

void sub_2418EEAFC(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2418D3940();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_2418EEC68(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_2418EECC0(v18);
  }
}

void sub_2418EEC68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2418D3A40();
}

void **sub_2418EECC0(void **a1)
{
  sub_2418EECF4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2418EECF4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_2418DB4C8(&v5);
  }
}

void *sub_2418EED48(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418DD544(result, a2);
  }

  return result;
}

double sub_2418EEDEC(unsigned int a1, float *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = a1;
  result = 0.0;
  do
  {
    v4 = *a2++;
    *&result = *&result + v4;
    --v2;
  }

  while (v2);
  *&result = *&result / a1;
  return result;
}

float sub_2418EEE1C(unsigned int a1, float a2)
{
  v2 = 1.0;
  if (a2 >= 0.0)
  {
    return a2 / (a1 + a2);
  }

  return v2;
}

__n128 sub_2418EEE4C@<Q0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *a1 = *MEMORY[0x277CC08F0];
  *(a1 + 16) = *(v1 + 16);
  return result;
}

CMTime *sub_2418EEE88@<X0>(CMTime *a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X2>, CMTime *a4@<X8>, Float64 a5@<D0>)
{
  v10 = *&a1->value;
  v11 = MEMORY[0x277CC08F0];
  *&a4->value = *MEMORY[0x277CC08F0];
  a4->epoch = *(v11 + 16);
  *&time1.value = v10;
  time1.epoch = a1->epoch;
  time2 = *a2;
  result = CMTimeCompare(&time1, &time2);
  if (result <= 0)
  {
    *&a4->value = *v11;
    epoch = *(v11 + 16);
  }

  else
  {
    time2 = *a1;
    rhs = *a2;
    CMTimeSubtract(&time1, &time2, &rhs);
    CMTimeMultiplyByFloat64(a4, &time1, a5);
    time2 = *a4;
    time1 = *a3;
    rhs = *a2;
    lhs = *a1;
    v14 = *a2;
    CMTimeSubtract(&v15, &lhs, &v14);
    CMTimeMinimum(&lhs, &rhs, &v15);
    CMTimeMinimum(&rhs, &time1, &lhs);
    result = CMTimeMinimum(&time1, &time2, &rhs);
    *&a4->value = *&time1.value;
    epoch = time1.epoch;
  }

  a4->epoch = epoch;
  return result;
}

uint64_t sub_2418EF014(uint64_t a1, __int128 *a2, __int128 *a3, CMTime *a4, __int128 *a5)
{
  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  v7 = *a5;
  *(a1 + 88) = *(a5 + 2);
  *(a1 + 72) = v7;
  v8 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v8;
  v9 = *&a4->value;
  *(a1 + 64) = a4->epoch;
  *(a1 + 48) = v9;
  time1 = *a4;
  time2 = *(a1 + 24);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    return 21;
  }

  time1 = *(a1 + 72);
  time2 = *(a1 + 24);
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return 21;
  }

  time1 = *a1;
  time2 = *(a1 + 24);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    puts("Input duration shorter than minimum period.");
    return 7;
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    time2 = *(a1 + 24);
    v11 = *(a1 + 72);
    CMTimeAdd(&time1, &time2, &v11);
    time2 = time1;
    v11 = *a1;
    if (CMTimeCompare(&time2, &v11) <= 0)
    {
      return 0;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t alRender(void *a1, double *a2, void *a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v75 = a3;
  v76 = v5;
  if (!v5 || !a2)
  {
    NSLog(&cfstr_InputvideoNilI.isa);
    v9 = 5;
    goto LABEL_110;
  }

  v6 = *MEMORY[0x277CBF3A8];
  v7 = *(MEMORY[0x277CBF3A8] + 8);
  context = objc_autoreleasePoolPush();
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x3032000000;
  v101[3] = sub_2418EFE58;
  v101[4] = sub_2418EFE68;
  v102 = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v100 = 0;
  v97 = 0;
  sbuf = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_2418EFE58;
  v95 = sub_2418EFE68;
  v96 = 0;
  v89 = *MEMORY[0x277CC0898];
  v90 = *(MEMORY[0x277CC0898] + 16);
  v87 = *MEMORY[0x277CC0898];
  v88 = *(MEMORY[0x277CC0898] + 16);
  v8 = *(a2 + 1) - *a2;
  if (!v8)
  {
    NSLog(&cfstr_AlrenderEmptyR.isa);
    v77 = 0;
    v78 = 0;
    v9 = 5;
    goto LABEL_109;
  }

  v9 = 0;
  v77 = 0;
  v78 = 0;
  v68 = 0;
  v69 = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  cf = 0;
  v10 = 0;
  v11 = v8 >> 3;
  v13 = a2[6];
  v12 = a2[7];
  v15 = a2[4];
  v14 = a2[5];
  if (v11 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v11;
  }

  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v86.a = *MEMORY[0x277CBF2C0];
  *&v86.c = v17;
  *&v86.tx = *(MEMORY[0x277CBF2C0] + 32);
  v65 = *MEMORY[0x277CBFAF0];
  v64 = *MEMORY[0x277CBFAB8];
  do
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(*a2 + 8 * v10);
    v20 = *(v19 + 6);
    v21 = *(v19 + 7) - v20;
    if (v21 != *(v19 + 10) - *(v19 + 9) || (v22 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3), v22 != (*(v19 + 13) - *(v19 + 12)) >> 2))
    {
      NSLog(&cfstr_AlrenderMalfor.isa);
      goto LABEL_15;
    }

    v82 = *MEMORY[0x277CC0898];
    v83 = *(MEMORY[0x277CC0898] + 16);
    v80 = *v19;
    v81 = *(v19 + 2);
    if (v22 == 1)
    {
      v74 = 0;
      v25 = 0;
      v26 = 0;
LABEL_22:
      v31 = 0;
      v32 = v26;
      v84 = *v20;
      v85 = *(v20 + 2);
      v26 = v25;
      v25 = v32;
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if (v22 != 2)
    {
      NSLog(&cfstr_AlrenderMalfor_0.isa);
      v29 = 1;
      v9 = 26;
      goto LABEL_16;
    }

    v23 = *v20;
    time1.c = *(v20 + 2);
    *&time1.a = v23;
    *&time2.a = *(v20 + 24);
    time2.c = *(v20 + 5);
    v24 = CMTimeCompare(&time1, &time2);
    v25 = v24 > 0;
    v26 = v24 < 1;
    v27 = *(v19 + 6);
    v28 = (v27 + 24 * (v24 < 1));
    v84 = *v28;
    v85 = v28[2];
    v20 = (v27 + 24 * (v24 > 0));
    v82 = *v20;
    v83 = *(v20 + 2);
    if (*(v19 + 120) == 1)
    {
      v82 = *v28;
      v83 = v28[2];
      v74 = 1;
      goto LABEL_22;
    }

    v74 = 0;
    v31 = 1;
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_27:
    if (!v78)
    {
      v33 = [[VideoReader alloc] initWithAsset:v76];
      v34 = v33;
      if (!v33)
      {
        v78 = 0;
        goto LABEL_15;
      }

      [(VideoReader *)v33 setPixelFormatOptions:3588];
      [(VideoReader *)v34 preferredTransform];
      CGAffineTransformInvert(&time1, &time2);
      v86 = time1;
      *&time1.a = v84;
      time1.c = v85;
      [(VideoReader *)v34 setReadStartT:&time1];
      v78 = v34;
    }

    if (v77)
    {
      v35 = 0;
    }

    else
    {
      v35 = v31;
    }

    if (v35 == 1)
    {
      v36 = [[VideoReader alloc] initWithAsset:v76];
      v37 = v36;
      if (v36)
      {
        [(VideoReader *)v36 setPixelFormatOptions:3588];
        *&time1.a = v82;
        time1.c = v83;
        [(VideoReader *)v37 setReadStartT:&time1];
        v77 = v37;
        goto LABEL_36;
      }

      v77 = 0;
LABEL_15:
      v29 = 1;
      v9 = 5;
      goto LABEL_16;
    }

LABEL_36:
    if (cf)
    {
      *&time1.a = v89;
      time1.c = v90;
      *&time2.a = v84;
      time2.c = v85;
      if (!CMTimeCompare(&time1, &time2))
      {
        sbuf = cf;
        CFRetain(cf);
      }
    }

    v38 = sbuf;
    if (!sbuf && v72)
    {
      *&time1.a = v87;
      time1.c = v88;
      *&time2.a = v84;
      time2.c = v85;
      if (!CMTimeCompare(&time1, &time2))
      {
        sbuf = v72;
        CFRetain(v72);
      }

      v38 = sbuf;
    }

    if (!v38)
    {
      *&time1.a = v84;
      time1.c = v85;
      v58 = [(VideoReader *)v78 getFrameAtTime:&time1 exactTime:1 frame:&sbuf];
      if (v58)
      {
        goto LABEL_67;
      }

      v38 = sbuf;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(v38);
    v40 = sub_24190A150(ImageBuffer, 0);
    v41 = v92[5];
    v92[5] = v40;

    if (!v92[5])
    {
      NSLog(&cfstr_AlrenderErrorC.isa);
      goto LABEL_93;
    }

    v42 = v74 | v31;
    if (v42)
    {
      if (cf)
      {
        *&time1.a = v89;
        time1.c = v90;
        *&time2.a = v82;
        time2.c = v83;
        if (!CMTimeCompare(&time1, &time2))
        {
          v97 = cf;
          CFRetain(cf);
        }
      }

      v43 = v97;
      if (!v97 && v72)
      {
        *&time1.a = v87;
        time1.c = v88;
        *&time2.a = v82;
        time2.c = v83;
        if (!CMTimeCompare(&time1, &time2))
        {
          v97 = v72;
          CFRetain(v72);
        }

        v43 = v97;
      }

      if (!v43)
      {
        if (v74)
        {
          v62 = v78;
        }

        else
        {
          v62 = v77;
        }

        *&time1.a = v82;
        time1.c = v83;
        v58 = [(VideoReader *)v62 getFrameAtTime:&time1 exactTime:1 frame:&v97];
        if (v58)
        {
LABEL_67:
          v59 = sub_241904AC0(v58);
          NSLog(&cfstr_AlrenderErrorR.isa, v59);
          v29 = 1;
          v9 = 9;
          goto LABEL_16;
        }

        v43 = v97;
      }

      v44 = CMSampleBufferGetImageBuffer(v43);
      v45 = sub_24190A150(v44, 0);

      v69 = v45;
      if (!v45)
      {
        v69 = 0;
        NSLog(&cfstr_AlrenderErrorC.isa);
        goto LABEL_93;
      }
    }

    v46 = 0;
    v47 = *(*(v19 + 9) + 24 * v26);
    do
    {
      *&v104[v46] = *(v47 + v46);
      v46 += 4;
    }

    while (v46 != 36);
    v66 = sub_2419054BC(v92[5], v104, 0, &v86, v15, v14, v13, v12, v6, v7);

    if (!v66)
    {
      v71 = 0;
      NSLog(&cfstr_AlrenderErrorT.isa);
      goto LABEL_93;
    }

    if (!v42)
    {
      v60 = v66;

      v57 = v60;
      goto LABEL_74;
    }

    v48 = 0;
    v49 = *(*(v19 + 9) + 24 * v25);
    do
    {
      *&v104[v48] = *(v49 + v48);
      v48 += 4;
    }

    while (v48 != 36);
    v50 = sub_2419054BC(v69, v104, 0, &v86, v15, v14, v13, v12, v6, v7);

    if (v50)
    {
      v51 = *(*(v19 + 12) + 4 * v25);
      v67 = v50;
      v71 = v66;
      memset(&time1, 0, 24);
      time1.d = v51;
      v52 = [MEMORY[0x277CBF750] filterWithName:@"CIColorMatrix"];
      [v52 setDefaults];
      [v52 setValue:v67 forKey:v65];
      v53 = [MEMORY[0x277CBF788] vectorWithValues:&time1 count:4];
      [v52 setValue:v53 forKey:@"inputAVector"];

      v54 = [MEMORY[0x277CBF750] filterWithName:@"CISourceOverCompositing"];
      [v54 setDefaults];
      v55 = [v52 outputImage];
      [v54 setValue:v55 forKey:v65];

      [v54 setValue:v71 forKey:v64];
      v56 = [v54 outputImage];

      if (v56)
      {
        v57 = v56;
LABEL_74:
        time1.c = v81;
        *&time1.a = v80;
        v68 = v57;
        if ((v75[2]() & 1) == 0)
        {
          v9 = 1;
          v71 = v66;
LABEL_26:
          v29 = 1;
          goto LABEL_16;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v72)
        {
          CFRelease(v72);
        }

        v61 = sbuf;
        v89 = v84;
        v90 = v85;
        sbuf = 0;
        v72 = v97;
        cf = v61;
        if (v97)
        {
          if (v74)
          {
            v9 = 0;
            v29 = 0;
            v87 = v82;
            v88 = v83;
            v97 = 0;
          }

          else
          {
            CFRelease(v97);
            v72 = 0;
            v9 = 0;
            v29 = 0;
            v97 = 0;
            v87 = *MEMORY[0x277CC0898];
            v88 = *(MEMORY[0x277CC0898] + 16);
          }
        }

        else
        {
          v72 = 0;
          v9 = 0;
          v29 = 0;
        }

        goto LABEL_95;
      }

      v68 = 0;
      NSLog(&cfstr_ErrorOnCiimage.isa);
LABEL_93:
      v29 = 1;
      v9 = 10;
      goto LABEL_16;
    }

    v67 = 0;
    NSLog(&cfstr_AlrenderErrorT_0.isa);
    v29 = 1;
    v9 = 10;
LABEL_95:
    v71 = v66;
LABEL_16:
    objc_autoreleasePoolPop(v18);
    if (++v10 == v16)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }
  }

  while ((v30 & 1) == 0);
  if (sbuf)
  {
    CFRelease(sbuf);
    sbuf = 0;
  }

  if (v97)
  {
    CFRelease(v97);
    v97 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (!v9)
  {
    time1.c = *(MEMORY[0x277CC08F0] + 16);
    *&time1.a = *MEMORY[0x277CC08F0];
    v9 = (v75[2])(v75, 0, &time1, 0) ^ 1;
  }

LABEL_109:
  _Block_object_dispose(&v91, 8);

  _Block_object_dispose(v99, 8);
  _Block_object_dispose(v101, 8);

  objc_autoreleasePoolPop(context);
LABEL_110:

  return v9;
}

void sub_2418EFD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);

  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2418EFE58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 alGetLoopPeriod@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 88);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 104);
  return result;
}

__n128 alGetLoopStart@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  a2[1].n128_u64[0] = a1[5].n128_u64[0];
  return result;
}

__n128 alGetFadeDuration@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[7];
  *a2 = result;
  a2[1].n128_u64[0] = a1[8].n128_u64[0];
  return result;
}

void sub_2418EFEBC(float32x2_t **a1, float32x2_t *a2, float32x2_t *a3, float *a4)
{
  v7 = a1[1] - *a1;
  if (v7 < 2)
  {
    v13 = 0;
    v27 = 0.0;
    v28 = 0.0;
    _S9 = 0.0;
    _D3 = 0;
  }

  else
  {
    v9 = 0;
    v10 = (v7 - 1);
    v11 = 0;
    do
    {
      v12 = (*a1)[v9];
      v11 = vadd_f32(v11, v12);
      ++v9;
    }

    while (v7 != v9);
    v12.f32[0] = v7;
    v13 = vdiv_f32(v11, vdup_lane_s32(v12, 0));
    sub_2418F315C(&__p, v7);
    v14 = *a1;
    v15 = __p;
    v16 = a1[1] - *a1;
    if (v16)
    {
      v17 = v16 >> 3;
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = __p;
      do
      {
        v19 = *v14++;
        *v18++ = vsub_f32(v19, v13);
        --v17;
      }

      while (v17);
    }

    v20 = 1.0 / v10;
    if (v41 == v15)
    {
      v22 = 0;
      v23 = 0.0;
    }

    else
    {
      v21 = v41 - v15;
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v22 = 0;
      v23 = 0.0;
      v24 = v15;
      do
      {
        v25 = *v24++;
        v26 = v25;
        v23 = v23 + (v26.f32[0] * v26.f32[0]);
        v22 = vmla_lane_f32(v22, v26, v26, 1);
        --v21;
      }

      while (v21);
    }

    _S9 = v20 * v23;
    _D3 = vmul_n_f32(v22, v20);
    v31 = _D3.f32[1] + (v20 * v23);
    __asm { FMLA            S0, S9, V3.S[1] }

    v37 = -(_S0 - (v31 * v31) * 0.25);
    v38 = sqrtf(v37);
    if (v15)
    {
      v41 = v15;
      v39 = _D3;
      operator delete(v15);
      _D3 = v39;
    }

    v27 = v38 + (v31 * 0.5);
    v28 = -(v38 - (v31 * 0.5));
  }

  *a2 = v13;
  a3->f32[0] = _S9;
  a3->i32[1] = _D3.i32[0];
  a3[1] = _D3;
  *a4 = v27;
  a4[1] = v28;
}

uint64_t sub_2418F005C(uint64_t result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *result;
  v6 = *(result + 8) - *result;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = *v5;
    if (v7 < 2)
    {
      v13 = v7;
      v14 = v8 / v7;
      v15 = 0.0;
      v11 = *v5;
    }

    else
    {
      v9 = 1;
      v10 = *v5;
      v11 = *v5;
      do
      {
        v12 = v5[v9];
        if (v11 < v12)
        {
          v11 = v5[v9];
        }

        if (v12 < v10)
        {
          v10 = v5[v9];
        }

        v8 = v8 + v12;
        ++v9;
      }

      while (v7 != v9);
      v13 = v7;
      v14 = v8 / v7;
      v15 = 0.0;
      v16 = v5 + 1;
      v17 = v7 - 1;
      do
      {
        v18 = *v16++;
        v15 = v15 + ((v14 - v18) * (v14 - v18));
        --v17;
      }

      while (v17);
      v8 = v10;
    }

    v19 = sqrtf(v15 / v13);
  }

  else
  {
    v11 = 0.0;
    v8 = 0.0;
    v19 = 0.0;
    v14 = 0.0;
  }

  *a2 = v14;
  *a4 = v11;
  *a3 = v8;
  *a5 = v19;
  return result;
}

uint64_t *sub_2418F0120(uint64_t *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *result;
  v6 = result[1] - *result;
  if (v6)
  {
    v7 = 0;
    v8 = v6 >> 3;
    v9 = v8;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v10 = (v5 + 4);
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = sqrtf((*v10 * *v10) + (*(v10 - 1) * *(v10 - 1)));
      if (v13 >= v14)
      {
        v13 = v14;
      }

      if (!v7)
      {
        v13 = v14;
      }

      v11 = v11 + v14;
      if (v12 < v14)
      {
        v12 = v14;
      }

      ++v7;
      v10 += 2;
    }

    while (v8 != v7);
    v15 = (v5 + 4);
    v16 = 0.0;
    v17 = v11 / v9;
    do
    {
      v18 = sqrtf((*v15 * *v15) + (*(v15 - 1) * *(v15 - 1)));
      v16 = v16 + ((v17 - v18) * (v17 - v18));
      v15 += 2;
      --v8;
    }

    while (v8);
    v19 = sqrtf(v16 / v9);
  }

  else
  {
    v13 = 0.0;
    v12 = 0.0;
    v19 = 0.0;
    v17 = 0.0;
  }

  *a2 = v17;
  *a3 = v13;
  *a4 = v12;
  *a5 = v19;
  return result;
}

void *sub_2418F052C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_2418DB6FC(result, a2);
    }

    sub_2418D3940();
  }

  return result;
}

void sub_2418F080C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2418F156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418F1BF8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2418D3940();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2418E2ED8(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2418F2D14(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_2418DB584(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
}

char **sub_2418F2D58(char **result, char **a2)
{
  if (result != a2)
  {
    return sub_2418DF350(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return result;
}

uint64_t sub_2418F2DA0(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_2418F2FB4(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
}

char **sub_2418F2DD8(char **result, char **a2)
{
  if (result != a2)
  {
    return sub_2418F3030(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

uint64_t sub_2418F2E14(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return sub_2418F2FB4(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
}

char **sub_2418F2E4C(char **result, char **a2)
{
  if (result != a2)
  {
    return sub_2418F3030(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

uint64_t sub_2418F2FB4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418E2E9C(result, a4);
  }

  return result;
}

void sub_2418F3014(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2418F3030(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2418E2E9C(v6, v10);
    }

    sub_2418D3940();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_2418F315C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418E2E9C(result, a2);
  }

  return result;
}

void sub_2418F31B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_2418F31D4(double *a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"origin_x";
  v2 = *a1;
  *&v2 = *a1;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v13[0] = v3;
  v12[1] = @"origin_y";
  v4 = a1[1];
  *&v4 = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v13[1] = v5;
  v12[2] = @"width";
  v6 = a1[2];
  *&v6 = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v13[2] = v7;
  v12[3] = @"height";
  v8 = a1[3];
  *&v8 = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

double sub_2418F335C(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"origin_x"];
  v3 = [v1 objectForKeyedSubscript:@"origin_y"];
  v4 = [v1 objectForKeyedSubscript:@"width"];
  v5 = [v1 objectForKeyedSubscript:@"height"];
  [v2 doubleValue];
  v7 = v6;
  [v3 doubleValue];
  [v4 doubleValue];
  [v5 doubleValue];

  return v7;
}

id sub_2418F3490(CMTime *a1, void *a2, float a3)
{
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v15 = *a1;
  v7 = CMTimeCopyAsDictionary(&v15, *MEMORY[0x277CBECE8]);
  [v6 setObject:v7 forKeyedSubscript:qword_27E54E948];

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
  for (i = 0; i != 36; i += 4)
  {
    LODWORD(v9) = *(*a2 + i);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v8 addObject:v11];
  }

  [v6 setObject:v8 forKeyedSubscript:qword_27E54E950];
  *&v12 = a3;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  [v6 setObject:v13 forKeyedSubscript:qword_27E54E958];

  return v6;
}

void sub_2418F35D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2418F361C(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v14 = *a1;
  v3 = *MEMORY[0x277CBECE8];
  v4 = CMTimeCopyAsDictionary(&v14, *MEMORY[0x277CBECE8]);
  [v2 setObject:v4 forKeyedSubscript:qword_27E54E960];

  v14 = *(a1 + 24);
  v5 = CMTimeCopyAsDictionary(&v14, v3);
  [v2 setObject:v5 forKeyedSubscript:qword_27E54E968];

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = *(a1 + 96);
  if (*(a1 + 104) != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 4 * v9);
      v14 = *(*(a1 + 48) + v8);
      v11 = sub_2418F3490(&v14, (*(a1 + 72) + v8), v10);
      [v6 addObject:v11];

      ++v9;
      v7 = *(a1 + 96);
      v8 += 24;
    }

    while (v9 < (*(a1 + 104) - v7) >> 2);
  }

  [v2 setObject:v6 forKeyedSubscript:qword_27E54E970];
  if (*(a1 + 120) == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v2 setObject:v12 forKeyedSubscript:qword_27E54E978];
  }

  return v2;
}

void sub_2418F3814(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = a1;
  operator new();
}

id sub_2418F3F94(uint64_t *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = sub_2418E8FD0(*(a1 + 6));
  [v2 setObject:v3 forKeyedSubscript:qword_27E54E998];

  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 7)];
  [v2 setObject:v4 forKeyedSubscript:qword_27E54E9A0];

  v5 = sub_2418F31D4(a1 + 4);
  [v2 setObject:v5 forKeyedSubscript:qword_27E54E9A8];

  *&v20.value = *(a1 + 4);
  v20.epoch = a1[10];
  *&v19.value = *(a1 + 11);
  v19.epoch = a1[13];
  *&v18.value = *(a1 + 7);
  v18.epoch = a1[16];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  time = v20;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
  [v6 setObject:v8 forKeyedSubscript:qword_27E54E980];

  time = v19;
  v9 = CMTimeCopyAsDictionary(&time, v7);
  [v6 setObject:v9 forKeyedSubscript:qword_27E54E988];

  time = v18;
  v10 = CMTimeCopyAsDictionary(&time, v7);
  [v6 setObject:v10 forKeyedSubscript:qword_27E54E990];

  [v2 setObject:v6 forKeyedSubscript:qword_27E54E9B8];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = *a1;
  if (a1[1] != *a1)
  {
    v13 = 0;
    do
    {
      v14 = sub_2418F361C(*(v12 + 8 * v13));
      [v11 addObject:v14];

      ++v13;
      v12 = *a1;
    }

    while (v13 < (a1[1] - *a1) >> 3);
  }

  [v2 setObject:v11 forKeyedSubscript:qword_27E54E9B0];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
  [v2 setObject:v15 forKeyedSubscript:qword_27E54E9C0];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  [v2 setObject:v16 forKeyedSubscript:qword_27E54E9C8];

  return v2;
}

uint64_t sub_2418F42B8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(a1 + 136) = sub_2418F48A8(v3, qword_27E54E9C0);
  v4 = sub_2418F48A8(v3, qword_27E54E9C8);
  *(a1 + 140) = v4;
  if (v4 < 3)
  {
    v6 = [v3 objectForKeyedSubscript:qword_27E54E998];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LODWORD(v21.value) = -1;
        *(a1 + 24) = sub_2418E8FF4(v6, &v21);
        if (!LODWORD(v21.value))
        {
LABEL_10:
          v7 = [v3 objectForKeyedSubscript:qword_27E54E9A0];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v5 = 0;
LABEL_32:

            goto LABEL_33;
          }

          *(a1 + 28) = [v7 intValue];
          v8 = [v3 objectForKeyedSubscript:qword_27E54E9A8];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v5 = 0;
LABEL_31:

            goto LABEL_32;
          }

          *(a1 + 32) = sub_2418F335C(v8);
          *(a1 + 40) = v9;
          *(a1 + 48) = v10;
          *(a1 + 56) = v11;
          v12 = [v3 objectForKeyedSubscript:qword_27E54E9B8];

          v8 = v12;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v5 = 0;
            v17 = v8;
LABEL_30:

            goto LABEL_31;
          }

          v13 = [v8 objectForKeyedSubscript:qword_27E54E980];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            CMTimeMakeFromDictionary(&v21, v13);
            *(a1 + 64) = v21;
            v14 = [v8 objectForKeyedSubscript:qword_27E54E988];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              CMTimeMakeFromDictionary(&v21, v14);
              *(a1 + 88) = v21;
              v15 = [v8 objectForKeyedSubscript:qword_27E54E990];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                CMTimeMakeFromDictionary(&v21, v15);
                *(a1 + 112) = v21;

                v16 = *a1;
                if (*a1)
                {
                  *(a1 + 8) = v16;
                  operator delete(v16);
                  *a1 = 0;
                  *(a1 + 8) = 0;
                  *(a1 + 16) = 0;
                }

                *a1 = 0;
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                v17 = [v3 objectForKeyedSubscript:qword_27E54E9B0];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v5 = 0;
                  goto LABEL_30;
                }

                memset(v20, 0, sizeof(v20));
                v13 = v17;
                if ([(__CFDictionary *)v13 countByEnumeratingWithState:v20 objects:v22 count:16])
                {
                  v18 = **(&v20[0] + 1);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    sub_2418F3814(v18);
                  }

                  v5 = 0;
                }

                else
                {
                  v5 = 1;
                }

                v17 = v13;
                goto LABEL_29;
              }

              v5 = 0;
              v13 = v15;
            }

            else
            {
              v5 = 0;
              v13 = v14;
            }
          }

          else
          {
            v5 = 0;
          }

          v17 = v8;
LABEL_29:

          goto LABEL_30;
        }
      }
    }

    else if (*(a1 + 136) <= 1u)
    {
      *(a1 + 24) = 0;
      goto LABEL_10;
    }

    v5 = 0;
LABEL_33:

    goto LABEL_34;
  }

  NSLog(&cfstr_AllooprecipeIn.isa, *(a1 + 136), v4, 2);
  v5 = 0;
LABEL_34:

  return v5;
}

uint64_t sub_2418F48A8(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2418F4924(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 72);
  sub_2418DB4C8(&v5);
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  return a1;
}

__n128 sub_2418F4980(uint64_t a1, int a2)
{
  *a1 = a2;
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(a1 + 4) = v2;
  *(a1 + 20) = v2;
  *(a1 + 36) = -1;
  *(a1 + 40) = @"NONE";
  *(a1 + 48) = @"NONE";
  *(a1 + 56) = 0;
  v3 = MEMORY[0x277CC0898];
  result = *MEMORY[0x277CC0898];
  *(a1 + 64) = *MEMORY[0x277CC0898];
  v5 = *(v3 + 16);
  *(a1 + 80) = v5;
  *(a1 + 88) = result;
  *(a1 + 104) = v5;
  *(a1 + 112) = 0x7FC00000FFFFFFFELL;
  *(a1 + 120) = @"NONE";
  return result;
}

id sub_2418F49D8(uint64_t a1)
{
  v35[18] = *MEMORY[0x277D85DE8];
  v34[0] = @"finalDecision";
  v2 = *(a1 + 4) + 2;
  if (v2 > 3)
  {
    v3 = @"UnknownGatingResult";
  }

  else
  {
    v3 = off_278CF7DF0[v2];
  }

  v35[0] = v3;
  v34[1] = @"recipeFlavor";
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:sub_2418DB33C(*a1)];
  v35[1] = v4;
  v34[2] = @"mShortInputDecision";
  v5 = *(a1 + 8) + 2;
  if (v5 > 3)
  {
    v6 = @"UnknownGatingResult";
  }

  else
  {
    v6 = off_278CF7DF0[v5];
  }

  v35[2] = v6;
  v34[3] = @"mPreGateStillMetadataDecision";
  v7 = *(a1 + 12) + 2;
  if (v7 > 3)
  {
    v8 = @"UnknownGatingResult";
  }

  else
  {
    v8 = off_278CF7DF0[v7];
  }

  v35[3] = v8;
  v34[4] = @"mPreGateVideoTrimDecision";
  v9 = *(a1 + 16) + 2;
  if (v9 > 3)
  {
    v10 = @"UnknownGatingResult";
  }

  else
  {
    v10 = off_278CF7DF0[v9];
  }

  v35[4] = v10;
  v34[5] = @"mPreGateVideoMLDecision";
  v11 = *(a1 + 20) + 2;
  if (v11 > 3)
  {
    v12 = @"UnknownGatingResult";
  }

  else
  {
    v12 = off_278CF7DF0[v11];
  }

  v35[5] = v12;
  v34[6] = @"mPreGateFacesDecision";
  v13 = *(a1 + 24) + 2;
  if (v13 > 3)
  {
    v14 = @"UnknownGatingResult";
  }

  else
  {
    v14 = off_278CF7DF0[v13];
  }

  v35[6] = v14;
  v34[7] = @"stabilizeGateDecision";
  v15 = *(a1 + 28) + 2;
  if (v15 > 3)
  {
    v16 = @"UnknownGatingResult";
  }

  else
  {
    v16 = off_278CF7DF0[v15];
  }

  v35[7] = v16;
  v34[8] = @"loopActivityDecision";
  v17 = *(a1 + 32) + 2;
  if (v17 > 3)
  {
    v18 = @"UnknownGatingResult";
  }

  else
  {
    v18 = off_278CF7DF0[v17];
  }

  v35[8] = v18;
  v34[9] = @"postGateDecision";
  v19 = *(a1 + 36) + 2;
  if (v19 > 3)
  {
    v20 = @"UnknownGatingResult";
  }

  else
  {
    v20 = off_278CF7DF0[v19];
  }

  v21 = *(a1 + 48);
  v35[9] = v20;
  v35[10] = v21;
  v34[10] = @"preGateStillFailureFeature";
  v34[11] = @"preGateVideoTrimFailureReason";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 56)];
  v35[11] = v22;
  v34[12] = @"preGateVideoTrimTimeStart";
  v33 = *(a1 + 64);
  v23 = *MEMORY[0x277CBECE8];
  v24 = CMTimeCopyAsDictionary(&v33, *MEMORY[0x277CBECE8]);
  v35[12] = v24;
  v34[13] = @"preGateVideoTrimTimeLength";
  v33 = *(a1 + 88);
  v25 = CMTimeCopyAsDictionary(&v33, v23);
  v26 = *(a1 + 40);
  v35[13] = v25;
  v35[14] = v26;
  v34[14] = @"preGateFacesExplanation";
  v34[15] = @"stabilizeResult";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 112)];
  v35[15] = v27;
  v34[16] = @"postGateClassifierScore";
  LODWORD(v28) = *(a1 + 116);
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v34[17] = @"postGateDecisionExplanation";
  v30 = *(a1 + 120);
  v35[16] = v29;
  v35[17] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:18];

  return v31;
}

uint64_t sub_2418F4E08(uint64_t a1, int a2)
{
  v2 = 4294967294;
  *(*(a1 + 16) + 12) = -2;
  if (a2)
  {
    if (*(*(a1 + 24) + 88) && (v4 = *(*(a1 + 24) + 88), [v4 featuresDict], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
    {
      if (*a1)
      {
        v6 = [*a1 objectForKeyedSubscript:@"PreGateStill"];
        v7 = v6;
        if (v6)
        {
          v8 = [v6 objectForKeyedSubscript:@"ALGClassifier"];
          v9 = [v7 objectForKeyedSubscript:@"ALGFeatureInstructions"];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 objectForKeyedSubscript:@"ALGFeatInstrFeatureList"];
          }

          else
          {
            v11 = 0;
          }

          if (v8 | v11)
          {
            v29 = v8;
            v12 = sub_2418EC2D4(v8);
            if (v12)
            {
              v13 = 0;
              __p = 0;
              v33 = 0;
              v34 = 0;
              while (1)
              {
                v14 = v13;
                if ([v11 count] <= v13)
                {
                  break;
                }

                v15 = [v11 objectAtIndexedSubscript:v13];
                v16 = [v15 objectForKeyedSubscript:@"ALGFeatParams"];

                if (!v16 || ([v5 objectForKeyedSubscript:v16], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
                {
                  NSLog(&cfstr_Evaluatepregat.isa, v16);

                  goto LABEL_22;
                }

                v18 = [v5 objectForKeyedSubscript:v16];
                [v18 floatValue];
                v31 = v19;
                sub_2418F51BC(&__p, &v31);

                v13 = v14 + 1;
              }

              v30 = -1082130432;
              v31 = -1;
              v20 = sub_2418EC9F8(v12, &__p, &v31, &v30);
              v21 = *(a1 + 16);
              *(v21 + 12) = !v20;
              if (v20)
              {
                v22 = *(v21 + 48);
                *(v21 + 48) = @"Unknown";

                v23 = (*(*v12 + 24))(v12);
                if ((v23 & 0x80000000) == 0 && [v11 count] > v23)
                {
                  v24 = [v11 objectAtIndexedSubscript:?];
                  v25 = [v24 objectForKeyedSubscript:@"ALGFeatParams"];
                  v26 = *(a1 + 16);
                  v27 = *(v26 + 48);
                  *(v26 + 48) = v25;
                }
              }

LABEL_22:
              (*(*v12 + 8))(v12);
              if (__p)
              {
                v33 = __p;
                operator delete(__p);
              }

              v8 = v29;
            }
          }
        }
      }
    }

    else
    {
      NSLog(&cfstr_Algatingevalua.isa);
      v5 = 0;
    }

    v2 = *(*(a1 + 16) + 12);
  }

  return v2;
}

void sub_2418F5110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2418F51BC(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2418D3940();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2418DB6FC(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_2418F529C(uint64_t a1, CMTime *a2, _OWORD *a3, uint64_t a4, CMTime *a5, CMTime *a6, int a7)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = 4294967294;
  *(*(a1 + 16) + 16) = -2;
  if (a7)
  {
    v14 = *(*(a1 + 24) + 88);
    if (!v14)
    {
LABEL_23:
      v7 = *(*(a1 + 16) + 16);

      return v7;
    }

    v15 = objc_alloc_init(PregateAnalyzer);
    [(PregateAnalyzer *)v15 setFeatureBuilder:v14];
    start = *a5;
    duration = *a6;
    CMTimeRangeMake(&v35, &start, &duration);
    [(PregateAnalyzer *)v15 setInputTrimTime:&v35];
    if (*a1)
    {
      v16 = [*a1 objectForKeyedSubscript:@"PreGateVideoES"];
      if (v16)
      {
        [(PregateAnalyzer *)v15 setPregateParameters:v16];
      }
    }

    if ((~*(a4 + 12) & 0x11) == 0)
    {
      value = *MEMORY[0x277CC0888];
      flags = *(MEMORY[0x277CC0888] + 12);
      timescale = *(MEMORY[0x277CC0888] + 8);
      epoch = *(MEMORY[0x277CC0888] + 16);
      v32 = [v14 featuresDict];
      v18 = [v32 objectForKeyedSubscript:@"vidTrackStillFrameTime"];
      v19 = v18 == 0;

      if (!v19)
      {
        v20 = [v32 objectForKeyedSubscript:@"vidTrackStillFrameTime"];
        CMTimeMakeFromDictionary(&v35.start, v20);
        value = v35.start.value;
        flags = v35.start.flags;
        timescale = v35.start.timescale;
        epoch = v35.start.epoch;
      }

      if ((~flags & 0x11) != 0)
      {
        if ((~a5->flags & 0x11) == 0 || (*&v35.start.value = *&a5->value, v35.start.epoch = a5->epoch, start.value = value, start.timescale = timescale, start.flags = flags, start.epoch = epoch, CMTimeCompare(&v35.start, &start) <= 0))
        {
          if ((~a6->flags & 0x11) == 0 || (start = *a5, duration = *a6, CMTimeAdd(&v35.start, &start, &duration), start.value = value, start.timescale = timescale, start.flags = flags, start.epoch = epoch, (CMTimeCompare(&v35.start, &start) & 0x80000000) == 0))
          {
            *a4 = value;
            *(a4 + 8) = timescale;
            *(a4 + 12) = flags;
            *(a4 + 16) = epoch;
          }
        }
      }
    }

    LODWORD(value) = 0;
    *&v35.start.value = *a4;
    v35.start.epoch = *(a4 + 16);
    [(PregateAnalyzer *)v15 setRequiredFrameTime:&v35, epoch];
    v21 = a3[1];
    *&v35.start.value = *a3;
    *&v35.start.epoch = v21;
    *&v35.duration.timescale = a3[2];
    [(PregateAnalyzer *)v15 setRequiredTimeRange:&v35];
    *&v35.start.value = *&a2->value;
    v35.start.epoch = a2->epoch;
    [(PregateAnalyzer *)v15 setMinimumRequiredTrimLength:&v35];
    if ([(PregateAnalyzer *)v15 processPregateSuccess:&value])
    {
      v22 = *(a1 + 16);
      v23 = -2;
    }

    else
    {
      v24 = value;
      v25 = *(a1 + 16);
      *(v25 + 56) = value;
      if (v24)
      {
        *(v25 + 16) = 0;
        goto LABEL_22;
      }

      memset(&v35, 0, sizeof(v35));
      if (v15)
      {
        [(PregateAnalyzer *)v15 outputTrimTime];
        if ((v35.start.flags & 1) != 0 && ((v35.duration.flags | v35.start.flags) & 0x10) == 0 && (v35.duration.flags & 1) != 0 && !v35.duration.epoch && (v35.duration.value & 0x8000000000000000) == 0)
        {
          start = v35.duration;
          duration = *a2;
          if ((CMTimeCompare(&start, &duration) & 0x80000000) == 0)
          {
            *&a5->value = *&v35.start.value;
            a5->epoch = v35.start.epoch;
            *a6 = v35.duration;
            v27 = *(a1 + 16);
            v28 = *&a5->value;
            *(v27 + 80) = a5->epoch;
            *(v27 + 64) = v28;
            v29 = *(a1 + 16);
            v30 = *&a6->value;
            *(v29 + 104) = a6->epoch;
            *(v29 + 88) = v30;
          }
        }
      }

      v22 = *(a1 + 16);
      v23 = 1;
    }

    *(v22 + 16) = v23;
LABEL_22:

    goto LABEL_23;
  }

  return v7;
}

uint64_t sub_2418F5718(void *a1, int a2)
{
  v2 = 4294967294;
  *(a1[2] + 20) = -2;
  if (a2)
  {
    v4 = *(a1[3] + 88);
    v5 = v4;
    if (v4 && ([v4 featuresDict], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = a1[1];
      if (v7)
      {
        v8 = [v7 objectForKeyedSubscript:@"PreGateVideoML"];
        v9 = v8;
        if (v8)
        {
          v23 = [v8 objectForKeyedSubscript:@"ALGClassifier"];
          v10 = [v9 objectForKeyedSubscript:@"ALGFeatureInstructions"];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 objectForKeyedSubscript:@"ALGFeatInstrFeatureList"];
          }

          else
          {
            v12 = 0;
          }

          v13 = v23;
          if (v23 | v12)
          {
            v13 = v23;
            v22 = sub_2418EC2D4(v23);
            if (v22)
            {
              v14 = 0;
              __p = 0;
              v27 = 0;
              v28 = 0;
              while ([v12 count] > v14)
              {
                v15 = [v12 objectAtIndexedSubscript:v14];
                v16 = [v15 objectForKeyedSubscript:@"ALGFeatParams"];

                if (!v16 || ([v6 objectForKeyedSubscript:v16], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
                {
                  NSLog(&cfstr_Evaluatestilla.isa, v16);

                  goto LABEL_20;
                }

                v18 = [v6 objectForKeyedSubscript:v16];
                [v18 floatValue];
                v25 = v19;
                sub_2418F51BC(&__p, &v25);

                ++v14;
              }

              v24 = -1082130432;
              v25 = -1;
              v20 = sub_2418EC9F8(v22, &__p, &v25, &v24);
              if (!v25)
              {
                *(a1[2] + 20) = !v20;
              }

LABEL_20:
              (*(*v22 + 8))(v22);
              if (__p)
              {
                v27 = __p;
                operator delete(__p);
              }

              v13 = v23;
            }
          }
        }
      }
    }

    else
    {
      puts("evaluateStillAndVideoMetadataML: metadata dictionary not available.");
      v6 = 0;
    }

    v2 = *(a1[2] + 20);
  }

  return v2;
}

void sub_2418F5994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2418F5A30(void *a1, int a2)
{
  v4 = a1[2];
  *(v4 + 24) = -2;
  v5 = *(v4 + 40);
  *(v4 + 40) = @"PreGateFaces: missing metadata or parameters.";

  if (a2)
  {
    v6 = a1[1];
    if (v6)
    {
      v7 = [v6 objectForKeyedSubscript:@"PreGateFaces"];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectForKeyedSubscript:@"maxFaceSize"];
        v10 = v9;
        if (v9)
        {
          [v9 floatValue];
          v12 = v11;
          v13 = *(a1[3] + 88);
          v14 = v13;
          if (v13)
          {
            v15 = [v13 featuresDict];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 objectForKeyedSubscript:@"PREGATE_VIDEO_FACE_MAX_SIZE"];
              v18 = v17;
              if (v17)
              {
                [v17 floatValue];
                v20 = v19 > v12;
                v21 = v19 <= v12;
                v22 = v19;
                if (v20)
                {
                  v23 = @"PreGateFaces: maxRelFaceSize %f > %f (threshold).\n";
                }

                else
                {
                  v23 = @"PreGateFaces: maxRelFaceSize %f <= %f (threshold).\n";
                }

                *(a1[2] + 24) = v21;
                v24 = [MEMORY[0x277CCACA8] stringWithFormat:v23, *&v22, v12];
                v25 = a1[2];
                v26 = *(v25 + 40);
                *(v25 + 40) = v24;
              }
            }
          }
        }
      }
    }
  }

  return *(a1[2] + 24);
}

void *sub_2418F5BE4(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t sub_2418F5BF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 40) = 0;
  }

  return a1;
}

void sub_2418F5C8C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  objc_storeStrong(a1, a2);
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  sub_2418F5D24(a1);
  sub_2418F5DD8(a1);
}

void sub_2418F5D24(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"PostGate"];
    if (v3)
    {
      v6 = v3;
      v4 = [v3 objectForKeyedSubscript:@"ALGClassifier"];
      v5 = v4;
      if (v4)
      {
        *(a1 + 32) = sub_2418EC2D4(v4);
      }

      v3 = v6;
    }
  }
}

void sub_2418F5DD8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"ActivityDetector"];
    if (v3)
    {
      v6 = v3;
      v4 = [v3 objectForKeyedSubscript:@"ALGClassifier"];
      v5 = v4;
      if (v4)
      {
        *(a1 + 40) = sub_2418EC2D4(v4);
      }

      [v6 objectForKeyedSubscript:@"ALGFeatureInstructions"];
      if (objc_claimAutoreleasedReturnValue())
      {
        operator new();
      }

      v3 = v6;
    }
  }
}

void sub_2418F5ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x245CF24E0](v12, 0x80C40803F642BLL);

  _Unwind_Resume(a1);
}

uint64_t sub_2418F5F1C(uint64_t a1, CMTime *a2)
{
  result = 4294967294;
  v4 = *(a1 + 8);
  *(*(a1 + 16) + 8) = -2;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"ShortInputGate"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"desiredMinimumDuration"];
      v9 = v8;
      if (v8)
      {
        memset(&v13, 0, sizeof(v13));
        [v8 floatValue];
        CMTimeMakeWithSeconds(&v13, v10, 600);
        time1 = *a2;
        v11 = v13;
        *(*(a1 + 16) + 8) = CMTimeCompare(&time1, &v11) >= 0;
      }
    }

    return *(*(a1 + 16) + 8);
  }

  return result;
}

uint64_t sub_2418F6020(uint64_t a1)
{
  result = 4294967294;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(v4 + 28) = -2;
  *(v4 + 112) = -2;
  if (v3)
  {
    v5 = sub_2418DFCF0(v3);
    v6 = *(a1 + 16);
    *(v6 + 112) = v5;
    result = v5 == 1;
    *(v6 + 28) = result;
  }

  return result;
}

uint64_t sub_2418F6070(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = [v2 objectForKeyedSubscript:@"PostGate"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"ALGClassifier"];
    if (v5)
    {
      [v4 objectForKeyedSubscript:@"ALGFeatureInstructions"];
      if (objc_claimAutoreleasedReturnValue())
      {
        operator new();
      }

      v6 = [v4 objectForKeyedSubscript:@"ExperimentId"];
      if (v6)
      {
        objc_storeStrong((*(a1 + 24) + 8), v6);
      }
    }
  }

  return 0;
}

void sub_2418F617C(_Unwind_Exception *a1)
{
  MEMORY[0x245CF24E0](v4, 0x80C40803F642BLL);

  _Unwind_Resume(a1);
}

uint64_t sub_2418F61C8(void *a1)
{
  v2 = a1[3];
  *(a1[2] + 32) = -2;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = *(v2 + 40);
      if (!v4)
      {
        if ((*(*v3 + 16))(v3))
        {
          return *(a1[2] + 32);
        }

        v3 = a1[5];
      }

      v7 = 0;
      v5 = sub_2418EC9F8(v3, v4, &v7 + 1, &v7);
      if (!HIDWORD(v7))
      {
        *(a1[2] + 32) = v5;
      }
    }
  }

  return *(a1[2] + 32);
}

uint64_t sub_2418F6268(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  *(v2 + 36) = -2;
  v4 = *(v3 + 208);
  if (v4 != 1)
  {
    if (!v4)
    {
      v5 = *(v2 + 120);
      *(v2 + 120) = @"UnoptimizedLoop";

      result = 0;
      *(a1[2] + 36) = 0;
      return result;
    }

    v10 = "ALGatingEvaluator::evaluatePostGate error: missing or corrupted gating feature isOptimizedLoop.";
    goto LABEL_12;
  }

  v7 = a1[4];
  if (!v7)
  {
    v10 = "ALGatingEvaluator::evaluatePostGate: cannot evaluate without post-gate classifier.";
LABEL_12:
    puts(v10);
    return *(a1[2] + 36);
  }

  v8 = *(v3 + 24);
  if (v8)
  {
LABEL_8:
    v17 = 0;
    v9 = sub_2418EC9F8(v7, v8, &v17, (v2 + 116));
    if (!v17)
    {
      v11 = a1[2];
      *(v11 + 36) = !v9;
      v12 = MEMORY[0x277CCACA8];
      v13 = sub_2418ECA70(a1[4], v9, *(v11 + 116));
      v14 = [v12 stringWithFormat:@"PostGate %@", v13];
      v15 = a1[2];
      v16 = *(v15 + 120);
      *(v15 + 120) = v14;

      return *(a1[2] + 36);
    }

    v10 = "ALGatingEvaluator::evaluatePostGate: classifier error.";
    goto LABEL_12;
  }

  if (((*(*v7 + 16))(v7) & 1) == 0)
  {
    v7 = a1[4];
    v2 = a1[2];
    goto LABEL_8;
  }

  return *(a1[2] + 36);
}

uint64_t sub_2418F63CC(int **a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = v2 >> 2;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = *a1;
  v6 = v4;
  do
  {
    v7 = *v5++;
    v3 |= v7 == -2;
    --v6;
  }

  while (v6);
  v8 = v3 & 1;
  if (v8)
  {
    result = 4294967294;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  if (!v8)
  {
    v10 = 1;
    v11 = v1;
    v12 = v4;
    do
    {
      v13 = *v11++;
      v10 &= v13 == -1;
      --v12;
    }

    while (v12);
    if (v10)
    {
      return 0xFFFFFFFFLL;
    }

    LOBYTE(result) = 1;
    do
    {
      v14 = *v1++;
      result = (v14 == 1) & result;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2418F6468(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  *(v1 + 4) = -2;
  v3 = vrev64q_s32(*(v1 + 24));
  v3.i64[0] = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v9[1] = v3;
  v7 = 0;
  v8 = 0;
  __p = 0;
  sub_2418F6528(&__p, v9, v10, 8uLL);
  v4 = sub_2418F63CC(&__p);
  *(*v2 + 4) = v4;
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return v4;
}

uint64_t sub_2418F6528(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB6C0(result, a4);
  }

  return result;
}

void sub_2418F6580(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_2418F659C(float *a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  *a3 = 0;
  if ([v5 isEqualToString:@"ALGFP_Stat_Min"])
  {
    v6 = a1[1];
  }

  else if ([v5 isEqualToString:@"ALGFP_Stat_Max"])
  {
    v6 = a1[2];
  }

  else if ([v5 isEqualToString:@"ALGFP_Stat_Mean"])
  {
    v6 = a1[3];
  }

  else if ([v5 isEqualToString:@"ALGFP_Stat_StDev"])
  {
    v6 = a1[4];
  }

  else
  {
    printf("getStatById: unknown statistic id %s.\n", [v5 UTF8String]);
    *a3 = -1;
    v6 = 0.0;
  }

  return v6;
}

uint64_t sub_2418F6690(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 2;
    v6 = *v3;
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = 0.0;
    v9 = *v3;
    v10 = 0.0;
    do
    {
      v11 = *v3++;
      v12 = v11;
      if (v11 < v6)
      {
        v6 = v12;
      }

      if (v12 > v9)
      {
        v9 = v12;
      }

      v8 = v8 + v12;
      v10 = v10 + (v12 * v12);
      --v7;
    }

    while (v7);
    result = 0;
    v14 = v8 / v5;
    *a2 = 1;
    *(a2 + 4) = v6;
    *(a2 + 8) = v9;
    *(a2 + 12) = v14;
    *(a2 + 16) = sqrtf((v10 / v5) - (v14 * v14));
  }

  else
  {
    puts("Can't compute stats for size-zero vector.");
    *a2 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_2418F673C(void *a1, uint64_t a2, void *a3)
{
  v5 = qos_class_self();
  dispatch_get_global_queue(v5, 0);
  objc_claimAutoreleasedReturnValue();
  v6 = (*(**a1 + 24))();
  sub_2418ED5D4(a3, v6);
  v7 = *(a1[1] + 68);
  v13 = 1065353216;
  sub_2418DCBB8(&v14, v7);
  if (*(a1[1] + 64) == 875704438 && v15 != v14)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = sub_2418FE2CC(v9);
      v11 = v14;
      v12 = v15;
      *(v14 + v8) = v10;
      v8 = ++v9;
    }

    while (v9 < ((v12 - v11) >> 2));
  }

  sub_2418FC7DC();
}

void sub_2418F6994(uint64_t a1, unint64_t a2)
{
  v2 = **(a1 + 32);
  if (a2 < (*(*(a1 + 32) + 8) - v2) >> 2)
  {
    (*(***(a1 + 40) + 16))(**(a1 + 40), *(v2 + 4 * a2));
    sub_2418FC9BC();
  }

  sub_2418DD5E8();
}

uint64_t sub_2418F6CAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = a1 + 64;
  *(v2 + 16) = 0;
  return sub_2418DCCCC(v2, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
}

void sub_2418F6CC8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void sub_2418F7750(void *a1, void *a2, CMTime *a3, uint64_t a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = *(a4 + 8);
  if (a5)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v28 = *a3;
  *&v23.start.value = *a4;
  v23.start.epoch = *(a4 + 16);
  rhs = *a3;
  CMTimeSubtract(&time.start, &v23.start, &rhs);
  Seconds = CMTimeGetSeconds(&time.start);
  v14 = [MEMORY[0x277CE6540] audioMixInputParametersWithTrack:v9];
  *&time.start.value = *MEMORY[0x277CC08F0];
  time.start.epoch = *(MEMORY[0x277CC08F0] + 16);
  [v14 setVolume:&time atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(time.start.value), LODWORD(v12)))}];
  v15 = Seconds;
  v16 = -20;
  do
  {
    v17 = (v16 + 21) / 20.0;
    if (v16 == -1)
    {
      *&rhs.value = *a4;
      epoch = *(a4 + 16);
    }

    else
    {
      memset(&time, 0, 24);
      CMTimeMakeWithSeconds(&time.start, (v17 * v15), v11);
      lhs = time.start;
      v25 = *a3;
      CMTimeAdd(&v23.start, &lhs, &v25);
      *&rhs.value = *&v23.start.value;
      epoch = v23.start.epoch;
    }

    rhs.epoch = epoch;
    memset(&time, 0, sizeof(time));
    v23.start = v28;
    *&lhs.value = *&rhs.value;
    lhs.epoch = epoch;
    CMTimeRangeFromTimeToTime(&time, &v23.start, &lhs);
    v19 = v17 * 1.5708;
    if (a5)
    {
      v20 = cosf(v19);
    }

    else
    {
      v20 = sinf(v19);
    }

    v21 = v20;
    v23 = time;
    [v14 setVolumeRampFromStartVolume:&v23 toEndVolume:COERCE_DOUBLE(__PAIR64__(time.duration.flags timeRange:{LODWORD(v12))), COERCE_DOUBLE(__PAIR64__(HIDWORD(time.start.epoch), LODWORD(v20)))}];
    v28 = rhs;
    v12 = v21;
  }

  while (!__CFADD__(v16++, 1));
  [v10 addObject:v14];
}

void sub_2418F82C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2418F8634(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, int a6)
{
  sub_2418F86F8(a1, a4, a5);
  if (a4 >= 1)
  {
    v12 = 0;
    v13 = *a1;
    do
    {
      if (a5 < 1)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        do
        {
          if (*(a3 + v14) >= a2)
          {
            ++v15;
            ++*(*(a1 + 24) + 4 * v14);
          }

          ++v14;
        }

        while (a5 != v14);
      }

      v13[v12++] = v15;
      a3 += a6;
    }

    while (v12 != a4);
  }
}

void sub_2418F86F8(void **a1, int a2, int a3)
{
  sub_2418E2610(a1, a2);
  sub_2418E2610(a1 + 3, a3);
  bzero(*a1, a1[1] - *a1);
  v5 = a1[3];
  v6 = a1[4] - v5;

  bzero(v5, v6);
}

uint64_t sub_2418F8754(uint64_t a1, void *a2, unsigned int a3, _DWORD *a4)
{
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 == *a2)
  {
    result = 0;
    v7 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_19;
  }

  v6 = 0;
  v7 = 0;
  LODWORD(result) = 0;
  v9 = 0;
  v10 = v5 >> 2;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  do
  {
    v11 = *(*a2 + 4 * v6);
    v12 = v6 - v9;
    if (v9 >= result)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = result;
    }

    if (v9 < result)
    {
      v12 = v7;
    }

    if (v11 >= a3)
    {
      ++v9;
    }

    else
    {
      v9 = 0;
    }

    if (v11 >= a3)
    {
      result = v13;
    }

    else
    {
      result = result;
    }

    if (v11 >= a3)
    {
      v7 = v12;
    }

    ++v6;
  }

  while (v10 != v6);
  if (a4)
  {
LABEL_19:
    *a4 = v7;
  }

  return result;
}

BOOL sub_2418F87C8(void *a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v7 = sub_2418F8754(a1, a1, a2, a4);
  if (a5)
  {
    *a5 = v7;
  }

  return v7 >= a3;
}

BOOL sub_2418F8808(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v7 = sub_2418F8754(a1, (a1 + 24), a2, a4);
  if (a5)
  {
    *a5 = v7;
  }

  return v7 >= a3;
}

void sub_2418F8848(uint64_t a1, CVPixelBufferRef pixelBuffer, size_t planeIndex, char a4)
{
  *(a1 + 8) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, planeIndex);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, planeIndex);
  CleanRect = CVImageBufferGetCleanRect(pixelBuffer);
  x = CleanRect.origin.x;
  y = CleanRect.origin.y;
  width = CleanRect.size.width;
  height = CleanRect.size.height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if ((PixelFormatType | 0x10) == 0x34323076)
  {
    if (planeIndex)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 32) = v14;
    v15 = planeIndex == 1;
    v16 = height >> (planeIndex == 1);
    *(a1 + 16) = width >> (planeIndex == 1);
    *(a1 + 24) = v16;
    if (a4)
    {
      v17 = 1;
      if (planeIndex == 1)
      {
        v17 = 2;
      }

      v18 = (height + v17 + -1.0) >> v15;
      v19 = x >> v15;
      v20 = HeightOfPlane - (y >> v15);
      v21 = *(a1 + 40);
      v22 = v20 - v18;
      v23 = *(a1 + 8) * v16;
      v24 = *(a1 + 48) - v21;
      if (v23 <= v24)
      {
        if (v23 < v24)
        {
          *(a1 + 48) = v21 + v23;
        }
      }

      else
      {
        sub_2418DD2D8((a1 + 40), v23 - v24);
      }

      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, planeIndex);
      v26 = *(a1 + 8);
      v27 = &BaseAddressOfPlane[v26 * HeightOfPlane];
      v28 = &BaseAddressOfPlane[v26 * v22 + v19 * *(a1 + 32)];
      v29 = &v28[*(a1 + 24) * v26];
      if (v29 >= v27)
      {
        v29 = v27;
      }

      memmove(*(a1 + 40), v28, v29 - v28);

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    }
  }

  else
  {
    NSLog(&cfstr_PixbufplaneUnk.isa, PixelFormatType);
  }
}

uint64_t sub_2418F8A20(uint64_t a1, __CVBuffer *a2, char a3)
{
  *a1 = &unk_28537D208;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  sub_2418F8A98(a1, a2, a3);
  return a1;
}

void sub_2418F8A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 24);
  sub_2418F9964(&a10);
  _Unwind_Resume(a1);
}

void sub_2418F8A98(void *a1, CVImageBufferRef imageBuffer, char a3)
{
  CleanRect = CVImageBufferGetCleanRect(imageBuffer);
  a1[1] = CleanRect.size.width;
  a1[2] = CleanRect.size.height;
  PlaneCount = CVPixelBufferGetPlaneCount(imageBuffer);
  sub_2418F8B30(a1 + 3, PlaneCount);
  if (PlaneCount)
  {
    v7 = 0;
    for (i = 0; i != PlaneCount; ++i)
    {
      sub_2418F8848(a1[3] + v7, imageBuffer, i, a3);
      v7 += 64;
    }
  }
}

void *sub_2418F8B30(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = (v3 - *result) >> 6;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = (*result + (a2 << 6));
      if (v3 != v6)
      {
        v7 = v3 - 8;
        v8 = v3 - 8;
        v9 = v3 - 8;
        do
        {
          v10 = *v9;
          v9 -= 8;
          result = (*v10)(v8);
          v7 -= 8;
          v11 = v8 == v6;
          v8 = v9;
        }

        while (!v11);
      }

      v2[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    return sub_2418F9A24(result, v5);
  }

  return result;
}

uint64_t sub_2418F8BFC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a1;
  v13 = a2;
  v14 = a5;
  if ((*(a6 + 4) & 4) != 0)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v13;
    [v14 numFrames];
    v18 = *a6;
    [v14 cropRect];
    if (v18 != 0.0)
    {
      v21 = v20 / v18;
      v20 = roundf(v21);
      v22 = v19 / v18;
      v19 = roundf(v22);
    }

    v15 = sub_2418DE194(v14, v12, 0, 0, &unk_28537CE30, v17, v19, v20);
    if (!v15)
    {
      [[VideoAccessIndexNorm alloc] initFromFile:v17 pixelFormat:3588 normalizer:a4];
      [[VideoAccessIndexNorm alloc] initFromFile:v17 pixelFormat:3588 normalizer:a4];
      v24 = (*(*a4 + 24))(a4);
      sub_2418ED5D4(a7, v24);
      sub_2418FC7DC();
    }

    NSLog(&cfstr_Mapframediffyu_0.isa);

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    NSLog(&cfstr_Mapframediffyu.isa);
    v15 = 0xFFFFFFFFLL;
  }

  return v15;
}

void sub_2418F90CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18)
{
  *(v19 - 112) = a17;
  sub_2418F9964((v19 - 112));

  _Unwind_Resume(a1);
}

float sub_2418F91A0(uint64_t a1, __CVBuffer *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  sub_2418F8A20(&v23, a2, 0);
  if (CVPixelBufferLockBaseAddress(a2, 1uLL))
  {
    v4 = -1.0;
    NSLog(&cfstr_ApplydiffcvpEr.isa);
  }

  else
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6 = *(a1 + 32) - *(a1 + 24);
    MEMORY[0x28223BE20]();
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = &block[-1] - v7;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_2418F963C;
    block[3] = &unk_28537CED8;
    block[5] = a1;
    v16 = &unk_28537D208;
    v17 = v24;
    memset(v18, 0, 24);
    sub_2418F9798(v18, v25, v26, (v26 - v25) >> 6);
    v18[3] = a2;
    block[4] = &v19;
    dispatch_apply(v6 >> 6, v5, block);
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    if ((v6 & 0x3FFFFFFFC0) != 0)
    {
      v9 = PixelFormatType;
      v10 = 0;
      v11 = (v6 >> 6);
      v4 = 0.0;
      do
      {
        v12 = v20[3][v10];
        if (v9 == 875704438)
        {
          v12 = sub_2418FE2CC(v10) * v12;
        }

        v4 = v4 + v12;
        ++v10;
      }

      while (v11 != v10);
    }

    else
    {
      v4 = 0.0;
    }

    v16 = &unk_28537D208;
    v27[0] = v18;
    sub_2418F9964(v27);
    _Block_object_dispose(&v19, 8);
  }

  v23 = &unk_28537D208;
  v19 = &v25;
  sub_2418F9964(&v19);
  return v4;
}

void sub_2418F943C(_Unwind_Exception *a1)
{
  *(v4 - 248) = v2;
  *(v4 - 112) = v3;
  sub_2418F9964((v4 - 112));
  _Block_object_dispose((v4 - 192), 8);

  *(v4 - 160) = &unk_28537D208;
  *(v4 - 192) = v4 - 136;
  sub_2418F9964((v4 - 192));
  _Unwind_Resume(a1);
}

uint64_t sub_2418F94B8(uint64_t a1)
{
  *a1 = &unk_28537D208;
  v3 = (a1 + 24);
  sub_2418F9964(&v3);
  return a1;
}

void *sub_2418F9510(void *a1)
{
  *a1 = &unk_28537D2B8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2418F9560(void *a1)
{
  *a1 = &unk_28537D2B8;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CF24E0);
}

uint64_t sub_2418F95D0(uint64_t a1)
{
  *a1 = &unk_28537D208;
  v3 = (a1 + 24);
  sub_2418F9964(&v3);
  return MEMORY[0x245CF24E0](a1, 0x10A1C406C85F68BLL);
}

unsigned __int8 *sub_2418F963C(uint64_t a1, size_t a2)
{
  v4 = *(*(a1 + 40) + 24) + (a2 << 6);
  v5 = *(a1 + 72);
  v6 = *(v4 + 40);
  result = CVPixelBufferGetBaseAddressOfPlane(*(a1 + 96), a2);
  v8 = *(v4 + 24);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      v11 = v6;
      v12 = result;
      for (j = *(v4 + 16) * *(v4 + 32); j; --j)
      {
        v15 = *v11++;
        v14 = v15;
        v16 = *v12++;
        LODWORD(v17) = v14 - v16;
        if (v17 >= 0)
        {
          v17 = v17;
        }

        else
        {
          v17 = -v17;
        }

        v9 += v17;
      }

      result += *(v5 + (a2 << 6) + 8);
      v6 += *(v4 + 8);
    }
  }

  else
  {
    v9 = 0;
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 8 * a2) = v9;
  return result;
}

uint64_t sub_2418F9708(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_28537D208;
  v2 = *(a2 + 56);
  *(a1 + 72) = 0;
  v3 = a1 + 72;
  *(v3 - 16) = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  return sub_2418F9798(v3, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 6);
}

void sub_2418F974C(uint64_t a1)
{
  *(a1 + 48) = &unk_28537D208;
  v1 = (a1 + 72);
  sub_2418F9964(&v1);
}

uint64_t sub_2418F9798(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418F9820(result, a4);
  }

  return result;
}

void sub_2418F9800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2418F9964(&a9);
  _Unwind_Resume(a1);
}

void sub_2418F9820(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_2418F985C(a1, a2);
  }

  sub_2418D3940();
}

void sub_2418F985C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_2418D3A40();
}

uint64_t sub_2418F98A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      *(a4 + v7) = &unk_28537D2B8;
      v8 = *(v6 + 8);
      v9 = *(v6 + 20);
      *(a4 + v7 + 40) = 0;
      v10 = a4 + v7 + 40;
      *(v10 - 20) = v9;
      *(v10 - 32) = v8;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      sub_2418DD25C(v10, *(v6 + 40), *(v6 + 48), *(v6 + 48) - *(v6 + 40));
      v6 += 64;
      v7 += 64;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2418F9948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2418F9D40();
  }

  _Unwind_Resume(exception_object);
}

void sub_2418F9964(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2418F9A24(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 6)
  {
    if (a2)
    {
      v11 = v4 + (a2 << 6);
      v12 = *(result + 8);
      do
      {
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        *(v4 + 40) = 0;
        *v4 = &unk_28537D2B8;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = 0;
        v4 += 64;
        v12 += 64;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      sub_2418D3940();
    }

    v8 = v6 >> 6;
    v9 = v5 - *result;
    if (v9 >> 5 > v7)
    {
      v7 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v23 = result;
    if (v10)
    {
      sub_2418F985C(result, v10);
    }

    v13 = v8 << 6;
    v20 = 0;
    v21 = v8 << 6;
    *(&v22 + 1) = 0;
    v14 = v8 << 6;
    v15 = v8 << 6;
    do
    {
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 40) = 0;
      *v15 = &unk_28537D2B8;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      v15 += 64;
      v14 += 64;
    }

    while (v15 != (v8 << 6) + (a2 << 6));
    *&v22 = v13 + (a2 << 6);
    v16 = *(result + 8);
    v17 = v13 + *result - v16;
    sub_2418F9BBC(result, *result, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_2418F9CC0(&v20);
  }

  return result;
}

void sub_2418F9BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2418F9CC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2418F9BBC(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      *(a4 + v7) = &unk_28537D2B8;
      v9 = *(v8 + 1);
      v10 = *(v8 + 20);
      *(a4 + v7 + 40) = 0;
      v11 = a4 + v7 + 40;
      *(v11 - 20) = v10;
      *(v11 - 32) = v9;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      result = sub_2418DD25C(v11, v8[5], v8[6], v8[6] - v8[5]);
      v8 += 8;
      v7 += 64;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v13 = v6;
      v14 = v6;
      do
      {
        v15 = *v14;
        v14 += 8;
        result = (*v15)(v6);
        v13 += 8;
        v6 = v14;
      }

      while (v14 != a3);
    }
  }

  return result;
}

void sub_2418F9CA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2418F9D40();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418F9CC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2418F9D40()
{
  sub_2418F9D2C();
  do
  {
    v4 = *v3;
    v3 -= 8;
    result = (*v4)(v1);
    v2 -= 64;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

void sub_2418F9DA0(uint64_t a1, int a2, int a3, uint64_t a4, void *a5)
{
  v9 = a5;
  sub_2418E2610((a1 + 16), a3 * a2);
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  v10 = *(a1 + 8);
  *a1 = a4;
  *(a1 + 8) = v9;
}

void sub_2418F9E20(uint64_t *a1, void *a2, float **a3, int a4, int a5)
{
  sub_2418DD410(__p, (a1[1] - *a1) >> 2);
  if (a4 >= 1)
  {
    v10 = 0;
    v11 = *a3;
    v12 = (a3[1] - *a3) >> 2;
    v13 = __p[0];
    v14 = v12 / -2 * a5;
    v15 = v12 / -2;
    do
    {
      if (a5 >= 1)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (v12 < 1)
          {
            v18 = 0.0;
          }

          else
          {
            v18 = 0.0;
            v19 = v12 & 0x7FFFFFFF;
            v20 = v17;
            v21 = v15;
            v22 = v11;
            do
            {
              if (v21 < a4)
              {
                v18 = v18 + (*v22 * *(*a2 + 4 * v20));
              }

              ++v22;
              ++v21;
              v20 += a5;
              --v19;
            }

            while (v19);
          }

          v13[v10 * a5 + v16++] = v18;
          ++v17;
        }

        while (v16 != a5);
      }

      ++v10;
      ++v15;
      v14 += a5;
    }

    while (v10 != a4);
    v23 = 0;
    v24 = *a1;
    v25 = v12 / -2;
    do
    {
      if (a5 >= 1)
      {
        v26 = 0;
        v27 = v25;
        v28 = v12 / -2;
        do
        {
          v29 = 0.0;
          if (v12 >= 1)
          {
            v30 = v12 & 0x7FFFFFFF;
            v31 = v27;
            v32 = v28;
            v33 = v11;
            do
            {
              if (v32 < a5)
              {
                v29 = v29 + (*v33 * *(__p[0] + v31));
              }

              ++v33;
              ++v32;
              ++v31;
              --v30;
            }

            while (v30);
          }

          *(v24 + 4 * v23 * a5 + 4 * v26++) = v29;
          ++v28;
          ++v27;
        }

        while (v26 != a5);
      }

      ++v23;
      v25 += a5;
    }

    while (v23 != a4);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_2418F9FEC(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, float a6)
{
  v11 = ((a6 * 6.0) + 1.0) | 1;
  v37 = 1.0 / ((a6 + a6) * a6);
  if (v11 <= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  sub_2418DD410(v46, v12);
  v13 = vdupq_n_s64(v12 - 1);
  v35 = vdupq_n_s32(v12 >> 1);
  v14 = (v12 + 3) & 0xFFFFFFFC;
  v15 = xmmword_241911700;
  v16 = xmmword_241911710;
  v17 = xmmword_2419116D0;
  v18 = v46[0] + 2;
  v34 = vdupq_n_s64(4uLL);
  v36 = v13;
  do
  {
    v40 = v16;
    v41 = v15;
    v19 = vcgeq_u64(v13, v16);
    v20 = vmovn_s64(v19);
    v38 = vuzp1_s16(v20, *v19.i8);
    v39 = v17;
    v21 = vsubq_s32(v17, v35);
    v45 = vmulq_n_f32(vcvtq_f32_s32(vnegq_s32(vmulq_s32(v21, v21))), v37);
    v42 = expf(v45.f32[1]);
    *&v22 = expf(v45.f32[0]);
    *(&v22 + 1) = v42;
    v43 = v22;
    v23 = expf(v45.f32[2]);
    v24 = v43;
    *(&v24 + 2) = v23;
    v44 = v24;
    v25 = expf(v45.f32[3]);
    if (v38.i8[0])
    {
      *(v18 - 2) = v44;
    }

    if (vuzp1_s16(v20, v38).i8[2])
    {
      *(v18 - 1) = *(&v44 + 1);
    }

    v13 = v36;
    v26 = vmovn_s64(vcgeq_u64(v36, v41));
    if (vuzp1_s16(v26, v26).i32[1])
    {
      *v18 = *(&v44 + 2);
      v18[1] = v25;
    }

    v15 = vaddq_s64(v41, v34);
    v16 = vaddq_s64(v40, v34);
    v27.i64[0] = 0x400000004;
    v27.i64[1] = 0x400000004;
    v17 = vaddq_s32(v39, v27);
    v18 += 4;
    v14 -= 4;
  }

  while (v14);
  sub_2418F9E20(a1, a2, v46, a3, a4);
  if (a5)
  {
    v28 = *a2;
    v29 = a2[1];
    v30 = v29 - *a2;
    if (v29 != *a2)
    {
      v31 = 0;
      v32 = v30 >> 2;
      v33 = *a1;
      do
      {
        *(v33 + 4 * v31) = *(v28 + 4 * v31) - *(v33 + 4 * v31);
        ++v31;
      }

      while (v32 > v31);
    }
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }
}

void sub_2418FA22C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    *(v1 - 96) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418FA248(float **a1, uint64_t *a2, int a3, int a4, float a5)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = a3 >> 1;
    v12 = *a2;
    v13 = *a1;
    do
    {
      v14 = fabsf((v10 - v11));
      v15 = expf(-((v14 / v11) * (v14 / v11)) * a5);
      if (a4 >= 1)
      {
        v16 = &v13[v9];
        v17 = a4;
        v18 = (v12 + 4 * v9);
        do
        {
          v19 = *v18++;
          *v16++ = v15 * v19;
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += a4;
    }

    while (v10 != a3);
  }

  if (a4 >= 1)
  {
    v20 = 0;
    v21 = a4 >> 1;
    v22 = *a1;
    v23 = a4;
    v24 = 4 * a4;
    do
    {
      v25 = fabsf((v20 - v21));
      v26 = expf(-((v25 / v21) * (v25 / v21)) * a5);
      v27 = a3;
      v28 = v22;
      if (a3 >= 1)
      {
        do
        {
          *v28 = v26 * *v28;
          v28 = (v28 + v24);
          --v27;
        }

        while (v27);
      }

      ++v20;
      ++v22;
    }

    while (v20 != v23);
  }
}

void *sub_2418FA390(void *result, void *a2, int a3, int a4, int a5)
{
  if (a5)
  {
    v5 = a3 / 2;
  }

  else
  {
    v5 = a3;
  }

  if (a5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3 / 2;
  }

  if (v6 < v5)
  {
    v7 = *result;
    v8 = v6;
    v9 = 4 * a4;
    v10 = *a2 + 4 * v6 * a4;
    do
    {
      v11 = a4;
      v12 = v10;
      v13 = v7;
      if (a4 >= 1)
      {
        do
        {
          v14 = *v12++;
          *v13++ = v14;
          --v11;
        }

        while (v11);
      }

      ++v8;
      v7 = (v7 + v9);
      v10 += v9;
    }

    while (v8 != v5);
  }

  return result;
}

void sub_2418FA408(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  *a4 = 0;
  v40 = v7;
  if ([v7 isEqual:@"ALGFP_ImageFilter_Nonnegative"])
  {
    v8 = *(a1 + 16);
    v9 = 0;
    v10 = *(a1 + 24) - v8;
    if (v10)
    {
      v11 = v10 >> 2;
      v12 = 1;
      do
      {
        v13 = *v8++;
        if (v13 >= 0.0)
        {
          ++v9;
        }

        v14 = v11 > v12++;
      }

      while (v14);
    }

    sub_2418F9DA0(a2, 1, v9, a1, v40);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v17 = v16 - v15;
    if (v16 != v15)
    {
      v18 = 0;
      v19 = v17 >> 2;
      v20 = *(a2 + 16);
      v21 = 1;
      do
      {
        if (*v15 >= 0.0)
        {
          *(v20 + 4 * v18++) = *v15;
        }

        v15 += 4;
        v14 = v19 > v21++;
      }

      while (v14);
    }

    goto LABEL_23;
  }

  if ([v40 isEqual:@"ALGFP_ImageFilter_LowPass_Gaussian3"])
  {
    sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
    v22 = 0;
LABEL_15:
    v23 = 3.0;
LABEL_22:
    sub_2418F9FEC((a2 + 16), (a1 + 16), *(a1 + 40), *(a1 + 44), v22, v23);
    goto LABEL_23;
  }

  if ([v40 isEqual:@"ALGFP_ImageFilter_LowPass_Gaussian5"])
  {
    sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
    v22 = 0;
LABEL_18:
    v23 = 5.0;
    goto LABEL_22;
  }

  if ([v40 isEqual:@"ALGFP_ImageFilter_LowPass_Gaussian7"])
  {
    sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
    v22 = 0;
LABEL_21:
    v23 = 7.0;
    goto LABEL_22;
  }

  if ([v40 isEqual:@"ALGFP_ImageFilter_HighPass_Gaussian3"])
  {
    sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
    v22 = 1;
    goto LABEL_15;
  }

  if ([v40 isEqual:@"ALGFP_ImageFilter_HighPass_Gaussian5"])
  {
    sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
    v22 = 1;
    goto LABEL_18;
  }

  if ([v40 isEqual:@"ALGFP_ImageFilter_HighPass_Gaussian7"])
  {
    sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
    v22 = 1;
    goto LABEL_21;
  }

  if (![v40 isEqual:@"ALGFP_ImageFilter_Top"])
  {
    if ([v40 isEqual:@"ALGFP_ImageFilter_Bottom"])
    {
      sub_2418F9DA0(a2, *(a1 + 40) - *(a1 + 40) / 2, *(a1 + 44), a1, v40);
      sub_2418FA390((a2 + 16), (a1 + 16), *(a1 + 40), *(a1 + 44), 0);
      goto LABEL_23;
    }

    if ([v40 isEqual:@"ALGFP_ImageFilter_Vignette1"])
    {
      sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
      v35 = *(a1 + 40);
      v36 = *(a1 + 44);
      v37 = (a2 + 16);
      v38 = (a1 + 16);
      v39 = 1.0;
    }

    else if ([v40 isEqual:@"ALGFP_ImageFilter_Vignette2"])
    {
      sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
      v35 = *(a1 + 40);
      v36 = *(a1 + 44);
      v37 = (a2 + 16);
      v38 = (a1 + 16);
      v39 = 2.0;
    }

    else
    {
      if (![v40 isEqual:@"ALGFP_ImageFilter_Vignette3"])
      {
        *a4 = 1;
        goto LABEL_23;
      }

      sub_2418F9DA0(a2, *(a1 + 40), *(a1 + 44), a1, v40);
      v35 = *(a1 + 40);
      v36 = *(a1 + 44);
      v37 = (a2 + 16);
      v38 = (a1 + 16);
      v39 = 3.0;
    }

    sub_2418FA248(v37, v38, v35, v36, v39);
    goto LABEL_23;
  }

  sub_2418F9DA0(a2, *(a1 + 40) / 2, *(a1 + 44), a1, v40);
  v24 = *(a1 + 40);
  if (v24 >= 2)
  {
    v25 = 0;
    v26 = v24 >> 1;
    v27 = *(a1 + 44);
    v28 = *(a1 + 16);
    v29 = *(a2 + 16);
    v30 = 4 * v27;
    do
    {
      v31 = v28;
      v32 = v29;
      v33 = v27;
      if (v27 >= 1)
      {
        do
        {
          v34 = *v31++;
          *v32++ = v34;
          --v33;
        }

        while (v33);
      }

      ++v25;
      v29 = (v29 + v30);
      v28 = (v28 + v30);
    }

    while (v25 != v26);
  }

LABEL_23:
}

uint64_t sub_2418FA7E8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [v6 objectAtIndex:0];
      v8 = v7;
      v11 = v7;
      if (a2)
      {
        if (v7)
        {
          [v7 timeRange];
        }

        else
        {
          memset(v15, 0, sizeof(v15));
          v14 = 0u;
        }

        *a2 = *(v15 + 8);
        *(a2 + 16) = *(&v15[1] + 1);
        v8 = v11;
      }

      v12 = [MEMORY[0x277CE6428] assetReaderSampleReferenceOutputWithTrack:v8];
      v13 = 0;
      v9 = [MEMORY[0x277CE6410] assetReaderWithAsset:v4 error:&v13];
      v13;
      [v9 addOutput:v12];
      [v9 startReading];
      operator new();
    }

    NSLog(&cfstr_NoVideoAssetTr.isa);
  }

  else
  {
    NSLog(&cfstr_CouldNotCreate.isa);
  }

  return 0;
}

uint64_t sub_2418FAC44(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_2418D3940();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_2418FAF98(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_2418FACEC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_2418FA7E8(v3, a2);
  v5 = v4;
  if (v4)
  {
    v6 = *v4;
    v7 = v5[1];
    if (v7 != *v5)
    {
      operator new();
    }

    if (v7)
    {
      v5[1] = v6;
      operator delete(v6);
    }

    MEMORY[0x245CF24E0](v5, 0x20C40960023A9);
  }

  return 0;
}

void sub_2418FAE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  MEMORY[0x245CF24E0](v11, 0x20C40960023A9);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2418FAEAC(uint64_t a1, char **a2, uint64_t a3, CMTime *a4)
{
  v8 = *a3;
  v9 = *(a3 + 16);
  v7 = *a4;
  v5 = sub_241906BC4(a1, a2, &v8, &v7);
  *v5 = &unk_28537CF88;
  sub_241907B0C(v5);
  return a1;
}

void *sub_2418FAF38(void *a1)
{
  *a1 = &unk_28537D078;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_2418FAF98(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_2418FB054(&v2, a2);
    }

    sub_2418D3940();
  }

  return result;
}

void sub_2418FB03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2418FB054(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_2418E2ED8(a1, v2);
  }

  sub_2418D3940();
}

void sub_2418FB098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_2418FB13C(&v18, &v16, &v14, &v13);
}

void sub_2418FB13C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_2418FB1CC(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_2418FB1CC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void sub_2418FB29C(CMTime *a1, CMTime *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2;
    v8 = a2 - 1;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v7 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                sub_2418FBF60(a1, a1 + 1, v8);
                return;
              case 4:
                sub_2418FBF60(a1, a1 + 1, a1 + 2);
                v67 = *&v7[-1].value;
                time1.epoch = v7[-1].epoch;
                *&time1.value = v67;
                time2 = a1[2];
                if (CMTimeCompare(&time1, &time2) < 0)
                {
                  time1 = a1[2];
                  v68 = *&time1.value;
                  epoch = time1.epoch;
                  v70 = a2[-1].epoch;
                  *&a1[2].value = *&v8->value;
                  a1[2].epoch = v70;
                  a2[-1].epoch = epoch;
                  *&v8->value = v68;
                  time1 = a1[2];
                  time2 = a1[1];
                  if (CMTimeCompare(&time1, &time2) < 0)
                  {
                    v71 = a1[1].epoch;
                    v72 = *&a1[1].value;
                    *&a1[1].value = *&a1[2].value;
                    v73 = a1[2].epoch;
                    a1[1].epoch = v73;
                    *&a1[2].value = v72;
                    a1[2].epoch = v71;
                    *&time1.value = *&a1[1].value;
                    time1.epoch = v73;
                    v74 = *&a1->value;
                    time2.epoch = a1->epoch;
                    *&time2.value = v74;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      v75 = *&a1->value;
                      time1.epoch = a1->epoch;
                      *&time1.value = v75;
                      *&a1->value = *&a1[1].value;
                      a1->epoch = a1[1].epoch;
                      a1[1] = time1;
                    }
                  }
                }

                return;
              case 5:
                sub_2418FC128(a1, a1 + 1, a1 + 2, a1 + 3, v8);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            v7 = a2;
            if (v11 == 2)
            {
              v63 = a2[-1].epoch;
              v135.epoch = a1->epoch;
              *&v135.value = *&a1->value;
              *&time1.value = *&a2[-1].value;
              time1.epoch = v63;
              time2 = v135;
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                v64 = *&a1->value;
                time1.epoch = a1->epoch;
                *&time1.value = v64;
                v65 = *&v8->value;
                a1->epoch = a2[-1].epoch;
                *&a1->value = v65;
                v66 = *&time1.value;
                a2[-1].epoch = time1.epoch;
                *&v8->value = v66;
              }

              return;
            }
          }

          if (v10 <= 575)
          {
            v76 = a1 + 1;
            v77 = a1 == v7 || v76 == v7;
            v78 = v77;
            if (a4)
            {
              if ((v78 & 1) == 0)
              {
                v79 = 0;
                v80 = a1;
                do
                {
                  v81 = *&v80->value;
                  v82 = v80->epoch;
                  v80 = v76;
                  v83 = *&v76->value;
                  time1.epoch = v76->epoch;
                  *&time1.value = v83;
                  *&time2.value = v81;
                  time2.epoch = v82;
                  if (CMTimeCompare(&time1, &time2) < 0)
                  {
                    v136.epoch = v80->epoch;
                    *&v136.value = *&v80->value;
                    v84 = v79;
                    while (1)
                    {
                      v85 = a1 + v84;
                      *(v85 + 24) = *(&a1->value + v84);
                      *(v85 + 5) = *(&a1->epoch + v84);
                      if (!v84)
                      {
                        break;
                      }

                      v141.epoch = *(v85 - 1);
                      *&v141.value = *(v85 - 24);
                      time1 = v136;
                      time2 = v141;
                      v84 -= 24;
                      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                      {
                        v86 = &a1[1] + v84;
                        goto LABEL_84;
                      }
                    }

                    v86 = a1;
LABEL_84:
                    *(v86 + 16) = v136.epoch;
                    *v86 = *&v136.value;
                  }

                  v76 = v80 + 1;
                  v79 += 24;
                }

                while (&v80[1] != v7);
              }
            }

            else if ((v78 & 1) == 0)
            {
              do
              {
                v125 = *&a1->value;
                v126 = a1->epoch;
                a1 = v76;
                v127 = *&v76->value;
                time1.epoch = v76->epoch;
                *&time1.value = v127;
                *&time2.value = v125;
                time2.epoch = v126;
                if (CMTimeCompare(&time1, &time2) < 0)
                {
                  v138.epoch = a1->epoch;
                  *&v138.value = *&a1->value;
                  v128 = a1;
                  do
                  {
                    v129 = v128 - 1;
                    *&v128->value = *&v128[-1].value;
                    v128->epoch = v128[-1].epoch;
                    v144.epoch = v128[-2].epoch;
                    *&v144.value = *&v128[-2].value;
                    time1 = v138;
                    time2 = v144;
                    v130 = CMTimeCompare(&time1, &time2);
                    v128 = v129;
                  }

                  while (v130 < 0);
                  v129->epoch = v138.epoch;
                  *&v129->value = *&v138.value;
                }

                v76 = a1 + 1;
              }

              while (&a1[1] != v7);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != v7)
            {
              v87 = v12 >> 1;
              v88 = v12 >> 1;
              do
              {
                v89 = v88;
                if (v87 >= v88)
                {
                  v90 = (2 * v88) | 1;
                  v91 = &a1[v90];
                  if (2 * v88 + 2 < v11)
                  {
                    v92 = *&v91->value;
                    time1.epoch = v91->epoch;
                    *&time1.value = v92;
                    v93 = *&v91[1].value;
                    time2.epoch = v91[1].epoch;
                    *&time2.value = v93;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      ++v91;
                      v90 = 2 * v89 + 2;
                    }
                  }

                  v94 = &a1[v89];
                  v95 = *&v91->value;
                  time1.epoch = v91->epoch;
                  *&time1.value = v95;
                  v96 = *&v94->value;
                  time2.epoch = v94->epoch;
                  *&time2.value = v96;
                  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                  {
                    v142.epoch = v94->epoch;
                    *&v142.value = *&v94->value;
                    do
                    {
                      v97 = v91;
                      v98 = *&v91->value;
                      v94->epoch = v91->epoch;
                      *&v94->value = v98;
                      if (v87 < v90)
                      {
                        break;
                      }

                      v99 = (2 * v90) | 1;
                      v91 = &a1[v99];
                      v100 = 2 * v90 + 2;
                      if (v100 < v11)
                      {
                        v101 = *&v91->value;
                        time1.epoch = v91->epoch;
                        *&time1.value = v101;
                        v102 = *&v91[1].value;
                        time2.epoch = v91[1].epoch;
                        *&time2.value = v102;
                        if (CMTimeCompare(&time1, &time2) < 0)
                        {
                          ++v91;
                          v99 = v100;
                        }
                      }

                      v103 = *&v91->value;
                      time1.epoch = v91->epoch;
                      *&time1.value = v103;
                      time2 = v142;
                      v94 = v97;
                      v90 = v99;
                    }

                    while ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0);
                    v97->epoch = v142.epoch;
                    *&v97->value = *&v142.value;
                  }
                }

                v88 = v89 - 1;
              }

              while (v89);
              v104 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
              do
              {
                v105 = 0;
                v133 = a1->epoch;
                v132 = *&a1->value;
                v106 = a1;
                do
                {
                  v107 = &v106[v105];
                  v108 = v107 + 1;
                  v109 = (2 * v105) | 1;
                  v110 = 2 * v105 + 2;
                  if (v110 < v104)
                  {
                    v111 = v107[1].epoch;
                    v112 = v107 + 2;
                    v137.epoch = v107[2].epoch;
                    *&v137.value = *&v107[2].value;
                    *&time1.value = *&v108->value;
                    time1.epoch = v111;
                    time2 = v137;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      v108 = v112;
                      v109 = v110;
                    }
                  }

                  v113 = *&v108->value;
                  v106->epoch = v108->epoch;
                  *&v106->value = v113;
                  v106 = v108;
                  v105 = v109;
                }

                while (v109 <= ((v104 - 2) >> 1));
                v114 = a2 - 1;
                v77 = v108 == &a2[-1];
                --a2;
                if (v77)
                {
                  v108->epoch = v133;
                  *&v108->value = v132;
                }

                else
                {
                  v115 = *&v114->value;
                  v108->epoch = v114->epoch;
                  *&v108->value = v115;
                  v114->epoch = v133;
                  *&v114->value = v132;
                  v116 = v108 - a1 + 24;
                  if (v116 >= 25)
                  {
                    v117 = (-2 - 0x5555555555555555 * (v116 >> 3)) >> 1;
                    v118 = &a1[v117];
                    v119 = *&v118->value;
                    time1.epoch = v118->epoch;
                    *&time1.value = v119;
                    v120 = *&v108->value;
                    time2.epoch = v108->epoch;
                    *&time2.value = v120;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      v143.epoch = v108->epoch;
                      *&v143.value = *&v108->value;
                      do
                      {
                        v121 = v118;
                        v122 = *&v118->value;
                        v108->epoch = v118->epoch;
                        *&v108->value = v122;
                        if (!v117)
                        {
                          break;
                        }

                        v117 = (v117 - 1) >> 1;
                        v118 = &a1[v117];
                        v123 = *&v118->value;
                        time1.epoch = v118->epoch;
                        *&time1.value = v123;
                        time2 = v143;
                        v108 = v121;
                      }

                      while (CMTimeCompare(&time1, &time2) < 0);
                      v121->epoch = v143.epoch;
                      *&v121->value = *&v143.value;
                    }
                  }
                }
              }

              while (v104-- > 2);
            }

            return;
          }

          v13 = v11 >> 1;
          v14 = &a1[v11 >> 1];
          if (v10 < 0xC01)
          {
            sub_2418FBF60(v14, a1, v8);
          }

          else
          {
            sub_2418FBF60(a1, v14, v8);
            v15 = v13;
            sub_2418FBF60(a1 + 1, &a1[v15 - 1], a2 - 2);
            sub_2418FBF60(a1 + 2, &a1[v15 + 1], a2 - 3);
            sub_2418FBF60(&a1[v15 - 1], v14, &a1[v15 + 1]);
            v16 = *&a1->value;
            time1.epoch = a1->epoch;
            *&time1.value = v16;
            v17 = v14->epoch;
            *&a1->value = *&v14->value;
            a1->epoch = v17;
            v18 = *&time1.value;
            v14->epoch = time1.epoch;
            *&v14->value = v18;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v19 = a1[-1].epoch;
          v134.epoch = a1->epoch;
          *&v134.value = *&a1->value;
          *&time1.value = *&a1[-1].value;
          time1.epoch = v19;
          time2 = v134;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            break;
          }

          v140.epoch = a1->epoch;
          *&v140.value = *&a1->value;
          v43 = *&a1->value;
          time1.epoch = v140.epoch;
          *&time1.value = v43;
          v44 = *&v8->value;
          time2.epoch = a2[-1].epoch;
          *&time2.value = v44;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v48 = a1;
            do
            {
              v9 = v48 + 1;
              time1 = v140;
              time2 = v48[1];
              v49 = CMTimeCompare(&time1, &time2);
              v48 = v9;
            }

            while ((v49 & 0x80000000) == 0);
          }

          else
          {
            v45 = a1 + 1;
            do
            {
              v9 = v45;
              if (v45 >= v7)
              {
                break;
              }

              time1 = v140;
              v46 = *&v45->value;
              time2.epoch = v45->epoch;
              *&time2.value = v46;
              v47 = CMTimeCompare(&time1, &time2);
              v45 = v9 + 1;
            }

            while ((v47 & 0x80000000) == 0);
          }

          v50 = v7;
          if (v9 < v7)
          {
            v51 = v7;
            do
            {
              v50 = v51 - 1;
              time1 = v140;
              v52 = *&v51[-1].value;
              time2.epoch = v51[-1].epoch;
              *&time2.value = v52;
              v53 = CMTimeCompare(&time1, &time2);
              v51 = v50;
            }

            while (v53 < 0);
          }

          while (v9 < v50)
          {
            v54 = *&v9->value;
            time1.epoch = v9->epoch;
            *&time1.value = v54;
            v55 = *&v50->value;
            v9->epoch = v50->epoch;
            *&v9->value = v55;
            v56 = *&time1.value;
            v50->epoch = time1.epoch;
            *&v50->value = v56;
            do
            {
              v57 = *&v9[1].value;
              v58 = v9[1].epoch;
              ++v9;
              time1 = v140;
              *&time2.value = v57;
              time2.epoch = v58;
            }

            while ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0);
            do
            {
              v59 = *&v50[-1].value;
              v60 = v50[-1].epoch;
              --v50;
              time1 = v140;
              *&time2.value = v59;
              time2.epoch = v60;
            }

            while (CMTimeCompare(&time1, &time2) < 0);
          }

          v61 = v9 - 1;
          if (&v9[-1] != a1)
          {
            v62 = *&v61->value;
            a1->epoch = v9[-1].epoch;
            *&a1->value = v62;
          }

          a4 = 0;
          v9[-1].epoch = v140.epoch;
          *&v61->value = *&v140.value;
        }

        v20 = 0;
        v139.epoch = a1->epoch;
        *&v139.value = *&a1->value;
        do
        {
          v21 = *&a1[v20 + 1].value;
          time1.epoch = a1[v20 + 1].epoch;
          *&time1.value = v21;
          time2 = v139;
          ++v20;
        }

        while (CMTimeCompare(&time1, &time2) < 0);
        v22 = &a1[v20];
        v23 = v7;
        if (v20 == 1)
        {
          v27 = a2;
          while (v22 < v27)
          {
            v24 = v27 - 1;
            v28 = *&v27[-1].value;
            time1.epoch = v27[-1].epoch;
            *&time1.value = v28;
            time2 = v139;
            v29 = CMTimeCompare(&time1, &time2);
            v27 = v24;
            if (v29 < 0)
            {
              goto LABEL_26;
            }
          }

          v24 = v27;
        }

        else
        {
          do
          {
            v24 = v23 - 1;
            v25 = *&v23[-1].value;
            time1.epoch = v23[-1].epoch;
            *&time1.value = v25;
            time2 = v139;
            v26 = CMTimeCompare(&time1, &time2);
            v23 = v24;
          }

          while ((v26 & 0x80000000) == 0);
        }

LABEL_26:
        if (v22 >= v24)
        {
          v39 = v22 - 1;
        }

        else
        {
          v30 = &a1[v20];
          v31 = v24;
          do
          {
            v32 = *&v30->value;
            time1.epoch = v30->epoch;
            *&time1.value = v32;
            v33 = *v31;
            v30->epoch = *(v31 + 16);
            *&v30->value = v33;
            v34 = *&time1.value;
            *(v31 + 16) = time1.epoch;
            *v31 = v34;
            do
            {
              v35 = *&v30[1].value;
              v36 = v30[1].epoch;
              ++v30;
              *&time1.value = v35;
              time1.epoch = v36;
              time2 = v139;
            }

            while (CMTimeCompare(&time1, &time2) < 0);
            do
            {
              v37 = *(v31 - 24);
              v38 = *(v31 - 8);
              v31 -= 24;
              time2 = v139;
              *&time1.value = v37;
              time1.epoch = v38;
            }

            while ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0);
          }

          while (v30 < v31);
          v39 = v30 - 1;
        }

        if (v39 != a1)
        {
          v40 = *&v39->value;
          a1->epoch = v39->epoch;
          *&a1->value = v40;
        }

        v39->epoch = v139.epoch;
        *&v39->value = *&v139.value;
        v41 = v22 >= v24;
        v7 = a2;
        if (v41)
        {
          break;
        }

LABEL_40:
        sub_2418FB29C(a1, v39, a3, a4 & 1);
        a4 = 0;
        v9 = v39 + 1;
      }

      v42 = sub_2418FC3A4(a1, v39);
      v9 = v39 + 1;
      if (sub_2418FC3A4(v39 + 1, a2))
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_40;
      }
    }

    a2 = v39;
    if (!v42)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2418FBF60(CMTime *a1, CMTime *a2, CMTime *a3)
{
  time1 = *a2;
  time2 = *a1;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = *a3;
    time2 = *a2;
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      epoch = a1->epoch;
      v17 = *&a1->value;
      v19 = a3->epoch;
      *&a1->value = *&a3->value;
      a1->epoch = v19;
    }

    else
    {
      v13 = a1->epoch;
      v14 = *&a1->value;
      v15 = a2->epoch;
      *&a1->value = *&a2->value;
      a1->epoch = v15;
      *&a2->value = v14;
      a2->epoch = v13;
      time1 = *a3;
      time2 = *a2;
      result = CMTimeCompare(&time1, &time2);
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      epoch = a2->epoch;
      v17 = *&a2->value;
      v18 = a3->epoch;
      *&a2->value = *&a3->value;
      a2->epoch = v18;
    }

    *&a3->value = v17;
    a3->epoch = epoch;
  }

  else
  {
    time1 = *a3;
    time2 = *a2;
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      v7 = a2->epoch;
      v8 = *&a2->value;
      v9 = a3->epoch;
      *&a2->value = *&a3->value;
      a2->epoch = v9;
      *&a3->value = v8;
      a3->epoch = v7;
      time1 = *a2;
      time2 = *a1;
      result = CMTimeCompare(&time1, &time2);
      if ((result & 0x80000000) != 0)
      {
        v10 = a1->epoch;
        v11 = *&a1->value;
        v12 = a2->epoch;
        *&a1->value = *&a2->value;
        a1->epoch = v12;
        *&a2->value = v11;
        a2->epoch = v10;
      }
    }
  }

  return result;
}

__n128 sub_2418FC128(CMTime *a1, CMTime *a2, CMTime *a3, CMTime *a4, CMTime *a5)
{
  sub_2418FBF60(a1, a2, a3);
  time1 = *a4;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    epoch = a3->epoch;
    v11 = *&a3->value;
    v12 = a4->epoch;
    *&a3->value = *&a4->value;
    a3->epoch = v12;
    *&a4->value = v11;
    a4->epoch = epoch;
    time1 = *a3;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v13 = a2->epoch;
      v14 = *&a2->value;
      v15 = a3->epoch;
      *&a2->value = *&a3->value;
      a2->epoch = v15;
      *&a3->value = v14;
      a3->epoch = v13;
      time1 = *a2;
      time2 = *a1;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v16 = a1->epoch;
        v17 = *&a1->value;
        v18 = a2->epoch;
        *&a1->value = *&a2->value;
        a1->epoch = v18;
        *&a2->value = v17;
        a2->epoch = v16;
      }
    }
  }

  time1 = *a5;
  time2 = *a4;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v20 = a4->epoch;
    v21 = *&a4->value;
    v22 = a5->epoch;
    *&a4->value = *&a5->value;
    a4->epoch = v22;
    *&a5->value = v21;
    a5->epoch = v20;
    time1 = *a4;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v23 = a3->epoch;
      v24 = *&a3->value;
      v25 = a4->epoch;
      *&a3->value = *&a4->value;
      a3->epoch = v25;
      *&a4->value = v24;
      a4->epoch = v23;
      time1 = *a3;
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v26 = a2->epoch;
        v27 = *&a2->value;
        v28 = a3->epoch;
        *&a2->value = *&a3->value;
        a2->epoch = v28;
        *&a3->value = v27;
        a3->epoch = v26;
        time1 = *a2;
        time2 = *a1;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v29 = a1->epoch;
          result = *&a1->value;
          v30 = a2->epoch;
          *&a1->value = *&a2->value;
          a1->epoch = v30;
          *&a2->value = result;
          a2->epoch = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_2418FC3A4(CMTime *a1, CMTime *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2418FBF60(a1, a1 + 1, a2 - 1);
        break;
      case 4:
        sub_2418FBF60(a1, a1 + 1, a1 + 2);
        time1 = a2[-1];
        time2 = a1[2];
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v18 = a2 - 1;
          epoch = a1[2].epoch;
          v20 = *&a1[2].value;
          v21 = a2[-1].epoch;
          *&a1[2].value = *&a2[-1].value;
          a1[2].epoch = v21;
          *&v18->value = v20;
          v18->epoch = epoch;
          time1 = a1[2];
          time2 = a1[1];
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v22 = a1[1].epoch;
            v23 = *&a1[1].value;
            *&a1[1].value = *&a1[2].value;
            v24 = a1[2].epoch;
            a1[1].epoch = v24;
            *&a1[2].value = v23;
            a1[2].epoch = v22;
            *&time1.value = *&a1[1].value;
            time1.epoch = v24;
            time2 = *a1;
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              v25 = a1->epoch;
              v26 = *&a1->value;
              *&a1->value = *&a1[1].value;
              a1->epoch = a1[1].epoch;
              *&a1[1].value = v26;
              a1[1].epoch = v25;
            }
          }
        }

        return 1;
      case 5:
        sub_2418FC128(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    time1 = a2[-1];
    time2 = *a1;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v5 = a2 - 1;
      v6 = a1->epoch;
      v7 = *&a1->value;
      v8 = a2[-1].epoch;
      *&a1->value = *&a2[-1].value;
      a1->epoch = v8;
      *&v5->value = v7;
      v5->epoch = v6;
    }

    return 1;
  }

LABEL_11:
  v9 = a1 + 2;
  sub_2418FBF60(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = v9->epoch;
    v29 = *&v9->value;
    time1 = *v10;
    *&time2.value = v29;
    time2.epoch = v13;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *&v28.value = *&v10->value;
      v28.epoch = v10->epoch;
      v14 = v11;
      while (1)
      {
        v15 = a1 + v14;
        *(v15 + 72) = *(&a1[2].value + v14);
        *(v15 + 11) = *(&a1[2].epoch + v14);
        if (v14 == -48)
        {
          break;
        }

        v16 = *(v15 + 24);
        v30 = *(v15 + 5);
        time1 = v28;
        *&time2.value = v16;
        time2.epoch = v30;
        v14 -= 24;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          v17 = &a1[3] + v14;
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      *v17 = *&v28.value;
      *(v17 + 16) = v28.epoch;
      if (++v12 == 8)
      {
        return &v10[1] == a2;
      }
    }

    v9 = v10;
    v11 += 24;
    if (++v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_2418FC6DC(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2418FCDB4(&__p, a3);
  sub_2418FCFEC(&v7, a2);
  sub_2418FD2C4(a1);
  *a1 = v7;
  a1[2] = v8;
  v8 = 0;
  v7 = 0uLL;
  v9 = &v7;
  sub_2418DB42C(&v9);
  if (__p)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_2418FC774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2418DB42C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_2418FC7C0(void *a1)
{
  if (a1[1] == *a1)
  {
    return 0;
  }

  else
  {
    return *(*a1 + 8);
  }
}

void sub_2418FC8DC(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2418D3940();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2418DB6FC(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_2418FCAB8(void *a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2 || (v4 = (*a1 + 24 * a2), v4[1] <= a3))
  {
    result = 0;
    *a4 = 1;
  }

  else
  {
    result = 0;
    *a4 = 0;
    v6 = *v4;
    v7 = a3 >> 6;
    v8 = *(v6 + 8 * v7);
    if ((v8 & (1 << a3)) == 0)
    {
      *(v6 + 8 * v7) = v8 | (1 << a3);
      return 1;
    }
  }

  return result;
}

BOOL sub_2418FCC80(uint64_t *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (v4 == *a1)
  {
    v8 = 0;
LABEL_14:
    *a2 = v5;
    if (v4 == v3)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      LODWORD(v11) = *(v3 + 8);
    }
  }

  else
  {
    v6 = 0;
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    }

    v8 = 1;
    while (1)
    {
      v9 = (v3 + 24 * v6);
      v10 = v9[1];
      if (v10)
      {
        break;
      }

LABEL_10:
      v8 = v5 > ++v6;
      if (v6 == v7)
      {
        goto LABEL_14;
      }
    }

    v11 = 0;
    v12 = *v9;
    while (((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      if (v10 == ++v11)
      {
        goto LABEL_10;
      }
    }

    *a2 = v6;
  }

  *a3 = v11;
  return v8;
}

BOOL sub_2418FCD2C(void *a1)
{
  v1 = a1[1];
  v2 = v1 - *a1;
  if (v1 == *a1)
  {
    return 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    while (1)
    {
      v7 = (*a1 + 24 * v3);
      v8 = v7[1];
      if (v8)
      {
        break;
      }

LABEL_9:
      v4 = v5 <= ++v3;
      if (v3 == v6)
      {
        return v4;
      }
    }

    v9 = 0;
    v10 = *v7;
    while (((*(v10 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      if (v8 == ++v9)
      {
        goto LABEL_9;
      }
    }
  }

  return v4;
}

void *sub_2418FCDB4(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418FB054(result, a2);
  }

  return result;
}

void *sub_2418FCE88(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_2418FCF3C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *sub_2418FCFEC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2418FD098(result, a2);
  }

  return result;
}

void sub_2418FD098(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2418FD0E4(a1, a2);
  }

  sub_2418D3940();
}

void sub_2418FD0E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2418D3A40();
}

void *sub_2418FD13C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_2418FB054(result, v2);
  }

  return result;
}

void sub_2418FD198(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  sub_2418FD220(a2, a3, a4, a5, &v11, v13);
}

void sub_2418FD220(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void sub_2418FD2C4(uint64_t *a1)
{
  if (*a1)
  {
    sub_2418DB480(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_2418FD304(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB6C0(result, a4);
  }

  return result;
}

void sub_2418FD364(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2418FD380(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x245CF24E0](v2, 0x80C40D6874129);
    *a1 = 0;
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x245CF24E0](v4, 0x80C40D6874129);
    a1[1] = 0;
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x245CF24E0](v6, 0x80C40D6874129);
    a1[2] = 0;
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *(v8 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x245CF24E0](v8, 0x80C40D6874129);
    a1[3] = 0;
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 8) = v11;
      operator delete(v11);
    }

    MEMORY[0x245CF24E0](v10, 0x80C40D6874129);
    a1[4] = 0;
  }

  return a1;
}

void *sub_2418FD488(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  return result;
}

uint64_t sub_2418FD490(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = sub_2418DCEE4();
    MEMORY[0x245CF24E0](v2, 0x1030C40523CC803);
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_2418FD4FC(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_2418DCA0C();
  }

  return result;
}

void sub_2418FD53C(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, CMTime *a4@<X8>)
{
  v7 = *a1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_2418DB584(&v20, v7[1], v7[2], 0xAAAAAAAAAAAAAAABLL * ((v7[2] - v7[1]) >> 3));
  v8 = (*(*v7 + 16))(v7, a2);
  v9 = (*(*v7 + 16))(v7, a3);
  v10 = MEMORY[0x277CC08F0];
  *&a4->value = *MEMORY[0x277CC08F0];
  a4->epoch = *(v10 + 16);
  if (v9)
  {
    v11 = (v9 - 1);
    if (v8 < v11)
    {
      v12 = 24 * v8;
      v13 = v11 - v8;
      do
      {
        v14 = *&v20[v12 + 40];
        *&lhs.value = *&v20[v12 + 24];
        lhs.epoch = v14;
        v15 = *&v20[v12];
        v16.epoch = *&v20[v12 + 16];
        *&v16.value = v15;
        CMTimeSubtract(&time1, &lhs, &v16);
        v19 = time1;
        lhs = *a4;
        if (CMTimeCompare(&time1, &lhs) >= 1)
        {
          *a4 = v19;
        }

        v12 += 24;
        --v13;
      }

      while (v13);
    }
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_2418FD6D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2418FD6FC@<Q0>(uint64_t ***a1@<X0>, unsigned int *a2@<X1>, CMTime *a3@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    sub_2418FD53C(v3, *a2, a2[1] + *a2 + a2[2], a3);
  }

  else
  {
    v5 = MEMORY[0x277CC0898];
    result = *MEMORY[0x277CC0898];
    *&a3->value = *MEMORY[0x277CC0898];
    a3->epoch = *(v5 + 16);
  }

  return result;
}

uint64_t sub_2418FD8AC(void *a1)
{
  if (*a1)
  {
    if (!a1[1])
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

uint64_t sub_2418FDAD4(void *a1, uint64_t *a2, int *a3, void *a4)
{
  sub_2418FDC14(a4, (a2[1] - *a2) >> 3);
  v8 = a1[1];
  if (!v8)
  {
    if (*a1)
    {
      operator new();
    }

    goto LABEL_8;
  }

  sub_2418DCEE8(v8, *a3, a3[1] + *a3 + a3[2]);
  v9 = *a2;
  if (a2[1] == *a2)
  {
LABEL_8:
    v13 = 0;
    return v13 & 1;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    sub_2418DCFA4(a1[1], *(v9 + v10), *(v9 + v10 + 4));
    v13 |= v14;
    v15 = a1[1];
    v16 = (*a4 + v11);
    v17 = *v15;
    *(v16 + 12) = *(v15 + 12);
    *v16 = v17;
    ++v12;
    v9 = *a2;
    v11 += 28;
    v10 += 8;
  }

  while (v12 < (a2[1] - *a2) >> 3);
  return v13 & 1;
}

void sub_2418FDC14(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_2418FDC58(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 28 * a2;
  }
}

void sub_2418FDC58(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 2);
    if (v6 + a2 > 0x924924924924924)
    {
      sub_2418D3940();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x492492492492492)
    {
      v9 = 0x924924924924924;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_2418FDE04(a1, v9);
    }

    v11 = 28 * v6;
    v12 = 28 * ((28 * a2 - 28) / 0x1C) + 28;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_2418FDE04(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  sub_2418D3A40();
}

uint64_t sub_2418FDE60(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_241905448(a1[1], 0);
  v9 = *v8;
  v10 = v8[1];
  v23 = v8;
  v11 = v8[4];
  result = (*(**a1 + 16))(*a1, a2);
  v24 = v10;
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    v15 = (v11 * v9);
    v22 = *(a1[1] + 184) + (*(a1[1] + 192) * result);
    do
    {
      if (v15)
      {
        v16 = (v22 + (v23[2] * v14));
        v17 = v15;
        v18 = v13;
        do
        {
          v19 = *v16++;
          result = v19;
          if (*(a1[1] + 64) == 875704438)
          {
            result = sub_2418FE414(result);
          }

          v20 = *(*a3 + v18);
          if (result < v20)
          {
            LOBYTE(v20) = result;
          }

          *(*a3 + v18) = v20;
          v21 = *(*a4 + v18);
          if (result > v21)
          {
            LOBYTE(v21) = result;
          }

          *(*a4 + v18++) = v21;
          --v17;
        }

        while (v17);
      }

      ++v14;
      v13 += v15;
    }

    while (v14 != v24);
  }

  return result;
}

uint64_t sub_2418FDFA8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6)
{
  if (a2 < a4)
  {
    v9 = a2;
    v10 = result;
    do
    {
      result = sub_2418FDE60(v10, v9, a5, a6);
      v9 = (v9 + 1);
    }

    while (a4 != v9);
  }

  return result;
}

void sub_2418FE014(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= a2)
  {
    v44 = v5;
    v45 = v6;
    v12 = sub_241905448(a1[1], 0);
    v13 = v12[1];
    v14 = (v12[4] * *v12);
    v15 = (v14 * v13);
    v16 = *(a4 + 8) - *a4;
    if (v15 <= v16)
    {
      if (v15 < v16)
      {
        *(a4 + 8) = *a4 + v15;
      }
    }

    else
    {
      sub_2418DD2D8(a4, v15 - v16);
    }

    v17 = *(a5 + 8) - *a5;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        *(a5 + 8) = *a5 + v15;
      }
    }

    else
    {
      sub_2418DD2D8(a5, v15 - v17);
    }

    v18 = (*(**a1 + 16))(*a1, a2);
    if (v13)
    {
      v19 = 0;
      v20 = 0;
      v21 = *(a1[1] + 184) + (*(a1[1] + 192) * v18);
      do
      {
        if (v14)
        {
          v22 = (v21 + (v12[2] * v20));
          v23 = v14;
          v24 = v19;
          do
          {
            v25 = *v22++;
            *(*a4 + v24) = v25;
            *(*a5 + v24++) = v25;
            --v23;
          }

          while (v23);
        }

        ++v20;
        v19 += v14;
      }

      while (v20 != v13);
    }

    v26 = a3 - a2;
    if (v26)
    {
      for (i = 0; i != v26; ++i)
      {
        v28 = (*(**a1 + 16))(*a1, (i + a2));
        if (v13)
        {
          v29 = 0;
          v30 = 0;
          v31 = *(a1[1] + 184) + (*(a1[1] + 192) * v28);
          do
          {
            if (v14)
            {
              v32 = (v31 + (v12[2] * v30));
              v33 = v14;
              v34 = v29;
              do
              {
                v36 = *v32++;
                v35 = v36;
                v37 = *(*a4 + v34);
                if (v36 < v37)
                {
                  LOBYTE(v37) = v35;
                }

                *(*a4 + v34) = v37;
                if (v35 <= *(*a5 + v34))
                {
                  LOBYTE(v35) = *(*a5 + v34);
                }

                *(*a5 + v34++) = v35;
                --v33;
              }

              while (v33);
            }

            ++v30;
            v29 += v14;
          }

          while (v30 != v13);
        }
      }
    }

    if (*(a1[1] + 64) == 875704438)
    {
      v42 = 0;
      v43 = 1065353216;
      sub_2418FE368(0, &v43, &v42);
      if (v13)
      {
        v38 = 0;
        for (j = 0; j != v13; ++j)
        {
          v40 = v14;
          v41 = v38;
          if (v14)
          {
            do
            {
              *(*a4 + v41) = sub_2418FE414(*(*a4 + v41));
              *(*a5 + v41) = sub_2418FE414(*(*a5 + v41));
              ++v41;
              --v40;
            }

            while (v40);
          }

          v38 += v14;
        }
      }
    }
  }
}

float sub_2418FE2CC(unsigned int a1)
{
  v5 = 0;
  sub_241904C24(875704422, a1, &v5 + 1, &v5);
  v4 = 0;
  v2 = sub_241904C24(875704438, a1, &v4 + 1, &v4);
  result = 1.0;
  if (!v2)
  {
    result = (v5 - HIDWORD(v5)) / (v4 - HIDWORD(v4));
    if (result < 0.0)
    {
      return -result;
    }
  }

  return result;
}

float sub_2418FE368(unsigned int a1, float *a2, float *a3)
{
  v13 = 0;
  sub_241904C24(875704422, a1, &v13 + 1, &v13);
  v12 = 0;
  sub_241904C24(875704438, a1, &v12 + 1, &v12);
  v6 = HIDWORD(v12);
  v7 = v12;
  v8 = HIDWORD(v13);
  v9 = v13;
  v10 = v13 - HIDWORD(v13);
  *a2 = v10 / (v12 - HIDWORD(v12));
  result = ((v8 * v7) - (v6 * v9)) / v10;
  *a3 = result;
  return result;
}

uint64_t sub_2418FE424(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2418DB6C0(result, a4);
  }

  return result;
}

void sub_2418FE47C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2418FE498(int a1)
{
  if (qword_281504A88 != -1)
  {
    sub_2418FE530();
  }

  return qword_281504A90[a1];
}

os_log_t sub_2418FE4DC()
{
  qword_281504A90[0] = os_log_create("com.apple.AutoLoop", "unspecified");
  result = os_log_create("com.apple.AutoLoop", "PointsOfInterest");
  qword_281504A98 = result;
  return result;
}

uint64_t sub_2418FE544(__int128 *a1, unsigned int a2, uint64_t a3)
{
  if ((*(a1 + 3) & 0x1D) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v3;
  v10 = v4;
  v7 = *a1;
  v8 = *(a1 + 2);
  result = (*(*a3 + 40))(a3, &v7);
  if (result >= a2)
  {
    printf("WARNING: set_loopParamConfigOptions requested ref frame index %d for num_frames %d, setting ref frame to %d.\n", result, a2, a2 - 1);
    return a2 - 1;
  }

  return result;
}

uint64_t sub_2418FE5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = (*(*a1 + 24))(a1);
  *&range.start.value = *(a3 + 72);
  range.start.epoch = *(a3 + 88);
  v12 = sub_24190781C(a1, &range);
  *&range.start.value = *(a3 + 24);
  range.start.epoch = *(a3 + 40);
  v13 = sub_24190781C(a1, &range);
  *&range.start.value = *(a3 + 48);
  range.start.epoch = *(a3 + 64);
  v14 = sub_24190781C(a1, &range);
  *&range.start.value = *a4;
  range.start.epoch = *(a4 + 16);
  v15 = sub_2418FE544(&range.start.value, v11, a1);
  *&range.start.value = *a5;
  range.start.epoch = *(a5 + 16);
  v16 = sub_2418FE544(&range.start.value, v11, a1);
  v17 = *(a5 + 16);
  *&range.start.value = *a5;
  *&range.start.epoch = v17;
  *&range.duration.timescale = *(a5 + 32);
  CMTimeRangeGetEnd(&v45, &range);
  v18 = sub_2418FE544(&v45.value, v11, a1);
  if (v16 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  if (v18 <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v18;
  }

  if (v15 == -1)
  {
    v19 = v16;
    v20 = v18;
  }

  v45.value = __PAIR64__(v16, v15);
  if (v16 == -1)
  {
    v21 = v15;
  }

  else
  {
    v21 = v19;
  }

  v45.timescale = v18;
  *&range.start.timescale = 0;
  range.start.epoch = 0;
  if (v18 != -1)
  {
    v15 = v20;
  }

  range.start.value = 0;
  sub_2418FE424(&range, &v45, &v45.flags, 3uLL);
  v22 = v14 + 1;
  value = range.start.value;
  v24 = 0;
  if (*&range.start.timescale != range.start.value)
  {
    v25 = (*&range.start.timescale - range.start.value) >> 2;
    v27 = v21 == -1 || v15 == -1;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    v28 = range.start.value;
    do
    {
      v30 = *v28++;
      v29 = v30;
      if (v30 != -1)
      {
        v31 = v29 < v21 || v27;
        if (v29 > v15)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
          v24 = 21;
        }

        else
        {
          v24 = v24;
        }
      }

      --v25;
    }

    while (v25);
  }

  if (v21 != -1)
  {
    v33 = v11 + ~v21;
    v34 = 2 * v21;
    if (v12 >= v33)
    {
      v35 = v11 + ~v21;
    }

    else
    {
      v35 = v12;
    }

    if (v35 < 2 * v21)
    {
      v34 = v35;
    }

    if (v35 > 2 * v21 || v12 > v33)
    {
      v12 = v34;
    }
  }

  v37 = v11 + ~v15;
  v38 = 2 * v15;
  if (v12 >= v37)
  {
    v39 = v11 + ~v15;
  }

  else
  {
    v39 = v12;
  }

  if (v39 < 2 * v15)
  {
    v38 = v39;
  }

  if (v39 > 2 * v15 || v12 > v37)
  {
    v41 = v38;
  }

  else
  {
    v41 = v12;
  }

  if (v15 == -1)
  {
    v41 = v12;
  }

  *a2 = v11;
  *(a2 + 4) = v41;
  *(a2 + 8) = v13;
  *(a2 + 12) = v22;
  *(a2 + 16) = v21;
  *(a2 + 20) = v15;
  *(a2 + 24) = v41 < a6;
  if (!v24)
  {
    if (sub_2418FE8C8(a2))
    {
      v24 = 0;
    }

    else
    {
      v24 = 21;
    }
  }

  if (value)
  {
    *&range.start.timescale = value;
    operator delete(value);
  }

  return v24;
}