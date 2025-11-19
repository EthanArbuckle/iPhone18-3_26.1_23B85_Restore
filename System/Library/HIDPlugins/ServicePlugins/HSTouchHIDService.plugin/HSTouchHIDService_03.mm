uint64_t MTHandStatistics_::MTHandStatistics_(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  *a1 = off_109760;
  *(a1 + 24) = a2;
  *(a1 + 164) = a4;
  *(a1 + 168) = a5;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  MTHandStatistics_::clear(a1, 0);
  return a1;
}

void MTHandStatistics_::~MTHandStatistics_(MTHandStatistics_ *this)
{
  *this = off_109760;
  MTHandStatistics_::clear(this, 0);
}

{
  *this = off_109760;
  MTHandStatistics_::clear(this, 0);

  operator delete();
}

MTHandStatistics_ *MTHandStatistics_::updateCumulativeMaxStats(MTHandStatistics_ *this)
{
  if (*(this + 56) == -1)
  {
    *(this + 56) = 0;
  }

  if (*(this + 58) == -1)
  {
    *(this + 58) = 0;
  }

  if (*(this + 59) == -1)
  {
    *(this + 59) = 0;
  }

  v1 = *(this + 186);
  if (*(this + 186))
  {
    if (v1 > *(this + 197))
    {
      *(this + 197) = v1;
    }

    v2 = *(this + 195);
    if (v2 > *(this + 198))
    {
      *(this + 198) = v2;
    }

    if (v1 != 1)
    {
      v3 = *(this + 1);
      *(this + 14) = v3;
      if (v1 == 5)
      {
        *(this + 15) = v3;
      }
    }
  }

  v4 = *(this + 191);
  if (*(this + 191))
  {
    if (v4 > *(this + 199))
    {
      *(this + 199) = v4;
    }
  }

  else if (!*(this + 192))
  {
    *(this + 197) = 0;
    *(this + 51) = 0;
    *(this + 200) = *(this + 199);
    *(this + 199) = 0;
    *(this + 8) = 0;
  }

  if (!*(this + 195))
  {
    *(this + 198) = 0;
  }

  if (*(this + 298) != *(this + 299))
  {
    *(this + 35) = *(this + 1);
  }

  v5 = *(this + 34);
  if (*(this + 33) < v5)
  {
    *(this + 33) = v5;
  }

  if (*(this + 107) == 2 && *(this + 110) == 7)
  {
    *(this + 32) = 0;
    *(this + 214) = 0;
    *(this + 109) = 0;
  }

  return this;
}

MTHandStatistics_ *MTHandStatistics_::updateStatsWithPath(MTHandStatistics_ *this, MTParserPath_ *a2, int a3, int a4)
{
  v6 = this;
  if (a3)
  {
    ++*(this + 202);
    if (MTParserPath_::isEdgeContact(a2))
    {
      ++*(v6 + 208);
    }

    if (MTParserPath_::isUnidentifiedContact(a2))
    {
      ++*(v6 + 209);
    }

    this = MTParserPath_::wasFingerContact(a2);
    if (this)
    {
      this = MTParserPath_::isPalmContact(a2);
      if (this)
      {
        ++*(v6 + 210);
      }
    }
  }

  if (a4)
  {
    v7 = 40;
    if (a2->var3.var3 == 7)
    {
      v7 = 136;
    }

    *(v6 + 110) |= 1 << (*(&a2->var0 + v7) - 1);
  }

  return this;
}

uint64_t MTHandStatistics_::updateStatsWithFingerPath(uint64_t result, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, float a9, float a10, float a11, char a12, char a13, char a14)
{
  if (a5 && (a12 & 1) == 0)
  {
    ++*(result + 191);
    *(result + 152) |= 1 << (a3 - 1);
    if (a3 != 1)
    {
      ++*(result + 196);
    }

    if (*(result + 64) == 0.0)
    {
      *(result + 64) = *a4;
    }
  }

  if (a6)
  {
    if (a12)
    {
      ++*(result + 211);
      if (a3 == 1)
      {
        *(result + 104) = *(a4 + 16);
      }
    }

    else
    {
      ++*(result + 186);
      if (*(result + 204) < a11)
      {
        *(result + 204) = a11;
      }

      if (a3 != 1)
      {
        ++*(result + 195);
        v17 = *(a4 + 16);
        if (v17 > *(result + 96))
        {
          *(result + 96) = v17;
        }
      }
    }

    if ((a7 & 1) != 0 || (*(result + 88) = *(result + 80), v18 = *(a4 + 16), *(result + 72) = *a4, *(result + 80) = v18, *(result + 176) = a2, *(result + 187)))
    {
      if (a12)
      {
        return result;
      }

      return (*(*result + 48))(result);
    }

    *(result + 56) = v18;
    if ((a12 & 1) == 0)
    {
      return (*(*result + 48))(result);
    }
  }

  else
  {
    if (a7)
    {
      *(result + 218) = 0;
      v14 = *(result + 128);
      if (v14 < *(result + 80))
      {
        *(result + 214) = 0;
      }

      v15 = *(a4 + 40);
      if (v14 < v15)
      {
        *(result + 128) = v15;
        *(result + 180) = a2;
        *(result + 184) = a3 == 1;
        *(result + 185) = a14;
        *(result + 240) = *(result + 248);
        *(result + 248) = a9;
        *(result + 252) = a10;
      }

      ++*(result + 216);
      if (a3 != 1 || *(result + 187) == 5)
      {
        ++*(result + 214);
      }
    }

    if (a8)
    {
      v16 = *(a4 + 48);
      if (*(result + 136) < v16)
      {
        *(result + 136) = v16;
      }
    }
  }

  return result;
}

uint64_t MTHandStatistics_::updateSubsetStatsWithFingerPath(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, int a6, char a7)
{
  if ((a5 & 1) == 0)
  {
    v7 = *(result + 218);
    if (!v7)
    {
      *(result + 212) = *(result + 190) + *(result + 187);
    }

    *(result + 218) = v7 + 1;
  }

  v8 = *(a4 + 16);
  v9 = *(result + 128);
  if (v8 > v9 && v8 < v9 + 0.02)
  {
    v11 = 0;
    *(result + 214) = 0;
    *(result + 218) = 0;
  }

  else
  {
    v11 = *(result + 218);
  }

  v12 = &MTHandStatistics_::kMinClutchingSubsetSizeFrom4F;
  v13 = v11 + *(result + 212);
  if (v13 != 4)
  {
    v12 = &MTHandStatistics_::kMinClutchingSubsetSizeFrom5F;
  }

  if (v8 <= v9 || *(result + 256) >= v9 || *(result + 299) && (*(result + 304) & 1) == 0 && ((v14 = *v12, v15 = *(result + 214), v14 <= v15) ? (v16 = v14 <= v11) : (v16 = 0), v16 ? (v17 = v13 >= 4) : (v17 = 0), !v17 || (a7 & 1) != 0 || v15 <= 1 && (*(result + 185) & 1) != 0))
  {
    v9 = *(result + 256);
    if ((*(result + 164) - 2000) <= 0x3E7 && v8 - v9 > 0.5)
    {
      v9 = *(a4 + 8);
      *(result + 256) = v9;
    }
  }

  else
  {
    *(result + 256) = v9;
    *(result + 304) = 1;
  }

  if (v8 >= v9 || (*(result + 164) - 1000) <= 0x3E7)
  {
    ++*(result + 298);
    v19 = 1 << (a3 - 1);
    *(result + 296) |= v19;
    v20 = *(result + 264);
    v21 = *(a4 + 16);
    v22 = v20 <= v9 || v21 < v20;
    if (v22 || *(result + 304) == 1)
    {
      *(result + 264) = v21;
      *(result + 304) = 0;
    }

    if (a6)
    {
      ++*(result + 302);
      *(result + 300) |= v19;
    }
  }

  return result;
}

MTHandStatistics_ *MTHandStatistics_::updateStatsWithNonFingerPath(MTHandStatistics_ *this, const MTParserPath_ *a2, int a3, int a4)
{
  var3 = a2->var3.var3;
  v5 = 40;
  if (var3 == 7)
  {
    v5 = 136;
  }

  v6 = *(&a2->var0 + v5);
  if (v6 != 15)
  {
    if (var3 == 1)
    {
      ++*(this + 201);
      if (!a3)
      {
LABEL_6:
        if (!a4)
        {
          return this;
        }

        goto LABEL_7;
      }
    }

    else if (!a3)
    {
      goto LABEL_6;
    }

    ++*(this + 193);
    *(this + 78) |= 1 << (v6 - 1);
    if (!a4)
    {
      return this;
    }

LABEL_7:
    ++*(this + 188);
  }

  return this;
}

uint64_t MTHandStatistics_::processHandState(MTHandStatistics_ *this, MTPathStates_ *a2, int a3, char a4)
{
  v6 = *(a2 + 1);
  v7 = *(this + 1);
  if (v7 > v6)
  {
    v7 = 0.0;
  }

  *(this + 1) = v6;
  *(this + 2) = v7;
  MTHandStatistics_::clear(this, 1);
  v38 = a2;
  v8 = *(a2 + 35) + 568 * *(a2 + 94);
  if (*(v8 + 545) == 1)
  {
    v9 = *(v8 + 546) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  *(this + 304) = v9 & 1;
  if (*(this + 305) == 1 && *(this + 190) + *(this + 187) >= 4 && *(this + 299) <= 2u)
  {
    *(this + 32) = 0;
    *(this + 214) = 0;
    *(this + 109) = 0;
  }

  *(this + 40) = *(a2 + 88);
  v10 = *(a2 + 43);
  if (v10)
  {
    LOBYTE(v10) = *(v10 + 11);
  }

  *(this + 222) = v10 & 1;
  v11 = 1;
  v12 = 1113;
  do
  {
    v13 = *(v38 + 35);
    v14 = v13 + v12;
    v15 = (v13 + v12 - 513);
    v16 = (v13 + v12 - 509);
    v17 = *v16;
    if (v11 == *v15 && v17 >= 1)
    {
      v19 = (v14 - 545);
      v20 = v17 - 3;
      (*(*this + 32))(this, v14 - 545, v17 < 7, v17 - 3 < 2);
      if (MTParserPath_::isFingerOrRestingContact((v14 - 545)) || MTParserPath_::isStylusContact((v14 - 545)))
      {
        v21 = (v13 + v12);
        v37 = (*(v21 - 413) - 3) <= 1 && MTParserPath_::wasFingerOrRestingContact((v14 - 545));
        v36 = v14 - 337;
        v22 = v17 < 7;
        v23 = v20 < 2;
        v24 = ((*(v21 - 45) * 3.0) + 6.0) >= *(v38 + 76);
        v25 = MTParserPath_::fingerLiftoffNearEdge(v19, *(v38 + 5), *(v38 + 1) - *(v38 + 2));
        v28 = 40;
        if (*v16 == 7)
        {
          v28 = 136;
        }

        v26.n128_u32[0] = *(v21 - 461);
        v27.n128_u32[0] = *(v21 - 457);
        HIBYTE(v33) = a4;
        BYTE2(v33) = v25;
        BYTE1(v33) = v24;
        LOBYTE(v33) = *v21;
        (*(*this + 40))(this, *v15, *&v21[v28 - 545], v36, v22, v23, v37, *(v21 - 321) >= *(v21 - 329), v26, v27, *(v21 - 437), v33);
        v29 = vrev64_s32(*(v21 - 273));
        *(this + 56) &= HIDWORD(*(v21 - 273));
        v30 = *(this + 228);
        LODWORD(v31) = vorr_s8(v30, v29).u32[0];
        HIDWORD(v31) = vand_s8(v30, v29).i32[1];
        *(this + 228) = v31;
        *(this + 59) &= *(v21 - 265);
      }

      else
      {
        (*(*this + 56))(this, v14 - 545, v17 < 7, v20 < 2);
      }
    }

    ++v11;
    v12 += 568;
  }

  while (v11 != 32);
  (*(*this + 64))(this);
  *(this + 77) = *(v38 + 81);
  if (*(this + 209))
  {
    *(this + 316) = 1;
  }

  if (!*(this + 202) && !*(this + 203))
  {
    return 0;
  }

  *(this + 43) = MTHandStatistics_::makeCollectionEventMask(this, a3);
  return 1;
}

uint64_t MTHandStatistics_::makeCollectionEventMask(MTHandStatistics_ *this, int a2)
{
  v2 = *(this + 42);
  v3 = (v2 & 0x10) == 0 || *(this + 193) > *(this + 194);
  if ((*(this + 186) == 0) != (*(this + 187) == 0))
  {
    v4 = 2;
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((v2 & 0x20) != 0)
    {
      if (*(this + 189) && !*(this + 188))
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_20;
    }

    v4 = 0;
  }

  if (!*(this + 191) && *(this + 192))
  {
    v5 = v3 ? v4 | 0x80 : v4;
    if (*(this + 209) + *(this + 208) < *(this + 202))
    {
      v4 = v5;
    }
  }

LABEL_20:
  LODWORD(v6) = v4 | 0x80;
  if (a2)
  {
    v6 = v6;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(this + 76);
  v8 = *(this + 77);
  if (*(this + 76))
  {
    if (!*(this + 77))
    {
      goto LABEL_33;
    }

    if ((v2 & 0x20) == 0)
    {
      if (v7 == v8)
      {
        return v6;
      }

      return v6 | 0x20;
    }
  }

  else
  {
    if (*(this + 77))
    {
      goto LABEL_33;
    }

    if ((v2 & 0x20) == 0)
    {
      return v6;
    }

    v8 = 0;
  }

  if (!*(this + 79))
  {
    if (!*(this + 78))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!*(this + 78))
  {
LABEL_33:
    v6 = v6 | 1;
  }

LABEL_34:
  if (v7 != v8 || (v2 & 0x20) != 0 && *(this + 78) != *(this + 79))
  {
    return v6 | 0x20;
  }

  return v6;
}

HSUtil::Encoder *MTHandStatistics_::encodeToMap(MTHandStatistics_ *this, HSUtil::Encoder *a2)
{
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, *(this + 1));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key, *(this + 2));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key, *(this + 5));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key, *(this + 6));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key, *(this + 7));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key, *(this + 8));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key, *(this + 9));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key, *(this + 10));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key, *(this + 11));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key, *(this + 12));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key, *(this + 13));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key, *(this + 14));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key, *(this + 15));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key, *(this + 16));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key, *(this + 17));
  v4 = HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key;
  v5 = *(this + 18);

  return HSUtil::Encoder::encodeDouble(a2, v4, v5);
}

uint64_t MTHandStatistics_::decodeFromMap(MTHandStatistics_ *this, HSUtil::Decoder *a2)
{
  if ((MTTimeState_::decodeFromMap(this, a2) & 1) == 0)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 5) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 6) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 7) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 8) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 9) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 10) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 11) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 12) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 13) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 14) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 15) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 16) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 17) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  *(this + 18) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

void __cxx_global_var_init_31()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_29(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_5(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void MTActionEvent_::MTActionEvent_(MTActionEvent_ *this, __int16 a2, int a3, __int16 a4)
{
  *this = a2;
  *(this + 1) = a4;
  *(this + 1) = a3;
}

_DWORD *MTActionEvent_::operator=(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    *result = *a2;
    result[1] = a2[1];
  }

  return result;
}

uint64_t MTActionEvent_::deriveGestureStartedType(MTActionEvent_ *this)
{
  if ((*this & 0xFFFE) == 0x46)
  {
    return 33;
  }

  else
  {
    return 0;
  }
}

void MTDragManagerEventQueue_::MTDragManagerEventQueue_(MTDragManagerEventQueue_ *this)
{
  MTTapDragManager_::MTTapDragManager_(this);
  *v1 = off_1097D0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
}

MTDragManagerEventQueue_ *MTDragManagerEventQueue_::dispatchModifierUpdates(MTDragManagerEventQueue_ *this, __IOHIDEvent *a2, int a3, int a4, unsigned int a5, int a6)
{
  if (a5 <= 0xF)
  {
    v7 = a5;
    v11 = this;
    do
    {
      v12 = 1 << v7;
      if (((1 << v7) & a3) != 0)
      {
        if (a4)
        {
          v13 = v11->_modifiersPendingRelease & ~v12;
        }

        else
        {
          v13 = v11->_modifiersPendingRelease | v12;
        }

        v11->_modifiersPendingRelease = v13;
        if (v7 > 7)
        {
          this = MTAppendMouseButtonEvent();
        }

        else
        {
          this = MTAppendModifierKeyEvent(a2, v12);
        }
      }

      v7 += a6;
    }

    while (v7 < 0x10);
  }

  return this;
}

MTDragManagerEventQueue_ *MTDragManagerEventQueue_::autoInsertModifierEvents(MTDragManagerEventQueue_ *this, __IOHIDEvent *a2, const MTActionEvent_ *a3, unsigned int a4)
{
  v5 = this;
  if (!a3)
  {
    p_lastModifiersFromHand = &this->_lastModifiersFromHand;
    modifiersFromLastStroke = this->_modifiersFromLastStroke;
    if (!(modifiersFromLastStroke | LOWORD(this->_lastModifiersFromHand)))
    {
      return this;
    }

    v11 = 0;
    v12 = (modifiersFromLastStroke | this->_lastModifiersFromHand) & ~a4;
    goto LABEL_15;
  }

  v6 = *(a3 + 1);
  v7 = *a3;
  if ((v7 - 129) <= 1)
  {
    modifiersFromLastStroke = 0;
    v9 = 1 << *(a3 + 1);
    if ((*(a3 + 1) & 0xFFF8) != 0xE0)
    {
      v9 = 0;
    }

    if (v7 != 130)
    {
      goto LABEL_12;
    }

LABEL_10:
    v13 = 0;
    v14 = this->_modifiersFromLastStroke;
    v15 = this->_modifiersPendingRelease & ~v9;
    this->_modifiersPendingRelease = v15;
    modifiersFromLastStroke = v14 & ~v9;
    v16 = ~v15;
    v12 = v6;
    goto LABEL_13;
  }

  v9 = 0;
  if (v7 == 66)
  {
    goto LABEL_10;
  }

  modifiersFromLastStroke = *(a3 + 1);
LABEL_12:
  v17 = this->_modifiersFromLastStroke;
  v18 = this->_modifiersPendingRelease | v9;
  this->_modifiersPendingRelease = v18;
  v16 = ~v18;
  v13 = v6 & ~v18;
  v12 = v17 & ~(v9 | v6);
LABEL_13:
  v11 = v16 & a4 | v13;
  if (!v9)
  {
    p_lastModifiersFromHand = &this->_lastModifiersFromHand;
    v12 |= this->_lastModifiersFromHand & ~(v6 | a4);
LABEL_15:
    *p_lastModifiersFromHand = a4;
  }

  this->_modifiersFromLastStroke = modifiersFromLastStroke & ~v12;
  if (v12)
  {
    this = MTDragManagerEventQueue_::dispatchModifierUpdates(this, a2, v12, 1, 0xFu, -1);
  }

  if (v11)
  {

    return MTDragManagerEventQueue_::dispatchModifierUpdates(v5, a2, v11, 0, 0, 1);
  }

  return this;
}

uint64_t MTDragManagerEventQueue_::dispatchFluid(MTDragManagerEventQueue_ *this, MTActionEvent_ *a2, __IOHIDEvent *a3, float a4, float a5)
{
  forceManagementP = this->_forceManagementP;
  if (!forceManagementP || !MTForceManagement_::whichForceButtonActivated(forceManagementP))
  {
    MTDragManagerEventQueue_::autoInsertModifierEvents(this, a3, a2, 0);
  }

  v12 = *a2;
  if (v12 > 0x25)
  {
    if (v12 != 38 && v12 != 39)
    {
LABEL_10:
      v13 = 0;
      goto LABEL_13;
    }

    v13 = 27;
  }

  else
  {
    if (v12 != 36)
    {
      if (v12 == 37)
      {
        v13 = 23;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v13 = 16;
  }

LABEL_13:
  *&v11 = a4;

  return MTAppendFluidSwipeEvent(v11, a5, a3, v13);
}

MTDragManagerEventQueue_ *MTDragManagerEventQueue_::dispatch(MTTapDragManager_ *a1, const MTActionEvent_ *a2, __IOHIDEvent *a3, int a4, int *a5, float *a6)
{
  v12 = MTTapDragManager_::dragHandModifiers(a1);
  MTAppendChordMotionCodeToCollectionEvent();
  result = MTDragManagerEventQueue_::autoInsertModifierEvents(a1, a3, a2, v12);
  v16 = *a2;
  if (v16 == 32)
  {

    return MTAppendGestureEndedToCollectionEvent();
  }

  if (v16 == 33)
  {

    return MTAppendGestureStartedToCollectionEvent();
  }

  if ((v16 - 35) <= 4)
  {
    if (*a2 > 0x25u)
    {
      if (v16 == 38 || v16 == 39)
      {
        v17 = 27;
        goto LABEL_37;
      }
    }

    else
    {
      if (v16 == 36)
      {
        v17 = 16;
        goto LABEL_37;
      }

      if (v16 == 37)
      {
        v17 = 23;
LABEL_37:

        return MTAppendFluidSwipeEvent(0.0, 0.0, a3, v17);
      }
    }

    v17 = 0;
    goto LABEL_37;
  }

  if ((v16 & 0x80) != 0)
  {
    if (*a2 > 0x85u)
    {
      if (v16 == 134)
      {
        return result;
      }

      if (v16 == 140)
      {

        return MTAppendShowDefinitionEvent();
      }
    }

    else
    {
      if ((v16 - 129) < 2)
      {

        return MTAppendKeyboardEvent();
      }

      if (v16 == 133)
      {

        return MTAppendSwipeEvent();
      }
    }

    return MTAppendKeystrokeEvent();
  }

  if ((v16 & 0x40) == 0 || (v16 - 65) < 2)
  {
    return result;
  }

  switch(v16)
  {
    case 'I':

      return MTAppendZoomToggleEvent();
    case 'H':
      v26 = *(a2 + 1);
      v27 = *(a1 + 27);
      v25 = 66;
      MTDragManagerEventQueue_::autoInsertModifierEvents(a1, a3, &v25, v12);
      v25 = 65;
      MTDragManagerEventQueue_::autoInsertModifierEvents(a1, a3, &v25, v12);
      v25 = 66;
      return MTDragManagerEventQueue_::autoInsertModifierEvents(a1, a3, &v25, v12);
    case 'C':
      v26 = *(a2 + 1);
      v27 = *(a1 + 27);
      v25 = 66;
      return MTDragManagerEventQueue_::autoInsertModifierEvents(a1, a3, &v25, v12);
  }

  if ((~v16 & 0x44) != 0)
  {
    return result;
  }

  if (!a5)
  {
    if (!a4)
    {
      return result;
    }

    if (v16 == 71)
    {
      *&v14 = *a6;
      *&v15 = a6[1];
      v22 = a6[2];
      v23 = a3;
      v24 = a4;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_73;
    }

    if (v16 != 70)
    {
      return result;
    }

    goto LABEL_66;
  }

  switch(v16)
  {
    case 'F':
LABEL_66:

      return MTAppendScrollEvent();
    case 'N':

      return MTAppendBoundaryScrollEvent();
    case 'G':
      v18 = a5[2];
      v19 = a5[3];
      v20 = *a5;
      v21 = a5[1];
      *&v14 = *a6;
      *&v15 = a6[1];
      v22 = a6[2];
      v23 = a3;
      v24 = a4;
LABEL_73:

      return MTAppendZoomRotateTranslateEvent(v14, v15, v22, v23, v24, v18, v19, v20, v21);
    default:

      return MTAppendRelativeMouseEvent();
  }
}

uint64_t MTGesture::dispatchEvents(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v9 = *a1;
  if (a1[1] == *a1)
  {
    return 0;
  }

  result = 0;
  v20 = 0;
  do
  {
    (*(*a2 + 24))(a2, v9 + 8 * result, a3, a4, a5, a6, a7, a8, a9);
    v9 = *a1;
    result = ++v20;
  }

  while (v20 < ((a1[1] - *a1) >> 3));
  return result;
}

MTDragManagerEventQueue_ *MTDragManagerEventQueue_::enableAutoReleaseOfMultiFingerDrag(MTDragManagerEventQueue_ *this)
{
  if ((this->_modifiersPendingRelease & 0x100) != 0)
  {
    this->_lastModifiersFromHand |= 0x100u;
  }

  return this;
}

MTDragManagerEventQueue_ *MTDragManagerEventQueue_::forceButtonChange(MTDragManagerEventQueue_ *this, __IOHIDEvent *a2)
{
  v4 = MTTapDragManager_::dragHandModifiers(this);
  v6 = 0;
  return MTDragManagerEventQueue_::autoInsertModifierEvents(this, a2, &v6, v4);
}

uint64_t MTDragManagerEventQueue_::serviceEventQueue(MTDragManagerEventQueue_ *this, __IOHIDEvent *a2, MTGestureConfig_ *a3, double a4, uint64_t a5)
{
  if (this->_cycle_state == 1)
  {
    return MTTapDragManager_::sendWaitingClickAtHalfTimeout(this, a2, a4, a5) ^ 1;
  }

  if (this->_modifiersPendingRelease && this->_modifiersFromLastStroke | this->_lastModifiersFromHand && ((*(*a3 + 16))(a3, a5, a4) & 1) == 0)
  {
    MTDragManagerEventQueue_::autoInsertModifierEvents(this, a2, 0, 0);
    if (((*this->_vptr$MTTapDragManager_)(this) & 1) == 0)
    {
      MTTapDragManager_::clearCycle(this);
    }
  }

  return this->_modifiersPendingRelease != 0;
}

uint64_t MTDragManagerEventQueue_::startMomentum(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 1268) = a3;
  *(a1 + 1264) = 1;
  return MTAppendMomentumEnableEvent();
}

uint64_t MTDragManagerEventQueue_::stopMomentum(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 1268) = a3;
  *(a1 + 1264) = 0;
  return MTAppendMomentumEnableEvent();
}

void __cxx_global_var_init_32()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_30(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_6(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

void MTForceThresholding_::MTForceThresholding_(MTForceThresholding_ *this)
{
  *this = off_109820;
  MTForceBehavior_::MTForceBehavior_((this + 176));
  *(this + 80) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  MTForceThresholding_::clear(this);
  MTParameterFactory_::initForceThresholdQualifiers(this + 8);
  MTParameterFactory_::initForceActuationQualifiers(this + 144);
  *(this + 42) = 0x100000001;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 46) = _D0;
}

void sub_581D4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 432);
  if (v3)
  {
    *(v1 + 440) = v3;
    operator delete(v3);
  }

  MTForceBehavior_::~MTForceBehavior_((v1 + 176));
  _Unwind_Resume(a1);
}

void MTForceThresholding_::clear(MTForceThresholding_ *this)
{
  *(this + 81) = 0;
  *(this + 41) = 0;
  *(this + 114) = 0;
  *(this + 58) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 55) = *(this + 54);
  v1 = *(this + 48);
  if (v1)
  {
    std::vector<float>::resize(this + 18, v1);
  }
}

void MTForceThresholding_::~MTForceThresholding_(MTForceThresholding_ *this)
{
  *this = off_109820;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 46) = _D0;
  v7 = *(this + 54);
  if (v7)
  {
    *(this + 55) = v7;
    operator delete(v7);
  }

  v8 = *(this + 37);
  if (v8)
  {
    *(this + 38) = v8;
    operator delete(v8);
  }

  v9 = *(this + 34);
  if (v9)
  {
    *(this + 35) = v9;
    operator delete(v9);
  }

  v10 = *(this + 31);
  if (v10)
  {
    *(this + 32) = v10;
    operator delete(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    *(this + 29) = v11;
    operator delete(v11);
  }

  v12 = *(this + 25);
  if (v12)
  {
    *(this + 26) = v12;
    operator delete(v12);
  }
}

{
  MTForceThresholding_::~MTForceThresholding_(this);

  operator delete();
}

void MTForceThresholding_::setForceBehavior(MTForceThresholding_ *this, const MTForceBehavior_ *a2, int a3)
{
  MTForceBehavior_::operator=(this + 176, a2);
  *(this + 80) = a3;

  MTForceThresholding_::clear(this);
}

float MTForceThresholding_::updateForceBehavior(std::vector<int> *this, const MTForceBehavior_ *a2, int a3)
{
  MTForceBehavior_::operator=(&this[7].__end_, a2);
  begin_low = LODWORD(this[8].__begin_);
  if (begin_low > this[18].__end_ - this[18].__begin_)
  {
    std::vector<float>::resize(this + 18, begin_low);
    LODWORD(begin_low) = this[8].__begin_;
  }

  if (HIDWORD(this[13].__end_) >= begin_low)
  {
    HIDWORD(this[13].__end_) = begin_low - 1;
    LODWORD(this[13].__end_cap_.__value_) = begin_low - 1;
  }

  LODWORD(this[13].__end_) = a3;
  result = *(&this[15].__end_cap_.__value_ + 1);
  *&this[16].__begin_ = result;
  return result;
}

uint64_t MTForceThresholding_::actuationWaveformID(MTForceThresholding_ *this)
{
  v1 = *(this + 81);
  v2 = *(this + 82);
  if (v1 > v2)
  {
    v3 = 272;
    return *(*(this + v3) + 4 * v1);
  }

  if (((v1 - v2) & 0x80000000) != 0)
  {
    v3 = 296;
    v1 = *(this + 82);
    return *(*(this + v3) + 4 * v1);
  }

  return 0;
}

__n128 MTForceThresholding_::setForceActuationQualifiers(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 144) = *a2;
  *(a1 + 160) = v3;
  return result;
}

float MTForceThresholding_::getClickThresholdMultiplier(uint64_t a1, unsigned int a2)
{
  result = 1.0;
  if (a2 <= 2)
  {
    return flt_D6CC8[a2];
  }

  return result;
}

float MTForceThresholding_::basicThresholdForLevel(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    result = 0.0;
LABEL_7:
    v5 = *(a1 + 336);
    goto LABEL_8;
  }

  v3 = *(a1 + 200);
  v2 = *(a1 + 208);
  if (((v2 - v3) >> 2) <= a2)
  {
    result = *(v2 - 4) + *(v2 - 4);
  }

  else
  {
    result = *(v3 + 4 * a2);
  }

  if (a2 <= 1)
  {
    goto LABEL_7;
  }

  if (a2 > 3)
  {
    return result;
  }

  v5 = *(a1 + 340);
LABEL_8:
  v6 = 1.0;
  if (v5 <= 2)
  {
    v6 = flt_D6CC8[v5];
  }

  return result * v6;
}

float MTForceThresholding_::adaptiveThresholdForLevel(uint64_t a1, unsigned int a2, float *a3, uint64_t a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 140);
  v9 = MTForceThresholding_::basicThresholdForLevel(a1, a2);
  if ((*(a1 + 424) & 1) == 0)
  {
    v10 = a2 + 2;
    v11 = MTForceThresholding_::basicThresholdForLevel(a1, a2 + 2);
    v12 = MTForceThresholding_::basicThresholdForLevel(a1, a2 - 2);
    v13 = *(a1 + 136);
    v14 = *(a1 + 340);
    v15 = 1.0;
    if (v14 <= 2)
    {
      v15 = flt_D6CC8[v14];
    }

    v16 = (v13 * v15) + *(a1 + 364);
    v17 = v11 - v9;
    v18 = v9 - v12;
    if (a2 < 2 || (a2 & 1) != 0)
    {
      if (a2)
      {
        v21 = *(a1 + 324);
        if (v21 >= ((a2 + 1) >> 1))
        {
          v22 = v9;
        }

        else
        {
          v22 = v16;
          if (v21 < (((*(a1 + 208) - *(a1 + 200)) >> 2) + 1) / 2)
          {
            v22 = v9;
            if (a2 >= 3)
            {
              v22 = a3[2] + *(a1 + 456);
              if (v9 > v22)
              {
                v22 = v9;
              }
            }
          }
        }

        v28 = *(a1 + 392);
        v29 = *(a1 + 116);
        v30 = 1.0;
        if (v28 > v29)
        {
          v31 = *(a1 + 120);
          v30 = 0.0;
          if (v28 < v31)
          {
            v30 = (v31 - v28) / (v31 - v29);
          }
        }

        v27 = (((v17 * *(a1 + 8)) + v22) * (1.0 - v30)) + (v30 * v22);
        goto LABEL_29;
      }
    }

    else if ((v10 >> 1) <= *(a1 + 324))
    {
      v19 = *(*(a1 + 432) + 4 * (v10 >> 1));
      v20 = 1.0;
      if (v19 > 300.0)
      {
        v20 = 0.0;
        if (v19 < v13)
        {
          v20 = (v13 - v19) / (v13 + -300.0);
        }
      }

      v9 = v19 * (((1.0 - v20) * 0.625) + (v20 * 0.85));
    }

    v23 = *(a1 + 396);
    v24 = *(a1 + 124);
    v25 = 1.0;
    if (v23 > v24)
    {
      v26 = *(a1 + 128);
      v25 = 0.0;
      if (v23 < v26)
      {
        v25 = (v26 - v23) / (v26 - v24);
      }
    }

    v27 = ((v9 - (v18 * *(a1 + 12))) * (1.0 - v25)) + (v25 * v9);
LABEL_29:
    if ((*(a1 + 180) & 0x80) == 0)
    {
      v32 = v17 * *(a1 + 20);
      v33 = v18 * *(a1 + 24);
      v34 = *(a4 + 64);
      v35 = *(a1 + 108);
      v36 = *(a1 + 112);
      v37 = v34 < v36;
      v38 = (v36 - v34) / (v36 - v35);
      if (!v37)
      {
        v38 = 0.0;
      }

      if (v34 > v35)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1.0;
      }

      v27 = ((v32 + v27) * (1.0 - v39)) + (v39 * (v27 - v33));
    }

    if (v27 >= v16)
    {
      v9 = v16;
    }

    else
    {
      v9 = v27;
    }

    if ((a2 & 1) != 0 && *(a1 + 324) < ((a2 + 1) >> 1))
    {
      v40 = a3[10];
      v41 = a3[11];
      v42 = v40 * *(a1 + 132);
      if (v42 >= (*(a1 + 356) - v41))
      {
        v42 = *(a1 + 356) - v41;
      }

      v43 = v40 - v41;
      v37 = v40 < v41;
      v44 = 0.0;
      if (!v37)
      {
        v44 = v43;
      }

      v45 = (v40 + v42) - v44;
      if (v9 <= v45)
      {
        v9 = v45;
      }
    }

    if (*(a1 + 400) > *(a1 + 128) && (a2 & 1) != 0 && *(a1 + 176) != 16 && *(a1 + 324) < ((a2 + 1) >> 1) && a2 > 2)
    {
      return v8 + v8;
    }
  }

  return v9;
}

float MTForceThresholding_::thresholdForNextRelease(MTForceThresholding_ *this, const MTForceFilter_ *a2, const MTParserPath_ *a3)
{
  v6 = 2 * *(this + 81);
  do
  {
    v7 = v6;
    if (v6 < 3)
    {
      break;
    }

    v8 = MTForceBehavior_::skipReleaseStage(this + 176, (v6 - 1) >> 1);
    v6 = v7 - 2;
  }

  while (v8);

  return MTForceThresholding_::adaptiveThresholdForLevel(this, v7 - 2, a2, a3);
}

BOOL MTForceBehavior_::skipReleaseStage(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v6, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v3 = v7;
  v4 = v6;
  if (v6 != v7)
  {
    v4 = v6;
    while (*v4 != a2)
    {
      if (++v4 == v7)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v4 != v3;
}

float MTForceThresholding_::thresholdForNextActivation(MTForceThresholding_ *this, const MTForceFilter_ *a2, const MTParserPath_ *a3)
{
  v6 = 2 * *(this + 81) + 2;
  do
  {
    v7 = v6;
    if (v6 >= ((*(this + 26) - *(this + 25)) >> 2))
    {
      break;
    }

    v8 = MTForceBehavior_::skipActivationStage(this + 176, v6 / 2);
    v6 = v7 + 2;
  }

  while (v8);

  return MTForceThresholding_::adaptiveThresholdForLevel(this, v7 - 1, a2, a3);
}

BOOL MTForceBehavior_::skipActivationStage(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v6, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v3 = v7;
  v4 = v6;
  if (v6 != v7)
  {
    v4 = v6;
    while (*v4 != a2)
    {
      if (++v4 == v7)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v4 != v3;
}

float MTForceThresholding_::preReleaseProgress(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 352);
  v3 = v2 * (*(a1 + 56) + 1.0);
  result = 0.0;
  if (v2 < v3 && *(a1 + 324) >= 1)
  {
    v5 = *(a2 + 40);
    result = 1.0;
    if (v5 > v2)
    {
      result = 0.0;
      if (v5 < v3)
      {
        return (v3 - v5) / (v3 - v2);
      }
    }
  }

  return result;
}

float MTForceThresholding_::preActivationProgress(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 356);
  v3 = v2 * (1.0 - *(a1 + 60));
  result = 0.0;
  if (v3 < v2 && *(a1 + 324) < (((*(a1 + 208) - *(a1 + 200)) >> 2) + 1) / 2 && v2 < *(a1 + 140))
  {
    v5 = *(a2 + 40);
    if (v5 > v3)
    {
      result = 1.0;
      if (v5 < v2)
      {
        return (v5 - v3) / (v2 - v3);
      }
    }
  }

  return result;
}

float MTForceThresholding_::postActivationProgress(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 324);
  if (*(a1 + 188) == 1 && v3 >= (((*(a1 + 208) - *(a1 + 200)) >> 2) + 1) / 2)
  {
    v2 = *(a1 + 68);
  }

  v4 = *(*(a1 + 432) + 4 * v3);
  v5 = *(a1 + 176);
  if (v5 == 12)
  {
    v6 = *(a1 + 336);
    v7 = 1.0;
    if (v6 <= 2)
    {
      v7 = flt_D6CC8[v6];
    }

    v8 = *(a1 + 136) * v7;
  }

  else
  {
    v9 = 1.0;
    if (v5 == 11)
    {
      v10 = *(a1 + 336);
      if (v10 <= 2)
      {
        v9 = flt_D6CC8[v10];
      }

      v8 = (*(a1 + 136) * v9) * 0.5;
      v4 = 0.0;
    }

    else
    {
      v8 = (v2 + 1.0) * v4;
    }
  }

  if (v3 < (((*(a1 + 208) - *(a1 + 200)) >> 2) + 1) / 2 && v8 >= *(a1 + 356))
  {
    v8 = *(a1 + 356);
  }

  v11 = 0.0;
  if (v3 >= 1 && v4 < v8)
  {
    v12 = *(a2 + 40);
    if (v12 > v4)
    {
      if (v12 >= v8)
      {
        v11 = 3.14159265;
      }

      else
      {
        v11 = ((v12 - v4) / (v8 - v4)) * 3.14159265;
      }
    }
  }

  return (1.0 - cos(v11)) * 0.5;
}

float MTForceThresholding_::rescaleForceAsLadderProgress(MTForceThresholding_ *this, const MTPathStates_ *a2)
{
  v2 = *(a2 + 35) + 568 * *(this + 80) + 288;
  v3 = (*(this + 26) - *(this + 25)) >> 2;
  if ((v3 & 0x80000000) != 0)
  {
    v8 = 0.0;
    v9 = 1.0;
    v6 = 0.0;
LABEL_11:
    v10 = (*(v2 + 40) - v8) / (v9 - v8);
    return v6 + v10;
  }

  v5 = *(*(a2 + 35) + 568 * *(this + 80) + 328);
  v6 = 0.0;
  v7 = -1;
  do
  {
    v8 = MTForceThresholding_::basicThresholdForLevel(this, v7);
    v7 += 2;
    v9 = MTForceThresholding_::basicThresholdForLevel(this, v7);
    if (v5 < v8 || v5 < v9 || v7 >= v3 && v5 > v9)
    {
      break;
    }

    v6 = v6 + 1.0;
  }

  while (v7 < v3);
  v10 = 0.0;
  if (v9 > v8)
  {
    goto LABEL_11;
  }

  return v6 + v10;
}

uint64_t MTForceThresholding_::classifyForceLevelAdaptively(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (*(a1 + 208) - *(a1 + 200)) >> 2;
  v8 = a2[10];
  v9 = v7 & ~(v7 >> 31);
  v10 = (v9 - 1);
  while (v9 != v6)
  {
    v11 = MTForceThresholding_::adaptiveThresholdForLevel(a1, v6++, a2, a3);
    if (v8 <= v11)
    {
      return v6 - 2;
    }
  }

  return v10;
}

uint64_t MTForceThresholding_::fingersMatchBehavior(MTForceThresholding_ *this, const MTPathStates_ *a2, int a3)
{
  if (MTForceBehavior_::forceSourceFingerCount((this + 176)) == 2)
  {
    return *(*(this + 59) + 576) == 2;
  }

  if (MTForceBehavior_::forceSourceFingerCount((this + 176)) == 3)
  {
    return *(*(this + 59) + 576) == 3;
  }

  v8 = (*(a2 + 35) + 568 * a3);

  return MTParserPath_::isValidClickSource(v8);
}

void MTForceThresholding_::updateAccidentalClickPreventionOffsets(uint64_t a1, unsigned int a2, uint64_t a3, MTParserPath_ *this, uint64_t a5, double a6, float a7, float a8)
{
  v14 = *(a1 + 340);
  v15 = 1.0;
  if (v14 <= 2)
  {
    v15 = flt_D6CC8[v14];
  }

  if (v14)
  {
    v16 = dbl_D6CA0[v14 == 2];
  }

  else
  {
    v16 = 0.9992;
  }

  v17 = *(a1 + 88) + (v15 + -1.0) * 0.01;
  isThumbContact = MTParserPath_::isThumbContact(this);
  v19 = v17 + 0.01;
  if (!isThumbContact)
  {
    v19 = v17;
  }

  v20 = pow(v19, (*(a5 + 8) - *(a5 + 16)) / 0.00800000038);
  v21 = *(a1 + 92);
  if (*(a1 + 400) > *(a1 + 128))
  {
    v22 = *(a3 + 8);
    v23 = *(a1 + 100);
    v24 = 0.0;
    if (v22 > v23)
    {
      v25 = *(a1 + 104);
      v26 = v22 < v25;
      v24 = (v22 - v23) / (v25 - v23);
      if (!v26)
      {
        v24 = 1.0;
      }
    }

    v21 = (v21 * (1.0 - v24)) + (v24 * *(a1 + 96));
  }

  v27 = *(a1 + 80);
  v28 = *(a1 + 84);
  v29 = a7 - (*(a1 + 72) * v15);
  v30 = a8 - (*(a1 + 76) * v15);
  v31 = fmaxf(v29, 0.0);
  if (v31 >= v27)
  {
    v32 = *(a1 + 80);
  }

  else
  {
    v32 = v31;
  }

  *(a1 + 364) = v32;
  if (v29 <= v30)
  {
    v29 = v30;
  }

  v33 = fmaxf(v29, 0.0);
  if (v33 >= v27)
  {
    v34 = v27;
  }

  else
  {
    v34 = v33;
  }

  *(a1 + 360) = v34;
  v35 = MTForceThresholding_::basicThresholdForLevel(a1, 3u);
  if (a2 != 0 && a2 < 0xFFFFFFFE)
  {
    v36 = *(a1 + 464) * (*(a1 + 464) * *(a1 + 464));
    *(a1 + 464) = v36;
    if (v36 <= 0.01)
    {
      v38 = v20;
      v37 = ((1.0 - v38) * ((v15 * v21) + v32)) + (v38 * *(a1 + 456));
      goto LABEL_26;
    }
  }

  else
  {
    *(a1 + 464) = v16;
  }

  v37 = v35 + (v32 + ((v15 * v28) + v34));
LABEL_26:
  *(a1 + 456) = v37;
}

void MTForceThresholding_::updateAdaptiveThresholdingParameters(uint64_t a1, int a2, MTPathStates_ *this, double a4, uint64_t a5)
{
  MTPathStates_::getMaxDisplacement_mm(this);
  *(a1 + 400) = v9;
  v10 = *(a5 + 336);
  *(a1 + 404) = v10;
  v11 = *(a1 + 324);
  if (*(a1 + 332) > v11 && v11 >= 1)
  {
    v13 = *(this + 1) - a4;
    v14 = 0.0;
    if (v13 > 0.25)
    {
      v14 = 1.0;
      if (v13 < 0.5)
      {
        v14 = (v13 + -0.25) * 4.0;
      }
    }

    v10 = (v9 * (1.0 - v14)) + (v14 * v10);
  }

  *(a1 + 396) = v10;
  *(a1 + 392) = MTPathStates_::sumOfLowpassPeakFingerSpeeds(this);
}

uint64_t MTForceThresholding_::analyzeForceAndStage(MTForceThresholding_ *this, MTPathStates_ *a2, int a3, const MTForceBehavior_ *a4, double a5, double a6, int a7, float a8, float a9)
{
  v10 = a5;
  v14 = *(this + 81);
  v15 = 2 * v14;
  v16 = 2 * v14 - 1;
  v17 = *(this + 80);
  v18 = v17;
  if (v14)
  {
    v19 = *(a2 + 35);
    LODWORD(a5) = *(v19 + 568 * a3 + 328);
    if (*&a5 > *(v19 + 568 * v17 + 328))
    {
      v18 = a3;
      v17 = a3;
    }
  }

  else
  {
    v19 = *(a2 + 35);
  }

  v20 = (v19 + 568 * v18);
  MTForceThresholding_::updateAccidentalClickPreventionOffsets(this, v15 - 1, &v20[2].var3.var8, v20, a2, a5, a8, a9);
  MTForceThresholding_::updateAdaptiveThresholdingParameters(this, v21, a2, v10, v20);
  v22 = MTForceThresholding_::classifyForceLevelAdaptively(this, &v20[2].var3.var8, v20);
  v23 = v22;
  var4 = v20[2].var4;
  v25 = *(this + 44);
  *(this + 95) = var4;
  if (a4->var0 == 11 && v25 == 11 && !*(this + 81) && *(a2 + 1) - v10 < *(this + 12))
  {
    if (v22 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v22;
    }

    if ((v20->var3.var3 - 3) >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = v26;
    }
  }

  v27 = *(this + 96);
  if (vabds_f32(var4, v27) <= (v27 * *(this + 33)))
  {
    if (v27 != 0.0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *(this + 96) = 0;
  }

  if (v23 <= v15)
  {
    if (v23 > v15 - 3)
    {
      goto LABEL_35;
    }

    v28 = (v23 & 0x80000001) == 1 ? v23 : v23 + 1;
    v30 = *(this + 94);
    v31 = *(this + 97);
    if (v31 > v30)
    {
      v32 = *(a2 + 88);
      if ((v31 - v32) < ((v30 - var4) * *(this + 9)) && v32 > *(this + 10))
      {
        goto LABEL_35;
      }
    }

    if (v25 == 11 && *(this + 81) >= 1 && (v20->var3.var3 - 3) < 2)
    {
      goto LABEL_35;
    }

    v29 = MTForceBehavior_::skipReleaseStage(this + 176, (v28 + 1) / 2);
  }

  else
  {
    if (!MTForceThresholding_::fingersMatchBehavior(this, a2, v17) || !a7)
    {
      goto LABEL_35;
    }

    v28 = v23 - ((v23 & 0x80000001) != 1);
    v29 = MTForceBehavior_::skipActivationStage(this + 176, (v28 + 1) / 2);
  }

  if (!v29)
  {
    v16 = v28;
  }

LABEL_35:
  v33 = ((v16 + 1) / 2);
  if (v33 < *(this + 81))
  {
    v16 = v16 + 1 - ((v16 & 0x80000001) != 1);
  }

  *(this + 86) = MTForceThresholding_::basicThresholdForLevel(this, v16);
  *(this + 87) = MTForceThresholding_::adaptiveThresholdForLevel(this, v16, &v20[2].var3.var8, v20);
  MTForceThresholding_::updateStage(this, v33, &v20[2].var3.var8, v20, *(a2 + 88), *(a2 + 1));
  *(this + 88) = MTForceThresholding_::thresholdForNextRelease(this, &v20[2].var3.var8, v20);
  *(this + 89) = MTForceThresholding_::thresholdForNextActivation(this, &v20[2].var3.var8, v20);
  return v33;
}

void MTForceThresholding_::updateStage(uint64_t a1, int a2, float *a3, uint64_t a4, float a5, double a6)
{
  v8 = *(a1 + 324);
  *(a1 + 328) = v8;
  *(a1 + 324) = a2;
  v9 = *(a1 + 332);
  if (v9 < a2)
  {
    *(a1 + 332) = a2;
    v10 = a3[10];
LABEL_3:
    *(a1 + 376) = v10;
    *(a1 + 388) = a5;
    *(a1 + 416) = a6;
    goto LABEL_6;
  }

  if (v9 == a2)
  {
    v10 = a3[10];
    if (v10 > *(a1 + 376))
    {
      goto LABEL_3;
    }
  }

LABEL_6:
  if (a2 >= 1 && !v8)
  {
    *(a1 + 408) = a6;
  }

  if (v8 != a2)
  {
    if (*(a1 + 172) == 1)
    {
      v11 = *(a4 + 64) + -1.0;
      v12 = 2.0;
      if (v11 < 2.0)
      {
        v12 = 0.0;
        if (v11 >= 0.0)
        {
          v12 = *(a4 + 64) + -1.0;
        }
      }

      *(a1 + 368) = (MTForceFilter_::surgeToActuationStrength(a3, (a1 + 144)) + (*(a1 + 164) * v12)) * *(a1 + 168);
      *(a1 + 372) = (*(a1 + 156) * v12) + 1.0;
      a2 = *(a1 + 324);
      v8 = *(a1 + 328);
      if (a2 > v8)
      {
        v14 = MTForceFilter_::surge_g_s(a3);
        v15 = *(a1 + 144);
        v16 = MTForceFilter_::surgeToActuationStrength(a3, (a1 + 144));
        printf("Surge=%.2f/%.2f, SurgeAmplitude=%.2f + excess area=%.2f -> stageStrength=%.2f, stageDilation=%.2f\n", v14, v15, v16, v12, *(a1 + 368), *(a1 + 372));
        a2 = *(a1 + 324);
        v8 = *(a1 + 328);
      }
    }

    else
    {
      __asm { FMOV            V0.2S, #1.0 }

      *(a1 + 368) = _D0;
    }

    *(a1 + 384) = 0;
    if (a2 <= v8)
    {
      if (a2 < v8)
      {
        v28 = (*(a1 + 432) + 4 * a2 + 4);
        v29 = 4 * (v8 + ~a2) + 4;

        bzero(v28, v29);
      }
    }

    else
    {
      v21 = 0;
      _D0.i32[0] = a3[10];
      v22 = a2 - v8;
      v23 = vdupq_n_s64(v22 - 1);
      v24 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v25 = (*(a1 + 432) + 4 * v8 + 8);
      do
      {
        v26 = vdupq_n_s64(v21);
        v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_D64F0)));
        if (vuzp1_s16(v27, _D0).u8[0])
        {
          *(v25 - 1) = _D0.i32[0];
        }

        if (vuzp1_s16(v27, _D0).i8[2])
        {
          *v25 = _D0.i32[0];
        }

        if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_D64E0)))).i32[1])
        {
          v25[1] = _D0.i32[0];
          v25[2] = _D0.i32[0];
        }

        v21 += 4;
        v25 += 4;
      }

      while (v24 != v21);
    }
  }
}

void __cxx_global_var_init_33()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_31(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

float mthm_ComputeFingerEllipseTipOffset_mm(uint64_t a1, MTSurfaceDimensions_ *this, float32x2_t *a3, float *a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8)
{
  if (*(a1 + 4))
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (*(a1 + 44) != 1 || a3[5].f32[0] == 0.0 && a3[5].f32[1] == 0.0)
  {
    v13 = a3[7].f32[1];
    v14 = a3[8].f32[0];
    v15 = a3[7].f32[0];
  }

  else
  {
    a5.i32[0] = a3[7].i32[1];
    v16 = *(a1 + 48);
    a7.i32[0] = v16;
    v13 = invertRadiusSmoothing(a5, a4[15], a7, a8);
    v17.i32[0] = a3[8].i32[0];
    v18.i32[0] = v16;
    v14 = invertRadiusSmoothing(v17, a4[16], v18, v19);
    v20.i32[0] = a3[7].i32[0];
    v21.i32[0] = v16;
    v15 = invertRadiusSmoothing(v20, a4[14], v21, v22);
  }

  v23 = v11;
  v24 = *a1;
  v25 = 0.0;
  v26 = *a1 - 1;
  if (*a1 <= 1)
  {
    if (!v24)
    {
      goto LABEL_30;
    }

    if (v24 == 1)
    {
      v25 = -(*(a1 + 20) * v23);
    }
  }

  else
  {
    switch(v24)
    {
      case 2:
        v15 = v15 + 3.14159265;
        v25 = *(a1 + 20) * v23;
        break;
      case 3:
        if (v15 < 1.57079633)
        {
          v28 = v15 + 3.14159265;
          v15 = v28;
        }

        v25 = -*(a1 + 16);
        break;
      case 4:
        if (v15 > 1.57079633)
        {
          v27 = v15 + 3.14159265;
          v15 = v27;
        }

        v25 = *(a1 + 16);
        break;
    }
  }

  v29 = *(a1 + 32);
  if (v14 > v29)
  {
    v29 = v14;
  }

  v30 = *(a1 + 24) + v29;
  if (v13 > v30)
  {
    v31 = v13 - v30;
    if (v31 > *(a1 + 28))
    {
      v31 = *(a1 + 28);
    }

    v32 = *(a1 + 12) * v31;
    v25 = v25 + (v32 * __sincosf_stret(v15).__cosval);
  }

LABEL_30:
  v33 = *(a1 + 40);
  __asm { FMOV            V1.2S, #1.0 }

  v39 = vminnm_f32(vmaxnm_f32(a3[4], 0), _D1);
  v40 = vminnm_f32(v39, vsub_f32(_D1, v39));
  _D1.i32[0] = v40.i32[1];
  v41 = MTSurfaceDimensions_::convertSurfaceFractionToMillimeters(this, *(&_D1 - 4));
  v42 = *(a1 + 60);
  if (v26 > 1)
  {
    v43 = 1.0;
    v44 = *(a1 + 56);
    if (v44 != 0.0)
    {
      v43 = fmin((v41 / v44), 1.0);
    }
  }

  else
  {
    v43 = 1.0;
    if (v42 != 0.0)
    {
      v43 = fmin((v41 / v42), 1.0);
    }
  }

  v45 = fabsf(v25);
  if (v33)
  {
    v45 = v25;
  }

  return v45 * v43;
}

float invertRadiusSmoothing(int8x16_t a1, float a2, int8x16_t a3, int8x16_t a4)
{
  if (a2 != 0.0)
  {
    *a4.i32 = (*a1.i32 - a2) / a2;
    v4 = fabsf(*a4.i32);
    v5 = v4;
    if (*a3.i32 * 0.125 <= v4)
    {
      *a3.i64 = (*a3.i32 + 1.0);
      if (*a3.i64 * 0.0625 <= v5)
      {
        if (*a3.i64 * 0.125 > v5)
        {
          *a1.i32 = (*a4.i32 / (*a3.i64 * 0.5) + 1.0) * a2;
          return *a1.i32;
        }

        a3.i32[0] = 0.25;
        if (v4 >= 0.25)
        {
          return *a1.i32;
        }

        a1.i64[0] = 0x8000000080000000;
        a1.i64[1] = 0x8000000080000000;
        *a1.i32 = *vbslq_s8(a1, a3, a4).i32 + 1.0;
      }

      else
      {
        a1.i32[0] = 0.125;
        v6.i64[0] = 0x8000000080000000;
        v6.i64[1] = 0x8000000080000000;
        *a1.i32 = *vbslq_s8(v6, a1, a4).i32 + 1.0;
      }
    }

    else
    {
      *a1.i32 = (*a4.i32 / *a3.i32) + 1.0;
    }

    *a1.i32 = *a1.i32 * a2;
  }

  return *a1.i32;
}

float mthm_ComputeFingerEllipseTipOffsetFromPressure_mm(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 60);
  v4 = a1[8];
  result = 0.0;
  if (v3 > (a1[6] + v4))
  {
    if ((v3 - v4) <= a1[7])
    {
      v6 = v3 - v4;
    }

    else
    {
      v6 = a1[7];
    }

    return (v6 * __sincosf_stret(*(a3 + 56)).__cosval) + 0.0;
  }

  return result;
}

void __cxx_global_var_init_34()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void MTFingerToPathMap_::MTFingerToPathMap_(MTFingerToPathMap_ *this, char a2)
{
  *this = off_109850;
  *(this + 76) = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 103) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 94) = 0;
}

double MTFingerToPathMap_::clearFingerPathMappings(MTFingerToPathMap_ *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 103) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 94) = 0;
  return result;
}

uint64_t MTFingerToPathMap_::getInnermostTouchingPath(MTFingerToPathMap_ *this, const MTPathStates_ *a2)
{
  v2 = *(this + 20);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 568 * v3;
}

uint64_t MTFingerToPathMap_::getOutermostTouchingPath(MTFingerToPathMap_ *this, const MTPathStates_ *a2)
{
  v2 = *(this + 22);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 568 * v3;
}

uint64_t MTFingerToPathMap_::getInnermostInRangePath(MTFingerToPathMap_ *this, const MTPathStates_ *a2)
{
  v2 = *(this + 23);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 568 * v3;
}

uint64_t MTFingerToPathMap_::getOutermostInRangePath(MTFingerToPathMap_ *this, const MTPathStates_ *a2)
{
  v2 = *(this + 24);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 568 * v3;
}

uint64_t MTFingerToPathMap_::updateFingerPathMappings(uint64_t this, const MTPathStates_ *a2)
{
  v3 = this;
  *(this + 8) = 0u;
  v4 = this + 8;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 24) = 0u;
  *(this + 103) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 94) = 0;
  v5 = 1;
  v6 = 632;
  do
  {
    v7 = *(a2 + 35);
    v8 = (v7 + v6);
    if (v5 != *(v7 + v6 - 32) || *v8 <= 0.0)
    {
      goto LABEL_31;
    }

    v9 = *(v7 + v6 - 24);
    if (v9 <= 0xF)
    {
      *(v4 + 4 * v9) = v5;
    }

    v10 = (v8 - 16);
    this = MTParserPath_::isPalmContact((v8 - 16));
    if (this)
    {
      ++*(v3 + 104);
      goto LABEL_31;
    }

    this = MTParserPath_::isEdgeContact(v10);
    if (this)
    {
      ++*(v3 + 103);
      goto LABEL_31;
    }

    if (*(v3 + 76) == 1)
    {
      this = MTParserPath_::isFingerContact(v10);
      if (this)
      {
        goto LABEL_14;
      }

      if (*(v3 + 76))
      {
        goto LABEL_31;
      }
    }

    this = MTParserPath_::isFingerOrRestingContact(v10);
    if (!this)
    {
      goto LABEL_31;
    }

LABEL_14:
    ++*(v3 + 100);
    v11 = *(v3 + 92);
    if (!v11 || v9 < v11)
    {
      *(v3 + 92) = v9;
    }

    v12 = *(v3 + 96);
    if (!v12 || v9 > v12)
    {
      *(v3 + 96) = v9;
    }

    if ((*(v7 + v6 - 28) - 3) <= 1)
    {
      ++*(v3 + 101);
      v13 = *(v3 + 80);
      if (v13 && v9 >= v13)
      {
        v14 = *(v3 + 84);
        if (v14 && v9 < v14)
        {
          *(v3 + 84) = v9;
          goto LABEL_27;
        }
      }

      else
      {
        *(v3 + 80) = v9;
        *(v3 + 84) = v13;
LABEL_27:
        *(v3 + 72) = *(v7 + v6 - 20);
      }

      v15 = *(v3 + 88);
      if (!v15 || v9 > v15)
      {
        *(v3 + 88) = v9;
        *(v3 + 72) = *(v7 + v6 - 20);
      }
    }

LABEL_31:
    ++v5;
    v6 += 568;
  }

  while (v5 != 32);
  v16 = *(v3 + 101);
  if (*(v3 + 102) <= (v16 - 1))
  {
    *(v3 + 102) = v16;
  }

  return this;
}

void __cxx_global_var_init_35()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_32(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

uint64_t MTParameterFactory_::initFingerTipOffsetParams(uint64_t result, int a2, char a3, int a4)
{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  if ((a2 - 2000) > 0x3E7)
  {
    if ((a2 - 1000) <= 0x3E7)
    {
      *result = 1;
      *(result + 8) = 1077936128;
      if (a3 < 0 || a4)
      {
        *(result + 12) = xmmword_D6DA0;
        *(result + 28) = 0x4108000041200000;
        *(result + 36) = 0;
        *(result + 39) = 0;
        *(result + 43) = 257;
        v4 = 1053609165;
      }

      else
      {
        *(result + 12) = xmmword_D6D90;
        *(result + 28) = 0x40E0000041F00000;
        *(result + 36) = 0;
        *(result + 39) = 0;
        *(result + 43) = 257;
        v4 = 1057132380;
      }

      *(result + 48) = v4;
      goto LABEL_16;
    }

    *result = 1;
    *(result + 8) = 1077936128;
    if (a2 == 4)
    {
      v5 = xmmword_D6D70;
    }

    else
    {
      if (a2 == 2)
      {
        *(result + 16) = xmmword_D6D70;
        *(result + 32) = 1090519040;
        *(result + 40) = 65793;
        *(result + 44) = 0;
        *(result + 52) = 1;
        return result;
      }

      v5 = xmmword_D6D80;
    }

    *(result + 16) = v5;
    *(result + 32) = 1090519040;
  }

  else
  {
    *result = 1;
    *(result + 8) = xmmword_D6DB0;
    *(result + 24) = xmmword_D6DC0;
  }

  *(result + 40) = 65793;
  *(result + 44) = 0;
LABEL_16:
  *(result + 52) = 0;
  return result;
}

double MTParameterFactory_::initForceFilterParams(_OWORD *a1)
{
  result = 0.125000028;
  *a1 = xmmword_D6DD0;
  return result;
}

double MTParameterFactory_::initForceThresholdQualifiers(uint64_t a1)
{
  *a1 = 0x3F4000003F000000;
  *(a1 + 12) = xmmword_D6DE0;
  *(a1 + 28) = xmmword_D6DF0;
  *(a1 + 44) = xmmword_D6E00;
  *(a1 + 60) = xmmword_D6E10;
  *(a1 + 76) = xmmword_D6E20;
  *(a1 + 92) = xmmword_D6E30;
  *(a1 + 108) = xmmword_D6E40;
  result = 2.85924567e20;
  *(a1 + 124) = 0x442F00003E19999ALL;
  *(a1 + 132) = 1148846080;
  return result;
}

double MTParameterFactory_::initForceActuationQualifiers(uint64_t a1)
{
  *(a1 + 28) = 1;
  *a1 = xmmword_D6E50;
  result = 5.23869072e-11;
  *(a1 + 16) = 0x3DCCCCCD3F333333;
  *(a1 + 24) = 1065353216;
  return result;
}

void MTParameterFactory_::initPathFilterParams(uint64_t a1, unsigned int a2, char a3, int a4, MTSurfaceDimensions_ *this, unsigned int a6)
{
  v6 = a6;
  *(a1 + 96) = 0;
  *(a1 + 80) = 1;
  *(a1 + 102) = 0;
  *(a1 + 112) = xmmword_D6E60;
  *(a1 + 64) = xmmword_D6E70;
  if (a2 <= 0x3E7)
  {
    *(a1 + 4) = 1061997773;
    *(a1 + 56) = 0x3EA28F5C40000000;
    *(a1 + 96) = 1;
    *(a1 + 80) = 256;
    *(a1 + 102) = 1;
    *(a1 + 112) = xmmword_D6EB0;
    if (a2 == 4)
    {
      *(a1 + 56) = xmmword_D6EC0;
      *(a1 + 4) = 0;
    }

    goto LABEL_6;
  }

  *(a1 + 81) = 1;
  *(a1 + 4) = 1061997773;
  if (a2 - 3000 <= 0x3E7)
  {
    *(a1 + 56) = 0x3EA28F5C40000000;
    *(a1 + 96) = 1;
    *(a1 + 80) = 0;
    *(a1 + 102) = 1;
LABEL_6:
    v10 = a2 - 3000 < 0xFFFFFC18;
    v11 = a2 - 2000;
    goto LABEL_7;
  }

  v13 = 2.66;
  if (!a4)
  {
    v13 = 2.0;
  }

  v14 = 0.127;
  if (a4)
  {
    v14 = 0.16891;
  }

  *(a1 + 56) = v13;
  *(a1 + 60) = v14;
  v11 = a2 - 2000;
  if (a2 - 2000 < 0x3E8)
  {
    v12 = 0;
    *(a1 + 60) = 1045435305;
    *(a1 + 72) = 0x40000000;
    *(a1 + 4) = xmmword_D6E80;
    *(a1 + 20) = xmmword_D6E90;
    *(a1 + 36) = xmmword_D6EA0;
    *(a1 + 52) = 0x4080000040266666;
    *(a1 + 92) = 1032000111;
    *(a1 + 97) = 257;
    *(a1 + 84) = 0x3D75C2903CA3D70BLL;
    goto LABEL_18;
  }

  v10 = 1;
LABEL_7:
  *(a1 + 8) = xmmword_D6ED0;
  *(a1 + 24) = xmmword_D6EE0;
  *(a1 + 40) = xmmword_D6EF0;
  *(a1 + 84) = 0x3E9FBE773D449BA6;
  *(a1 + 92) = 1032000111;
  *(a1 + 98) = 0;
  if (v11 > 0xFFFFFC17)
  {
    *(a1 + 76) = 1036831949;
    *(a1 + 97) = v10 & a4 ^ 1;
    v12 = 1;
  }

  else if (v10)
  {
    v12 = 0;
    *(a1 + 97) = 0;
  }

  else
  {
    v12 = 0;
    *(a1 + 97) = 1;
  }

LABEL_18:
  *(a1 + 99) = v12;
  *(a1 + 100) = v12;
  *(a1 + 101) = v12;
  v27[0] = xmmword_D6F00;
  v27[1] = xmmword_D6F10;
  v28 = 0xC07000003FA66666;
  if (a6 >= 5)
  {
    v15 = MTLoggingPlugin();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "[Error] ";
      v21 = 2080;
      v22 = "MTParameterFactory_::";
      v23 = 2080;
      v24 = "_InitRadiusCorrectionParams";
      v25 = 1024;
      v26 = v6;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s invalid size ID (%u)", &v19, 0x26u);
    }

    v6 = 0;
  }

  *(a1 + 104) = *(v27 + v6);
  v29.x = 1.0;
  v29.y = 1.0;
  v16 = fabsf(MTSurfaceDimensions_::convertMillimetersToPixels(this, v29).f32[0]);
  *a1 = v16;
  if (*(a1 + 81) == 1)
  {
    v17 = v16 * *(a1 + 60);
    v18 = 56;
  }

  else
  {
    v18 = 60;
    v17 = *(a1 + 56) / v16;
  }

  *(a1 + v18) = v17;
  *(a1 + 128) = (a3 & 0x40) != 0;
}

void MTParameterFactory_::updatePathFilterParamsWithNewSurfaceDimensions(uint64_t a1, MTSurfaceDimensions_ *this)
{
  v6.x = 1.0;
  v6.y = 1.0;
  v3 = fabsf(MTSurfaceDimensions_::convertMillimetersToPixels(this, v6).f32[0]);
  *a1 = v3;
  if (*(a1 + 81) == 1)
  {
    v4 = v3 * *(a1 + 60);
    v5 = 56;
  }

  else
  {
    v5 = 60;
    v4 = *(a1 + 56) / v3;
  }

  *(a1 + v5) = v4;
}

double MTParameterFactory_::initRestZoneBalanceParameters(uint64_t a1)
{
  *a1 = xmmword_D6F20;
  *(a1 + 16) = xmmword_D6F30;
  result = 5.23869071e-11;
  *(a1 + 32) = xmmword_D6F40;
  *(a1 + 48) = -1082130432;
  return result;
}

double MTParameterFactory_::initMotionExtractionParams(uint64_t a1)
{
  result = 512.000116;
  *a1 = 0x408000003CF5C290;
  *(a1 + 8) = 257;
  return result;
}

uint64_t MTParameterFactory_::initChordCyclingParams(uint64_t result, int a2)
{
  *result = 0x3CCCCCCD3F19999ALL;
  v2 = (a2 - 2000) < 0x3E8;
  v3 = 10.0;
  *(result + 8) = v2;
  if ((a2 - 2000) < 0x3E8)
  {
    v3 = 4.0;
  }

  *(result + 16) = v2;
  *(result + 12) = v3;
  return result;
}

double MTParameterFactory_::initTouchZoneParams(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if ((a2 - 1000) <= 0x3E7)
  {
    *a1 = 1;
    v5 = 3.0;
    if (a4)
    {
      v5 = 0.5;
    }

    v6 = 18.0;
    if (a4)
    {
      v6 = 6.0;
    }

    *(a1 + 20) = v5;
    *(a1 + 28) = v6;
    result = 375809602.0;
    *(a1 + 4) = xmmword_D6F50;
    *(a1 + 24) = 1094713344;
  }

  return result;
}

void __cxx_global_var_init_36()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void MTChordGestureSet_::MTChordGestureSet_(MTChordGestureSet_ *this)
{
  *(this + 58) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  *(this + 204) = 0;
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 114) = 0;
}

uint64_t MTChordGestureSet_::MTChordGestureSet_(uint64_t a1, signed int a2, __int16 a3, int a4, char *__src)
{
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 224) = a2;
  *(a1 + 228) = a3;
  *(a1 + 232) = a4;
  if ((a2 - 1) > 3)
  {
    if (a2 > 9)
    {
      if (a2 > 0xD)
      {
        *(a1 + 216) = 0;
        if (__src)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }

      v6 = 0x400000005;
    }

    else
    {
      v6 = vadd_s32(vdup_n_s32(a2), 0xFFFFFFFBFFFFFFFCLL);
    }

    *(a1 + 216) = v6;
    if (__src)
    {
      goto LABEL_3;
    }

LABEL_9:
    *(a1 + 184) = 0;
    return a1;
  }

  *(a1 + 216) = a2;
  *(a1 + 220) = a2;
  if (!__src)
  {
    goto LABEL_9;
  }

LABEL_3:
  strncpy((a1 + 184), __src, 0x13uLL);
  return a1;
}

void MTChordGestureSet_::MTChordGestureSet_(MTChordGestureSet_ *this, const MTChordGestureSet_ *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  *(this + 4) = 0;
  *(this + 6) = v4;
  *(this + 7) = v5;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(this + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  v6 = *(a2 + 14);
  v7 = *(a2 + 15);
  *(this + 8) = 0;
  *(this + 14) = v6;
  *(this + 15) = v7;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(this + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  v8 = *(a2 + 22);
  v9 = *(a2 + 23);
  *(this + 12) = 0;
  *(this + 22) = v8;
  *(this + 23) = v9;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 3);
  v10 = *(a2 + 30);
  v11 = *(a2 + 31);
  *(this + 16) = 0;
  *(this + 30) = v10;
  *(this + 31) = v11;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(this + 128, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 3);
  *(this + 38) = *(a2 + 38);
  *(this + 39) = *(a2 + 39);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 51) = *(a2 + 51);
  *(this + 26) = *(a2 + 26);
  *(this + 27) = *(a2 + 27);
  *(this + 56) = *(a2 + 56);
  *(this + 114) = *(a2 + 114);
  *(this + 58) = *(a2 + 58);
  if (this != a2)
  {
    std::vector<MTSlideGesture_>::__assign_with_size[abi:ne200100]<MTSlideGesture_*,MTSlideGesture_*>(this + 20, *(a2 + 20), *(a2 + 21), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 21) - *(a2 + 20)) >> 5));
  }

  strncpy(this + 184, a2 + 184, 0x13uLL);
}

void sub_5ADD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](va);
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 136) = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    *(v2 + 104) = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    *(v2 + 72) = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t MTChordGestureSet_::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 204) = *(a2 + 204);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    strncpy((a1 + 184), (a2 + 184), 0x13uLL);
    MTGesture::operator=(a1, a2);
    MTGesture::operator=(a1 + 32, a2 + 32);
    MTGesture::operator=(a1 + 64, a2 + 64);
    MTGesture::operator=(a1 + 96, a2 + 96);
    MTGesture::operator=(a1 + 128, a2 + 128);
    std::vector<MTSlideGesture_>::__assign_with_size[abi:ne200100]<MTSlideGesture_*,MTSlideGesture_*>((a1 + 160), *(a2 + 160), *(a2 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 168) - *(a2 + 160)) >> 5));
  }

  return a1;
}

uint64_t MTGesture::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<MTActionEvent_>::__assign_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 28) = *(a2 + 28);
  }

  return a1;
}

uint64_t MTChordGestureSet_::chordGestureSetEquals(MTChordGestureSet_ *this, const MTChordGestureSet_ *a2)
{
  if (!MTGesture::gestureEquals(this, a2) || !MTGesture::gestureEquals(this + 4, a2 + 32) || !MTGesture::gestureEquals(this + 8, a2 + 64) || !MTGesture::gestureEquals(this + 12, a2 + 96) || !MTGesture::gestureEquals(this + 16, a2 + 128))
  {
    return 0;
  }

  return MTChordGestureSet_::chordSlidesEqual(this, a2);
}

uint64_t MTGesture::gestureEquals(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 13) != *(a2 + 26))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 28))
  {
    return 0;
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = 1;
    result = 1;
    while (1)
    {
      v9 = (v2 + 8 * v5);
      v10 = (*a2 + 8 * v5);
      if (*v9 != *v10 || v9[1] != v10[1] || *(v9 + 1) != *(v10 + 1))
      {
        break;
      }

      v5 = v7;
      if (v6 <= v7++)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t MTChordGestureSet_::chordSlidesEqual(MTChordGestureSet_ *this, const MTChordGestureSet_ *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21);
  if (v3 - v2 != *(a2 + 21) - *(a2 + 20))
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    result = MTSlideGesture_::slideEquals(v2 + 160 * v6, *(a2 + 20) + 160 * v6);
    if ((result & 1) == 0)
    {
      break;
    }

    v6 = v7;
    v2 = *(this + 20);
  }

  while (0xCCCCCCCCCCCCCCCDLL * ((*(this + 21) - v2) >> 5) > v7++);
  return result;
}

uint64_t MTSlideGesture_::slideEquals(uint64_t a1, uint64_t a2)
{
  result = MTGesture::gestureEquals(a1, a2);
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32) && *(a1 + 152) == *(a2 + 152) && *(a1 + 156) == *(a2 + 156) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 52) == *(a2 + 52) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 60) == *(a2 + 60) && *(a1 + 64) == *(a2 + 64);
  }

  return result;
}

BOOL MTChordGestureSet_::isEmpty(MTChordGestureSet_ *this)
{
  v1 = *(this + 20);
  v2 = *(this + 21) - v1;
  if (v2)
  {
    v3 = 0;
    v4 = 0xCCCCCCCCCCCCCCCDLL * (v2 >> 5);
    v5 = 1;
    do
    {
      v6 = v1 + 160 * v3;
      if (*v6 != *(v6 + 8))
      {
        if (**v6)
        {
          return 0;
        }
      }

      v3 = v5;
    }

    while (v4 > v5++);
  }

  if (*this != *(this + 1) && **this)
  {
    return 0;
  }

  v8 = *(this + 4);
  if (v8 != *(this + 5))
  {
    if (*v8)
    {
      return 0;
    }
  }

  v9 = *(this + 8);
  if (v9 != *(this + 9))
  {
    if (*v9)
    {
      return 0;
    }
  }

  v10 = *(this + 12);
  if (v10 != *(this + 13))
  {
    if (*v10)
    {
      return 0;
    }
  }

  v12 = *(this + 16);
  return v12 == *(this + 17) || *v12 == 0;
}

uint64_t MTChordGestureSet_::hasEnabledOrientationEvents(MTChordGestureSet_ *this, const MTChordTable_ *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
  for (i = 1; ; ++i)
  {
    v7 = v2 + 160 * v4;
    v8 = *(v7 + 28);
    v9 = v8 && (*(a2 + 6) & v8) == 0;
    if (!v9 && *v7 != *(v7 + 8) && **v7 == 71)
    {
      break;
    }

    v4 = i;
    if (v5 <= i)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MTChordGestureSet_::hasEnabledFluidNavigation(MTChordGestureSet_ *this, const MTChordTable_ *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
  for (i = 1; ; ++i)
  {
    v7 = v2 + 160 * v4;
    v8 = *(v7 + 28);
    v9 = v8 && (*(a2 + 6) & v8) == 0;
    if (!v9 && *v7 != *(v7 + 8) && **v7 == 36)
    {
      break;
    }

    v4 = i;
    if (v5 <= i)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MTChordGestureSet_::hasEnabledFluidDock(MTChordGestureSet_ *this, const MTChordTable_ *a2)
{
  v2 = *(this + 20);
  v3 = *(this + 21) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
  for (i = 1; ; ++i)
  {
    v7 = v2 + 160 * v4;
    v8 = *(v7 + 28);
    v9 = v8 && (*(a2 + 6) & v8) == 0;
    if (!v9 && *v7 != *(v7 + 8) && **v7 == 37)
    {
      break;
    }

    v4 = i;
    if (v5 <= i)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MTChordGestureSet_::hasActiveEdgeSlide(MTChordGestureSet_ *this, const MTHandStatistics_ *a2, const MTChordCycling_ *a3)
{
  v6 = *(this + 58);
  if (v6 && (*(a3 + 6) & v6) == 0)
  {
    return 0;
  }

  v8 = *(this + 20);
  v7 = *(this + 21);
  if (v7 == v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = (v8 + 160 * v9);
    v12 = *(v11 + 7);
    if (v12 && (*(a3 + 6) & v12) == 0)
    {
      goto LABEL_19;
    }

    MTChordIntegrating_::MTChordIntegrating_(v17, this);
    isActiveEdgeSlide = MTSlideGesture_::isActiveEdgeSlide(v11, a2, v17);
    v16 = &v26;
    std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }

    if (isActiveEdgeSlide)
    {
      return 1;
    }

    v8 = *(this + 20);
    v7 = *(this + 21);
LABEL_19:
    v9 = v10;
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 5) <= v10++)
    {
      return 0;
    }
  }
}

void sub_5B620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTChordGestureSet_::~MTChordGestureSet_(va);
  _Unwind_Resume(a1);
}

BOOL MTChordGestureSet_::chk4ChordPause(MTChordGestureSet_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, double a4, double a5, float a6)
{
  v6 = *&qword_121A48;
  LOWORD(a6) = *(this + 77);
  v7 = LODWORD(a6) * 0.001;
  if (v7 != 0.0)
  {
    v6 = v7;
  }

  return fmax(*(a2 + 1) - *(a3 + 20), a4) > v6;
}

BOOL MTChordGestureSet_::chk4ChordTimein(MTChordGestureSet_ *this, const MTHandStatistics_ *a2)
{
  if (*(a2 + 196) > *(a2 + 195))
  {
    return 0;
  }

  if ((*(this + 60) & 4) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 186);
  if (v2 != *(a2 + 197))
  {
    return 0;
  }

  if (*(this + 54) != v2)
  {
    return 0;
  }

  v3 = *(a2 + 10);
  if ((*(this + 114) & 0x100) == 0 && v3 - *(a2 + 33) > *&gTimingPrefs_)
  {
    return 0;
  }

  HIWORD(v5) = WORD1(qword_121A48);
  v6 = *&qword_121A48 + *&gTimingPrefs_;
  LOWORD(v5) = *(this + 61);
  v7 = v5 * 0.001;
  if (v7 != 0.0)
  {
    v6 = v7;
  }

  if (v3 <= *(a2 + 16))
  {
    v3 = *(a2 + 16);
  }

  return *(a2 + 1) - v3 >= v6;
}

uint64_t MTChordGestureSet_::isChordReadyToIntegrate(MTChordGestureSet_ *this, const MTHandStatistics_ *a2, float32x4_t *a3)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(a3[12])))))
  {
    return &dword_0 + 1;
  }

  if (MTChordGestureSet_::chk4ChordTimein(this, a2))
  {
    return 1;
  }

  return HIBYTE(*(this + 60)) & 1;
}

uint64_t std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTActionEvent_>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_5B800(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTSlideGesture_>::__assign_with_size[abi:ne200100]<MTSlideGesture_*,MTSlideGesture_*>(uint64_t *a1, MTSlideGesture_ *a2, MTSlideGesture_ *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<MTSlideGesture_>::__vdeallocate(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTSlideGesture_>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        MTSlideGesture_::operator=(v8, v6);
        v6 += 160;
        v8 += 160;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    if (v11 != v8)
    {
      v15 = v11;
      do
      {
        v17 = *(v15 - 20);
        v15 = (v15 - 160);
        v16 = v17;
        if (v17)
        {
          *(v11 - 19) = v16;
          operator delete(v16);
        }

        v11 = v15;
      }

      while (v15 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        MTSlideGesture_::operator=(v8, v14);
        v14 += 160;
        v8 += 160;
        v13 -= 160;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTSlideGesture_>,MTSlideGesture_*,MTSlideGesture_*,MTSlideGesture_*>(a1, &v12[v6], a3, v11);
  }
}

void std::vector<MTSlideGesture_>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MTSlideGesture_>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<MTSlideGesture_>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTSlideGesture_>>(a1, a2);
  }

  std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
}

MTSlideGesture_ *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTSlideGesture_>,MTSlideGesture_*,MTSlideGesture_*,MTSlideGesture_*>(uint64_t a1, MTSlideGesture_ *a2, MTSlideGesture_ *a3, MTSlideGesture_ *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      MTSlideGesture_::MTSlideGesture_(v4, v6);
      v6 = (v6 + 160);
      v4 = (v11 + 160);
      v11 = (v11 + 160);
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTSlideGesture_>,MTSlideGesture_*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void __cxx_global_var_init_37()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_33(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_7(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

double MTSlideGesture_::clearIntegrationState(MTSlideGesture_ *this)
{
  *(this + 68) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

uint64_t MTSlideGesture_::MTSlideGesture_(uint64_t a1, int a2, int a3, __int128 *a4, uint64_t *a5, float a6, float a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(a1, *a5, a5[1], (a5[1] - *a5) >> 3);
  *(a1 + 24) = 16;
  *(a1 + 28) = a3;
  *(a1 + 32) = a2;
  v13 = *a4;
  *(a1 + 52) = a4[1];
  *(a1 + 36) = v13;
  *(a1 + 152) = a6;
  *(a1 + 156) = a7;
  *(a1 + 68) = 0;
  *(a1 + 144) = 0;
  if ((a2 & 0x1000000) != 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  if ((a2 & 3) != 0 || a7 > 0.0)
  {
    *(a1 + 124) = v14;
  }

  if ((a2 & 0xC) != 0 || a7 > 0.0)
  {
    *(a1 + 128) = v14;
  }

  if ((a2 & 0x30) != 0)
  {
    *(a1 + 132) = v14;
  }

  if ((a2 & 0xC0) != 0)
  {
    *(a1 + 136) = v14;
  }

  return a1;
}

{
  return MTSlideGesture_::MTSlideGesture_(a1, a2, a3, a4, a5, a6, a7);
}

void MTSlideGesture_::MTSlideGesture_(MTSlideGesture_ *this, const MTSlideGesture_ *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<MTActionEvent_>::__init_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = *(a2 + 8);
  v4 = *(a2 + 36);
  *(this + 52) = *(a2 + 52);
  *(this + 36) = v4;
  *(this + 19) = *(a2 + 19);
  if (this != a2)
  {
    std::vector<MTActionEvent_>::__assign_with_size[abi:ne200100]<MTActionEvent_*,MTActionEvent_*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  }

  *(this + 68) = 0;
  *(this + 18) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  for (i = 124; i != 140; i += 4)
  {
    *(this + i) = *(a2 + i);
  }
}

void sub_5C490(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTSlideGesture_::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    MTGesture::operator=(a1, a2);
    v4 = 0;
    *(a1 + 32) = *(a2 + 32);
    v5 = *(a2 + 36);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 36) = v5;
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 68) = 0;
    *(a1 + 144) = 0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
    do
    {
      *(a1 + 124 + v4) = *(a2 + 124 + v4);
      v4 += 4;
    }

    while (v4 != 16);
  }

  return a1;
}

uint64_t MTSlideGesture_::getDegreesOfFreedomMask(MTSlideGesture_ *this)
{
  v1 = 0;
  LODWORD(v2) = 0;
  do
  {
    v3 = *(this + v1 + 31);
    if (v3 == 0.0)
    {
      if (*this == *(this + 1) || **this != 71 || v1 > 1 || (v3 = 1.0, *(this + 18) <= 0.0))
      {
        v3 = 0.0;
      }
    }

    v4 = 1 << v1;
    if (v3 == 0.0)
    {
      v4 = 0;
    }

    v2 = v4 | v2;
    ++v1;
  }

  while (v1 != 4);
  return v2;
}

uint64_t MTSlideGesture_::sendSlideKeys(MTActionEvent_ **this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, MTChordIntegrating_ *a6, int a7, double a8)
{
  v14 = *(a6 + 264);
  v21 = *(a3 + 168);
  MTChordIntegrating_::sendSlidePreamble(a6, a2, a3, a4, a5, this, 8u, a8);
  v15 = *(a2 + 1);
  *(this + 18) = v15;
  v16 = *(this + 8);
  if ((v16 & 0x23000) != 0)
  {
    if ((v16 & 0x20000) != 0)
    {
      v17 = *(a6 + 70);
      if (v17 < 0)
      {
        v18 = *this;
        if (*this != this[1] && *v18 == 129)
        {
          v20 = 0xAAAAAAAAAAAAAAAALL;
          MTActionEvent_::MTActionEvent_(&v20, v18);
          LOWORD(v20) = 130;
          *(a6 + 70) = -*(a6 + 70);
          (*(a4->_vptr$MTTapDragManager_ + 3))(a4, &v20, a5, 0, 0, &v21, *(this + 32), *(a6 + 56), *(a2 + 1));
          return 1;
        }

        *(a6 + 267) = 1;
      }

      *(a6 + 70) = -v17;
      goto LABEL_18;
    }

    if ((v16 & 0x2000) != 0)
    {
      if (*(a6 + 71) != v16)
      {
        goto LABEL_18;
      }

      return 0;
    }
  }

  else if ((v16 & 0x4000) == 0 || (v14 & 1) != 0 || v15 - *(a6 + 30) >= *&qword_121AC0)
  {
    *(a6 + 71) = *(this + 8);
    if (a7 >= 1)
    {
      goto LABEL_19;
    }

    return 0;
  }

  *(a6 + 267) = 1;
LABEL_18:
  *(a6 + 71) = v16;
  a7 = 1;
  do
  {
LABEL_19:
    result = MTGesture::dispatchEvents(this, a4, a5, 0, 0, &v21, *(this + 32), *(a6 + 56), *(a2 + 1));
    --a7;
  }

  while (a7);
  return result;
}

uint64_t MTSlideGesture_::sendSlideMickeys(MTActionEvent_ **a1, uint64_t a2, uint64_t a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, MTChordIntegrating_ *this, int32x4_t *a7, double a8)
{
  if (MTChordIntegrating_::sendSlidePreamble(this, a2, a3, a4, a5, a1, 8u, a8))
  {
    v15 = 2;
  }

  else
  {
    v15 = 8;
  }

  v18 = *(a3 + 168);
  MTChordIntegrating_::updateMomentumMickeys(this, a7, a2);
  v16 = *(a2 + 8);
  *(a1 + 18) = v16;
  return MTGesture::dispatchEvents(a1, a4, a5, v15, a7, &v18, *(a1 + 32), *(this + 56), v16);
}

float MTSlideGesture_::cumulativeMotionMagnitude(MTSlideGesture_ *this)
{
  if (*this != *(this + 1) && ((**this & 0x80) != 0 || (v1 = **this, (v1 - 35) < 5) || v1 == 67))
  {
    return fabsf(*(this + 22));
  }

  else
  {
    return (hypotf(*(this + 24), *(this + 25)) + fabsf(*(this + 26))) + fabsf(*(this + 27));
  }
}

uint64_t MTSlideGesture_::decayAxisIntegrator(uint64_t this, const MTChordIntegrating_ *a2, double a3, float *a4, float a5)
{
  v5 = *(this + 52);
  if (!*(a2 + 264))
  {
    v5 = v5 * 1.7;
  }

  v6 = a5 * 0.00282;
  v7 = a3 * 0.3;
  if (v6 >= v7)
  {
    v7 = v6;
  }

  v8 = (v7 + 1.0) * v5;
  if (v8 > 0.0)
  {
    v9 = *a4;
    if (*a4 <= v8)
    {
      v10 = 0.0;
      if (v9 < -v8)
      {
        v10 = v8 + v9;
      }
    }

    else
    {
      v10 = v9 - v8;
    }

    *a4 = v10;
  }

  return this;
}

uint64_t MTSlideGesture_::integrateAxisMotion(uint64_t this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, const MTDragManagerEventQueue_ *a4, const MTChordIntegrating_ *a5, double a6, int a7, float a8)
{
  v8 = a6;
  v10 = this;
  v11 = *(a3 + 32);
  if ((*(a5 + 264) & 1) == 0)
  {
    if (v11 < 2000 || v11 > 0xBB7)
    {
      v13 = *(this + 40);
    }

    else
    {
      if (*(a2 + 1) - *(a2 + 7) > a6)
      {
        goto LABEL_22;
      }

      v8 = fmin(sqrt(a6), 5.0);
      v12 = 7.50000048 / (v8 + 7.50000048);
      v13 = *(this + 40) * v12;
      v14 = *(this + 96 + 4 * a7);
      if ((v14 * a8) < 0.0)
      {
        if (fabsf(a8) <= fabsf(v14))
        {
          v13 = 1.0;
        }

        else
        {
          a8 = v14 + a8;
          *(this + 96 + 4 * a7) = 0;
        }
      }
    }

    if (a4->_from_multi_finger_drag && a4->_cycle_state >= 3 && *(a5 + 54) == 1)
    {
      v17 = *(a5 + 20);
      if (*(a5 + 21) - v17 == 160 && *v17 != v17[1] && **v17 == 68)
      {
        v13 = v13 * 0.06;
      }
    }

    a8 = a8 * (v13 * (((*(a3 + 63) * -1.4) + 1.0) * ((*(a3 + 63) * -1.4) + 1.0)));
  }

LABEL_22:
  v18 = a8 * *(a3 + 93);
  if (!*(a2 + 211))
  {
    v18 = a8;
  }

  v19 = this + 4 * a7;
  v21 = *(v19 + 96);
  v20 = (v19 + 96);
  *v20 = v21 + v18;
  if ((v11 - 2000) <= 0x3E7)
  {
    MouseMotionFeedback = MTHandMotion_::getMouseMotionFeedback(a3, a7);

    return MTSlideGesture_::decayAxisIntegrator(v10, a5, v8, v20, MouseMotionFeedback);
  }

  return this;
}

float MTSlideGesture_::accelerateAxisMotion(MTSlideGesture_ *this, int a2, const MTHandStatistics_ *a3, MTHandMotion_ *a4, float a5, int a6)
{
  v11 = 0.0;
  if (a2 <= 3)
  {
    v11 = *(a4 + (4 * a2) + 316);
  }

  v12 = *(this + a2 + 31);
  if (v12 == 0.0)
  {
    if (*this == *(this + 1) || **this != 71 || a2 > 1 || (v12 = 1.0, *(this + 18) <= 0.0))
    {
      v12 = 0.0;
    }
  }

  v13 = (v11 * v12) * a5;
  if ((*(a4 + 32) - 2000) <= 0x3E7)
  {
    MTSlideGesture_::suppressVelocityFromMouseFeeback(this, a2, a4, v13);
  }

  v14 = 0.0;
  if (v13 != 0.0)
  {
    v14 = (*(a3 + 1) - *(a3 + 2)) * v13;
    if (a6)
    {
      if (a2 > 1)
      {
        v15 = fabsf(v13);
      }

      else
      {
        v15 = sqrtf((*(a4 + 84) * *(a4 + 84)) + (*(a4 + 83) * *(a4 + 83)));
      }

      v16 = *(this + 11);
      v17 = 1.0;
      if (v16 < v15 && v16 > 0.0)
      {
        v18 = *(this + 12);
        if (v18 > 0.0)
        {
          v17 = powf(v15 / v16, v18);
        }
      }

      return v17 * v14;
    }
  }

  return v14;
}

float32x2_t MTSlideGesture_::increasingSigmoidFromTdiff(MTSlideGesture_ *this, float64_t a2, float64x2_t a3, int a4)
{
  result = 0;
  if (a2 != 0.0)
  {
    result.i32[0] = 1.0;
    if (a3.f64[0] != 0.0)
    {
      a3.f64[1] = a2;
      result = vcvt_f32_f64(a3);
      if (a4 >= 2)
      {
        v6 = a4 - 1;
        do
        {
          result = vcvt_f32_f64(vmulq_f64(a3, vcvtq_f64_f32(result)));
          --v6;
        }

        while (v6);
      }

      v7 = result.f32[1] / vaddv_f32(result);
      result.i32[0] = 1.0;
      if (v7 <= 1.0)
      {
        result.f32[0] = v7;
        if (v7 < 0.0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL MTSlideGesture_::canOverrideLockOn(MTSlideGesture_ *this, const MTSlideGesture_ *a2)
{
  v3 = (*(a2 + 8) >> 9) & 7;
  v4 = *(a2 + 28);
  if ((v4 + MTSlideGesture_::cumulativeMotionMagnitude(a2)) >= 3.0 || v3 == 0)
  {
    return 0;
  }

  if (*this == *(this + 1) || **this != 133)
  {
    return v3 < ((*(this + 8) >> 9) & 7u);
  }

  return 1;
}

BOOL MTSlideGesture_::canPunishSomeMoving(MTSlideGesture_ *this, const MTHandStatistics_ *a2, MTChordIntegrating_ *a3)
{
  if ((*(this + 8) & 0x8000E00) == 0)
  {
    return 0;
  }

  if (*(a3 + 264) != 1)
  {
    return 1;
  }

  v4 = *(a3 + 34);
  if (!v4)
  {
    return 1;
  }

  if (*(a2 + 1) - *(a3 + 32) < *&qword_121A40)
  {
    return 1;
  }

  if (v4 == this)
  {
    v7 = *(this + 28);
    if ((v7 + MTSlideGesture_::cumulativeMotionMagnitude(this)) < 3.0 && (*(a3 + 54) < 4u || *v4 == *(v4 + 1) || **v4 != 70))
    {
      return 1;
    }
  }

  return MTSlideGesture_::canOverrideLockOn(this, v4);
}

float MTSlideGesture_::someMovingMultiplier(MTSlideGesture_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, MTChordIntegrating_ *a4)
{
  v8 = *(this + 8);
  if ((v8 & 0x100) == 0 || (SpeedSymmetry = 0.0, *(a3 + 376) == 1))
  {
    v10 = *this;
    v11 = *(this + 1);
    if (*this == v11 || (*v10 & 0xFFFE) != 0x46 || *(a2 + 305) != 1 || (SpeedSymmetry = 0.0, *(a2 + 211) + *(a2 + 186) < 4))
    {
      canPunishSomeMoving = MTSlideGesture_::canPunishSomeMoving(this, a2, a4);
      SpeedSymmetry = 1.0;
      if (canPunishSomeMoving)
      {
        if ((v8 & 0x8000000) != 0)
        {
          v14 = 0.8;
          if (v10 != v11 && *(a4 + 54) == 2)
          {
            v14 = flt_D6FB8[(*v10 - 35) < 5u];
          }

          SpeedSymmetry = MTHandMotion_::getSpeedSymmetry(a3, v14, 0);
          v8 = *(this + 8);
        }

        if ((v8 & 0xE00) != 0)
        {
          v15 = 0.9;
          if (*(a4 + 54) == 3)
          {
            v15 = 2.0;
          }

          v16 = MTHandMotion_::getSpeedSymmetry(a3, v15, (v8 >> 9) & 7);
          if (SpeedSymmetry < v16 || SpeedSymmetry == 1.0)
          {
            SpeedSymmetry = v16;
          }

          v8 = *(this + 8);
        }

        if ((v8 & 0xE00) == 0x800 && *(a2 + 186) == 5)
        {
          *&v13.f64[0] = qword_121A30;
          return SpeedSymmetry * MTSlideGesture_::increasingSigmoidFromTdiff(canPunishSomeMoving, *(a2 + 1) - *(a2 + 10) - (*(a2 + 1) - *(a2 + 7)), v13, 2).f32[0];
        }
      }
    }
  }

  return SpeedSymmetry;
}

float MTSlideGesture_::integrateManipulativeGesture(MTSlideGesture_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, const MTDragManagerEventQueue_ *a4, MTChordIntegrating_ *a5, double a6, float a7)
{
  v14 = MTSlideGesture_::someMovingMultiplier(this, a2, a3, a5);
  for (i = 0; i != 4; ++i)
  {
    if (*(this + i + 31) != 0.0 || *this != *(this + 1) && **this == 71 && i <= 1 && *(this + 18) > 0.0)
    {
      if (*(a5 + 264) == 1)
      {
        v16 = (*(this + 34) & 0x80) == 0 || *(a2 + 302) <= (*(a2 + 186) >> 1);
      }

      else
      {
        v16 = 0;
      }

      v17 = MTSlideGesture_::accelerateAxisMotion(this, i, a2, a3, a7, v16);
      MTSlideGesture_::integrateAxisMotion(this, a2, a3, a4, a5, a6, i, v14 * v17);
    }
  }

  v18 = *(this + 28);
  return v18 + MTSlideGesture_::cumulativeMotionMagnitude(this);
}

uint64_t MTSlideGesture_::fireManipulativeGesture(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, MTChordIntegrating_ *a6, double a7)
{
  v8 = this;
  v9 = 0;
  v10 = 0;
  v17.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v17.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = *(this + 36);
  do
  {
    v12 = *(this + v9 * 4 + 96);
    v13 = (v12 / v11);
    v14 = v11 * v13;
    *(this + v9 * 4 + 96) = v12 - v14;
    *(this + 112) = *(this + 112) + fabsf(v14);
    v17.i32[v9] = v13;
    if (v13 >= 0)
    {
      v15 = (v12 / v11);
    }

    else
    {
      v15 = -v13;
    }

    v10 += v15;
    ++v9;
  }

  while (v9 != 4);
  if ((*(this + 35) & 2) == 0 || (*(a6 + 264) & 1) != 0 || (*(a3 + 32) - 2000) <= 0x3E7 && *(a2 + 298) < *(a2 + 186) || (v16 = vabs_s32(*v17.i8), (vcgt_u32(v16, vdup_lane_s32(v16, 1)).u8[0] & 1) == 0))
  {
    if (*this == *(this + 8) || **this != 68 || (*(a2 + 222) & 1) == 0)
    {
      if (v10)
      {
        this = MTSlideGesture_::sendSlideMickeys(this, a2, a3, a4, a5, a6, &v17, a7);
        if (this >= 1)
        {
          this = MTChordIntegrating_::resetMostIntegrators(a6, v8);
          *(a6 + 72) += v10;
        }
      }
    }
  }

  return this;
}

float MTSlideGesture_::integrateFluidGesture(MTSlideGesture_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, MTChordIntegrating_ *a4, float a5)
{
  v10 = MTSlideGesture_::someMovingMultiplier(this, a2, a3, a4);
  *(this + 20) = 0;
  if (*(this + 39) <= 0.0)
  {
    v13 = 0.0;
    for (i = 33; i != 35; ++i)
    {
      if (*(this + i) != 0.0)
      {
        v16 = MTSlideGesture_::accelerateAxisMotion(this, i - 31, a2, a3, a5, 0);
        v17 = MTSlideGesture_::accelerateAxisMotion(this, i - 31, a2, a3, a5, 1);
        v13 = *(this + 20) + (v16 * v10);
        *(this + 20) = v13;
        *(this + 22) = *(this + 22) + (v17 * v10);
      }
    }
  }

  else
  {
    MTSlideGesture_::integrateMotionWithinArc(this, a2, a3, a5, 0);
    v12 = v11;
    MTSlideGesture_::integrateMotionWithinArc(this, a2, a3, a5, 1);
    v13 = *(this + 20) + (v12 * v10);
    *(this + 20) = v13;
    *(this + 22) = *(this + 22) + (v14 * v10);
  }

  *(this + 23) = v13 + *(this + 23);
  if ((*(a4 + 264) & 1) == 0)
  {
    MouseMotionFeedback = MTHandMotion_::getMouseMotionFeedback(a3, 0);
    v19 = *(this + 13);
    if (!*(a4 + 264))
    {
      v19 = v19 * 1.7;
    }

    v20 = MouseMotionFeedback * 0.00282;
    if (v20 < 0.0)
    {
      v20 = 0.0;
    }

    v21 = (v20 + 1.0) * v19;
    if (v21 > 0.0)
    {
      v22 = *(this + 23);
      if (v22 <= v21)
      {
        v23 = 0.0;
        if (v22 < -v21)
        {
          v23 = v21 + v22;
        }
      }

      else
      {
        v23 = v22 - v21;
      }

      *(this + 23) = v23;
    }

    v24 = MTHandMotion_::getMouseMotionFeedback(a3, 0);
    v25 = *(this + 13);
    if (!*(a4 + 264))
    {
      v25 = v25 * 1.7;
    }

    v26 = v24 * 0.00282;
    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v27 = (v26 + 1.0) * v25;
    if (v27 > 0.0)
    {
      v28 = *(this + 22);
      if (v28 <= v27)
      {
        v29 = 0.0;
        if (v28 < -v27)
        {
          v29 = v27 + v28;
        }
      }

      else
      {
        v29 = v28 - v27;
      }

      *(this + 22) = v29;
    }
  }

  for (j = 0; j != 4; ++j)
  {
    v31 = (this + 4 * j);
    if (v31[31] != 0.0 || *this != *(this + 1) && **this == 71 && j <= 1 && *(this + 18) > 0.0)
    {
      v31[24] = v10 * MTSlideGesture_::accelerateAxisMotion(this, j, a2, a3, a5, 0);
    }
  }

  v32 = *(this + 21);
  v33 = *(this + 23);
  v34 = (v32 * v33) < 0.0;
  v35 = fabsf(v33);
  v36 = fabsf(v32);
  if (v34 || v35 > v36)
  {
    *(this + 21) = v33;
  }

  v38 = (*(this + 20) / *(this + 15)) / (*(a2 + 1) - *(a2 + 2));
  MTChordIntegrating_::momentumFilterAlpha(a4, a2, fabsf(*(this + 30)) < fabsf(v38));
  *(this + 30) = ((1.0 - v39) * v38) + (v39 * *(this + 30));
  v40 = *(this + 28);
  return v40 + MTSlideGesture_::cumulativeMotionMagnitude(this);
}

void MTSlideGesture_::integrateMotionWithinArc(MTSlideGesture_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, float a4, int a5)
{
  v9 = *(this + 31);
  if (v9 == 0.0)
  {
    if (*this == *(this + 1) || **this != 71 || (v9 = 1.0, *(this + 18) <= 0.0))
    {
      v9 = 0.0;
    }
  }

  v10 = *(a3 + 79) * v9;
  v11 = *(this + 32);
  if (v11 == 0.0)
  {
    if (*this == *(this + 1) || **this != 71 || (v11 = 1.0, *(this + 18) <= 0.0))
    {
      v11 = 0.0;
    }
  }

  v12 = (*(a3 + 80) * v11) * a4;
  v13 = sqrtf((*(a3 + 84) * *(a3 + 84)) + (*(a3 + 83) * *(a3 + 83)));
  if ((*(a3 + 32) - 2000) <= 0x3E7)
  {
    MTSlideGesture_::suppressVelocityFromMouseFeeback(this, 0, a3, v10 * a4);
    MTSlideGesture_::suppressVelocityFromMouseFeeback(v14, 0, a3, v12);
  }

  if (v13 != 0.0)
  {
    v15 = atan2f(-*(a3 + 84), *(a3 + 83)) + (a4 + -1.0) * 1.57079633;
    if (a5)
    {
      v16 = *(this + 11);
      if (v16 < v13 && v16 > 0.0)
      {
        v17 = *(this + 12);
        if (v17 > 0.0)
        {
          powf(v13 / v16, v17);
        }
      }
    }

    v18 = *(this + 38);
    v19 = *(this + 39);
    v20 = cosf(v15 - v18);
    v21 = cosf(v19 * 0.5);
    if (v20 > v21 || v20 < -v21)
    {
      __sincosf_stret(v18);
    }
  }
}

uint64_t MTSlideGesture_::cumulativeSwipeToDiscreteDelta(MTSlideGesture_ *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    *(this + 19) = 0;
    v7 = *(this + 22);
    v8 = *(this + 9);
    if (v7 <= v8)
    {
      if (v7 >= -v8)
      {
        return 0;
      }

      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 1;
    }

    *(this + 18) = v5;
    return v5;
  }

  v2 = *(this + 19);
  v3 = *(this + 22);
  v4 = *(this + 9);
  if (v1 < 1)
  {
    if (v2 >= (v3 + v4))
    {
      v2 = v3 + v4;
    }

    *(this + 19) = v2;
    if (v3 > v2)
    {
      v5 = 1;
      *(this + 18) = 1;
      v6 = v3 - v4;
      goto LABEL_13;
    }

    return 0;
  }

  if (v2 <= (v3 - v4))
  {
    v2 = v3 - v4;
  }

  *(this + 19) = v2;
  if (v3 >= v2)
  {
    return 0;
  }

  v5 = 0xFFFFFFFFLL;
  *(this + 18) = -1;
  v6 = v3 + v4;
LABEL_13:
  *(this + 19) = v6;
  return v5;
}

float MTSlideGesture_::fluidMomentumPercentage_s(MTSlideGesture_ *this, int a2)
{
  result = 0.0;
  if (a2)
  {
    return *(this + 30);
  }

  return result;
}

BOOL MTSlideGesture_::hasSufficientFluidMomentum(MTSlideGesture_ *this, const MTHandStatistics_ *a2, int a3)
{
  v3 = *(this + 15);
  v4 = *this;
  v5 = *(this + 1);
  v6 = 1.0;
  v7 = 0.8;
  v8 = *(this + 23) / v3;
  if (*this != v5 && (*v4 & 0xFFFE) == 0x26)
  {
    v9 = 0.0;
    if (a3)
    {
      v9 = *(this + 30);
    }

    v6 = 0.25;
    if ((v8 * v9) >= 0.0)
    {
      v6 = 1.0;
    }

    v7 = 0.6;
  }

  v10 = 0.0;
  if (a3)
  {
    v10 = *(this + 30);
  }

  v11 = v4 != v5 && (*v4 & 0xFFFE) == 38;
  v12 = v8 + ((v6 * *(this + 16)) * v10);
  v13 = fabsf(v12);
  v14 = v13 >= (v7 * fabsf(*(this + 21) / v3));
  if (*(this + 32) - 1 >= 2)
  {
    v11 = 0;
  }

  if (v12 >= 0.0)
  {
    v11 = 0;
  }

  v16 = (v8 * v12) > 0.0 && v13 > 0.5;
  return v16 && v14 && !v11;
}

double MTSlideGesture_::fluidDOFPercentageDeltas(float32x4_t *this)
{
  v1 = &this[3].f32[3];
  v2 = vld1q_dup_f32(v1);
  *&result = vdivq_f32(this[6], v2).u64[0];
  return result;
}

uint64_t MTSlideGesture_::fireFluidGesture(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, MTChordIntegrating_ *a6, double a7)
{
  v13 = this;
  v14 = *(a6 + 264);
  if (v14 != 1 || (*(this + 68) & 1) == 0)
  {
    v15 = fabsf(*(this + 92));
    if (v15 <= *(this + 56))
    {
      return this;
    }

    *(this + 112) = v15 + *(this + 112);
    *(this + 92) = *(this + 80);
    if ((v14 & 1) == 0)
    {
      MTChordIntegrating_::resetMostIntegrators(a6, this);
    }
  }

  this = MTChordIntegrating_::sendSlidePreamble(a6, a2, a3, a4, a5, v13, 8u, a7);
  if (*(v13 + 80) != 0.0)
  {
    v16 = *(v13 + 92);
    v17 = *(v13 + 60);
    MTSlideGesture_::cumulativeSwipeToDiscreteDelta(v13);
    *(a6 + 71) = *(v13 + 32);
    *(v13 + 144) = *(a2 + 1);
    if (*(v13 + 8) == *v13)
    {
      std::vector<int>::__throw_out_of_range[abi:ne200100]();
    }

    v18 = (v13 + 60);
    vld1q_dup_f32(v18);
    this = (*(a4->_vptr$MTTapDragManager_ + 4))(a4, v16 / v17, 0.0);
    *(v13 + 68) = 1;
  }

  return this;
}

float MTSlideGesture_::integrateCommandGesture(MTSlideGesture_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, MTChordIntegrating_ *a4, float a5)
{
  v10 = MTSlideGesture_::someMovingMultiplier(this, a2, a3, a4);
  if (*(this + 39) <= 0.0)
  {
    for (i = 0; i != 4; ++i)
    {
      if (*(this + i + 31) != 0.0 || *this != *(this + 1) && **this == 71 && i <= 1 && *(this + 18) > 0.0)
      {
        *(this + 22) = *(this + 22) + (MTSlideGesture_::accelerateAxisMotion(this, i, a2, a3, a5, 1) * v10);
      }
    }
  }

  else
  {
    MTSlideGesture_::integrateMotionWithinArc(this, a2, a3, a5, 1);
    *(this + 22) = *(this + 22) + (v11 * v10);
  }

  if ((*(a3 + 32) - 2000) <= 0x3E7)
  {
    MouseMotionFeedback = MTHandMotion_::getMouseMotionFeedback(a3, 0);
    v13 = *(this + 13);
    if (!*(a4 + 264))
    {
      v13 = v13 * 1.7;
    }

    v14 = MouseMotionFeedback * 0.00282;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v15 = (v14 + 1.0) * v13;
    if (v15 > 0.0)
    {
      v16 = *(this + 22);
      if (v16 <= v15)
      {
        v17 = 0.0;
        if (v16 < -v15)
        {
          v17 = v15 + v16;
        }
      }

      else
      {
        v17 = v16 - v15;
      }

      *(this + 22) = v17;
    }
  }

  if (*(this + 22) < 0.0)
  {
    *(this + 22) = 0;
  }

  v19 = *(this + 28);
  return v19 + MTSlideGesture_::cumulativeMotionMagnitude(this);
}

uint64_t MTSlideGesture_::fireCommandGesture(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, MTChordIntegrating_ *a6, double a7)
{
  v8 = *(this + 36);
  v9 = *(this + 88);
  v10 = (v9 / v8);
  if (v10 >= 1)
  {
    v16 = this;
    if (*(a6 + 264) == 1)
    {
      if ((*(this + 33) & 0x40) != 0)
      {
        this = MTChordIntegrating_::waitForFastShotVerification(a6, a2, a3);
        v9 = *(v16 + 88);
        if (this)
        {
          if (v9 > 30.0)
          {
            *(v16 + 88) = 1106247680;
          }

          return this;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    *(v16 + 88) = v9 - (v10 * v8);
    *(v16 + 112) = fabsf(v8 * v10) + *(v16 + 112);
    this = MTSlideGesture_::sendSlideKeys(v16, a2, a3, a4, a5, a6, v10, a7);
    if (this >= 1)
    {

      return MTChordIntegrating_::resetMostIntegrators(a6, v16);
    }
  }

  return this;
}

uint64_t MTSlideGesture_::isLockedOutByTriggeredSlide(MTSlideGesture_ *this, const MTHandStatistics_ *a2, const MTChordIntegrating_ *a3, char a4)
{
  v5 = *(a3 + 34);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8);
  if ((v6 & 0x1000) != 0)
  {
    return &dword_0 + 1;
  }

  if (v5 == this)
  {
    return 0;
  }

  if ((v6 & 0x2000) != 0 && (*(this + 33) & 0x20) == 0)
  {
    return &dword_0 + 1;
  }

  if ((v6 & 0x8000) == 0 && ((v6 & 0x40000) == 0 || *(a3 + 265) == 1) && ((v6 & 0x20000) == 0 || (*(a3 + 70) & 0x80000000) == 0))
  {
    if ((v6 & 0x10000) != 0 && *(this + 8) >> ((*(this + 8) & 0x55) == 0) != *(v5 + 8) >> ((*(v5 + 8) & 0x55) == 0))
    {
      return &dword_0 + 1;
    }

    return 0;
  }

  if (a4)
  {
    return &dword_0 + 1;
  }

  if (MTSlideGesture_::canOverrideLockOn(this, v5))
  {
    return 0;
  }

  result = 1;
  if ((v6 & 0x8000000) == 0 && ((v6 >> 9) & 7) - 1 <= 2)
  {
    return *(a2 + 1) - *(a3 + 32) >= *&qword_121A40;
  }

  return result;
}

uint64_t MTSlideGesture_::isActiveEdgeSlide(MTSlideGesture_ *this, const MTHandStatistics_ *a2, const MTChordIntegrating_ *a3)
{
  v3 = *(this + 8);
  if ((v3 & 0x200000) == 0)
  {
    return 0;
  }

  v4 = (*(this + 8) & 3) == 0;
  v5 = *(a2 + 57);
  if ((v3 & 3) == 0)
  {
    v5 = *(a2 + 56);
  }

  v6 = *(a2 + 1) - *(a3 + 31);
  if (v6 <= *&qword_121A48)
  {
    v4 = 0;
  }

  if (*this == *(this + 1))
  {
    return 1;
  }

  v7 = v3 & (v5 >> 4) & 0xF;
  v8 = **this;
  v9 = v6 > *&qword_121A28 || v7 == 0;
  v10 = v9;
  if ((v8 != 78 || !v10) && (!(v3 & (*(a2 + 56) >> 12) & 2 | v7) ? (v11 = 1) : (v11 = v4), (v8 & 0xFFFE) == 0x26 ? (v12 = *(a3 + 34) == this) : (v12 = 1), v12 || (v11 & 1) == 0))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL MTSlideGesture_::isBlocked(MTSlideGesture_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTChordIntegrating_ *a4, char a5)
{
  v8 = *(this + 8);
  if (*(a2 + 316))
  {
    v9 = *(a2 + 186);
    if (v9 >= 2 && (*(a2 + 317) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v9 = *(a2 + 186);
  }

  if (*this == *(this + 1))
  {
    return 1;
  }

  v10 = **this;
  if (!**this || *(this + 9) == 0.0 || (v8 & 0x100000) != 0 && *(a4 + 264) != 1)
  {
    return 1;
  }

  if ((v8 & 0x4000000) != 0 && *(a2 + 1) - *(a4 + 31) >= *&qword_121A38)
  {
    return 1;
  }

  if ((v8 & 0x200000) != 0)
  {
    if (MTSlideGesture_::isActiveEdgeSlide(this, a2, a4))
    {
      goto LABEL_23;
    }

    return 1;
  }

  if (v10 == 68)
  {
    if ((*(a4 + 264) & 1) == 0 && *(a4 + 54) == 1 && *(a2 + 1) - *(a4 + 31) < *&qword_121A20)
    {
      if ((a5 & 1) != 0 || (v8 & 3) == 0)
      {
        if (*(a3 + 136) && (*(a2 + 224) & 0x20) != 0 || *(a3 + 137) == 1 && (*(a2 + 224) & 0x10) != 0)
        {
          return 1;
        }
      }

      else if (*(a3 + 136) && (*(a2 + 229) & 0x20) != 0 || *(a3 + 137) == 1 && (*(a2 + 229) & 0x10) != 0)
      {
        return 1;
      }
    }
  }

  else if (v10 == 70 && (*(a4 + 264) & 1) == 0 && *(a4 + 54) == 2 && ((*(a2 + 224) & 0xC0) != 0 || *(a3 + 136) == 1 && (*(a2 + 228) & 0x20) != 0 || *(a3 + 137) == 1 && (*(a2 + 228) & 0x10) != 0) && *(a2 + 1) - *(a4 + 31) < *&qword_121A28)
  {
    return 1;
  }

LABEL_23:
  if (*(a4 + 267) & 1) != 0 || (*(a4 + 114) & 0x1000) != 0 && *(a2 + 1) - *(a2 + 16) < *&qword_121A30 || (MTSlideGesture_::isLockedOutByTriggeredSlide(this, a2, a4, 0))
  {
    return 1;
  }

  v14 = *(a4 + 34) != this && v8 < 0;
  v12 = v9 * 25.0;
  return *(a2 + 40) < v12 && v14;
}

float MTSlideGesture_::integrateGesture(MTSlideGesture_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, const MTDragManagerEventQueue_ *a4, MTChordIntegrating_ *a5, double a6)
{
  v12 = pow(0.939999998, (*(a2 + 1) - *(a2 + 2)) / 0.00800000038);
  *(this + 28) = *(this + 28) * v12;
  if (*this == *(this + 1))
  {
    goto LABEL_13;
  }

  v13 = **this;
  if (v13 == 67 || (v13 & 0x80) != 0)
  {
    v15 = *(a5 + 70);

    return MTSlideGesture_::integrateCommandGesture(this, a2, a3, a5, v15);
  }

  if ((v13 - 35) > 4)
  {
LABEL_13:
    v18 = *(a5 + 70);

    return MTSlideGesture_::integrateManipulativeGesture(this, a2, a3, a4, a5, a6, v18);
  }

  else
  {
    v17 = *(a5 + 70);

    return MTSlideGesture_::integrateFluidGesture(this, a2, a3, a5, v17);
  }
}

uint64_t MTSlideGesture_::fireGesture(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTDragManagerEventQueue_ *a4, __IOHIDEvent *a5, MTChordIntegrating_ *a6, double a7)
{
  if (*this == *(this + 8))
  {
    return MTSlideGesture_::fireManipulativeGesture(this, a2, a3, a4, a5, a6, a7);
  }

  v7 = **this;
  if (v7 == 67 || (v7 & 0x80) != 0)
  {
    return MTSlideGesture_::fireCommandGesture(this, a2, a3, a4, a5, a6, a7);
  }

  if ((v7 - 35) > 4)
  {
    return MTSlideGesture_::fireManipulativeGesture(this, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return MTSlideGesture_::fireFluidGesture(this, a2, a3, a4, a5, a6, a7);
  }
}

void __cxx_global_var_init_38()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_34(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_8(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

double MTForceFilter_::clear(MTForceFilter_ *this)
{
  *(this + 1) = 0x3F75C28F00000000;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  return result;
}

void MTForceFilter_::MTForceFilter_(MTForceFilter_ *this)
{
  *this = off_109880;
  *(this + 1) = 0x3F75C28F00000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
}

float MTForceFilter_::surgeToActuationStrength(uint64_t a1, float *a2)
{
  v2 = *a2;
  v3 = powf(fabsf(*(a1 + 24)), 1.2);
  return (v3 / (v3 + powf(fabsf(v2), 1.2))) + 0.1;
}

void MTForceFilter_::updateForceFilter(uint64_t a1, float *a2, float a3, float a4, double a5)
{
  if (a5 <= 0.04)
  {
    v6 = a5;
  }

  else
  {
    v6 = 0.04;
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = a3;
  *(a1 + 20) = v7;
  v8 = *(a1 + 28);
  v9 = (a3 - v7) / v6;
  *(a1 + 28) = v9;
  *(a1 + 32) = v8;
  if (a3 == 0.0 || a5 > 0.04)
  {
    v11 = *(a1 + 24);
    v13 = 0.0;
  }

  else
  {
    v10 = fabsf(v9);
    v11 = *(a1 + 24);
    v12 = fabsf(v11);
    if (v10 <= v12)
    {
      v10 = v12;
    }

    v13 = (1.0 - (v10 / (v10 + 1500.0))) * 0.9;
  }

  *(a1 + 24) = ((1.0 - v13) * v9) + (v13 * v11);
  v14 = *(a1 + 36);
  if (v14 >= a4)
  {
    v15 = (a4 * 0.15) + (v14 * 0.85);
  }

  else
  {
    v15 = (a4 * 0.75) + (v14 * 0.25);
  }

  *(a1 + 36) = v15;
  MTForceFilter_::updateHystereticForce(a1, a2, a3);
  v16 = *(a1 + 40);
  v17 = *(a1 + 8);
  v18 = v16;
  if (v16 > v17)
  {
    v18 = (v16 * (1.0 - *(a1 + 12))) + (*(a1 + 12) * v17);
  }

  *(a1 + 8) = v18;
}

float MTForceFilter_::updateHystereticForce(uint64_t a1, float *a2, float a3)
{
  v3 = a2[1];
  v4 = *a2 * a3;
  if (v4 < v3)
  {
    v4 = a2[1];
  }

  v5 = a2[2];
  if (v4 <= v5)
  {
    v5 = v4;
  }

  v6 = *(a1 + 40);
  if ((v6 + v5) >= a3)
  {
    if (v3 >= a3)
    {
      v7 = a3 + a3;
    }

    else
    {
      v7 = *(a1 + 40);
      if ((v6 - v5) > a3)
      {
        v7 = v5 + a3;
      }
    }
  }

  else
  {
    v7 = a3 - v5;
  }

  result = (v7 * (1.0 - a2[3])) + (a2[3] * v6);
  *(a1 + 40) = result;
  *(a1 + 44) = v6;
  return result;
}

void __cxx_global_var_init_39()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void *MTChordCyclingTrackpad_::MTChordCyclingTrackpad_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  result = MTChordCycling_::MTChordCycling_(a1, a2, a3, a4, a5, a6);
  *result = off_1098B0;
  return result;
}

uint64_t MTChordCyclingTrackpad_::chk4newTapChord(MTChordCyclingTrackpad_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTChordGestureSet_ *a4)
{
  if (a4 && *(a2 + 10) > *(a2 + 16) && (*(*this + 48))(this, a2))
  {
    v8 = *(this + 260);
    v9 = *(a4 + 54);
    if ((!v8 || (v9 >= *(this + 258) || v9 < *(a2 + 186)) && *(a4 + 56) != v8) && (v9 != 2 || *(a4 + 55) != 2 || *(a2 + 195) != 1))
    {
      (*(*this + 88))(this, a2, a3, a4);
    }
  }

  v10 = *(*this + 96);

  return v10(this, a2, a3);
}

void MTChordCyclingTrackpad_::handleChordTaps(MTChordCyclingTrackpad_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4, char a5, uint64_t a6)
{
  if (*(this + 260) && (*(*this + 48))(this) && ((a6 & 1) != 0 || *(this + 258) < 2u || (*(*this + 56))(this, a2)))
  {
    if ((*(*this + 112))(this, a2, a3, a6))
    {
      v12 = *(this + 262);
      if (!v12 || (*(this + 6) & v12) != 0)
      {
        v13 = *(this + 259);
        if ((a6 & 1) != 0 || v13 < 2)
        {
          if (v13 == 1)
          {
            v16 = *(this + 110);
            if (v16 != *(this + 111) && *v16 && vabdd_f64(*(a2 + 12), *(a2 + 13)) < *&qword_121AA0 && *(a2 + 211) + *(a2 + 186) <= 1 && (a6 & 1) == 0)
            {
              (*(*this + 120))(this, a2, a3 + 168, a4);
              goto LABEL_47;
            }
          }

          if (a6 && *(a2 + 10) - *(a2 + 11) <= 0.09)
          {
            return;
          }
        }

        else
        {
          v14 = *(this + 110);
          v15 = *(this + 111);
          if (v14 != v15 && *v14)
          {
            goto LABEL_13;
          }

          v17 = *(this + 102);
          if (v17 != *(this + 103) && *v17)
          {
            if (v14 != v15 && *v14)
            {
LABEL_13:
              (*(*this + 128))(this, a2, a3 + 168, a4);
              goto LABEL_49;
            }

            v18 = *(this + 49);
            if (*(v18 + 28) == 1 && *(v18 + 24) >= 3)
            {
              MTTapDragManager_::handleTapsForMultiFingerDrag(*(this + 49), a2, a3, a4);
              goto LABEL_49;
            }

            goto LABEL_46;
          }
        }

        v19 = *(this + 102);
        if (v19 == *(this + 103) || !*v19 || a6 && (a5 & 1) == 0 && (*(v19 + 5) & 1) == 0)
        {
          if (!a6 || (v20 = *(this + 106), v20 == *(this + 107)) || !*v20 || v12 && (*(this + 6) & v12) == 0)
          {
LABEL_49:

            MTChordIntegrating_::nullify(this + 102);
            return;
          }

          MTGesture::dispatchEvents(this + 106, *(this + 49), a4, 0, 0, a3 + 168, 24576, *(this + 260), *(a2 + 1));
          v21 = *(this + 49);
          *(v21 + 72) = *(a2 + 1);
          LOBYTE(v22) = 1;
LABEL_48:
          *(v21 + 49) = v22;
          goto LABEL_49;
        }

        v23 = *(this + 49);
        if (*(this + 258) != 1 || *v19 != 65)
        {
          MTTapDragManager_::clearCycle(v23);
          v18 = *(this + 49);
LABEL_46:
          MTGesture::dispatchEvents(this + 102, v18, a4, 0, 0, a3 + 168, 12288, *(this + 260), *(a2 + 1));
          goto LABEL_47;
        }

        MTTapDragManager_::handleTapsForDrag(v23, a2, a3, a4);
LABEL_47:
        v21 = *(this + 49);
        v22 = *(this + 258);
        *(v21 + 72) = *(a2 + 1);
        goto LABEL_48;
      }
    }
  }
}

uint64_t MTChordCyclingTrackpad_::possiblyStopChordMomentum(MTChordCyclingTrackpad_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4)
{
  MTChordCycling_::possiblyStopChordMomentum(this, a2, a3, a4);
  v8 = *(this + 49);
  v9 = *(a2 + 1) - *(this + 155);

  return MTTapDragManager_::chk4dragCycling(v8, a2, a3, a4, v9);
}

void MTChordCyclingTrackpad_::chk4chordCycling(int32x2_t *this, const MTHandStatistics_ *a2, float32x4_t *a3, __IOHIDEvent *a4)
{
  if (*(a2 + 211) + *(a2 + 186) > *(a2 + 190) + *(a2 + 187) && this[79].i32[0])
  {
    MTChordIntegrating_::clearMickeysSinceLastTouchdown(&this[51]);
  }

  (*(*this + 152))(this, a2, a4);
  if (*(a2 + 210))
  {
    v8 = this[79].i32[0];
    if (v8 && this[78].i32[0] == 1 || this[130].i32[0] && this[129].i32[0] == 1)
    {
      *(*&this[49] + 80) = *(a2 + 1);
    }

    if (v8)
    {
      v9 = this[85];
      if (v9)
      {
        if (*v9 != v9[1] && **v9 == 37 && this[84].i8[0] == 1)
        {
          v10 = *(a2 + 186);
          if ((*(a2 + 168) & 0x20) != 0)
          {
            v10 += *(a2 + 188);
          }

          if (v10 >= *(a2 + 187) && v10 > 2)
          {
            return;
          }
        }
      }
    }
  }

  if (!*(a2 + 298) && (*(a2 + 186) != 1 || *(a2 + 195) == 0))
  {
LABEL_25:
    (*(*this + 104))(this, a2, a3, a4);
    v12 = *(*this + 160);

    v12(this, a2, a3, a4);
    return;
  }

  v13 = this[49];
  if (*(*&v13 + 28))
  {
    v14 = *(a2 + 186);
    v15 = *(a2 + 187);
    if (*(*&v13 + 24) >= 3)
    {
      v16 = *(a2 + 211);
      v17 = *(a2 + 190);
      v18 = v17 + v15;
      goto LABEL_34;
    }
  }

  else
  {
    v14 = *(a2 + 186);
    v15 = *(a2 + 187);
  }

  v16 = *(a2 + 211);
  v17 = *(a2 + 190);
  v18 = v17 + v15;
  if (v16 + v14 < v18 && v16 + v14 <= *(*&v13 + 48))
  {
    (*(*this + 104))(this, a2, a3, a4);
    goto LABEL_45;
  }

LABEL_34:
  v19 = v16 + v14;
  if (v19 >= v18 || !this[130].i32[0])
  {
    goto LABEL_45;
  }

  if (v19 != 1 || (v20 = 0, v21 = 1, !v17) && *(a2 + 195))
  {
    if ((this[130].i16[2] & 0x100) == 0)
    {
      v22 = this[106];
      if (v22 == *&this[107] || !*v22)
      {
        goto LABEL_45;
      }
    }

    v21 = 0;
    v20 = 1;
  }

  (*(*this + 136))(this, a2, a3, a4, v21, v20);
LABEL_45:
  (*(*this + 160))(this, a2, a3, a4);
  v23 = (*(*this + 24))(this, a2);
  MatchingChord = MTChordTable_::findMatchingChord(this, v23, 0);
  (*(*this + 144))(this, a2, a3, MatchingChord);
  v25 = a3[17].f32[1];
  if (MatchingChord && (*(MatchingChord + 228) & 0x100) != 0)
  {
    if ((*(a2 + 148) & 1) != 0 && v25 <= 0.765)
    {
      return;
    }

    if (*(MatchingChord + 220) < *(a2 + 198) && *(a2 + 186) == *(a2 + 298))
    {
      if (!this[79].i32[0] || (this[84].i8[0] & 1) != 0 || *(a2 + 1) - *(a2 + 7) <= *&qword_121A20)
      {
        return;
      }

      goto LABEL_102;
    }
  }

  if ((this[79].i16[2] & 0x100) != 0 && (this[84].i8[0] & 1) == 0 && (*(a2 + 148) & 1) != 0 && v25 <= 0.765)
  {
LABEL_102:

    MTChordIntegrating_::endChordIntegration(&this[51], a2, a3, a4, this);
    return;
  }

  if (!this[79].i32[0])
  {
    if (!MatchingChord || !MTChordGestureSet_::isChordReadyToIntegrate(MatchingChord, a2, a3))
    {
      return;
    }

    goto LABEL_155;
  }

  MTChordIntegrating_::markMomentumPause(&this[51], a2);
  if (*(a2 + 1) - *(a2 + 36) <= *(a2 + 1) - *(a2 + 2) && MatchingChord && *(a2 + 211) + *(a2 + 186) >= 4)
  {
    v33 = this[85];
    if (!v33 || *v33 == v33[1] || **v33 - 35 >= 5)
    {
      goto LABEL_155;
    }
  }

  else if (!MatchingChord)
  {
    return;
  }

  if (*(MatchingChord + 224) == this[79].i32[0] && (MTChordGestureSet_::chordGestureSetEquals(MatchingChord, &this[51]) & 1) != 0)
  {
    return;
  }

  v26 = this[49];
  if (*(*&v26 + 24) >= 2)
  {
    if ((***&v26)(v26))
    {
      v27 = this[49];
      if (*(*&v27 + 28) != 1 || *(*&v27 + 24) < 3)
      {
        return;
      }
    }
  }

  v28 = *(MatchingChord + 216);
  v29 = this[78].u32[0];
  if (v28 < v29)
  {
    v30 = this[85];
    if (v30)
    {
      if (*v30 == *(v30 + 1) || (**v30 & 0xFFFE) != 0x26)
      {
        goto LABEL_65;
      }

      if (!MTSlideGesture_::isFluidFullyTriggered(v30))
      {
        goto LABEL_66;
      }

      v30 = this[85];
      if (v30)
      {
LABEL_65:
        if (*v30 == *(v30 + 1) || (**v30 & 0xFFFE) != 0x26)
        {
          goto LABEL_68;
        }

LABEL_66:
        if (*(a2 + 298) && *(a2 + 211) + *(a2 + 186) >= *(a2 + 190) + *(a2 + 187))
        {
          goto LABEL_68;
        }

        goto LABEL_25;
      }
    }

LABEL_68:
    if (this[84].i8[0] == 1 && ((this[79].i16[2] & 0x80) == 0 || (MTChordIntegrating_::hasPartiallyTriggeredFluidNotificationOrNotificationAlt(&this[51]) & 1) != 0 || ((*(MatchingChord + 228) & 8) == 0 || *(a2 + 211)) && *(MatchingChord + 216) >= *(a2 + 186)))
    {
      if ((this[79].i16[2] & 0x10) == 0)
      {
        return;
      }

      if ((*(MatchingChord + 228) & 1) == 0)
      {
        return;
      }

      v31 = this[85];
      if (v31)
      {
        if (*v31 != v31[1] && **v31 == 37)
        {
          v32 = *(a2 + 186);
          if (v32 <= *(a2 + 195) || *(a2 + 211) + v32 != 1)
          {
            return;
          }
        }
      }

      if (MTChordIntegrating_::hasPartiallyTriggeredFluidNotificationOrNotificationAlt(&this[51]))
      {
        return;
      }

      if ((this[79].i16[2] & 0x80) == 0)
      {
        if ((this[79].i16[2] & 0x100) != 0)
        {
          if (*(MatchingChord + 216) != 1 || *(a2 + 211) + *(a2 + 186) != 1 || this[158].i8[0] == 1 && this[158].i32[1] == 4)
          {
            return;
          }
        }

        else if (*(a2 + 1) - *(a2 + 16) <= *&gTimingPrefs_ * 0.5)
        {
          return;
        }
      }
    }

LABEL_155:
    v48 = *(*this + 80);

    v48(this, a2, a3, a4, MatchingChord);
    return;
  }

  v35 = this[88].i32[0] <= v29 + 1 || v28 < *(a2 + 186);
  v36 = MTChordIntegrating_::recentMomentumPause(&this[51], a2, HIBYTE(*(MatchingChord + 228)) & 1);
  if (*(MatchingChord + 216) < 3u)
  {
    hasEnabledFluidNavigation = 0;
  }

  else
  {
    hasEnabledFluidNavigation = MTChordGestureSet_::hasEnabledFluidNavigation(MatchingChord, this);
  }

  if (!v35)
  {
    goto LABEL_132;
  }

  if ((*(MatchingChord + 228) & 0x100) != 0 && (v38 = this[85]) != 0 && *v38 != v38[1] && (**v38 & 0xFFFE) == 0x46 || (v39 = *(a2 + 1), v40 = v39 - *(a2 + 35), v40 >= *&qword_121A20))
  {
    LOBYTE(v35) = 0;
    goto LABEL_132;
  }

  if ((hasEnabledFluidNavigation & 1) == 0)
  {
    v43 = *(a2 + 10);
    LOBYTE(v35) = v39 > v43;
    if (v39 <= v43 || v36)
    {
      goto LABEL_132;
    }

    if (a3[12].f32[2] == 0.0)
    {
      LOBYTE(v35) = a3[12].f32[3] != 0.0;
      goto LABEL_132;
    }

LABEL_131:
    LOBYTE(v35) = 1;
    goto LABEL_132;
  }

  v41 = a3[12].f32[2] != 0.0 || v36;
  if (v41)
  {
    goto LABEL_131;
  }

  v42 = a3[12].f32[3];
  LOBYTE(v35) = v42 != 0.0;
  if (v42 == 0.0 && ((hasEnabledFluidNavigation ^ 1) & 1) == 0)
  {
    LOBYTE(v35) = MTChordIntegrating_::switchingVerticalToHorizontal(this + 51, 20.0, v40 == 0.0);
  }

LABEL_132:
  if ((this[84].i8[0] & 1) == 0)
  {
    goto LABEL_155;
  }

  if (*(a2 + 1) - *(a2 + 33) < *&qword_121A20)
  {
    if ((*(MatchingChord + 228) & 0x100) == 0 && !MTChordGestureSet_::hasEnabledFluidDock(MatchingChord, this))
    {
      goto LABEL_155;
    }

    if (*(MatchingChord + 216) != 3)
    {
      goto LABEL_155;
    }

    v44 = this[85];
    if (!v44 || *v44 == v44[1] || (**v44 & 0xFFFE) != 0x46)
    {
      goto LABEL_155;
    }
  }

  v45 = this[79].i16[2];
  if ((v45 & 0x20) != 0 || (v45 & 0x40) != 0 && ((v35 & 1) != 0 || MTChordGestureSet_::hasActiveEdgeSlide(MatchingChord, a2, this)))
  {
    v46 = *(MatchingChord + 228);
    if ((v46 & 2) != 0)
    {
      goto LABEL_155;
    }

    if (v35 & ((v46 & 4) >> 2))
    {
      goto LABEL_155;
    }

    if ((v35 & ((v46 & 0x800) >> 11)) == 1)
    {
      v47 = this[85];
      if (v47)
      {
        if (*v47 != v47[1] && **v47 == 68 && this[78].i32[0] == 1)
        {
          goto LABEL_155;
        }
      }
    }
  }
}

MTSlideGesture_ *MTChordIntegrating_::hasPartiallyTriggeredFluidNotificationOrNotificationAlt(MTChordIntegrating_ *this)
{
  result = *(this + 34);
  if (result)
  {
    if (*result == *(result + 1) || (**result & 0xFFFE) != 0x26)
    {
      return 0;
    }

    else
    {
      return !MTSlideGesture_::isFluidFullyTriggered(result);
    }
  }

  return result;
}

void MTChordCyclingTrackpad_::~MTChordCyclingTrackpad_(MTChordCyclingTrackpad_ *this)
{
  MTChordCycling_::~MTChordCycling_(this);

  operator delete();
}

HSUtil::Encoder *MTChordCycling_::encodeToMap(MTChordCycling_ *this, HSUtil::Encoder *a2)
{
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key, *(this + 153));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key, *(this + 154));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key, *(this + 155));
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key, *(this + 156));
  v4 = HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key;
  v5 = *(this + 157);

  return HSUtil::Encoder::encodeDouble(a2, v4, v5);
}

uint64_t MTChordCycling_::decodeFromMap(MTChordCycling_ *this, HSUtil::Decoder *a2)
{
  *(this + 153) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTChordCycling_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTChordCycling_::decodeFromMap();
    }

    return 0;
  }

  *(this + 154) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTChordCycling_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTChordCycling_::decodeFromMap();
    }

    return 0;
  }

  *(this + 155) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTChordCycling_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTChordCycling_::decodeFromMap();
    }

    return 0;
  }

  *(this + 156) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTChordCycling_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTChordCycling_::decodeFromMap();
    }

    return 0;
  }

  *(this + 157) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Gestures/MTChordCycling_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTChordCycling_::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

BOOL MTSlideGesture_::isFluidFullyTriggered(MTSlideGesture_ *this)
{
  if (*this == *(this + 1))
  {
    return 0;
  }

  if (**this - 35 > 4)
  {
    return 0;
  }

  if (MTSlideGesture_::fluidSwipePercentage(this) <= 1.0)
  {
    return MTSlideGesture_::fluidSwipePercentage(this) < -1.0;
  }

  return 1;
}

void MTChordCycling_::~MTChordCycling_(MTChordCycling_ *this)
{
  *this = off_109988;
  v12 = (this + 976);
  std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](&v12);
  v2 = *(this + 118);
  if (v2)
  {
    *(this + 119) = v2;
    operator delete(v2);
  }

  v3 = *(this + 114);
  if (v3)
  {
    *(this + 115) = v3;
    operator delete(v3);
  }

  v4 = *(this + 110);
  if (v4)
  {
    *(this + 111) = v4;
    operator delete(v4);
  }

  v5 = *(this + 106);
  if (v5)
  {
    *(this + 107) = v5;
    operator delete(v5);
  }

  v6 = *(this + 102);
  if (v6)
  {
    *(this + 103) = v6;
    operator delete(v6);
  }

  v12 = (this + 568);
  std::vector<MTSlideGesture_>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(this + 67);
  if (v7)
  {
    *(this + 68) = v7;
    operator delete(v7);
  }

  v8 = *(this + 63);
  if (v8)
  {
    *(this + 64) = v8;
    operator delete(v8);
  }

  v9 = *(this + 59);
  if (v9)
  {
    *(this + 60) = v9;
    operator delete(v9);
  }

  v10 = *(this + 55);
  if (v10)
  {
    *(this + 56) = v10;
    operator delete(v10);
  }

  v11 = *(this + 51);
  if (v11)
  {
    *(this + 52) = v11;
    operator delete(v11);
  }

  MTChordTable_::~MTChordTable_(this);
}

{
  MTChordCycling_::~MTChordCycling_(this);

  operator delete();
}

void __cxx_global_var_init_40()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_39(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_35(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_9(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

uint64_t MTChordCycling_::MTChordCycling_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v10 = MTChordTable_::MTChordTable_(a1, a2, a3);
  *v10 = off_109988;
  *(v10 + 392) = a4;
  *(v10 + 400) = a5;
  MTChordIntegrating_::MTChordIntegrating_((v10 + 408));
  MTChordIntegrating_::MTChordIntegrating_((a1 + 816));
  MTParameterFactory_::initChordCyclingParams(a1 + 368, a6);
  MTFingerToPathMap_::~MTFingerToPathMap_((a1 + 388));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_60AF8(_Unwind_Exception *a1)
{
  MTChordGestureSet_::~MTChordGestureSet_((v1 + 408));
  MTChordTable_::~MTChordTable_(v1);
  _Unwind_Resume(a1);
}

uint64_t MTChordCycling_::clearChordCyclingState(MTChordCycling_ *this)
{
  MTChordIntegrating_::nullify(this + 51);
  MTChordIntegrating_::nullify(this + 102);
  *(this + 157) = 0;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  MTTapDragManager_::clearState(*(this + 49));

  return MTChordTable_::clearChordCyclingState(this);
}

uint64_t MTChordCycling_::getCommittedFingerCount(MTChordCycling_ *this)
{
  if (*(this + 672) == 1)
  {
    return *(this + 156);
  }

  else
  {
    return 0;
  }
}

double MTChordCycling_::selectSlideChord(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4, MTChordGestureSet_ *a5)
{
  MTChordIntegrating_::endChordIntegration((this + 408), a2, a3, a4, this);
  if (a5)
  {
    MTChordIntegrating_::operator=((this + 408), a5);
    *(this + 153) = *(a2 + 1);
    MTChordIntegrating_::beginChordIntegration((this + 408), a2, a3, a4, this);
    result = *(a2 + 1);
    *(this + 82) = result;
  }

  return result;
}

double MTChordCycling_::selectTapChord(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTChordGestureSet_ *a4)
{
  if (a4)
  {
    *(this + 153) = *(a2 + 1);
    MTChordIntegrating_::operator=((this + 816), a4);
    result = *(a2 + 1);
    *(this + 133) = result;
  }

  return result;
}

void MTChordCycling_::handleChordLiftoff(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4)
{
  if (*(this + 260))
  {
    v8 = *(this + 49);
    v9 = *(v8 + 24) >= 2 && *(v8 + 48) > 1u || *(a2 + 211) + *(a2 + 186) == 1;
    (*(*this + 136))(this, a2, a3, a4, v9, 0);
    MTChordIntegrating_::endChordIntegration((this + 816), a2, a3, a4, this);
  }

  if (*(this + 158))
  {

    MTChordIntegrating_::endChordIntegration((this + 408), a2, a3, a4, this);
  }
}

BOOL MTChordCycling_::touchdownSinceTapOrExcessMotion(MTChordCycling_ *this, const MTHandStatistics_ *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 1);
  v4 = v3 - v2;
  v5 = *(this + 49);
  v6 = v3 - *(v5 + 72);
  v7 = v3 - *(v5 + 80);
  if (v6 < v7)
  {
    v7 = v6;
  }

  return v4 < v7 && v2 > *(this + 157);
}

BOOL MTChordCycling_::subsetSinceTapOrExcessMotion(MTChordCycling_ *this, const MTHandStatistics_ *a2)
{
  v2 = *(a2 + 33);
  v3 = *(a2 + 1);
  v4 = v3 - v2;
  v5 = *(this + 49);
  v6 = v3 - *(v5 + 72);
  v7 = v3 - *(v5 + 80);
  if (v6 < v7)
  {
    v7 = v6;
  }

  return v4 < v7 && v2 > *(this + 157);
}

void MTChordCycling_::chk4excessTapMotion(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3)
{
  if (*(this + 260) && *(this + 158) && *(this + 672) == 1)
  {
    if ((v3 = *(this + 85)) != 0 && *v3 != v3[1] && ((**v3 & 0x80) != 0 || ((v4 = **v3 - 35, v5 = v4 > 0x2B, v6 = (1 << v4) & 0x8010000001FLL, !v5) ? (v7 = v6 == 0) : (v7 = 1), !v7)) || (*(a2 + 186) >= 2u ? (v8 = dword_121A80 / 2) : (v8 = dword_121A80), *(this + 174) >= v8))
    {
      *(this + 157) = *(a2 + 1);
      MTChordIntegrating_::nullify(this + 102);
    }
  }
}

uint64_t MTChordCycling_::chk4newTapChord(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, MTChordGestureSet_ *a4)
{
  if (a4 && *(a2 + 10) > *(a2 + 16) && (*(*this + 48))(this, a2))
  {
    v8 = *(this + 260);
    if (!v8 || ((v9 = *(a4 + 54), v9 >= *(this + 258)) || v9 < *(a2 + 186)) && *(a4 + 56) != v8)
    {
      (*(*this + 88))(this, a2, a3, a4);
    }
  }

  v10 = *(*this + 96);

  return v10(this, a2, a3);
}

BOOL MTChordCycling_::tapHasValidTimingAndStrength(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, char a4)
{
  if (*(a2 + 51) <= *(this + 92))
  {
    return 0;
  }

  v5 = *(a2 + 10);
  v6 = *(a2 + 1);
  if (v6 - v5 >= *&qword_121A48 || v5 - *(a2 + 9) >= *&qword_121A48 * 0.5 || (a4 & 1) == 0 && v6 - *(a2 + 33) >= *&qword_121A48)
  {
    return 0;
  }

  if (*(a2 + 186) && (*(a2 + 185) & 1) != 0)
  {
    return 0;
  }

  if (v6 - v5 <= *&qword_121A50 && (*(this + 400) & 1) != 0)
  {
    return 0;
  }

  MTAbsoluteTimeGetCurrent();
  if (v9 - *(a2 + 5) < *&qword_121A48)
  {
    return 0;
  }

  MTAbsoluteTimeGetCurrent();
  if (v10 - *(a2 + 6) < *&qword_121A48)
  {
    return 0;
  }

  if (*(this + 158))
  {
    if (*(this + 173))
    {
      return 0;
    }

    v11 = *(this + 85);
    if (v11)
    {
      if (*v11 != v11[1] && **v11 == 70)
      {
        return 0;
      }
    }
  }

  return (*(a2 + 44) == *(a2 + 45) || *(a2 + 108) >= 2u) && (!(*(a2 + 211) | *(a2 + 186)) || (*(a2 + 184) & 1) == 0) && *(a3 + 61) <= *&dword_121AC8;
}

void MTChordCycling_::processDoubleTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 392);
  v5 = *(a2 + 8);
  v6 = *(v4 + 72);
  v7 = v5 - v6;
  if (v5 - v6 < *&qword_121A78 && v6 > *(v4 + 88))
  {
    v9 = *(v4 + 49);
    if (*(a1 + 1032) == v9 && (hypotf(*(a2 + 248) - *(a2 + 240), *(a2 + 252) - *(a2 + 244)) < *(a1 + 380) || vabdd_f64(*(a2 + 96), *(a2 + 104)) < *&qword_121AA0) && (*(a1 + 376) != 1 || v7 >= v5 - *(a2 + 136)))
    {
      if (*(a1 + 384) != 1 || (v9 == *(a2 + 199) ? (v13 = v9 == *(a2 + 200)) : (v13 = 0), v13))
      {
        MTGesture::dispatchEvents((a1 + 880), v4, a4, 0, 0, a3, 28672, *(a1 + 1040), v5);
        v14 = *(a1 + 392);
        *(v14 + 88) = *(a2 + 8);

        MTTapDragManager_::clearCycle(v14);
      }
    }
  }
}

void MTChordCycling_::processMultiFingerDoubleTap(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v6 = *(a1 + 392);
  v7 = *(a2 + 8);
  v8 = *(v6 + 72);
  if (v7 - v8 < *&qword_121A78 && v8 > *(v6 + 88) && (v9 = *(v6 + 49), *(a1 + 1032) == v9) && (*(a1 + 376) != 1 || v7 - v8 >= v7 - *(a2 + 136)) && (*(a1 + 384) != 1 || (v9 == *(a2 + 199) ? (v10 = v9 == *(a2 + 200)) : (v10 = 0), v10)))
  {
    MTGesture::dispatchEvents((a1 + 880), v6, a4, 0, 0, a3, 28672, *(a1 + 1040), v7);
    v14 = *(a1 + 392);
    *(v14 + 88) = *(a2 + 8);
    MTTapDragManager_::clearCycle(v14);
  }

  else if (*(a1 + 1036) >= 2)
  {
    v11 = *(a1 + 816);
    if (v11 != *(a1 + 824))
    {
      if (*v11)
      {
        v12 = *(a1 + 880);
        if (v12 != *(a1 + 888))
        {
          if (*v12)
          {
            if (*v11 == 67)
            {
              v13 = *(v11 + 4);
              if (v13 == 1024 || v13 == 512)
              {
                MTTapDragManager_::queueMultiFingerTapWaitingForDouble(*(a1 + 392), a2, a3, a4, v13);
              }
            }
          }
        }
      }
    }
  }

  v15 = *(a1 + 392);
  v16 = *(a1 + 1032);
  *(v15 + 72) = *(a2 + 8);
  *(v15 + 49) = v16;

  MTChordIntegrating_::nullify((a1 + 816));
}

void MTChordCycling_::handleChordTaps(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4, BOOL a5, uint64_t a6)
{
  if (!*(this + 260))
  {
    return;
  }

  if (!(*(*this + 48))(this))
  {
    return;
  }

  if (!(*(*this + 112))(this, a2, a3, a6))
  {
    return;
  }

  v11 = *(this + 262);
  if (v11)
  {
    if ((*(this + 6) & v11) == 0)
    {
      return;
    }
  }

  v12 = *(this + 102);
  if (v12 == *(this + 103))
  {
    goto LABEL_10;
  }

  v13 = 0;
  if (!*v12 || (a6 & 1) != 0)
  {
    goto LABEL_11;
  }

  if (*(a2 + 211) | *(a2 + 186))
  {
LABEL_10:
    v13 = 0;
  }

  else
  {
    MTGesture::dispatchEvents(this + 102, *(this + 49), a4, 0, 0, a3 + 168, 12288, *(this + 260), *(a2 + 1));
    v13 = 1;
  }

LABEL_11:
  if (*(this + 259) == 1)
  {
    v14 = *(this + 110);
    if (v14 != *(this + 111) && *v14 && (a6 & 1) == 0 && *(a2 + 211) + *(a2 + 186) <= 1)
    {
      (*(*this + 120))(this, a2, a3 + 168, a4);
      v13 = 1;
    }
  }

  if (a6 && *(a2 + 10) - *(a2 + 11) <= 0.09 || *(this + 259) < 2 || (v15 = *(this + 110), v15 == *(this + 111)) || !*v15 || *(a3 + 89) >= 21.0 || (v16 = *(a2 + 1), v17 = v16 - *(a2 + 8), v17 >= *&qword_121A48 + *&qword_121AA8) || (v18 = v16 - *(a2 + 7), v17 - v18 >= *&qword_121AA8) || v18 - (v16 - *(a2 + 10)) >= *&qword_121AA8)
  {
    if (!v13)
    {
      return;
    }
  }

  else
  {
    (*(*this + 128))(this, a2, a3 + 168, a4);
  }

  if (*(this + 260))
  {
    v19 = *(this + 49);
    v20 = *(this + 258);
    *(v19 + 72) = *(a2 + 1);
    *(v19 + 49) = v20;

    MTChordIntegrating_::nullify(this + 102);
  }
}

_DWORD *MTChordCycling_::possiblyStartChordMomentum(_DWORD *this, const MTHandStatistics_ *a2, __IOHIDEvent *a3)
{
  if (*(a2 + 211) + *(a2 + 186) < *(a2 + 190) + *(a2 + 187))
  {
    if (this[158])
    {
      return MTChordIntegrating_::possiblyStartMomentum((this + 102), a2, a3, this, *(a2 + 1));
    }
  }

  return this;
}

uint64_t MTChordCycling_::possiblyStopChordMomentum(uint64_t this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3, __IOHIDEvent *a4)
{
  if (*(this + 1264) == 1 && *(a2 + 211) + *(a2 + 186) > *(a2 + 190) + *(a2 + 187))
  {
    v4 = *(this + 1268);
    if (*(this + 1276) == v4 && *(this + 1272) == 1)
    {
      *(*(this + 392) + 80) = *(a2 + 1);
    }

    return MTDragManagerEventQueue_::stopMomentum(this, a4, v4);
  }

  return this;
}

uint64_t MTChordCycling_::chk4chordCycling(MTChordCycling_ *this, const MTHandStatistics_ *a2, float32x4_t *a3, __IOHIDEvent *a4)
{
  if (*(a2 + 211) + *(a2 + 186) > *(a2 + 190) + *(a2 + 187) && *(this + 158))
  {
    MTChordIntegrating_::clearMickeysSinceLastTouchdown(this + 408);
  }

  (*(*this + 160))(this, a2, a3, a4);
  (*(*this + 152))(this, a2, a4);
  v8 = *this;
  if (!(*(a2 + 298) | *(a2 + 186)))
  {
    v9 = *(v8 + 104);

    return v9(this, a2, a3, a4);
  }

  v11 = (*(v8 + 24))(this, a2);
  MatchingChord = MTChordTable_::findMatchingChord(this, v11, 0);
  result = (*(*this + 144))(this, a2, a3, MatchingChord);
  v13 = *(this + 158);
  if (v13)
  {
    if (!MatchingChord)
    {
      return result;
    }

    if (*(MatchingChord + 224) == v13)
    {
      result = MTChordGestureSet_::chordGestureSetEquals(MatchingChord, (this + 408));
      if (result)
      {
        return result;
      }
    }

    if (*(MatchingChord + 216) >= *(this + 156))
    {
      if ((*(this + 672) & 1) != 0 && ((*(this + 318) & 0x20) == 0 || ((*(MatchingChord + 228) & 2) == 0 || (*(a2 + 41) - 3000) >= 0xFFFFFC18 && *(this + 7) != 2 && *(a2 + 298) != *(a2 + 302)) && *(a2 + 1) - *(a2 + 7) >= 0.09))
      {
        return result;
      }
    }

    else if ((*(this + 672) & 1) != 0 || (*(a2 + 41) - 3000) >= 0xFFFFFC18 && *(this + 7) != 2)
    {
      v14 = *(this + 318);
      if ((v14 & 0x10) == 0 || (*(MatchingChord + 228) & 1) == 0 || (v14 & 0x80) == 0 && *(a2 + 1) - *(a2 + 16) <= *&gTimingPrefs_ * 0.5)
      {
        return result;
      }

      v15 = *(this + 85);
      if (v15)
      {
        if (*v15 != v15[1] && **v15 - 35 < 5)
        {
          return result;
        }
      }
    }
  }

  else
  {
    if (!MatchingChord)
    {
      return result;
    }

    result = MTChordGestureSet_::isChordReadyToIntegrate(MatchingChord, a2, a3);
    if (!result)
    {
      return result;
    }
  }

  v16 = *(*this + 80);

  return v16(this, a2, a3, a4, MatchingChord);
}

double MTChordCycling_::parseHandGesturesCreateHIDEvents(MTChordCycling_ *this, const MTHandStatistics_ *a2, MTHandMotion_ *a3, __IOHIDEvent *a4)
{
  (*(*this + 168))(this);
  if (*(this + 158))
  {
    MTChordIntegrating_::continueChordIntegration((this + 408), a2, a3, a4, this, result, v9, v10);

    return MTChordIntegrating_::decayMomentumFilters((this + 408), a2);
  }

  return result;
}

uint64_t MTChordCycling_::shouldBlockClicks(MTChordCycling_ *this, const MTHandStatistics_ *a2, const MTHandMotion_ *a3)
{
  v3 = *(a3 + 62);
  v4 = 0.0;
  if (v3 > 1.0)
  {
    v4 = 0.5;
    if (v3 < 100.0)
    {
      v4 = ((v3 + -1.0) / 99.0) * 0.5;
    }
  }

  v5 = *(a2 + 1);
  v6 = *(this + 158);
  if (v6)
  {
    v7 = *(this + 85);
    if (v7)
    {
      v6 = *v7 != v7[1] && **v7 == 69;
      if (*v7 != v7[1] && **v7 == 71)
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (v5 - *(this + 155) <= v4)
  {
    v6 = 1;
  }

  if (v5 - *(this + 156) <= v4)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void __cxx_global_var_init_41()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_40(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_36(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_16(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_10(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

double mtgp_InitUSBKeyNames()
{
  gUSBKeyNames = @"NULL";
  *algn_1226A8 = @"ErrorRollOver";
  qword_1226B0 = @"POSTFail";
  unk_1226B8 = @"ErrorUndefined";
  qword_1226C0 = @"A";
  unk_1226C8 = @"B";
  qword_1226D0 = @"C";
  unk_1226D8 = @"D";
  qword_1226E0 = @"E";
  unk_1226E8 = @"F";
  qword_1226F0 = @"G";
  unk_1226F8 = @"H";
  qword_122700 = @"I";
  unk_122708 = @"J";
  qword_122710 = @"K";
  unk_122718 = @"L";
  qword_122720 = @"M";
  unk_122728 = @"N";
  qword_122730 = @"O";
  unk_122738 = @"P";
  qword_122740 = @"Q";
  unk_122748 = @"R";
  qword_122750 = @"S";
  unk_122758 = @"T";
  qword_122760 = @"U";
  unk_122768 = @"V";
  qword_122770 = @"W";
  unk_122778 = @"X";
  qword_122780 = @"Y";
  unk_122788 = @"Z";
  qword_122790 = @"1";
  unk_122798 = @"2";
  qword_1227A0 = @"3";
  unk_1227A8 = @"4";
  qword_1227B0 = @"5";
  unk_1227B8 = @"6";
  qword_1227C0 = @"7";
  unk_1227C8 = @"8";
  qword_1227D0 = @"9";
  unk_1227D8 = @"0";
  qword_1227E0 = @"Enter";
  unk_1227E8 = @"Escape";
  qword_1227F0 = @"BackSpace";
  unk_1227F8 = @"Tab";
  qword_122800 = @"Space";
  unk_122808 = @"-";
  qword_122810 = @"=";
  unk_122818 = @"[";
  qword_122820 = @"]";
  unk_122828 = @"\";
  qword_122830 = @"#";
  unk_122838 = @";";
  qword_122840 = @"'";
  qword_122850 = @",";
  unk_122858 = @".";
  qword_122860 = @"/";
  unk_122868 = @"CapsLock";
  qword_122870 = @"F1";
  unk_122878 = @"F2";
  qword_122880 = @"F3";
  unk_122888 = @"F4";
  qword_122890 = @"F5";
  unk_122898 = @"F6";
  qword_1228A0 = @"F7";
  qword_1228A8 = @"F8";
  qword_1228B0 = @"F9";
  qword_1228B8 = @"F10";
  qword_1228C0 = @"F11";
  qword_1228C8 = @"F12";
  qword_1228D0 = @"PrintScreen";
  qword_1228D8 = @"ScrollLock";
  qword_1228E0 = @"Pause";
  qword_1228E8 = @"Insert";
  qword_1228F0 = @"Home";
  qword_1228F8 = @"PageUp";
  qword_122900 = @"Delete";
  qword_122908 = @"End";
  qword_122910 = @"PageDown";
  qword_122918 = @"Right";
  qword_122920 = @"Left";
  qword_122928 = @"Down";
  qword_122930 = @"Up";
  qword_122938 = @"NumLock";
  qword_122940 = @"Numpad/";
  qword_122948 = @"Numpad*";
  qword_122950 = @"Numpad-";
  qword_122958 = @"Numpad+";
  qword_122960 = @"NumpadEnter";
  qword_122968 = @"Numpad1";
  qword_122970 = @"Numpad2";
  qword_122978 = @"Numpad3";
  qword_122980 = @"Numpad4";
  qword_122988 = @"Numpad5";
  qword_122990 = @"Numpad6";
  qword_122998 = @"Numpad7";
  qword_1229A0 = @"Numpad8";
  qword_1229A8 = @"Numpad9";
  qword_1229B0 = @"Numpad0";
  qword_1229B8 = @"Numpad.";
  qword_1229C0 = @"NonUS\\|";
  qword_1229C8 = @"Application";
  qword_1229D0 = @"Power";
  qword_1229D8 = @"Keypad=";
  qword_1229E0 = @"F13";
  qword_1229E8 = @"F14";
  qword_1229F0 = @"F15";
  qword_1229F8 = @"F16";
  qword_122A00 = @"F17";
  qword_122A08 = @"F18";
  qword_122A10 = @"F19";
  qword_122A18 = @"F20";
  qword_122A20 = @"F21";
  qword_122A28 = @"F22";
  qword_122A30 = @"F23";
  qword_122A38 = @"F24";
  qword_122A40 = @"Execute";
  qword_122A48 = @"Help";
  qword_122A50 = @"Menu";
  qword_122A58 = @"Select";
  qword_122A60 = @"Stop";
  qword_122A68 = @"Again";
  qword_122A70 = @"Undo";
  qword_122A78 = @"Cut";
  qword_122A80 = @"Copy";
  qword_122A88 = @"Paste";
  qword_122A90 = @"Find";
  qword_122A98 = @"Mute";
  qword_122AA0 = @"VolumeUp";
  qword_122AA8 = @"VolumeDown";
  qword_122AB0 = @"LockingCapsLock";
  qword_122AB8 = @"LockingNumLock";
  qword_122AC0 = @"LockingScrollLock";
  qword_122AC8 = @"Keypad,";
  qword_122AD0 = @"Keypad=";
  qword_122AD8 = @"International1";
  qword_122AE0 = @"International2";
  qword_122AE8 = @"International3";
  qword_122AF0 = @"International4";
  qword_122AF8 = @"International5";
  qword_122B00 = @"International6";
  qword_122B08 = @"International7";
  qword_122B10 = @"International8";
  qword_122B18 = @"International9";
  qword_122B20 = @"LANG1";
  qword_122B28 = @"LANG2";
  qword_122B30 = @"LANG3";
  qword_122B38 = @"LANG4";
  qword_122B40 = @"LANG5";
  qword_122B48 = @"LANG6";
  qword_122B50 = @"LANG7";
  qword_122B58 = @"LANG8";
  qword_122B60 = @"LANG9";
  qword_122B68 = @"AlternateErase";
  qword_122B70 = @"SysReq_Attention";
  qword_122B78 = @"Cancel";
  qword_122B80 = @"Clear";
  qword_122B88 = @"Prior";
  qword_122B90 = @"Return";
  qword_122B98 = @"Separator";
  qword_122BA0 = @"Out";
  qword_122BA8 = @"Oper";
  qword_122BB0 = @"Clear_Again";
  qword_122BB8 = @"CrSel_Props";
  qword_122BC0 = @"ExSel";
  qword_122D98 = 0;
  result = 0.0;
  xmmword_122D78 = 0u;
  unk_122D88 = 0u;
  xmmword_122D58 = 0u;
  unk_122D68 = 0u;
  xmmword_122D38 = 0u;
  unk_122D48 = 0u;
  xmmword_122D18 = 0u;
  unk_122D28 = 0u;
  xmmword_122CF8 = 0u;
  unk_122D08 = 0u;
  xmmword_122CD8 = 0u;
  unk_122CE8 = 0u;
  xmmword_122CB8 = 0u;
  unk_122CC8 = 0u;
  xmmword_122C98 = 0u;
  unk_122CA8 = 0u;
  xmmword_122C78 = 0u;
  unk_122C88 = 0u;
  xmmword_122C58 = 0u;
  unk_122C68 = 0u;
  xmmword_122C38 = 0u;
  unk_122C48 = 0u;
  xmmword_122C18 = 0u;
  unk_122C28 = 0u;
  xmmword_122BF8 = 0u;
  unk_122C08 = 0u;
  xmmword_122BD8 = 0u;
  unk_122BE8 = 0u;
  xmmword_122BC8 = 0u;
  qword_122DA0 = @"LeftCtrl";
  qword_122DA8 = @"LeftShift";
  qword_122DB0 = @"LeftAlt";
  qword_122DB8 = @"LeftGUI";
  qword_122DC0 = @"RightCtrl";
  qword_122DC8 = @"RightShift";
  qword_122DD0 = @"RightAlt";
  qword_122DD8 = @"RightGUI";
  xmmword_122DE0 = 0u;
  xmmword_122DF0 = 0u;
  xmmword_122E00 = 0u;
  xmmword_122E10 = 0u;
  xmmword_122E20 = 0u;
  xmmword_122E30 = 0u;
  xmmword_122E40 = 0u;
  xmmword_122E50 = 0u;
  xmmword_122E60 = 0u;
  xmmword_122E70 = 0u;
  xmmword_122E80 = 0u;
  xmmword_122E90 = 0u;
  return result;
}

uint64_t MTChordCycling_::slideGestureOngoing(MTChordCycling_ *this, double a2)
{
  v2 = *(this + 158);
  if (v2)
  {
    if (*(this + 672) == 1)
    {
      LOBYTE(v2) = *(this + 675) ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL MTGestureConfig_::slideOrDragOngoing(MTGestureConfig_ *this, double a2, int a3)
{
  v6 = *(this + 7);
  if (v6 && ((*(*v6 + 40))(v6, a2) & 1) != 0)
  {
    return 1;
  }

  v8 = *(this + 9);

  return MTTapDragManager_::shouldSustainDrag(v8, a2, a3);
}

MTChordGestureSet_ *MTGestureConfig_::copyChordIntoHandTable(uint64_t a1, int a2, MTChordGestureSet_ *a3)
{
  if (a2 == 1 && (v3 = *(a1 + 56)) != 0)
  {
    return MTChordTable_::copyChordIntoTable(v3, a3);
  }

  else
  {
    return a3;
  }
}

uint64_t MTGestureConfig_::getChordTableForHand(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

void MTGestureConfig_::~MTGestureConfig_(MTGestureConfig_ *this)
{
  *this = off_109A60;
  v2 = *(this + 7);
  if (v2)
  {
    MTChordTable_::clearAllChordsInTable(v2);
    v3 = *(this + 7);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(this + 7) = 0;
    }
  }

  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 8) = 0;
  }

  std::__tree<std::__value_type<std::string,std::vector<MTActionEvent_>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent_>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent_>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(this + 8, *(this + 2));
}

{
  MTGestureConfig_::~MTGestureConfig_(this);

  operator delete();
}

void MTGestureConfig_::clearAllChords(MTGestureConfig_ *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    MTChordTable_::clearAllChordsInTable(v1);
  }
}

void MTGestureConfig_::MTGestureConfig_(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[2] = 0;
  a1[1] = a1 + 2;
  *a1 = off_109A60;
  a1[3] = 0;
  a1[5] = 0;
  a1[4] = a1 + 5;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a5;
  mtgp_InitUSBKeyNames();
  if ((a2 - 1000) <= 0x3E7)
  {
    operator new();
  }

  if ((a2 - 2000) <= 0x3E7)
  {
    operator new();
  }

  operator new();
}

void std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MTGestureMotionParams>,std::__map_value_compare<std::string,std::__value_type<std::string,MTGestureMotionParams>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTGestureMotionParams>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<MTActionEvent_>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent_>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent_>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<MTActionEvent_>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent_>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent_>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<MTActionEvent_>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MTActionEvent_>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MTActionEvent_>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MTActionEvent_>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<MTActionEvent_>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void __cxx_global_var_init_42()
{
  {
    HSUtil::Coder::_ObjectType = HSUtil::CoderKey::New("com.apple.hid.HSCoder.ObjectType", v0);
  }
}

void __cxx_global_var_init_2_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)99,(char)117,(char)114,(char)114,(char)101,(char)110,(char)116,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_currentTimestamp", a2);
  }
}

void __cxx_global_var_init_3_41(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_previousTimestamp", a2);
  }
}

void __cxx_global_var_init_4_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key = HSUtil::CoderKey::New("_tlast_release", a2);
  }
}

void __cxx_global_var_init_5_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("_tlast_activation", a2);
  }
}

void __cxx_global_var_init_6_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)101,(char)97,(char)114,(char)108,(char)105,(char)101,(char)115,(char)116,(char)78,(char)111,(char)110,(char)68,(char)105,(char)118,(char)105,(char)110,(char)103,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_earliestNonDivingTimestamp", a2);
  }
}

void __cxx_global_var_init_7_37(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)100,(char)105,(char)118,(char)105,(char)110,(char)103,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)67,(char)104,(char)97,(char)110,(char)103,(char)101,(char)84,(char)105,(char)109,(char)101,(char)115,(char)116,(char)97,(char)109,(char)112>::Key = HSUtil::CoderKey::New("_divingButtonChangeTimestamp", a2);
  }
}

void __cxx_global_var_init_8_38(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)105,(char)110>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_min", a2);
  }
}

void __cxx_global_var_init_9_18(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)77,(char)97,(char)107,(char)101,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerMakeTouch_max", a2);
  }
}

void __cxx_global_var_init_10_17(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)95,(char)116,(char)95,(char)102,(char)105,(char)110,(char)103,(char)101,(char)114,(char)66,(char)114,(char)101,(char)97,(char)107,(char)84,(char)111,(char)117,(char)99,(char)104,(char)95,(char)109,(char)97,(char)120>::Key = HSUtil::CoderKey::New("_t_fingerBreakTouch_max", a2);
  }
}

void __cxx_global_var_init_11_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)82,(char)101,(char)115,(char)101,(char)116>::Key = HSUtil::CoderKey::New("t_recentReset", a2);
  }
}

void __cxx_global_var_init_12_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)66,(char)117,(char)116,(char)116,(char)111,(char)110,(char)65,(char)99,(char)116,(char)105,(char)118,(char)105,(char)116,(char)121>::Key = HSUtil::CoderKey::New("t_recentButtonActivity", a2);
  }
}

void __cxx_global_var_init_13_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_firstFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_14_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)102,(char)105,(char)114,(char)115,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_firstFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_15_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)67,(char)108,(char)101,(char)97,(char)110,(char)83,(char)116,(char)97,(char)114,(char)116,(char)73,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101>::Key = HSUtil::CoderKey::New("t_recentFingerCleanStartInRange", a2);
  }
}

void __cxx_global_var_init_16_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_17_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)112,(char)114,(char)101,(char)118,(char)105,(char)111,(char)117,(char)115,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_previousRecentFingerTouchDown", a2);
  }
}

void __cxx_global_var_init_18_15(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)78,(char)111,(char)110,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)100,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_recentNonThumbTouchdown", a2);
  }
}

void __cxx_global_var_init_19_14(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)115,(char)116,(char)105,(char)110,(char)103,(char)84,(char)104,(char)117,(char)109,(char)98,(char)84,(char)111,(char)117,(char)99,(char)104,(char)68,(char)111,(char)119,(char)110>::Key = HSUtil::CoderKey::New("t_restingThumbTouchDown", a2);
  }
}

void __cxx_global_var_init_20_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)84,(char)119,(char)111,(char)79,(char)114,(char)77,(char)111,(char)114,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentTwoOrMoreFingersTouching", a2);
  }
}

void __cxx_global_var_init_21_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)118,(char)101,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)115,(char)84,(char)111,(char)117,(char)99,(char)104,(char)105,(char)110,(char)103>::Key = HSUtil::CoderKey::New("t_recentFiveFingersTouching", a2);
  }
}

void __cxx_global_var_init_22_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)76,(char)105,(char)102,(char)116,(char)111,(char)102,(char)102>::Key = HSUtil::CoderKey::New("t_recentFingerLiftoff", a2);
  }
}

void __cxx_global_var_init_23_13(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)105,(char)110,(char)103,(char)101,(char)114,(char)69,(char)110,(char)100>::Key = HSUtil::CoderKey::New("t_recentFingerEnd", a2);
  }
}

void __cxx_global_var_init_24_12(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)114,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109>::Key = HSUtil::CoderKey::New("t_recentScrollZoom", a2);
  }
}

void __cxx_global_var_init_25_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)119,(char)105,(char)116,(char)99,(char)104>::Key = HSUtil::CoderKey::New("t_mostRecentChordSwitch", a2);
  }
}

void __cxx_global_var_init_26_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)67,(char)104,(char)111,(char)114,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentChordSlide", a2);
  }
}

void __cxx_global_var_init_27_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)90,(char)111,(char)111,(char)109,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentScrollZoomSlide", a2);
  }
}

void __cxx_global_var_init_28_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)109,(char)111,(char)115,(char)116,(char)82,(char)101,(char)99,(char)101,(char)110,(char)116,(char)70,(char)108,(char)117,(char)105,(char)100,(char)83,(char)108,(char)105,(char)100,(char)101>::Key = HSUtil::CoderKey::New("t_mostRecentFluidSlide", a2);
  }
}

void __cxx_global_var_init_29_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)116,(char)95,(char)101,(char)120,(char)99,(char)101,(char)115,(char)115,(char)84,(char)97,(char)112,(char)77,(char)111,(char)116,(char)105,(char)111,(char)110>::Key = HSUtil::CoderKey::New("t_excessTapMotion", a2);
  }
}

void __cxx_global_var_init_30_11(uint64_t a1, const char *a2)
{
  {
    HSUtil::CoderKey::Literal<(char)114,(char)105,(char)103,(char)104,(char)116,(char)104,(char)97,(char)110,(char)100,(char)95,(char)99,(char)104,(char)111,(char)114,(char)100,(char)115>::Key = HSUtil::CoderKey::New("righthand_chords", a2);
  }
}

void sub_63CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MTTrackpadUberAlg;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_65240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTForceBehavior_::~MTForceBehavior_(&a9);

  _Unwind_Resume(a1);
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<MTHandStatistics_>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, MTHandStatistics_ *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = MTHandStatistics_::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<MTForceManagement_>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, MTForceManagement_ *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = MTForceManagement_::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

HSUtil::Encoder *HSUtil::Encoder::encodeCodable<MTPListGestureConfig_>(HSUtil::Encoder *result, const HSUtil::CoderKey *a2, MTGestureConfig_ *a3)
{
  if (!*result)
  {
    v4 = result;
    result = HSUtil::Encoder::_encodeKey(result, a2);
    if (!*v4)
    {
      result = MTGestureConfig_::encode(a3, v4);
      if (!*v4 && (result & 1) == 0)
      {
        *v4 = 10;
      }
    }
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<MTHandStatistics_>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, MTHandStatistics_ *a3)
{
  if (*result <= 4)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = result;
    v7[0] = *(result + 9);
    result = HSUtil::Decoder::_findKey(result, v7, a2);
    if (!*v6)
    {
      result = HSUtil::Decoder::_readCodable<MTHandStatistics_>(v6, v7, a3);
      if (*v6 == 3)
      {
        *v6 = 13;
      }

      else
      {
        *(v6 + 72) = v7[0];
      }
    }
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<MTPathStates_>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, MTPathStates_ *a3)
{
  if (*result <= 4)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = result;
    v7[0] = *(result + 9);
    result = HSUtil::Decoder::_findKey(result, v7, a2);
    if (!*v6)
    {
      result = HSUtil::Decoder::_readCodable<MTPathStates_>(v6, v7, a3);
      if (*v6 == 3)
      {
        *v6 = 13;
      }

      else
      {
        *(v6 + 72) = v7[0];
      }
    }
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<MTForceManagement_>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, MTForceManagement_ *a3)
{
  if (*result <= 4)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = result;
    v7[0] = *(result + 9);
    result = HSUtil::Decoder::_findKey(result, v7, a2);
    if (!*v6)
    {
      result = HSUtil::Decoder::_readCodable<MTForceManagement_>(v6, v7, a3);
      if (*v6 == 3)
      {
        *v6 = 13;
      }

      else
      {
        *(v6 + 72) = v7[0];
      }
    }
  }

  return result;
}

HSUtil::Decoder *HSUtil::Decoder::decodeCodable<MTPListGestureConfig_>(HSUtil::Decoder *result, HSUtil::CoderKey *a2, MTGestureConfig_ *a3)
{
  if (*result <= 4)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = result;
    v7[0] = *(result + 9);
    result = HSUtil::Decoder::_findKey(result, v7, a2);
    if (!*v6)
    {
      result = HSUtil::Decoder::_readCodable<MTPListGestureConfig_>(v6, v7, a3);
      if (*v6 == 3)
      {
        *v6 = 13;
      }

      else
      {
        *(v6 + 72) = v7[0];
      }
    }
  }

  return result;
}

void *std::__shared_ptr_emplace<MTSurfaceDimensions_>::__shared_ptr_emplace[abi:ne200100]<MTRect &,MTSize,std::allocator<MTSurfaceDimensions_>,0>(void *a1, float *a2, float *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_109AA8;
  MTSurfaceDimensions_::MTSurfaceDimensions_((a1 + 3), *a2, a2[1], a2[2], a2[3], *a3, a3[1]);
  return a1;
}

void std::__shared_ptr_emplace<MTSurfaceDimensions_>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_109AA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<MTPathStates_>::__shared_ptr_emplace[abi:ne200100]<MTSurfaceDimensions_ &,MTParserType &,MTParserOptions,BOOL &,int,std::allocator<MTPathStates_>,0>(void *a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned __int8 *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_109AF8;
  MTPathStates_::MTPathStates_(a1 + 3, a2, *a3, *a4, *a5, *a6);
  return a1;
}

void std::__shared_ptr_emplace<MTPathStates_>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_109AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<MTHandStatistics_>::__shared_ptr_emplace[abi:ne200100]<MTHandIdentity,char *,MTParserType &,MTParserOptions,std::allocator<MTHandStatistics_>,0>(void *a1, int *a2, uint64_t *a3, int *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_109B48;
  MTHandStatistics_::MTHandStatistics_((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<MTHandStatistics_>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_109B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<MTHandMotion_>::__shared_ptr_emplace[abi:ne200100]<MTSurfaceDimensions_ &,MTParserType &,MTParserOptions,MTHandIdentity,char const(&)[6],std::allocator<MTHandMotion_>,0>(void *a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_109B98;
  MTHandMotion_::MTHandMotion_(a1 + 3, a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<MTHandMotion_>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_109B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void std::__shared_ptr_emplace<MTPListGestureConfig_>::__shared_ptr_emplace[abi:ne200100]<MTParserType &,MTParserOptions,BOOL &,MTDragManagerEventQueue_ &,std::allocator<MTPListGestureConfig_>,0>(void *a1, int *a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_109BE8;
  MTPListGestureConfig_::MTPListGestureConfig_(a1 + 3, *a2, *a3, *a4, a5);
}

void std::__shared_ptr_emplace<MTPListGestureConfig_>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_109BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *std::__shared_ptr_emplace<MTForceManagement_>::__shared_ptr_emplace[abi:ne200100]<void({block_pointer} {__strong}&)(int,MTClickStrength,float,float),std::allocator<MTForceManagement_>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_109C38;
  MTForceManagement_::MTForceManagement_(a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<MTForceManagement_>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_109C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void MTForceManagement_::~MTForceManagement_(MTForceManagement_ *this)
{
  *this = off_109C88;

  MTForceClickHistory_::~MTForceClickHistory_((this + 520));
  v7 = (this + 472);
  std::vector<MTForceThresholding_>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 272);
  std::vector<std::vector<MTForceBehavior_>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }
}

HSUtil::Encoder *MTForceManagement_::encodeToMap(MTForceManagement_ *this, HSUtil::Encoder *a2)
{
  HSUtil::Encoder::encodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key, *(this + 3));
  v4 = HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key;
  v5 = *(this + 4);

  return HSUtil::Encoder::encodeDouble(a2, v4, v5);
}

uint64_t MTForceManagement_::decodeFromMap(MTForceManagement_ *this, HSUtil::Decoder *a2)
{
  *(this + 3) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)114,(char)101,(char)108,(char)101,(char)97,(char)115,(char)101>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Force/MTForceManagement_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTForceManagement_::decodeFromMap();
    }

    return 0;
  }

  *(this + 4) = HSUtil::Decoder::decodeDouble(a2, HSUtil::CoderKey::Literal<(char)95,(char)116,(char)108,(char)97,(char)115,(char)116,(char)95,(char)97,(char)99,(char)116,(char)105,(char)118,(char)97,(char)116,(char)105,(char)111,(char)110>::Key);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Force/MTForceManagement_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTForceManagement_::decodeFromMap();
    }

    return 0;
  }

  return 1;
}

void std::vector<MTForceThresholding_>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 60;
      v7 = v4 - 60;
      do
      {
        (**v7)(v7);
        v6 -= 60;
        v8 = v7 == v2;
        v7 -= 60;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<MTForceBehavior_>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<MTForceBehavior_>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<MTForceBehavior_>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTForceBehavior_>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTForceBehavior_>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 144)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }

    v7 = *(i - 96);
    if (v7)
    {
      *(i - 88) = v7;
      operator delete(v7);
    }

    v8 = *(i - 120);
    if (v8)
    {
      *(i - 112) = v8;
      operator delete(v8);
    }
  }

  a1[1] = v2;
}

uint64_t MTHandStatistics_::encode(MTHandStatistics_ *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  (**this)(this, a2);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

uint64_t MTForceManagement_::encode(MTForceManagement_ *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  (**this)(this, a2);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

uint64_t MTGestureConfig_::encode(MTGestureConfig_ *this, HSUtil::Encoder *a2)
{
  if (!*a2)
  {
    *&v5 = *(a2 + 17);
    DWORD2(v5) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a2 + 56, &v5);
    HSUtil::Encoder::_writeTokenValue32(a2, 0xEBu, 0);
  }

  (*(*this + 24))(this, a2);
  if (!*a2)
  {
    HSUtil::Encoder::_encodeContainerStop(a2);
  }

  return 1;
}

uint64_t HSUtil::Decoder::_readCodable<MTHandStatistics_>(uint64_t a1, unint64_t *a2, MTHandStatistics_ *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v11[1] = *(a1 + 8);
      v11[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((MTHandStatistics_::decode(a3, v11) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t MTHandStatistics_::decode(MTHandStatistics_ *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeMap(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decode();
    }
  }

  else
  {
    if ((*(*this + 8))(this, &v8))
    {
      v5 = 1;
      goto LABEL_9;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTHandStatistics_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTHandStatistics_::decode();
    }
  }

  v5 = 0;
LABEL_9:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v6 = v9;
  *&v9 = 0;
  if (v6)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v6);
    operator delete();
  }

  return v5;
}

uint64_t HSUtil::Decoder::_readCodable<MTPathStates_>(uint64_t a1, unint64_t *a2, MTPathStates_ *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v11[1] = *(a1 + 8);
      v11[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((MTPathStates_::decode(a3, v11) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t MTPathStates_::decode(MTPathStates_ *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeMap(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decode();
    }
  }

  else
  {
    if ((*(*this + 8))(this, &v8))
    {
      v5 = 1;
      goto LABEL_9;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/PathsNHands/MTPathStates_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTPathStates_::decode();
    }
  }

  v5 = 0;
LABEL_9:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v6 = v9;
  *&v9 = 0;
  if (v6)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v6);
    operator delete();
  }

  return v5;
}

uint64_t HSUtil::Decoder::_readCodable<MTForceManagement_>(uint64_t a1, unint64_t *a2, MTForceManagement_ *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v11[1] = *(a1 + 8);
      v11[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((MTForceManagement_::decode(a3, v11) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}

uint64_t MTForceManagement_::decode(MTForceManagement_ *this, HSUtil::Decoder *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v4;
  v12 = v4;
  v9 = v4;
  v10 = v4;
  v8 = v4;
  HSUtil::Decoder::decodeMap(a2, &v8);
  if (*a2)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Force/MTForceManagement_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTForceManagement_::decode();
    }
  }

  else
  {
    if ((*(*this + 8))(this, &v8))
    {
      v5 = 1;
      goto LABEL_9;
    }

    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/Parser/Force/MTForceManagement_.hpp", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTForceManagement_::decode();
    }
  }

  v5 = 0;
LABEL_9:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v6 = v9;
  *&v9 = 0;
  if (v6)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v6);
    operator delete();
  }

  return v5;
}

uint64_t HSUtil::Decoder::_readCodable<MTPListGestureConfig_>(uint64_t a1, unint64_t *a2, MTGestureConfig_ *a3)
{
  v6 = *a2;
  result = HSUtil::Decoder::_skipElement(a1, a2);
  if (!*a1)
  {
    v8 = result;
    result = HSUtil::Decoder::_loadKeyTableIfNeeded(a1, a2);
    if (!*a1)
    {
      v11[1] = *(a1 + 8);
      v11[0] = 0xAAAAAAAA00000000;
      v10 = *(a1 + 24);
      v9 = *(a1 + 32);
      v12 = 0;
      v13 = v10;
      v14 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(a1 + 40);
      v16 = *(a1 + 56) + v6;
      v17 = v8;
      v18 = 0;
      if ((MTGestureConfig_::decode(a3, v11) & 1) == 0)
      {
        *a1 = 10;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      result = v12;
      v12 = 0;
      if (result)
      {
        std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](result);
        operator delete();
      }
    }
  }

  return result;
}