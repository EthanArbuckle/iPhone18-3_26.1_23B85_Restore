@interface CRLSVGParser
+ (id)bezierPathFromSVGPathDAttribute:(id)a3;
@end

@implementation CRLSVGParser

+ (id)bezierPathFromSVGPathDAttribute:(id)a3
{
  v67 = a3;
  v3 = [v67 cStringUsingEncoding:4];
  if (!v3)
  {
    goto LABEL_120;
  }

  v69 = objc_opt_new();
  v76 = +[CRLBezierPath bezierPath];
  v79 = v3;
  sub_10048A7F4(&v79);
  v4 = *v79;
  if (!*v79)
  {
    goto LABEL_115;
  }

  v5 = 0;
  v6 = 1;
  v7 = 0x2020000000;
  y = CGPointZero.y;
  x = CGPointZero.x;
  v10 = y;
  v11 = CGPointZero.x;
  v68 = y;
  v70 = y;
  v71 = CGPointZero.x;
  do
  {
    if ((v4 & 0x80) != 0)
    {
      if (!__maskrune(v4, 0x100uLL))
      {
        goto LABEL_114;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v4] & 0x100) == 0)
    {
      goto LABEL_114;
    }

    if (!v5 && __toupper(v4) != 77)
    {
LABEL_114:
      v69[8] = 1;
      goto LABEL_115;
    }

    ++v79;
    v12 = __toupper(v4);
    *v78 = v4;
    if (v12 > 80)
    {
      if (v12 <= 83)
      {
        if (v12 != 81 && v12 != 83 || (v6 & 1) == 0)
        {
          goto LABEL_114;
        }

        v14 = 0;
        v13 = 4;
        goto LABEL_35;
      }

      if (v12 != 84)
      {
        if (v12 != 86)
        {
          if (v12 != 90 || (v6 & 1) == 0)
          {
            goto LABEL_114;
          }

          v13 = 0;
          v14 = 1;
          goto LABEL_35;
        }

LABEL_29:
        if ((v6 & 1) == 0)
        {
          goto LABEL_114;
        }

        v14 = 0;
        v13 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      if (v12 <= 75)
      {
        if (v12 == 65)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_114;
          }

          v14 = 0;
          v13 = 7;
          goto LABEL_35;
        }

        if (v12 == 67)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_114;
          }

          v14 = 0;
          v13 = 6;
          goto LABEL_35;
        }

        if (v12 != 72)
        {
          goto LABEL_114;
        }

        goto LABEL_29;
      }

      if ((v12 - 76) >= 2)
      {
        goto LABEL_114;
      }
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_114;
    }

    v14 = 0;
    v13 = 2;
LABEL_35:
    v77 = v5;
    v15 = 0;
    v74 = v13;
    v16 = v13 - 1;
    v17 = v14;
    for (i = v14; ; v14 = i)
    {
      v92 = 0x7FF8000000000000;
      v89 = xmmword_101465DC8;
      v90 = unk_101465DD8;
      v91 = xmmword_101465DE8;
      if ((v14 & 1) == 0)
      {
        sub_10048A7F4(&v79);
        v18 = v79;
        v19 = strtod(v79, &v79);
        if (v79 == v18)
        {
          v19 = NAN;
        }

        *&v89 = v19;
        if (v79 == v18)
        {
LABEL_109:
          v6 = 0;
          goto LABEL_111;
        }

        v20 = 0;
        while (1)
        {
          sub_10048A7F4(&v79);
          if (*v79 == 44)
          {
            ++v79;
          }

          sub_10048A7F4(&v79);
          if (v16 == v20)
          {
            break;
          }

          sub_10048A7F4(&v79);
          v21 = v79;
          v22 = strtod(v79, &v79);
          v23 = v79 == v21;
          if (v79 == v21)
          {
            v22 = NAN;
          }

          *(&v89 + ++v20) = v22;
          if (v23)
          {
            if (v20 < v74)
            {
              goto LABEL_109;
            }

            break;
          }
        }
      }

      v24 = v76;
      v85 = 0;
      v86 = &v85;
      v87 = v7;
      v88 = 0;
      v81 = 0;
      v82 = &v81;
      v83 = v7;
      v84 = 0;
      if ((v4 & 0x80) == 0)
      {
        if ((_DefaultRuneLocale.__runetype[*v78] & 0x1000) == 0)
        {
          goto LABEL_52;
        }

LABEL_51:
        v86[3] = v11;
        v82[3] = v10;
        goto LABEL_52;
      }

      if (__maskrune(v78[0], 0x1000uLL))
      {
        goto LABEL_51;
      }

LABEL_52:
      v80[0] = _NSConcreteStackBlock;
      v80[1] = 3221225472;
      v80[2] = sub_10048A838;
      v80[3] = &unk_101866888;
      v80[6] = &v89;
      v80[4] = &v85;
      v80[5] = &v81;
      v25 = objc_retainBlock(v80);
      v26 = __toupper(v78[0]);
      v27 = 0;
      if (v26 > 80)
      {
        if (v26 > 83)
        {
          switch(v26)
          {
            case 'T':
              if (v77 && ((v58 = __toupper(v77), v58 == 84) || v58 == 81))
              {
                v59 = sub_10011F340(v11, v10, 2.0);
                x = sub_10011F31C(v59, v60, x);
                y = v61;
              }

              else
              {
                y = v10;
                x = v11;
              }

              v11 = (v25[2])(v25, 0);
              v10 = v63;
              [v24 curveToPoint:? controlPoint:?];
              break;
            case 'V':
              v10 = *&v89 + v82[3];
              [v24 lineToPoint:{v11, v10}];
              break;
            case 'Z':
              [v24 closePath];
              v27 = 1;
              v10 = v70;
              v11 = v71;
              goto LABEL_97;
            default:
LABEL_93:
              v10 = v68;
              v11 = CGPointZero.x;
              goto LABEL_97;
          }

          goto LABEL_96;
        }

        if (v26 == 81)
        {
          x = (v25[2])(v25, 0);
          y = v56;
          v11 = (v25[2])(v25, 2);
          v10 = v57;
          [v24 curveToPoint:? controlPoint:?];
LABEL_96:
          v27 = 1;
          goto LABEL_97;
        }

        if (v26 != 83)
        {
          goto LABEL_93;
        }

        if (v77 && (__toupper(v77) | 0x10) == 0x53)
        {
          v37 = sub_10011F340(v11, v10, 2.0);
          sub_10011F31C(v37, v38, x);
        }

        x = (v25[2])(v25, 0);
        y = v39;
        v40 = (v25[2])(v25, 2);
        v42 = v41;
        [v24 curveToPoint:? controlPoint1:? controlPoint2:?];
        v27 = 1;
        v10 = v42;
        v11 = v40;
      }

      else
      {
        if (v26 <= 71)
        {
          if (v26 == 65)
          {
            v72 = y;
            v73 = x;
            v43 = v7;
            v44 = v89;
            v46 = *(&v90 + 1);
            v45 = *&v90;
            v47 = *&v91;
            v48 = (v25[2])(v25, 5);
            v50 = v49;
            v51 = v11;
            v52 = v10;
            v11 = v48;
            v10 = v50;
            v53 = sub_10018EE34(v46 != 0.0, v47 != 0.0, v51, v52, *&v44, *(&v44 + 1), v45, v48, v50);
            v7 = v43;
            y = v72;
            x = v73;
            v54 = v53;
            v55 = [CRLBezierPath bezierPathWithCGPath:v53];
            [v24 appendBezierPath:v55 skippingInitialMoveIfPossible:1];

            CGPathRelease(v54);
          }

          else
          {
            if (v26 != 67)
            {
              goto LABEL_93;
            }

            (v25[2])(v25, 0);
            x = (v25[2])(v25, 2);
            y = v35;
            v11 = (v25[2])(v25, 4);
            v10 = v36;
            [v24 curveToPoint:? controlPoint1:? controlPoint2:?];
          }

          goto LABEL_96;
        }

        if (v26 == 72)
        {
          v11 = *&v89 + v86[3];
          [v24 lineToPoint:{v11, v10}];
          goto LABEL_96;
        }

        if (v26 == 76)
        {
          v11 = (v25[2])(v25, 0);
          v10 = v62;
          [v24 lineToPoint:?];
          goto LABEL_96;
        }

        if (v26 != 77)
        {
          goto LABEL_93;
        }

        if ([v24 isEmpty])
        {
          v86[3] = 0.0;
          v82[3] = 0.0;
        }

        v28 = (v25[2])(v25, 0);
        v11 = v28;
        v10 = v29;
        if (v15)
        {
          if ([v24 isEmpty])
          {
            v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10137DDC4();
            }

            v31 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v94 = v30;
              v95 = 2082;
              v96 = "_Bool handle_path_d_command(const char, int, const CGFloat *const, CRLBezierPath *__strong, CGPoint *, CGPoint *, CGPoint *, const char, _Bool)";
              v97 = 2082;
              v98 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSVGParser.m";
              v99 = 1024;
              v100 = 102;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected bezier path to not be empty", buf, 0x22u);
              if (qword_101AD5A10 != -1)
              {
                sub_10137DDEC();
              }
            }

            v32 = off_1019EDA68;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v65 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v94 = v30;
              v95 = 2114;
              v96 = v65;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v33 = [NSString stringWithUTF8String:"_Bool handle_path_d_command(const char, int, const CGFloat *const, CRLBezierPath *__strong, CGPoint *, CGPoint *, CGPoint *, const char, _Bool)"];
            v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLSVGParser.m"];
            [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:102 isFatal:0 description:"expected bezier path to not be empty"];
          }

          [v24 lineToPoint:{v11, v10}];
          goto LABEL_96;
        }

        [v24 moveToPoint:{v28, v29}];
        v27 = 1;
        v70 = v10;
        v71 = v11;
      }

LABEL_97:

      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&v85, 8);

      if (!v27)
      {
        goto LABEL_109;
      }

      if (v17)
      {
        break;
      }

      sub_10048A7F4(&v79);
      v64 = *v79;
      if (!*v79)
      {
        goto LABEL_108;
      }

      if (v64 < 0)
      {
        if (__maskrune(v64, 0x100uLL))
        {
LABEL_108:
          v6 = 1;
          v5 = v4;
          goto LABEL_112;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v64] & 0x100) != 0)
      {
        goto LABEL_108;
      }

      v17 = 0;
      v15 = 1;
      v77 = v4;
    }

    v6 = 1;
LABEL_111:
    v5 = v77;
LABEL_112:
    sub_10048A7F4(&v79);
    v4 = *v79;
  }

  while (*v79);
  if ((v6 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_115:

  if (v69[8] & 1) != 0 || ([v76 isEmpty])
  {
    v3 = 0;
  }

  else
  {
    v3 = v76;
  }

LABEL_120:

  return v3;
}

@end