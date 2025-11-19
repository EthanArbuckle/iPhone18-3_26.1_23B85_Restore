BOOL CGPDFLayoutPointSelectsFirstIndex(uint64_t a1, uint64_t a2, uint64_t a3, double a4, CGFloat a5, double a6)
{
  HitTestRectAtIndex = CGPDFLayoutGetHitTestRectAtIndex(a1, a2, a6);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (a1 && (a2 & 0x8000000000000000) == 0 && *(a1 + 48) > a2 && (v17 = *(a1 + 24)) != 0 && (v18 = *(v17 + 24 * a2 + 8)) != 0)
  {
    v19 = *(v18 + 40);
    v20.f64[0] = a4;
    v20.f64[1] = a5;
    v41 = v20;
    if (v19 == 0.0)
    {
      v23 = v20;
    }

    else
    {
      v22 = __sincos_stret(v19);
      v21.f64[0] = v22.__cosval;
      v21.f64[1] = -v22.__sinval;
      v23 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v22, v41, 1), v21, a4), 0);
    }
  }

  else
  {
    v23.x = a4;
    v23.y = a5;
    v41 = v23;
  }

  y = v23.y;
  v43.origin.x = HitTestRectAtIndex;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  if (CGRectContainsPoint(v43, v23))
  {
    return 1;
  }

  v26 = CGPDFLayoutGetHitTestRectAtIndex(a1, a3, a6);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if (a1)
  {
    v33 = v41;
    if ((a3 & 0x8000000000000000) == 0 && *(a1 + 48) > a3)
    {
      v34 = *(a1 + 24);
      if (v34)
      {
        v35 = *(v34 + 24 * a3 + 8);
        if (v35)
        {
          v36 = *(v35 + 40);
          if (v36 != 0.0)
          {
            v38 = __sincos_stret(v36);
            v37.f64[0] = v38.__cosval;
            v37.f64[1] = -v38.__sinval;
            v33 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v38, v41, 1), v37, a4), 0);
          }
        }
      }
    }
  }

  else
  {
    v33 = v41;
  }

  v39 = v33.y;
  v44.origin.x = v26;
  v44.origin.y = v28;
  v44.size.width = v30;
  v44.size.height = v32;
  return !CGRectContainsPoint(v44, v33);
}

double CGPDFLayoutGetHitTestRectAtIndex(uint64_t a1, uint64_t a2, double a3)
{
  v9.origin.x = CGPDFLayoutGetCharacterBounds(a1, a2);
  *&v6 = CGRectInset(v9, -a3, -a3);
  NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(*(a1 + 104), a2, 1);
  if (NodeContainingTextRange)
  {
    while (*NodeContainingTextRange != 514)
    {
      NodeContainingTextRange = *(NodeContainingTextRange + 8);
      if (!NodeContainingTextRange)
      {
        return v6;
      }
    }

    CGPDFNodeGetHitTestRect(NodeContainingTextRange, a3);
  }

  return v6;
}

uint64_t CGPDFLayoutGetStringDirectionFromCursorRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    v6 = a2 + a3;
    if (a2 + a3 > *(a1 + 48))
    {
      return 1;
    }

    if (*(a1 + 72) != 1)
    {
      return 1;
    }

    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    CGPDFLayoutGetRTLData(v11, a1);
    if (v12 < 1)
    {
      return 1;
    }

    v7 = v6 - 1;
    if (a2 == v6 - 1)
    {
      return CGPDFLayoutReadsLeftToRightAtIndex(a1, a2);
    }

    v3 = 1;
    StringRangeFromRange = CGPDFLayoutGetStringRangeFromRange(a1, a2, 1);
    v9 = CGPDFLayoutGetStringRangeFromRange(a1, v7, 1);
    if ((StringRangeFromRange & 0x8000000000000000) == 0 && (v9 & 0x8000000000000000) == 0)
    {
      return StringRangeFromRange <= v9;
    }
  }

  return v3;
}

uint64_t CGPDFLayoutGetIndexFromStringIndex(uint64_t a1, int64_t a2)
{
  if (a2 == -1)
  {
    return -1;
  }

  v11 = v2;
  v12 = v3;
  if (*(a1 + 72) == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    CGPDFLayoutGetRTLData(&v8, a1);
    if (v10 > a2)
    {
      v6 = *(v9 + 4 * a2);
      if ((v6 & 0x80000000) == 0)
      {
        if (*(a1 + 48) <= v6)
        {
          return -1;
        }

        else
        {
          return *(v9 + 4 * a2);
        }
      }

      return -1;
    }
  }

  result = CPMultiUnicodesGetCharacterIndexAtUnicodeIndex(*(a1 + 56), a2);
  if (result < 0)
  {
    return -1;
  }

  if (result >= *(a1 + 48))
  {
    return -1;
  }

  return result;
}

uint64_t CGPDFLayoutCreateDirectionalSelection(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    __assert_rtn("CGPDFLayoutCreateDirectionalSelection", "CGPDFLayout.m", 1496, "layout");
  }

  v10 = *(a1 + 104);
  v16 = 0;
  v14 = 0;
  v15 = 0;
  if (*(a1 + 72) == 1)
  {
    v12 = 0;
    v13 = 0;
    CGPDFNodeGetNodeRangeBetweenPoints(v10, 1, 1, &v15, &v14, &v16, &v12, a2, a3, a4, a5, 0.0);
    if ((CGPDFLayoutGetStringDirectionFromCursorRange(a1, v12, v13) & 1) == 0)
    {
      v16 ^= 1u;
    }
  }

  else
  {
    CGPDFNodeGetNodeRangeBetweenPoints(v10, 1, 1, &v15, &v14, &v16, 0, a2, a3, a4, a5, 0.0);
  }

  if (v16)
  {
    return CreateCharacterSelectionBetweenPoints(a1, 1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t CGPDFLayoutCreateSelectionBetweenIndexAndPoint(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  *v42 = a4;
  *&v42[1] = a5;
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  v10 = *(a1 + 104);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  CGPDFNodeGetNodeRangeFromIndexToPoint(v10, 1, a2, a3, 1, &v41, &v40, &v39, a4, a5, 0.0);
  if (v39 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v39;
  }

  if (v39 >= a2)
  {
    v12 = v39 - a2 + 1;
  }

  else
  {
    v12 = a2 + 1 - v39;
  }

  if (*(a1 + 72) == 1 && (CGPDFLayoutGetStringDirectionFromCursorRange(a1, v11, v12) & 1) == 0)
  {
    v5 ^= 1u;
    CGPDFNodeGetNodeRangeFromIndexToPoint(v10, 1, a2, v5, 1, &v41, &v40, &v39, a4, a5, 0.0);
    if (v39 >= a2)
    {
      v12 = v39 - a2 + 1;
    }

    else
    {
      v12 = a2 + 1 - v39;
    }

    if (v39 >= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v39;
    }
  }

  v13 = 0;
  v14 = v41;
  if (v41 && v40)
  {
    if (v5)
    {
      if (v39 >= a2)
      {
        v15 = v41;
        v14 = v40;
        goto LABEL_23;
      }
    }

    else if (v39 <= a2)
    {
      v15 = v40;
LABEL_23:
      IndexSet = CreateIndexSet(v15, v14, 1, 1);
      v17 = IndexSet;
      if (IndexSet)
      {
        if (IndexSet[2].i8[8])
        {
          CPIndexSetNormalize(IndexSet);
        }

        v18 = *(v17 + 16);
        if (v18 < 1)
        {
          goto LABEL_64;
        }

        Range = CPIndexSetGetRange(v17, 0);
        v21 = v20;
        v22 = CPIndexSetGetRange(v17, v18 - 1);
        if (Range != v11)
        {
          v24 = v21 - v11 + Range;
          if (v24 < 1)
          {
            v25 = -1;
          }

          else
          {
            v25 = v11;
          }

          if (v24 < 1)
          {
            v24 = 0;
          }

          if (*(v17 + 16) >= 1)
          {
            v26 = *(v17 + 32);
            *v26 = v25;
            v26[1] = v24;
            *(v17 + 40) = 1;
          }

          if (v18 == 1)
          {
            v22 = v25;
            v23 = v24;
          }
        }

        if (v22 < 0 || v23 + v22 == v11 + v12 || *(v17 + 16) < v18)
        {
          if (!*(v17 + 40))
          {
            goto LABEL_49;
          }
        }

        else
        {
          v28 = v11 + v12 - v22;
          if (v28 >= 1)
          {
            v29 = v22;
          }

          else
          {
            v28 = 0;
            v29 = -1;
          }

          v30 = (*(v17 + 32) + 16 * (v18 - 1));
          *v30 = v29;
          v30[1] = v28;
          *(v17 + 40) = 1;
        }

        CPIndexSetNormalize(v17);
LABEL_49:
        if (*(v17 + 16) < 1)
        {
          v31 = -1;
        }

        else
        {
          v31 = **(v17 + 32);
        }

        LastIndex = CPIndexSetGetLastIndex(v17);
        v13 = 0;
        if (LastIndex == -1 || v31 == -1 || LastIndex < v31)
        {
          goto LABEL_67;
        }

        if (*(a1 + 72) != 1)
        {
          v37 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v17);
          goto LABEL_66;
        }

        if (v5)
        {
          v33 = 0;
        }

        else
        {
          v33 = v42;
        }

        if (v5)
        {
          v34 = v42;
        }

        else
        {
          v34 = 0;
        }

        v38 = 0;
        StringRangeFromCursorRange = CGPDFLayoutGetStringRangeFromCursorRange(a1, v31, LastIndex - v31 + 1, v33, v34, 1, &v38, 0.0);
        if ((StringRangeFromCursorRange & 0x8000000000000000) == 0)
        {
          v37 = CGPDFSelectionCreateForStringRange(*(a1 + 16), StringRangeFromCursorRange, v36);
LABEL_66:
          v13 = v37;
          goto LABEL_67;
        }

LABEL_64:
        v13 = 0;
LABEL_67:
        CFRelease(v17);
        return v13;
      }
    }

    return 0;
  }

  return v13;
}

uint64_t CGPDFLayoutCreateSelectionBetweenRangeAndPoint(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 104);
  if ((a4 - 1) > 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_1844DC0C8[a4 - 1];
  }

  SelectionBetweenIndexAndPoint = CGPDFLayoutCreateSelectionBetweenIndexAndPoint(a1, a2, 1, a5, a6);
  if (SelectionBetweenIndexAndPoint)
  {
    v14 = SelectionBetweenIndexAndPoint;
    if (a4)
    {
      LastIndex = CGPDFSelectionGetLastIndex(SelectionBetweenIndexAndPoint);
      NodePrecedingTextIndex = CGPDFNodeGetNodePrecedingTextIndex(v12, LastIndex);
      if (NodePrecedingTextIndex)
      {
        while (*NodePrecedingTextIndex != v13)
        {
          NodePrecedingTextIndex = *(NodePrecedingTextIndex + 1);
          if (!NodePrecedingTextIndex)
          {
            return v14;
          }
        }

        TextRange = CGPDFNodeGetTextRange(NodePrecedingTextIndex);
        v24 = v23 + ~LastIndex + TextRange;
        if (a4 == 1 && (v24 & 0x8000000000000000) == 0)
        {
          v25 = TextRange;
          v26 = CPIndexSetCreateWithRange(TextRange, v23);
          if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v26, LastIndex, 1))
          {
            v27 = CPIndexSetGetLastIndex(v26);
            if (v27 != -1 && v27 >= v25)
            {
              v24 = v27 - LastIndex;
            }
          }

          if (v26)
          {
            CFRelease(v26);
          }
        }

        if (v24)
        {
          CGPDFSelectionExtendAtEnd(v14, v24);
        }
      }
    }
  }

  else
  {
    v18 = CGPDFLayoutCreateSelectionBetweenIndexAndPoint(a1, a3 + a2 - 1, 0, a5, a6);
    if (v18)
    {
      v14 = v18;
      if (a4)
      {
        v19 = *(v18 + 184);
        v20 = *(v18 + 192) == v19 ? -1 : *(v19 + 8);
        NodeFollowingTextIndex = CGPDFNodeGetNodeFollowingTextIndex(v12, v20);
        if (NodeFollowingTextIndex)
        {
          while (*NodeFollowingTextIndex != v13)
          {
            NodeFollowingTextIndex = *(NodeFollowingTextIndex + 1);
            if (!NodeFollowingTextIndex)
            {
              return v14;
            }
          }

          v30 = CGPDFNodeGetTextRange(NodeFollowingTextIndex);
          v32 = v20 - v30;
          if (a4 == 1 && (v32 & 0x8000000000000000) == 0)
          {
            v33 = v30;
            v34 = v31;
            v35 = CPIndexSetCreateWithRange(v30, v31);
            if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v35, v20, 1))
            {
              FirstIndex = CPIndexSetGetFirstIndex(v35);
              if (FirstIndex != -1 && FirstIndex < v33 + v34)
              {
                v32 = v20 - FirstIndex;
              }
            }

            if (v35)
            {
              CFRelease(v35);
            }
          }

          if (v32)
          {
            CGPDFSelectionExtendAtStart(v14, v32);
          }
        }
      }
    }

    else
    {
      v21 = CPIndexSetCreateWithRange(a2, a3);
      v14 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v21);
      if (v21)
      {
        CFRelease(v21);
      }
    }
  }

  return v14;
}

uint64_t CGPDFLayoutCreateSelectionFromPointWithOptions(uint64_t a1, unsigned int a2, int a3, double a4, double a5)
{
  v5 = a1;
  *v55 = a4;
  *&v55[1] = a5;
  if (a1)
  {
    if (a2 == 1)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 2.0;
    }

    if (a2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = *(a1 + 104);
    if (a2)
    {
      if (a2 > 5)
      {
        v13 = 0;
      }

      else
      {
        v13 = dword_1844DC0C8[a2 - 1];
      }
    }

    else
    {
      v13 = 1;
    }

    NodeAfterPoint = CGPDFNodeGetNodeAfterPoint(*(a1 + 104), v13, a3 == 1, a4, a5, v11);
    NodeBefore = CGPDFNodeGetNodeBefore(v12, NodeAfterPoint, v13, a3 == 1);
    v16.n128_f64[0] = a4;
    v17.n128_f64[0] = a5;
    if (CGPDFNodeIsHitByPoint(NodeBefore, v16, v17, v11))
    {
      NodeAfterPoint = NodeBefore;
    }

    TextRange = CGPDFNodeGetTextRange(NodeAfterPoint);
    v20 = v19;
    v21 = CGPDFNodeGetNodeBefore(v12, 0, v13, a3 == 1);
    if (NodeAfterPoint)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      IndexSet = CreateIndexSet(NodeAfterPoint, v21, v13, a3 == 1);
      v54 = IndexSet;
      if (IndexSet)
      {
        v24 = IndexSet;
        if (IndexSet[2].i8[8])
        {
          CPIndexSetNormalize(IndexSet);
        }

        if (v24[1].i64[0] < 1)
        {
          goto LABEL_42;
        }

        v47 = v20;
        TextIndexAfterPoint = CGPDFNodeGetTextIndexAfterPoint(NodeAfterPoint, a4, a5, v11);
        Range = CPIndexSetGetRange(v24, 0);
        v28 = TextRange < TextIndexAfterPoint && a2 == 0;
        v29 = TextRange <= TextIndexAfterPoint && !v28;
        if (!v29 && v24[1].i64[0] >= 1)
        {
          v30 = v27 - TextIndexAfterPoint + Range;
          if (v30 >= 1)
          {
            v31 = TextIndexAfterPoint;
          }

          else
          {
            v30 = 0;
            v31 = -1;
          }

          v32 = v24[2].i64[0];
          *v32 = v31;
          v32[1] = v30;
          v24[2].i8[8] = 1;
        }

        FirstIndex = CPIndexSetGetFirstIndex(v24);
        LastIndex = CPIndexSetGetLastIndex(v24);
        if (FirstIndex == -1 || LastIndex == -1)
        {
LABEL_42:
          v5 = 0;
LABEL_43:
          CFRelease(v24);
          return v5;
        }

        v52 = TextIndexAfterPoint;
        v53 = LastIndex - TextIndexAfterPoint + 1;
        if (*(v5 + 72) != 1 || (v50 = 0uLL, v51 = 0, CGPDFLayoutGetRTLData(&v50, v5), v37 = v51, v51 < 2))
        {
LABEL_67:
          if (a2 == 1 && !CGPDFLayoutExtendRangeToWordBoundaries(v5, v24, v52, v53))
          {
            v5 = 0;
            if (!v24)
            {
              return v5;
            }
          }

          else
          {
            v5 = CGPDFSelectionCreateWithIndexSet(*(v5 + 16), v24);
            if (!v24)
            {
              return v5;
            }
          }

          goto LABEL_43;
        }

        CFRelease(v24);
        v40 = *(*(&v50 + 1) + 4 * v37 - 8);
        if (a2)
        {
          v41 = TextRange + v47;
          v42 = v55;
          if (TextIndexAfterPoint >= v41)
          {
            v38.n128_f64[0] = a4;
            v39.n128_f64[0] = a5;
            if (CGPDFNodeIsHitByPoint(NodeAfterPoint, v38, v39, v10))
            {
              TextIndexAfterPoint = v41 - 1;
              v42 = 0;
            }
          }
        }

        else
        {
          v42 = v55;
        }

        if (TextIndexAfterPoint <= v40)
        {
          v43 = TextIndexAfterPoint;
        }

        else
        {
          v43 = v40;
        }

        if (TextIndexAfterPoint > v40)
        {
          v44 = TextIndexAfterPoint - v40 + 1;
        }

        else
        {
          v44 = v40 - TextIndexAfterPoint + 1;
        }

        if (TextIndexAfterPoint <= v40)
        {
          v45 = v42;
        }

        else
        {
          v45 = 0;
        }

        if (TextIndexAfterPoint <= v40)
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

        v52 = v43;
        v53 = v44;
        v48 = v50;
        v49 = v51;
        if (LayoutCreateSelectionSupport(v5, &v52, v45, v46, a3 == 1, &v54, a2, &v48, v11, v12, v13))
        {
          v24 = v54;
          goto LABEL_67;
        }
      }
    }

    return 0;
  }

  return v5;
}

uint64_t LayoutCreateSelectionSupport(uint64_t a1, uint64_t *a2, double *a3, double *a4, uint64_t a5, int64x2_t **a6, int a7, uint64_t a8, double a9, uint64_t a10, int a11)
{
  v14 = a5;
  v35 = 0;
  StringRangeFromCursorRange = CGPDFLayoutGetStringRangeFromCursorRange(a1, *a2, a2[1], a3, a4, a5, &v35, a9);
  if ((StringRangeFromCursorRange & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v19 = StringRangeFromCursorRange;
  v20 = v18;
  IndexSetForStringRange = CGPDFLayoutCreateIndexSetForStringRange(a1, StringRangeFromCursorRange, v18);
  *a6 = IndexSetForStringRange;
  if ((v14 & 1) == 0)
  {
    v22 = CGPDFLayoutCopyIndexSetRemovingGraphics(a1, IndexSetForStringRange);
    *a6 = v22;
    if (!IndexSetForStringRange)
    {
      if (v22)
      {
        goto LABEL_6;
      }

      return 0;
    }

    CFRelease(IndexSetForStringRange);
    IndexSetForStringRange = *a6;
  }

  if (!IndexSetForStringRange)
  {
    return 0;
  }

LABEL_6:
  if (!a7)
  {
    return 1;
  }

  *a2 = CGPDFLayoutGetRangeFromStringRange(a1, v19, v20);
  a2[1] = v23;
  v24 = (*(a8 + 8) + 4 * v19);
  v25 = v24[v20 - 1];
  for (i = CGPDFNodeGetNodeContainingTextRange(a10, *v24, 1); i; i = *(i + 8))
  {
    if (*i == a11)
    {
      break;
    }
  }

  for (j = CGPDFNodeGetNodeContainingTextRange(a10, v25, 1); j; j = *(j + 8))
  {
    if (*j == a11)
    {
      break;
    }
  }

  if (i)
  {
    v28 = *a6;
    TextRange = CGPDFNodeGetTextRange(i);
    CPIndexSetAddRange(v28, TextRange, v30);
  }

  result = 1;
  if (j && j != i)
  {
    v32 = *a6;
    v33 = CGPDFNodeGetTextRange(j);
    CPIndexSetAddRange(v32, v33, v34);
    return 1;
  }

  return result;
}

uint64_t CGPDFLayoutCreateSelectionToPointWithOptions(uint64_t a1, unsigned int a2, int a3, double a4, double a5)
{
  *v54 = a4;
  *&v54[1] = a5;
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 2.0;
  }

  if (a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = *(a1 + 104);
  if (a2)
  {
    if (a2 > 5)
    {
      v13 = 0;
    }

    else
    {
      v13 = dword_1844DC0C8[a2 - 1];
    }
  }

  else
  {
    v13 = 1;
  }

  NodeAfterPoint = CGPDFNodeGetNodeAfterPoint(*(a1 + 104), v13, a3 == 1, a4, a5, v11);
  NodeBefore = CGPDFNodeGetNodeBefore(v12, NodeAfterPoint, v13, a3 == 1);
  v16.n128_f64[0] = a4;
  v17.n128_f64[0] = a5;
  if (CGPDFNodeIsHitByPoint(NodeAfterPoint, v16, v17, v11))
  {
    NodeBefore = NodeAfterPoint;
  }

  TextRange = CGPDFNodeGetTextRange(NodeBefore);
  v20 = v19;
  NodeAfter = CGPDFNodeGetNodeAfter(v12, 0, v13, a3 == 1);
  if (!NodeBefore || NodeAfter == 0)
  {
    return 0;
  }

  IndexSet = CreateIndexSet(NodeAfter, NodeBefore, v13, a3 == 1);
  v53 = IndexSet;
  if (!IndexSet)
  {
    return 0;
  }

  v25 = IndexSet;
  v46 = TextRange;
  if (IndexSet[2].i8[8])
  {
    CPIndexSetNormalize(IndexSet);
  }

  v26 = v25[1].i64[0];
  if (v26 < 1)
  {
    v23 = 0;
    goto LABEL_61;
  }

  v45 = a3;
  TextIndexBeforePoint = CGPDFNodeGetTextIndexBeforePoint(NodeBefore, a4, a5, v11);
  Range = CPIndexSetGetRange(v25, v26 - 1);
  if (a2)
  {
    v29 = 1;
  }

  else
  {
    v29 = TextRange + v20 - 1 <= TextIndexBeforePoint;
  }

  v30 = !v29;
  v31 = TextRange + v20 > TextIndexBeforePoint && v30 == 0;
  if (!v31 && v25[1].i64[0] >= v26)
  {
    v32 = TextIndexBeforePoint - Range + 1;
    if (v32 >= 1)
    {
      v33 = TextIndexBeforePoint - Range + 1;
    }

    else
    {
      v33 = 0;
    }

    if (v32 < 1)
    {
      v34 = -1;
    }

    else
    {
      v34 = Range;
    }

    v35 = (v25[2].i64[0] + 16 * (v26 - 1));
    *v35 = v34;
    v35[1] = v33;
    v25[2].i8[8] = 1;
  }

  FirstIndex = CPIndexSetGetFirstIndex(v25);
  LastIndex = CPIndexSetGetLastIndex(v25);
  v23 = 0;
  if (FirstIndex == -1 || LastIndex == -1)
  {
    goto LABEL_61;
  }

  v51 = FirstIndex;
  v52 = TextIndexBeforePoint - FirstIndex + 1;
  if (*(a1 + 72) != 1)
  {
    goto LABEL_58;
  }

  v49 = 0uLL;
  v50 = 0;
  CGPDFLayoutGetRTLData(&v49, a1);
  if (v50 < 2)
  {
    goto LABEL_58;
  }

  CFRelease(v25);
  v40 = **(&v49 + 1);
  v41 = v54;
  if (a2 && TextIndexBeforePoint < v46)
  {
    v38.n128_f64[0] = a4;
    v39.n128_f64[0] = a5;
    if (CGPDFNodeIsHitByPoint(NodeBefore, v38, v39, v10))
    {
      TextIndexBeforePoint = v46;
      v41 = 0;
    }

    else
    {
      v41 = v54;
    }
  }

  if (TextIndexBeforePoint >= v40)
  {
    v43 = 0;
    v42 = TextIndexBeforePoint - v40 + 1;
    TextIndexBeforePoint = v40;
  }

  else
  {
    v42 = v40 - TextIndexBeforePoint + 1;
    v43 = v41;
    v41 = 0;
  }

  v51 = TextIndexBeforePoint;
  v52 = v42;
  v47 = v49;
  v48 = v50;
  if (!LayoutCreateSelectionSupport(a1, &v51, v43, v41, v45 == 1, &v53, a2, &v47, v11, v12, v13))
  {
    return 0;
  }

  v25 = v53;
LABEL_58:
  if (a2 == 1 && !CGPDFLayoutExtendRangeToWordBoundaries(a1, v25, v51, v52))
  {
    v23 = 0;
    if (!v25)
    {
      return v23;
    }

    goto LABEL_61;
  }

  v23 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v25);
  if (v25)
  {
LABEL_61:
    CFRelease(v25);
  }

  return v23;
}

uint64_t CGPDFLayoutCreateSelectionAtPointWithOptions(uint64_t a1, int a2, int a3, __n128 a4, __n128 a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a5.n128_f64[0];
  v7 = a4.n128_f64[0];
  v9 = *(a1 + 104);
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v11 = 1537;
        break;
      case 5:
        v11 = 515;
        break;
      case 6:
        LOBYTE(v71) = 0;
        TopmostContentNodeAtPoint = CGPDFNodeGetTopmostContentNodeAtPoint(v9, &v71, a4, a5);
        if (!TopmostContentNodeAtPoint)
        {
          return 0;
        }

        v13 = TopmostContentNodeAtPoint;
        TextRange = CGPDFNodeGetTextRange(TopmostContentNodeAtPoint);
        v16 = CPIndexSetCreateWithRange(TextRange, v15);
        if (!v16)
        {
          return 0;
        }

        v17 = v16;
        v18 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v16);
        pthread_mutex_lock((v18 + 96));
        *(v18 + 40) = v13;
        pthread_mutex_unlock((v18 + 96));
LABEL_63:
        CFRelease(v17);
        return v18;
      default:
        v11 = 0;
        break;
    }

LABEL_37:
    v72 = 0;
    v71 = 0;
    BestNodeContainingPoint = CGPDFNodeGetBestNodeContainingPoint(v9, v11, a3 == 1, &v71, &v72, a4.n128_f64[0], a5.n128_f64[0], 0.0);
    if (!BestNodeContainingPoint)
    {
      return 0;
    }

    v44 = CGPDFNodeGetTextRange(BestNodeContainingPoint);
    v46 = v45;
    v47 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v47 && [objc_msgSend(v47 objectForKey:{@"ShowRange", "isEqualToString:", @"YES"}])
    {
      NSLog(&cfstr_RangeDD.isa, v44, v46);
    }

    v48 = v46 - 1;
    if (v46 < 1)
    {
      return 0;
    }

    v49 = CPIndexSetCreateWithRange(v44, v46);
    if (!v49)
    {
      return 0;
    }

    v17 = v49;
    if (a2 != 1)
    {
      goto LABEL_62;
    }

    v50 = v46 + v44 - 1;
    if (v44 < v50)
    {
      v51 = (*(a1 + 24) + 24 * v44 + 8);
      while (1)
      {
        p_height = &CGRectNull.size.height;
        p_size = &CGRectNull.size;
        p_y = &CGRectNull.origin.y;
        v56 = *(v51 - 1);
        v55 = *v51;
        v57 = (v56 + 16);
        v58 = (v56 + 24);
        v59 = (v56 + 32);
        v33 = v56 == 0;
        v60 = (v56 + 40);
        if (v33)
        {
          v61 = &CGRectNull;
        }

        else
        {
          p_y = v58;
          p_size = v59;
          p_height = v60;
          v61 = v57;
        }

        x = v61->origin.x;
        v63 = *p_height;
        width = p_size->width;
        v65 = *p_y;
        v66 = v7;
        if (v55)
        {
          v67 = *(v55 + 40);
          v66 = v7;
          if (v67 != 0.0)
          {
            v68 = __sincos_stret(v67);
            v66 = v6 * v68.__sinval + v68.__cosval * v7 + 0.0;
          }
        }

        if (width < 0.0 || v63 < 0.0)
        {
          v76.origin.x = x;
          v76.origin.y = v65;
          v76.size.width = width;
          v76.size.height = v63;
          v77 = CGRectStandardize(v76);
          x = v77.origin.x;
          width = v77.size.width;
        }

        if (v66 <= x + width)
        {
          break;
        }

        ++v44;
        v51 += 3;
        if (!--v48)
        {
          v44 = v50;
          break;
        }
      }
    }

    if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v17, v44, 1))
    {
LABEL_62:
      v18 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v17);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_63;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      v10 = 514;
    }

    else
    {
      v10 = 0;
    }

    if (a2 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    goto LABEL_37;
  }

  v72 = 0;
  v71 = 0;
  v19 = CGPDFNodeGetBestNodeContainingPoint(v9, 514, 0, &v71, &v72, a4.n128_f64[0], a5.n128_f64[0], 0.0);
  if (!v19)
  {
    return 0;
  }

  v20 = CGPDFNodeGetTextRange(v19);
  if (v21 < 1)
  {
    return 0;
  }

  v22 = v20;
  v23 = v20 + v21;
  for (i = (*(a1 + 24) + 24 * v20 + 8); ; i += 3)
  {
    v25 = &CGRectNull.size.height;
    v26 = &CGRectNull.size;
    v27 = &CGRectNull.origin.y;
    v29 = *(i - 1);
    v28 = *i;
    v30 = (v29 + 16);
    v31 = (v29 + 24);
    v32 = (v29 + 32);
    v33 = v29 == 0;
    v34 = (v29 + 40);
    if (v33)
    {
      v35 = &CGRectNull;
    }

    else
    {
      v27 = v31;
      v26 = v32;
      v25 = v34;
      v35 = v30;
    }

    v36 = v35->origin.x;
    v37 = *v25;
    v38 = v26->width;
    v39 = *v27;
    v40 = v7;
    if (v28)
    {
      v41 = *(v28 + 40);
      v40 = v7;
      if (v41 != 0.0)
      {
        v42 = __sincos_stret(v41);
        v40 = v6 * v42.__sinval + v42.__cosval * v7 + 0.0;
      }
    }

    if (v38 >= 0.0 && v37 >= 0.0)
    {
      break;
    }

    v73.origin.x = v36;
    v73.origin.y = v39;
    v73.size.width = v38;
    v73.size.height = v37;
    if (COERCE_DOUBLE(CGRectStandardize(v73)) <= v40)
    {
      v74.origin.x = v36;
      v74.origin.y = v39;
      v74.size.width = v38;
      v74.size.height = v37;
      v75 = CGRectStandardize(v74);
      v36 = v75.origin.x;
      v38 = v75.size.width;
      goto LABEL_31;
    }

LABEL_32:
    v18 = 0;
    if (++v22 >= v23)
    {
      return v18;
    }
  }

  if (v36 > v40)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (v40 > v36 + v38)
  {
    goto LABEL_32;
  }

  v69 = CPIndexSetCreateWithRange(v22, 1);
  if (v69)
  {
    v17 = v69;
    goto LABEL_62;
  }

  return 0;
}

uint64_t CGPDFLayoutCreateSelectionContainingSelection(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    if ((a3 - 1) >= 6)
    {
      ContainingNode = CGPDFSelectionGetContainingNode(a2);
      v6 = 0;
      goto LABEL_9;
    }

    v6 = dword_1844DC0B0[a3 - 1];
    v7 = CGPDFSelectionGetContainingNode(a2);
    ContainingNode = v7;
    if (a3 != 6)
    {
      goto LABEL_9;
    }

    if (!v7)
    {
      return 0;
    }

    if (*v7 != 513 && (*v7 & 0x100) == 0)
    {
      while (*ContainingNode != v6)
      {
        ContainingNode = *(ContainingNode + 8);
LABEL_9:
        if (!ContainingNode)
        {
          return 0;
        }
      }
    }

    TextRange = CGPDFNodeGetTextRange(ContainingNode);
    v11 = CPIndexSetCreateWithRange(TextRange, v10);
    if (v11)
    {
      v12 = v11;
      if (a3 == 1 && (FirstIndex = CGPDFSelectionGetFirstIndex(a2), LastIndex = CGPDFSelectionGetLastIndex(a2), !CGPDFLayoutExtendRangeToWordBoundaries(v3, v12, FirstIndex, LastIndex - FirstIndex + 1)))
      {
        v3 = 0;
      }

      else
      {
        v3 = CGPDFSelectionCreateWithIndexSet(*(v3 + 16), v12);
        pthread_mutex_lock((v3 + 96));
        *(v3 + 40) = ContainingNode;
        pthread_mutex_unlock((v3 + 96));
      }

      CFRelease(v12);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t CGPDFLayoutCreateSelectionForRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  v6 = a2;
  if (a2 == INFINITY || a3 == INFINITY)
  {
    return 0;
  }

  v9 = *(a1 + 48);
  if (v9 < 1)
  {
    return 0;
  }

  v10 = a5;
  v11 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v16 = 1;
  v17 = -1;
  do
  {
    v18 = *(a1 + 24);
    v19 = *(v18 + v12);
    p_height = &CGRectNull.size.height;
    p_size = &CGRectNull.size;
    v22 = (v19 + 16);
    v23 = (v19 + 32);
    v24 = (v19 + 40);
    v25 = v19 == 0;
    if (v19)
    {
      p_y = (v19 + 24);
    }

    else
    {
      p_y = &CGRectNull.origin.y;
    }

    if (v25)
    {
      v27 = &CGRectNull;
    }

    else
    {
      p_size = v23;
      p_height = v24;
      v27 = v22;
    }

    x = v27->origin.x;
    v29 = *p_height;
    width = p_size->width;
    y = *p_y;
    v32 = *(v18 + v12 + 8);
    if (!v32 || (v33 = *(v32 + 40), v33 == 0.0))
    {
      v57.origin.x = v6;
      v57.origin.y = v5;
      v57.size.width = v11;
      v57.size.height = v10;
      v72.origin.x = v27->origin.x;
      v72.origin.y = *p_y;
      v72.size.width = p_size->width;
      v72.size.height = *p_height;
      if (!CGRectContainsRect(v57, v72))
      {
        goto LABEL_38;
      }

LABEL_17:
      v34 = v16 - 1;
      if (v15 != -1)
      {
        if (v34 == v17)
        {
          v13 = v16 - v15;
          v34 = v15;
LABEL_32:
          v9 = *(a1 + 48);
          v17 = v16;
          v15 = v34;
          goto LABEL_38;
        }

        if (v14)
        {
          CPIndexSetAddRange(v14, v15, v13);
        }

        else
        {
          v14 = CPIndexSetCreateWithRange(v15, v13);
        }
      }

      v13 = 1;
      goto LABEL_32;
    }

    v35 = __sincos_stret(v33);
    v36 = fmin(width, v29);
    v37 = v36 < 0.0;
    v38 = x;
    v39 = y;
    if (v36 < 0.0)
    {
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = v29;
      *&v38 = CGRectStandardize(v58);
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = v29;
      *(&v39 - 1) = CGRectStandardize(v59);
    }

    v40 = -v35.__sinval;
    v53.x = v39 * -v35.__sinval + v35.__cosval * v38 + 0.0;
    v53.y = v35.__cosval * v39 + v35.__sinval * v38 + 0.0;
    v60.origin.x = a2;
    v60.origin.y = a3;
    v60.size.width = a4;
    v10 = a5;
    v60.size.height = a5;
    if (!CGRectContainsPoint(v60, v53))
    {
      goto LABEL_37;
    }

    v41 = x;
    v42 = y;
    v43 = v29;
    if (v37)
    {
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = v29;
      *&v41 = CGRectStandardize(v61);
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = v29;
      *(&v42 - 1) = CGRectStandardize(v62);
    }

    v54.x = (v42 + v43) * v40 + v35.__cosval * v41 + 0.0;
    v54.y = v35.__cosval * (v42 + v43) + v35.__sinval * v41 + 0.0;
    v63.origin.x = a2;
    v63.origin.y = a3;
    v63.size.width = a4;
    v10 = a5;
    v63.size.height = a5;
    if (!CGRectContainsPoint(v63, v54))
    {
      goto LABEL_37;
    }

    if (v37)
    {
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = v29;
      v65 = CGRectStandardize(v64);
      v44 = v65.origin.x + v65.size.width;
      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = v29;
      v66 = CGRectStandardize(v65);
    }

    else
    {
      v44 = x + width;
      v66.origin.y = y;
      v66.size.height = v29;
    }

    v55.x = (v66.origin.y + v66.size.height) * v40 + v35.__cosval * v44 + 0.0;
    v55.y = v35.__cosval * (v66.origin.y + v66.size.height) + v35.__sinval * v44 + 0.0;
    v67.origin.x = a2;
    v67.origin.y = a3;
    v67.size.width = a4;
    v10 = a5;
    v67.size.height = a5;
    if (CGRectContainsPoint(v67, v55))
    {
      if (v37)
      {
        v68.origin.x = x;
        v68.origin.y = y;
        v68.size.width = width;
        v68.size.height = v29;
        v69 = CGRectStandardize(v68);
        v45 = v69.origin.x + v69.size.width;
        v69.origin.x = x;
        v69.origin.y = y;
        v69.size.width = width;
        v69.size.height = v29;
        v70 = CGRectStandardize(v69);
        y = v70.origin.y;
      }

      else
      {
        v45 = x + width;
      }

      v56.x = y * v40 + v35.__cosval * v45 + 0.0;
      v56.y = v35.__cosval * y + v35.__sinval * v45 + 0.0;
      v6 = a2;
      v5 = a3;
      v71.origin.x = a2;
      v71.origin.y = a3;
      v11 = a4;
      v71.size.width = a4;
      v10 = a5;
      v71.size.height = a5;
      if (CGRectContainsPoint(v71, v56))
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_37:
      v5 = a3;
      v11 = a4;
      v6 = a2;
    }

LABEL_38:
    v12 += 24;
  }

  while (v16++ < v9);
  if (v15 != -1)
  {
    if (v14)
    {
      CPIndexSetAddRange(v14, v15, v13);
      goto LABEL_48;
    }

    v14 = CPIndexSetCreateWithRange(v15, v13);
  }

  if (v14)
  {
LABEL_48:
    v47 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v14);
    CFRelease(v14);
    return v47;
  }

  return 0;
}

uint64_t CGPDFLayoutCreateSelectionForPath(uint64_t a1, CGPathRef path, unsigned __int8 a3)
{
  v3 = a1;
  if (!a1)
  {
    return v3;
  }

  v4 = *(a1 + 104);
  v12 = 0;
  v8[0] = a1;
  v8[1] = path;
  v8[2] = a3;
  PathBoundingBox = CGPathGetPathBoundingBox(path);
  cf_8 = 0;
  v11 = CPRangeNull;
  CGPDFFindContainedRanges(v5, v4, v8);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v6 = cf_8;
    if (cf_8)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (cf_8)
  {
    CPIndexSetAddRange(cf_8, v11, *(&v11 + 1));
    goto LABEL_5;
  }

  v6 = CPIndexSetCreateWithRange(v11, *(&v11 + 1));
  cf_8 = v6;
  if (!v6)
  {
    return 0;
  }

LABEL_6:
  v3 = CGPDFSelectionCreateWithIndexSet(*(v3 + 16), v6);
  if (cf_8)
  {
    CFRelease(cf_8);
  }

  return v3;
}

BOOL CGPDFFindContainedRanges(uint64_t a1, __n64 *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 40);
  v46 = *(a3 + 24);
  v47 = v6;
  v7.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (a2 && a2->n64_u32[0] == 516 && (Rotation = CGPDFNodeGetRotation(a2), Rotation != 0.0))
  {
    v15 = __sincos_stret(Rotation);
    v45.a = v15.__cosval;
    v45.b = -v15.__sinval;
    *&v45.c = v15;
    v45.tx = 0.0;
    v45.ty = 0.0;
    v16 = CGPathCreateMutableCopyByTransformingPath(v5, &v45);
    *(a3 + 8) = v16;
    *(a3 + 24) = CGPathGetBoundingBox(v16);
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v52.origin.x = v7.n64_f64[0];
  v52.origin.y = v9;
  v52.size.width = v11;
  v52.size.height = v13;
  if (!CGRectIntersectsRect(*(a3 + 24), v52))
  {
    *(a3 + 80) = 0;
    goto LABEL_37;
  }

  if (!a2 || (v18 = a2->n64_u32[0], (a2->n64_u32[0] & 0x200) == 0) || !a2[5].n64_u32[1] || v18 == 513 || (v18 & 0x100) != 0)
  {
    TextRange = CGPDFNodeGetTextRange(a2);
    v22 = TextRange + v21;
    if (TextRange + v21 > TextRange)
    {
      v23 = TextRange;
      v24 = TextRange + 1;
      while (1)
      {
        v25 = *(*(*a3 + 24) + 24 * v23);
        if (v25)
        {
          v26 = (v25 + 16);
          p_y = (v25 + 24);
          p_size = (v25 + 32);
          p_height = (v25 + 40);
        }

        else
        {
          p_height = &CGRectNull.size.height;
          p_size = &CGRectNull.size;
          p_y = &CGRectNull.origin.y;
          v26 = &CGRectNull;
        }

        x = v26->origin.x;
        v31 = *p_height;
        width = p_size->width;
        v33 = *p_y;
        v53.origin.x = v26->origin.x;
        v53.origin.y = *p_y;
        v53.size.width = p_size->width;
        v53.size.height = *p_height;
        if (CGRectContainsRect(*(a3 + 24), v53))
        {
          v48.x = x;
          v48.y = v33;
          if (CGPathContainsPoint(*(a3 + 8), 0, v48, *(a3 + 16)))
          {
            v34 = x + width;
            v49.x = v34;
            v49.y = v33;
            if (CGPathContainsPoint(*(a3 + 8), 0, v49, *(a3 + 16)))
            {
              v35 = v33 + v31;
              v50.x = v34;
              v50.y = v35;
              if (CGPathContainsPoint(*(a3 + 8), 0, v50, *(a3 + 16)))
              {
                v51.x = v34 - width;
                v51.y = v35;
                if (CGPathContainsPoint(*(a3 + 8), 0, v51, *(a3 + 16)))
                {
                  break;
                }
              }
            }
          }
        }

        v39 = 0;
LABEL_29:
        *(a3 + 80) = v39;
        v23 = v24;
        if (v22 <= v24++)
        {
          goto LABEL_37;
        }
      }

      v36 = *(a3 + 64);
      v37 = *(a3 + 72);
      if (v36 != 0x7FFFFFFFFFFFFFFFLL || v37)
      {
        if (*(a3 + 80) == 1)
        {
          v38 = v24 - v36;
LABEL_35:
          *(a3 + 72) = v38;
          v39 = 1;
          goto LABEL_29;
        }

        v41 = *(a3 + 56);
        if (v41)
        {
          CPIndexSetAddRange(v41, v36, v37);
        }

        else
        {
          *(a3 + 56) = CPIndexSetCreateWithRange(*(a3 + 64), *(a3 + 72));
        }
      }

      *(a3 + 64) = v23;
      v38 = 1;
      goto LABEL_35;
    }

LABEL_37:
    v19 = 1;
    if (!v17)
    {
      return v19;
    }

    goto LABEL_38;
  }

  v19 = CGPDFNodeMap(a2, CGPDFFindContainedRanges, a3);
  if (!v17)
  {
    return v19;
  }

LABEL_38:
  v42 = *(a3 + 8);
  if (v42)
  {
    CFRelease(v42);
  }

  *(a3 + 8) = v5;
  v43 = v47;
  *(a3 + 24) = v46;
  *(a3 + 40) = v43;
  return v19;
}

uint64_t CGPDFLayoutCreateSelectionForQuadPoints(uint64_t a1, double *a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    v4 = a3;
    v5 = *(a1 + 104);
    v18 = 0;
    v13 = a1;
    v14 = a2;
    v15 = CGRectNull;
    cf = 0;
    v17 = CPRangeNull;
    if (!a3)
    {
      return 0;
    }

    do
    {
      v6 = CPPolygonBounds(a2);
      v15.origin.x = v7;
      v15.origin.y = v8;
      v15.size.width = v9;
      v15.size.height = v10;
      CGPDFFindQuadrangleRanges(v6, v5, &v13);
      if (v17 != 0x7FFFFFFFFFFFFFFFLL || *(&v17 + 1) != 0)
      {
        if (cf)
        {
          CPIndexSetAddRange(cf, v17, *(&v17 + 1));
        }

        else
        {
          cf = CPIndexSetCreateWithRange(v17, *(&v17 + 1));
        }
      }

      v17 = CPRangeNull;
      LOBYTE(v18) = 0;
      a2 = v14 + 8;
      v14 += 8;
      --v4;
    }

    while (v4);
    if (cf)
    {
      v3 = CGPDFSelectionCreateWithIndexSet(*(v3 + 16), cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

BOOL CGPDFFindQuadrangleRanges(uint64_t a1, __n64 *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v61 = *(a3 + 16);
  v62 = *(a3 + 32);
  v6.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (a2 && a2->n64_u32[0] == 516 && (Rotation = CGPDFNodeGetRotation(a2), Rotation != 0.0))
  {
    v14 = Rotation;
    v15 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
    *(a3 + 8) = v15;
    v17 = __sincos_stret(v14);
    v16.f64[0] = v17.__cosval;
    v18 = 0;
    v19 = (v5 + 8);
    do
    {
      v16.f64[1] = -v17.__sinval;
      *&v15[2 * v18++] = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v17, *v19), v16, *(v19 - 1)), 0);
      v19 += 2;
    }

    while (v18 != 4);
    CPPolygonBounds(v15);
    *(a3 + 16) = v20;
    *(a3 + 24) = v21;
    *(a3 + 32) = v22;
    *(a3 + 40) = v23;
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  v66.origin.x = v6.n64_f64[0];
  v66.origin.y = v8;
  v66.size.width = v10;
  v66.size.height = v12;
  if (!CGRectIntersectsRect(*(a3 + 16), v66))
  {
    *(a3 + 72) = 0;
    goto LABEL_45;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v25 = a2->n64_u32[0];
  v26 = 1;
  if (a2->n64_u32[0] != 513 && (v25 & 0x100) == 0)
  {
    if ((v25 & 0x200) != 0 && a2[5].n64_u32[1])
    {
      v27 = CGPDFNodeMap(a2, CGPDFFindQuadrangleRanges, a3);
      if (!v24)
      {
        return v27;
      }

      goto LABEL_46;
    }

LABEL_17:
    v26 = 0;
  }

  TextRange = CGPDFNodeGetTextRange(a2);
  v30 = TextRange + v29;
  if (TextRange + v29 > TextRange)
  {
    v31 = TextRange;
    v32 = TextRange + 1;
    do
    {
      v33 = *(*(*a3 + 24) + 24 * v31);
      if (v33)
      {
        v34 = (v33 + 16);
        p_y = (v33 + 24);
        p_size = (v33 + 32);
        p_height = (v33 + 40);
      }

      else
      {
        v34 = &CGRectNull;
        p_height = &CGRectNull.size.height;
        p_size = &CGRectNull.size;
        p_y = &CGRectNull.origin.y;
      }

      x = v34->origin.x;
      v39 = *p_height;
      width = p_size->width;
      v41 = *p_y;
      v43 = *(a3 + 16);
      v42 = *(a3 + 24);
      v45 = *(a3 + 32);
      v44 = *(a3 + 40);
      v63.origin.x = v43;
      v63.origin.y = v42;
      v63.size.width = v45;
      v63.size.height = v44;
      v67.origin.x = v34->origin.x;
      v67.origin.y = *p_y;
      v67.size.width = p_size->width;
      v67.size.height = *p_height;
      if (CGRectIntersectsRect(v63, v67))
      {
        if (v26)
        {
          v64.origin.x = x;
          v64.origin.y = v41;
          v64.size.width = width;
          v64.size.height = v39;
          v65 = CGRectInset(v64, width * 0.1, v39 * 0.1);
          v46 = v65.origin.x;
          y = v65.origin.y;
          v48 = v65.size.width;
          height = v65.size.height;
          v50 = *(a3 + 8);
          if (CPPointIsInsidePolygonWithBounds(v50, v65.origin.x, v65.origin.y, v43, v42, v45, v44))
          {
            v51 = v46 + v48;
            if (CPPointIsInsidePolygonWithBounds(v50, v51, y, v43, v42, v45, v44))
            {
              v52 = y + height;
              if (CPPointIsInsidePolygonWithBounds(v50, v51, v52, v43, v42, v45, v44) && CPPointIsInsidePolygonWithBounds(v50, v51 - v48, v52, v43, v42, v45, v44))
              {
                goto LABEL_34;
              }
            }
          }
        }

        else
        {
          if (v33)
          {
            v55 = *(v33 + 88);
          }

          else
          {
            v55 = 0.0;
          }

          if (CPPointIsInsidePolygonWithBounds(*(a3 + 8), x + width * 0.5, v55, v43, v42, v45, v44))
          {
LABEL_34:
            v56 = *(a3 + 56);
            v57 = *(a3 + 64);
            if (v56 != 0x7FFFFFFFFFFFFFFFLL || v57)
            {
              if (*(a3 + 72) == 1)
              {
                v58 = v32 - v56;
LABEL_42:
                *(a3 + 64) = v58;
                v53 = 1;
                goto LABEL_29;
              }

              v59 = *(a3 + 48);
              if (v59)
              {
                CPIndexSetAddRange(v59, v56, v57);
              }

              else
              {
                *(a3 + 48) = CPIndexSetCreateWithRange(*(a3 + 56), *(a3 + 64));
              }
            }

            *(a3 + 56) = v31;
            v58 = 1;
            goto LABEL_42;
          }
        }
      }

      v53 = 0;
LABEL_29:
      *(a3 + 72) = v53;
      v31 = v32;
    }

    while (v30 > v32++);
  }

LABEL_45:
  v27 = 1;
  if (v24)
  {
LABEL_46:
    free(*(a3 + 8));
    *(a3 + 8) = v5;
    *(a3 + 16) = v61;
    *(a3 + 32) = v62;
  }

  return v27;
}

uint64_t CGPDFLayoutCreateSelectionForIntersectingRectWithOptions(uint64_t a1, int a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = a1;
  if (a1)
  {
    if ((a2 - 1) > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_1844DC0C8[a2 - 1];
    }

    v9 = *(a1 + 104);
    *&v13[8] = 0;
    *v11 = a4;
    *&v11[1] = a5;
    *&v11[2] = a6;
    *&v11[3] = a7;
    v11[4] = 0;
    v11[5] = 0;
    v12 = v8;
    *v13 = a3 == 1;
    CGPDFFindIntersectionRanges(a1, v9, v11);
    if (*&v13[4])
    {
      v7 = CGPDFSelectionCreateWithIndexSet(*(v7 + 16), *&v13[4]);
      if (*&v13[4])
      {
        CFRelease(*&v13[4]);
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

BOOL CGPDFFindIntersectionRanges(uint64_t a1, __n64 *a2, uint64_t a3)
{
  v27[8] = *MEMORY[0x1E69E9840];
  v5.n64_u64[0] = CGPDFNodeGetBounds(a2).n64_u64[0];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (!a2)
  {
    v12 = 0;
    v18 = 0;
    v13 = (a3 + 40);
    v14 = *(a3 + 40);
    v15 = (a3 + 32);
    v16 = *(a3 + 32);
    goto LABEL_10;
  }

  v12 = a2->n64_u32[0];
  v13 = (a3 + 40);
  v14 = *(a3 + 40);
  v15 = (a3 + 32);
  v16 = *(a3 + 32);
  if (a2->n64_u32[0] != 516)
  {
    v18 = 0;
LABEL_10:
    v21 = v14;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (!CGPDFRectIntersectsQuadrangleSide(v21, v5.n64_f64[0], v7, v9, v11))
    {
      CGPDFGetVerticesFromRotatedRect(v27, v5.n64_f64[0], v7, v9, v11, *(a3 + 32));
      if (!CGPDFRectIntersectsQuadrangleSide(v27, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24)))
      {
        goto LABEL_23;
      }
    }

    goto LABEL_13;
  }

  Rotation = CGPDFNodeGetRotation(a2);
  v18 = Rotation != 0.0;
  if (Rotation != 0.0)
  {
    v19 = Rotation;
    *(a3 + 32) = Rotation;
    v20 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
    *(a3 + 40) = v20;
    CGPDFGetVerticesFromRotatedRect(v20, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), -v19);
  }

  v21 = *v13;
  v12 = 516;
  if (*v13)
  {
    goto LABEL_11;
  }

LABEL_6:
  v28.origin.x = v5.n64_f64[0];
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  if (!CGRectIntersectsRect(v28, *a3))
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v12 != *(a3 + 48) && (!a2 || (*(a3 + 52) & 1) == 0 || a2->n64_u32[0] != 513 && (a2->n64_u32[0] & 0x100) == 0))
  {
    v25 = CGPDFNodeMap(a2, CGPDFFindIntersectionRanges, a3);
    if (!v18)
    {
      return v25;
    }

    goto LABEL_24;
  }

  TextRange = CGPDFNodeGetTextRange(a2);
  v24 = *(a3 + 56);
  if (v24)
  {
    CPIndexSetAddRange(v24, TextRange, v22);
  }

  else
  {
    *(a3 + 56) = CPIndexSetCreateWithRange(TextRange, v22);
  }

LABEL_23:
  v25 = 1;
  if (v18)
  {
LABEL_24:
    *v15 = v16;
    free(*v13);
    *v13 = v14;
  }

  return v25;
}

double CGPDFGetVerticesFromRotatedRect(double *a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = __sincos_stret(a6);
  *a1 = v11.__cosval * a2 - v11.__sinval * a3 + 0.0;
  a1[1] = a3 * v11.__cosval + v11.__sinval * a2 + 0.0;
  a1[2] = v11.__cosval * (a2 + a4) - v11.__sinval * a3 + 0.0;
  a1[3] = a3 * v11.__cosval + v11.__sinval * (a2 + a4) + 0.0;
  v12 = (a3 + a5) * v11.__cosval;
  a1[4] = v11.__cosval * (a2 + a4) - v11.__sinval * (a3 + a5) + 0.0;
  a1[5] = v12 + v11.__sinval * (a2 + a4) + 0.0;
  v13 = a2 + a4 - a4;
  result = v12 + v11.__sinval * v13 + 0.0;
  a1[6] = v11.__cosval * v13 - v11.__sinval * (a3 + a5) + 0.0;
  a1[7] = result;
  return result;
}

BOOL CGPDFRectIntersectsQuadrangleSide(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = 0;
  for (i = (a1 + 8); v8 != 4; i += 2)
  {
    v10 = v8 == 3 ? 0 : v8 + 1;
    v11 = (a1 + 16 * v10);
    v13 = *(i - 1);
    v12 = *i;
    v14 = *v11 - v13;
    v15 = CGIntervalIntersection(v13, v14, a2, a4);
    v17 = v16;
    if (fabs(v15) != INFINITY)
    {
      v18 = v11[1] - v12;
      v19 = CGIntervalIntersection(v12, v18, a3, a5);
      if (fabs(v19) != INFINITY && (v14 == 0.0 || v18 == 0.0 || fabs(CGIntervalIntersection(v18 * (v15 - v13), v18 * v17, v14 * (v19 - v12), v14 * v20)) != INFINITY))
      {
        break;
      }
    }

    ++v8;
  }

  return v8 < 4;
}

uint64_t CGPDFLayoutCreateSelectionForEntireLayout(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    TextRange = CGPDFNodeGetTextRange(*(a1 + 104));
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      v4 = CPIndexSetCreateWithRange(TextRange, v3);
      v1 = CGPDFSelectionCreateWithIndexSet(*(v1 + 16), v4);
      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  return v1;
}

int64x2_t *CGPDFLayoutCreateSelectionForStringRange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = CGPDFLayoutCreateIndexSetForStringRange(a1, a2, a3);
  if (result)
  {
    v5 = result;
    v6 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), result);
    CFRelease(v5);
    return v6;
  }

  return result;
}

uint64_t CGPDFLayoutCreateSelectionForRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
  {
    if (a2 + a3 > *(a1 + 48))
    {
      return 0;
    }

    v5 = CPIndexSetCreateWithRange(a2, a3);
    v3 = CGPDFSelectionCreateWithIndexSet(*(a1 + 16), v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v3;
}

double CGPDFLayoutGetBoundsForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  height = 0.0;
  if (!a1)
  {
    return INFINITY;
  }

  v4 = a2;
  if (a2 < 0)
  {
    return INFINITY;
  }

  v5 = *(a1 + 48);
  if (a2 >= v5 || a3 < 1)
  {
    return INFINITY;
  }

  if (v5 >= a2 + a3)
  {
    v8 = a2 + a3;
  }

  else
  {
    v8 = *(a1 + 48);
  }

  v9 = (*(a1 + 24) + 24 * a2 + 8);
  width = 0.0;
  x = INFINITY;
  y = INFINITY;
  do
  {
    p_height = &CGRectNull.size.height;
    p_size = &CGRectNull.size;
    p_y = &CGRectNull.origin.y;
    v16 = *(v9 - 1);
    v15 = *v9;
    v17 = (v16 + 16);
    v18 = (v16 + 24);
    v19 = (v16 + 32);
    v20 = v16 == 0;
    v21 = (v16 + 40);
    if (v20)
    {
      v22 = &CGRectNull;
    }

    else
    {
      p_y = v18;
      p_size = v19;
      p_height = v21;
      v22 = v17;
    }

    v23 = 0.0;
    if (v15)
    {
      v23 = *(v15 + 40);
    }

    v30.origin.x = CGRectUprightBoundsForRotation(v22->origin.x, *p_y, p_size->width, *p_height, v23);
    v30.origin.y = v24;
    v30.size.width = v25;
    v30.size.height = v26;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectUnion(v28, v30);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    ++v4;
    v9 += 3;
  }

  while (v4 < v8);
  return x;
}

__n64 CGPDFLayoutGetRectForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2;
    if (a2 < 0)
    {
      return 0x7FF0000000000000;
    }

    v4 = *(a1 + 48);
    if (a2 >= v4 || a3 < 1)
    {
      return 0x7FF0000000000000;
    }

    else
    {
      if (v4 >= a2 + a3)
      {
        v7 = a2 + a3;
      }

      else
      {
        v7 = *(a1 + 48);
      }

      v8 = (*(a1 + 24) + 24 * a2);
      v9 = 0;
      result.n64_u64[0] = 0x7FF0000000000000;
      v10 = 0x7FF0000000000000;
      v11 = 0;
      do
      {
        v12 = *v8;
        v8 += 3;
        p_height = &CGRectNull.size.height;
        p_size = &CGRectNull.size;
        v15 = (v12 + 16);
        v16 = (v12 + 24);
        v17 = (v12 + 32);
        v18 = (v12 + 40);
        v19 = v12 == 0;
        if (v12)
        {
          p_y = v16;
        }

        else
        {
          p_y = &CGRectNull.origin.y;
        }

        if (v19)
        {
          v21 = &CGRectNull;
        }

        else
        {
          p_size = v17;
          p_height = v18;
          v21 = v15;
        }

        v22.origin.x = v21->origin.x;
        v22.size.height = *p_height;
        v22.size.width = p_size->width;
        v22.origin.y = *p_y;
        *result.n64_u64 = CGRectUnion(*result.n64_u64, v22);
        ++v3;
      }

      while (v3 < v7);
    }
  }

  else
  {
    return 0x7FF0000000000000;
  }

  return result;
}

CFMutableStringRef CGPDFLayoutCreateString(uint64_t a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  if (*(a1 + 72) != 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v4 = v2 + 8;
      v2 = *(v2 + 8);
      v3 = *(v4 + 8);
    }

    else
    {
      v3 = 0;
    }

    v5 = malloc_type_malloc(2 * (*(a1 + 48) + v3 - v2), 0x1000040BDFB0063uLL);
    length = Mutable[1].length;
    if (length && (v7 = *(length + 24)) != 0)
    {
      Count = CFArrayGetCount(v7);
      if ((Count & 0x8000000000000000) != 0)
      {
        Mutable = CFStringCreateMutable(0, 0);
LABEL_43:
        free(v5);
        return Mutable;
      }
    }

    else
    {
      Count = 0;
    }

    v9 = 0;
    v10 = 0;
    v11 = -1;
    do
    {
      p_data = &Mutable[1].data;
      if (v10 >= Count || (v13 = Mutable[1].length) != 0 && (v14 = *(v13 + 24)) != 0 && (p_data = CFArrayGetValueAtIndex(v14, v10)) != 0)
      {
        v15 = *p_data;
      }

      else
      {
        v15 = 0;
      }

      if (v11 + 1 >= v15)
      {
        v19 = v9;
      }

      else
      {
        v16 = ~v11 + v15;
        v17 = (Mutable->length + 24 * v11 + 24);
        do
        {
          v18 = *v17;
          if (*v17)
          {
            LOWORD(v18) = *(v18 + 8);
          }

          v19 = v9 + 1;
          *&v5[2 * v9] = v18;
          v17 += 3;
          ++v9;
          --v16;
        }

        while (v16);
      }

      if (v10 >= Count)
      {
        v9 = v19;
      }

      else
      {
        v20 = Mutable[1].length;
        if (v20 && (v21 = *(v20 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v21, v10)) != 0)
        {
          v24 = ValueAtIndex[2];
          v23 = ValueAtIndex[3];
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        memcpy(&v5[2 * v19], v23, 2 * v24);
        v9 = v24 + v19;
      }

      v11 = v15;
    }

    while (v10++ != Count);
    Mutable = CFStringCreateMutable(0, 0);
    if (v9 >= 1)
    {
      v26 = v5;
      do
      {
        if (*v26 == -4)
        {
          LOWORD(cf[0]) = 32;
          v27 = cf;
          v28 = Mutable;
        }

        else
        {
          v28 = Mutable;
          v27 = v26;
        }

        CFStringAppendCharacters(v28, v27, 1);
        v26 = (v26 + 2);
        --v9;
      }

      while (v9);
    }

    goto LABEL_43;
  }

  memset(cf, 0, sizeof(cf));
  CGPDFLayoutGetRTLData(cf, a1);
  Mutable = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  return Mutable;
}

const __CFAttributedString *CGPDFLayoutCreateAttributedStringForRanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      v75 = a3 - 1;
      if (a3 >= 1)
      {
        if (*(a1 + 72) == 1)
        {
          alloc = *MEMORY[0x1E695E480];
          Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
          v6 = 0;
          do
          {
            v7 = (v4 + 16 * v6);
            v8 = v7[1];
            if (v8)
            {
              v80 = v6;
              v9 = *v7;
              String = CFAttributedStringGetString(Mutable);
              MutableCopy = CFStringCreateMutableCopy(alloc, 0, String);
              v89 = 0;
              v12 = v9 + v8;
              v83 = v9 + v8;
              v85 = MutableCopy;
              do
              {
                *v88 = 0;
                appended = CPTextServicesAppendTextLine(MutableCopy, a1, v9, v8, &v89, v88);
                v14 = appended;
                if (v12 > appended)
                {
                  if (appended < 1 || *(a1 + 48) < appended)
                  {
                    LOWORD(v15) = 0;
                  }

                  else
                  {
                    v15 = *(a1 + 24);
                    if (v15)
                    {
                      v15 = *(v15 + 24 * appended - 24);
                      if (v15)
                      {
                        LOWORD(v15) = *(v15 + 8);
                      }
                    }
                  }

                  chars = v15;
                  CFStringAppendCharacters(MutableCopy, &chars, 1);
                }

                Length = CFAttributedStringGetLength(Mutable);
                v90.location = 0;
                v90.length = Length;
                CFAttributedStringReplaceString(Mutable, v90, MutableCopy);
                v17 = CFStringGetLength(MutableCopy);
                if (v12 <= v14)
                {
                  v22 = 0;
                }

                else
                {
                  v22 = -1;
                }

                v23 = v22 - Length + v17;
                if (*v88 >= v23)
                {
                  v24 = v23;
                }

                else
                {
                  v24 = *v88;
                }

                if (v24 < 1)
                {
                  v24 = 0;
                  v26 = 0;
                  v25 = 0;
                }

                else
                {
                  v25 = 0;
                  v26 = 0;
                  v27 = 0;
                  v28 = v89;
                  do
                  {
                    v29 = v28[v27];
                    if ((v29 & 0x80000000) == 0 && v14 + ~v9 > v29)
                    {
                      v30 = v9 + v29;
                      if (v30 >= 0 && *(a1 + 48) > v30 && (v31 = *(a1 + 24)) != 0)
                      {
                        v32 = *(v31 + 24 * v30 + 8);
                      }

                      else
                      {
                        v32 = 0;
                      }

                      if (v32 != v26)
                      {
                        if (v27)
                        {
                          CGPDFLayoutApplyStyleToStringForRange(v26, Mutable, v25 + Length, v27 - v25, v18, v19, v20, v21);
                          v26 = v32;
                          v25 = v27;
                        }

                        else
                        {
                          v25 = 0;
                          v26 = v32;
                        }
                      }
                    }

                    ++v27;
                  }

                  while (v24 != v27);
                  v12 = v83;
                  MutableCopy = v85;
                }

                CGPDFLayoutApplyStyleToStringForRange(v26, Mutable, v25 + Length, v24 - v25, v18, v19, v20, v21);
                free(v89);
                v89 = 0;
                v9 = v14;
                v33 = __OFSUB__(v12, v14);
                v8 = v12 - v14;
              }

              while (!((v8 < 0) ^ v33 | (v8 == 0)));
              CFRelease(MutableCopy);
              v6 = v80;
              if (v80 < v75)
              {
                v34 = CFAttributedStringGetString(Mutable);
                v35 = CFStringCreateMutableCopy(alloc, 0, v34);
                v88[0] = 10;
                CFStringAppendCharacters(v35, v88, 1);
                v91.length = CFAttributedStringGetLength(Mutable);
                v91.location = 0;
                CFAttributedStringReplaceString(Mutable, v91, v35);
                CFRelease(v35);
              }

              v4 = a2;
            }

            ++v6;
          }

          while (v6 != a3);
        }

        else
        {
          StringForRanges = CGPDFLayoutCreateStringForRanges(a1, a2, a3);
          if (StringForRanges)
          {
            v37 = StringForRanges;
            v38 = CFStringGetLength(StringForRanges);
            if (v38 >= 1 && (v39 = v38, v40 = *MEMORY[0x1E695E480], (v41 = CFAttributedStringCreate(*MEMORY[0x1E695E480], v37, 0)) != 0))
            {
              v42 = v41;
              Mutable = CFAttributedStringCreateMutableCopy(v40, v39, v41);
              if (Mutable)
              {
                v76 = v42;
                alloca = v37;
                v43 = 0;
                v44 = 0;
                v45 = 0;
                do
                {
                  v81 = v43;
                  v46 = (a2 + 16 * v43);
                  v48 = *v46;
                  v47 = v46[1];
                  RangeInCharacterRange = CPMultiUnicodesGetRangeInCharacterRange(*(a1 + 56), *v46, v47);
                  v55 = RangeInCharacterRange == 0x7FFFFFFFFFFFFFFFLL;
                  v56 = v50 == 0;
                  if (v55 && v56)
                  {
                    v57 = 0;
                  }

                  else
                  {
                    v57 = RangeInCharacterRange;
                  }

                  if (v55 && v56)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = RangeInCharacterRange + v50;
                  }

                  v86 = v58;
                  if (v57 <= v58)
                  {
                    v59 = 0;
                    v84 = v47 + v48;
                    v60 = 1;
                    v61 = v58;
                    do
                    {
                      v62 = v48;
                      v48 = v84;
                      if (v57 < v61)
                      {
                        v63 = *(a1 + 56);
                        if (v63 && (v64 = *(v63 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v64, v57)) != 0)
                        {
                          v48 = *ValueAtIndex;
                        }

                        else
                        {
                          v48 = 0;
                        }
                      }

                      v66 = v48 - v62;
                      if (v48 <= v62)
                      {
                        v69 = v60;
                      }

                      else
                      {
                        v67 = 24 * v62 + 8;
                        v68 = v59;
                        do
                        {
                          v59 = *(*(a1 + 24) + v67);
                          if (v59 == v68)
                          {
                            v59 = v68;
                          }

                          else
                          {
                            if (v45 >= 1)
                            {
                              CGPDFLayoutApplyStyleToStringForRange(v68, Mutable, v44, v45 - v44, v51, v52, v53, v54);
                            }

                            v44 = v45;
                          }

                          v45 += v60;
                          v67 += 24;
                          v60 = 1;
                          v68 = v59;
                          v69 = 1;
                          --v66;
                        }

                        while (v66);
                      }

                      v60 = v69;
                      v61 = v86;
                      if (v57 < v86)
                      {
                        v70 = *(a1 + 56);
                        if (v70 && (v71 = *(v70 + 24)) != 0 && (v72 = CFArrayGetValueAtIndex(v71, v57)) != 0)
                        {
                          v60 = v72[2];
                        }

                        else
                        {
                          v60 = 0;
                        }
                      }
                    }

                    while (v57++ != v86);
                  }

                  else
                  {
                    v59 = 0;
                  }

                  CGPDFLayoutApplyStyleToStringForRange(v59, Mutable, v44, v45 - v44, v51, v52, v53, v54);
                  ++v45;
                  v43 = v81 + 1;
                }

                while (v81 + 1 != a3);
                v42 = v76;
                v37 = alloca;
              }

              CFRelease(v37);
            }

            else
            {
              Mutable = 0;
              v42 = v37;
            }

            CFRelease(v42);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return Mutable;
}

void CGPDFLayoutApplyStyleToStringForRange(uint64_t a1, __CFAttributedString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  *v26 = 0u;
  *cf = 0u;
  keys[0] = kCGPDFTextStyleFont;
  keys[1] = kCGPDFTextStyleFontSize;
  keys[2] = kCGPDFTextStyleFillColor;
  keys[3] = kCGPDFTextStyleFillColorSpace;
  keys[4] = kCGPDFTextStyleBaseLineOffset;
  *bytes = *(a1 + 8);
  v19 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8);
      if (ColorSpace)
      {
LABEL_5:
        v14 = 0;
LABEL_9:
        v15 = v12;
        goto LABEL_10;
      }
    }

    else
    {
      ColorSpace = v12[3];
      if (ColorSpace)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
    ColorSpace = CGColorSpaceCreateDeviceRGB();
    goto LABEL_9;
  }

  ColorSpace = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_184564878;
  v22 = unk_184564888;
  v15 = CGColorCreate(ColorSpace, components);
  v14 = 1;
LABEL_10:
  components[0] = *(a1 + 48);
  v16 = *MEMORY[0x1E695E480];
  values = CFDataCreate(*MEMORY[0x1E695E480], bytes, 8);
  cf[0] = CFDataCreate(v16, &v19, 8);
  cf[1] = v15;
  v26[0] = ColorSpace;
  v26[1] = CFDataCreate(v16, components, 8);
  v17 = CFDictionaryCreate(v16, keys, &values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v17)
  {
    v18 = v17;
    v28.location = a3;
    v28.length = a4;
    CFAttributedStringSetAttributes(a2, v28, v17, 0);
    CFRelease(v18);
  }

  if (v14)
  {
    CGColorSpaceRelease(ColorSpace);
  }

  if (!v12 && v15)
  {
    CFRelease(v15);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v26[1])
  {
    CFRelease(v26[1]);
  }
}

uint64_t CGPDFLayoutGetLineRangesForTextRange(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a5)
  {
    v6 = *a5;
    *a5 = 0;
    if (result)
    {
      if ((a2 & 0x8000000000000000) == 0 && a3 >= 1)
      {
        NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(*(result + 104), a2, a3);
        v14[0] = a2;
        v14[1] = a3;
        v14[2] = a4;
        v14[3] = a5;
        v14[4] = v6;
        if (NodeContainingTextRange)
        {
          v11 = *NodeContainingTextRange;
        }

        else
        {
          v11 = 0;
        }

        v12 = 1;
        while (kCGPDFNodeTypeOrder[v12] != v11)
        {
          if (++v12 == 12)
          {
            v13 = 0;
            return (*(&lineRangeFuncArray + v13))(0, NodeContainingTextRange, v14);
          }
        }

        v13 = v12;
        return (*(&lineRangeFuncArray + v13))(0, NodeContainingTextRange, v14);
      }
    }
  }

  return result;
}

BOOL mapLineRangeRecurse(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  TextRange = CGPDFNodeGetTextRange(a2);
  v7 = *a3;
  v8 = a3[1];
  v9 = *a3 + v8;
  v10 = v8 <= 0;
  if (v8 <= 0)
  {
    v11 = *a3 + v8;
  }

  else
  {
    v11 = *a3;
  }

  if (!v10)
  {
    v7 = v9;
  }

  v12 = TextRange + v6;
  if (v6 <= 0)
  {
    v13 = TextRange + v6;
  }

  else
  {
    v13 = TextRange;
  }

  if (v6 <= 0)
  {
    v12 = TextRange;
  }

  result = v12 <= v11 && v7 > v13;
  if (v7 > v13 && v12 > v11)
  {

    return CGPDFNodeMapByType(a2, &lineRangeFuncArray);
  }

  return result;
}

uint64_t mapLineRangeFetch(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  TextRange = CGPDFNodeGetTextRange(a2);
  v6 = v5;
  v7 = a3[1];
  if (v7 <= 0)
  {
    v8 = *a3 + v7;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 <= 0)
  {
    v9 = *a3;
  }

  else
  {
    v9 = *a3 + v7;
  }

  if (v6 <= 0)
  {
    v10 = TextRange + v6;
  }

  else
  {
    v10 = TextRange;
  }

  if (v6 <= 0)
  {
    v11 = TextRange;
  }

  else
  {
    v11 = TextRange + v6;
  }

  v12 = v11 <= v8 && v9 > v10;
  if (v9 > v10 && v11 > v8)
  {
    v15 = a3[2];
    v14 = a3[3];
    v16 = *v14;
    if (v15 && v16 < a3[4])
    {
      v17 = CPRangeIntersection(*a3, v7, TextRange, v6);
      v18 = (v15 + 16 * v16);
      *v18 = v17;
      v18[1] = v19;
      v16 = *v14;
    }

    *v14 = v16 + 1;
    return 1;
  }

  return v12;
}

uint64_t CGPDFLayoutRangeIsOfType(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
LABEL_55:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 1;
  if (a3 && a4)
  {
    v9 = a3;
    v11 = a4 - 1;
    if ((a4 - 1) > 5)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = dword_1844DC0DC[v11];
      v13 = dword_1844DC0F4[v11];
    }

    if (a2 < 0 || a1[6] <= a2 || (v14 = a1[3]) == 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v14 + 24 * a2 + 16);
    }

    if (v15 & v13) != 0 || (CGPDFLayoutIsWhiteSpaceCharacter(a1, a2))
    {
      v16 = 1;
    }

    else
    {
      if (a2 < 0 || a1[6] <= a2)
      {
        LOBYTE(v23) = 0;
      }

      else
      {
        v23 = a1[3];
        if (v23)
        {
          v23 = *(v23 + 24 * a2);
          if (v23)
          {
            LOBYTE(v23) = *(v23 + 8) == -4;
          }
        }
      }

      v16 = (v15 & 1) != 0 ? 0 : v23;
    }

    v17 = a2 + a3;
    v18 = a2 + a3 - 1;
    if (a2 + a3 >= 1 && a1[6] >= v17 && (v19 = a1[3]) != 0)
    {
      v20 = *(v19 + 24 * v18 + 16);
    }

    else
    {
      v20 = 0;
    }

    if ((v20 & v12) != 0)
    {
      LOBYTE(v21) = 1;
    }

    else
    {
      v22 = v16;
      if (CGPDFLayoutIsWhiteSpaceCharacter(a1, a2 + a3 - 1))
      {
        LOBYTE(v21) = 1;
        v16 = v22;
      }

      else
      {
        if (v17 < 1 || a1[6] < v17)
        {
          LOBYTE(v21) = 0;
          v16 = v22;
        }

        else
        {
          v21 = a1[3];
          v16 = v22;
          if (v21)
          {
            v21 = *(v21 + 24 * v18);
            if (v21)
            {
              LOBYTE(v21) = *(v21 + 8) == -4;
            }
          }
        }

        if ((v20 & 2) != 0)
        {
          LOBYTE(v21) = 0;
        }
      }
    }

    v5 = v16 & v21;
    if (a4 == 1 && (v16 & v21 & 1) == 0)
    {
      v38 = v21;
      v39 = v16;
      v24 = a2;
      v25 = a1[13];
      NodeContainingTextRange = CGPDFNodeGetNodeContainingTextRange(v25, a2, 1);
      v27 = NodeContainingTextRange;
      if (NodeContainingTextRange)
      {
        v28 = *NodeContainingTextRange == 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = CGPDFNodeGetNodeContainingTextRange(v25, a2 + a3 - 1, 1);
      v30 = v29;
      if (v29)
      {
        v31 = *v29 == 1;
        if (v28)
        {
LABEL_44:
          TextRange = CGPDFNodeGetTextRange(v27);
          if (TextRange >= a2)
          {
            v9 = a3;
          }

          else
          {
            v9 = v17 - TextRange;
          }

          if (TextRange >= a2)
          {
            v24 = a2;
          }

          else
          {
            v24 = TextRange;
          }
        }
      }

      else
      {
        v31 = 0;
        if (v28)
        {
          goto LABEL_44;
        }
      }

      if (v31)
      {
        v33 = CGPDFNodeGetTextRange(v30);
        if (v33 + v34 > v17)
        {
          v9 = v33 + v34 - v24;
        }
      }

      if (v24 == a2 && v9 == a3)
      {
        goto LABEL_55;
      }

      v36 = CPIndexSetCreateWithRange(v24, v9);
      if (CGPDFLayoutExtendRangeToWordBoundaries(a1, v36, a2, a3))
      {
        FirstIndex = CPIndexSetGetFirstIndex(v36);
        v5 = ((CPIndexSetGetLastIndex(v36) + 1 == v17) | v38) & ((FirstIndex == a2) | v39);
      }

      else
      {
        v5 = 0;
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }
  }

  return v5 & 1;
}

uint64_t CGPDFLayoutGetOffsetInLine(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    RangeInCharacterRange = CPMultiUnicodesGetRangeInCharacterRange(*(a1 + 56), a2, a3);
    v9 = 0;
    v10 = RangeInCharacterRange == 0x7FFFFFFFFFFFFFFFLL;
    v11 = v8 == 0;
    if (v10 && v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = RangeInCharacterRange;
    }

    if (v10 && v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = RangeInCharacterRange + v8;
    }

    if (v12 <= v13)
    {
      v9 = 0;
      v14 = 0;
      v15 = a2 - 1;
      v16 = a2 + a3;
      do
      {
        v17 = v16;
        if (v12 < v13)
        {
          v18 = *(a1 + 56);
          if (v18 && (v19 = *(v18 + 24)) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(v19, v12)) != 0)
          {
            v17 = *ValueAtIndex;
          }

          else
          {
            v17 = 0;
          }
        }

        v21 = ~v14 + a4;
        if (v21 >= v17 - v15 - 2)
        {
          v21 = v17 - v15 - 2;
        }

        v22 = v9 + v21;
        v23 = v14 + v21;
        if (v14 < a4)
        {
          v24 = v23 + 1;
        }

        else
        {
          v24 = v14;
        }

        if (v14 < a4)
        {
          v25 = v22 + 1;
        }

        else
        {
          v25 = v9;
        }

        if (v15 + 1 < v17)
        {
          v14 = v24;
          v9 = v25;
        }

        if (v12 < v13)
        {
          v26 = *(a1 + 56);
          if (v26)
          {
            v27 = *(v26 + 24);
            if (v27 && (v28 = CFArrayGetValueAtIndex(v27, v12)) != 0)
            {
              v26 = v28[2];
            }

            else
            {
              v26 = 0;
            }
          }

          v14 += v26;
          if (v14 >= a4)
          {
            return v9 + a2;
          }

          ++v9;
        }

        ++v12;
        v15 = v17;
      }

      while (v13 + 1 != v12);
    }

    return v9 + a2;
  }

  return a4;
}

uint64_t __CGPDFSoftMaskGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFSoftMaskGetTypeID_class);
  CGPDFSoftMaskGetTypeID_id = result;
  return result;
}

void CGPDFSoftMaskFinalize(uint64_t a1)
{
  CGPDFGroupRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void upsample_provider_release_info(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    CGDataProviderUnlock(*a1);
  }

  CGDataProviderRelease(*a1);
  v2 = *(a1 + 136);
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void upsample_provider_rewind(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (!v9)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v10);
  }

  if ((*(v9 + 20) | 2) != 3)
  {
    _CGHandleAssert("upsample_provider_rewind", 400, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "", "Unimplemented", a6, a7, a8, v10);
  }

  CGDataProviderRewind(v9);
  a1[6] = 0;
  a1[11] = 0;
}

unint64_t upsample_provider_skip_forward(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = upsample_provider_destination_byte_count_to_source_byte_count(a1, a2);
  v6 = CGDataProviderSkipForwardInternal(v4, v5);
  if ((v6 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("upsample_provider_skip_forward", 375, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "skipped >= 0", "", v7, v8, v9, v12);
  }

  v10 = v6;
  if (v6 != v5)
  {
    v2 = upsample_provider_source_byte_count_to_destination_byte_count(a1, v6);
  }

  a1[11] += v10;
  a1[6] += v2;
  return v2;
}

unint64_t upsample_provider_byte_count_to_byte_count(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if (!a4)
  {
    _CGHandleAssert("upsample_provider_byte_count_to_byte_count", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "input_bytes_per_row != 0", "rowbytes %zu", a6, a7, a8, 0);
  }

  if (!a10)
  {
    return 0;
  }

  if (a4 == a5 || !a9)
  {
    v12 = a10 / a1 / a2;
    v13 = a10 / a1 % a2;
    if (a10 / a1 >= a2 && v12 != 1)
    {
      v12 = vcvtas_u32_f32((a8 * v12) / a3);
      if (a8 - 1 < v12)
      {
        v12 = a8 - 1;
      }
    }

    if (v13 >= 2)
    {
      v13 = vcvtas_u32_f32((a7 * v13) / a2);
      if (a7 - 1 < v13)
      {
        v13 = a7 - 1;
      }
    }

    return (v13 + v12 * a7) * a1;
  }

  else
  {
    if (a10 >= a4)
    {
      v10 = a10 / a4;
    }

    else
    {
      v10 = 0;
    }

    v14 = a10 - v10 * a4;
    v15 = v14 + a6 % a4;
    if (v15 >= a4)
    {
      v14 = v15 - a4;
      ++v10;
      v15 -= a4;
    }

    v16 = v15 >= a5;
    v17 = v15 - a5;
    if (v16)
    {
      v18 = a5;
    }

    else
    {
      v18 = 0;
    }

    if (v16)
    {
      v14 = v17;
    }

    v19 = v18 / a1;
    if (v10 >= 2)
    {
      v10 = vcvtas_u32_f32((a8 * v10) / a3);
      if (a8 - 1 < v10)
      {
        v10 = a8 - 1;
      }
    }

    if (v19 != 1 && v18 >= a1)
    {
      v19 = vcvtas_u32_f32((a7 * v19) / a2);
      if (a7 - 1 < v19)
      {
        v19 = a7 - 1;
      }
    }

    return v14 + v10 * a9 + v19 * a1;
  }
}

unint64_t upsample_provider_get_bytes(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    _CGHandleAssert("upsample_provider_get_bytes", 361, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "info->src_provider_uses_random_access == false", "", a6, a7, a8, v8);
  }

  return upsample_provider_get_bytes_at_position_inner(a1, a2, 0, a3, 1, a6, a7, a8);
}

unint64_t upsample_provider_get_bytes_at_position_inner(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 290, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "pos >= 0", "pos %lld", a6, a7, a8, a3);
  }

  v9 = a4;
  v11 = *(a1 + 32);
  if (v11 < a4)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 296, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "length <= dst_scaline_size", "length %zu size %zu", a6, a7, a8, a4);
  }

  v14 = upsample_provider_destination_byte_count_to_source_byte_count(a1, a4);
  v22 = upsample_provider_byte_count_to_byte_count(*(a1 + 112), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), 0, *(a1 + 56), *(a1 + 64), *(a1 + 72), a3);
  if (v22 >= 0x7FFFFFFF)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 314, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "src_pos >= 0 && src_pos < INT_MAX", "pos %lld", v19, v20, v21, v22);
  }

  v23 = *a1;
  if (v14 > *(a1 + 144))
  {
    CGPostError("%s: bytes_to_read %zd > work_buffer_size %zd", v15, v16, v17, v18, v19, v20, v21, "upsample_provider_get_bytes_at_position_inner");
    if (v14 > *(a1 + 144))
    {
      _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 322, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "bytes_to_read <= info->work_buffer_size", "bytes to read %zu  buffer size %zu", v19, v20, v21, v14);
    }
  }

  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(v23, *(a1 + 8), *(a1 + 136), v22, v14, v19, v20, v21);
  if (BytesAtPositionInternal)
  {
    v28 = *(a1 + 136);
    v29 = *(a1 + 96);
    switch(v29)
    {
      case 32:
        if (v11 >= 4)
        {
          v46 = 0;
          v47 = *(a1 + 120);
          v48 = v47 >> 1;
          v49 = *(a1 + 104);
          v50 = 4 * v49;
          do
          {
            if (v49)
            {
              v51 = (v28 + v50 * (v48 >> 16));
              v52 = a2;
              v53 = v49;
              do
              {
                v54 = *v51++;
                *v52++ = v54;
                --v53;
              }

              while (v53);
            }

            v48 += v47;
            v46 += v49;
            a2 = (a2 + v50);
          }

          while (v46 < v11 >> 2);
        }

        break;
      case 16:
        if (v11 >= 2)
        {
          v37 = 0;
          v38 = *(a1 + 120);
          v39 = v38 >> 1;
          v40 = *(a1 + 104);
          v41 = 2 * v40;
          do
          {
            if (v40)
            {
              v42 = (v28 + v41 * (v39 >> 16));
              v43 = a2;
              v44 = v40;
              do
              {
                v45 = *v42++;
                *v43++ = v45;
                --v44;
              }

              while (v44);
            }

            v39 += v38;
            v37 += v40;
            a2 = (a2 + v41);
          }

          while (v37 < v11 >> 1);
        }

        break;
      case 8:
        if (v11)
        {
          v30 = 0;
          v31 = *(a1 + 120);
          v32 = v31 >> 1;
          v33 = *(a1 + 104);
          v34 = v33;
          do
          {
            if (v34)
            {
              v35 = 0;
              v36 = v28 + (v32 >> 16) * v33;
              do
              {
                *(a2 + v30 + v35) = *(v36 + v35);
                ++v35;
                v33 = *(a1 + 104);
              }

              while (v35 < v33);
              v31 = *(a1 + 120);
              v34 = *(a1 + 104);
            }

            v32 += v31;
            v30 += v34;
          }

          while (v30 < v11);
        }

        break;
      default:
        _CGHandleAssert("upsample_data", 159, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "", "Unimplemented", v24, v25, v26, v56);
    }
  }

  if (v14 < BytesAtPositionInternal)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position_inner", 336, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "src_length >= bytes_read", "length %zu  to read %zu", v24, v25, v26, v14);
  }

  if (BytesAtPositionInternal < v14)
  {
    v9 = upsample_provider_source_byte_count_to_destination_byte_count(a1, BytesAtPositionInternal);
  }

  if (a5)
  {
    *(a1 + 88) += BytesAtPositionInternal;
    *(a1 + 48) += v9;
  }

  return v9;
}

uint64_t upsample_provider_release_data(uint64_t *a1)
{
  CGDataProviderReleaseBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderReleaseData(v2);
}

uint64_t upsample_provider_retain_data(uint64_t *a1)
{
  CGDataProviderRetainBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderRetainData(v2);
}

unint64_t upsample_provider_get_bytes_at_position(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    _CGHandleAssert("upsample_provider_get_bytes_at_position", 353, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpsample.c", "info->src_provider_uses_random_access == true", "", a6, a7, a8, v8);
  }

  return upsample_provider_get_bytes_at_position_inner(a1, a2, a3, a4, 0, a6, a7, a8);
}

uint64_t cmap_bf_set_release(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 8));
    free(*(v1 + 32));
    v2 = *(v1 + 64);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(v1 + 48);
    *(v1 + 48) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

uint64_t cmap_bf_set_add_range(uint64_t result, unsigned int a2, unsigned int a3, unint64_t a4, unsigned __int16 *a5)
{
  if (!result || a4 > 0x400)
  {
    return result;
  }

  v9 = result;
  if (*(result + 40) < a4)
  {
    *(result + 40) = a4;
  }

  v11 = *(result + 16);
  v10 = *(result + 24);
  v12 = a4 + *&v10 + 1;
  if (v12 <= v11)
  {
    result = *(result + 32);
  }

  else
  {
    do
    {
      v11 = 2 * v11 + 10;
    }

    while (v11 < v12);
    result = malloc_type_realloc(*(result + 32), 2 * v11, 0x1000040BDFB0063uLL);
    if (!result)
    {
      return result;
    }

    v9[4] = result;
    v9[2] = v11;
    v10 = v9[3];
  }

  v9[3] = (*&v10 + 1);
  *(result + 2 * *&v10) = a4;
  result = memcpy((result + 2 * (*&v10 + 1)), a5, 2 * a4);
  *&v9[3] += a4;
  if (v9->i32[0] > a3)
  {
    if (a2 > a3)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  result = grow_code_map(v9, a3);
  if (a2 <= a3 && (result & 1) != 0)
  {
LABEL_15:
    v13 = 0;
    v14 = v9[1];
    v15 = a2;
    do
    {
      v16 = (*&v14 + 8 * v15);
      *v16 = v10.i32[0];
      v16[1] = v13;
      ++v15;
      ++v13;
    }

    while (v15 <= a3);
  }

LABEL_17:
  if (a4 == 1 && a2 <= a3)
  {
    do
    {
      v17 = *a5;
      v18 = v9[7];
      if (!*&v18)
      {
        goto LABEL_35;
      }

      v19 = vcnt_s8(v18);
      v19.i16[0] = vaddlv_u8(v19);
      if (v19.u32[0] > 1uLL)
      {
        v20 = *a5;
        if (*&v18 <= v17)
        {
          v20 = v17 % *&v9[7];
        }
      }

      else
      {
        v20 = (v18.i32[0] - 1) & v17;
      }

      v21 = *(*&v9[6] + 8 * v20);
      if (!v21 || (v22 = *v21) == 0)
      {
LABEL_35:
        operator new();
      }

      while (1)
      {
        v23 = v22[1];
        if (v23 == v17)
        {
          break;
        }

        if (v19.u32[0] > 1uLL)
        {
          if (v23 >= *&v18)
          {
            v23 %= *&v18;
          }
        }

        else
        {
          v23 &= *&v18 - 1;
        }

        if (v23 != v20)
        {
          goto LABEL_35;
        }

LABEL_34:
        v22 = *v22;
        if (!v22)
        {
          goto LABEL_35;
        }
      }

      if (*(v22 + 8) != v17)
      {
        goto LABEL_34;
      }

      *(v22 + 9) = a2++;
    }

    while (a2 <= a3);
  }

  return result;
}

uint64_t grow_code_map(void **a1, unsigned int a2)
{
  LODWORD(v2) = *a1;
  if (*a1 > a2)
  {
    return 1;
  }

  do
  {
    v2 = (2 * v2 + 10);
  }

  while (v2 <= a2);
  result = malloc_type_realloc(a1[1], 8 * v2, 0x100004000313F17uLL);
  if (result)
  {
    v5 = *a1;
    if (v5 < v2)
    {
      v6 = v2 - v5;
      v7 = (result + 8 * v5);
      do
      {
        *v7++ = 0xFFFFFFFFLL;
        --v6;
      }

      while (v6);
    }

    a1[1] = result;
    *a1 = v2;
    return 1;
  }

  return result;
}

unint64_t cmap_bf_set_get_unichars(unint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*result <= a2)
    {
      return 0;
    }

    v9 = (*(result + 8) + 8 * a2);
    v10 = *v9;
    if (v10 == -1)
    {
      return 0;
    }

    else
    {
      v11 = (*(result + 32) + 2 * v10);
      result = *v11;
      if (a3 && *v11)
      {
        v12 = v9[1];
        v13 = result;
        do
        {
          v14 = v12 + v11[v13];
          v12 = HIWORD(v14);
          *(a3 - 2 + v13 * 2) = v14;
          --v13;
        }

        while (v13 * 2);
      }

      if (*(v8 + 40) < result)
      {
        _CGHandleAssert("cmap_bf_set_get_unichars", 242, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/CMaps/cmap-bf-set.cpp", "n <= set->max_unichar_length", "n (%lu) overflowed unichar length (%lu)", a6, a7, a8, result);
      }
    }
  }

  return result;
}

uint64_t CG::DisplayListXMLSerializer::serialize(CG::DisplayListXMLSerializer *this)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(*(this + 2), *MEMORY[0x1E695EB28], &propertyValueTypeRefPtr, 0))
  {
    Value = CFBooleanGetValue(propertyValueTypeRefPtr);
    CFRelease(propertyValueTypeRefPtr);
    if (!Value)
    {
      CGPostError("%s: The destination is not an existing directory", v3, v4, v5, v6, v7, v8, v9, "virtual BOOL CG::DisplayListXMLSerializer::serialize()");
      return 0;
    }
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], *(this + 2), @"Resources", 1u);
  *(this + 5) = v11;
  if (!v11)
  {
    CGPostError("%s: Failed to create URL for Resources directory", v12, v13, v14, v15, v16, v17, v18, "virtual BOOL CG::DisplayListXMLSerializer::serialize()");
    return 0;
  }

  v19 = CFURLCreateCopyAppendingPathComponent(v10, *(this + 2), @"displayList.xml", 0);
  if (v19)
  {
    v27 = v19;
    *(this + 6) = CGDataConsumerCreateWithURL(v19);
    CFRelease(v27);
  }

  if (!*(this + 6))
  {
    CGPostError("%s: Failed to create a data consumer from given URL", v20, v21, v22, v23, v24, v25, v26, "virtual BOOL CG::DisplayListXMLSerializer::serialize()");
    return 0;
  }

  xmlTextWriterSetIndent(*(this + 4), 2);
  xmlTextWriterSetIndentString(*(this + 4), " ");
  if (xmlTextWriterStartDocument(*(this + 4), 0, "UTF-8", 0) < 0)
  {
    return 0;
  }

  if ((xmlTextWriterStartElement(*(this + 4), "dl") & 0x80000000) == 0)
  {
    v95[0] = 0;
    v95[1] = 0;
    v94 = v95;
    v33 = *(this + 1);
    v34 = *(v33 + 40);
    v103 = *(v33 + 24);
    v104 = v34;
    CG::DisplayListXMLHelper::addRectToAttributes(&v94, "frame", &v103, v28, v29, v30, v31, v32);
    CG::DisplayListXMLHelper::addFormatToAttributes(&v94, "flags", "0x%.8X", v35, v36, v37, v38, v39, *(*(this + 1) + 64));
    v45 = *(this + 1);
    if (*(v45 + 672) == *(v45 + 680))
    {
      v46 = &CGRectNull;
      p_height = &CGRectNull.size.height;
      p_y = &CGRectNull.origin.y;
      p_size = &CGRectNull.size;
    }

    else
    {
      v46 = (v45 + 72);
      p_y = (v45 + 80);
      p_size = (v45 + 88);
      p_height = (v45 + 96);
    }

    v51 = *p_height;
    v52 = *p_y;
    width = p_size->width;
    v103.f64[0] = v46->origin.x;
    v103.f64[1] = v52;
    *&v104 = width;
    *(&v104 + 1) = v51;
    CG::DisplayListXMLHelper::addRectToAttributes(&v94, "bounds", &v103, v40, v41, v42, v43, v44);
    CG::DisplayListXMLHelper::writeAttributes(&v94, *(this + 4));
    v103.f64[0] = 0.0;
    *&v103.f64[1] = &v103;
    *&v104 = 0x4002000000;
    *(&v104 + 1) = __Block_byref_object_copy__3962;
    v105 = __Block_byref_object_dispose__3963;
    __p = 0;
    v107 = 0;
    v108 = 0;
    v54 = *(this + 1);
    v97 = MEMORY[0x1E69E9820];
    v98 = 0x40000000;
    v99 = ___ZN2CG24DisplayListXMLSerializer14writeResourcesEv_block_invoke;
    v100 = &unk_1E6E18020;
    v101 = &v103;
    v102 = this;
    CG::DisplayList::enumerateAllResourcesWithBlock(v54, 0, &v97);
    if ((xmlTextWriterStartElement(*(this + 4), "resources") & 0x80000000) == 0)
    {
      v55 = *(*&v103.f64[1] + 40);
      for (i = *(*&v103.f64[1] + 48); v55 != i; v55 += 8)
      {
        v57 = *v55;
        switch(*(*v55 + 11))
        {
          case 0:
            v114 = this;
            v115 = v58;
            v113[0] = &unk_1EF238DF0;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 1:
            v114 = this;
            v115 = v66;
            v113[0] = &unk_1EF238E50;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 2:
            v114 = this;
            v115 = v63;
            v113[0] = &unk_1EF238EA0;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 3:
            v114 = this;
            v115 = v64;
            v113[0] = &unk_1EF238EF0;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 4:
            v114 = this;
            v115 = v60;
            v113[0] = &unk_1EF238F40;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 5:
            v114 = this;
            v115 = v67;
            v113[0] = &unk_1EF238F90;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 6:
            v114 = this;
            v115 = v69;
            v113[0] = &unk_1EF238FE0;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 7:
            v114 = this;
            v115 = v65;
            v113[0] = &unk_1EF239080;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 8:
            v114 = this;
            v115 = v71;
            v113[0] = &unk_1EF2390D0;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 9:
            v114 = this;
            v115 = v62;
            v113[0] = &unk_1EF239120;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 0xA:
            v114 = this;
            v115 = v70;
            v113[0] = &unk_1EF239170;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 0xB:
            v114 = this;
            v115 = v59;
            v113[0] = &unk_1EF2391C0;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 0xC:
            v114 = this;
            v115 = v61;
            v113[0] = &unk_1EF239210;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          case 0xD:
            v114 = this;
            v115 = v68;
            v113[0] = &unk_1EF239030;
            DisplayListXMLWriterResource::write(v113, *(this + 4));
            break;
          default:
            continue;
        }
      }

      xmlTextWriterEndElement(*(this + 4));
    }

    _Block_object_dispose(&v103, 8);
    if (__p)
    {
      v107 = __p;
      operator delete(__p);
    }

    if ((xmlTextWriterStartElement(*(this + 4), "entryStates") & 0x80000000) == 0)
    {
      v72 = *(this + 1);
      *&v103.f64[0] = MEMORY[0x1E69E9820];
      *&v103.f64[1] = 0x40000000;
      *&v104 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke;
      *(&v104 + 1) = &__block_descriptor_tmp_19_3952;
      v105 = this;
      v73 = v72[72];
      v74 = v72 + 73;
      if (v73 != v72 + 73)
      {
        do
        {
          (v104)(&v103, v73[4]);
          v75 = v73[1];
          if (v75)
          {
            do
            {
              v76 = v75;
              v75 = *v75;
            }

            while (v75);
          }

          else
          {
            do
            {
              v76 = v73[2];
              v77 = *v76 == v73;
              v73 = v76;
            }

            while (!v77);
          }

          v73 = v76;
        }

        while (v76 != v74);
        v72 = *(this + 1);
      }

      v97 = MEMORY[0x1E69E9820];
      v98 = 0x40000000;
      v99 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_2;
      v100 = &__block_descriptor_tmp_21_3953;
      v101 = this;
      v78 = v72[75];
      v79 = v72 + 76;
      if (v78 != v72 + 76)
      {
        do
        {
          v99(&v97, v78[4]);
          v80 = v78[1];
          if (v80)
          {
            do
            {
              v81 = v80;
              v80 = *v80;
            }

            while (v80);
          }

          else
          {
            do
            {
              v81 = v78[2];
              v77 = *v81 == v78;
              v78 = v81;
            }

            while (!v77);
          }

          v78 = v81;
        }

        while (v81 != v79);
        v72 = *(this + 1);
      }

      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 0x40000000;
      v114 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_3;
      v115 = &__block_descriptor_tmp_23_3954;
      v116 = this;
      v82 = v72[78];
      v83 = v72 + 79;
      if (v82 != v72 + 79)
      {
        do
        {
          v114(v113, v82[4]);
          v84 = v82[1];
          if (v84)
          {
            do
            {
              v85 = v84;
              v84 = *v84;
            }

            while (v84);
          }

          else
          {
            do
            {
              v85 = v82[2];
              v77 = *v85 == v82;
              v82 = v85;
            }

            while (!v77);
          }

          v82 = v85;
        }

        while (v85 != v83);
        v72 = *(this + 1);
      }

      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 0x40000000;
      v110 = ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_4;
      v111 = &__block_descriptor_tmp_25_3955;
      v112 = this;
      v86 = v72[81];
      v87 = v72 + 82;
      if (v86 != v72 + 82)
      {
        do
        {
          v110(v109, v86[4]);
          v88 = v86[1];
          if (v88)
          {
            do
            {
              v89 = v88;
              v88 = *v88;
            }

            while (v88);
          }

          else
          {
            do
            {
              v89 = v86[2];
              v77 = *v89 == v86;
              v86 = v89;
            }

            while (!v77);
          }

          v86 = v89;
        }

        while (v89 != v87);
      }

      xmlTextWriterEndElement(*(this + 4));
    }

    if ((xmlTextWriterStartElement(*(this + 4), "entries") & 0x80000000) == 0)
    {
      v90 = *(this + 1);
      *&v103.f64[0] = MEMORY[0x1E69E9820];
      *&v103.f64[1] = 0x40000000;
      *&v104 = ___ZN2CG24DisplayListXMLSerializer12writeEntriesEv_block_invoke;
      *(&v104 + 1) = &__block_descriptor_tmp_28;
      v105 = this;
      for (j = *(v90 + 672); j != *(v90 + 680); j += 2)
      {
        LOBYTE(v97) = 0;
        (v104)(&v103, *j, &v97);
        if (v97 == 1)
        {
          break;
        }
      }

      xmlTextWriterEndElement(*(this + 4));
    }

    xmlTextWriterEndElement(*(this + 4));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v95[0]);
  }

  if (xmlTextWriterEndDocument(*(this + 4)) < 0)
  {
    return 0;
  }

  result = CGDataConsumerPutBytes(*(this + 6), **(this + 3), *(*(this + 3) + 8));
  if (result)
  {
    v92 = *(this + 6);
    if (v92 && (*(v92 + 56) & 1) == 0)
    {
      v93 = *(v92 + 80);
      if (v93)
      {
        v93(*(v92 + 16));
      }
    }

    return 1;
  }

  return result;
}

void sub_184085498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a12);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void ___ZN2CG24DisplayListXMLSerializer12writeEntriesEv_block_invoke(uint64_t a1, char *lpsrc)
{
  v2 = *(a1 + 32);
  v3 = lpsrc[8];
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v7 = v2;
        v5 = &unk_1EF239460;
      }

      else
      {
        v7 = v2;
        v5 = &unk_1EF2394B0;
      }
    }

    else if (lpsrc[8])
    {
      if (v3 != 1)
      {
        return;
      }

      v7 = v2;
      v5 = &unk_1EF239410;
    }

    else
    {
      v7 = v2;
      v5 = &unk_1EF2393B0;
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v7 = v2;
      v5 = &unk_1EF239500;
    }

    else
    {
      v7 = v2;
      v5 = &unk_1EF239550;
    }
  }

  else
  {
    switch(v3)
    {
      case 6:
        v7 = v2;
        v5 = &unk_1EF2395A0;
        break;
      case 7:
        v7 = v2;
        v5 = &unk_1EF2395F0;
        break;
      case 8:
        v7 = v2;
        v5 = &unk_1EF239640;
        break;
      default:
        return;
    }
  }

  v6 = v5;
  v8 = v4;
  DisplayListXMLWriterEntry::write(&v6, *(v2 + 32));
}

void DisplayListXMLWriterEntry::write(DisplayListXMLWriterEntry *this, xmlTextWriterPtr writer)
{
  *(this + 2) = writer;
  if ((xmlTextWriterStartElement(writer, "entry") & 0x80000000) == 0)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    (*(*this + 16))(this, &v3);
    CG::DisplayListXMLHelper::writeAttributes(&v3, *(this + 2));
    (*(*this + 24))(this);
    xmlTextWriterEndElement(*(this + 2));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4[0]);
  }
}

void DisplayListXMLWriterEntry::writeAttributes(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = *(v4 + 8);
  if (v5 > 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E6E344F0[v5];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", v6);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "flags", "0x%.6X", v7, v8, v9, v10, v11, BYTE1(*(v4 + 8)));
  v12 = *(v4 + 32);
  v52[0] = *(v4 + 16);
  v52[1] = v12;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "boundingBox", v52, v13, v14, v15, v16, v17);
  v24 = *(v4 + 48);
  if (v24)
  {
    ElementIDForEntryState = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v24, v18, v19, v20, v21, v22, v23);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "drawState", "%llu", v26, v27, v28, v29, v30, ElementIDForEntryState);
  }

  v31 = *(v4 + 56);
  if (v31)
  {
    v32 = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v31, v18, v19, v20, v21, v22, v23);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "fillState", "%llu", v33, v34, v35, v36, v37, v32);
  }

  v38 = *(v4 + 64);
  if (v38)
  {
    v39 = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v38, v18, v19, v20, v21, v22, v23);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "strokeState", "%llu", v40, v41, v42, v43, v44, v39);
  }

  v45 = *(v4 + 72);
  if (v45)
  {
    v46 = CG::DisplayListXMLSerializer::getElementIDForEntryState(a1[1], v45, v18, v19, v20, v21, v22, v23);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "patternState", "%llu", v47, v48, v49, v50, v51, v46);
  }
}

uint64_t CG::DisplayListXMLSerializer::getElementIDForEntryState(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 96);
  v8 = a1 + 96;
  v9 = v10;
  if (v10)
  {
    v11 = v8;
    do
    {
      v12 = *(v9 + 32);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v9;
      }

      v9 = *(v9 + 8 * v14);
    }

    while (v9);
    if (v11 != v8 && *(v11 + 32) <= a2)
    {
      return *(v11 + 40);
    }
  }

  CGPostError("%s: Failed to find ID of entryState: %p", a2, a3, a4, a5, a6, a7, a8, "DisplayListElementID CG::DisplayListXMLSerializer::getElementIDForEntryState(const DisplayListEntryState *)");
  return -1;
}

uint64_t DisplayListXMLWriterEntryDisplayList::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v10 = *(a1 + 24);
  v11 = *(v10 + 80);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "displayList", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v5, v6, v7, v8, v9, *(v10 + 88));
  v18 = *(*(a1 + 24) + 136);
  if (v18 > 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = off_1E6E33BA0[v18];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationQuality", v19);
  v20 = *(*(a1 + 24) + 140);
  if (v20 > 4)
  {
    v21 = 0;
  }

  else
  {
    v21 = off_1E6E33A00[v20];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "renderingIntent", v21);
  return 1;
}

uint64_t CG::DisplayListXMLSerializer::getElementIDForResource(CG::DisplayListXMLSerializer *this, const CG::DisplayListResource *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(this + 9);
  v8 = this + 72;
  v9 = v10;
  if (v10)
  {
    v11 = v8;
    do
    {
      v12 = *(v9 + 4);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v9;
      }

      v9 = *&v9[8 * v14];
    }

    while (v9);
    if (v11 != v8 && *(v11 + 4) <= a2)
    {
      return *(v11 + 5);
    }
  }

  CGPostError("%s: Failed to find ID of resource: %p", a2, a3, a4, a5, a6, a7, a8, "DisplayListElementID CG::DisplayListXMLSerializer::getElementIDForResource(const DisplayListResource *)");
  return -1;
}

uint64_t DisplayListXMLWriterEntryGradient::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v10 = *(a1 + 24);
  v11 = *(v10 + 80);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "gradient", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v5, v6, v7, v8, v9, *(v10 + 88));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "options", "%d", v18, v19, v20, v21, v22, *(*(a1 + 24) + 140));
  v30 = *(*(a1 + 24) + 136);
  if (v30 == 3)
  {
    CG::DisplayListXMLHelper::addStringToAttributes(a2, "gradientType", "conic");
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "center", "{%.17lg, %.17lg}", v60, v61, v62, v63, v64, *(*(a1 + 24) + 224));
    v42 = "angle";
    *&v66 = *(*(a1 + 24) + 240);
    v59 = "%g";
    v58 = a2;
  }

  else
  {
    if (v30 == 2)
    {
      CG::DisplayListXMLHelper::addStringToAttributes(a2, "gradientType", "radial");
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "startCenter", "{%.17lg, %.17lg}", v43, v44, v45, v46, v47, *(*(a1 + 24) + 176));
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "endCenter", "{%.17lg, %.17lg}", v48, v49, v50, v51, v52, *(*(a1 + 24) + 192));
      v31 = "%g";
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "startRadius", "%g", v53, v54, v55, v56, v57, *(*(a1 + 24) + 208));
      *&v66 = *(*(a1 + 24) + 216);
      v42 = "endRadius";
    }

    else
    {
      if (v30 != 1)
      {
        CGPostError("%s: Invalid gradient type", v23, v24, v25, v26, v27, v28, v29, "virtual BOOL DisplayListXMLWriterEntryGradient::writeAttributes(DLXMLAttributes &)");
        return 1;
      }

      CG::DisplayListXMLHelper::addStringToAttributes(a2, "gradientType", "linear");
      v31 = "{%.17lg, %.17lg}";
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, "startPt", "{%.17lg, %.17lg}", v32, v33, v34, v35, v36, *(*(a1 + 24) + 144));
      v66 = *(*(a1 + 24) + 160);
      v42 = "endPt";
    }

    v58 = a2;
    v59 = v31;
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(v58, v42, v59, v37, v38, v39, v40, v41, v66);
  return 1;
}

uint64_t DisplayListXMLWriterEntryShading::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v10 = *(a1 + 24);
  v11 = *(v10 + 80);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "shading", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v5, v6, v7, v8, v9, *(v10 + 88));
  v18 = *(*(a1 + 24) + 136);
  if (v18 > 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = off_1E6E33BA0[v18];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationQuality", v19);
  v20 = *(*(a1 + 24) + 140);
  if (v20 > 4)
  {
    v21 = 0;
  }

  else
  {
    v21 = off_1E6E33A00[v20];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "renderingIntent", v21);
  return 1;
}

BOOL DisplayListXMLWriterEntryLines::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[2], "lines");
  if ((started & 0x80000000) == 0)
  {
    if (*(this[3] + 17))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if ((xmlTextWriterStartElement(this[2], "line") & 0x80000000) == 0)
        {
          v5 = (*(this[3] + 16) + v3);
          xmlTextWriterWriteFormatRaw(this[2], "{%.17lg, %.17lg}", *v5, v5[1]);
          xmlTextWriterEndElement(this[2]);
        }

        ++v4;
        v3 += 16;
      }

      while (v4 < *(this[3] + 17));
    }

    xmlTextWriterEndElement(this[2]);
  }

  return started >= 0;
}

uint64_t DisplayListXMLWriterEntryLines::writeAttributes(uint64_t *a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v4, v5, v6, v7, v8, *(a1[3] + 80));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", v9, v10, v11, v12, v13, *(a1[3] + 136));
  return 1;
}

BOOL DisplayListXMLWriterEntryRects::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[2], "rects");
  if ((started & 0x80000000) == 0)
  {
    if (*(this[3] + 18))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if ((xmlTextWriterStartElement(this[2], "rect") & 0x80000000) == 0)
        {
          v5 = (*(this[3] + 17) + v3);
          xmlTextWriterWriteFormatRaw(this[2], "{%.17lg, %.17lg}, {%.17lg, %.17lg}", *v5, v5[1], v5[2], v5[3]);
          xmlTextWriterEndElement(this[2]);
        }

        ++v4;
        v3 += 32;
      }

      while (v4 < *(this[3] + 18));
    }

    xmlTextWriterEndElement(this[2]);
  }

  return started >= 0;
}

uint64_t DisplayListXMLWriterEntryRects::writeAttributes(uint64_t *a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1[3] + 80);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E6E33B08[v4];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "drawingMode", v5);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v6, v7, v8, v9, v10, *(a1[3] + 88));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", v11, v12, v13, v14, v15, *(a1[3] + 144));
  return 1;
}

BOOL DisplayListXMLWriterEntryPath::writeChildElements(xmlTextWriterPtr *this)
{
  if (xmlTextWriterStartElement(this[2], "cgpath") < 0)
  {
    return 0;
  }

  v3 = CG::DisplayListXMLHelper::writeCGPath(*(this[3] + 11), this[2], v2);
  xmlTextWriterEndElement(this[2]);
  return v3;
}

uint64_t DisplayListXMLWriterEntryPath::writeAttributes(uint64_t *a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v4 = *(a1[3] + 80);
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E6E33B08[v4];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "drawingMode", v5);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "direct", *(a1[3] + 84));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v6, v7, v8, v9, v10, *(a1[3] + 96));
  return 1;
}

BOOL DisplayListXMLWriterEntryGlyphs::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[2], "glyphs");
  if ((started & 0x80000000) == 0)
  {
    if (*(this[3] + 31))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        if ((xmlTextWriterStartElement(this[2], "glyph") & 0x80000000) == 0)
        {
          v17[0] = 0;
          v17[1] = 0;
          v16 = v17;
          CG::DisplayListXMLHelper::addFormatToAttributes(&v16, "position", "{%.17lg, %.17lg}", v5, v6, v7, v8, v9, *(*(this[3] + 30) + v3));
          CG::DisplayListXMLHelper::addFormatToAttributes(&v16, "glyph", "%d", v10, v11, v12, v13, v14, *(*(this[3] + 29) + 2 * v4));
          CG::DisplayListXMLHelper::writeAttributes(&v16, this[2]);
          xmlTextWriterEndElement(this[2]);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v17[0]);
        }

        ++v4;
        v3 += 16;
      }

      while (v4 < *(this[3] + 31));
    }

    xmlTextWriterEndElement(this[2]);
  }

  return started >= 0;
}

uint64_t DisplayListXMLWriterEntryGlyphs::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v10 = *(a1 + 24);
  v11 = *(v10 + 80);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "font", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v5, v6, v7, v8, v9, *(v10 + 88));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ftm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v18, v19, v20, v21, v22, *(*(a1 + 24) + 136));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "scale", "%.17lg", v23, v24, v25, v26, v27, *(*(a1 + 24) + 184));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "dilation", "{%.17lg, %.17lg}", v28, v29, v30, v31, v32, *(*(a1 + 24) + 192));
  v39 = *(a1 + 24);
  v40 = *(v39 + 208);
  if (v40)
  {
    v41 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v40, v33, v34, v35, v36, v37, v38);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "fontSmoothingBGColor", "%llu", v42, v43, v44, v45, v46, v41);
    v39 = *(a1 + 24);
  }

  v47 = *(v39 + 216);
  if (v47 > 7)
  {
    v48 = 0;
  }

  else
  {
    v48 = off_1E6E33B30[v47];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "textDrawingMode", v48);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "fontRenderingStyle", "0x%.8X", v49, v50, v51, v52, v53, *(*(a1 + 24) + 220));
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "shouldDrawBMRuns", *(*(a1 + 24) + 224));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", v54, v55, v56, v57, v58, *(*(a1 + 24) + 248));
  return 1;
}

uint64_t DisplayListXMLWriterEntryImage::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntry::writeAttributes(a1, a2);
  v10 = *(a1 + 24);
  v11 = *(v10 + 80);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "image", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ctm", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v5, v6, v7, v8, v9, *(v10 + 88));
  v18 = *(*(a1 + 24) + 136);
  if (v18 > 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = off_1E6E33BA0[v18];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationQuality", v19);
  v20 = *(*(a1 + 24) + 140);
  if (v20 > 4)
  {
    v21 = 0;
  }

  else
  {
    v21 = off_1E6E33BA0[v20];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationMin", v21);
  v22 = *(*(a1 + 24) + 144);
  if (v22 > 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = off_1E6E33BA0[v22];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "interpolationMax", v23);
  v24 = *(*(a1 + 24) + 148);
  if (v24 > 4)
  {
    v25 = 0;
  }

  else
  {
    v25 = off_1E6E33A00[v24];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "renderingIntent", v25);
  return 1;
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v5[4] = a2;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>(v3 + 88, a2)[5] = v4;
  v5[0] = &unk_1EF239260;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_2(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v5[4] = a2;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>(v3 + 88, a2)[5] = v4;
  v5[0] = &unk_1EF2392C0;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_3(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v5[4] = a2;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>(v3 + 88, a2)[5] = v4;
  v5[0] = &unk_1EF239310;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

void ___ZN2CG24DisplayListXMLSerializer16writeEntryStatesEv_block_invoke_4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v4 + 1;
  v5[4] = a2;
  std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>(v3 + 88, a2)[5] = v4;
  v5[0] = &unk_1EF239360;
  v5[1] = v3;
  v5[3] = a2;
  DisplayListXMLWriterEntryState::write(v5, *(v3 + 32));
}

void *std::__tree<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::__map_value_compare<CG::DisplayListEntryState const*,std::__value_type<CG::DisplayListEntryState const*,unsigned long long>,std::less<CG::DisplayListEntryState const*>,true>,std::allocator<std::__value_type<CG::DisplayListEntryState const*,unsigned long long>>>::__emplace_unique_key_args<CG::DisplayListEntryState const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListEntryState const*&&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void DisplayListXMLWriterEntryState::write(DisplayListXMLWriterEntryState *this, xmlTextWriterPtr writer)
{
  *(this + 2) = writer;
  if ((xmlTextWriterStartElement(writer, "entryState") & 0x80000000) == 0)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    (*(*this + 16))(this, &v3);
    CG::DisplayListXMLHelper::writeAttributes(&v3, *(this + 2));
    (*(*this + 24))(this);
    xmlTextWriterEndElement(*(this + 2));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4[0]);
  }
}

uint64_t DisplayListXMLWriterEntryStatePattern::writeAttributes(void *a1, uint64_t a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "pattern");
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "baseCTM", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v4, v5, v6, v7, v8, *(a1[3] + 8));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "phase", "{%.17lg, %.17lg}", v9, v10, v11, v12, v13, *(a1[3] + 56));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "smoothness", "%.17lg", v14, v15, v16, v17, v18, *(a1[3] + 72));
  return 1;
}

void DisplayListXMLWriterEntryState::writeAttributes(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = (*(*a1 + 32))(a1);
  ElementIDForEntryState = CG::DisplayListXMLSerializer::getElementIDForEntryState(v3, v4, v5, v6, v7, v8, v9, v10);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "_id", "%llu", v12, v13, v14, v15, v16, ElementIDForEntryState);
}

uint64_t DisplayListXMLWriterEntryStateStroke::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "stroke");
  v10 = *(a1 + 24);
  v11 = *(v10 + 8);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "color", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "width", "%.17lg", v5, v6, v7, v8, v9, *(v10 + 16));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "thresh", "%.17lg", v18, v19, v20, v21, v22, *(*(a1 + 24) + 24));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "limit", "%.17lg", v23, v24, v25, v26, v27, *(*(a1 + 24) + 32));
  v34 = *(a1 + 24);
  v35 = *(v34 + 40);
  if (v35)
  {
    v36 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v35, v28, v29, v30, v31, v32, v33);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "dash", "%llu", v37, v38, v39, v40, v41, v36);
    v34 = *(a1 + 24);
  }

  v42 = *(v34 + 48);
  if (v42 > 2)
  {
    v43 = 0;
  }

  else
  {
    v43 = off_1E6E33B70[v42];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "cap", v43);
  if (*(*(a1 + 24) + 49) > 2)
  {
    v44 = 0;
  }

  else
  {
    v44 = off_1E6E33B88[*(*(a1 + 24) + 49)];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "join", v44);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "adjust", *(*(a1 + 24) + 50));
  return 1;
}

uint64_t DisplayListXMLWriterEntryStateFill::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "fill");
  v10 = *(*(a1 + 24) + 8);
  if (v10)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v10, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "color", "%llu", v12, v13, v14, v15, v16, ElementIDForResource);
  }

  return 1;
}

uint64_t DisplayListXMLWriterEntryStateDrawing::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterEntryState::writeAttributes(a1, a2);
  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", "drawing");
  v10 = *(a1 + 24);
  v11 = v10[1];
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "clip", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  v18 = v10[2];
  if (v18)
  {
    v19 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v18, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "softMask", "%llu", v20, v21, v22, v23, v24, v19);
    v10 = *(a1 + 24);
  }

  v25 = v10[3];
  if (v25)
  {
    v26 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v25, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "style", "%llu", v27, v28, v29, v30, v31, v26);
    v10 = *(a1 + 24);
  }

  v32 = v10[4];
  if (v32)
  {
    v33 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v32, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "BG", "%llu", v34, v35, v36, v37, v38, v33);
    v10 = *(a1 + 24);
  }

  v39 = v10[5];
  if (v39)
  {
    v40 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 8), v39, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "UCR", "%llu", v41, v42, v43, v44, v45, v40);
    v10 = *(a1 + 24);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "flatness", "%.17lg", v5, v6, v7, v8, v9, v10[6]);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "alpha", "%.17lg", v46, v47, v48, v49, v50, *(*(a1 + 24) + 56));
  v51 = (*(*(a1 + 24) + 96) << 26) >> 26;
  if (v51 > 0x1B)
  {
    v52 = "Unknown";
  }

  else
  {
    v52 = off_1E6E33A28[v51];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "compositeOp", v52);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "antialias", (*(*(a1 + 24) + 96) >> 6) & 1);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "alphaIsShape", (*(*(a1 + 24) + 96) >> 7) & 1);
  v53 = (*(*(a1 + 24) + 96) << 18) >> 26;
  if (v53 > 4)
  {
    v54 = 0;
  }

  else
  {
    v54 = off_1E6E33A00[v53];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "intent", v54);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "fillOverprint", (*(*(a1 + 24) + 96) >> 14) & 1);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "strokeOverprint", (*(*(a1 + 24) + 96) >> 15) & 1);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "overprintMode", "%d", v55, v56, v57, v58, v59, *(*(a1 + 24) + 100));
  return 1;
}

__n128 __Block_byref_object_copy__3962(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__3963(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN2CG24DisplayListXMLSerializer14writeResourcesEv_block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  v39 = a2;
  (*(*a2 + 16))(&__p, a2);
  v5 = __p;
  v6 = v38;
  if (__p != v38)
  {
    v7 = (v4 + 72);
    do
    {
      v8 = *v5;
      v36 = *v5;
      v9 = *v7;
      if (!*v7)
      {
        goto LABEL_11;
      }

      v10 = (v4 + 72);
      do
      {
        v11 = v9[4];
        v12 = v11 >= v8;
        v13 = v11 < v8;
        if (v12)
        {
          v10 = v9;
        }

        v9 = v9[v13];
      }

      while (v9);
      if (v10 == v7 || v8 < v10[4])
      {
LABEL_11:
        v14 = *(v4 + 56);
        *(v4 + 56) = v14 + 1;
        v40 = &v36;
        v15 = std::__tree<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::__map_value_compare<CG::DisplayListResource const*,std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::less<CG::DisplayListResource const*>,true>,std::allocator<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>>>::__emplace_unique_key_args<CG::DisplayListResource const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListResource const* const&>,std::tuple<>>(v4 + 64, v8);
        v15[5] = v14;
        *(v15 + 48) = 0;
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v16 = *(v4 + 72);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v4 + 72;
  do
  {
    v18 = *(v16 + 32);
    v12 = v18 >= a2;
    v19 = v18 < a2;
    if (v12)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * v19);
  }

  while (v16);
  if (v17 == v4 + 72 || *(v17 + 32) > a2)
  {
LABEL_21:
    v20 = *(v4 + 56);
    *(v4 + 56) = v20 + 1;
    v40 = &v39;
    v21 = std::__tree<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::__map_value_compare<CG::DisplayListResource const*,std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::less<CG::DisplayListResource const*>,true>,std::allocator<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>>>::__emplace_unique_key_args<CG::DisplayListResource const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListResource const* const&>,std::tuple<>>(v4 + 64, a2);
    v21[5] = v20;
    *(v21 + 48) = 0;
  }

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  v22 = *(*(a1 + 32) + 8);
  v24 = v22[6];
  v23 = v22[7];
  if (v24 >= v23)
  {
    v26 = v22[5];
    v27 = (v24 - v26) >> 3;
    if ((v27 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v28 = v23 - v26;
    v29 = v28 >> 2;
    if (v28 >> 2 <= (v27 + 1))
    {
      v29 = v27 + 1;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFF8)
    {
      v30 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v29;
    }

    if (v30)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CG::DisplayListResource const*>>(v30);
    }

    v31 = (8 * v27);
    *v31 = a2;
    v25 = 8 * v27 + 8;
    v32 = v22[5];
    v33 = v22[6] - v32;
    v34 = v31 - v33;
    memcpy(v31 - v33, v32, v33);
    v35 = v22[5];
    v22[5] = v34;
    v22[6] = v25;
    v22[7] = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    *v24 = a2;
    v25 = (v24 + 1);
  }

  v22[6] = v25;
}

void sub_184087848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DisplayListXMLWriterResource::write(DisplayListXMLWriterResource *this, xmlTextWriterPtr writer)
{
  *(this + 1) = writer;
  if ((xmlTextWriterStartElement(writer, "resource") & 0x80000000) == 0)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    (*(*this + 16))(this, &v3);
    CG::DisplayListXMLHelper::writeAttributes(&v3, *(this + 1));
    (*(*this + 24))(this);
    xmlTextWriterEndElement(*(this + 1));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v4[0]);
  }
}

uint64_t DisplayListXMLWriterResource::writeAttributes(CG::DisplayListXMLSerializer **a1, uint64_t a2)
{
  v4 = (*(*a1 + 4))(a1);
  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], v4, v5, v6, v7, v8, v9, v10);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "_id", "%llu", v12, v13, v14, v15, v16, ElementIDForResource);
  v17 = v4[11];
  if (v17 > 0xD)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_1E6E34538[v17];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "type", v18);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "flags", "0x%.6X", v19, v20, v21, v22, v23, v4[8]);
  return 1;
}

uint64_t DisplayListXMLWriterResourceDisplayList::writeAttributes(CG::DisplayListXMLSerializer **a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *MEMORY[0x1E695E480];
  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3], v5, v6, v7, v8, v9, v10);
  v12 = CFStringCreateWithFormat(v4, 0, @"DisplayList-%llu.dlist", ElementIDForResource);
  if (v12)
  {
    v13 = v12;
    ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
    if (ResourcesDirectory)
    {
      v15 = CFURLCreateCopyAppendingPathComponent(v4, ResourcesDirectory, v13, 0);
      if (v15)
      {
        v17 = v15;
        v18 = *(a1[3] + 2);
        if (v18)
        {
          v19 = CG::DisplayList::serializeToURL((v18 + 16), v15, v16);
          if (v19)
          {
            v20 = v19;
            PathComponent = CFURLCopyLastPathComponent(v19);
            if (PathComponent)
            {
              CFStringGetCString(PathComponent, buffer, 1024, 0x8000100u);
              CG::DisplayListXMLHelper::addStringToAttributes(a2, "fileName", buffer);
            }

            CFRelease(v20);
          }
        }

        CFRelease(v17);
      }
    }

    CFRelease(v13);
  }

  return 1;
}

uint64_t CG::DisplayListXMLSerializer::getResourcesDirectory(CG::DisplayListXMLSerializer *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(*(this + 5), 1u, buffer, 1025) && (!mkdir(buffer, 0x1FFu) || *__error() == 17))
  {
    return *(this + 5);
  }

  CGPostError("%s: Failed to create Resources directory", v2, v3, v4, v5, v6, v7, v8, "CFURLRef CG::DisplayListXMLSerializer::getResourcesDirectory(BOOL)");
  return 0;
}

BOOL DisplayListXMLWriterResourceSoftMask::writeAttributes(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v9 = *(*(a1 + 24) + 16);
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  v13 = (v9 + 72);
  if (v9)
  {
    p_size = (v9 + 88);
    p_y = (v9 + 80);
    p_height = (v9 + 96);
  }

  else
  {
    v13 = &CGRectNull;
  }

  v14 = *p_height;
  v15 = *p_y;
  width = p_size->width;
  buffer.f64[0] = v13->origin.x;
  buffer.f64[1] = v15;
  v79 = width;
  v80 = v14;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "bbox", &buffer, v4, v5, v6, v7, v8);
  v22 = (v9 + 24);
  if (!v9)
  {
    v22 = &CGAffineTransformIdentity;
  }

  tx = v22->tx;
  ty = v22->ty;
  v74 = *&v22->a;
  v75 = *&v22->c;
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "matrix", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v17, v18, v19, v20, v21, *&v22->a);
  v29 = *(a1 + 24);
  if (v29[3])
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v29[3], v23, v24, v25, v26, v27, v28);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "bg", "%llu", v31, v32, v33, v34, v35, ElementIDForResource);
    v29 = *(a1 + 24);
  }

  v36 = *MEMORY[0x1E695E480];
  v37 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v29, v23, v24, v25, v26, v27, v28);
  v38 = CFStringCreateWithFormat(v36, 0, @"SoftMask-%llu.dlist", v37, *(&v74 + 1), v75, *&tx, *&ty);
  if (!v38)
  {
    return 0;
  }

  v39 = v38;
  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(*(a1 + 16));
  if (ResourcesDirectory && (v41 = CFURLCreateCopyAppendingPathComponent(v36, ResourcesDirectory, v39, 0)) != 0)
  {
    v48 = v41;
    v49 = &CGRectNull.size.height;
    v50 = &CGRectNull.origin.y;
    v51 = &CGRectNull.size;
    v52 = (v9 + 72);
    if (v9)
    {
      v51 = (v9 + 88);
      v50 = (v9 + 80);
      v49 = (v9 + 96);
    }

    else
    {
      v52 = &CGRectNull;
    }

    v53 = *v49;
    v54 = *v50;
    v55 = v51->width;
    buffer.f64[0] = v52->origin.x;
    buffer.f64[1] = v54;
    v79 = v55;
    v80 = v53;
    CGDisplayList = CG::DisplayList::createCGDisplayList(0, &buffer, v42, v43, v44, v45, v46, v47);
    if (CGDisplayList)
    {
      v64 = CGDisplayList;
      v65 = CGDisplayListContextCreate(CGDisplayList, v57, v58, v59, v60, v61, v62, v63);
      if (v65)
      {
        v67 = v65;
        if (v9)
        {
          v68 = *(v9 + 136);
          if (v68)
          {
            v68(*(v9 + 120), v65);
          }
        }

        v69 = CG::DisplayList::serializeToURL((v64 + 16), v48, v66);
        if (v69)
        {
          v70 = v69;
          PathComponent = CFURLCopyLastPathComponent(v69);
          v72 = PathComponent != 0;
          if (PathComponent)
          {
            CFStringGetCString(PathComponent, &buffer, 1024, 0x8000100u);
            CG::DisplayListXMLHelper::addStringToAttributes(a2, "dl", &buffer);
          }

          CFRelease(v70);
        }

        else
        {
          v72 = 0;
        }

        CFRelease(v67);
      }

      else
      {
        v72 = 0;
      }

      CFRelease(v64);
    }

    else
    {
      v72 = 0;
    }

    CFRelease(v48);
  }

  else
  {
    v72 = 0;
  }

  CFRelease(v39);
  return v72;
}

uint64_t DisplayListXMLWriterResourceStyle::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v11 = *(*(a1 + 24) + 16);
  if (v11)
  {
    v12 = *(v11 + 20);
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "shadow");
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "elevation", "%.17lg", v47, v48, v49, v50, v51, *(v11 + 40));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "azimuth", "%.17lg", v52, v53, v54, v55, v56, *(v11 + 48));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "ambient", "%.17lg", v57, v58, v59, v60, v61, *(v11 + 56));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "height", "%.17lg", v62, v63, v64, v65, v66, *(v11 + 64));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "radius", "%.17lg", v67, v68, v69, v70, v71, *(v11 + 72));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "saturation", "%.17lg", v72, v73, v74, v75, v76, *(v11 + 80));
        goto LABEL_22;
      }

      if (v12 == 2)
      {
        CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "focusRing");
        v13 = *(v11 + 36);
        v14 = "graphite";
        if (v13 != 1)
        {
          v14 = 0;
        }

        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = "blue";
        }

        CG::DisplayListXMLHelper::addStringToAttributes(a2, "tint", v15);
        v16 = 0;
        v17 = *(v11 + 40);
        if (v17 <= 2)
        {
          v16 = off_1E6E33BC8[v17];
        }

        CG::DisplayListXMLHelper::addStringToAttributes(a2, "ordering", v16);
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "alpha", "%.17lg", v18, v19, v20, v21, v22, *(v11 + 48));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "radius", "%.17lg", v23, v24, v25, v26, v27, *(v11 + 56));
        CG::DisplayListXMLHelper::addFormatToAttributes(a2, "threshold", "%.17lg", v28, v29, v30, v31, v32, *(v11 + 64));
        CG::DisplayListXMLHelper::addRectToAttributes(a2, "bounds", (v11 + 72), v33, v34, v35, v36, v37);
        v43 = "accumulate";
        LODWORD(v86) = *(v11 + 104);
        v44 = "%d";
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (v12 == 3)
    {
      CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "gaussianBlur");
      v43 = "radius";
      v86 = *(v11 + 40);
      v44 = "%.17lg";
LABEL_21:
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, v43, v44, v38, v39, v40, v41, v42, v86);
      goto LABEL_22;
    }

    if (v12 != 4)
    {
LABEL_18:
      CGPostError("Unknown CGStyleType", v4, v5, v6, v7, v8, v9, v10, v85);
      goto LABEL_22;
    }

    CG::DisplayListXMLHelper::addStringToAttributes(a2, "styleType", "colorMatrix");
    v45 = 0;
    v46 = v11 + 40;
    do
    {
      CG::DisplayListXMLHelper::addFormatToAttributes(a2, CG::DisplayListXMLHelper::colorMatrixIndexKey::keys[v45], "%.17lg", v6, v7, v8, v9, v10, *(v46 + v45 * 8));
      ++v45;
    }

    while (v45 != 20);
  }

LABEL_22:
  v77 = *(*(a1 + 24) + 24);
  if (v77)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v77, v5, v6, v7, v8, v9, v10);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", v79, v80, v81, v82, v83, ElementIDForResource);
  }

  return 1;
}

BOOL DisplayListXMLWriterResourcePattern::writeAttributes(CG::DisplayListXMLSerializer **a1, uint64_t a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(a1[3] + 2);
  v5 = *(v4 + 20);
  v6 = "shading";
  if (v5 != 1)
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = "tiling";
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "patternType", v7);
  v8 = *(v4 + 120);
  *keys = *(v4 + 104);
  v69 = v8;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "patternBounds", keys, v9, v10, v11, v12, v13);
  v66 = *(v4 + 56);
  v67 = *(v4 + 64);
  v65 = *(v4 + 40);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "patternMatrix", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v14, v15, v16, v17, v18, *(v4 + 24));
  v64 = *(v4 + 144);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "step", "{%.17lg, %.17lg}", v19, v20, v21, v22, v23, *(v4 + 136));
  v24 = 0;
  v25 = *(v4 + 152);
  if (v25 <= 2)
  {
    v24 = off_1E6E33C48[v25];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "tiling", v24);
  CG::DisplayListXMLHelper::addBoolToAttributes(a2, "isColored", *(v4 + 185));
  v26 = *MEMORY[0x1E695E480];
  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3], v27, v28, v29, v30, v31, v32);
  v34 = CFStringCreateWithFormat(v26, 0, @"PatternCell-%llu.dlist", ElementIDForResource, v64, v65, v66, v67);
  if (!v34)
  {
    return 0;
  }

  v35 = v34;
  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
  if (ResourcesDirectory && (v37 = CFURLCreateCopyAppendingPathComponent(v26, ResourcesDirectory, v35, 0)) != 0)
  {
    v44 = v37;
    if (*(v4 + 185))
    {
      v45 = 0;
    }

    else
    {
      keys[0] = @"trackColors";
      values[0] = *MEMORY[0x1E695E4C0];
      v45 = CFDictionaryCreate(v26, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v47 = *(v4 + 120);
    *keys = *(v4 + 104);
    v69 = v47;
    CGDisplayList = CG::DisplayList::createCGDisplayList(v45, keys, v38, v39, v40, v41, v42, v43);
    if (v45)
    {
      CFRelease(v45);
    }

    if (CGDisplayList)
    {
      v56 = CGDisplayListContextCreate(CGDisplayList, v48, v49, v50, v51, v52, v53, v54);
      if (v56)
      {
        v58 = v56;
        v59 = *(v4 + 168);
        if (v59)
        {
          v59(*(v4 + 80), v56);
        }

        v60 = CG::DisplayList::serializeToURL((CGDisplayList + 16), v44, v57);
        if (v60)
        {
          v61 = v60;
          PathComponent = CFURLCopyLastPathComponent(v60);
          v46 = PathComponent != 0;
          if (PathComponent)
          {
            CFStringGetCString(PathComponent, keys, 1024, 0x8000100u);
            CG::DisplayListXMLHelper::addStringToAttributes(a2, "drawCell", keys);
          }

          CFRelease(v61);
        }

        else
        {
          v46 = 0;
        }

        CFRelease(v58);
      }

      else
      {
        v46 = 0;
      }

      CFRelease(CGDisplayList);
    }

    else
    {
      v46 = 0;
    }

    CFRelease(v44);
  }

  else
  {
    v46 = 0;
  }

  CFRelease(v35);
  return v46;
}

BOOL DisplayListXMLWriterResourceGradient::writeChildElements(DisplayListXMLWriterResourceGradient *this)
{
  v2 = *(*(this + 3) + 16);
  if (!v2)
  {
    return 0;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x4002000000;
  v19 = __Block_byref_object_copy__83;
  v20 = __Block_byref_object_dispose__84;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x4002000000;
  v11 = __Block_byref_object_copy__83;
  v12 = __Block_byref_object_dispose__84;
  __p = 0;
  v14 = 0;
  v15 = 0;
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(*(v3 + 24) + 48) + 1;
  }

  else
  {
    v4 = 1;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN36DisplayListXMLWriterResourceGradient18writeChildElementsEv_block_invoke;
  v7[3] = &unk_1E6E180E8;
  v7[5] = &v8;
  v7[6] = v4;
  v7[4] = &v16;
  CGGradientApplyWithBlock(v2, v7);
  v5 = CG::DisplayListXMLHelper::writeCGFloatArray("locations", v17 + 5, *(this + 1)) && CG::DisplayListXMLHelper::writeCGFloatArray("components", v9 + 5, *(this + 1));
  _Block_object_dispose(&v8, 8);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v16, 8);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v5;
}

void sub_184088754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v23 - 80), 8);
  v25 = *(v23 - 40);
  if (v25)
  {
    *(v23 - 32) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__83(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__84(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN36DisplayListXMLWriterResourceGradient18writeChildElementsEv_block_invoke(void *a1, void *a2, double a3)
{
  v6 = a3;
  std::vector<double>::push_back[abi:fe200100](*(a1[4] + 8) + 40, &v6);
  if (a1[6])
  {
    v5 = 0;
    do
    {
      std::vector<double>::push_back[abi:fe200100](*(a1[5] + 8) + 40, a2);
      ++v5;
      ++a2;
    }

    while (v5 < a1[6]);
  }
}

void std::vector<double>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t DisplayListXMLWriterResourceGradient::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v10 = *(a1 + 24);
  v11 = *(v10 + 24);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  v18 = *(v10 + 16);
  if (v18)
  {
    v18 = *(v18 + 48);
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", v5, v6, v7, v8, v9, v18);
  return 1;
}

uint64_t DisplayListXMLWriterResourceShading::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v10 = *(*(a1 + 24) + 32);
  if (v10)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v10, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", v12, v13, v14, v15, v16, ElementIDForResource);
  }

  return 1;
}

uint64_t DisplayListXMLWriterResourceImage::writeAttributes(CG::DisplayListXMLSerializer **a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v10 = a1[3];
  v11 = *(v10 + 5);
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = a1[3];
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "width", "%zu", v5, v6, v7, v8, v9, *(v10 + 3));
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "height", "%zu", v18, v19, v20, v21, v22, *(a1[3] + 4));
  v28 = *(a1[3] + 48) << 28 >> 28;
  if (v28 > 4)
  {
    LOBYTE(v29) = 0;
  }

  else
  {
    v29 = off_1E6E33A00[v28];
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "renderingIntent", "%s", v23, v24, v25, v26, v27, v29);
  if ((*(a1[3] + 48) & 0x10) != 0)
  {
    v35 = "true";
  }

  else
  {
    v35 = "false";
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "interpolate", "%s", v30, v31, v32, v33, v34, v35);
  if ((*(a1[3] + 48) & 0x20) != 0)
  {
    v41 = "true";
  }

  else
  {
    v41 = "false";
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "isMask", "%s", v36, v37, v38, v39, v40, v41);
  if ((*(a1[3] + 48) & 0x40) != 0)
  {
    v47 = "true";
  }

  else
  {
    v47 = "false";
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "isTransparent", "%s", v42, v43, v44, v45, v46, v47);
  v48 = *MEMORY[0x1E695E480];
  v55 = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3], v49, v50, v51, v52, v53, v54);
  v56 = CFStringCreateWithFormat(v48, 0, @"Image-%llu.br2", v55);
  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
  if (ResourcesDirectory)
  {
    v58 = CFURLCreateCopyAppendingPathComponent(v48, ResourcesDirectory, v56, 0);
    if (v58)
    {
      v59 = v58;
      CFURLGetFileSystemRepresentation(v58, 1u, buffer, 1025);
      FileNameForBufferReader = CGImageCreateFileNameForBufferReader(*(a1[3] + 2), buffer);
      if (FileNameForBufferReader)
      {
        v61 = FileNameForBufferReader;
        CFStringGetCString(FileNameForBufferReader, __s, 1025, 0x8000100u);
        CGImageDumpToFile(*(a1[3] + 2), __s);
        v62 = strrchr(__s, 47);
        if (v62)
        {
          v63 = v62;
          if (v56)
          {
            CFRelease(v56);
          }

          v56 = CFStringCreateWithCString(v48, v63 + 1, 0x8000100u);
        }

        CFRelease(v61);
      }

      CFRelease(v59);
    }
  }

  if (v56)
  {
    CStringPtr = CFStringGetCStringPtr(v56, 0x8000100u);
    CG::DisplayListXMLHelper::addStringToAttributes(a2, "imageName", CStringPtr);
    CFRelease(v56);
  }

  return 1;
}

uint64_t DisplayListXMLWriterResourceFont::writeAttributes(CG::DisplayListXMLSerializer **a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = CGFontCopyURL(*(a1[3] + 2));
  if (v4)
  {
    v5 = v4;
    v6 = CFURLGetString(v4);
    if (!v6)
    {
LABEL_5:
      CFRelease(v5);
      goto LABEL_13;
    }

    CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
    v8 = "fontURL";
LABEL_4:
    CG::DisplayListXMLHelper::addStringToAttributes(a2, v8, CStringPtr);
    goto LABEL_5;
  }

  v35 = 0;
  if (CGFontGetIntProperty(*(a1[3] + 2), @"com.apple.CoreGraphics.CGPDFFontFormat", &v35))
  {
    v14 = *(a1[3] + 2);
    if (v14)
    {
      explicit = atomic_load_explicit((v14 + 88), memory_order_acquire);
      if (explicit)
      {
        Property = CGPropertiesGetProperty(explicit, @"com.apple.CoreGraphics.CGPDFFontData");
        if (Property)
        {
          v17 = Property;
          v18 = CFGetTypeID(Property);
          if (v18 == CFDataGetTypeID())
          {
            if ((v35 - 1) > 5)
            {
              v20 = "font";
            }

            else
            {
              v20 = off_1E6E18108[v35 - 1];
            }

            v22 = *MEMORY[0x1E695E480];
            ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3], v19, v9, v10, v11, v12, v13);
            v5 = CFStringCreateWithFormat(v22, 0, @"Font-%llu.%s", ElementIDForResource, v20);
            ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(a1[2]);
            if (ResourcesDirectory)
            {
              v25 = CFURLCreateCopyAppendingPathComponent(v22, ResourcesDirectory, v5, 0);
              if (v25)
              {
                v26 = v25;
                v27 = CGDataConsumerCreateWithURL(v25);
                if (v27)
                {
                  v28 = v27;
                  BytePtr = CFDataGetBytePtr(v17);
                  Length = CFDataGetLength(v17);
                  if ((*(v28 + 56) & 1) == 0)
                  {
                    v31 = *(v28 + 9);
                    if (!v31)
                    {
                      goto LABEL_23;
                    }

                    v32 = *(v28 + 5);
                    v33 = *(v28 + 6) + Length;
                    *(v28 + 6) = v33;
                    if (v33 > v32)
                    {
                      *(v28 + 5) = v33;
                    }

                    v31(*(v28 + 2), BytePtr, Length);
                    if ((*(v28 + 56) & 1) == 0)
                    {
LABEL_23:
                      v34 = *(v28 + 10);
                      if (v34)
                      {
                        v34(*(v28 + 2));
                      }
                    }
                  }

                  CFRelease(v28);
                }

                CFRelease(v26);
              }
            }

            CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
            v8 = "fontResourceURL";
            goto LABEL_4;
          }
        }
      }
    }
  }

LABEL_13:
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "em", "%.17lg", v9, v10, v11, v12, v13, *(a1[3] + 3));
  return 1;
}

BOOL DisplayListXMLWriterResourceDash::writeChildElements(xmlTextWriterPtr *this)
{
  started = xmlTextWriterStartElement(this[1], "pattern");
  if (started < 1)
  {
    v5 = started;
  }

  else
  {
    v3 = *(this[3] + 2);
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v6 = (v3 + 24);
    }

    else
    {
      v6 = 0;
    }

    memset(&v16, 0, sizeof(v16));
    std::string::append(&v16, "[", 1uLL);
    if (v4)
    {
      CG::DisplayListXMLHelper::appendFormatToString(&v16, v7, v8, v9, v10, v11, v12, v13, *v6);
    }

    std::string::append(&v16, "]", 1uLL);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v16;
    }

    else
    {
      v14 = v16.__r_.__value_.__r.__words[0];
    }

    xmlTextWriterWriteRaw(this[1], v14);
    v5 = xmlTextWriterEndElement(this[1]);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  return v5 >= 0;
}

void sub_1840890EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DisplayListXMLWriterResourceDash::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v9 = *(*(a1 + 24) + 16);
  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
  }

  else
  {
    LOBYTE(v11) = 0;
    LOBYTE(v10) = 0;
  }

  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "phase", "%.17lg", v4, v5, v6, v7, v8, v10);
  CG::DisplayListXMLHelper::addFormatToAttributes(a2, "count", "%zu", v12, v13, v14, v15, v16, v11);
  return 1;
}

const __CFString *DisplayListXMLWriterResourceColorSpace::writeAttributes(CG::DisplayListXMLSerializer **a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(a1[3] + 2);
  v5 = CGColorSpaceGetType(v4) + 1;
  if (v5 > 0xC)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E6E33BE0[v5];
  }

  CG::DisplayListXMLHelper::addStringToAttributes(a2, "csType", v6);
  if (v4)
  {
    v7 = *(*(v4 + 3) + 80);
    if (v7)
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
      v9 = "name";
LABEL_11:
      CG::DisplayListXMLHelper::addStringToAttributes(a2, v9, CStringPtr);
      return 1;
    }
  }

  if (CGColorSpaceGetType(v4) != 9)
  {
    if (CGColorSpaceIsICCCompatible(v4))
    {
      v18 = *MEMORY[0x1E695E480];
      ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(a1[2], a1[3], v12, v13, v14, v15, v16, v17);
      v20 = CFStringCreateWithFormat(v18, 0, @"ColorSpace-%llu.icc", ElementIDForResource);
      v27 = CGColorSpaceCopyICCData(v4);
      v28 = a1[2];
      if (v27)
      {
        ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(v28);
        if (ResourcesDirectory)
        {
          v30 = CFURLCreateCopyAppendingPathComponent(v18, ResourcesDirectory, v20, 0);
          if (v30)
          {
            v31 = v30;
            v32 = CGDataConsumerCreateWithURL(v30);
            if (v32)
            {
              v33 = v32;
              BytePtr = CFDataGetBytePtr(v27);
              Length = CFDataGetLength(v27);
              if ((*(v33 + 56) & 1) != 0 || (v36 = *(v33 + 9)) == 0)
              {
                v39 = 0;
              }

              else
              {
                v37 = *(v33 + 5);
                v38 = *(v33 + 6) + Length;
                *(v33 + 6) = v38;
                if (v38 > v37)
                {
                  *(v33 + 5) = v38;
                }

                v39 = v36(*(v33 + 2), BytePtr, Length);
              }

              v47 = CFDataGetLength(v27);
              v49 = v47 >= 0 && v39 == v47;
              if ((*(v33 + 56) & 1) == 0)
              {
                v50 = *(v33 + 10);
                if (v50)
                {
                  v50(*(v33 + 2));
                }
              }

              CFRelease(v33);
              CFRelease(v31);
              CFRelease(v27);
              if (v49)
              {
                CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
                v9 = "profile";
                goto LABEL_11;
              }

              return 0;
            }

            CFRelease(v31);
          }
        }

        CFRelease(v27);
      }

      else
      {
        CG::DisplayListXMLSerializer::getElementIDForResource(v28, a1[3], v21, v22, v23, v24, v25, v26);
        CGPostError("%s: CGColorSpaceCopyICCData() returned NULL for ColorSpaceResource with id = %llu", v40, v41, v42, v43, v44, v45, v46, "virtual BOOL DisplayListXMLWriterResourceColorSpace::writeAttributes(DLXMLAttributes &)");
      }
    }

    else
    {
      CGPostError("%s: Unhanded colorspace kind", v11, v12, v13, v14, v15, v16, v17, "virtual BOOL DisplayListXMLWriterResourceColorSpace::writeAttributes(DLXMLAttributes &)");
    }

    return 0;
  }

  result = CGColorSpaceGetBaseColorSpace(v4);
  if (result)
  {
    result = *(result->length + 80);
    if (result)
    {
      CStringPtr = CFStringGetCStringPtr(result, 0x8000100u);
      v9 = "patternBaseName";
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t DisplayListXMLWriterResourceColor::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v10 = *(a1 + 24);
  v11 = v10[3];
  if (v11)
  {
    ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v11, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "colorSpace", "%llu", v13, v14, v15, v16, v17, ElementIDForResource);
    v10 = *(a1 + 24);
  }

  v18 = v10[4];
  if (v18)
  {
    v19 = CG::DisplayListXMLSerializer::getElementIDForResource(*(a1 + 16), v18, v4, v5, v6, v7, v8, v9);
    CG::DisplayListXMLHelper::addFormatToAttributes(a2, "pattern", "%llu", v20, v21, v22, v23, v24, v19);
    v10 = *(a1 + 24);
  }

  v25 = v10[2];
  Components = CGColorGetComponents(v25);
  if (v25)
  {
    if (v25 < 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      NumberOfComponents = *(v25 + 56);
    }
  }

  else
  {
    NumberOfComponents = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v36 = Mutable;
    CFStringAppend(Mutable, @"(");
    if (NumberOfComponents)
    {
      v37 = 1;
      v38 = NumberOfComponents;
      do
      {
        CFStringAppendFormat(v36, 0, @"%.17lg", *Components);
        if (v37 < NumberOfComponents)
        {
          CFStringAppendCString(v36, " ", 0x8000100u);
        }

        ++v37;
        ++Components;
        --v38;
      }

      while (v38);
    }

    CFStringAppend(v36, @""));
    CStringPtr = CFStringGetCStringPtr(v36, 0x8000100u);
    CG::DisplayListXMLHelper::addStringToAttributes(a2, "components", CStringPtr);
    CFRelease(v36);
  }

  return 1;
}

BOOL DisplayListXMLWriterResourceClip::writeChildElements(DisplayListXMLWriterResourceClip *this)
{
  v71 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 3) + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 120);
  if (!v2)
  {
    return 1;
  }

  if ((xmlTextWriterStartElement(*(this + 1), "stack") & 0x80000000) == 0)
  {
    xmlTextWriterWriteFormatAttribute(*(this + 1), "count", "%zu", v2);
    v11 = 0;
    alloc = *MEMORY[0x1E695E480];
    for (i = 16; ; ++i)
    {
      v13 = *(*(this + 3) + 16);
      if (v13 && v13[15] > v11)
      {
        if (v13[14] == 3)
        {
          v14 = &v13[i];
        }

        else
        {
          v14 = (v13[16] + 8 * v11);
        }

        v15 = *v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v15 + 8);
      if (v16 > 4 || v16 == 1)
      {
        CGPostError("%s: Unexpected clip type (%d) encountered,", v4, v5, v6, v7, v8, v9, v10, "virtual BOOL DisplayListXMLWriterResourceClip::writeChildElements()");
      }

      else if ((xmlTextWriterStartElement(*(this + 1), "clip") & 0x80000000) == 0)
      {
        v68[0] = 0;
        v68[1] = 0;
        v67 = v68;
        v18 = *(v15 + 8);
        v19 = v18;
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            if (v18 == 3)
            {
              v29 = *(v15 + 24);
              if (v29)
              {
                v30 = *(v29 + 80);
                *buffer = *(v29 + 64);
                *v70 = v30;
                CG::DisplayListXMLHelper::addRectToAttributes(&v67, "rect", buffer, v6, v7, v8, v9, v10);
                v63 = *(v29 + 40);
                v64 = *(v29 + 48);
                v62 = *(v29 + 24);
                CG::DisplayListXMLHelper::addFormatToAttributes(&v67, "matrix", "[%.17lg %.17lg %.17lg %.17lg %.17lg %.17lg]", v31, v32, v33, v34, v35, *(v29 + 8));
                v65 = *(v29 + 56);
                if (v65)
                {
                  ElementIDForResource = CG::DisplayListXMLSerializer::getElementIDForResource(*(this + 2), *(this + 3), v36, v37, v38, v39, v40, v41);
                  v43 = CFStringCreateWithFormat(alloc, 0, @"Clip-%llu_Mask-%lu.tiff", ElementIDForResource, v11 + 1, v62, v63, v64);
                  ResourcesDirectory = CG::DisplayListXMLSerializer::getResourcesDirectory(*(this + 2));
                  if (ResourcesDirectory)
                  {
                    v45 = CFURLCreateCopyAppendingPathComponent(alloc, ResourcesDirectory, v43, 0);
                    v46 = v45;
                    if (v45)
                    {
                      CFURLGetFileSystemRepresentation(v45, 1u, buffer, 1025);
                      CGImageWriteToFile(v65, buffer);
                      CFRelease(v46);
                    }
                  }

                  CStringPtr = CFStringGetCStringPtr(v43, 0x8000100u);
                  CG::DisplayListXMLHelper::addStringToAttributes(&v67, "maskImage", CStringPtr);
                }
              }
            }

            CG::DisplayListXMLHelper::addStringToAttributes(&v67, "type", "mask");
            goto LABEL_37;
          }

          if (v19 == 4)
          {
            goto LABEL_23;
          }
        }

        else if (v18)
        {
          if (v19 != 2)
          {
            goto LABEL_37;
          }

LABEL_23:
          CG::DisplayListXMLHelper::addStringToAttributes(&v67, "type", off_1E6E339D0[(v18 + 1)]);
        }

        else
        {
          CG::DisplayListXMLHelper::addStringToAttributes(&v67, "type", "rect");
          if (*(v15 + 8))
          {
            v25 = &CGRectNull;
            p_height = &CGRectNull.size.height;
            p_y = &CGRectNull.origin.y;
            p_size = &CGRectNull.size;
          }

          else
          {
            v25 = (v15 + 24);
            p_y = (v15 + 32);
            p_size = (v15 + 40);
            p_height = (v15 + 48);
          }

          v48 = *p_height;
          v49 = *p_y;
          width = p_size->width;
          *buffer = v25->origin.x;
          *&buffer[8] = v49;
          v70[0] = width;
          v70[1] = v48;
          CG::DisplayListXMLHelper::addRectToAttributes(&v67, "rect", buffer, v20, v21, v22, v23, v24);
        }

LABEL_37:
        CG::DisplayListXMLHelper::writeAttributes(&v67, *(this + 1));
        v58 = *(v15 + 8);
        if (v58 == 4)
        {
          CGPostError("%s: kCGClipTypeTextClipping is unimplemented", v51, v52, v53, v54, v55, v56, v57, "virtual BOOL DisplayListXMLWriterResourceClip::writeChildElements()");
        }

        else if (v58 == 2 && v58 == 2)
        {
          v59 = *(v15 + 24);
          if (v59)
          {
            if ((xmlTextWriterStartElement(*(this + 1), "cgpath") & 0x80000000) == 0)
            {
              CG::DisplayListXMLHelper::writeCGPath(v59, *(this + 1), v60);
              xmlTextWriterEndElement(*(this + 1));
            }
          }
        }

        xmlTextWriterEndElement(*(this + 1));
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v68[0]);
      }

      if (v2 == ++v11)
      {
        return xmlTextWriterEndElement(*(this + 1)) >= 0;
      }
    }
  }

  return 0;
}

uint64_t DisplayListXMLWriterResourceClip::writeAttributes(uint64_t a1, uint64_t a2)
{
  DisplayListXMLWriterResource::writeAttributes(a1, a2);
  v4 = *(a1 + 24);
  v5 = *(v4 + 40);
  v12[0] = *(v4 + 24);
  v12[1] = v5;
  CG::DisplayListXMLHelper::addRectToAttributes(a2, "bbox", v12, v6, v7, v8, v9, v10);
  return 1;
}

void *std::__tree<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::__map_value_compare<CG::DisplayListResource const*,std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>,std::less<CG::DisplayListResource const*>,true>,std::allocator<std::__value_type<CG::DisplayListResource const*,std::pair<unsigned long long,BOOL>>>>::__emplace_unique_key_args<CG::DisplayListResource const*,std::piecewise_construct_t const&,std::tuple<CG::DisplayListResource const* const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void CG::DisplayListXMLSerializer::~DisplayListXMLSerializer(CG::DisplayListXMLSerializer *this)
{
  CG::DisplayListXMLSerializer::~DisplayListXMLSerializer(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF238D68;
  xmlFreeTextWriter(*(this + 4));
  xmlBufferFree(*(this + 3));
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  std::__tree<unsigned long>::destroy(*(this + 12));
  std::__tree<unsigned long>::destroy(*(this + 9));

  CG::DisplayListSerializer::~DisplayListSerializer(this);
}

void CG::DisplayListSerializer::~DisplayListSerializer(CG::DisplayListSerializer *this)
{
  *this = &unk_1EF238DC8;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t CGFontGetGlyphPaths(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v13 = a3;
  v14 = a2;
  if ((CGFontGetGlyphPaths_warned & 1) == 0)
  {
    CGFontGetGlyphPaths_warned = 1;
  }

  if (!a1)
  {
    return 0;
  }

  result = 0;
  if (v12)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17 && a8)
  {
    if (!v12)
    {
      return 1;
    }

    info[0] = a7;
    info[1] = a8;
    result = get_font_info(a1);
    if (!result)
    {
      return result;
    }

    v18 = *(result + 8);
    if (v18)
    {
      v19 = 1.0 / v18;
      if (a6 && *a6 != 72.0)
      {
        v19 = v19 * (72.0 / *a6);
      }

      v30 = *&v19;
      v31.f64[0] = 0.0;
      v31.f64[1] = v19;
      v32 = 0uLL;
      if (a5)
      {
        v20 = *(a5 + 16);
        v21 = vmulq_f64(v20, 0);
        v22 = vmlaq_n_f64(v21, *a5, v19);
        v23 = vmlaq_f64(vmulq_n_f64(v20, v19), 0, *a5);
        v24 = vaddq_f64(*(a5 + 32), vmlaq_f64(v21, 0, *a5));
        v30 = v22;
        v31 = v23;
        v32 = v24;
      }

      do
      {
        if (*a8)
        {
          (*a8)(a7, *v14);
        }

        v25 = (*(a1[2] + 408))(a1[14], 0, *v14);
        if (v25)
        {
          v26 = v25;
          CGPathApply(v25, info, process_path_element);
          CFRelease(v26);
        }

        else
        {
          CGPathApply(0, info, process_path_element);
        }

        v27 = *(a8 + 48);
        if (v27)
        {
          v27(a7, *v14);
        }

        if (v13)
        {
          v28 = *v13++;
          v32 = vaddq_f64(v28, v32);
        }

        ++v14;
        --v12;
      }

      while (v12);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t process_path_element(uint64_t result, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v9 = *(result + 8);
  v10 = *a2;
  if (*a2 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_26;
      }

      v13 = v9[2];
      if (!v13)
      {
        return result;
      }
    }

    else
    {
      v13 = v9[1];
      if (!v13)
      {
        return result;
      }
    }

    v42 = vmlaq_n_f64(vmulq_n_f64(*(result + 32), *(*(a2 + 8) + 8)), *(result + 16), **(a2 + 8));
    v40 = vaddq_f64(*(result + 48), v42);
    v41 = *result;
    v42.n128_u64[0] = v40.n128_u64[1];

    return v13(v41, v40, v42);
  }

  else
  {
    switch(v10)
    {
      case 2:
        v14 = v9[3];
        if (v14)
        {
          v15 = *(a2 + 8);
          v16 = v15[1];
          v17 = *(result + 16);
          v18 = *(result + 24);
          v19 = *(result + 32);
          v20 = *(result + 40);
          v21 = *(result + 48);
          v22 = *(result + 56);
          a3.n128_f64[0] = v21 + v16 * v19 + v17 * *v15;
          a4.n128_f64[0] = v22 + v16 * v20 + v18 * *v15;
          v23 = v15[2];
          v24 = v15[3];
          a5.n128_f64[0] = v21 + v19 * v24 + v17 * v23;
          v25 = *result;

          a6.n128_f64[0] = v22 + v20 * v24 + v18 * v23;
          return v14(v25, a3, a4, a5, a6);
        }

        break;
      case 3:
        v26 = v9[4];
        if (v26)
        {
          v27 = *(a2 + 8);
          v28 = v27[1];
          v29 = *(result + 16);
          v30 = *(result + 24);
          v31 = *(result + 32);
          v32 = *(result + 40);
          v33 = *(result + 48);
          v34 = *(result + 56);
          a3.n128_f64[0] = v33 + v28 * v31 + v29 * *v27;
          a4.n128_f64[0] = v34 + v28 * v32 + v30 * *v27;
          v35 = v27[2];
          v36 = v27[3];
          a5.n128_f64[0] = v33 + v31 * v36 + v29 * v35;
          a6.n128_f64[0] = v34 + v32 * v36 + v30 * v35;
          v37 = v27[4];
          v38 = v27[5];
          a7.n128_f64[0] = v33 + v31 * v38 + v29 * v37;
          a8.n128_f64[0] = v34 + v32 * v38 + v30 * v37;
          v39 = *result;

          return v26(v39, a3, a4, a5, a6, a7, a8);
        }

        break;
      case 4:
        v11 = v9[5];
        if (v11)
        {
          v12 = *result;

          return v11(v12);
        }

        return result;
      default:
LABEL_26:
        abort();
    }
  }

  return result;
}

void *CGPDFXRefStreamCreate(const void **a1, uint64_t a2, int a3)
{
  v4 = a2;
  v23 = a2;
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004016EE4530uLL);
  __CFSetLastAllocationEventName();
  if (v6)
  {
    *v6 = a1;
    v6[3] = v4;
    v7 = pdf_object_scanner_create_with_xref(a1, 0);
    v6[2] = v7;
    if (v7)
    {
      v14 = v6 + 1;
      while (1)
      {
        v15 = xref_stream_create(v7, v4, v8, v9, v10, v11, v12, v13);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = *v14;
        v18 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
        *v18 = v17;
        v18[1] = v16;
        *v14 = v18;
        if (!a3)
        {
          goto LABEL_16;
        }

        if (!CGPDFDictionaryGetOffset(*(v16 + 1), "Prev", &v23))
        {
          v18 = *v14;
          if (*v14)
          {
LABEL_16:
            v21 = 0;
            do
            {
              v22 = v18;
              v18 = *v18;
              *v22 = v21;
              v21 = v22;
            }

            while (v18);
          }

          else
          {
            v22 = 0;
          }

          *v14 = v22;
          return v6;
        }

        v4 = v23;
        if (!v23)
        {
          break;
        }

        v19 = v6 + 1;
        while (1)
        {
          v19 = *v19;
          if (!v19)
          {
            break;
          }

          if (*v19[1] == v23)
          {
            goto LABEL_13;
          }
        }

        v7 = v6[2];
      }
    }

LABEL_13:
    CGPDFXRefStreamRelease(v6);
    return 0;
  }

  return v6;
}

char *xref_stream_create(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v41 = 0;
  value = 0;
  memset(v40, 0, sizeof(v40));
  CGPDFSourceSetPosition(a1[1], a2, a3, a4, a5, a6, a7, a8);
  if ((pdf_object_scanner_read_indirect_object(a1, v40, v9, v10, v11, v12, v13, v14) & 1) == 0)
  {
    pdf_error("missing or invalid cross-reference stream.");
    return 0;
  }

  if (DWORD2(v40[0]) != 9)
  {
    pdf_error("missing or invalid cross-reference stream.");
LABEL_11:
    if ((DWORD2(v40[0]) - 5) <= 4)
    {
      pdf_object_release_compound_value(v40);
    }

    return 0;
  }

  v15 = v41;
  if (v41)
  {
    *(v41 + 41) = 1;
  }

  v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004023CB03E4uLL);
  __CFSetLastAllocationEventName();
  if (!v16)
  {
    goto LABEL_11;
  }

  if (v15)
  {
    v17 = *(v15 + 48);
    if (v17)
    {
      CFRetain(*(v15 + 48));
    }
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 1) = v17;
  if (!CGPDFDictionaryGetName(v17, "Type", &value))
  {
LABEL_18:
    pdf_error(v18);
    goto LABEL_19;
  }

  if (strcmp(value, "XRef"))
  {
LABEL_19:
    if ((DWORD2(v40[0]) - 5) <= 4)
    {
      pdf_object_release_compound_value(v40);
    }

    xref_stream_release(v16);
    return 0;
  }

  v52 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  if (!CGPDFDictionaryGetInteger(*(v16 + 1), "Size", &v50))
  {
    goto LABEL_19;
  }

  if (!CGPDFDictionaryGetIntegers(*(v16 + 1), "W", v53, 3))
  {
    goto LABEL_19;
  }

  v20 = 0;
  do
  {
    if (v53[v20] > 8uLL)
    {
      goto LABEL_18;
    }

    ++v20;
  }

  while (v20 != 3);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  description = pdf_filter_chain_create_description(v15, *(v15 + 40));
  if (description)
  {
    v22 = description;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 0x40000000;
    v43[2] = __xref_stream_read_sections_block_invoke;
    v43[3] = &unk_1E6E18140;
    v43[4] = &v44;
    CGCFArrayApplyBlock(description, v43);
    CFRelease(v22);
  }

  if (*(v45 + 24) == 1)
  {
LABEL_53:
    _Block_object_dispose(&v44, 8);
    goto LABEL_19;
  }

  v23 = CGPDFStreamCreateFilterChain(v15, &v51);
  if (!v23 || v51)
  {
    if (!v23)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CGPDFDictionaryGetArray(*(v16 + 1), "Index", &v52))
  {
    if (v52)
    {
      v25 = *(v52 + 2);
      v24 = *(v52 + 3);
      if (((v24 - v25) & 8) != 0)
      {
LABEL_51:
        goto LABEL_52;
      }

      v26 = v16 + 16;
      if (v24 != v25)
      {
        v27 = 0;
        v28 = (v24 - v25) >> 3;
        while (CGPDFArrayGetInteger(v52, v27, &v49))
        {
          v29 = v27 + 1;
          if (!CGPDFArrayGetInteger(v52, v29, &v48))
          {
            break;
          }

          section = xref_stream_read_section(v23, v53, v49, v48);
          if (!section)
          {
            goto LABEL_52;
          }

          v31 = section;
          v32 = *v26;
          v33 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
          *v33 = v32;
          v33[1] = v31;
          *v26 = v33;
          v27 = v29 + 1;
          if (v27 >= v28)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_51;
      }
    }

    else
    {
      v26 = v16 + 16;
    }

    v33 = *v26;
    if (*v26)
    {
LABEL_56:
      v38 = 0;
      do
      {
        v39 = v33;
        v33 = *v33;
        *v39 = v38;
        v38 = v39;
      }

      while (v33);
    }

    else
    {
      v39 = 0;
    }

    *v26 = v39;
  }

  else
  {
    v34 = xref_stream_read_section(v23, v53, 0, v50);
    if (!v34)
    {
LABEL_52:
      CFRelease(v23);
      goto LABEL_53;
    }

    v35 = v34;
    v36 = *(v16 + 2);
    v37 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *v37 = v36;
    v37[1] = v35;
    *(v16 + 2) = v37;
  }

  CFRelease(v23);
  _Block_object_dispose(&v44, 8);
  if ((DWORD2(v40[0]) - 5) <= 4)
  {
    pdf_object_release_compound_value(v40);
  }

  return v16;
}

void xref_stream_release(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        free(v2[1]);
        v2 = *v2;
      }

      while (v2);
      v3 = a1[2];
      if (v3)
      {
        do
        {
          v4 = *v3;
          free(v3);
          v3 = v4;
        }

        while (v4);
      }
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t __xref_stream_read_sections_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    valuePtr = 0;
    result = CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
    if (result)
    {
      if (valuePtr == 6)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

void *xref_stream_read_section(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4 > 0x155555555555555)
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 24 * a4 + 16, 0x1000040451B5BE8uLL);
  __CFSetLastAllocationEventName();
  if (v8)
  {
    *v8 = a3;
    v8[1] = a4;
    if (a4)
    {
      v16 = 0;
      v30 = v8;
      v31 = a4;
      v32 = v8 + 2;
      while (2)
      {
        v17 = 0;
        v33 = &v32[3 * v16];
        do
        {
          v18 = a2[v17];
          if (v18)
          {
            v19 = 0;
            v20 = 0;
            v21 = 1;
            v22 = a2[v17];
            while (1)
            {
              v23 = CGPDFSourceGetc(a1, v9, v10, v11, v12, v13, v14, v15);
              if (v23 == -1)
              {
                break;
              }

              v20 = v23 | (v20 << 8);
              v19 = v21++ >= v18;
              if (!--v22)
              {
                goto LABEL_12;
              }
            }

            if (!v19)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v20 = 0;
LABEL_12:
            *(&v34 + v17) = v20;
          }

          ++v17;
        }

        while (v17 != 3);
        if (*a2)
        {
          v24 = v34;
        }

        else
        {
          v24 = 1;
        }

        if (v24 == 2)
        {
          *v33 = v35;
          *(v33 + 8) = 0;
          *(v33 + 18) |= 3u;
        }

        else
        {
          if (v24 == 1)
          {
            v28 = WORD4(v35);
            v26 = &v32[3 * v16];
            *v33 = v35;
            *(v33 + 8) = v28;
            LOBYTE(v27) = *(v33 + 18) & 0xFC | 1;
          }

          else
          {
            if (v24)
            {
LABEL_27:
              free(v30);
              return 0;
            }

            v25 = WORD4(v35);
            v26 = &v32[3 * v16];
            *v33 = v35;
            *(v33 + 8) = v25;
            v27 = *(v33 + 18) & 0xFC;
          }

          *(v26 + 18) = v27;
        }

        if (++v16 != v31)
        {
          continue;
        }

        return v30;
      }
    }
  }

  return v8;
}

uint64_t CGPDFXRefStreamGetObject(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 1;
  do
  {
    v8 = *v8;
    if (!v8)
    {
      return 0;
    }

    entry = xref_stream_get_entry(*(v8[1] + 16), a2, a3);
  }

  while (!entry);
  v16 = *entry;
  if ((*(entry + 18) & 2) != 0)
  {
    if (!v16)
    {
      return 0;
    }

    v25 = *a1;
    v26 = pdf_xref_resolve(*a1, v16, 0);
    if (!v26)
    {
      return 0;
    }

    v27 = v26;
    v28 = CGPDFObjectCopyAssociation(v26, "ObjectStream");
    if (v28)
    {
      v33 = v28;
      Object = CGPDFObjectStreamGetObject(v28, a2, a3, a4, v29, v30, v31, v32);
    }

    else
    {
      if (*(v27 + 8) != 9)
      {
        return 0;
      }

      v35 = CGPDFObjectStreamCreate(v25, *(v27 + 32));
      if (!v35)
      {
        return 0;
      }

      v33 = CGPDFObjectSetAssociation(v27, v35, "ObjectStream");
      Object = CGPDFObjectStreamGetObject(v33, a2, a3, a4, v36, v37, v38, v39);
      if (!v33)
      {
        return Object;
      }
    }

    CFRelease(v33);
    return Object;
  }

  if (!v16)
  {
    return 0;
  }

  CGPDFSourceSetPosition(*(a1[2] + 8), v16, v10, v11, v12, v13, v14, v15);
  v23 = a1[2];

  return pdf_object_scanner_read_indirect_object(v23, a4, v17, v18, v19, v20, v21, v22);
}

void *xref_stream_get_entry(void *result, unint64_t a2, unsigned __int16 a3)
{
  if (result)
  {
    while (1)
    {
      v3 = result[1];
      if (a2 >= *v3 && a2 < v3[1] + *v3)
      {
        v4 = &v3[3 * (a2 - *v3)];
        if (*(v4 + 16) == a3)
        {
          break;
        }
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    return v4 + 2;
  }

  return result;
}

BOOL CGPDFXRefStreamGetEntry(uint64_t a1, unint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v7 = (a1 + 8);
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    entry = xref_stream_get_entry(*(v7[1] + 16), a2, a3);
    if (entry)
    {
      if ((*(entry + 18) & 2) != 0)
      {
        *a4 = 1;
        *(a4 + 8) = *entry;
        *(a4 + 16) = entry[1];
      }

      else
      {
        *a4 = 0;
        *(a4 + 8) = *entry;
      }

      *(a4 + 24) = *(entry + 18) & 1;
      *(a4 + 26) = *(entry + 8);
      return v7 != 0;
    }
  }

  return v7 != 0;
}

uint64_t CGPDFXRefStreamPrint(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = (a2 ? a2 : *MEMORY[0x1E69E9858]);
    v3 = *(result + 8);
    if (v3)
    {
      do
      {
        v11 = v3;
        v4 = v3[1];
        result = fprintf(v2, "xref stream %p:\n", v4);
        v5 = v4[2];
        if (v5)
        {
          v6 = 0;
          do
          {
            v7 = v5[1];
            fprintf(v2, "  Section %zu\n", v6);
            fprintf(v2, "    start = %ld\n", *v7);
            result = fprintf(v2, "    count = %ld\n", v7[1]);
            if (v7[1] >= 1)
            {
              v8 = 0;
              v9 = v7 + 34;
              do
              {
                if (*v9)
                {
                  v10 = "used";
                }

                else
                {
                  v10 = "free";
                }

                fprintf(v2, "    Entry %ld %hu (%s)\n", v8 + *v7, *(v9 - 1), v10);
                if ((*v9 & 2) != 0)
                {
                  result = fprintf(v2, "      Stream: %lu index: %ld\n");
                }

                else
                {
                  result = fprintf(v2, "      Offset: %lld\n");
                }

                ++v8;
                v9 += 24;
              }

              while (v8 < v7[1]);
            }

            ++v6;
            v5 = *v5;
          }

          while (v5);
        }

        v3 = *v11;
      }

      while (*v11);
    }
  }

  return result;
}

uint64_t PBPageLayoutPkg::PBTextLine::formatText(PBPageLayoutPkg::PBTextLine *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "bbox");
  }

  if ((*(this + 36) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "rotation", *(this + 8));
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "textRange");
  }

  if (*(this + 36))
  {
    PB::TextFormatter::format(a2, "uniCharStart");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBTextLine::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 36))
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if ((*(v3 + 36) & 2) != 0)
  {
    v6 = *(v3 + 32);

    return PB::Writer::write(a2, v6);
  }

  return this;
}

uint64_t PBPageLayoutPkg::PBTextLine::readFrom(PBPageLayoutPkg::PBTextLine *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        *(this + 36) |= 2u;
        v32 = *(a2 + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFFBLL && v32 + 4 <= *(a2 + 2))
        {
          *(this + 8) = *(*a2 + v32);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 36) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v35 = (v25 + v24);
          v18 = v23 >= v24;
          v36 = v23 - v24;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              v28 = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_44:
              v28 = 0;
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            v28 = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_49:
        *(this + 3) = v28;
        goto LABEL_50;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v40 = 0;
      return v40 & 1;
    }

LABEL_50:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

void PBPageLayoutPkg::PBTextLine::~PBTextLine(PBPageLayoutPkg::PBTextLine *this)
{
  PBPageLayoutPkg::PBTextLine::~PBTextLine(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239690;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

uint64_t CGPDFFontCreateWithObject(uint64_t a1)
{
  if (a1 && *(a1 + 8) == 8)
  {
    return CGPDFFontCreate(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t CGPDFFontCreate(CGPDFDictionary *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CGPDFDictionaryCopyAssociation(a1, "Font");
  if (v2)
  {
    return v2;
  }

  if (CGPDFFontGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFFontGetTypeID_onceToken, &__block_literal_global_4095);
  }

  cftype = pdf_create_cftype();
  v2 = cftype;
  if (!cftype)
  {
    return v2;
  }

  v12 = 0;
  *(cftype + 16) = a1;
  v14.__sig = 0;
  *v14.__opaque = 0;
  pthread_mutexattr_init(&v14);
  pthread_mutexattr_settype(&v14, 2);
  pthread_mutex_init((v2 + 136), &v14);
  pthread_mutexattr_destroy(&v14);
  font_subtype = get_font_subtype(a1);
  *(v2 + 50) = font_subtype;
  if (((1 << font_subtype) & 0x3C) == 0)
  {
    if (((1 << font_subtype) & 0xC2) != 0)
    {
      v2[24] = 1;
    }

    else
    {
      *(v2 + 50) = 2;
    }
  }

  if (CGPDFDictionaryGetName(a1, "BaseFont", &v12))
  {
    *(v2 + 4) = v12;
  }

  *(v2 + 10) = 0;
  v6 = *(v2 + 50);
  if (v6 == 4 || v6 == 2)
  {
    v7 = *(v2 + 4);
    if (!v7)
    {
LABEL_32:
      *(v2 + 7) = 0x3F50624DD2F1A9FCLL;
      *(v2 + 8) = 0;
      *(v2 + 9) = 0;
      *(v2 + 10) = 0x3F50624DD2F1A9FCLL;
      *(v2 + 11) = 0;
      *(v2 + 12) = 0;
      *(v2 + 104) = CGRectNull;
      return CGPDFDictionarySetAssociation(a1, v2, "Font");
    }

    base14_name = get_base14_name(v7);
    if (base14_name >= 15)
    {
      v9 = 0;
    }

    else
    {
      v9 = base14_name;
    }

    *(v2 + 10) = v9;
    v6 = *(v2 + 50);
  }

  if (v6 == 1)
  {
    value[0] = 0;
    v13 = 0;
    if (CGPDFDictionaryGetArray(*(v2 + 2), "DescendantFonts", value))
    {
      if (value[0] && *(value[0] + 3) - *(value[0] + 2) == 8)
      {
        if (!CGPDFArrayGetDictionary(value[0], 0, &v13))
        {
          pdf_error("invalid descendant font for Type0 font.", v12);
          goto LABEL_40;
        }

        if ((~get_font_subtype(v13) & 6) != 0)
        {
          pdf_error("invalid descendant font subtype for Type0 font.", v12);
          goto LABEL_40;
        }

        v10 = CGPDFFontCreate(v13);
        *(v2 + 6) = v10;
        if (v10)
        {
          v6 = *(v2 + 50);
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_40:
    CFRelease(v2);
    return 0;
  }

LABEL_27:
  if (v6 != 5)
  {
    goto LABEL_32;
  }

  if (!CGPDFDictionaryGetNumbers(a1, "FontMatrix", value, 6))
  {
    goto LABEL_40;
  }

  v11 = v16;
  *(v2 + 56) = *value;
  *(v2 + 72) = v11;
  *(v2 + 88) = v17;
  if (!CGPDFDictionaryGetRect(a1, "FontBBox", v2 + 13))
  {
    goto LABEL_40;
  }

  if (*(v2 + 50) != 5)
  {
    return CGPDFDictionarySetAssociation(a1, v2, "Font");
  }

  return v2;
}

uint64_t get_font_subtype(CGPDFDictionary *a1)
{
  value = 0;
  if (CGPDFDictionaryGetName(a1, "Subtype", &value))
  {
    v1 = value;
    if (!strcmp(value, "Type1"))
    {
      return 2;
    }

    else if (!strcmp(v1, "MMType1"))
    {
      return 3;
    }

    else if (!strcmp(v1, "TrueType"))
    {
      return 4;
    }

    else if (!strcmp(v1, "Type3"))
    {
      return 5;
    }

    else if (!strcmp(v1, "Type0"))
    {
      return 1;
    }

    else if (!strcmp(v1, "CIDFontType0"))
    {
      return 6;
    }

    else if (!strcmp(v1, "CIDFontType2"))
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __CGPDFFontGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFFontGetTypeID_class);
  CGPDFFontGetTypeID_id = result;
  return result;
}

void CGPDFFontFinalize(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 136));
  CGPDFAdvancesRelease(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    CFRelease(v2);
  }

  CGPDFEncodingRelease(*(a1 + 216));
  v3 = *(a1 + 232);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      CFRelease(v4);
    }

    free(*v3);
    free(*(v3 + 8));
    free(v3);
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 248);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 288);
  if (v8)
  {
    CFRelease(v8);
  }

  CGFontIndexMapRelease(*(a1 + 264));
  CGPDFFontMutatorRelease(*(a1 + 296));
  v9 = *(a1 + 272);

  free(v9);
}

void CGPDFFontRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef CGPDFFontRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t CGPDFFontGetDictionary(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGPDFFontGetType(uint64_t result)
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

uint64_t CGPDFFontGetName(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t CGPDFFontIsBase14(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v2 = *(result + 40);
    if (v2)
    {
      if (a2)
      {
        *a2 = v2;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ***CGPDFFontGetAdvances(void ***result)
{
  if (result)
  {
    v1 = result;
    while (*(v1 + 200) == 1)
    {
      v1 = *(v1 + 48);
      if (!v1)
      {
        return 0;
      }
    }

    v2 = (v1 + 208);
    result = atomic_load_explicit((v1 + 208), memory_order_acquire);
    if (!result)
    {
      result = CGPDFAdvancesCreate(v1);
      v3 = 0;
      atomic_compare_exchange_strong(v2, &v3, result);
      if (v3)
      {
        CGPDFAdvancesRelease(result);
        return v3;
      }
    }
  }

  return result;
}

__n128 CGPDFFontGetFontMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a1 + 56);
  if (!a1)
  {
    v2 = &CGAffineTransformIdentity;
  }

  v3 = *&v2->c;
  *a2 = *&v2->a;
  *(a2 + 16) = v3;
  result = *&v2->tx;
  *(a2 + 32) = result;
  return result;
}

CGFloat CGPDFFontGetFontBBox(uint64_t a1)
{
  if (!a1)
  {
    return INFINITY;
  }

  if (*(a1 + 200) == 5)
  {
    return *(a1 + 104);
  }

  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  v3 = &CGRectNull;
  if (FontDescriptor)
  {
    v3 = (FontDescriptor + 48);
  }

  return v3->origin.x;
}

unint64_t CGPDFFontGetFontDescriptor(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  while (*(v1 + 200) == 1)
  {
    v1 = *(v1 + 48);
    if (!v1)
    {
      return 0;
    }
  }

  explicit = atomic_load_explicit((v1 + 248), memory_order_acquire);
  if (!explicit)
  {
    if (CGPDFFontDescriptorGetTypeID_onceToken != -1)
    {
      dispatch_once(&CGPDFFontDescriptorGetTypeID_onceToken, &__block_literal_global_17373);
    }

    cftype = pdf_create_cftype();
    explicit = cftype;
    if (!cftype)
    {
      goto LABEL_21;
    }

    dict = 0;
    value = 0;
    *(cftype + 16) = v1;
    *(cftype + 24) = 0;
    if (CGPDFDictionaryGetDictionary(*(v1 + 16), "FontDescriptor", &dict))
    {
      if (!CGPDFDictionaryGetRect(dict, "FontBBox", (explicit + 48)))
      {
        *(explicit + 48) = CGRectNull;
      }

      *(explicit + 40) = 0;
      if (CGPDFDictionaryGetInteger(dict, "Flags", &value))
      {
        *(explicit + 40) = value;
      }

      *(explicit + 32) = dict;
      goto LABEL_21;
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      if (v4 <= 0xE)
      {
        v5 = off_1E6E05260[v4 - 1];
        v6 = *(v5 + 24);
        *(explicit + 48) = *(v5 + 8);
        *(explicit + 64) = v6;
        *(explicit + 40) = *(v5 + 10);
        goto LABEL_21;
      }
    }

    else
    {
      CFRelease(explicit);
    }

    explicit = 0;
LABEL_21:
    v7 = 0;
    atomic_compare_exchange_strong((v1 + 248), &v7, explicit);
    if (v7)
    {
      if (explicit)
      {
        CFRelease(explicit);
      }

      return v7;
    }
  }

  return explicit;
}

uint64_t CGPDFFontCreateToUnicodeCMap(uint64_t result)
{
  if (result)
  {
    value = 0;
    if (CGPDFDictionaryGetObject(*(result + 16), "ToUnicode", &value))
    {
      return CGPDFCMapCreate(value);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFFontGetToUnicodeCMap(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 136));
  v2 = *(a1 + 240);
  if (!v2)
  {
    v2 = CGPDFFontCreateToUnicodeCMap(a1);
    *(a1 + 240) = v2;
  }

  pthread_mutex_unlock((a1 + 136));
  return v2;
}

atomic_ullong *CGPDFFontGetEncoding(atomic_ullong *result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 50) == 1)
    {
      return 0;
    }

    else
    {
      v2 = result + 27;
      result = atomic_load_explicit(result + 27, memory_order_acquire);
      if (!result)
      {
        result = CGPDFEncodingCreate(v1);
        v3 = 0;
        atomic_compare_exchange_strong(v2, &v3, result);
        if (v3)
        {
          CGPDFEncodingRelease(result);
          return v3;
        }
      }
    }
  }

  return result;
}

uint64_t CGPDFFontGetDescendant(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void *CGPDFFontGetCIDSystemInfo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  while (*(v1 + 200) == 1)
  {
    v1 = *(v1 + 48);
    if (!v1)
    {
      return 0;
    }
  }

  pthread_mutex_lock((v1 + 136));
  v2 = *(v1 + 232);
  if (!v2)
  {
    if ((*(v1 + 200) & 0xFFFFFFFE) == 6 && (value = 0, v15 = 0, dict = 0, v13 = 0, CGPDFDictionaryGetDictionary(*(v1 + 16), "CIDSystemInfo", &dict)) && CGPDFDictionaryGetString(dict, "Registry", &value) && CGPDFDictionaryGetString(dict, "Ordering", &v13) && CGPDFDictionaryGetInteger(dict, "Supplement", &v15))
    {
      v3 = 1;
      v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10300404E4CC20FuLL);
      __CFSetLastAllocationEventName();
      v4 = value;
      if (value)
      {
        if (*(value + 3))
        {
          decrypt_string(value);
        }

        v3 = *(v4 + 9) + 1;
      }

      v5 = malloc_type_malloc(v3, 0xF4BAD50EuLL);
      __CFSetLastAllocationEventName();
      *v2 = v5;
      v6 = value;
      if (*(value + 3))
      {
        decrypt_string(value);
      }

      strcpy(v5, v6 + 80);
      v7 = v13;
      if (v13)
      {
        if (*(v13 + 3))
        {
          decrypt_string(v13);
        }

        v8 = *(v7 + 9) + 1;
      }

      else
      {
        v8 = 1;
      }

      v10 = malloc_type_malloc(v8, 0x36A393E1uLL);
      __CFSetLastAllocationEventName();
      v2[1] = v10;
      v11 = v13;
      if (*(v13 + 3))
      {
        decrypt_string(v13);
      }

      strcpy(v10, v11 + 80);
      *(v2 + 4) = v15;
      *(v2 + 8) = 0;
    }

    else
    {
      v2 = 0;
    }

    *(v1 + 232) = v2;
  }

  pthread_mutex_unlock((v1 + 136));
  return v2;
}

unint64_t CGPDFFontGetCMap(unint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 200) == 1)
    {
      result = atomic_load_explicit((result + 224), memory_order_acquire);
      if (!result)
      {
        value = 0;
        Object = CGPDFDictionaryGetObject(*(v1 + 16), "Encoding", &value);
        result = 0;
        if (Object)
        {
          result = CGPDFCMapCreate(value);
          v3 = 0;
          atomic_compare_exchange_strong((v1 + 224), &v3, result);
          if (v3)
          {
            if (result)
            {
              CFRelease(result);
            }

            return v3;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *CGPDFFontGetROSUnicodeCMap(char *result)
{
  if (result)
  {
    while (1)
    {
      if (result[24] != 1)
      {
        return 0;
      }

      if (*(result + 50) != 1)
      {
        break;
      }

      result = *(result + 6);
      if (!result)
      {
        return result;
      }
    }

    result = CGPDFFontGetCIDSystemInfo(result);
    if (result)
    {
      v1 = result;
      result = *(result + 3);
      if (!result)
      {
        os_unfair_lock_lock(v1 + 8);
        if (v1[3])
        {
LABEL_11:
          os_unfair_lock_unlock(v1 + 8);
          return v1[3];
        }

        v2 = strlen(*v1);
        v3 = strlen(v1[1]);
        v4 = malloc_type_malloc(v2 + v3 + 35, 0x279DFCBBuLL);
        sprintf_l(v4, 0, "%s-%s-UCS2", *v1, v1[1]);
        v5 = CGPDFCMapCreateWithName(v4);
        v1[3] = v5;
        if (v5)
        {
          free(v4);
          goto LABEL_11;
        }

        free(v4);
        os_unfair_lock_unlock(v1 + 8);
        return 0;
      }
    }
  }

  return result;
}

uint64_t CGPDFFontGetCIDToGlyphMap(uint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      if (*(v1 + 24) != 1)
      {
        return 0;
      }

      v2 = *(v1 + 200);
      if (v2 != 1)
      {
        break;
      }

      v1 = *(v1 + 48);
      if (!v1)
      {
        return 0;
      }
    }

    if (v2 != 7)
    {
      return 0;
    }

    result = *(v1 + 264);
    if (!result)
    {
      pthread_mutex_lock((v1 + 136));
      if (!*(v1 + 264) && (*(v1 + 256) & 1) == 0)
      {
        *(v1 + 264) = CGPDFCIDToGlyphMapCreate(v1);
        *(v1 + 256) = 1;
      }

      pthread_mutex_unlock((v1 + 136));
      return *(v1 + 264);
    }
  }

  return result;
}

BOOL CGPDFFontIsEmbedded(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    v1 = *(a1 + 200);
    if (v1 != 1)
    {
      break;
    }

    a1 = *(a1 + 48);
    if (!a1)
    {
      return 0;
    }
  }

  v2 = 0;
  if (v1 <= 3)
  {
    if ((v1 - 2) < 2)
    {
      font_stream_20687 = get_font_stream_20687(a1, &v5);
      return font_stream_20687 != 0;
    }
  }

  else
  {
    switch(v1)
    {
      case 4:
        font_stream_20687 = get_font_stream(a1);
        return font_stream_20687 != 0;
      case 6:
        font_stream_20687 = get_font_stream_8586(a1, &v6);
        return font_stream_20687 != 0;
      case 7:
        font_stream_20687 = get_font_stream_20977(a1);
        return font_stream_20687 != 0;
    }
  }

  return v2;
}

uint64_t CGPDFFontGetFont(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 136));
  if ((*(a1 + 280) & 1) == 0)
  {
    load_font(a1);
  }

  v2 = *(a1 + 288);
  pthread_mutex_unlock((a1 + 136));
  return v2;
}

void load_font(uint64_t a1)
{
  if ((*(a1 + 280) & 1) == 0)
  {
    v2 = *(a1 + 200);
    if (v2 <= 4)
    {
      if ((v2 - 2) < 2)
      {
        goto LABEL_68;
      }

      if (v2 == 1)
      {
        v22 = *(a1 + 48);
        if (v22)
        {
          pthread_mutex_lock((v22 + 136));
          v23 = *(a1 + 48);
          if (!*(v23 + 240))
          {
            v24 = CGPDFFontCreateToUnicodeCMap(a1);
            v23 = *(a1 + 48);
            *(v23 + 240) = v24;
          }

          pthread_mutex_unlock((v23 + 136));
          v25 = *(a1 + 48);
        }

        else
        {
          v25 = 0;
        }

        Font = CGPDFFontGetFont(v25);
        if (!Font)
        {
          *(a1 + 288) = 0;
          goto LABEL_102;
        }

        v27 = Font;
        CFRetain(Font);
        *(a1 + 288) = v27;
        v28 = *(*(a1 + 48) + 240);
        if (!v28)
        {
          goto LABEL_102;
        }

        v29 = v27;
LABEL_101:
        CGFontSetProperty(v29, @"com.apple.CoreGraphics.CGPDFFontToUnicodeCMap", v28);
        goto LABEL_102;
      }

      if (v2 == 4)
      {
        font_stream = get_font_stream(a1);
        if (font_stream)
        {
          LODWORD(value) = 0;
          DataProvider = CGPDFStreamCreateDataProvider(font_stream, &value);
          v5 = DataProvider;
          if (DataProvider && !value)
          {
            v6 = CGDataProviderCopyData(DataProvider);
            v13 = CGFontCreateWithPDFFontDataAndZapfData(v6, 0, v7, v8, v9, v10, v11, v12);
            if (v13)
            {
              v14 = v13;
              CGFontSetIntProperty(v13, 1);
              CGFontSetProperty(v14, @"com.apple.CoreGraphics.CGPDFFontData", v6);
              CFRelease(v6);
              CGDataProviderRelease(v5);
              *(a1 + 288) = v14;
              goto LABEL_102;
            }

            if (v6)
            {
              CFRelease(v6);
            }
          }

          CGDataProviderRelease(v5);
        }

        TrueTypeOrCIDType2 = CGPDFFontFindTrueTypeOrCIDType2(a1);
        *(a1 + 288) = TrueTypeOrCIDType2;
        if (TrueTypeOrCIDType2)
        {
LABEL_102:
          if (*(a1 + 288))
          {
LABEL_141:
            *(a1 + 280) = 1;
            return;
          }

          if ((*(a1 + 200) - 2) > 2 || (v84 = malloc_type_calloc(1uLL, 0x1228uLL, 0x10600408B370AF9uLL), __CFSetLastAllocationEventName(), !v84))
          {
LABEL_113:
            *(a1 + 296) = 0;
            FontDescriptor = CGPDFFontGetFontDescriptor(a1);
            Style = CGPDFFontDescriptorGetStyle(FontDescriptor);
            if (Style)
            {
              v91 = Style;
              v92 = *(a1 + 32);
              if (v92 && !strcmp(v92, "LucidaConsole") || (*(v91 + 19) & 1) != 0)
              {
                if ((*(v91 + 17) & 1) != 0 || *v91 > 78.0)
                {
                  v94 = *(v91 + 16);
                  v95 = "Courier-Bold";
                  v96 = "Courier-BoldOblique";
                }

                else
                {
                  v94 = *(v91 + 16);
                  v95 = "Courier";
                  v96 = "Courier-Oblique";
                }
              }

              else if (*(v91 + 18) == 1)
              {
                if ((*(v91 + 17) & 1) != 0 || *v91 > 111.0)
                {
                  v94 = *(v91 + 16);
                  v95 = "Times-Bold";
                  v96 = "Times-BoldItalic";
                }

                else
                {
                  v94 = *(v91 + 16);
                  v95 = "Times-Roman";
                  v96 = "Times-Italic";
                }
              }

              else if ((*(v91 + 17) & 1) != 0 || *v91 > 114.0)
              {
                v94 = *(v91 + 16);
                v95 = "Helvetica-Bold";
                v96 = "Helvetica-BoldOblique";
              }

              else
              {
                v94 = *(v91 + 16);
                v95 = "Helvetica";
                v96 = "Helvetica-Oblique";
              }

              if (v94)
              {
                v97 = v96;
              }

              else
              {
                v97 = v95;
              }

              v93 = CGFontCreateWithName(v97);
              if (v93)
              {
                if (*(a1 + 200) == 4)
                {
                  v98 = "TrueType";
                }

                else
                {
                  v98 = "Type1";
                }
              }
            }

            else
            {
              v93 = 0;
            }

            *(a1 + 288) = v93;
            *(a1 + 304) = 1;
            goto LABEL_141;
          }

          *v84 = a1;
          v85 = CGPDFFontGetFontDescriptor(a1);
          v86 = CGPDFFontDescriptorGetStyle(v85);
          pthread_once(&choose_font_for_style_once, create_agars);
          if (v86)
          {
            if (*(v86 + 18) == 1)
            {
              v87 = agar_TimesLTMM;
              if (agar_TimesLTMM)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v87 = agar_HelveticaLTMM;
              if (agar_HelveticaLTMM)
              {
LABEL_108:
                v84[3] = v87;
                *(v84 + 2) = *v86;
                *(v84 + 2) = *(v86 + 8) * -3.14159265 / 180.0;
                Encoding = CGPDFFontGetEncoding(*v84);
                if (CGPDFEncodingGetGlyphVectorWithFont(Encoding, *(v84[3] + 64), *(v86 + 20), v84 + 16))
                {
                  *(v84 + 1160) = 0;
                  *(a1 + 296) = v84;
                  goto LABEL_141;
                }

                goto LABEL_112;
              }
            }
          }

          v84[3] = 0;
LABEL_112:
          CGPDFFontMutatorRelease(v84);
          goto LABEL_113;
        }

LABEL_68:
        value = 0;
        v100 = 0;
        v99 = 0;
        font_stream_20687 = get_font_stream_20687(a1, &v99);
        if (font_stream_20687)
        {
          v53 = font_stream_20687;
          v54 = v99;
          if (v99 == 2)
          {
            v55 = *(font_stream_20687 + 6);
            if (CGPDFDictionaryGetInteger(v55, "Length1", &value) && CGPDFDictionaryGetInteger(v55, "Length2", &v100) && !(value >> 62) && !(v100 >> 62))
            {
              v56 = value + v100;
              v57 = malloc_type_malloc(value + v100 + 540, 0x371847FDuLL);
              __CFSetLastAllocationEventName();
              if (v57)
              {
                Data = CGPDFStreamGetData(v53, v57, v100 + value);
                if (Data == v100 + value)
                {
                  v59 = &v57[value + v100];
                  v60 = 16;
                  *&v61 = 0x3030303030303030;
                  *(&v61 + 1) = 0x3030303030303030;
                  do
                  {
                    *v59 = v61;
                    *(v59 + 16) = v61;
                    *(v59 + 32) = 10;
                    v59 += 33;
                    --v60;
                  }

                  while (v60);
                  *(v59 + 8) = 174813793;
                  *v59 = *"cleartomark\n";
                  v62 = CFDataCreateWithBytesNoCopy(0, v57, v56 + 540, *MEMORY[0x1E695E488]);
                  v69 = CGFontCreateWithPDFFontDataAndZapfData(v62, 0, v63, v64, v65, v66, v67, v68);
                  if (v69)
                  {
                    v70 = v69;
                    CGFontSetIntProperty(v69, 2);
                    CGFontSetProperty(v70, @"com.apple.CoreGraphics.CGPDFFontData", v62);
                    CFRelease(v62);
LABEL_99:
                    *(a1 + 288) = v70;
                    v83 = CGPDFFontCreateToUnicodeCMap(a1);
                    *(a1 + 240) = v83;
                    if (!v83)
                    {
                      goto LABEL_102;
                    }

                    v28 = v83;
                    v29 = *(a1 + 288);
                    goto LABEL_101;
                  }

                  if (v62)
                  {
                    CFRelease(v62);
                  }

                  if (!a1)
                  {
LABEL_98:
                    v70 = 0;
                    goto LABEL_99;
                  }
                }

                else
                {
                  free(v57);
                }
              }
            }
          }

          else
          {
            v101 = 0;
            v71 = CGPDFStreamCreateDataProvider(font_stream_20687, &v101);
            v72 = v71;
            if (v71 && !v101)
            {
              v73 = CGDataProviderCopyData(v71);
              v80 = CGFontCreateWithPDFFontDataAndZapfData(v73, 0, v74, v75, v76, v77, v78, v79);
              if (v80)
              {
                v70 = v80;
                CGFontSetIntProperty(v80, v54);
                CGFontSetProperty(v70, @"com.apple.CoreGraphics.CGPDFFontData", v73);
                CFRelease(v73);
                CGDataProviderRelease(v72);
                goto LABEL_99;
              }

              if (v73)
              {
                CFRelease(v73);
              }
            }

            CGDataProviderRelease(v72);
          }
        }

        v81 = *(a1 + 32);
        if (!v81)
        {
          goto LABEL_98;
        }

        value = 0;
        v70 = 0;
        if (!CGPDFFontNameHasAlias(v81, &value))
        {
          goto LABEL_99;
        }

        v70 = CGFontCreateWithName(value);
        if (v70)
        {
          *(a1 + 200) = 4;
          v82 = value;
          if (!strcmp(v81, value))
          {
LABEL_93:
            free(v82);
            goto LABEL_99;
          }
        }

        v82 = value;
        goto LABEL_93;
      }

LABEL_143:
      abort();
    }

    switch(v2)
    {
      case 5:
        goto LABEL_102;
      case 6:
        LODWORD(value) = 0;
        LODWORD(v100) = 0;
        font_stream_8586 = get_font_stream_8586(a1, &value);
        if (font_stream_8586)
        {
          v16 = CGPDFStreamCreateDataProvider(font_stream_8586, &v100);
          if (v16 && !v100)
          {
            v20 = CGPDFFontGetToUnicodeCMap(a1);
            if (v20)
            {
              ZapfTable = CGPDFCMapGetZapfTable(v20);
            }

            else
            {
              ZapfTable = 0;
            }

            v30 = CGDataProviderCopyData(v16);
            matched = CGFontCreateWithPDFFontDataAndZapfData(v30, ZapfTable, v31, v32, v33, v34, v35, v36);
            if (ZapfTable)
            {
              CFRelease(ZapfTable);
            }

            if (matched)
            {
              v38 = value;
              v39 = matched;
LABEL_57:
              CGFontSetIntProperty(v39, v38);
              CGFontSetProperty(matched, @"com.apple.CoreGraphics.CGPDFFontData", v30);
              CFRelease(v30);
              CGDataProviderRelease(v16);
LABEL_63:
              *(a1 + 288) = matched;
              goto LABEL_102;
            }

            if (v30)
            {
              CFRelease(v30);
            }
          }

          CGDataProviderRelease(v16);
        }

        v40 = *(a1 + 32);
        if (v40)
        {
          v41 = 0;
          while (v40[v41] - 91 >= 0xFFFFFFE6)
          {
            if (++v41 == 6)
            {
              v42 = 7;
              if (v40[6] != 43)
              {
                v42 = 0;
              }

              v40 += v42;
              break;
            }
          }

          v43 = CGFontCreateWithName(v40);
          if (v43)
          {
            matched = v43;
            v44 = (*(*(v43 + 2) + 152))(*(v43 + 14));
            if (strcmp(v44, ".PhoneFallback") && (CGPDFFontHasMatchingROS(a1, matched) & 1) != 0)
            {
              goto LABEL_63;
            }

            CFRelease(matched);
          }
        }

        break;
      case 7:
        font_stream_20977 = get_font_stream_20977(a1);
        if (font_stream_20977)
        {
          LODWORD(value) = 0;
          v16 = CGPDFStreamCreateDataProvider(font_stream_20977, &value);
          if (v16 && !value)
          {
            v17 = CGPDFFontGetToUnicodeCMap(a1);
            if (v17)
            {
              v18 = CGPDFCMapGetZapfTable(v17);
            }

            else
            {
              v18 = 0;
            }

            v30 = CGDataProviderCopyData(v16);
            matched = CGFontCreateWithPDFFontDataAndZapfData(v30, v18, v45, v46, v47, v48, v49, v50);
            if (v18)
            {
              CFRelease(v18);
            }

            if (matched)
            {
              v39 = matched;
              v38 = 5;
              goto LABEL_57;
            }

            if (v30)
            {
              CFRelease(v30);
            }
          }

          CGDataProviderRelease(v16);
        }

        matched = CGPDFFontFindTrueTypeOrCIDType2(a1);
        if (matched)
        {
          goto LABEL_63;
        }

        break;
      default:
        goto LABEL_143;
    }

    matched = CGPDFFontMatchCID(a1);
    goto LABEL_63;
  }
}