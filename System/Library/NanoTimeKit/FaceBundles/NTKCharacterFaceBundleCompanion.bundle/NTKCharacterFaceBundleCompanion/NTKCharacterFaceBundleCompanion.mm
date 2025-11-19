id NTKCharacterLoadMtlTextureFromMemory(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 path];
  v10 = [CLKUIAtlasBacking atlasBackingWithBytes:a1 length:a2 mmapFile:v8 uuid:v9];

  if (v10)
  {
    v11 = [CLKUIMetalAtlas createMTLTextureWithBacking:v10 numMipmapLevelsToDrop:0 device:v7 encoder:0];
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_F470(v8, v12);
    }

    v11 = 0;
  }

  return v11;
}

id sub_228C(void *a1)
{
  v1 = [a1 nrDeviceUUID];
  if (!v1)
  {
    v1 = +[NSNull null];
  }

  return v1;
}

id NTKGetCharacterFaceBundle()
{
  if (qword_25BC0 != -1)
  {
    sub_F514();
  }

  v1 = qword_25BB8;

  return v1;
}

void sub_3A20(id a1)
{
  qword_25BB8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_44B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    v8 = a2;
    [v8 prepareToAnimateToDate:v3 forOrb:v4];
  }

  else
  {
    v5 = a2;
    v6 = +[NTKDate faceDate];
    v7 = *(a1 + 40);
    v8 = v6;
    [v5 prepareToAnimateToDate:? forOrb:?];
  }
}

void sub_4554(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    [v6 prepareToAnimateToDate:v3 forOrb:*(a1 + 40)];
  }

  else
  {
    v5 = +[NTKDate faceDate];
    [v6 prepareToAnimateToDate:v5 forOrb:*(a1 + 40)];
  }

  LODWORD(v4) = 1.0;
  [v6 setOverrideDateFraction:v4];
  [v6 forceUpdateTimeVariables];
  [v6 cleanupToOverrideDate:*(a1 + 32)];
}

void sub_49FC(uint64_t a1, void *a2)
{
  v3 = NTKEditModeDimmedAlpha;
  if (*(a1 + 32))
  {
    v4 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v4 = 1.0;
  }

  v7 = a2;
  *&v5 = v4;
  [v7 setNumbersBrightness:v5];
  if (*(a1 + 32) == 1)
  {
    *&v6 = v3;
  }

  else
  {
    *&v6 = 1.0;
  }

  [v7 setGlowBrightness:v6];
}

void sub_4B44(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v11 = a2;
  CLKInterpolateBetweenFloatsClipped();
  *&v6 = v6;
  [v11 setNumbersBrightness:v6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[6];
  CLKInterpolateBetweenFloatsClipped();
  *&v10 = v10;
  [v11 setGlowBrightness:v10];
}

id sub_5064(uint64_t a1, void *a2)
{
  if (*(a1 + 32) <= *(a1 + 40))
  {
    __asm { FMOV            V0.2S, #1.0 }

    *(&_D0 + 1) = *(a1 + 52) / *(a1 + 48);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&_D0 = *(a1 + 48) / *(a1 + 52);
  }

  return [a2 setGlobalScale:_D0];
}

void sub_524C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_5268(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _endScrubbing];
    (*(*(a1 + 32) + 16))();
  }
}

double sub_53A0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_25BD8);
  if (qword_25BE0)
  {
    v3 = qword_25BE0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_25BE8))
  {
    v5 = qword_25BC8;
  }

  else
  {
    qword_25BE0 = v2;
    qword_25BE8 = [v2 version];
    v5 = sub_5468(qword_25BE8, v2);
    qword_25BC8 = v5;
    qword_25BD0 = v6;
  }

  os_unfair_lock_unlock(&unk_25BD8);

  return *&v5;
}

double sub_5468(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 deviceCategory] == &dword_0 + 1 || objc_msgSend(v2, "sizeClass") == &dword_0 + 3)
  {
    [v2 screenBounds];
    v4 = v3;
  }

  else
  {
    v5 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
    [v5 scaledSize:{162.0, 197.0}];
    v4 = v6;
  }

  return v4;
}

id sub_551C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_25BF8);
  if (qword_25C00)
  {
    v3 = qword_25C00 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_25C08))
  {
    qword_25C00 = v2;
    qword_25C08 = [v2 version];
    v5 = qword_25BF0;
    qword_25BF0 = &off_1EA68;
  }

  v6 = qword_25BF0;
  os_unfair_lock_unlock(&unk_25BF8);

  return v6;
}

void sub_574C(id a1)
{
  v3[0] = &off_1DF70;
  v3[1] = &off_1DF88;
  v4[0] = @"Mickey Mouse";
  v4[1] = @"Minnie Mouse";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_25C10;
  qword_25C10 = v1;
}

id sub_58D8(uint64_t a1, void *a2)
{
  if (a1 == 1)
  {
    sub_71E4(1, a2);
  }

  else
  {
    sub_7398(a1, a2);
  }
  v2 = ;

  return v2;
}

void sub_5BF0(id a1)
{
  v3[0] = &off_1DFA0;
  v3[1] = &off_1DFB8;
  v4[0] = NTKFaceBundleColorPink;
  v4[1] = NTKFaceBundleColorPurple;
  v3[2] = &off_1DFD0;
  v3[3] = &off_1DFE8;
  v4[2] = NTKFaceBundleColorBlue;
  v4[3] = NTKFaceBundleColorGreen;
  v3[4] = &off_1E000;
  v3[5] = &off_1E018;
  v4[4] = NTKFaceBundleColorYellow;
  v4[5] = NTKFaceBundleColorOrange;
  v3[6] = &off_1E030;
  v3[7] = &off_1E048;
  v4[6] = NTKFaceBundleColorRed;
  v4[7] = NTKFaceBundleColorWhite;
  v3[8] = &off_1E060;
  v3[9] = &off_1E078;
  v4[8] = NTKFaceBundleColorEditionDeprecated;
  v4[9] = NTKFaceBundleColorSportPlusDeprecated;
  v3[10] = &off_1E090;
  v3[11] = &off_1E0A8;
  v4[10] = NTKFaceBundleColorGoldGeneric1;
  v4[11] = NTKFaceBundleColorGoldGeneric2;
  v3[12] = &off_1E0C0;
  v3[13] = &off_1E0D8;
  v4[12] = NTKFaceBundleColorGoldGeneric3;
  v4[13] = NTKFaceBundleColorZeus;
  v3[14] = &off_1E0F0;
  v3[15] = &off_1E108;
  v4[14] = NTKFaceBundleColorVictory;
  v4[15] = NTKFaceBundleColorExplorer;
  v3[16] = &off_1E120;
  v3[17] = &off_1E138;
  v4[16] = NTKFaceBundleColorMulticolor;
  v4[17] = NTKFaceBundleColorDarkOrange;
  v3[18] = &off_1E150;
  v3[19] = &off_1E168;
  v4[18] = NTKFaceBundleColorTurquoise;
  v4[19] = NTKFaceBundleColorMidnightBlue;
  v3[20] = &off_1E180;
  v3[21] = &off_1E198;
  v4[20] = NTKFaceBundleColorLavender;
  v4[21] = NTKFaceBundleColorVintageRose;
  v3[22] = &off_1E1B0;
  v3[23] = &off_1E1C8;
  v4[22] = NTKFaceBundleColorWalnut;
  v4[23] = NTKFaceBundleColorStone;
  v3[24] = &off_1E1E0;
  v3[25] = &off_1E1F8;
  v4[24] = NTKFaceBundleColorAntiqueWhite;
  v4[25] = NTKFaceBundleColorLightBlue;
  v3[26] = &off_1E210;
  v3[27] = &off_1E228;
  v4[26] = NTKFaceBundleColorGray;
  v4[27] = @"vintage";
  v3[28] = &off_1E240;
  v3[29] = &off_1E258;
  v4[28] = NTKFaceBundleColorMint;
  v4[29] = NTKFaceBundleColorLilac;
  v3[30] = &off_1E270;
  v3[31] = &off_1E288;
  v4[30] = NTKFaceBundleColorRoyalBlue;
  v4[31] = NTKFaceBundleColorLightPink;
  v3[32] = &off_1E2A0;
  v3[33] = &off_1E2B8;
  v4[32] = NTKFaceBundleColorApricot;
  v4[33] = NTKFaceBundleColorOceanBlue;
  v3[34] = &off_1E2D0;
  v3[35] = &off_1E2E8;
  v4[34] = NTKFaceBundleColorCocoa;
  v4[35] = NTKFaceBundleColorIceWhite;
  v3[36] = &off_1E300;
  v3[37] = &off_1E318;
  v4[36] = NTKFaceBundleColorPinkSand;
  v4[37] = NTKFaceBundleColorPebble;
  v3[38] = &off_1E330;
  v3[39] = &off_1E348;
  v4[38] = NTKFaceBundleColorAzure;
  v4[39] = NTKFaceBundleColorCamellia;
  v3[40] = &off_1E360;
  v3[41] = &off_1E378;
  v4[40] = NTKFaceBundleColorMistBlue;
  v4[41] = NTKFaceBundleColorFlamingo;
  v3[42] = &off_1E390;
  v3[43] = &off_1E3A8;
  v4[42] = NTKFaceBundleColorPollen;
  v4[43] = NTKFaceBundleColorSoftWhite;
  v3[44] = &off_1E3C0;
  v3[45] = &off_1E3D8;
  v4[44] = NTKFaceBundleColorBlueCobalt;
  v4[45] = NTKFaceBundleColorDarkOlive;
  v3[46] = &off_1E3F0;
  v3[47] = &off_1E408;
  v4[46] = NTKFaceBundleColorViolet;
  v4[47] = NTKFaceBundleColorRoseRed;
  v3[48] = &off_1E420;
  v3[49] = &off_1E438;
  v4[48] = NTKFaceBundleColorFlash;
  v4[49] = NTKFaceBundleColorDarkTeal;
  v3[50] = &off_1E450;
  v3[51] = &off_1E468;
  v4[50] = NTKFaceBundleColorElectricPink;
  v4[51] = NTKFaceBundleColorNectarine;
  v3[52] = &off_1E480;
  v3[53] = &off_1E498;
  v4[52] = NTKFaceBundleColorMellowYellow;
  v4[53] = NTKFaceBundleColorStormGray;
  v3[54] = &off_1E4B0;
  v3[55] = &off_1E4C8;
  v4[54] = NTKFaceBundleColorPacificGreen;
  v4[55] = NTKFaceBundleColorBlueHorizon;
  v3[56] = &off_1E4E0;
  v3[57] = &off_1E4F8;
  v4[56] = NTKFaceBundleColorIndigo;
  v4[57] = NTKFaceBundleColorLavenderGray;
  v3[58] = &off_1E510;
  v3[59] = &off_1E528;
  v4[58] = NTKFaceBundleColorHibiscus;
  v4[59] = NTKFaceBundleColorPeach;
  v3[60] = &off_1E540;
  v3[61] = &off_1E558;
  v4[60] = NTKFaceBundleColorDenimBlue;
  v4[61] = NTKFaceBundleColorFlashLight;
  v3[62] = &off_1E570;
  v3[63] = &off_1E588;
  v4[62] = NTKFaceBundleColorPapaya;
  v4[63] = NTKFaceBundleColorCanaryYellow;
  v3[64] = &off_1E5A0;
  v4[64] = NTKFaceBundleColorSpearmint;
  v3[65] = &off_1E5B8;
  v4[65] = NTKFaceBundleColorCerulean;
  v3[66] = &off_1E5D0;
  v4[66] = NTKFaceBundleColorDelftBlue;
  v3[67] = &off_1E5E8;
  v4[67] = NTKFaceBundleColorDragonFruit;
  v3[68] = &off_1E600;
  v4[68] = NTKFaceBundleColorPineGreen;
  v3[69] = &off_1E618;
  v4[69] = NTKFaceBundleColorLemonCream;
  v3[70] = &off_1E630;
  v4[70] = NTKFaceBundleColorAlaskanBlue;
  v3[71] = &off_1E648;
  v4[71] = NTKFaceBundleColorPomegranate;
  v3[72] = &off_1E660;
  v4[72] = NTKFaceBundleColorKhaki;
  v3[73] = &off_1E678;
  v4[73] = NTKFaceBundleColorBeryl;
  v3[74] = &off_1E690;
  v4[74] = NTKFaceBundleColorCamel;
  v3[75] = &off_1E6A8;
  v4[75] = NTKFaceBundleColorSeaFoam;
  v3[76] = &off_1E6C0;
  v4[76] = NTKFaceBundleColorSurfBlue;
  v3[77] = &off_1E6D8;
  v4[77] = NTKFaceBundleColorCactus;
  v3[78] = &off_1E6F0;
  v4[78] = NTKFaceBundleColorLinenBlue;
  v3[79] = &off_1E708;
  v4[79] = NTKFaceBundleColorGrapefruit;
  v3[80] = &off_1E720;
  v4[80] = NTKFaceBundleColorNeonPink;
  v3[81] = &off_1E738;
  v4[81] = NTKFaceBundleColorCoastalGray;
  v3[82] = &off_1E750;
  v4[82] = NTKFaceBundleColorPinkCitrus;
  v3[83] = &off_1E768;
  v4[83] = NTKFaceBundleColorDeepNavy;
  v3[84] = &off_1E780;
  v4[84] = NTKFaceBundleColorCyprusGreen;
  v3[85] = &off_1E798;
  v4[85] = NTKFaceBundleColorCream;
  v3[86] = &off_1E7B0;
  v4[86] = NTKFaceBundleColorKumquat;
  v3[87] = &off_1E7C8;
  v4[87] = NTKFaceBundleColorNorthernBlue;
  v3[88] = &off_1E7E0;
  v4[88] = NTKFaceBundleColorPlum;
  v3[89] = &off_1E7F8;
  v4[89] = NTKFaceBundleColorElectricOrange;
  v3[90] = &off_1E810;
  v4[90] = NTKFaceBundleColorSunflower;
  v3[91] = &off_1E828;
  v4[91] = NTKFaceBundleColorPistachio;
  v3[92] = &off_1E840;
  v4[92] = NTKFaceBundleColorCloudBlue;
  v3[93] = &off_1E858;
  v4[93] = NTKFaceBundleColorAbyss;
  v3[94] = &off_1E870;
  v4[94] = NTKFaceBundleColorSeaSalt;
  v3[95] = &off_1E888;
  v4[95] = NTKFaceBundleColorOlive;
  v3[96] = &off_1E8A0;
  v4[96] = NTKFaceBundleColorMallardGreen;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:97];
  v2 = qword_25C20;
  qword_25C20 = v1;
}

id sub_71E4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_25C38);
  if (qword_25C40)
  {
    v3 = qword_25C40 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_25C48))
  {
    qword_25C40 = v2;
    qword_25C48 = [v2 version];
    v5 = sub_72A4(qword_25C48, v2);
    v6 = qword_25C30;
    qword_25C30 = v5;
  }

  v7 = qword_25C30;
  os_unfair_lock_unlock(&unk_25C38);

  return v7;
}

id sub_72A4(uint64_t a1, uint64_t a2)
{
  v2 = [NTKFaceColorEditOption __orderedValuesForDevice:a2];
  v3 = [v2 mutableCopy];

  v4 = [v3 indexOfObject:&off_1E048];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "White has been removed from list of colors. Adding vintage color at beginning of list.", v7, 2u);
    }

    [v3 insertObject:&off_1E228 atIndex:0];
  }

  else
  {
    [v3 setObject:&off_1E228 atIndexedSubscript:v4];
  }

  return v3;
}

id sub_7398(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_25C58);
  if (qword_25C60)
  {
    v3 = qword_25C60 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_25C68))
  {
    qword_25C60 = v2;
    qword_25C68 = [v2 version];
    v5 = qword_25C50;
    qword_25C50 = &off_1EA80;
  }

  v6 = qword_25C50;
  os_unfair_lock_unlock(&unk_25C58);

  return v6;
}

id sub_86A4(uint64_t a1)
{

  return [v1 initWithDomain:v2 bundle:a1];
}

void sub_92BC(float *a1, float *a2, uint64_t a3, void *a4)
{
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  [a4 getHour:&v13 minute:&v12 second:&v11 nanosecond:&v10 fromDate:a3];
  if (a1)
  {
    v6 = (v11 + v12 * 60.0 + (v13 % 12) * 60.0 * 60.0) / 43200.0;
    v7 = modff(v6, &v14);
    if (v7 < 0.0)
    {
      v7 = v7 + 1.0;
    }

    *a1 = v7;
  }

  if (a2)
  {
    v8 = (v11 + v12 * 60.0) / 3600.0;
    v9 = modff(v8, &v14);
    if (v9 < 0.0)
    {
      v9 = v9 + 1.0;
    }

    *a2 = v9;
  }
}

uint64_t sub_DDDC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_25C74);
  if (qword_25C78)
  {
    v3 = qword_25C78 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_25C80))
  {
    v5 = byte_25C70;
  }

  else
  {
    qword_25C78 = v2;
    qword_25C80 = [v2 version];
    v5 = 1;
    byte_25C70 = 1;
  }

  os_unfair_lock_unlock(&stru_25C74);

  return v5;
}

void sub_E714(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 display];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v4 = *(a1 + 32);
    v5 = v4[5];
    v6 = v7;
    [v5 foregroundAlphaForEditing:{objc_msgSend(v4, "editing")}];
    [v6 setForegroundAlpha:?];
    [*(*(a1 + 32) + 40) foregroundImageAlphaForEditing:{objc_msgSend(*(a1 + 32), "editing")}];
    [v6 setForegroundImageAlpha:?];
  }
}

id sub_EC8C(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*(a1 + 32) drawInRect:{v5, v7, v9, v11}];
  v12 = *(a1 + 40);

  return [v12 drawInRect:{v5, v7, v9, v11}];
}

void sub_F470(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "_loadMtlTextureFromMemory:%@ failed to get backing", &v2, 0xCu);
}

void sub_F53C(void *a1, NSObject *a2)
{
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1 _value]);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%@: invalid value (%@)", &v5, 0x16u);
}

void *sub_F614(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = +[NSMutableDictionary dictionary];
      v5 = v2[2];
      v2[2] = v4;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void *sub_F684(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      v4 = [NTKPigmentEditOptionProvider alloc];
      v5 = [objc_opt_class() pigmentFaceDomain];
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = sub_86A4(v6);
      v8 = v2[3];
      v2[3] = v7;

      v3 = v2[3];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void *sub_F744(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      v4 = [NTKPigmentEditOptionProvider alloc];
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = sub_86A4(v5);
      v7 = v2[4];
      v2[4] = v6;

      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_F7F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_869C(a1, a2, 16);
  }
}

void sub_F80C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_869C(a1, a2, 24);
  }
}

void sub_F820(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_869C(a1, a2, 32);
  }
}

void sub_F834(void *a1, void *a2)
{
  v3 = [a1 character];
  v4 = sub_F614(a2);
  v5 = [NSNumber numberWithUnsignedInteger:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [a2 selectedOptionForCustomEditMode:10 slot:0];
  v8 = v7;
  if (v6 && ([v7 isEqual:v6] & 1) == 0)
  {
    [a2 selectOption:v6 forCustomEditMode:10 slot:0];
    [a2 _notifyObserversOptionsDidChangeForEditMode:10];
  }
}

void sub_F8FC(void *a1, uint64_t a2)
{
  v4 = sub_F614(a1);
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1 _selectedCharacter]);
  [v4 setObject:a2 forKeyedSubscript:v5];
}

void sub_F970(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "NTKCharacterFace - incorrect type for fromOption %{public}@", &v2, 0xCu);
}

void sub_F9E8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "NTKCharacterFace - incorrect type for toOption %{public}@", &v2, 0xCu);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}