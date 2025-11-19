double TFont::GetUnderlinePositionAndThickness(TFont *this)
{
  v2 = *(this + 51);
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&v11.c = v3;
  *&v11.tx = v3;
  *&v11.a = v3;
  TFont::GetScaledMatrix(this, &v11);
  v4 = (*(*v2 + 592))(v2, &v11);
  if ((*(*v2 + 600))(v2, &v11) <= 0.0)
  {
    v5 = (this + 56);
    v6 = (this + 56);
    if (!*(this + 14))
    {
      TFont::InitStrikeMetrics(this);
    }

    v7 = v6[2];
    if (!*v5)
    {
      TFont::InitStrikeMetrics(this);
      v5 = v8;
    }

    v9 = ceil(v7 + v5[3]) * 5.3636991;
    if (v4 >= 0.0)
    {
      return v9 * -0.0880554625;
    }
  }

  return v4;
}

double TStorageRange::GetWidth(TStorageRange *this, CFRange a2)
{
  __C = NAN;
  v2 = *(this + 3);
  v3 = *(v2 + 32);
  if (v3 || (v5 = *(v2 + 24)) == 0)
  {
    v4 = (v3 + 16 * *(this + 1) + 16 * a2.location);
    a2.location = 2;
  }

  else
  {
    v4 = (v5 + 8 * *(this + 1) + 8 * a2.location);
    a2.location = 1;
  }

  vDSP_sveD(v4, a2.location, &__C, a2.length);
  return __C;
}

CGFloat TComponentFont::GetUnderlinePosition(atomic_ullong *this, const CGAffineTransform *a2)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  CGFontGetUnderlinePosition();
  v5 = a2->ty + v4 * a2->d + a2->b * 0.0;

  return TSplicedFontDict::GetUnderlinePosition(this + 90, v5, a2);
}

CGFloat TSplicedFontDict::GetUnderlinePosition(atomic_ullong *this, double a2, const CGAffineTransform *a3)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"FontMetrics");
    if (Value)
    {
      v7 = Value;
      if (CFDictionaryGetCount(Value) >= 1)
      {
        v8 = CFDictionaryGetValue(v7, @"underlinePosition");
        if (v8)
        {
          return a3->ty + CFStringGetDoubleValue(v8) * a3->d + a3->b * 0.0;
        }
      }
    }
  }

  return a2;
}

CGFloat TComponentFont::GetUnderlineThickness(atomic_ullong *this, const CGAffineTransform *a2)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  CGFontGetUnderlineThickness();
  v5 = a2->ty + v4 * a2->d + a2->b * 0.0;

  return TSplicedFontDict::GetUnderlineThickness(this + 90, v5, a2);
}

CGFloat TSplicedFontDict::GetUnderlineThickness(atomic_ullong *this, double a2, const CGAffineTransform *a3)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"FontMetrics");
    if (Value)
    {
      v7 = Value;
      if (CFDictionaryGetCount(Value) >= 1)
      {
        v8 = CFDictionaryGetValue(v7, @"underlineThickness");
        if (v8)
        {
          return a3->ty + CFStringGetDoubleValue(v8) * a3->d + a3->b * 0.0;
        }
      }
    }
  }

  return a2;
}

uint64_t TRun::GetLeftWhitespaceGlyphCountAndWidth(TRun *this)
{
  v1 = MEMORY[0x1E695F060];
  if (*(this + 39))
  {
    v1 = *(this + 39);
  }

  v2 = *(this + 26);
  v3 = *(this + 27);
  v4 = v3[4];
  if (v4 || (v8 = v3[3]) == 0)
  {
    v5 = 0;
    v6 = *(this + 25);
    v7 = (v4 + 16 * v6);
  }

  else
  {
    v6 = *(this + 25);
    v7 = (v8 + 8 * v6);
    v5 = 1;
  }

  v9 = *v1;
  if (v2 < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = v3[5] + 4 * v6;
  for (i = v7; ; i += 2)
  {
    v13 = *(v11 + 4 * v10);
    if ((v13 & 0x20) == 0 && (*(v11 + 4 * v10) & 5) != 1 && ((v13 & 0x1040) == 0 || (*(this + 224) & 1) == 0))
    {
      break;
    }

    if (v5)
    {
      v15 = v7;
    }

    else
    {
      v15 = i;
    }

    v9 = v9 + *v15;
    ++v10;
    ++v7;
    if (v2 == v10)
    {
      return *(this + 26);
    }
  }

  return v10;
}

void TAttributes::SetStrokeColor(TAttributes *this, void *cf, const void *a3)
{
  if (!cf)
  {
    if (qword_1ED567C40 != -1)
    {
      dispatch_once_f(&qword_1ED567C40, 0, GetBlackColor(void)::$_0::__invoke);
    }

    v6 = qword_1ED567C38;
    v7 = this;
    goto LABEL_9;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFNullGetTypeID())
  {
    return;
  }

  if (v5 == CGColorGetTypeID())
  {
    v7 = this;
    v6 = cf;
LABEL_9:

    CGContextSetStrokeColorWithColor(v7, v6);
    return;
  }

  SetStrokeNSColor(this, cf);
}

void SetStrokeNSColor(CGContext *a1, id a2)
{
  v3 = [a2 CGColor];

  CGContextSetStrokeColorWithColor(a1, v3);
}

void TLine::DeleteRun(TLine *this, unint64_t a2)
{
  v2 = *(this + 2);
  v3 = (*(this + 3) - v2) >> 3;
  if (v3 <= a2)
  {
    goto LABEL_30;
  }

  v6 = *(*(v2 + 8 * a2) + 48);
  v8 = v6[3];
  v7 = v6[4];
  if (v3 >= 2)
  {
    v10 = v6[1];
    v9 = v6[2];
    if (v10 == *(this + 9))
    {
      if (v8)
      {
LABEL_8:
        v13 = v8[1];
        if (v10 >= v13)
        {
          v14 = v8[1];
        }

        else
        {
          v14 = v10;
        }

        v15 = v8[2] + v13;
        if (v15 <= v9 + v10)
        {
          v15 = v9 + v10;
        }

        v8[1] = v14;
        v8[2] = v15 - v14;
        goto LABEL_23;
      }

      RunWithCharIndex = TLine::FindRunWithCharIndex(this, v9 + v10, 1);
      if (RunWithCharIndex == a2)
      {
        return;
      }

      v12 = *(this + 2);
      if (RunWithCharIndex < (*(this + 3) - v12) >> 3)
      {
        v8 = *(*(v12 + 8 * RunWithCharIndex) + 48);
        goto LABEL_8;
      }

LABEL_30:
      __break(1u);
      return;
    }

    v16 = v10 - 1;
    if (!v7)
    {
      v17 = TLine::FindRunWithCharIndex(this, v10 - 1, -1);
      if (v17 == a2)
      {
        return;
      }

      v18 = *(this + 2);
      if (v17 >= (*(this + 3) - v18) >> 3)
      {
        goto LABEL_30;
      }

      v7 = *(*(v18 + 8 * v17) + 48);
    }

    v19 = *(v7 + 8);
    v20 = *(v7 + 16) + v19;
    v21 = v9 + v10;
    v22 = __OFSUB__(v9 + v10, v20);
    v23 = v9 + v10 - v20;
    if (!((v23 < 0) ^ v22 | (v23 == 0)))
    {
      if (v10 >= v19)
      {
        v24 = *(v7 + 8);
      }

      else
      {
        v24 = v10;
      }

      v25 = v21 - v24;
      v26 = [*(v7 + 216) copyWithRange:{*(v7 + 200), *(v7 + 208)}];

      *(v7 + 216) = v26;
      *(v7 + 200) = 0;
      TRun::IncrementAttachCountForChar(v7, v16, v23);
      *(v7 + 8) = v24;
      *(v7 + 16) = v25;
    }
  }

LABEL_23:
  *(this + 18) -= v6[26];
  TLine::SimpleRunDelete(this, a2);
  if (v7)
  {
    *(v7 + 24) = v8;
    if (!v8)
    {
      *(this + 12) = v7;
      *(v7 + 24) = 0;
      return;
    }
  }

  else
  {
    *(this + 11) = v8;
    if (!v8)
    {
      *(this + 12) = 0;
      return;
    }
  }

  v8[4] = v7;
}

void TDecorator::dashes(TDecorator *this, unsigned int a2, double a3)
{
  v23 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(this + 56) = v5;
  *(this + 40) = v5;
  *(this + 24) = v5;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 9) = this + 24;
  v6 = (a2 >> 8) & 7;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v18 = xmmword_1847784E8;
      v19 = unk_1847784F8;
      v8 = 4;
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_12;
      }

      v18 = xmmword_184778508;
      v19 = unk_184778518;
      v20 = xmmword_184778528;
      v8 = 6;
    }
  }

  else
  {
    if (v6 == 1)
    {
      __asm { FMOV            V0.2D, #3.0 }
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_12;
      }

      _Q0 = xmmword_184778320;
    }

    v18 = _Q0;
    v8 = 2;
  }

  std::vector<double,TInlineBufferAllocator<double,6ul>>::vector[abi:fn200100](&v21, &v18, v8);
  std::vector<double,TInlineBufferAllocator<double,6ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<double const*>,std::__wrap_iter<double const*>>(this, v21, v22, (v22 - v21) >> 3);
  std::vector<double,TInlineBufferAllocator<double,6ul>>::__destroy_vector::operator()[abi:fn200100](&v21);
LABEL_12:
  v13 = *this;
  v14 = *(this + 1) - *this;
  if (v14)
  {
    v15 = v14 >> 3;
    v16 = 1;
    do
    {
      *v13 = *v13 * a3;
      ++v13;
    }

    while (v15 > v16++);
  }
}

void TDecorationRun::DrawDecorationRun<anonymous namespace::TRunAdapter>(CGContext *,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,double)::{lambda(CGPoint,CGPoint)#1}::operator()(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = a4;
  v46[6] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 56);
  if ((**a1 & 1) == 0)
  {
    v9 = *(a1 + 8);
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    v14 = v9[5];
    v15 = v13 + a3 * v11 + *v9 * a2;
    a3 = v14 + a3 * v12 + v10 * a2;
    v6 = v13 + a5 * v11 + *v9 * a4;
    a5 = v14 + a5 * v12 + v10 * a4;
    a2 = v15;
  }

  v16 = *(a1 + 24);
  v17 = **(a1 + 16);
  v18 = *v16;
  v19 = v16[1];
  v20 = **(a1 + 32);
  v21 = **(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *v22;
  v24 = (*(v22 + 8) - *v22) >> 3;
  *v46 = *v16;
  *&v46[1] = v19;
  v44 = a2;
  v45 = a3;
  v42 = v23;
  v43 = v17;
  v41 = v24;
  v25 = *(v8 + 32) * 0.75;
  v39 = *(v8 + 32);
  v40 = v25;
  if (*(v8 + 16) == 1)
  {
    a5 = a5 - a3 * 2.0;
    a3 = a3 - a3 * 2.0;
    v45 = a3;
  }

  v33 = &v40;
  v34 = v46;
  v35 = v8;
  v36 = &v43;
  v37 = &v42;
  v38 = &v41;
  if (*v8)
  {
    if (v6 - a2 <= v25)
    {
      return;
    }

    v26 = a2 + v18;
    v27 = v19 + a3;
    v28 = v6 + v18;
    v29 = v19 + a5;
    goto LABEL_12;
  }

  *&v30 = -1;
  *(&v30 + 1) = -1;
  *&v32.c = v30;
  *&v32.tx = v30;
  *&v32.a = v30;
  CGContextGetTextMatrix(&v32, v17);
  if (v20 != v21)
  {
    v46[5] = 0;
    operator new();
  }

  if (v6 - v44 > v40)
  {
    v31 = v34[1];
    v26 = v44 + *v34;
    v27 = v45 + v31;
    v28 = v6 + *v34;
    v29 = a5 + v31;
    v17 = *v36;
    v23 = *v37;
    v24 = *v38;
LABEL_12:
    TDecorationRun::DrawLineSegment(v17, v23, *&v26, *&v28, v24);
  }
}

void TDecorationRun::CalculateGlyphIntersections(uint64_t a1, __int128 *a2, __n128 *a3, uint64_t a4, CGFloat a5, double a6)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a3[13].n128_u64[0])
  {
    v12 = *(atomic_load_explicit(&a3[3].n128_i64[1], memory_order_acquire) + 40);
    v13 = (*(a3[13].n128_u64[1] + 16) + 2 * a3[12].n128_u64[1]);
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAA00;
    *&v65[160] = v14;
    *&v65[176] = v14;
    *&v65[128] = v14;
    *&v65[144] = v14;
    *&v65[96] = v14;
    *&v65[112] = v14;
    *&v65[80] = v14;
    *&v65[48] = v14;
    *&v65[64] = v14;
    *&v65[16] = v14;
    *&v65[32] = v14;
    *v65 = v14;
    v65[0] = 0;
    v15 = a3[17].n128_u64[0];
    if (v15)
    {
      *v65 = *v15;
      memset(&v65[8], 0, 184);
      *&v65[168] = *(*v65 + 16);
      LOBYTE(v66) = 1;
    }

    memset(v75, 170, sizeof(v75));
    v16 = a3[13].n128_u64[0];
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v76 = v75;
    if (v16)
    {
      std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__vallocate[abi:fn200100](&v72, v16);
      v17 = v73;
      v18 = &v73[2 * v16];
      v19 = 32 * v16;
      v20 = MEMORY[0x1E695F058];
      do
      {
        v21 = v20[1];
        *v17 = *v20;
        v17[1] = v21;
        v17 += 2;
        v19 -= 32;
      }

      while (v19);
      v73 = v18;
      v22 = v72;
      v23 = a3[13].n128_i64[0];
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    TFont::GetBoundingBoxesForGlyphs(v12, v13, v22, v23, kCTFontOrientationDefault);
    TRun::GetPositions(a3, 0);
    v25 = a3[13].n128_i64[0];
    if (v25 >= 1)
    {
      v26 = v24;
      v27 = 0;
      v61 = *a2;
      v62 = a2[1];
      v28 = *MEMORY[0x1E695EFF8];
      v29 = *(MEMORY[0x1E695EFF8] + 8);
      v30 = *(a1 + 24);
      v31 = *(a1 + 56);
      while (1)
      {
        v32 = a3[13].n128_u64[1];
        v33 = a3[12].n128_u64[1];
        if (*(*(v32 + 16) + 2 * v33 + 2 * v27) == -1 || (*(*(v32 + 40) + 4 * v33 + 4 * v27) & 0x20) != 0)
        {
          goto LABEL_15;
        }

        if (v27 >= (v73 - v72) >> 5)
        {
          goto LABEL_78;
        }

        if (CGRectIsEmpty(v72[v27]))
        {
          goto LABEL_15;
        }

        v34 = ScriptTagForScriptCode(a3[19].n128_i32[0]);
        if (v34)
        {
          goto LABEL_20;
        }

        if (v66 == 1)
        {
          break;
        }

LABEL_23:
        v37 = (v26 + 16 * v27);
        v38 = *v37;
        v39 = v37[1];
        *&v40 = -1;
        *(&v40 + 1) = -1;
        *&v64.c = v40;
        *&v64.tx = v40;
        *&v64.a = v40;
        CGAffineTransformMakeTranslation(&v64, v38, v39);
        t1.tx = v28;
        t1.ty = v29;
        t2 = v64;
        *&t1.a = v61;
        *&t1.c = v62;
        CGAffineTransformConcat(&v71, &t1, &t2);
        v64 = v71;
        if (v27 >= (v73 - v72) >> 5)
        {
          goto LABEL_78;
        }

        v41 = v13[v27];
        v78 = v72[v27];
        t1 = v64;
        v79 = CGRectApplyAffineTransform(v78, &t1);
        v80.origin.x = v31;
        v80.origin.y = a5;
        v80.size.width = v30;
        v80.size.height = a6 - a5;
        if (!CGRectIntersectsRect(v79, v80))
        {
          goto LABEL_15;
        }

        v63 = 0xAAAAAAAAAAAAAAAALL;
        TFont::CreatePathForGlyph(v12, 0, v41, &v63);
        if (atomic_load_explicit(&v63, memory_order_acquire))
        {
          *&v42 = -1;
          *(&v42 + 1) = -1;
          *&t2.a = v42;
          *&t2.c = v42;
          *&t2.tx = v42;
          t1 = v64;
          CGAffineTransformInvert(&t2, &t1);
          memset(v69, 170, sizeof(v69));
          memset(&t1, 255, sizeof(t1));
          *&t1.a = *MEMORY[0x1E695EFF8];
          *&t1.c = *&t1.a;
          t1.tx = t2.ty + t2.d * a5 + t2.b * 0.0;
          t1.ty = t2.ty + t2.d * a6 + t2.b * 0.0;
          v69[0] = 0;
          LODWORD(v69[1]) = 0;
          memset(&v69[2], 0, 24);
          v70 = &v69[5];
          if (t1.tx > t1.ty)
          {
            t1.tx = t2.ty + t2.d * a6 + t2.b * 0.0;
            t1.ty = t2.ty + t2.d * a5 + t2.b * 0.0;
          }

          CGPathApply(atomic_load_explicit(&v63, memory_order_acquire), &t1, TDecorationRun::CalculateGlyphIntersections(CGAffineTransform,TRun const&,double,double,std::function<void ()(double,double)> const&)const::$_1::__invoke);
          v43 = v69[2];
          if (v69[2] != v69[3])
          {
            v60 = v12;
            *&v71.a = &unk_1EF2593A8;
            *&v71.b = &v64;
            *&v71.c = a4;
            *&v71.d = &v71;
            v44 = 126 - 2 * __clz((v69[3] - v69[2]) >> 4);
            if (v69[3] == v69[2])
            {
              v45 = 0;
            }

            else
            {
              v45 = v44;
            }

            v47 = v69[2];
            v46 = v69[3];
            if (v69[2] != v69[3])
            {
              v58 = v26;
              v59 = a4;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = NAN;
              v53 = NAN;
              while (1)
              {
                v54 = v48;
                v55 = *(v47 + 8);
                if (v55)
                {
                  v56 = v48;
                }

                else
                {
                  v56 = v48 + 1;
                }

                if (v55 == 2)
                {
                  --v48;
                }

                else
                {
                  v48 = v56;
                }

                if (!v54 || v48)
                {
                  if (!v54 && v48)
                  {
                    if (v50)
                    {
                      if (v49)
                      {
                        if (v51)
                        {
                          v51 = 0;
                        }

                        goto LABEL_62;
                      }

                      if ((v51 & 1) == 0)
                      {
                        goto LABEL_78;
                      }

                      std::function<void ()(double,double)>::operator()(*&v71.d, v52, v53);
                      v51 = 0;
                    }

                    v52 = *v47;
LABEL_62:
                    v50 = 1;
                    goto LABEL_63;
                  }

                  if (v55 == 1 && !v54 && !v48)
                  {
                    if (v50)
                    {
                      if (v49)
                      {
                        v53 = *v47;
                        v51 = 1;
                        goto LABEL_62;
                      }

                      if ((v51 & 1) == 0)
                      {
                        goto LABEL_78;
                      }

                      std::function<void ()(double,double)>::operator()(*&v71.d, v52, v53);
                    }

                    v53 = *v47;
                    v51 = 1;
                    v52 = *v47;
                    goto LABEL_62;
                  }
                }

                else
                {
                  v53 = *v47;
                  v51 = 1;
                }

LABEL_63:
                if ((*(v47 + 12) - 1) >= 0x40)
                {
                  v57 = 0;
                }

                else
                {
                  v57 = 1 << (*(v47 + 12) - 1);
                }

                v49 ^= v57;
                v47 += 16;
                if (v47 == v46)
                {
                  v26 = v58;
                  a4 = v59;
                  if ((v50 & 1) == 0)
                  {
                    break;
                  }

                  if (v51)
                  {
                    std::function<void ()(double,double)>::operator()(*&v71.d, v52, v53);
                    break;
                  }

LABEL_78:
                  __break(1u);
                }
              }
            }

            std::__function::__value_func<void ()(double,double)>::~__value_func[abi:fn200100](&v71);
            v43 = v69[2];
            v12 = v60;
          }

          if (v43)
          {
            v69[3] = v43;
            if (&v69[5] > v43 || &v70 <= v43)
            {
              operator delete(v43);
            }
          }
        }

LABEL_15:
        if (++v27 == v25)
        {
          goto LABEL_76;
        }
      }

      t1.a = *(*(a3[13].n128_u64[1] + 48) + 8 * a3[12].n128_u64[1] + 8 * v27);
      FullChar = TCharStreamIterator::GetFullChar(v65, &t1, 0);
      v36 = ScriptCodeForLongCharacter(FullChar);
      v34 = ScriptTagForScriptCode(v36);
LABEL_20:
      if (v34 == 1751215719 || v34 == 1751215721 || v34 == 1801547361)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_76:
    *&t1.a = &v72;
    std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](&t1);
  }
}

uint64_t TRun::IncrementAttachCountForChar(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (*(this + 208) >= 1)
  {
    v5 = this;
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2);
    v7 = [*(v5 + 216) attachmentCountAtIndex:*(v5 + 200) + GlyphIndexForChar] + a3;
    v8 = *(v5 + 200) + GlyphIndexForChar;
    v9 = *(v5 + 216);

    return [v9 setAttachmentCount:v7 atIndex:v8];
  }

  return this;
}

void anonymous namespace::PathObserver::HandleIntersectionAt(void *a1, int a2, int a3, double a4)
{
  v8 = a1[9];
  v7 = a1[10];
  if (v8 >= v7)
  {
    v10 = a1[8];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 4;
    v13 = v12 + 1;
    if ((v12 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = a1[19];
      v17 = v16 + 16 * v15;
      if (v17 > (a1 + 19))
      {
        if (!(v15 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      a1[19] = v17;
    }

    else
    {
      v16 = 0;
    }

    v18 = v12;
    v19 = v16 + 16 * v12;
    v20 = v16 + 16 * v15;
    *v19 = a4;
    *(v19 + 8) = a2;
    *(v19 + 12) = a3;
    v9 = v19 + 16;
    v21 = (v19 - 16 * v18);
    memcpy(v21, v10, v11);
    v22 = a1[8];
    a1[8] = v21;
    a1[9] = v9;
    v23 = a1[10];
    a1[10] = v20;
    if (v22)
    {
      if (a1 + 11 > v22 || (v24 = a1 + 19, a1 + 19 <= v22))
      {
        operator delete(v22);
      }

      else if (v23 == *v24)
      {
        *v24 = v22;
      }
    }
  }

  else
  {
    *v8 = a4;
    v9 = v8 + 16;
    *(v8 + 8) = a2;
    *(v8 + 12) = a3;
  }

  a1[9] = v9;
}

void TDecorationRun::CalculateGlyphIntersections(CGAffineTransform,TRun const&,double,double,std::function<void ()(double,double)> const&)const::$_1::__invoke(CGPoint *this, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *a2;
  if ((*a2 - 1) < 3)
  {
    goto LABEL_8;
  }

  if (v5 == 4)
  {
    v5 = 1;
    v4 = this;
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  if (v5)
  {
    v5 = 0;
    p_y = &this[1].y;
    y = this[1].y;
    v6 = 1;
    v14 = 1;
    v9 = y;
    goto LABEL_16;
  }

  *this = **(a2 + 8);
  v6 = 0;
  if (*(*(a2 + 8) + 8) < this[2].x + 1.0e-10)
  {
    v7 = LODWORD(this[3].x) + 1;
    LODWORD(this[3].x) = v7;
    HIDWORD(this[3].x) = v7;
    LODWORD(this[3].y) = v7;
  }

  v5 = 1;
LABEL_9:
  p_y = &this[1].y;
  v9 = this[1].y;
  v10 = v5;
  v11 = 8;
  y = v9;
  do
  {
    v13 = *(&v4->x + v11);
    if (v9 < v13)
    {
      v9 = *(&v4->x + v11);
    }

    if (v13 < y)
    {
      y = *(&v4->x + v11);
    }

    v11 += 16;
    --v10;
  }

  while (v10);
  v14 = 0;
LABEL_16:
  x = this[2].x;
  v16 = this[2].y;
  v17 = y <= x;
  if (x > v9)
  {
    v17 = 0;
  }

  v18 = v6 & v17;
  v19 = y <= v16;
  if (v16 > v9)
  {
    v19 = 0;
  }

  v20 = v6 & v19;
  p_x = &v4[v5 - 1].x;
  v22 = *p_x;
  v23 = p_x[1];
  if (x < v23 && v23 < v16)
  {
  }

  if ((v18 | v20) == 1)
  {
    *&v25 = -1;
    *(&v25 + 1) = -1;
    v51[1] = v25;
    v51[2] = v25;
    v50 = this[1];
    v51[0] = v25;
    if ((v14 & 1) == 0)
    {
      memmove(v51, v4, 16 * v5);
    }

    memset(v49, 255, sizeof(v49));
    memset(v48, 255, sizeof(v48));
    if (v18)
    {
      InterceptsAtY = GetInterceptsAtY(v5, &v50, this[2].x + 1.0e-10, v49, v48);
      if (InterceptsAtY)
      {
        v27 = InterceptsAtY;
        v28 = v48;
        v29 = v49;
        do
        {
          x_high = HIDWORD(this[3].x);
          if (x_high)
          {
            v31 = 0;
          }

          else
          {
            v31 = LODWORD(this[3].x) + 1;
            LODWORD(this[3].x) = v31;
            x_high = v31;
          }

          v32 = *v29++;
          v33 = v32;
          HIDWORD(this[3].x) = v31;
          v34 = *v28++;
          --v27;
        }

        while (v27);
      }
    }

    if (v20)
    {
      v35 = GetInterceptsAtY(v5, &v50, this[2].y + 1.0e-10, v49, v48);
      if (v35)
      {
        v36 = v35;
        v37 = v48;
        v38 = v49;
        do
        {
          v39 = *v38++;
          v40 = v39;
          v41 = *v37++;
          --v36;
        }

        while (v36);
      }
    }
  }

  if (*a2 == 4)
  {
    v42 = *MEMORY[0x1E695EFF8];
    *this = *MEMORY[0x1E695EFF8];
    this[1] = v42;
    y_low = LODWORD(this[3].y);
    if (y_low)
    {
      v44 = HIDWORD(this[3].x);
      if (y_low != v44)
      {
        v45 = this[4].y;
        while (*&v45 != *&this[4].x)
        {
          v46 = *&v45 - 16;
          v47 = *(*&v45 - 4);
          *&v45 -= 16;
          if (v47 == v44)
          {
            *(v46 + 12) = y_low;
            break;
          }
        }
      }

      HIDWORD(this[3].x) = 0;
      LODWORD(this[3].y) = 0;
    }
  }

  else
  {
    this[1].x = v22;
    *p_y = v23;
  }
}

__n128 anonymous namespace::PathObserver::CleanUpAfterUnclosedSubpath(_anonymous_namespace_::PathObserver *this)
{
  v1 = *(this + 14);
  if (*(this + 52))
  {
    v2 = *(this + 8);
    v3 = *(this + 9);
    while (v2 != v3)
    {
      v4 = *(v2 + 12);
      if (v4 && (v4 == v1 || v4 == *(this + 13)))
      {
        *(v2 + 12) = 0;
      }

      v2 += 16;
    }

    *(this + 13) = 0;
    *(this + 14) = 0;
  }

  result = *MEMORY[0x1E695EFF8];
  *this = *MEMORY[0x1E695EFF8];
  *(this + 1) = result;
  return result;
}

uint64_t GetInterceptsAtY(int a1, const CGPoint *a2, double a3, double *a4, double *a5)
{
  v56 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 3:
      y = a2->y;
      v26 = a2[1].y;
      v27 = a2[2].y;
      v28 = v27 * -3.0 - (y - v26 * 3.0) + a2[3].y;
      v29 = v26 * -6.0 + y * 3.0 + v27 * 3.0;
      v30 = v26 * 3.0 + y * -3.0;
      v31 = y - a3;
      v54 = NAN;
      v55 = NAN;
      v53 = NAN;
      if (fabs(v28) >= 1.0e-10)
      {
        v33 = v29 / v28;
        v34 = (v30 / v28 * -3.0 + v33 * v33) / 9.0;
        v35 = (v30 / v28 * (v29 / v28 * -9.0) + v33 * (v33 + v33) * v33 + v31 / v28 * 27.0) / 54.0;
        v36 = v34 * -(v34 * v34) + v35 * v35;
        if (v36 >= 0.0)
        {
          v41 = sqrt(v36);
          v42 = cbrt(v41 - v35);
          v53 = v42 + cbrt(-v35 - v41) + v33 / -3.0;
          v32 = 1;
        }

        else
        {
          v37 = pow(v34, 1.5);
          v38 = acos(v35 / v37);
          v39 = sqrt(v34) * -2.0;
          v40 = v33 / -3.0;
          v53 = v40 + v39 * cos(v38 / 3.0);
          v54 = v40 + v39 * cos((v38 + 6.28318531) / 3.0);
          v55 = v40 + v39 * cos((v38 + -6.28318531) / 3.0);
          std::__sort<std::__less<double,double> &,double *>();
          v32 = 3;
        }
      }

      else
      {
        v32 = SolveQuadratic(v29, v30, v31, &v53);
        if (!v32)
        {
          return 0;
        }
      }

      v12 = 0;
      v43 = v32;
      v44 = &v53;
      do
      {
        v45 = *v44;
        if (*v44 >= 0.0 && v45 <= 1.0)
        {
          EvalBezierCurve(v45, 3u, a2);
          a4[v12] = v47;
          if (a5)
          {
            v48 = *v44;
            EvalBezierCurve(*v44, 2u, a2);
            v50 = v49;
            EvalBezierCurve(v48, 2u, a2 + 1);
            a5[v12] = (v51 - v50) * 3.0;
          }

          v12 = (v12 + 1);
        }

        ++v44;
        --v43;
      }

      while (v43);
      break;
    case 2:
      v13 = a2->y;
      v14 = a2[1].y;
      v15 = v13 + v14 * -2.0 + a2[2].y;
      v53 = NAN;
      v54 = NAN;
      v16 = SolveQuadratic(v15, v14 + v14 + v13 * -2.0, v13 - a3, &v53);
      v12 = 0;
      if (v16)
      {
        v17 = v16;
        v18 = &v53;
        do
        {
          v19 = *v18;
          if (*v18 >= 0.0 && v19 <= 1.0)
          {
            EvalBezierCurve(*v18, 2u, a2);
            a4[v12] = v21;
            if (a5)
            {
              EvalBezierCurve(v19, 1u, a2);
              v23 = v22;
              EvalBezierCurve(v19, 1u, a2 + 1);
              a5[v12] = v24 - v23 + v24 - v23;
            }

            v12 = (v12 + 1);
          }

          ++v18;
          --v17;
        }

        while (v17);
      }

      break;
    case 1:
      v8 = a2->y;
      v9 = a2[1].y;
      if ((v8 >= a3 || v9 <= a3) && (v8 <= a3 || v9 >= a3))
      {
        return 0;
      }

      *a4 = a2->x + (a3 - v8) * (a2[1].x - a2->x) / (v9 - v8);
      if (a5)
      {
        *a5 = v9 - v8;
      }

      return 1;
    default:
      return 0;
  }

  return v12;
}

uint64_t std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::PathObserver::Intersection *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a3;
  v12 = *a4 < *a3;
  if (*a4 == *a3 && (v13 = *(a4 + 8), v14 = *(a3 + 8), v15 = v13 == v14, v12 = v13 < v14, v15))
  {
    v16 = *(a3 + 12);
    if (*(a4 + 12) >= v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = *(a3 + 8);
    v16 = *(a3 + 12);
  }

  *a3 = *a4;
  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 12) = v16;
  v17 = *a2;
  v18 = *a3 < *a2;
  if (*a3 == *a2 && (v19 = *(a3 + 8), v20 = *(a2 + 8), v15 = v19 == v20, v18 = v19 < v20, v15))
  {
    v21 = *(a2 + 12);
    if (*(a3 + 12) >= v21)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = *(a2 + 8);
    v21 = *(a2 + 12);
  }

  *a2 = *a3;
  *a3 = v17;
  *(a3 + 8) = v19;
  *(a3 + 12) = v21;
  v22 = *a1;
  v23 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v24 = *(a2 + 8);
    v25 = *(a1 + 8);
    v15 = v24 == v25;
    v23 = v24 < v25;
    if (v15)
    {
      v26 = *(a1 + 12);
      if (*(a2 + 12) >= v26)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  if (v23)
  {
    v24 = *(a1 + 8);
    v26 = *(a1 + 12);
LABEL_22:
    *a1 = *a2;
    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 12) = v26;
  }

LABEL_23:
  v27 = *a4;
  v28 = *a5 < *a4;
  if (*a5 == *a4 && (v29 = *(a5 + 8), v30 = *(a4 + 8), v15 = v29 == v30, v28 = v29 < v30, v15))
  {
    v31 = *(a4 + 12);
    if (*(a5 + 12) >= v31)
    {
      return result;
    }
  }

  else
  {
    if (!v28)
    {
      return result;
    }

    v29 = *(a4 + 8);
    v31 = *(a4 + 12);
  }

  *a4 = *a5;
  *a5 = v27;
  *(a5 + 8) = v29;
  *(a5 + 12) = v31;
  v32 = *a3;
  v33 = *a4 < *a3;
  if (*a4 == *a3 && (v34 = *(a4 + 8), v35 = *(a3 + 8), v15 = v34 == v35, v33 = v34 < v35, v15))
  {
    v36 = *(a3 + 12);
    if (*(a4 + 12) >= v36)
    {
      return result;
    }
  }

  else
  {
    if (!v33)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v36 = *(a3 + 12);
  }

  *a3 = *a4;
  *a4 = v32;
  *(a4 + 8) = v34;
  *(a4 + 12) = v36;
  v37 = *a2;
  v38 = *a3 < *a2;
  if (*a3 == *a2 && (v39 = *(a3 + 8), v40 = *(a2 + 8), v15 = v39 == v40, v38 = v39 < v40, v15))
  {
    v41 = *(a2 + 12);
    if (*(a3 + 12) >= v41)
    {
      return result;
    }
  }

  else
  {
    if (!v38)
    {
      return result;
    }

    v39 = *(a2 + 8);
    v41 = *(a2 + 12);
  }

  *a2 = *a3;
  *a3 = v37;
  *(a3 + 8) = v39;
  *(a3 + 12) = v41;
  v42 = *a1;
  v43 = *a2 < *a1;
  if (*a2 != *a1 || (v44 = *(a2 + 8), v45 = *(a1 + 8), v15 = v44 == v45, v43 = v44 < v45, !v15))
  {
    if (!v43)
    {
      return result;
    }

    v44 = *(a1 + 8);
    v46 = *(a1 + 12);
    goto LABEL_51;
  }

  v46 = *(a1 + 12);
  if (*(a2 + 12) < v46)
  {
LABEL_51:
    *a1 = *a2;
    *a2 = v42;
    *(a2 + 8) = v44;
    *(a2 + 12) = v46;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::PathObserver::Intersection *,false>(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 2;
    i = v7;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v7 = i;
          v10 = (a2 - i) >> 4;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

              case 4:
                v59 = *(a2 - 2);
                v60 = *(i + 32);
                v61 = v59 < v60;
                if (v59 == v60 && (v62 = *(a2 - 2), v63 = *(i + 40), v66 = v62 == v63, v61 = v62 < v63, v66))
                {
                  v64 = *(i + 44);
                  if (*(a2 - 1) >= v64)
                  {
                    return result;
                  }
                }

                else
                {
                  if (!v61)
                  {
                    return result;
                  }

                  v62 = *(i + 40);
                  v64 = *(i + 44);
                }

                *(i + 32) = *(a2 - 1);
                *(a2 - 2) = v60;
                *(a2 - 2) = v62;
                *(a2 - 1) = v64;
                v132 = *(i + 32);
                v16 = *(i + 16);
                LODWORD(v13) = v132 < v16;
                if (v132 != v16)
                {
                  goto LABEL_291;
                }

                v133 = *(i + 40);
                v134 = *(i + 24);
                v66 = v133 == v134;
                LODWORD(v13) = v133 < v134;
                if (!v66)
                {
                  goto LABEL_291;
                }

                v135 = *(i + 28);
                if (*(i + 44) >= v135)
                {
                  return result;
                }

LABEL_293:
                *(v7 + 16) = *(v7 + 32);
                *(v7 + 32) = v16;
                *(v7 + 40) = v133;
                *(v7 + 44) = v135;
                v149 = *(v7 + 16);
                v150 = *v7;
                v151 = v149 < *v7;
                if (v149 == *v7 && (v152 = *(v7 + 24), v153 = *(v7 + 8), v66 = v152 == v153, v151 = v152 < v153, v66))
                {
                  v154 = *(v7 + 12);
                  if (*(v7 + 28) >= v154)
                  {
                    return result;
                  }
                }

                else
                {
                  if (!v151)
                  {
                    return result;
                  }

                  v152 = *(v7 + 8);
                  v154 = *(v7 + 12);
                }

                *v7 = *(v7 + 16);
                *(v7 + 16) = v150;
                *(v7 + 24) = v152;
                *(v7 + 28) = v154;
                return result;
              case 5:
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v53 = *(a2 - 2);
              v54 = *i;
              v55 = v53 < *i;
              if (v53 == *i && (v56 = *(a2 - 2), v57 = *(i + 8), v66 = v56 == v57, v55 = v56 < v57, v66))
              {
                v58 = *(i + 12);
                if (*(a2 - 1) >= v58)
                {
                  return result;
                }
              }

              else
              {
                if (!v55)
                {
                  return result;
                }

                v56 = *(i + 8);
                v58 = *(i + 12);
              }

              *i = *(a2 - 1);
              *(a2 - 2) = v54;
              *(a2 - 2) = v56;
              *(a2 - 1) = v58;
              return result;
            }
          }

          if (v10 <= 23)
          {
            v65 = (i + 16);
            v66 = i == a2 || v65 == a2;
            v67 = v66;
            if ((a4 & 1) == 0)
            {
              if (v67)
              {
                return result;
              }

              v136 = 0;
              v137 = 16;
              v13 = i;
              while (1)
              {
                v138 = v136;
                v136 = v137;
                v16 = *v65;
                v139 = *v65 < *v13;
                if (*v65 == *v13)
                {
                  v140 = *(v13 + 24);
                  v141 = *(v13 + 8);
                  v66 = v140 == v141;
                  v139 = v140 < v141;
                  if (v66)
                  {
                    break;
                  }
                }

                if (v139)
                {
                  v140 = *(v13 + 24);
                  v142 = *(v13 + 28);
LABEL_278:
                  v143 = 0;
                  *v65 = *(i + v138);
                  while (1)
                  {
                    v144 = (v13 + v143);
                    v145 = *(v13 + v143 - 16);
                    v146 = v16 < v145;
                    if (v16 == v145 && (v147 = *(v144 - 2), v66 = v140 == v147, v146 = v140 < v147, v66))
                    {
                      if (v142 >= *(v13 + v143 - 4))
                      {
                        goto LABEL_287;
                      }
                    }

                    else if (!v146)
                    {
LABEL_287:
                      v148 = v13 + v143;
                      *v148 = v16;
                      *(v148 + 8) = v140;
                      *(v148 + 12) = v142;
                      break;
                    }

                    *v144 = *(v13 + v143 - 16);
                    v143 -= 16;
                    if (!(v136 + v143))
                    {
                      goto LABEL_290;
                    }
                  }
                }

LABEL_288:
                v13 += 16;
                v137 = v136 + 16;
                v65 = (i + v136 + 16);
                if (v65 == a2)
                {
                  return result;
                }
              }

              v142 = *(v13 + 28);
              if (v142 >= *(v13 + 12))
              {
                goto LABEL_288;
              }

              goto LABEL_278;
            }

            if (v67)
            {
              return result;
            }

            v68 = 0;
            v69 = i;
LABEL_169:
            v70 = v69;
            v69 = v65;
            v71 = v70[2];
            v72 = v71 < *v70;
            if (v71 == *v70 && (v73 = *(v70 + 6), v74 = *(v70 + 2), v66 = v73 == v74, v72 = v73 < v74, v66))
            {
              v75 = *(v70 + 7);
              if (v75 >= *(v70 + 3))
              {
                goto LABEL_188;
              }
            }

            else
            {
              if (!v72)
              {
                goto LABEL_188;
              }

              v73 = *(v70 + 6);
              v75 = *(v70 + 7);
            }

            *v69 = *v70;
            v76 = i;
            if (v70 == i)
            {
              goto LABEL_187;
            }

            v77 = v68;
            while (1)
            {
              v78 = (i + v77);
              v79 = *(i + v77 - 16);
              v80 = v71 < v79;
              if (v71 == v79 && (v81 = *(v78 - 2), v66 = v73 == v81, v80 = v73 < v81, v66))
              {
                if (v75 >= *(i + v77 - 4))
                {
                  v76 = v70;
                  goto LABEL_187;
                }
              }

              else if (!v80)
              {
                v76 = i + v77;
LABEL_187:
                *v76 = v71;
                *(v76 + 8) = v73;
                *(v76 + 12) = v75;
LABEL_188:
                v65 = v69 + 2;
                v68 += 16;
                if (v69 + 2 == a2)
                {
                  return result;
                }

                goto LABEL_169;
              }

              v70 -= 2;
              *v78 = *(i + v77 - 16);
              v77 -= 16;
              if (!v77)
              {
                v76 = i;
                goto LABEL_187;
              }
            }
          }

          if (!a3)
          {
            if (i == a2)
            {
              return result;
            }

            v82 = (v10 - 2) >> 1;
            v83 = v82;
            while (1)
            {
              v84 = v83;
              if (v82 < v83)
              {
                goto LABEL_226;
              }

              v85 = (2 * v83) | 1;
              v86 = i + 16 * v85;
              if (2 * v84 + 2 < v10)
              {
                v87 = *(v86 + 16);
                v88 = *v86 < v87;
                if (*v86 == v87)
                {
                  v89 = *(v86 + 8);
                  v90 = *(v86 + 24);
                  v66 = v89 == v90;
                  v88 = v89 < v90;
                  if (v66)
                  {
                    if (*(v86 + 12) >= *(v86 + 28))
                    {
                      goto LABEL_201;
                    }

LABEL_200:
                    v86 += 16;
                    v85 = 2 * v84 + 2;
                    goto LABEL_201;
                  }
                }

                if (v88)
                {
                  goto LABEL_200;
                }
              }

LABEL_201:
              v91 = i + 16 * v84;
              v92 = *v91;
              v93 = *v86 < *v91;
              if (*v86 == *v91 && (v94 = *(v86 + 8), v95 = *(v91 + 8), v66 = v94 == v95, v93 = v94 < v95, v66))
              {
                v96 = *(v91 + 12);
                if (*(v86 + 12) >= v96)
                {
                  goto LABEL_208;
                }
              }

              else if (!v93)
              {
                v94 = *(v91 + 8);
                v96 = *(v91 + 12);
LABEL_208:
                *v91 = *v86;
                if (v82 < v85)
                {
LABEL_209:
                  v97 = v86;
LABEL_225:
                  *v97 = v92;
                  *(v97 + 8) = v94;
                  *(v97 + 12) = v96;
                  goto LABEL_226;
                }

                while (2)
                {
                  v98 = 2 * v85;
                  v85 = (2 * v85) | 1;
                  v97 = i + 16 * v85;
                  v99 = v98 + 2;
                  if (v99 < v10)
                  {
                    v100 = *(v97 + 16);
                    v101 = *v97 < v100;
                    if (*v97 == v100 && (v102 = *(v97 + 8), v103 = *(v97 + 24), v66 = v102 == v103, v101 = v102 < v103, v66))
                    {
                      if (*(v97 + 12) < *(v97 + 28))
                      {
                        goto LABEL_217;
                      }
                    }

                    else if (v101)
                    {
LABEL_217:
                      v97 += 16;
                      v85 = v99;
                    }
                  }

                  v104 = *v97 < v92;
                  if (*v97 == v92 && (v105 = *(v97 + 8), v66 = v105 == v94, v104 = v105 < v94, v66))
                  {
                    if (*(v97 + 12) < v96)
                    {
                      goto LABEL_209;
                    }
                  }

                  else if (v104)
                  {
                    goto LABEL_209;
                  }

                  *v86 = *v97;
                  v86 = v97;
                  if (v82 < v85)
                  {
                    goto LABEL_225;
                  }

                  continue;
                }
              }

LABEL_226:
              v83 = v84 - 1;
              if (!v84)
              {
                while (1)
                {
                  v106 = 0;
                  v107 = a2;
                  v108 = *i;
                  v109 = *(i + 8);
                  v110 = *(i + 12);
                  v111 = i;
                  do
                  {
                    v112 = v111;
                    result = v111 + 16 * v106;
                    v111 = result + 16;
                    v113 = 2 * v106;
                    v106 = (2 * v106) | 1;
                    v114 = v113 + 2;
                    if (v114 >= v10)
                    {
                      goto LABEL_236;
                    }

                    v115 = result + 32;
                    v116 = *(result + 32);
                    v117 = *(result + 16);
                    v118 = v117 < v116;
                    if (v117 != v116 || (v119 = *(result + 24), v120 = *(result + 40), v66 = v119 == v120, v118 = v119 < v120, !v66))
                    {
                      if (!v118)
                      {
                        goto LABEL_236;
                      }

LABEL_235:
                      v111 = v115;
                      v106 = v114;
                      goto LABEL_236;
                    }

                    v121 = *(result + 28);
                    result = *(result + 44);
                    if (v121 < result)
                    {
                      goto LABEL_235;
                    }

LABEL_236:
                    *v112 = *v111;
                  }

                  while (v106 <= ((v10 - 2) >> 1));
                  a2 -= 2;
                  if (v111 == v107 - 2)
                  {
                    goto LABEL_255;
                  }

                  *v111 = *a2;
                  *(v107 - 2) = v108;
                  *(v107 - 2) = v109;
                  *(v107 - 1) = v110;
                  v122 = (v111 - i + 16) >> 4;
                  v123 = v122 - 2;
                  if (v122 < 2)
                  {
                    goto LABEL_256;
                  }

                  v124 = v123 >> 1;
                  v125 = i + 16 * (v123 >> 1);
                  v108 = *v111;
                  v126 = *v125 < *v111;
                  if (*v125 == *v111)
                  {
                    v109 = *(v125 + 8);
                    v127 = *(v111 + 8);
                    v66 = v109 == v127;
                    v126 = v109 < v127;
                    if (v66)
                    {
                      v110 = *(v111 + 12);
                      if (*(v125 + 12) >= v110)
                      {
                        goto LABEL_256;
                      }

LABEL_246:
                      *v111 = *v125;
                      if (v123 >= 2)
                      {
                        do
                        {
                          v128 = v124 - 1;
                          v124 = (v124 - 1) >> 1;
                          v111 = i + 16 * v124;
                          v129 = *v111 < v108;
                          if (*v111 == v108 && (v130 = *(v111 + 8), v66 = v130 == v109, v129 = v130 < v109, v66))
                          {
                            if (*(v111 + 12) >= v110)
                            {
                              goto LABEL_247;
                            }
                          }

                          else if (!v129)
                          {
                            goto LABEL_247;
                          }

                          *v125 = *v111;
                          v125 = i + 16 * v124;
                        }

                        while (v128 > 1);
                      }

                      else
                      {
LABEL_247:
                        v111 = v125;
                      }

LABEL_255:
                      *v111 = v108;
                      *(v111 + 8) = v109;
                      *(v111 + 12) = v110;
                      goto LABEL_256;
                    }
                  }

                  if (v126)
                  {
                    v109 = *(v111 + 8);
                    v110 = *(v111 + 12);
                    goto LABEL_246;
                  }

LABEL_256:
                  if (v10-- <= 2)
                  {
                    return result;
                  }
                }
              }
            }
          }

          v11 = v10 >> 1;
          v12 = i + 16 * (v10 >> 1);
          if (v10 < 0x81)
          {
          }

          else
          {
            v14 = *v7;
            v15 = *(v7 + 8);
            *v7 = *v12;
            *v12 = v14;
            *(v12 + 8) = v15;
          }

          --a3;
          v16 = *v7;
          if (a4)
          {
            goto LABEL_22;
          }

          v17 = *(v7 - 16);
          LODWORD(v13) = v17 < v16;
          if (v17 != v16 || (v18 = *(v7 - 8), v19 = *(v7 + 8), v66 = v18 == v19, LODWORD(v13) = v18 < v19, !v66))
          {
            if (v13)
            {
              goto LABEL_22;
            }

            v18 = *(v7 + 8);
            LODWORD(v13) = *(v7 + 12);
LABEL_83:
            v38 = v16 < *v8;
            if (v16 == *v8 && (v39 = *(a2 - 2), v66 = v18 == v39, v38 = v18 < v39, v66))
            {
              if (v13 < *(a2 - 1))
              {
LABEL_97:
                for (i = v7 + 16; ; i += 16)
                {
                  if (i == a2)
                  {
                    goto LABEL_290;
                  }

                  v42 = v16 < *i;
                  if (v16 == *i && (v43 = *(i + 8), v66 = v18 == v43, v42 = v18 < v43, v66))
                  {
                    if (v13 < *(i + 12))
                    {
                      goto LABEL_106;
                    }
                  }

                  else if (v42)
                  {
                    goto LABEL_106;
                  }
                }
              }
            }

            else if (v38)
            {
              goto LABEL_97;
            }

            for (i = v7 + 16; i < a2; i += 16)
            {
              v40 = v16 < *i;
              if (v16 == *i && (v41 = *(i + 8), v66 = v18 == v41, v40 = v18 < v41, v66))
              {
                if (v13 < *(i + 12))
                {
                  break;
                }
              }

              else if (v40)
              {
                break;
              }
            }

LABEL_106:
            v44 = a2;
            if (i < a2)
            {
              v44 = a2 - 2;
              if (a2 == v7)
              {
                goto LABEL_290;
              }

              while (1)
              {
                v45 = v16 < *v44;
                if (v16 == *v44 && (v46 = *(v44 + 2), v66 = v18 == v46, v45 = v18 < v46, v66))
                {
                  if (v13 >= *(v44 + 3))
                  {
                    break;
                  }
                }

                else if (!v45)
                {
                  break;
                }

                v66 = v44 == v7;
                v44 -= 2;
                if (v66)
                {
                  goto LABEL_290;
                }
              }
            }

            if (i >= v44)
            {
LABEL_139:
              if (i - 16 != v7)
              {
                *v7 = *(i - 16);
              }

              a4 = 0;
              *(i - 16) = v16;
              *(i - 8) = v18;
              *(i - 4) = v13;
              continue;
            }

            v47 = *i;
LABEL_119:
            v48 = *(i + 8);
            *i = *v44;
            *v44 = v47;
            *(v44 + 1) = v48;
            while (1)
            {
              i += 16;
              if (i == a2)
              {
                goto LABEL_290;
              }

              v47 = *i;
              v49 = v16 < *i;
              if (v16 == *i && (v50 = *(i + 8), v66 = v18 == v50, v49 = v18 < v50, v66))
              {
                if (v13 < *(i + 12))
                {
                  goto LABEL_127;
                }
              }

              else if (v49)
              {
LABEL_127:
                if (v44 == v7)
                {
                  goto LABEL_290;
                }

                v44 -= 2;
                while (1)
                {
                  v51 = v16 < *v44;
                  if (v16 == *v44 && (v52 = *(v44 + 2), v66 = v18 == v52, v51 = v18 < v52, v66))
                  {
                    if (v13 >= *(v44 + 3))
                    {
                      goto LABEL_138;
                    }
                  }

                  else if (!v51)
                  {
LABEL_138:
                    if (i >= v44)
                    {
                      goto LABEL_139;
                    }

                    goto LABEL_119;
                  }

                  v66 = v44 == v7;
                  v44 -= 2;
                  if (v66)
                  {
                    goto LABEL_290;
                  }
                }
              }
            }
          }

          break;
        }

        LODWORD(v13) = *(v7 + 12);
        if (*(v7 - 4) >= v13)
        {
          goto LABEL_83;
        }

LABEL_22:
        if ((v7 + 16) == a2)
        {
          goto LABEL_290;
        }

        v20 = 0;
        v21 = *(v7 + 8);
        LODWORD(v13) = *(v7 + 12);
        while (1)
        {
          v22 = *(v7 + v20 + 16);
          v23 = v22 < v16;
          if (v22 == v16)
          {
            v24 = *(v7 + v20 + 24);
            v66 = v24 == v21;
            v23 = v24 < v21;
            if (v66)
            {
              if (*(v7 + v20 + 28) >= v13)
              {
                break;
              }

              goto LABEL_30;
            }
          }

          if (!v23)
          {
            break;
          }

LABEL_30:
          v20 += 16;
          if ((v7 + v20 + 16) == a2)
          {
            goto LABEL_290;
          }
        }

        v25 = v7 + v20 + 16;
        if (v20)
        {
          j = a2 - 2;
          if (a2 != v7)
          {
            do
            {
              v27 = *j < v16;
              if (*j == v16 && (v28 = *(j + 2), v66 = v28 == v21, v27 = v28 < v21, v66))
              {
                if (*(j + 3) < v13)
                {
                  goto LABEL_54;
                }
              }

              else if (v27)
              {
                goto LABEL_54;
              }

              v66 = j == v7;
              j -= 2;
            }

            while (!v66);
          }

LABEL_290:
          __break(1u);
LABEL_291:
          if (!v13)
          {
            return result;
          }

          v133 = *(v7 + 24);
          v135 = *(v7 + 28);
          goto LABEL_293;
        }

        j = a2;
        if (v25 < a2)
        {
          for (j = a2 - 2; ; j -= 2)
          {
            v29 = *j < v16;
            if (*j == v16 && (v30 = *(j + 2), v66 = v30 == v21, v29 = v30 < v21, v66))
            {
              if (v25 >= j || *(j + 3) < v13)
              {
                break;
              }
            }

            else if (v25 >= j || v29)
            {
              break;
            }
          }
        }

LABEL_54:
        i = v25;
        if (v25 >= j)
        {
          goto LABEL_76;
        }

        v31 = j;
        while (2)
        {
          v32 = *(i + 8);
          *i = *v31;
          *v31 = v22;
          *(v31 + 8) = v32;
          do
          {
            while (1)
            {
              i += 16;
              if (i == a2)
              {
                goto LABEL_290;
              }

              v22 = *i;
              v33 = *i < v16;
              if (*i != v16)
              {
                break;
              }

              v34 = *(i + 8);
              v66 = v34 == v21;
              v33 = v34 < v21;
              if (!v66)
              {
                break;
              }

              if (*(i + 12) >= v13)
              {
                goto LABEL_64;
              }
            }
          }

          while (v33);
LABEL_64:
          if (v31 == v7)
          {
            goto LABEL_290;
          }

          v31 -= 16;
          while (2)
          {
            v35 = *v31 < v16;
            if (*v31 == v16)
            {
              v36 = *(v31 + 8);
              v66 = v36 == v21;
              v35 = v36 < v21;
              if (v66)
              {
                if (*(v31 + 12) < v13)
                {
                  break;
                }

                goto LABEL_72;
              }
            }

            if (!v35)
            {
LABEL_72:
              v66 = v31 == v7;
              v31 -= 16;
              if (v66)
              {
                goto LABEL_290;
              }

              continue;
            }

            break;
          }

          if (i < v31)
          {
            continue;
          }

          break;
        }

LABEL_76:
        if (i - 16 != v7)
        {
          *v7 = *(i - 16);
        }

        *(i - 16) = v16;
        *(i - 8) = v21;
        *(i - 4) = v13;
        if (v25 < j)
        {
LABEL_81:
          a4 = 0;
          continue;
        }

        break;
      }

      if (!result)
      {
        if (!v37)
        {
          goto LABEL_81;
        }

        continue;
      }

      break;
    }

    a2 = (i - 16);
    if (!v37)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::PathObserver::Intersection *,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a2 < *result;
  if (*a2 != *result || (v6 = *(a2 + 8), v7 = *(result + 8), v8 = v6 == v7, v5 = v6 < v7, !v8))
  {
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_5:
    v9 = *a3 < v3;
    if (*a3 == v3 && (v10 = *(a3 + 8), v11 = *(a2 + 8), v8 = v10 == v11, v9 = v10 < v11, v8))
    {
      v12 = *(a2 + 12);
      if (*(a3 + 12) >= v12)
      {
        return result;
      }
    }

    else
    {
      if (!v9)
      {
        return result;
      }

      v10 = *(a2 + 8);
      v12 = *(a2 + 12);
    }

    *a2 = *a3;
    *a3 = v3;
    *(a3 + 8) = v10;
    *(a3 + 12) = v12;
    v20 = *result;
    v21 = *a2 < *result;
    if (*a2 == *result && (v22 = *(a2 + 8), v23 = *(result + 8), v8 = v22 == v23, v21 = v22 < v23, v8))
    {
      v24 = *(result + 12);
      if (*(a2 + 12) >= v24)
      {
        return result;
      }
    }

    else
    {
      if (!v21)
      {
        return result;
      }

      v22 = *(result + 8);
      v24 = *(result + 12);
    }

    *result = *a2;
    *a2 = v20;
    *(a2 + 8) = v22;
    *(a2 + 12) = v24;
    return result;
  }

  if (*(a2 + 12) >= *(result + 12))
  {
    goto LABEL_5;
  }

LABEL_11:
  v13 = *a3 < v3;
  if (*a3 == v3 && (v14 = *(a3 + 8), v15 = *(a2 + 8), v8 = v14 == v15, v13 = v14 < v15, v8))
  {
    if (*(a3 + 12) < *(a2 + 12))
    {
LABEL_28:
      v25 = *(result + 8);
      *result = *a3;
      *a3 = v4;
      *(a3 + 8) = v25;
      return result;
    }
  }

  else if (v13)
  {
    goto LABEL_28;
  }

  v16 = *(result + 8);
  v17 = *(result + 12);
  *result = *a2;
  *a2 = v4;
  *(a2 + 8) = v16;
  *(a2 + 12) = v17;
  v18 = *a3 < v4;
  if (*a3 == v4 && (v19 = *(a3 + 8), v8 = v19 == v16, v18 = v19 < v16, v8))
  {
    if (*(a3 + 12) < v17)
    {
      goto LABEL_30;
    }
  }

  else if (v18)
  {
LABEL_30:
    *a2 = *a3;
    *a3 = v4;
    *(a3 + 8) = v16;
    *(a3 + 12) = v17;
  }

  return result;
}

uint64_t std::function<void ()(double,double)>::operator()(uint64_t a1, double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:fn200100]();
}

double std::__function::__func<void TDecorationRun::DrawLine<anonymous namespace::TRunAdapter>(CGContext *,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1},std::allocator<void TDecorationRun::DrawLine<anonymous namespace::TRunAdapter>(CGContext *,CGPoint,anonymous namespace::TRunAdapter,anonymous namespace::TRunAdapter,CGPoint,CGPoint,double const*,unsigned long)::{lambda(double,double)#1}>,void ()(double,double)>::operator()(uint64_t a1, double *a2, double *a3)
{
  v3 = *a3;
  v4 = **(a1 + 8);
  v5 = *a2 - v4;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *v7;
  if (v5 - *v7 > **v6)
  {
    v10 = v7[1];
    v11 = *(v6 + 8);
    v12 = v11[1];
    v14.x = v8 + *v11;
    v14.y = v10 + v12;
    v15.x = v5 + *v11;
    v15.y = *(*(a1 + 16) + 8) + v12;
    TDecorationRun::DrawLineSegment(**(v6 + 24), **(v6 + 32), v14, v15, **(v6 + 40));
    v4 = **(a1 + 8);
    v7 = *(a1 + 32);
  }

  result = v3 + v4;
  *v7 = result;
  return result;
}

void TDecorationRun::DrawLineSegment(TDecorationRun *this, const CGFloat *a2, CGPoint a3, CGPoint a4, const double *a5)
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  CGContextSetLineDash(this, a3.x, a2, a5);
  CGContextMoveToPoint(this, v8, v7);
  CGContextAddLineToPoint(this, x, y);

  CGContextStrokePath(this);
}

uint64_t std::__function::__value_func<void ()(double,double)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<double,TInlineBufferAllocator<double,6ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 72);
    if (a1 + 24 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (*(a1 + 16) == *(a1 + 72))
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void EvalBezierCurve(double a1, unsigned int a2, const CGPoint *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *&v4 = -1;
  *(&v4 + 1) = -1;
  __dst[2] = v4;
  __dst[3] = v4;
  __dst[0] = v4;
  __dst[1] = v4;
  v5 = a2;
  if (16 * a2 != -16)
  {
    memcpy(__dst, a3, 16 * a2 + 16);
    *&v4 = -1;
    *(&v4 + 1) = -1;
  }

  v16[2] = v4;
  v16[3] = v4;
  v6 = 16 * v5;
  v7 = __dst;
  v8 = v16;
  v16[0] = v4;
  v16[1] = v4;
  do
  {
    v9 = 0;
    v10 = v8;
    do
    {
      v11 = *(&v7[v9 / 0x10] + 1);
      v12 = *(&v7[v9 / 0x10 + 1] + 1);
      v13 = std::__lerp[abi:fn200100]<double>(*&v7[v9 / 0x10], *&v7[v9 / 0x10 + 1], a1);
      v14 = std::__lerp[abi:fn200100]<double>(v11, v12, a1);
      v15 = &v10[v9 / 0x10];
      *v15 = v13;
      v15[1] = v14;
      v9 += 16;
    }

    while (v6 != v9);
    v6 -= 16;
    v8 = v7;
    v7 = v10;
    --v5;
  }

  while (v5);
}

uint64_t SolveQuadratic(double a1, double a2, double a3, double *a4)
{
  if (fabs(a1) < 1.0e-10)
  {
    if (fabs(a2) >= 1.0e-10)
    {
      *a4 = -a3 / a2;
      return 1;
    }

    return 0;
  }

  v5 = a1 * -4.0 * a3 + a2 * a2;
  if (v5 < 0.0)
  {
    return 0;
  }

  v6 = sqrt(v5);
  v7 = a1 + a1;
  *a4 = (-a2 - v6) / v7;
  a4[1] = (v6 - a2) / v7;
  return 2;
}

void TDelegateRun::DrawGlyphsAtPositions(uint64_t a1, CGContext *a2, CFRange a3, const CGPoint *a4, const TAttributes **a5)
{
  if (*(a1 + 392) != 0.0)
  {
    TRun::DrawGlyphsAtPositionsInternal(a1, a2, a3, a4, *a5, a5[1], *(a5 + 16));
  }
}

uint64_t DestroyTable(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      if (*(v1 + v2))
      {
        *(v1 + v2) = 0;
        (*(v1 + v2 + 8))();
      }

      v2 += 16;
      if (v2 == 144)
      {

        JUMPOUT(0x1865F22D0);
      }
    }
  }

  return result;
}

id *TTypesetter::DestroyAttributesCache(id *this, void *a2)
{
  if (this)
  {
    v2 = this;
    TAttributes::~TAttributes((this + 1));

    JUMPOUT(0x1865F22D0);
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:fn200100]<std::pair<unsigned int const,std::unique_ptr<TUnicodeDataCachePage>>,0>(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = (v1 + 1568);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
    return MEMORY[0x1865F22D0](v1, 0x1010C40E4D70334);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:fn200100]<std::pair<unsigned int const,std::unique_ptr<TUnicodeDataCachePage>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CTLineGetRangeOfCharacterClusterAtIndex(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v62[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return -1;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 9);
  if (v6 > a2 || v6 + *(v5 + 10) <= a2)
  {
    return -1;
  }

  memset(v61, 170, sizeof(v61));
  ClusterRange = TLine::GetClusterRange(v5, *v5, a2, 2, &v61[1], 0, v61);
  if (a3 | a4)
  {
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v59 = 0;
    if (a4)
    {
    }

    v11 = *(v5 + 2);
    v12 = *(v5 + 3);
    v49 = ClusterRange;
    v48 = a3;
    if (v11 == v12)
    {
      v17 = 0xAAAAAAAAAAAAAAAALL;
      v14 = *(v5 + 2);
    }

    else
    {
      v13 = 0;
      v14 = *(v5 + 2);
      v15 = v14;
      while (1)
      {
        v16 = *(*(*v15 + 40) + 208) + v13;
        if (v16 > *&v61[1])
        {
          break;
        }

        ++v15;
        ++v14;
        v13 = v16;
        if (v15 == v12)
        {
          v17 = 0xAAAAAAAAAAAAAAAALL;
          v14 = *(v5 + 3);
          goto LABEL_16;
        }
      }

      v17 = *&v61[1] - v13;
    }

LABEL_16:
    v18 = *&v61[3];
    if (*&v61[3] >= 1)
    {
      v19 = v14 - v11;
      v50 = v5;
      v51 = a4;
      while (1)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = *(v5 + 2);
        v22 = *(v5 + 3) - v21;
        if (v19 >= v22 >> 3)
        {
          objc_autoreleasePoolPop(v20);
          goto LABEL_51;
        }

        if (v22 >> 3 <= v19)
        {
          __break(1u);
          return -1;
        }

        v55 = v20;
        v23 = *(v21[v19] + 40);
        v24 = v23[16].n128_u64[1];
        v25 = v23[13].n128_i64[0];
        v53 = v24;
        v54 = *(v23[13].n128_u64[1] + 16);
        v52 = v23[12].n128_u64[1];
        v26 = v25 - v17;
        if (v25 >= v17)
        {
          v25 = v17;
        }

        if (v25 < 1)
        {
          v28 = v17;
        }

        else
        {
          v27 = (v54 + 2 * v52);
          v28 = v17;
          do
          {
            v30 = *v27++;
            v29 = v30;
            v32 = v24-- != 0;
            v33 = v29 == -1 && v32;
            v28 -= v33;
            --v25;
          }

          while (v25);
        }

        if (v26 >= v18)
        {
          v26 = v18;
        }

        v56 = v26;
        if (!a4)
        {
          goto LABEL_41;
        }

        v34 = *(atomic_load_explicit(&v23[3].n128_i64[1], memory_order_acquire) + 40);
        TRun::GetPositions(v23, 0);
        if (v56 >= 1)
        {
          break;
        }

LABEL_50:
        v18 -= v56;
        ++v19;
        objc_autoreleasePoolPop(v55);
        v17 = 0;
        v5 = v50;
        a4 = v51;
        if (v18 <= 0)
        {
          goto LABEL_51;
        }
      }

      v36 = (v35 + 16 * v17 + 8);
      v37 = v17;
      do
      {
        v58 = 0xAAAAAAAAAAAAAAAALL;
        TFont::CreatePathForGlyph(v34, 0, *(v54 + 2 * v52 + 2 * v37), &v58);
        if (atomic_load_explicit(&v58, memory_order_acquire))
        {
          *&v38 = -1;
          *(&v38 + 1) = -1;
          *&m.c = v38;
          *&m.tx = v38;
          *&m.a = v38;
          CGAffineTransformMakeTranslation(&m, *(v36 - 1), *v36);
          CGPathAddPath(atomic_load_explicit(&v59, memory_order_acquire), &m, atomic_load_explicit(&v58, memory_order_acquire));
        }

        ++v37;
        v36 += 2;
      }

      while (v37 < v56 + v17);
LABEL_41:
      if (v56 >= 1)
      {
        v39 = v56 + 1;
        v40 = v53 - v17;
        v41 = (v54 + 2 * v17 + 2 * v52);
        do
        {
          v42 = *v41++;
          if (v42 != -1 || v40 == 0)
          {
            v62[0] = [MEMORY[0x1E696AD98] numberWithLong:v19];
            v62[1] = [MEMORY[0x1E696AD98] numberWithLong:v28];
            CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2]);
            ++v28;
          }

          --v39;
          --v40;
        }

        while (v39 > 1);
      }

      goto LABEL_50;
    }

LABEL_51:
    ClusterRange = v49;
    if (v48)
    {
      if (v61[0] < 0)
      {
        *&m.a = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
        Count = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
        if (Count >= 1)
        {
          v46 = Count + 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), v46 - 2);
            CFArrayAppendValue(atomic_load_explicit(&m, memory_order_acquire), ValueAtIndex);
            --v46;
          }

          while (v46 > 1);
        }

        *v48 = atomic_exchange(&m, 0);

        if (!a4)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      *v48 = atomic_exchange(&Mutable, 0);
    }

    if (!a4)
    {
LABEL_56:

      return ClusterRange;
    }

LABEL_55:
    *a4 = atomic_exchange(&v59, 0);
    goto LABEL_56;
  }

  return ClusterRange;
}

BOOL IsRightAssociative(uint64_t a1)
{
  if (qword_1ED567CB0 != -1)
  {
    dispatch_once_f(&qword_1ED567CB0, 0, IsRightAssociative::$_0::__invoke);
  }

  return MEMORY[0x1865F3040](_MergedGlobals_21, a1) != 0;
}

CFArrayRef CTFontCopyVariationAxes(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  TBaseFont::CopyVariationAxesExternal(*(*(font + 5) + 408), &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void TBaseFont::CopyVariationAxesExternal(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 120))(a2);
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    TBaseFont::GetInitializedGraphicsFont(this);
    ParserFont = CGFontGetParserFont();
    if (ParserFont)
    {
      v5 = ParserFont;
      Count = CFArrayGetCount(atomic_load_explicit(a2, memory_order_acquire));
      v7 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      v31 = 0xAAAAAAAAAAAAAAAALL;
      CreateNormalizedPreferredLanguages(&v31);
      v9 = CGFontNameTableCreate();
      if (v9)
      {
        v10 = v9;
        v26 = a2;
        allocator = v7;
        explicit = atomic_load_explicit(a2, memory_order_acquire);
        if (explicit)
        {
          v12 = CFArrayGetCount(explicit);
          if (v12)
          {
            v13 = v12;
            v14 = 0;
            v15 = @"NSCTVariationAxisIdentifier";
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(explicit, v14);
              valuePtr = -1431655766;
              Value = CFDictionaryGetValue(ValueAtIndex, v15);
              if (Value)
              {
                CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
                VariationAxisNameID = FPFontGetVariationAxisNameID();
                v29 = 0xAAAAAAAAAAAAAAAALL;
                CopyLocalizedFontNameInternal(atomic_load_explicit(&v31, memory_order_acquire), 0, v10, VariationAxisNameID, 0, @"AxisNames", &v29);
                if (atomic_load_explicit(&v29, memory_order_acquire))
                {
                  v19 = v15;
                  v20 = Mutable;
                  v21 = v10;
                  v22 = v5;
                  v23 = atomic_load_explicit(&v29, memory_order_acquire);
                  v24 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisName");
                  if (v23 == v24)
                  {

                    v5 = v22;
                    v10 = v21;
                    Mutable = v20;
                    v15 = v19;
                  }

                  else
                  {
                    if (!v23 || !v24)
                    {

                      v5 = v22;
                      v10 = v21;
                      Mutable = v20;
                      v15 = v19;
LABEL_21:
                      v28 = 0xAAAAAAAAAAAAAAAALL;
                      TCFMutableDictionary::TCFMutableDictionary(&v28, ValueAtIndex);
                      CFDictionarySetValue(atomic_load_explicit(&v28, memory_order_acquire), @"NSCTVariationAxisName", atomic_load_explicit(&v29, memory_order_acquire));
                      CFArrayAppendValue(Mutable, atomic_load_explicit(&v28, memory_order_acquire));

                      goto LABEL_18;
                    }

                    v25 = CFEqual(v23, v24);

                    v5 = v22;
                    v10 = v21;
                    Mutable = v20;
                    v15 = v19;
                    if (!v25)
                    {
                      goto LABEL_21;
                    }
                  }
                }
              }

              else
              {
                valuePtr = 0;
              }

              CFArrayAppendValue(Mutable, ValueAtIndex);
LABEL_18:
              ++v14;
            }

            while (v13 != v14);
          }
        }

        CGFontNameTableRelease();
      }
    }
  }
}

void CreateNormalizedPreferredLanguages(void *a1@<X8>)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v2 = CFLocaleCopyPreferredLanguages();
  v3[0] = &unk_1EF258060;
  v3[3] = v3;
  CreateCopyOfArrayByApplyingFunction(v2, v3, a1);
  std::__function::__value_func<TCFRef<void const*> ()(void const*)>::~__value_func[abi:fn200100](v3);
}

void CreateCopyOfArrayByApplyingFunction(const __CFArray *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    context[1] = a2;
    v8 = Mutable;
    context[0] = &v8;
    v9.length = CFArrayGetCount(a1);
    v9.location = 0;
    CFArrayApplyFunction(a1, v9, CreateCopyOfArrayByApplyingFunction(__CFArray const*,std::function<TCFRef<void const*> ()(void const*)>)::$_0::__invoke, context);
    *a3 = atomic_exchange(&v8, 0);
  }

  else
  {
    *a3 = 0;
  }
}

void CreateCopyOfArrayByApplyingFunction(__CFArray const*,std::function<TCFRef<void const*> ()(void const*)>)::$_0::__invoke(void *a1, uint64_t a2)
{
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v3 = *(*(a2 + 8) + 24);
  v8[1] = a1;
  if (v3)
  {
    (*(*v3 + 48))(v8);
    if (atomic_load_explicit(v8, memory_order_acquire))
    {
      v5 = *a2;
      v6 = atomic_load_explicit(v8, memory_order_acquire);
      CFArrayAppendValue(atomic_load_explicit(v5, memory_order_acquire), v6);
    }
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:fn200100]();
    std::__function::__func<CreateNormalizedLanguages(__CFArray const*)::$_0,std::allocator<CreateNormalizedLanguages(__CFArray const*)::$_0>,TCFRef<void const*> ()(void const*)>::operator()(v7);
  }
}

void std::__function::__func<CreateNormalizedLanguages(__CFArray const*)::$_0,std::allocator<CreateNormalizedLanguages(__CFArray const*)::$_0>,TCFRef<void const*> ()(void const*)>::operator()(__CFString **a1@<X1>, void *a2@<X8>)
{
  LanguageIdentifierByNormalizing(*a1, 1u, &v3);
  *a2 = atomic_exchange(&v3, 0);
}

uint64_t std::__function::__value_func<TCFRef<void const*> ()(void const*)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void CopyLocalizedFontNameInternal(CFArrayRef theArray@<X3>, CGFont *a2@<X0>, uint64_t a3@<X1>, unsigned int a4@<W2>, void *a5@<X4>, const __CFString *a6@<X5>, atomic_ullong *a7@<X8>)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v78 = 0;
  if (!theArray || (explicit = theArray, !CFArrayGetCount(theArray)))
  {
    CreateNormalizedPreferredLanguages(&values);

    explicit = atomic_load_explicit(&v78, memory_order_acquire);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a2 | a3 && a4 != -1)
  {
    v77.data = 0;
    v77.length = 0;
    if ((a4 & 0x80000000) == 0)
    {
      if (a3)
      {
        v14 = 0;
      }

      else
      {
        a3 = CGFontNameTableCreate();
        v14 = a3;
        if (!a3)
        {
          goto LABEL_44;
        }
      }

      v68 = v14;
      v69 = a2;
      v72 = a5;
      v74 = a6;
      v70 = a7;
      v15 = CGFontNameTableCopyLocales();
      v16 = *MEMORY[0x1E695E480];
      theSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
      if (v15)
      {
        Count = CFArrayGetCount(v15);
        if (Count)
        {
          v18 = Count;
          for (i = 0; i != v18; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
            v21 = MEMORY[0x1865F0C70](ValueAtIndex);
            CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v16, v21);
            v23 = CanonicalLanguageIdentifierFromString;
            if (v23)
            {
              v24 = v23;
              Length = CFStringGetLength(v23);

              if (Length >= 1)
              {
                CFSetAddValue(theSet, CanonicalLanguageIdentifierFromString);
              }
            }

            else
            {
            }
          }
        }
      }

      v71 = a4;
      values = 0xAAAAAAAAAAAAAAAALL;
      TCFMutableArray::TCFMutableArray(&values, explicit);
      if (explicit)
      {
        v26 = CFArrayGetCount(explicit);
        if (v26)
        {
          v27 = v26;
          v28 = 0;
          v29 = *MEMORY[0x1E695E6F0];
          do
          {
            v30 = CFArrayGetValueAtIndex(explicit, v28);
            ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v16, v30);
            v32 = ComponentsFromLocaleIdentifier;
            if (ComponentsFromLocaleIdentifier)
            {
              Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, v29);
              if (Value)
              {
                v34 = Value;
                v35 = v15;
                v36 = explicit;
                v37 = a3;
                v38 = atomic_load_explicit(&values, memory_order_acquire);
                v81.length = CFArrayGetCount(atomic_load_explicit(&values, memory_order_acquire));
                v39 = v38;
                a3 = v37;
                explicit = v36;
                v15 = v35;
                v81.location = 0;
                if (!CFArrayContainsValue(v39, v81, v34))
                {
                  CFArrayAppendValue(atomic_load_explicit(&values, memory_order_acquire), v34);
                }
              }
            }

            ++v28;
          }

          while (v27 != v28);
        }
      }

      v40 = theSet;
      a4 = v71;
      if (CFSetGetCount(theSet) > 0)
      {
        v77.info = 0xAAAAAAAAAAAAAAAALL;
        CreateSortedArrayWithSet(theSet, 0, 0, &v77.info);
        v41 = CFBundleCopyLocalizationsForPreferences(atomic_load_explicit(&v77.info, memory_order_acquire), atomic_load_explicit(&values, memory_order_acquire));
        v42 = v41;
        if (v41)
        {
          v43 = CFArrayGetCount(v41);
          if (v43)
          {
            v44 = 0;
            v45 = v43 - 1;
            do
            {
              v46 = CFArrayGetValueAtIndex(v42, v44);
              TCFRef<__CTFont const*>::Retain(&v77.data, v46);
              if (v71 == 1 || v71 == 2)
              {
              }

              if (!atomic_load_explicit(&v77.length, memory_order_acquire))
              {
              }

              if (atomic_load_explicit(&v77.length, memory_order_acquire))
              {
                break;
              }

              v53 = v45 == v44++;
            }

            while (!v53);
          }
        }

        v40 = theSet;
      }

      a2 = v69;
      a7 = v70;
      a5 = v72;
      a6 = v74;
      if (v68)
      {
        CGFontNameTableRelease();
        a3 = 0;
      }
    }

LABEL_44:
    if (a4 != 2 && !a6)
    {
LABEL_98:
      if (atomic_load_explicit(&v77.length, memory_order_acquire))
      {
        if (a5)
        {
          *a5 = atomic_exchange(&v77.data, 0);
        }

        *a7 = atomic_exchange(&v77.length, 0);
      }

      else
      {
        CopyFontNameInternal(a2, a3, a4, a7);
      }

      goto LABEL_103;
    }

    v47 = atomic_load_explicit(&v77.length, memory_order_acquire);
    v48 = v47 == 0;
    if (atomic_load_explicit(&v77.length, memory_order_acquire) && atomic_load_explicit(&v77.data, memory_order_acquire) && CFArrayGetCount(explicit))
    {
      v75 = a6;
      values = 0xAAAAAAAAAAAAAAAALL;
      if (explicit)
      {
        v49 = CFArrayGetValueAtIndex(explicit, 0);
      }

      else
      {
        v49 = 0;
      }

      LanguageIdentifierByNormalizing(v49, 1u, &values);
      v77.info = 0xAAAAAAAAAAAAAAAALL;
      LanguageIdentifierByNormalizing(atomic_load_explicit(&v77.data, memory_order_acquire), 1u, &v77.info);
      v50 = atomic_load_explicit(&values, memory_order_acquire);
      v51 = atomic_load_explicit(&v77.info, memory_order_acquire);
      v52 = v51;
      if (v50 != v51)
      {
        if (!v50 || !v51)
        {

          a6 = v75;
          if (v75)
          {
            goto LABEL_72;
          }

          goto LABEL_53;
        }

        if (CFEqual(v50, v51))
        {
          v53 = v47 == 0;
        }

        else
        {
          v53 = 1;
        }

        v48 = v53;
      }

      a6 = v75;
      if (!v48)
      {
        goto LABEL_98;
      }
    }

    else if (v47)
    {
      goto LABEL_98;
    }

    if (a6)
    {
      goto LABEL_72;
    }

LABEL_53:
    if (a4 == 4)
    {
LABEL_56:
      a6 = @"FontNames";
      goto LABEL_72;
    }

    if (a4 != 2)
    {
      if (a4 != 1)
      {
        goto LABEL_98;
      }

      goto LABEL_56;
    }

    a6 = @"StyleNames";
LABEL_72:
    *a7 = 0xAAAAAAAAAAAAAAAALL;
    CopyFontNameInternal(a2, a3, a4, a7);
    if (atomic_load_explicit(a7, memory_order_acquire))
    {
      if ((a4 & 0x80000000) != 0)
      {
LABEL_103:

        goto LABEL_104;
      }

      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(a7, memory_order_acquire));
      if (MutableCopy)
      {
        v55 = MutableCopy;
        CFStringTrimWhitespace(MutableCopy);
        values = v55;
      }
    }

    v77.isa = 0xAAAAAAAAAAAAAAAALL;
    v77.info = 0;
    v56 = atomic_load_explicit(a7, memory_order_acquire);
    if (atomic_load_explicit(&v78, memory_order_acquire))
    {
      v57 = 0;
    }

    else
    {
      v57 = explicit;
    }

    v58 = atomic_load_explicit(&v78, memory_order_acquire);
    if (a5 || !v58)
    {
      values = &v77.info;
      v80[0] = 0;
      CopyDefaultLocalizedName(&v77, v56, a6, v57, v80);
    }

    else
    {
      CopyDefaultLocalizedName(&v77, v56, a6, v57, 0);
    }

    if (!atomic_load_explicit(&v77, memory_order_acquire))
    {
      goto LABEL_97;
    }

    if (atomic_load_explicit(&v77.info, memory_order_acquire) && atomic_load_explicit(&v77.data, memory_order_acquire))
    {
      v73 = a5;
      values = 0xAAAAAAAAAAAAAAAALL;
      v80[0] = 0xAAAAAAAAAAAAAAAALL;
      v59 = atomic_load_explicit(&v77.info, memory_order_acquire);
      v60 = atomic_load_explicit(&v77.data, memory_order_acquire);
      values = v59;
      v80[0] = v60;
      v61 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 2, MEMORY[0x1E695E9C0]);
      v62 = CFBundleCopyLocalizationsForPreferences(v61, explicit);
      v63 = v62;
      v64 = v63;
      if (v63 && CFArrayGetCount(v63))
      {
        v65 = CFArrayGetValueAtIndex(v62, 0);
      }

      else
      {
        v65 = 0;
      }

      v66 = atomic_load_explicit(&v77.info, memory_order_acquire);
      if (v65 == v66)
      {

        a5 = v73;
      }

      else
      {
        if (!v65 || !v66)
        {

          a5 = v73;
          goto LABEL_97;
        }

        v67 = CFEqual(v65, v66);

        a5 = v73;
        if (!v67)
        {
          goto LABEL_97;
        }
      }
    }

    TCFRef<__CTFont const*>::Retain(&v77.data, atomic_load_explicit(&v77.info, memory_order_acquire));
    TCFRef<__CTFont const*>::Retain(&v77.length, atomic_load_explicit(&v77, memory_order_acquire));
LABEL_97:

    goto LABEL_98;
  }

  *a7 = 0;
LABEL_104:
}

void CreateSortedArrayWithSet(CFSetRef theSet@<X0>, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *)@<X1>, void *a3@<X2>, CFArrayRef *a4@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  if (theSet)
  {
    Count = CFSetGetCount(theSet);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v9;
    v32 = v9;
    v31 = v9;
    v30 = v9;
    v29 = v9;
    v28 = v9;
    v27 = v9;
    v26 = v9;
    v25 = v9;
    v23 = v9;
    v24 = v9;
    v21 = v9;
    v22 = v9;
    v19 = v9;
    v20 = v9;
    v17 = 0;
    v18 = 0;
    values = 0;
    v34 = &v19;
    if (Count)
    {
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, Count);
      v10 = v17;
      bzero(v17, 8 * Count);
      v17 = &v10[8 * Count];
      v11 = values;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    Count = 0;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v12;
    v32 = v12;
    v31 = v12;
    v30 = v12;
    v29 = v12;
    v28 = v12;
    v27 = v12;
    v26 = v12;
    v25 = v12;
    v34 = &v19;
    v23 = v12;
    v24 = v12;
    v21 = v12;
    v22 = v12;
    v19 = v12;
    v20 = v12;
    v17 = 0;
    v18 = 0;
    values = 0;
  }

  CFSetGetValues(theSet, v11);
  if (a2 && Count >= 2)
  {
    v13 = values;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v36.location = 0;
    v36.length = 0;
    CFArrayReplaceValues(atomic_load_explicit(&Mutable, memory_order_acquire), v36, v13, Count);
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    v37.length = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
    v37.location = 0;
    CFArraySortValues(explicit, v37, a2, a3);
    *a4 = atomic_exchange(&Mutable, 0);
  }

  else
  {
    *a4 = CFArrayCreate(*MEMORY[0x1E695E480], values, Count, MEMORY[0x1E695E9C0]);
  }

  Mutable = &values;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&Mutable);
}

CFDictionaryRef CTFontCopyVariation(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 112))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

CTLineRef CTLineCreateJustifiedLine(CTLineRef line, CGFloat justificationFactor, double justificationWidth)
{
  v3 = 0;
  if (line && justificationWidth >= 0.0)
  {
    v4 = 1.0;
    if (justificationFactor <= 1.0)
    {
      v4 = justificationFactor;
    }

    v5 = justificationFactor < 0.0;
    v6 = 0.0;
    if (!v5)
    {
      v6 = v4;
    }

    TJustEngine::CreateJustifiedLine(*(line + 5), 0, v6, justificationWidth, &v9);
    ExternalizeLine(&v9);
    v3 = v7;
  }

  return v3;
}

void TInstanceFont::CopyAttribute(atomic_ullong *this@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X8>)
{
  if (a2 == 62)
  {
    if (atomic_load_explicit(this + 80, memory_order_acquire))
    {
      v6 = 0xAAAAAAAAAAAAAAAALL;
      atomic_load_explicit(this + 80, memory_order_acquire);
      CreateVariationDictFromGraphicsFont(&v6);
      CreateCodableVariationFromDefaultVariation(atomic_load_explicit(this + 75, memory_order_acquire), atomic_load_explicit(&v6, memory_order_acquire), &v5);
      *a3 = atomic_exchange(&v5, 0);
    }

    else
    {
      *a3 = atomic_load_explicit(this + 75, memory_order_acquire);
    }
  }

  else
  {

    TBaseFont::CopyAttribute(this, a2, a3);
  }
}

void CTFontRemoveFromCaches(uint64_t a1)
{
  if (a1)
  {
    v1 = *(*(a1 + 40) + 408);
    if (v1)
    {
      v6 = 0xAAAAAAAAAAAAAAAALL;
      (*(*v1 + 200))(&v6, v1);
      if (atomic_load_explicit(&v6, memory_order_acquire))
      {
        TDescriptorSource::TDescriptorSource(&v5);
        TDescriptorSource::PurgeFromCaches(&v5, atomic_load_explicit(&v6, memory_order_acquire));
        v2 = (*(*v1 + 888))(v1);
        if (v2)
        {
          Value = CFDictionaryGetValue(v2, @"cacheKey");
          if (Value)
          {
            v4 = Value;
            TDescriptorSource::TDescriptorSource(&v5);
            TDescriptorSource::PurgeFromSplicedFonts(&v5, v4);
          }
        }
      }

      if ((*(*v1 + 576))(v1))
      {
        CGFontDBGetLocal();
        CGFontDBPurgeFont();
      }
    }
  }

  else
  {
    TDescriptorSource::TDescriptorSource(&v6);
    TDescriptorSource::PurgeFromCaches(&v6, 0);
    CGFontDBGetLocal();
    CGFontDBPurgeFont();
    FPFontPurgeCaches();
  }
}

void TTypesetter::PurgeAttributesCache(TTypesetter *this)
{
  v1 = SetThreadSpecificData(0, 0, 0);
  TTypesetter::DestroyAttributesCache(v1, v2);
  v3 = atomic_exchange(&sPreviousSecondaryScaleFontsAndRecipe, 0);
}

void TDescriptorSource::PurgeFromCaches(TDescriptorSource *this, const __CFURL *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  TTypesetter::PurgeAttributesCache(this);
  if (a2)
  {
    memset(__b, 170, sizeof(__b));
    v4 = CFURLGetFileSystemRepresentation(a2, 1u, __b, 1025);
    if (v4)
    {
      v4 = FPFontPurgeCaches();
    }

    [atomic_load_explicit(TCGFontCache::GetCache(v4) memory:"removeObjectForKey:" order:a2acquire)];
    [atomic_load_explicit(*this memory:"removeObjectForKey:" order:a2acquire)];
  }

  else
  {
    FPFontPurgeCaches();
    explicit = atomic_load_explicit(&TCGFontCache::sSharedCache, memory_order_acquire);
    if (explicit)
    {
      [atomic_load_explicit(explicit memory:"removeAllObjects" order:?acquire)];
    }

    TDescriptorSource::PurgeFontFallbacksCache([atomic_load_explicit(*this memory:"removeAllObjects" order:?acquire)]);

    TDescriptorSource::PurgeSplicedFontStash(v6);
  }
}

void TDescriptorSource::PurgeSplicedFontStash(TDescriptorSource *this)
{
  os_unfair_lock_lock_with_options();
  v1 = TDescriptorSource::sSplicedFonts;
  if (TDescriptorSource::sSplicedFonts)
  {
    TDescriptorSource::sSplicedFonts = 0;
  }

  os_unfair_lock_unlock(&TDescriptorSource::sSplicedFontsLock);
}

void TDescriptorSource::PurgeFontFallbacksCache(TDescriptorSource *this)
{
  os_unfair_lock_lock_with_options();
  v1 = TDescriptorSource::sFontFallbacksCache;
  if (TDescriptorSource::sFontFallbacksCache)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>>>::~__hash_table(TDescriptorSource::sFontFallbacksCache + 24);

    MEMORY[0x1865F22D0](v1, 0x10E0C400A71E039);
    TDescriptorSource::sFontFallbacksCache = 0;
  }

  os_unfair_lock_unlock(&TDescriptorSource::sFontFallbacksLock);
}

uint64_t TCFBase<TFramesetter>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = ***(a1 + 40);

  return v3();
}

void TFramesetterAttrString::~TFramesetterAttrString(id *this)
{
  *this = &unk_1EF257460;

  v2 = this[32];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v2);
  }

  TLine::~TLine((this + 1));
}

{
  TFramesetterAttrString::~TFramesetterAttrString(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TCFBase<TNativeParagraphStyle>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);

  v4 = v3[1];
  v3[1] = 0;
  if (v4)
  {
    MEMORY[0x1865F22D0](v4, 0x1000C40FA0F61DDLL);
  }

  result = *v3;
  *v3 = 0;
  if (result)
  {

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

void TCFBase<TNativeTextTab>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(*(a1 + 40) + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

CTFontRef CTFontCreateCopyWithSymbolicTraits(CTFontRef font, CGFloat size, const CGAffineTransform *matrix, CTFontSymbolicTraits symTraitValue, CTFontSymbolicTraits symTraitMask)
{
  if (!font)
  {
    return 0;
  }

  v5 = *(font + 5);
  if (!*(v5 + 408))
  {
    return 0;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  TFont::CopyDescriptor(v5, 0, &v14);
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(atomic_load_explicit(&v14, memory_order_acquire), symTraitValue, symTraitMask);
  v11 = CopyWithSymbolicTraits;
  if (CopyWithSymbolicTraits)
  {
    if (size == 0.0)
    {
      size = *(v5 + 24);
    }

    v12 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, size, matrix);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

CTParagraphStyleRef CTParagraphStyleCreate(const CTParagraphStyleSetting *settings, size_t settingCount)
{
  v4 = TCFBase<TNativeParagraphStyle>::Allocate();
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = TNativeParagraphStyle::Hash;
    *(v4 + 4) = 0;
    *(v4 + 5) = v4 + 48;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    *(v4 + 9) = TNativeParagraphStyle::CopyDefaultTabStops(v4);
    *(v5 + 40) = 1024;
    *(v5 + 82) = -1;
    *(v5 + 11) = 0;
    *(v5 + 96) = 0;
  }

  v27 = v5;
  if (atomic_load_explicit(&v27, memory_order_acquire))
  {
    v26 = 0xAAAAAAAAAAAAAA01;
    explicit = atomic_load_explicit(&v27, memory_order_acquire);
    if (settings && settingCount)
    {
      v6 = 24 * settingCount;
      p_value = &settings->value;
      do
      {
        v8 = *p_value;
        if (*p_value)
        {
          v9 = *(p_value - 1);
          switch(*(p_value - 4))
          {
            case 0:
              if (v9 == 1)
              {
                TParagraphStyle::SetAlignment(&explicit, *v8);
              }

              break;
            case 1:
              if (v9 == 8)
              {
                v18 = *v8;
                goto LABEL_75;
              }

              if (v9 == 4)
              {
                v18 = *v8;
LABEL_75:
                TParagraphStyle::SetFirstLineHeadIndent(&explicit, v18);
                break;
              }

              break;
            case 2:
              if (v9 == 8)
              {
                v14 = *v8;
                goto LABEL_64;
              }

              if (v9 == 4)
              {
                v14 = *v8;
LABEL_64:
                TParagraphStyle::SetHeadIndent(&explicit, v14);
                break;
              }

              break;
            case 3:
              if (v9 == 8)
              {
                v15 = *v8;
                goto LABEL_66;
              }

              if (v9 == 4)
              {
                v15 = *v8;
LABEL_66:
                TParagraphStyle::SetTailIndent(&explicit, v15);
                break;
              }

              break;
            case 4:
              if (v9 == 8)
              {
                TParagraphStyle::SetTabStops(&explicit, *v8);
              }

              break;
            case 5:
              if (v9 == 8)
              {
                v19 = *v8;
                goto LABEL_77;
              }

              if (v9 == 4)
              {
                v19 = *v8;
LABEL_77:
                TParagraphStyle::SetDefaultTabInterval(&explicit, v19);
                break;
              }

              break;
            case 6:
              if (v9 == 1)
              {
                TParagraphStyle::SetLineBreakMode(&explicit, *v8);
              }

              break;
            case 7:
              if (v9 == 8)
              {
                v17 = *v8;
                goto LABEL_73;
              }

              if (v9 == 4)
              {
                v17 = *v8;
LABEL_73:
                TParagraphStyle::SetLineHeightMultiple(&explicit, v17);
                break;
              }

              break;
            case 8:
              if (v9 == 8)
              {
                v20 = *v8;
                goto LABEL_79;
              }

              if (v9 == 4)
              {
                v20 = *v8;
LABEL_79:
                TParagraphStyle::SetMaximumLineHeight(&explicit, v20);
                break;
              }

              break;
            case 9:
              if (v9 == 8)
              {
                v12 = *v8;
                goto LABEL_60;
              }

              if (v9 == 4)
              {
                v12 = *v8;
LABEL_60:
                TParagraphStyle::SetMinimumLineHeight(&explicit, v12);
                break;
              }

              break;
            case 0xA:
            case 0xF:
              if (v9 == 8)
              {
                v10 = *v8;
                goto LABEL_56;
              }

              if (v9 == 4)
              {
                v10 = *v8;
LABEL_56:
                TParagraphStyle::SetMinimumLineSpacing(&explicit, v10);
                break;
              }

              break;
            case 0xB:
              if (v9 == 8)
              {
                v13 = *v8;
                goto LABEL_62;
              }

              if (v9 == 4)
              {
                v13 = *v8;
LABEL_62:
                TParagraphStyle::SetParagraphSpacing(&explicit, v13);
                break;
              }

              break;
            case 0xC:
              if (v9 == 8)
              {
                v21 = *v8;
                goto LABEL_81;
              }

              if (v9 == 4)
              {
                v21 = *v8;
LABEL_81:
                TParagraphStyle::SetParagraphSpacingBefore(&explicit, v21);
                break;
              }

              break;
            case 0xD:
              if (v9 == 1)
              {
                TParagraphStyle::SetBaseWritingDirection(&explicit, *v8);
              }

              break;
            case 0xE:
              if (v9 == 8)
              {
                v16 = *v8;
LABEL_68:
                if (v26 == 1)
                {
                  v22 = *(*(explicit + 40) + 8);
                  if (!v22)
                  {
                    TNativeParagraphStyle::CreateSpacePack(*(explicit + 40));
                  }

                  *(v22 + 32) = v16;
                }

                break;
              }

              if (v9 == 4)
              {
                v16 = *v8;
                goto LABEL_68;
              }

              break;
            case 0x10:
              if (v9 == 8)
              {
                v11 = *v8;
                goto LABEL_58;
              }

              if (v9 == 4)
              {
                v11 = *v8;
LABEL_58:
                TParagraphStyle::SetLineSpacingAdjustment(&explicit, v11);
                break;
              }

              break;
            case 0x11:
              if (v9 == 8)
              {
                TParagraphStyle::SetLineBoundsOptions(&explicit, *v8);
              }

              break;
            default:
              break;
          }
        }

        p_value += 3;
        v6 -= 24;
      }

      while (v6);
    }

    v23 = atomic_exchange(&v27, 0);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t TCFBase<TNativeParagraphStyle>::Allocate()
{
  if (qword_1ED567D10 != -1)
  {
    dispatch_once_f(&qword_1ED567D10, 0, TCFBase<TNativeParagraphStyle>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

CFArrayRef TNativeParagraphStyle::CopyDefaultTabStops(TNativeParagraphStyle *this)
{
  v1 = 0;
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *values = 0u;
  v9 = 0u;
  v2 = 0.0;
  while (1)
  {
    v2 = v2 + 28.0;
    v3 = TCFBase<TNativeTextTab>::Allocate();
    if (v3)
    {
      *(v3 + 48) = v2;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      *(v3 + 40) = v3 + 48;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
    }

    v7 = v3;

    if (!atomic_load_explicit(&values[v1], memory_order_acquire))
    {
      break;
    }

    if (++v1 == 12)
    {
      v4 = CFArrayCreate(*MEMORY[0x1E695E480], values, 12, MEMORY[0x1E695E9C0]);
      goto LABEL_8;
    }
  }

  v4 = 0;
LABEL_8:
  for (i = 11; i != -1; --i)
  {
  }

  return v4;
}

uint64_t TCFBase<TNativeTextTab>::Allocate()
{
  if (TCFBase<TNativeTextTab>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TNativeTextTab>::GetTypeID(void)::once, 0, TCFBase<TNativeTextTab>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

void *TParagraphStyle::SetAlignment(TParagraphStyle *this, uint64_t a2)
{
  v2 = *(this + 8);
  result = *this;
  if ((v2 & 1) == 0)
  {
    return [result setAlignment_];
  }

  *(result[5] + 33) = a2;
  return result;
}

void *TCFBase<TNativeParagraphStyle>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

uint64_t TNativeParagraphStyle::Hash(atomic_ullong *this)
{
  v1 = *(this + 33) << 24;
  v2 = *this;
  if (*this)
  {
    v1 += v2[1] << 16;
    v3 = *v2 << 8;
  }

  else
  {
    v3 = 0;
  }

  explicit = atomic_load_explicit(this + 3, memory_order_acquire);
  if (explicit)
  {
    explicit = CFArrayGetCount(explicit);
  }

  return explicit + v3 + v1;
}

CTFramesetterRef CTFramesetterCreateWithAttributedString(CFAttributedStringRef attrString)
{
  v1 = attrString;
  if (attrString)
  {
    v2 = TCFBase<TFramesetter>::Allocate();
    if (v2)
    {
      v2[2] = 0;
      v2[3] = 0;
      v2[4] = 0;
      v2[5] = v2 + 6;
      v2[6] = &unk_1EF257460;
      TTypesetterAttrString::TTypesetterAttrString((v2 + 7), v1, 0);
    }

    v4 = 0;
    v1 = atomic_exchange(&v4, 0);
  }

  return v1;
}

uint64_t TCFBase<TFramesetter>::Allocate()
{
  if (_MergedGlobals_8 != -1)
  {
    dispatch_once_f(&_MergedGlobals_8, 0, TCFBase<TFramesetter>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

uint64_t *TParagraphStyle::GetNative(TParagraphStyle *this, const void *a2)
{
  if (this)
  {
    v3 = CFGetTypeID(this);
    if (v3 == CTParagraphStyleGetTypeID())
    {
      return *(this + 5);
    }
  }

  {
    return &TParagraphStyle::GetNative(void const*)::sBackstop;
  }

  if (v5)
  {
    TParagraphStyle::GetNative(void const*)::sBackstop = 0;
    *algn_1EA86BD58 = 0;
    qword_1EA86BD60 = 0;
    qword_1EA86BD68 = TNativeParagraphStyle::CopyDefaultTabStops(v5);
    word_1EA86BD70 = 1024;
    byte_1EA86BD72 = -1;
    qword_1EA86BD78 = 0;
    byte_1EA86BD80 = 0;
  }

  return &TParagraphStyle::GetNative(void const*)::sBackstop;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  if (!framesetter)
  {
    v46 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_64;
  }

  length = stringRange.length;
  location = stringRange.location;
  v10 = 10000000.0;
  if (constraints.width <= 10000000.0)
  {
    width = constraints.width;
  }

  else
  {
    width = 10000000.0;
  }

  if (constraints.width <= 0.0)
  {
    width = 10000000.0;
  }

  if (constraints.height <= 10000000.0)
  {
    height = constraints.height;
  }

  else
  {
    height = 10000000.0;
  }

  if (constraints.height > 0.0)
  {
    v10 = height;
  }

  v13 = 0;
  v14 = 0;
  v15 = CGPathCreateWithRect(*(&v10 - 3), 0);
  v16 = *(framesetter + 5);
  v17 = *(*((*(*v16 + 16))(v16) + 216) + 16);
  if (location + length > v17)
  {
    v46 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_63;
  }

  v18 = v17 - location;
  if (length)
  {
    v19 = length;
  }

  else
  {
    v19 = v18;
  }

  v57 = NAN;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  TFramesetter::CreateFrame(v16, location, v19, v15, frameAttributes, &v57, &v54, &v53);
  if (!atomic_load_explicit(&v53, memory_order_acquire))
  {
    goto LABEL_53;
  }

  v20 = *(atomic_load_explicit(&v53, memory_order_acquire) + 40);
  if (fitRange)
  {
    *fitRange = *(v20 + 16);
  }

  v21 = (*(*v16 + 16))(v16);
  Count = CFArrayGetCount(atomic_load_explicit((v20 + 104), memory_order_acquire));
  if (Count <= 0)
  {
LABEL_53:
    v46 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_62;
  }

  v23 = Count;
  v24 = 0;
  v25 = *(v20 + 144);
  v27 = *MEMORY[0x1E695F060];
  v26 = *(MEMORY[0x1E695F060] + 8);
  do
  {
    v28 = *(TFrame::GetLineAtIndex(v20, v24) + 5);
    v29 = *(v28 + 72);
    AttributesAtCharIndex = TLine::GetAttributesAtCharIndex(v28, v29);
    v32 = AttributesAtCharIndex;
    if (!v29)
    {
      v35 = (AttributesAtCharIndex + 128);
      v34 = *(AttributesAtCharIndex + 128);
      if (!v34)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    IsParagraphSeparator = TCharStream::IsParagraphSeparator(*v21, v29 - 1);
    v36 = *(v32 + 128);
    v35 = (v32 + 128);
    v34 = v36;
    if (IsParagraphSeparator)
    {
      if (!v34)
      {
        goto LABEL_36;
      }

LABEL_26:
      FirstLineHeadIndent = TParagraphStyle::GetFirstLineHeadIndent(v34, v31);
      goto LABEL_29;
    }

    if (!v34)
    {
LABEL_36:
      v39 = 0.0;
LABEL_37:
      v43 = 0.0;
LABEL_38:
      v45 = v39 + *(v28 + 104) - v43;
LABEL_39:
      TLine::GetTrailingWhitespace(v28, v52);
      v45 = v45 - v52[2];
      goto LABEL_40;
    }

    FirstLineHeadIndent = TParagraphStyle::GetHeadIndent(v34, v31);
LABEL_29:
    v39 = FirstLineHeadIndent;
    if (!*v35)
    {
      goto LABEL_37;
    }

    TailIndent = TParagraphStyle::GetTailIndent(*v35, v37);
    v42 = *v35;
    if (TailIndent <= 0.0)
    {
      v43 = TailIndent;
    }

    else
    {
      v43 = 0.0;
    }

    if (!v42)
    {
      goto LABEL_38;
    }

    LineBreakMode = TParagraphStyle::GetLineBreakMode(v42, v40);
    v45 = v39 + *(v28 + 104) - v43;
    if (LineBreakMode != 1)
    {
      goto LABEL_39;
    }

LABEL_40:
    if (v45 >= v27)
    {
      v46 = v45;
    }

    else
    {
      v46 = v27;
    }

    if (!v25)
    {
      v27 = v46;
    }

    if (v45 >= v26 && v25 != 0)
    {
      v26 = v45;
    }

    ++v24;
  }

  while (v23 != v24);
  if (v25)
  {
    v46 = v57 + *(v28 + 112);
  }

  else if (*(v20 + 160))
  {
    v26 = v57;
  }

  else
  {
    v26 = v57 + *(&v56 + 1);
    if ((*(v20 + 161) & 1) == 0)
    {
      v26 = v26 + *&v55;
    }
  }

  if (*(v20 + 162) == 1)
  {
    v48 = ceil(v46);
    v49 = ceil(v26);
    if (*(v20 + 144))
    {
      v46 = v48;
    }

    else
    {
      v26 = v49;
    }
  }

LABEL_62:

LABEL_63:
LABEL_64:
  v50 = v46;
  v51 = v26;
  result.height = v51;
  result.width = v50;
  return result;
}

void TFramesetter::CreateFrame(TFramesetter *a1@<X0>, CFIndex a2@<X1>, CFIndex a3@<X2>, void *a4@<X3>, const __CFDictionary *a5@<X4>, double *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v19 = a5;
  v20 = a4;
  *a6 = 0.0;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  TCFBase_NEW<CTFrame,CGPath const*&,__CFDictionary const*&>(&v20, &v19, &v17);
  v18 = atomic_exchange(&v17, 0);

  if (atomic_load_explicit(&v18, memory_order_acquire))
  {
    v14 = *(atomic_load_explicit(&v18, memory_order_acquire) + 40);
    v15.location = a2;
    v15.length = a3;
    if (*(v14 + 32) == 1)
    {
      TFramesetter::FrameInRect(a1, v14, a2, a3, a6, a7);
    }

    else
    {
      TFramesetter::FrameInPath(a1, v14, v15);
    }

    v16 = atomic_exchange(&v18, 0);
  }

  else
  {
    v16 = 0;
  }

  *a8 = v16;
}

uint64_t TCFBase<TFrame>::Allocate()
{
  if (TCFBase<TFrame>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TFrame>::GetTypeID(void)::once, 0, TCFBase<TFrame>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

void TFrame::TFrame(TFrame *this, id a2, const __CFDictionary *a3)
{
  *(this + 9) = 0;
  *(this + 5) = 0;
  v5 = (this + 40);
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = a2;
  v6 = a3;
  *(this + 19) = -1;
  *(this + 11) = v6;
  *(this + 6) = 0u;
  v7 = (this + 96);
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 80) = 256;
  if ((atomic_load_explicit(&qword_1ED567828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567828))
  {
    _MergedGlobals_7 = 1;
    __cxa_guard_release(&qword_1ED567828);
  }

  *(this + 162) = _MergedGlobals_7;
  *(this + 163) = 0;
  if (atomic_load_explicit(this + 11, memory_order_acquire))
  {
    Value = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFrameProgression");
    if (Value)
    {
      LODWORD(valuePtr) = -1431655766;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      *(this + 36) = valuePtr;
    }

    v9 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFramePathFillRule");
    if (v9)
    {
      LODWORD(valuePtr) = -1431655766;
      CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
      *(this + 9) = valuePtr;
    }

    v10 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFramePathWidth");
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberDoubleType, v5);
      if (*v5 < 0.0)
      {
        *v5 = 0.0;
      }
    }

    v11 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFrameClippingPaths");
    TCFRef<__CTFont const*>::Retain(this + 12, v11);
    if (!atomic_load_explicit(this + 12, memory_order_acquire))
    {
      v15 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFramePathClippingPath");
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CGPathGetTypeID())
        {
          v29 = v16;
          valuePtr = @"CTFramePathClippingPath";
          v18 = *MEMORY[0x1E695E480];
          v19 = CFDictionaryCreate(*MEMORY[0x1E695E480], &valuePtr, &v29, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          valuePtr = v19;
          v20 = CFArrayCreate(v18, &valuePtr, 1, MEMORY[0x1E695E9C0]);
          TCFRef<__CTFont const*>::Retain(this + 12, v20);
        }

        else
        {
          CFLog();
        }
      }
    }

    v12 = atomic_load_explicit(v7, memory_order_acquire);
    if (v12)
    {
      v13 = v12;
      Count = CFArrayGetCount(v12);

      if (Count >= 1)
      {
        *(this + 32) = 0;
      }
    }

    else
    {
    }

    v21 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFrameMaximumNumberOfLines");
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberLongType, this + 152);
    }

    v22 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFrameHangingDescenders");
    if (v22)
    {
      *(this + 160) = CFBooleanGetValue(v22) != 0;
    }

    v23 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFrameHangingLeading");
    if (v23)
    {
      *(this + 161) = CFBooleanGetValue(v23) != 0;
    }

    v24 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFrameIntegerLineMetrics");
    if (v24)
    {
      *(this + 162) = CFBooleanGetValue(v24) != 0;
    }

    v25 = CFDictionaryGetValue(atomic_load_explicit(this + 11, memory_order_acquire), @"CTFrameForceNonRectPath");
    if (v25)
    {
      *(this + 163) = CFBooleanGetValue(v25) != 0;
    }
  }

  v26 = atomic_load_explicit(v7, memory_order_acquire);
  v27 = v26;
  v28 = (!v26 || !CFArrayGetCount(v26)) && (*(this + 163) & 1) == 0 && CGPathIsRect(atomic_load_explicit(this + 10, memory_order_acquire), (this + 48));
  *(this + 32) = v28;

  if ((*(this + 32) & 1) == 0)
  {
    *(this + 48) = CGPathGetBoundingBox(atomic_load_explicit(this + 10, memory_order_acquire));
  }
}

void TFramesetter::FrameInRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6)
{
  v118 = *MEMORY[0x1E69E9840];
  v104 = *(a2 + 144);
  v9 = (*(*a1 + 16))(a1);
  v10 = *(a2 + 40);
  x = *(a2 + 48);
  v12 = v10 * 0.5;
  y = *(a2 + 56);
  width = *(a2 + 64);
  v96 = a2;
  height = *(a2 + 72);
  if (v10 != 0.0)
  {
    v122 = CGRectInset(*(a2 + 48), v12, v12);
    x = v122.origin.x;
    y = v122.origin.y;
    width = v122.size.width;
    height = v122.size.height;
  }

  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  v16 = CGRectGetHeight(v123);
  v124.origin.x = x;
  v124.origin.y = y;
  v124.size.width = width;
  v124.size.height = height;
  v17 = CGRectGetWidth(v124);
  v18 = v17;
  if (v104)
  {
    v17 = v16;
  }

  v97 = v17;
  v93 = v16;
  v95 = v18;
  if (v104)
  {
    v16 = v18;
  }

  if (a3)
  {
    IsParagraphSeparator = TCharStream::IsParagraphSeparator(*v9, a3 - 1);
  }

  else
  {
    IsParagraphSeparator = 1;
  }

  v19 = *(a2 + 152);
  v101 = *(v96 + 162);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  __p = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v90 = a4;
  v91 = a3;
  if (a4 >= 1)
  {
    v92 = v12;
    v20 = 0;
    v21 = 0.0;
    if (v104 == 2)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v16;
    }

    v99 = v19 - 1;
    v103 = 1;
    v100 = v19;
    while (1)
    {
      AttributesAtCharIndex = TLine::GetAttributesAtCharIndex(v9, a3);
      v25 = AttributesAtCharIndex;
      if (AttributesAtCharIndex)
      {
        AttributesAtCharIndex = *(AttributesAtCharIndex + 16);
        if (AttributesAtCharIndex)
        {
          LODWORD(AttributesAtCharIndex) = TParagraphStyle::GetLineBreakMode(AttributesAtCharIndex, v24);
        }
      }

      if (AttributesAtCharIndex <= 2)
      {
        v26 = AttributesAtCharIndex;
      }

      else
      {
        v26 = 0;
      }

      if (AttributesAtCharIndex >= 3)
      {
        v27 = AttributesAtCharIndex;
      }

      else
      {
        v27 = 4;
      }

      if (v99 == v20)
      {
        v26 = v27;
      }

      if (v19 >= 1)
      {
        v28 = v26;
      }

      else
      {
        v28 = AttributesAtCharIndex;
      }

      HeadIndent = TFramesetter::GetHeadIndent(v25, IsParagraphSeparator);
      v31 = 0.0;
      if (v25 && (v32 = *(v25 + 16)) != 0 && (TailIndent = TParagraphStyle::GetTailIndent(v32, v29), v31 = TailIndent, TailIndent > 0.0))
      {
        v34 = TailIndent - HeadIndent;
      }

      else
      {
        v34 = v97 - HeadIndent + v31;
      }

      if (v28 <= 1)
      {
        v35 = v34;
      }

      else
      {
        v35 = 1.79769313e308;
      }

      if (v28 == 1)
      {
        v115 = 0;
        v36 = v114;
        v37 = TTypesetter::SuggestClusterBreak(v9, a3, v114, v34, HeadIndent);
      }

      else
      {
        v117 = 0;
        v36 = v116;
        v37 = TTypesetter::SuggestLineBreak(v9, a3, v116, v35, HeadIndent);
      }

      v39 = v37;
      v98 = v38;
      std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v36);
      if (v39 < 0)
      {
        v40 = a4;
      }

      else
      {
        v40 = v39;
      }

      if (v40 >= a4)
      {
        v41 = a4;
      }

      else
      {
        v41 = v40;
      }

      v108 = 0xAAAAAAAAAAAAAAAALL;
      TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>(v9, v106);
      v108 = atomic_exchange(v106, 0);

      if (!atomic_load_explicit(&v108, memory_order_acquire))
      {
        v63 = a3;
        v64 = v98;

        v19 = v100;
        goto LABEL_71;
      }

      v42 = *(atomic_load_explicit(&v108, memory_order_acquire) + 40);
      v43 = a3;
      v120.location = a3;
      v120.length = v41;
      TTypesetter::FillLine(v9, v42, v120, v35, HeadIndent);
      v107 = 0xAAAAAAAAAAAAAAAALL;
      ExternalizeLine(&v108);
      v107 = v44;
      v45 = *(v42 + 76);
      v47 = TFramesetter::ParagraphEndsWith(v42, *v9, v46);
      *&v48 = -1;
      *(&v48 + 1) = -1;
      *&v106[16] = v48;
      *&v106[32] = v48;
      *v106 = v48;
      TFramesetter::GetLineMetrics(v106, v42, v103 & 1, IsParagraphSeparator, v47, v101);
      v49 = *&v106[24];
      if (v104 == 2)
      {
        v50 = a5;
        v51 = *&v106[40];
        v52 = *v106;
        if (*v106 + *&v106[40] + *&v106[24] + v21 + *a5 - v95 > 0.0002)
        {
          goto LABEL_64;
        }

        v53 = *&v106[8];
        v54 = v21 + *&v106[24] + *&v106[8];
        v55 = *a5 + v54;
        v22 = v22 + v54;
        v56 = *v106;
      }

      else
      {
        v56 = *v106;
        v57 = v21 + *&v106[24] + *v106;
        v50 = a5;
        v55 = *a5 + v57;
        if (v55 > v16)
        {
          goto LABEL_64;
        }

        v51 = *&v106[40];
        if ((*(v96 + 160) & 1) == 0 && v55 + *&v106[40] - v16 > 0.0002)
        {
          goto LABEL_64;
        }

        if ((*(v96 + 161) & 1) == 0 && v55 + *&v106[40] + *&v106[16] - v16 > 0.0002)
        {
          goto LABEL_64;
        }

        v22 = v22 - v57;
        v52 = *&v106[8];
        v53 = *&v106[8];
      }

      if ((v45 & 8) != 0)
      {
        v58 = v31;
      }

      else
      {
        v58 = HeadIndent;
      }

      *v50 = v55;
      *a6 = v56;
      *(a6 + 8) = v53;
      v59 = *&v106[16];
      v60 = *&v106[32];
      *(a6 + 16) = *&v106[16];
      *(a6 + 24) = v49;
      *(a6 + 32) = v60;
      *(a6 + 40) = v51;
      v61 = v93;
      if (!v104)
      {
        v61 = v58;
      }

      if (TFramesetter::AppendLine(v25, v104 == 0, (v45 & 8) >> 3, v47, v28, v20, &v107, &Mutable, v34, v92 + v61, v92 + v22, &__p, &v109))
      {
        a4 -= v41;
        a3 = v41 + v43;
        v19 = v100;
        if (v52 + v59 + v60 + *v50 >= v16)
        {
          v62 = 0;
        }

        else
        {
          v103 = 0;
          v62 = 1;
          IsParagraphSeparator = v47;
          v21 = v52 + v59 + v60;
        }

        goto LABEL_65;
      }

LABEL_64:
      v62 = 0;
      v19 = v100;
      a3 = v43;
LABEL_65:

      if (v62)
      {
        ++v20;
        if (a4 > 0)
        {
          continue;
        }
      }

      v63 = a3;
      v64 = v98;
      goto LABEL_71;
    }
  }

  v64 = 0;
  v63 = a3;
LABEL_71:
  Count = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
  if (!v19 && a4 >= 1)
  {
    v66 = Count - 1;
    if (Count >= 1)
    {
      v67 = *(CFArrayGetValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), v66) + 5);
      TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>(v9, v106);
      v68 = atomic_exchange(v106, 0);

      if (!v68)
      {
LABEL_90:

        goto LABEL_91;
      }

      if (v66 >= (v111 - __p) >> 4)
      {
        __break(1u);
      }

      v69 = *(__p + 2 * v66);
      v70 = v97 - v69;
      v71 = *(v67 + 72);
      v121.length = *(v67 + 80) + a4;
      v121.location = v71;
      TTypesetter::FillLine(v9, v68[5], v121, v97 - v69, v69);
      v72 = TLine::GetAttributesAtCharIndex(v9, v71);
      if (v72 && (v74 = *(v72 + 128)) != 0)
      {
        LineBreakMode = TParagraphStyle::GetLineBreakMode(v74, v73);
        if (LineBreakMode <= 2u)
        {
          v76 = 1;
        }

        else
        {
          v76 = LineBreakMode - 3;
        }

        if ((v64 & 2) == 0)
        {
LABEL_88:
          TruncatedLine = CreateTruncatedLine(v68, v76, 0, 0, v70);
          if (TruncatedLine)
          {
            v89 = TruncatedLine;
            CFArraySetValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), v66, TruncatedLine);
            CFRelease(v89);
          }

          goto LABEL_90;
        }
      }

      else
      {
        v76 = 1;
        if ((v64 & 2) == 0)
        {
          goto LABEL_88;
        }
      }

      if (v76 == 1)
      {
        v108 = 0xAAAAAAAAAAAAAAAALL;
        TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>(v9, v106);
        v108 = atomic_exchange(v106, 0);

        if (atomic_load_explicit(&v108, memory_order_acquire))
        {
          TCharStream::GetRangeOfParagraphSeparatorAtIndex(*v9, *(v67 + 72) + *(v67 + 80) - 1, v77, v78, v79, v80, v81, v82);
          v84 = v83;
          *v106 = -1;
          *&v85 = 0xAAAAAAAAAAAAAAAALL;
          *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v106[8] = v85;
          *&v106[24] = v85;
          TTruncator::TTruncator(v106, v68, *(atomic_load_explicit(&v108, memory_order_acquire) + 40));
          v119.location = *(v67 + 72) - v84 + *(v67 + 80);
          v119.length = v84 + a4;
          TTruncator::AppendToken(v106, v119, v70);
          ExternalizeLine(&v108);
          v87 = v86;
          CFArraySetValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), v66, v86);
          CFRelease(v87);
        }

        goto LABEL_90;
      }

      goto LABEL_88;
    }
  }

LABEL_91:
  TFrame::SetLines(v96, atomic_load_explicit(&Mutable, memory_order_acquire), &__p, atomic_load_explicit(&v109, memory_order_acquire), v91, v90, v91, v63 - v91);

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }
}

id TParagraphStyle::GetLineBreakMode(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    return *(TParagraphStyle::GetNative(v4, a2) + 32);
  }

  return [(TParagraphStyle *)v4 lineBreakMode];
}

double TParagraphStyle::GetTailIndent(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    Native = TParagraphStyle::GetNative(v4, a2);
    if (*Native)
    {
      return *(*Native + 16);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 tailIndent];
  }

  return result;
}

double TParagraphStyle::GetFirstLineHeadIndent(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    Native = TParagraphStyle::GetNative(v4, a2);
    if (*Native)
    {
      return **Native;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 firstLineHeadIndent];
  }

  return result;
}

double TFramesetter::GetHeadIndent(TFramesetter *this, const TAttributes *a2)
{
  if (this)
  {
    v2 = *(this + 16);
    if (a2)
    {
      if (v2)
      {
        return TParagraphStyle::GetFirstLineHeadIndent(v2, a2);
      }
    }

    else if (v2)
    {
      return TParagraphStyle::GetHeadIndent(v2, a2);
    }
  }

  return 0.0;
}

unint64_t TFramesetter::ParagraphEndsWith(TFramesetter *this, const TLine *a2, const TCharStream *a3)
{
  v3 = *(this + 10) + *(this + 9);
  if (v3 == *(a2 + 2))
  {
    return 1;
  }

  v7 = *(this + 2);
  v6 = *(this + 3);
  v8 = v6 - v7;
  if (v6 == v7)
  {
    return 0;
  }

  v10 = v3 - 1;
  result = TLine::FindRunWithCharIndex(this, v3 - 1, 1);
  if (result >= v8 >> 3)
  {
    return 0;
  }

  v11 = *(this + 2);
  if (result >= (*(this + 3) - v11) >> 3)
  {
    __break(1u);
  }

  else
  {
    v12 = *(*(v11 + 8 * result) + 40);
    if ((*(*(*(v12 + 216) + 40) + 4 * *(v12 + 200) + 4 * TRun::GetGlyphIndexForCharIndex<false>(v12, v10)) & 2) == 0)
    {
      return 0;
    }

    return TCharStream::IsParagraphSeparator(a2, v10);
  }

  return result;
}

void TFramesetter::GetLineMetrics(int8x16_t *this, TLine *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a2 + 15);
  if (*(a2 + 16) == -1.79769313e308)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *(a2 + 16);
  }

  this->i64[0] = *(a2 + 14);
  this->i64[1] = v6;
  *this[1].i64 = v7;
  this[1].i64[1] = 0;
  this[2].i64[0] = 0;
  this[2].i64[1] = v6;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = v9 - v8;
  if (v9 == v8)
  {
    return;
  }

  *&rect.origin.y = __PAIR64__(a4, a3);
  *&rect.size.width = __PAIR64__(a6, a5);
  v13 = *(*v8 + 40);
  v14 = *(v13 + 168);
  if (v14)
  {
    LineBoundsOptions = TParagraphStyle::GetLineBoundsOptions(v14, a2);
    v16 = LineBoundsOptions;
    if ((LineBoundsOptions & 0x20) != 0)
    {
      TLine::GetBounds(a2, LineBoundsOptions | 1);
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      TLine::GetBounds(a2, v16 & 0xFFFFFFFFFFFFFFFELL);
      rect.origin.x = v35;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v48.origin.x = v28;
      v48.origin.y = v30;
      v48.size.width = v32;
      v48.size.height = v34;
      *this->i64 = CGRectGetMaxY(v48);
      v49.origin.x = v28;
      v49.origin.y = v30;
      v49.size.width = v32;
      v49.size.height = v34;
      *&v42 = fabs(CGRectGetMinX(v49));
      this->i64[1] = v42;
      this[2].i64[1] = v42;
      v50.origin.x = rect.origin.x;
      v50.origin.y = v37;
      v50.size.width = v39;
      v50.size.height = v41;
      v43 = fabs(CGRectGetMinX(v50)) - *&v42;
      if (v43 < 0.0)
      {
        v43 = 0.0;
      }

      if (v7 < 0.0)
      {
        v43 = v7 + v43;
      }

      *this[1].i64 = v43;
      goto LABEL_28;
    }
  }

  if (v10 >> 3 < 1)
  {
LABEL_28:
    ApplyParagraphStyleSettings(v13 + 40, LODWORD(rect.origin.y), SHIDWORD(rect.origin.y), SLODWORD(rect.size.width), SHIDWORD(rect.size.width), this, a2);
    return;
  }

  v17 = 0;
  while (1)
  {
    v18 = *(a2 + 2);
    if (v17 >= (*(a2 + 3) - v18) >> 3)
    {
      break;
    }

    v19 = *(*(v18 + 8 * v17) + 40);
    v20 = v19[20];
    if (v20)
    {
      v21 = *(v20 + 48);
    }

    else
    {
      v21 = 0.0;
    }

    v22 = *(atomic_load_explicit(v19 + 7, memory_order_acquire) + 40);
    v46 = NAN;
    v47 = NAN;
    v45 = NAN;
    if (TFont::IsSystemUIFontAndForShaping(v22, &rect.size.height))
    {
      rect.size.height = -3.72066208e-103;
      TAttributes::OriginalFont(v19 + 5, &rect.size.height);
      if (atomic_load_explicit(&rect.size.height, memory_order_acquire))
      {
        TFont::GetDefaultMetrics(*(atomic_load_explicit(&rect.size.height, memory_order_acquire) + 40), &v47, &v46, &v45);
        v23.f64[0] = v21 + v47;
        v23.f64[1] = v46 - v21;
        *this = vbslq_s8(vcgtq_f64(v23, *this), v23, *this);
        v24 = *this[1].i64;
        if (v24 < v45)
        {
          v24 = v45;
        }

        *this[1].i64 = v24;
      }
    }

    TFont::GetDefaultMetrics(v22, &v47, &v46, &v45);
    v25.f64[0] = v21 + v47;
    v25.f64[1] = v46 - v21;
    *this = vbslq_s8(vcgtq_f64(v25, *this), v25, *this);
    v26 = *this[1].i64;
    if (v26 < v45)
    {
      v26 = v45;
    }

    *this[1].i64 = v26;
    if (v10 >> 3 == ++v17)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void ApplyParagraphStyleSettings(uint64_t a1, const void *a2, int a3, int a4, int a5, float64x2_t *a6, uint64_t a7)
{
  v12 = a2;
  if (a5)
  {
    __asm { FMOV            V1.2D, #0.5 }

    *a6 = vrndmq_f64(vaddq_f64(*a6, _Q1));
    v18 = a6[1].f64[0];
    v19 = floor(v18 + 0.5);
    if (v18 > 0.0)
    {
      v18 = v19;
    }

    a6[1].f64[0] = v18;
    if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
    {
      dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
    }

    if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 2) == 0)
    {
      a6[2].f64[1] = a6->f64[1];
    }
  }

  v20 = *(a1 + 128);
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  if (v20 && ((LineHeightMultiple = TParagraphStyle::GetLineHeightMultiple(v20, a2), v27 = *(a1 + 128), LineHeightMultiple >= 0.0) ? (v23 = LineHeightMultiple) : (v23 = 0.0), v27 && ((MaximumLineHeight = TParagraphStyle::GetMaximumLineHeight(v27, v25), v30 = *(a1 + 128), MaximumLineHeight >= 0.0) ? (v24 = MaximumLineHeight) : (v24 = 0.0), v30 && ((MinimumLineHeight = TParagraphStyle::GetMinimumLineHeight(v30, v28), v33 = *(a1 + 128), ParagraphSpacingBefore = 0.0, MinimumLineHeight >= 0.0) ? (v22 = MinimumLineHeight) : (v22 = 0.0), v33))))
  {
    LineSpacingAdjustment = TParagraphStyle::GetLineSpacingAdjustment(v33, v31);
    v37 = *(a1 + 128);
    f64 = a6[1].f64;
    v39 = LineSpacingAdjustment + a6[1].f64[0];
    a6[1].f64[0] = v39;
    v40 = 10000000.0;
    if (v37)
    {
      v41 = 0.0;
      if (*(v37 + 8) == 1)
      {
        v42 = TParagraphStyle::GetNative(*v37, v35)[1];
        v41 = 0.0;
        if (v42)
        {
          v41 = *(v42 + 40);
        }
      }

      if (v41 >= v39 && v41 != 0.0)
      {
        v39 = v41;
      }

      v44 = *(a1 + 128);
      if (v44)
      {
        v40 = 10000000.0;
        if (*(v44 + 8) == 1)
        {
          v45 = TParagraphStyle::GetNative(*v44, v35)[1];
          if (v45)
          {
            v40 = *(v45 + 32);
          }
        }

        v46 = *(a1 + 128);
        if (v46)
        {
          ParagraphSpacing = TParagraphStyle::GetParagraphSpacing(v46, v35);
          v49 = *(a1 + 128);
          v21 = ParagraphSpacing >= 0.0 ? ParagraphSpacing : 0.0;
          if (v49)
          {
            ParagraphSpacingBefore = TParagraphStyle::GetParagraphSpacingBefore(v49, v47);
          }
        }
      }
    }
  }

  else
  {
    f64 = a6[1].f64;
    v39 = a6[1].f64[0] + 0.0;
    a6[1].f64[0] = v39;
    v40 = 10000000.0;
    ParagraphSpacingBefore = 0.0;
  }

  if (ParagraphSpacingBefore < 0.0)
  {
    ParagraphSpacingBefore = 0.0;
  }

  v50 = a6->f64[0];
  v51 = a6->f64[1];
  if (v23 > 0.0)
  {
    v50 = v50 - (v50 + v51 - v23 * (v50 + v51));
    a6->f64[0] = v50;
  }

  v52 = v51 + v50;
  v53 = v52 <= v24 || v24 <= 0.0;
  v54 = v52 - v24;
  if (v53)
  {
    v54 = 0.0;
  }

  if (v52 >= v22 || v22 <= 0.0)
  {
    v56 = v54;
  }

  else
  {
    v56 = v52 - v22;
  }

  if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
  {
    dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
  }

  if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 2) == 0)
  {
    a6->f64[0] = a6->f64[0] - v56;
    goto LABEL_69;
  }

  if (v56 == 0.0)
  {
    if (a7)
    {
      v61 = a6[2].f64[1];
      if (v61 != a6->f64[1])
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
    v57 = v56 * 0.5;
    v58 = floor(v56 * 0.5 + 0.5);
    if (a5)
    {
      v57 = v58;
    }

    v59 = a6->f64[0] - v57;
    v60 = a6->f64[1] - (v56 - v57);
    a6->f64[0] = v59;
    a6->f64[1] = v60;
    a6[2].f64[1] = v60;
    if (a7)
    {
      *(a7 + 112) = v59;
      v61 = a6->f64[1];
LABEL_68:
      *(a7 + 120) = v61;
    }
  }

LABEL_69:
  v62 = *f64;
  if (*f64 < v39)
  {
    v62 = v39;
  }

  if (v40 < v62)
  {
    v62 = v40;
  }

  *f64 = v62;
  if (a3 && (v12 & 1) == 0)
  {
    a6[1].f64[1] = ParagraphSpacingBefore;
  }

  if (a4)
  {
    a6[2].f64[0] = v21;
  }
}

double TParagraphStyle::GetLineHeightMultiple(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    v5 = TParagraphStyle::GetNative(v4, a2)[1];
    if (v5)
    {
      return *v5;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 lineHeightMultiple];
  }

  return result;
}

double TParagraphStyle::GetMaximumLineHeight(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    v5 = TParagraphStyle::GetNative(v4, a2)[1];
    if (v5)
    {
      return *(v5 + 8);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 maximumLineHeight];
  }

  return result;
}

double TParagraphStyle::GetMinimumLineHeight(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    v5 = TParagraphStyle::GetNative(v4, a2)[1];
    if (v5)
    {
      return *(v5 + 16);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 minimumLineHeight];
  }

  return result;
}

double TParagraphStyle::GetLineSpacingAdjustment(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    v5 = TParagraphStyle::GetNative(v4, a2)[1];
    if (v5)
    {
      return *(v5 + 24);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 lineSpacing];
  }

  return result;
}

double TParagraphStyle::GetParagraphSpacing(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    v5 = TParagraphStyle::GetNative(v4, a2)[1];
    if (v5)
    {
      return *(v5 + 48);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 paragraphSpacing];
  }

  return result;
}

double TParagraphStyle::GetParagraphSpacingBefore(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    v5 = TParagraphStyle::GetNative(v4, a2)[1];
    if (v5)
    {
      return *(v5 + 56);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 paragraphSpacingBefore];
  }

  return result;
}

uint64_t TFramesetter::AppendLine(uint64_t a1, int a2, unsigned __int8 a3, int a4, unsigned int a5, CFIndex a6, atomic_ullong *a7, atomic_ullong *a8, double a9, double a10, double a11, const void **a12, atomic_ullong *a13)
{
  v24 = (a5 - 3);
  if (a5 >= 3)
  {
    TruncatedLine = CreateTruncatedLine(atomic_load_explicit(a7, memory_order_acquire), v24, 0, 0, a9);
    if (!TruncatedLine)
    {
      return 0;
    }
  }

  v26 = 0.0;
  if (a1)
  {
    v27 = *(a1 + 128);
    if (v27)
    {
      Alignment = TParagraphStyle::GetAlignment(v27, v24);
      if (a4)
      {
        v29 = 4;
      }

      else
      {
        v29 = 3;
      }

      if (Alignment == 3)
      {
        v30 = v29;
      }

      else
      {
        v30 = Alignment;
      }

      if (v30 == 5)
      {
        v30 = a3 ^ 1;
LABEL_16:
        if (v30 - 1 >= 2)
        {
          if (v30 == 3)
          {
            JustifiedLine = CTLineCreateJustifiedLine(atomic_load_explicit(a7, memory_order_acquire), 1.0, a9);
            if (JustifiedLine)
            {
              TCFRef<__CTFont const*>::Retain(a7, JustifiedLine);
            }
          }
        }

        else
        {
          explicit = atomic_load_explicit(a7, memory_order_acquire);
          v32 = 0.5;
          if (v30 == 1)
          {
            v32 = 1.0;
          }

          PenOffsetForFlush = CTLineGetPenOffsetForFlush(explicit, v32, a9);
          v26 = PenOffsetForFlush;
          v34 = *(a1 + 120);
          if (v34)
          {
            v35 = floor(PenOffsetForFlush);
            if ((*(v34 + 66) & 0x10) != 0)
            {
              v26 = v35;
            }
          }
        }

        goto LABEL_27;
      }

      if (v30 != 4)
      {
        goto LABEL_16;
      }
    }

    v30 = a3;
    goto LABEL_16;
  }

LABEL_27:
  if (!atomic_load_explicit(a7, memory_order_acquire))
  {
    return 0;
  }

  v37 = atomic_load_explicit(a7, memory_order_acquire);
  CFArrayAppendValue(atomic_load_explicit(a8, memory_order_acquire), v37);

  v38 = a10 + v26;
  if (a2)
  {
    v39 = a11;
  }

  else
  {
    v39 = a10 - v26;
  }

  if (a2)
  {
    a11 = v38;
  }

  v41 = a12[1];
  v40 = a12[2];
  if (v41 >= v40)
  {
    v44 = *a12;
    v45 = v41 - *a12;
    v46 = v45 >> 4;
    v47 = (v45 >> 4) + 1;
    if (v47 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v48 = v40 - v44;
    if (v48 >> 3 > v47)
    {
      v47 = v48 >> 3;
    }

    v49 = v48 >= 0x7FFFFFFFFFFFFFF0;
    v50 = 0xFFFFFFFFFFFFFFFLL;
    if (!v49)
    {
      v50 = v47;
    }

    if (v50)
    {
      std::allocator<CGSize>::allocate_at_least[abi:fn200100](a12, v50);
    }

    v51 = (16 * v46);
    *v51 = a11;
    v51[1] = v39;
    v42 = 16 * v46 + 16;
    memcpy(0, v44, v45);
    v52 = *a12;
    *a12 = 0;
    a12[1] = v42;
    a12[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v41 = a11;
    v41[1] = v39;
    v42 = (v41 + 2);
  }

  a12[1] = v42;
  if (a5 != 2)
  {
    return 1;
  }

  if (!atomic_load_explicit(a13, memory_order_acquire))
  {
  }

  v53 = atomic_load_explicit(a13, memory_order_acquire);
  Count = CFArrayGetCount(atomic_load_explicit(a8, memory_order_acquire));
  CFBitVectorSetCount(v53, Count);
  v43 = 1;
  CFBitVectorSetBitAtIndex(atomic_load_explicit(a13, memory_order_acquire), a6, 1u);
  return v43;
}

uint64_t TParagraphStyle::GetAlignment(TParagraphStyle *this, const void *a2)
{
  v2 = *(this + 8);
  v3 = *this;
  if (v2)
  {
    LOBYTE(v4) = *(TParagraphStyle::GetNative(v3, a2) + 33);
  }

  else
  {
    v5 = [(TParagraphStyle *)v3 alignment];
    v4 = 0x403010200uLL >> (8 * (v5 & 0x1F));
    if (v5 >= 5)
    {
      LOBYTE(v4) = v5;
    }
  }

  return v4;
}

void std::allocator<CGSize>::allocate_at_least[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

double TParagraphStyle::GetHeadIndent(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    Native = TParagraphStyle::GetNative(v4, a2);
    if (*Native)
    {
      return *(*Native + 8);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    [(TParagraphStyle *)v4 headIndent];
  }

  return result;
}

void TFrame::SetLines(void *a1, void *a2, char **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a5;
  a1[1] = a6;
  a1[2] = a7;
  a1[3] = a8;
  TCFRef<__CTFont const*>::Retain(a1 + 13, a2);
  if (a1 + 14 != a3)
  {
    std::vector<CGPoint>::__assign_with_size[abi:fn200100]<CGPoint*,CGPoint*>(a1 + 14, *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  TCFRef<__CTFont const*>::Retain(a1 + 17, a4);
}

void *std::vector<CGPoint>::__assign_with_size[abi:fn200100]<CGPoint*,CGPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CGSize>::__vallocate[abi:fn200100](v7, v11);
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::vector<CGSize>::__vallocate[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<CGSize>::allocate_at_least[abi:fn200100](a1, a2);
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

const void *TFrame::GetLineAtIndex(atomic_ullong *this, CFIndex a2)
{
  v3 = atomic_load_explicit(this + 13, memory_order_acquire);
  v4 = v3;
  if (v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, a2);
  }

  else
  {
    ValueAtIndex = 0;
  }

  return ValueAtIndex;
}

void std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    *v17 = v6;
    v7 = v5 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = v4 - *a1;
    if (v8 <= a2 + (v7 >> 1))
    {
      v9 = a2 + (v7 >> 1);
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&v16, v10, v7 >> 1, a1 + 24);
    v11 = v17[0];
    bzero(v17[0], 2 * a2);
    v17[0] = &v11[2 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = *(&v16 + 1) - v12;
    memcpy((*(&v16 + 1) - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = *v17;
    v17[0] = v14;
    v17[1] = v15;
    *&v16 = v14;
    *(&v16 + 1) = v14;
    std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&v16);
  }
}

void std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__append(a1, a2 - v2);
  }
}

uint64_t TCharStream::LazyCopy(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(a4, a3);
  (*(*a1 + 24))(a1, a2, a3, *a4);
  return *a4;
}

BOOL TCharStream::IsParagraphSeparator(TCharStream *this, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v2;
  v11[3] = v2;
  v11[0] = v2;
  v11[1] = v2;
  memset(v10, 0, sizeof(v10));
  v12 = v11;
  v3 = (*(*this + 72))(this, a2, 1, v10);
  v7 = 0;
  if (v3)
  {
    v4 = *v3;
    v5 = v4 == 10 || v4 == 13;
    if (v5 || v4 == 8233)
    {
      v7 = 1;
    }
  }

  v9 = v10;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v9);
  return v7;
}

void TCFBase<TFrame>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);

  v4 = *(v3 + 112);
  if (v4)
  {
    *(v3 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(v3 + 80);
}

CTFrameRef CTFramesetterCreateFrame(CTFramesetterRef framesetter, CFRange stringRange, CGPathRef path, CFDictionaryRef frameAttributes)
{
  v4 = 0;
  if (framesetter && path)
  {
    length = stringRange.length;
    location = stringRange.location;
    v9 = *(framesetter + 5);
    v10 = *(*((*(*v9 + 16))(v9) + 216) + 16);
    if (location + length > v10)
    {
      return 0;
    }

    else
    {
      v11 = v10 - location;
      v16 = -1;
      memset(&v15[1], 0, 32);
      if (length)
      {
        v12 = length;
      }

      else
      {
        v12 = v11;
      }

      v15[0] = 0uLL;
      TFramesetter::CreateFrame(v9, location, v12, path, frameAttributes, &v16, v15, &v14);
      v4 = atomic_exchange(&v14, 0);
    }
  }

  return v4;
}

void CTFrameGetLineOrigins(CTFrameRef frame, CFRange range, CGPoint *origins)
{
  if (frame)
  {
    length = range.length;
    location = range.location;
    v6 = *(frame + 5);
    Count = CFArrayGetCount(atomic_load_explicit((v6 + 104), memory_order_acquire));
    if (location + length <= Count)
    {
      v8 = Count - location;
      if (length)
      {
        v8 = length;
      }

      if (v8)
      {
        v9 = (*(v6 + 112) + 16 * location);

        memmove(origins, v9, 16 * v8);
      }
    }
  }
}

void TFrame::DrawFrame(atomic_ullong *this, CGContext *a2)
{
  if (!*(this + 36))
  {
    Count = CFArrayGetCount(atomic_load_explicit(this + 13, memory_order_acquire));
    if (Count < 1)
    {
      return;
    }

    v5 = Count;
    v6 = 0;
    v7 = 0;
    v8 = *(this + 6);
    v9 = *(this + 7);
    while (1)
    {
      v10 = *(TFrame::GetLineAtIndex(this, v7) + 5);
      if (!atomic_load_explicit(this + 17, memory_order_acquire) || CFBitVectorGetCount(atomic_load_explicit(this + 17, memory_order_acquire)) <= v7)
      {
        break;
      }

      BitAtIndex = CFBitVectorGetBitAtIndex(atomic_load_explicit(this + 17, memory_order_acquire), v7);
      v12 = this[14];
      if (v7 >= (this[15] - v12) >> 4)
      {
        goto LABEL_17;
      }

      v13 = BitAtIndex;
      CGContextSetTextPosition(a2, v8 + *(v12 + v6), v9 + *(v12 + v6 + 8));
      if (!v13)
      {
        goto LABEL_14;
      }

      CGContextSaveGState(a2);
      BoundingBox = CGPathGetBoundingBox(atomic_load_explicit(this + 10, memory_order_acquire));
      CGContextClipToRect(a2, BoundingBox);
      TLine::DrawGlyphs(v10, a2);
      CGContextRestoreGState(a2);
LABEL_15:
      ++v7;
      v6 += 16;
      if (v5 == v7)
      {
        return;
      }
    }

    v14 = this[14];
    if (v7 >= (this[15] - v14) >> 4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    CGContextSetTextPosition(a2, v8 + *(v14 + v6), v9 + *(v14 + v6 + 8));
LABEL_14:
    TLine::DrawGlyphs(v10, a2);
    goto LABEL_15;
  }

  TFrame::DrawFrameVertical(this, a2);
}

void CTFrameDraw(CTFrameRef frame, CGContextRef context)
{
  if (frame)
  {
    if (context)
    {
      TFrame::DrawFrame(*(frame + 5), context);
    }
  }
}

uint64_t sub_18466C868@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_18466C8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869220);
  __swift_allocate_value_buffer(v0, qword_1EA869200);
  v1 = __swift_project_value_buffer(v0, qword_1EA869200);
  v2 = *MEMORY[0x1E6968710];
  v3 = sub_18473DBB4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(v1, v2, v3);
  v4 = *(v6 + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t static AttributeScopes.CoreTextAttributes.LineHeightAttribute.runBoundaries.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA8691F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869220);
  v3 = __swift_project_value_buffer(v2, qword_1EA869200);

  return sub_18466CAAC(v3, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18466CAAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18466CB1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA8691F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869220);
  v3 = __swift_project_value_buffer(v2, qword_1EA869200);

  return sub_18466CAAC(v3, a1);
}

BOOL static AttributedString.LineHeight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      if (v4 != 2 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 3 || *&v3 != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a1 + 8))
  {
    return v4 == 1 && v2 == v3;
  }

  return !*(a2 + 8) && v2 == v3;
}

uint64_t sub_18466CCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001847B84B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_18473DD14();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_18466CD58(uint64_t a1)
{
  v2 = sub_18466CF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18466CD94(uint64_t a1)
{
  v2 = sub_18466CF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributedString.LineHeight.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869228);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18466CF6C();
  sub_18473DD74();
  v11 = v8;
  v12 = v9;
  sub_18466CFC0();
  sub_18473DD04();
  return (*(v4 + 8))(v7, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_18466CF6C()
{
  result = qword_1EA869230;
  if (!qword_1EA869230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869230);
  }

  return result;
}

unint64_t sub_18466CFC0()
{
  result = qword_1EA869238;
  if (!qword_1EA869238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869238);
  }

  return result;
}

uint64_t AttributedString.LineHeight.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      return MEMORY[0x1865F04B0](0);
    }

    v2 = 3;
  }

  else if (*(v0 + 8))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1865F04B0](v2);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1865F04C0](v3);
}

uint64_t AttributedString.LineHeight.hashValue.getter()
{
  sub_18473DD24();
  AttributedString.LineHeight.hash(into:)();
  return sub_18473DD54();
}

uint64_t AttributedString.LineHeight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869240);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18466CF6C();
  sub_18473DD64();
  if (!v2)
  {
    sub_18466E034();
    sub_18473DCC4();
    (*(v6 + 8))(v9, v5);
    v10 = v13;
    *a2 = v12;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18466D280()
{
  sub_18473DD24();
  AttributedString.LineHeight.hash(into:)();
  return sub_18473DD54();
}

uint64_t sub_18466D2D8()
{
  sub_18473DD24();
  AttributedString.LineHeight.hash(into:)();
  return sub_18473DD54();
}

BOOL sub_18466D328(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      if (v4 != 2 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 3 || *&v3 != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a1 + 8))
  {
    return v4 == 1 && v2 == v3;
  }

  return !*(a2 + 8) && v2 == v3;
}

uint64_t sub_18466D3A4(void *a1, uint64_t a2, int a3)
{
  v40 = a3;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869280);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v36 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869288);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869290);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869298);
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v31 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8692A0);
  v19 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v20);
  v22 = &v31 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18466E44C();
  sub_18473DD74();
  if (v40 > 1u)
  {
    if (v40 != 2)
    {
      LOBYTE(v42) = 0;
      sub_18466E5F0();
      v30 = v41;
      sub_18473DCE4();
      (*(v31 + 8))(v18, v15);
      return (*(v19 + 8))(v22, v30);
    }

    LOBYTE(v42) = 3;
    sub_18466E4A0();
    v26 = v36;
    v27 = v41;
    sub_18473DCE4();
    v42 = v39;
    sub_18466E4F4();
    v28 = v38;
    sub_18473DD04();
    (*(v37 + 8))(v26, v28);
  }

  else
  {
    if (!v40)
    {
      LOBYTE(v42) = 1;
      sub_18466E59C();
      v23 = v41;
      sub_18473DCE4();
      v42 = v39;
      sub_18466E4F4();
      v24 = v33;
      sub_18473DD04();
      (*(v32 + 8))(v14, v24);
      return (*(v19 + 8))(v22, v23);
    }

    LOBYTE(v42) = 2;
    sub_18466E548();
    v27 = v41;
    sub_18473DCE4();
    v42 = v39;
    sub_18466E4F4();
    v29 = v35;
    sub_18473DD04();
    (*(v34 + 8))(v10, v29);
  }

  return (*(v19 + 8))(v22, v27);
}

uint64_t sub_18466D8E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      return MEMORY[0x1865F04B0](0);
    }

    v4 = 3;
  }

  else if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x1865F04B0](v4);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1865F04C0](v5);
}

uint64_t sub_18466D94C()
{
  v1 = *v0;
  sub_18473DD24();
  MEMORY[0x1865F04B0](v1);
  return sub_18473DD54();
}

uint64_t sub_18466D994()
{
  v1 = *v0;
  sub_18473DD24();
  MEMORY[0x1865F04B0](v1);
  return sub_18473DD54();
}

uint64_t sub_18466D9D8()
{
  v1 = 0x656C626169726176;
  v2 = 0x676E696461656CLL;
  if (*v0 != 2)
  {
    v2 = 0x7463617865;
  }

  if (*v0)
  {
    v1 = 0x656C7069746C756DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18466DA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18466E6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18466DA84(uint64_t a1)
{
  v2 = sub_18466E44C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18466DAC0(uint64_t a1)
{
  v2 = sub_18466E44C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18466DB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18473DD14();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18466DB94(uint64_t a1)
{
  v2 = sub_18466E4A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18466DBD0(uint64_t a1)
{
  v2 = sub_18466E4A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18466DC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6573616572636E69 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18473DD14();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18466DCAC(uint64_t a1)
{
  v2 = sub_18466E548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18466DCE8(uint64_t a1)
{
  v2 = sub_18466E548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18466DD24()
{
  sub_18473DD24();
  MEMORY[0x1865F04B0](0);
  return sub_18473DD54();
}

uint64_t sub_18466DD68()
{
  sub_18473DD24();
  MEMORY[0x1865F04B0](0);
  return sub_18473DD54();
}

uint64_t sub_18466DDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_18473DD14();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18466DE40(uint64_t a1)
{
  v2 = sub_18466E59C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18466DE7C(uint64_t a1)
{
  v2 = sub_18466E59C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18466DEC4(uint64_t a1)
{
  v2 = sub_18466E5F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18466DF00(uint64_t a1)
{
  v2 = sub_18466E5F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18466DF3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18466E824(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_18466DF8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18473DD24();
  sub_18466D8E0(v4, v1, v2);
  return sub_18473DD54();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_18466E034()
{
  result = qword_1EA869248;
  if (!qword_1EA869248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869248);
  }

  return result;
}

unint64_t sub_18466E08C()
{
  result = qword_1EA869250;
  if (!qword_1EA869250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869250);
  }

  return result;
}

unint64_t sub_18466E0E4()
{
  result = qword_1EA869258;
  if (!qword_1EA869258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869258);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18466E14C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18473DD24();
  sub_18466D8E0(v4, v1, v2);
  return sub_18473DD54();
}

id sub_18466E230()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18466E28C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_18466E2A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_18466E2F0()
{
  result = qword_1EA869260;
  if (!qword_1EA869260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869260);
  }

  return result;
}

unint64_t sub_18466E348()
{
  result = qword_1EA869268;
  if (!qword_1EA869268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869268);
  }

  return result;
}

unint64_t sub_18466E3A0()
{
  result = qword_1EA869270;
  if (!qword_1EA869270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869270);
  }

  return result;
}

unint64_t sub_18466E3F8()
{
  result = qword_1EA869278;
  if (!qword_1EA869278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869278);
  }

  return result;
}

unint64_t sub_18466E44C()
{
  result = qword_1EA8692A8;
  if (!qword_1EA8692A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8692A8);
  }

  return result;
}

unint64_t sub_18466E4A0()
{
  result = qword_1EA8692B0;
  if (!qword_1EA8692B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8692B0);
  }

  return result;
}

unint64_t sub_18466E4F4()
{
  result = qword_1EA8692B8;
  if (!qword_1EA8692B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8692B8);
  }

  return result;
}

unint64_t sub_18466E548()
{
  result = qword_1EA8692C0;
  if (!qword_1EA8692C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8692C0);
  }

  return result;
}

unint64_t sub_18466E59C()
{
  result = qword_1EA8692C8;
  if (!qword_1EA8692C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8692C8);
  }

  return result;
}

unint64_t sub_18466E5F0()
{
  result = qword_1EA8692D0;
  if (!qword_1EA8692D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8692D0);
  }

  return result;
}

uint64_t sub_18466E644(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 == 2)
      {
LABEL_7:
        v4 = *&a1;
        v5 = *&a3;
        return v4 == v5;
      }
    }

    else if (a4 == 3 && !a3)
    {
      return 1;
    }
  }

  else if (a2)
  {
    if (a4 == 1)
    {
      v4 = *&a1;
      v5 = *&a3;
      return v4 == v5;
    }
  }

  else if (!a4)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_18466E6C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C626169726176 && a2 == 0xE800000000000000;
  if (v4 || (sub_18473DD14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xE800000000000000 || (sub_18473DD14() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_18473DD14() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463617865 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_18473DD14();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_18466E824(void *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8692D8);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v2);
  v49 = &v39 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8692E0);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v48 = &v39 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8692E8);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8692F0);
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8692F8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_18466E44C();
  v19 = v51;
  sub_18473DD64();
  if (!v19)
  {
    v20 = v12;
    v40 = v9;
    v41 = 0;
    v21 = v48;
    v22 = v49;
    v23 = v50;
    v51 = v14;
    v24 = sub_18473DCD4();
    v25 = (2 * *(v24 + 16)) | 1;
    v53 = v24;
    v54 = v24 + 32;
    v55 = 0;
    v56 = v25;
    v26 = sub_184672038();
    if (v26 == 4 || v55 != v56 >> 1)
    {
      v14 = sub_18473DC84();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869300);
      *v29 = &_s10LineHeightV23BaselineIntervalStorageON;
      sub_18473DCA4();
      sub_18473DC74();
      (*(*(v14 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v14);
      swift_willThrow();
      (*(v51 + 8))(v17, v13);
      goto LABEL_9;
    }

    if (v26 <= 1u)
    {
      if (v26)
      {
        LOBYTE(v57) = 1;
        sub_18466E59C();
        v35 = v41;
        sub_18473DC94();
        if (!v35)
        {
          sub_18466F01C();
          v38 = v43;
          sub_18473DCC4();
          (*(v45 + 8))(v8, v38);
          (*(v51 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v14 = v57;
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_18466E5F0();
        v14 = v20;
        v27 = v41;
        sub_18473DC94();
        if (!v27)
        {
          (*(v42 + 8))(v20, v40);
          (*(v51 + 8))(v17, v13);
          swift_unknownObjectRelease();
          v14 = 0;
          goto LABEL_10;
        }
      }

      (*(v51 + 8))(v17, v13);
LABEL_9:
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v31 = v51;
    if (v26 == 2)
    {
      LOBYTE(v57) = 2;
      sub_18466E548();
      v32 = v41;
      sub_18473DC94();
      if (!v32)
      {
        sub_18466F01C();
        v33 = v44;
        sub_18473DCC4();
        (*(v47 + 8))(v21, v33);
        (*(v31 + 8))(v17, v13);
        swift_unknownObjectRelease();
        v14 = v57;
        goto LABEL_10;
      }

      v34 = *(v31 + 8);
      v14 = v31 + 8;
      v34(v17, v13);
      goto LABEL_9;
    }

    LOBYTE(v57) = 3;
    sub_18466E4A0();
    v36 = v41;
    sub_18473DC94();
    if (v36)
    {
      v37 = *(v31 + 8);
      v14 = v31 + 8;
      v37(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_18466F01C();
      sub_18473DCC4();
      (*(v46 + 8))(v22, v23);
      (*(v31 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v14 = v57;
    }
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v14;
}

unint64_t sub_18466F01C()
{
  result = qword_1EA869308;
  if (!qword_1EA869308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869308);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t _s10LineHeightV23BaselineIntervalStorageO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10LineHeightV23BaselineIntervalStorageO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s18CoreTextAttributesVwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s18CoreTextAttributesVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_18466F334()
{
  result = qword_1EA869310;
  if (!qword_1EA869310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869310);
  }

  return result;
}

unint64_t sub_18466F38C()
{
  result = qword_1EA869318;
  if (!qword_1EA869318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869318);
  }

  return result;
}

unint64_t sub_18466F3E4()
{
  result = qword_1EA869320;
  if (!qword_1EA869320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869320);
  }

  return result;
}

unint64_t sub_18466F43C()
{
  result = qword_1EA869328;
  if (!qword_1EA869328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869328);
  }

  return result;
}

unint64_t sub_18466F494()
{
  result = qword_1EA869330;
  if (!qword_1EA869330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869330);
  }

  return result;
}

unint64_t sub_18466F4EC()
{
  result = qword_1EA869338;
  if (!qword_1EA869338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869338);
  }

  return result;
}

unint64_t sub_18466F544()
{
  result = qword_1EA869340;
  if (!qword_1EA869340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869340);
  }

  return result;
}

unint64_t sub_18466F59C()
{
  result = qword_1EA869348;
  if (!qword_1EA869348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869348);
  }

  return result;
}

unint64_t sub_18466F5F4()
{
  result = qword_1EA869350;
  if (!qword_1EA869350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869350);
  }

  return result;
}

unint64_t sub_18466F64C()
{
  result = qword_1EA869358;
  if (!qword_1EA869358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869358);
  }

  return result;
}

unint64_t sub_18466F6A4()
{
  result = qword_1EA869360;
  if (!qword_1EA869360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869360);
  }

  return result;
}

unint64_t sub_18466F6FC()
{
  result = qword_1EA869368;
  if (!qword_1EA869368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869368);
  }

  return result;
}

unint64_t sub_18466F754()
{
  result = qword_1EA869370;
  if (!qword_1EA869370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869370);
  }

  return result;
}

unint64_t sub_18466F7AC()
{
  result = qword_1EA869378;
  if (!qword_1EA869378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869378);
  }

  return result;
}

void AttributedString.AdaptiveImageGlyph.init(_convertingFrom:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 imageContent];
  v5 = sub_18473DC14();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 contentIdentifier];
  v9 = sub_18473DC54();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = [a1 contentDescription];
  v13 = sub_18473DC54();
  v15 = v14;

  a2[4] = v13;
  a2[5] = v15;
}

uint64_t AttributedString.AdaptiveImageGlyph.init(imageContent:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = objc_allocWithZone(CTAdaptiveImageGlyph);
  sub_18466FA10(a1, a2);
  v7 = sub_18473DC04();
  v8 = [v6 initWithImageContent_];

  sub_18466FA64(a1, a2);
  v9 = [v8 imageContent];
  v10 = sub_18473DC14();
  v12 = v11;

  *a3 = v10;
  a3[1] = v12;
  v13 = [v8 contentIdentifier];
  v14 = sub_18473DC54();
  v16 = v15;

  a3[2] = v14;
  a3[3] = v16;
  v17 = [v8 contentDescription];
  v18 = sub_18473DC54();
  v20 = v19;

  result = sub_18466FA64(a1, a2);
  a3[4] = v18;
  a3[5] = v20;
  return result;
}

uint64_t sub_18466FA10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18466FA64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AttributedString.AdaptiveImageGlyph.imageContent.getter()
{
  v1 = *v0;
  sub_18466FA10(*v0, *(v0 + 8));
  return v1;
}

uint64_t AttributedString.AdaptiveImageGlyph.contentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AttributedString.AdaptiveImageGlyph.contentDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void static AttributedString.AdaptiveImageGlyph.contentType.getter()
{
  v0 = [objc_opt_self() contentType];
  sub_18473DC34();
}

uint64_t static AttributedString.AdaptiveImageGlyph.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_184670AC0(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_18473DD14() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_18473DD14();
}

uint64_t sub_18466FC94()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6E6F436567616D69;
  }
}

uint64_t sub_18466FCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_184670EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18466FD2C(uint64_t a1)
{
  v2 = sub_184670C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18466FD68(uint64_t a1)
{
  v2 = sub_184670C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributedString.AdaptiveImageGlyph.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869380);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[3] = v1[3];
  v14[4] = v10;
  v11 = v1[4];
  v14[1] = v1[5];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18466FA10(v8, v9);
  sub_184670C28();
  sub_18473DD74();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_184670C7C();
  v12 = v14[5];
  sub_18473DD04();
  sub_18466FA64(v15, v16);
  if (!v12)
  {
    LOBYTE(v15) = 1;
    sub_18473DCF4();
    LOBYTE(v15) = 2;
    sub_18473DCF4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AttributedString.AdaptiveImageGlyph.hash(into:)()
{
  sub_18473DC24();
  sub_18473DC64();

  return sub_18473DC64();
}

uint64_t AttributedString.AdaptiveImageGlyph.hashValue.getter()
{
  sub_18473DD24();
  sub_18473DC24();
  sub_18473DC64();
  sub_18473DC64();
  return sub_18473DD54();
}

uint64_t AttributedString.AdaptiveImageGlyph.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869398);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_184670C28();
  sub_18473DD64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_184670CD0();
  sub_18473DCC4();
  v10 = v25;
  v24 = v26;
  LOBYTE(v25) = 1;
  v22 = sub_18473DCB4();
  v23 = v11;
  LOBYTE(v25) = 2;
  v12 = sub_18473DCB4();
  v14 = v13;
  v15 = v12;
  (*(v6 + 8))(v9, v5);
  v16 = v10;
  *a2 = v10;
  v17 = v23;
  v18 = v24;
  v19 = v22;
  a2[1] = v24;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v15;
  a2[5] = v14;
  sub_18466FA10(v16, v18);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_18466FA64(v16, v18);
}

uint64_t sub_184670340()
{
  sub_18473DD24();
  sub_18473DC24();
  sub_18473DC64();
  sub_18473DC64();
  return sub_18473DD54();
}

uint64_t sub_1846703C4()
{
  sub_18473DC24();
  sub_18473DC64();

  return sub_18473DC64();
}

uint64_t sub_184670430()
{
  sub_18473DD24();
  sub_18473DC24();
  sub_18473DC64();
  sub_18473DC64();
  return sub_18473DD54();
}

uint64_t sub_1846704B0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_184670AC0(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_18473DD14() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_18473DD14();
}

id static CTAdaptiveImageGlyph._adaptiveImageGlyph(convertingFrom:)()
{
  v0 = objc_allocWithZone(CTAdaptiveImageGlyph);
  v1 = sub_18473DC44();
  v2 = [v0 initWithContentIdentifier_];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(CTAdaptiveImageGlyph);
  v5 = sub_18473DC04();
  v6 = [v4 initWithImageContent_];

  return v6;
}

uint64_t sub_184670648@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_18473DB84();
    if (v10)
    {
      v11 = sub_18473DBA4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_18473DB94();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_18473DB84();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_18473DBA4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_18473DB94();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_184670878(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_184670A08(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_18466FA64(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_184670648(v13, a3, a4, &v12);
  v10 = v4;
  sub_18466FA64(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_184670A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_18473DB84();
  v11 = result;
  if (result)
  {
    result = sub_18473DBA4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_18473DB94();
  sub_184670648(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_184670AC0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_18466FA10(a3, a4);
          return sub_184670878(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_184670C28()
{
  result = qword_1EA869388;
  if (!qword_1EA869388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869388);
  }

  return result;
}

unint64_t sub_184670C7C()
{
  result = qword_1EA869390;
  if (!qword_1EA869390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869390);
  }

  return result;
}

unint64_t sub_184670CD0()
{
  result = qword_1EA8693A0;
  if (!qword_1EA8693A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8693A0);
  }

  return result;
}

unint64_t sub_184670D28()
{
  result = qword_1EA8693A8;
  if (!qword_1EA8693A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8693A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_184670DC0()
{
  result = qword_1EA8693B0;
  if (!qword_1EA8693B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8693B0);
  }

  return result;
}

unint64_t sub_184670E18()
{
  result = qword_1EA8693B8;
  if (!qword_1EA8693B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8693B8);
  }

  return result;
}

unint64_t sub_184670E70()
{
  result = qword_1EA8693C0;
  if (!qword_1EA8693C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8693C0);
  }

  return result;
}

uint64_t sub_184670EC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F436567616D69 && a2 == 0xEC000000746E6574;
  if (v4 || (sub_18473DD14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001847B8500 == a2 || (sub_18473DD14() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001847B8520 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_18473DD14();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_184671018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869220);
  __swift_allocate_value_buffer(v0, qword_1EA8693C8);
  v1 = __swift_project_value_buffer(v0, qword_1EA8693C8);
  v2 = *MEMORY[0x1E6968710];
  v3 = sub_18473DBB4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(v1, v2, v3);
  v4 = *(v6 + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t static AttributeScopes.CoreTextAttributes.TextAlignmentAttribute.runBoundaries.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA869218 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869220);
  v3 = __swift_project_value_buffer(v2, qword_1EA8693C8);

  return sub_18466CAAC(v3, a1);
}

uint64_t sub_184671250@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA869218 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869220);
  v3 = __swift_project_value_buffer(v2, qword_1EA8693C8);

  return sub_18466CAAC(v3, a1);
}

uint64_t sub_1846712E8(uint64_t a1)
{
  v2 = sub_18467195C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_184671324(uint64_t a1)
{
  v2 = sub_18467195C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_184671360()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_1846713AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1846725B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1846713D4(uint64_t a1)
{
  v2 = sub_1846718B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_184671410(uint64_t a1)
{
  v2 = sub_1846718B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18467144C(uint64_t a1)
{
  v2 = sub_1846719B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_184671488(uint64_t a1)
{
  v2 = sub_1846719B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1846714C4(uint64_t a1)
{
  v2 = sub_184671908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_184671500(uint64_t a1)
{
  v2 = sub_184671908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributedString.TextAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8693E0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v28 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8693E8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v25 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8693F0);
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8693F8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1846718B4();
  sub_18473DD74();
  if (v18)
  {
    if (v18 == 1)
    {
      v32 = 1;
      sub_18467195C();
      v12 = v25;
      sub_18473DCE4();
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v33 = 2;
      sub_184671908();
      v12 = v28;
      sub_18473DCE4();
      v20 = v29;
      v19 = v30;
    }
  }

  else
  {
    v31 = 0;
    sub_1846719B0();
    sub_18473DCE4();
    v20 = v23;
    v19 = v24;
  }

  (*(v20 + 8))(v12, v19);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1846718B4()
{
  result = qword_1EA869400;
  if (!qword_1EA869400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869400);
  }

  return result;
}

unint64_t sub_184671908()
{
  result = qword_1EA869408;
  if (!qword_1EA869408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869408);
  }

  return result;
}

unint64_t sub_18467195C()
{
  result = qword_1EA869410;
  if (!qword_1EA869410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869410);
  }

  return result;
}

unint64_t sub_1846719B0()
{
  result = qword_1EA869418;
  if (!qword_1EA869418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869418);
  }

  return result;
}

uint64_t AttributedString.TextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_18473DD24();
  MEMORY[0x1865F04B0](v1);
  return sub_18473DD54();
}

uint64_t AttributedString.TextAlignment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869420);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v45 = &v36 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869428);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869430);
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869438);
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1846718B4();
  v17 = v47;
  sub_18473DD64();
  if (v17)
  {
    goto LABEL_10;
  }

  v37 = v9;
  v38 = 0;
  v18 = v44;
  v19 = v45;
  v47 = a1;
  v20 = v16;
  v21 = sub_18473DCD4();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v21 + 32);
    if (v22 == 1 && v23 != 3)
    {
      if (*(v21 + 32))
      {
        v44 = v21;
        v30 = v46;
        if (v23 == 1)
        {
          v49 = 1;
          sub_18467195C();
          v31 = v38;
          sub_18473DC94();
          v32 = v43;
          if (v31)
          {
            (*(v30 + 8))(v20, v13);
            goto LABEL_9;
          }

          (*(v39 + 8))(v8, v42);
          (*(v30 + 8))(v20, v13);
        }

        else
        {
          v50 = 2;
          sub_184671908();
          v35 = v38;
          sub_18473DC94();
          v32 = v43;
          if (v35)
          {
            (*(v30 + 8))(v20, v13);
            goto LABEL_9;
          }

          (*(v40 + 8))(v19, v41);
          (*(v30 + 8))(v20, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0;
        sub_1846719B0();
        v33 = v38;
        sub_18473DC94();
        v34 = v46;
        if (v33)
        {
          (*(v46 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v18 + 8))(v12, v37);
        (*(v34 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v32 = v43;
      }

      *v32 = v23;
      v28 = v47;
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  v25 = sub_18473DC84();
  swift_allocError();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA869300);
  *v27 = &type metadata for AttributedString.TextAlignment;
  sub_18473DCA4();
  sub_18473DC74();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
  swift_willThrow();
  (*(v46 + 8))(v16, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v47;
LABEL_10:
  v28 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_184672038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1846720AC()
{
  result = qword_1EA869440;
  if (!qword_1EA869440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869440);
  }

  return result;
}

unint64_t sub_184672104()
{
  result = qword_1EA869448;
  if (!qword_1EA869448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869448);
  }

  return result;
}

unint64_t sub_18467215C()
{
  result = qword_1EA869450;
  if (!qword_1EA869450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA869458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869450);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18467220C()
{
  result = qword_1EA869460;
  if (!qword_1EA869460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869460);
  }

  return result;
}

unint64_t sub_1846722A4()
{
  result = qword_1EA869468;
  if (!qword_1EA869468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869468);
  }

  return result;
}