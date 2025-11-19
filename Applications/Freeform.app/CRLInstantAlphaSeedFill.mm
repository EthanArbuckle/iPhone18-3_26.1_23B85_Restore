@interface CRLInstantAlphaSeedFill
+ (id)newSeedFillWithImage:(id)a3 seedPoint:(CGPoint)a4 context:(id *)a5 oldFill:(id)a6;
@end

@implementation CRLInstantAlphaSeedFill

+ (id)newSeedFillWithImage:(id)a3 seedPoint:(CGPoint)a4 context:(id *)a5 oldFill:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = a6;
  v38 = 0;
  qword_101A35188 = a5;
  v12 = [[CRLInstantAlphaBinaryBitmap alloc] initWithWidth:v10[1] height:v10[2], 0];
  if (v12)
  {
    v13 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
    if (v13)
    {
      v14 = v13;
      v15 = malloc_type_malloc(0x268uLL, 0x1020040F89E1A17uLL);
      *v14 = v15;
      *(v14 + 8) = v15;
      if (v15)
      {
        v40 = 0;
        v39 = 0;
        *v15 = 0;
        v15[1] = 0;
        *(v14 + 16) = v15 + 2;
        sub_10049C07C(v10, v12, x, y, &v39, v11);
        sub_10049C228(v12, &v39);
        sub_10049C590(v14, &v39);
        while (1)
        {
          v17 = *(v14 + 8);
          v16 = *(v14 + 16);
          if (v16 == v17 + 16)
          {
            v18 = *(v17 + 8);
            if (!v18)
            {
              [(CRLInstantAlphaBinaryBitmap *)v12 unionWithBitmap:v11];
              sub_10049C628(v14);
              v35 = v12;
              goto LABEL_39;
            }

            *(v14 + 8) = v18;
            v16 = v18 + 616;
          }

          *(v14 + 16) = v16 - 12;
          v39 = *(v16 - 12);
          v40 = *(v16 - 4);
          v19 = v39;
          if (v39 >= 1)
          {
            v20 = HIDWORD(v39);
            v21 = v40;
            if (SHIDWORD(v39) <= v40)
            {
              do
              {
                if (!sub_10049C674(v12, v20, (v19 - 1)))
                {
                  if (sub_10049C674(v11, v20, (v19 - 1)) || (v22 = qword_101A35188, v23 = sub_10049C988(v10, v20, (v19 - 1)), sub_10049C90C(v22, v23)))
                  {
                    sub_10049C07C(v10, v12, v20, v19 - 1, &v37, v11);
                    sub_10049C228(v12, &v37);
                    if (!sub_10049C590(v14, &v37))
                    {
LABEL_27:
                      sub_10049C628(v14);
                      goto LABEL_38;
                    }

                    v20 = v38 + 2;
                  }
                }

                v24 = v20++ < v21;
              }

              while (v24);
            }
          }

          if (v10[2] - 1 > v19)
          {
            v25 = HIDWORD(v39);
            v26 = v40;
            if (SHIDWORD(v39) <= v40)
            {
              v27 = v19 + 1;
              do
              {
                if (!sub_10049C674(v12, v25, v27))
                {
                  if (sub_10049C674(v12, v25, v27) || (v28 = qword_101A35188, v29 = sub_10049C988(v10, v25, v27), sub_10049C90C(v28, v29)))
                  {
                    sub_10049C07C(v10, v12, v25, v27, &v37, v11);
                    sub_10049C228(v12, &v37);
                    if (!sub_10049C590(v14, &v37))
                    {
                      goto LABEL_27;
                    }

                    v25 = v38 + 2;
                  }
                }

                v24 = v25++ < v26;
              }

              while (v24);
            }
          }
        }
      }

      free(v14);
    }

    else
    {
      puts("allocSpanStack: stack could not be allocated");
    }

    v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137F30C();
    }

    v31 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137F320(v30, v31);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F3CC();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v32);
    }

    v33 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLInstantAlphaSeedFill newSeedFillWithImage:seedPoint:context:oldFill:]");
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaSeedFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:178 isFatal:0 description:"can't allocate span stack"];
  }

LABEL_38:
  v35 = 0;
LABEL_39:

  return v35;
}

@end