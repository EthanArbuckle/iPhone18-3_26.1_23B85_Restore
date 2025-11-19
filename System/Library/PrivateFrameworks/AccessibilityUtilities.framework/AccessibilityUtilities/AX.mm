@interface AX
@end

@implementation AX

uint64_t __AX_CGPathEnumerateElementsUsingBlock_block_invoke(uint64_t result, unsigned int *a2)
{
  v2 = *(*(result + 40) + 8);
  v4 = *(v2 + 24);
  v3 = v2 + 24;
  if ((v4 & 1) == 0)
  {
    v6 = result;
    v7 = *(result + 32);
    v8 = *a2;
    if (v8 > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_18B2F8258[v8];
    }

    result = (*(v7 + 16))(v7, v8, *(a2 + 1), v9, *(*(*(v6 + 48) + 8) + 24), v3);
    ++*(*(*(v6 + 48) + 8) + 24);
  }

  return result;
}

__n128 __AX_CGPathGetIntersectionPointWithRect_block_invoke(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (!a5)
  {
    result = *a3;
    *(*(*(a1 + 32) + 8) + 32) = *a3;
    *a6 = 1;
  }

  return result;
}

__n128 __AX_CGPathGetStartingAndEndingPoints_block_invoke(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = 40;
    if (!a5)
    {
      v5 = 32;
    }

    result = *a3;
    *(*(*(a1 + v5) + 8) + 32) = *a3;
  }

  return result;
}

uint64_t __AX_CGPathGetPointForElementAtIndex_block_invoke(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (*(result + 40) == a5)
  {
    if (a4)
    {
      *(*(*(result + 32) + 8) + 32) = *a3;
    }

    *a6 = 1;
  }

  return result;
}

void __AX_CGCreatePathPathWithUniformInset_block_invoke(double *a1, int a2, double *a3)
{
  if (a2 >= 4)
  {
    if (a2 == 4)
    {
      v14 = *(a1 + 7);

      CGPathCloseSubpath(v14);
    }
  }

  else
  {
    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[4];
    v9 = AX_CGPointInset(*a3, a3[1], v8, v7, v6);
    v11 = v9;
    v12 = v10;
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v16 = AX_CGPointInset(a3[2], a3[3], v8, v7, v6);
        v17 = *(a1 + 7);

        CGPathAddQuadCurveToPoint(v17, 0, v11, v12, v16, v15);
      }

      else
      {
        v19 = AX_CGPointInset(a3[2], a3[3], v8, v7, v6);
        v21 = v20;
        v23 = AX_CGPointInset(a3[4], a3[5], v8, v7, v6);
        v24 = *(a1 + 7);

        CGPathAddCurveToPoint(v24, 0, v11, v12, v19, v21, v23, v22);
      }
    }

    else if (a2)
    {
      v18 = *(a1 + 7);

      CGPathAddLineToPoint(v18, 0, v9, v10);
    }

    else
    {
      v13 = *(a1 + 7);

      CGPathMoveToPoint(v13, 0, v9, v10);
    }
  }
}

uint64_t __AX_CGPathGetDescription_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 4)
  {
    v7 = @"Unhandled path element type";
  }

  else
  {
    v7 = off_1E71EB5B0[a2];
  }

  result = [*(a1 + 32) appendFormat:@"%@\n", v7];
  if (a4)
  {
    v9 = (a3 + 8);
    do
    {
      result = [*(a1 + 32) appendFormat:@"\t%f, %f\n", *(v9 - 1), *v9];
      v9 += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

__n128 ___AX_CGPathGetIntersectionPointWithOtherPathNonExhaustive_block_invoke(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = 40;
  if (!a5)
  {
    v5 = 32;
  }

  result = *a3;
  *(*(*(a1 + v5) + 8) + 32) = *a3;
  return result;
}

__n128 ___AX_CGPathGetIntersectionPointWithOtherPathNonExhaustive_block_invoke_2(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = 40;
  if (!a5)
  {
    v5 = 32;
  }

  result = *a3;
  *(*(*(a1 + v5) + 8) + 32) = *a3;
  return result;
}

__n128 ___AX_CGPathGetIntersectionPointWithOtherPathExhaustive_block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a5)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3010000000;
    v17[3] = &unk_18B3155F1;
    v18 = *MEMORY[0x1E695EFF8];
    v9 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___AX_CGPathGetIntersectionPointWithOtherPathExhaustive_block_invoke_2;
    v13[3] = &unk_1E71EB568;
    v13[4] = v17;
    v14 = *(a1 + 32);
    v15 = a3;
    v16 = a6;
    AX_CGPathEnumerateElementsUsingBlock(v9, v13);
    *(*(*(a1 + 32) + 8) + 32) = *a3;
    v10 = *(*(a1 + 40) + 8);
    if (*(v10 + 32) != 1.79769313e308 || *(v10 + 40) != 1.79769313e308)
    {
      *a6 = 1;
    }

    _Block_object_dispose(v17, 8);
  }

  else
  {
    result = *a3;
    *(*(*(a1 + 32) + 8) + 32) = *a3;
  }

  return result;
}

__n128 ___AX_CGPathGetIntersectionPointWithOtherPathExhaustive_block_invoke_2(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v7 = a1 + 32;
    v8 = *(*(a1 + 40) + 8);
    v9 = *(a1 + 56);
    v10 = *(v8 + 32);
    v11 = *(v8 + 40);
    v12 = v9[1];
    if (v10 >= *v9)
    {
      v13 = *v9;
    }

    else
    {
      v13 = *(v8 + 32);
    }

    if (v11 >= v12)
    {
      v14 = *(v9 + 1);
    }

    else
    {
      v14 = *(v8 + 40);
    }

    v15 = fmax(vabdd_f64(v10, *v9), 1.0);
    v16 = fmax(vabdd_f64(v11, v12), 1.0);
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 32);
    v19 = *(v17 + 40);
    v20 = a3[1];
    if (v18 >= *a3)
    {
      Center = *a3;
    }

    else
    {
      Center = *(v17 + 32);
    }

    if (v19 >= v20)
    {
      v22 = a3[1];
    }

    else
    {
      v22 = *(v17 + 40);
    }

    v23 = fmax(vabdd_f64(v18, *a3), 1.0);
    v24 = fmax(vabdd_f64(v19, v20), 1.0);
    v48.origin.x = Center;
    v48.origin.y = v22;
    v48.size.width = v23;
    v48.size.height = v24;
    v41 = CGRectIntersection(*&v13, v48);
    if (v41.size.width > 0.0)
    {
      height = v41.size.height;
      if (v41.size.height != 0.0)
      {
        x = v41.origin.x;
        width = v41.size.width;
        v28 = *(*(a1 + 40) + 8);
        v29 = *(a1 + 56);
        v30 = *(v28 + 32);
        v31 = v29[1];
        v32 = fmax(vabdd_f64(v30, *v29), 0.001);
        v33 = v30 - *v29;
        if (v32 + -0.001 <= 0.000001)
        {
          v33 = v32;
        }

        if (vabdd_f64(v41.origin.x, Center) >= 0.001)
        {
          y = v41.origin.y;
          v40 = (*(v28 + 40) - v31) / v33;
          v42.origin.x = Center;
          v42.origin.y = v22;
          v42.size.width = v23;
          v42.size.height = v24;
          if (vabdd_f64(x, CGRectGetMaxX(v42)) >= 0.001)
          {
            if (vabdd_f64(y, v22) >= 0.001)
            {
              v45.origin.x = Center;
              v45.origin.y = v22;
              v45.size.width = v23;
              v45.size.height = v24;
              if (vabdd_f64(y, CGRectGetMaxY(v45)) >= 0.001)
              {
                Center = AX_CGRectGetCenter(x, y, width, height);
                MaxY = v36;
              }

              else
              {
                v46.origin.x = Center;
                v46.origin.y = v22;
                v46.size.width = v23;
                v46.size.height = v24;
                v35 = **(a1 + 56) + (CGRectGetMaxY(v46) - *(*(a1 + 56) + 8)) / v40;
                v47.origin.x = Center;
                v47.origin.y = v22;
                v47.size.width = v23;
                v47.size.height = v24;
                MaxY = CGRectGetMaxY(v47);
                Center = v35;
              }
            }

            else
            {
              Center = **(a1 + 56) + (v22 - *(*(a1 + 56) + 8)) / v40;
              MaxY = v22;
            }
          }

          else
          {
            v43.origin.x = Center;
            v43.origin.y = v22;
            v43.size.width = v23;
            v43.size.height = v24;
            MaxY = *(*(a1 + 56) + 8) + v40 * (CGRectGetMaxX(v43) - **(a1 + 56));
            v44.origin.x = Center;
            v44.origin.y = v22;
            v44.size.width = v23;
            v44.size.height = v24;
            Center = CGRectGetMaxX(v44);
          }
        }

        else
        {
          MaxY = v31 + (*(v28 + 40) - v31) / v33 * (Center - *v29);
        }

        v37 = *(*(a1 + 48) + 8);
        *(v37 + 32) = Center;
        *(v37 + 40) = MaxY;
        **(a1 + 64) = 1;
      }
    }
  }

  else
  {
    v7 = a1 + 32;
  }

  result = *a3;
  *(*(*v7 + 8) + 32) = *a3;
  return result;
}

@end