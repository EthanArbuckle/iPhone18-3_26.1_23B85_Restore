@interface CRLSVGToBezierPathConverter
+ (CGAffineTransform)transformFromSVGTransformAttributeString:(SEL)a3;
+ (CGPath)newPathFromSVGPathString:(id)a3 shouldClosePathAtEnd:(BOOL)a4;
+ (CGPath)newPathFromSVGPolygonString:(id)a3;
+ (CGPath)newPathFromSVGPolylineString:(id)a3;
- (id)bezierPathFromSVGData:(id)a3;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
@end

@implementation CRLSVGToBezierPathConverter

- (id)bezierPathFromSVGData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CRLBezierPath);
  mFileBezierPath = self->mFileBezierPath;
  self->mFileBezierPath = v5;

  mHiddenOnTag = self->mHiddenOnTag;
  self->mHiddenOnTag = 0;

  self->mHiddenOnTagNestedCount = 0;
  v8 = *&CGAffineTransformIdentity.c;
  *&self->mGroupedAffineTransform.a = *&CGAffineTransformIdentity.a;
  *&self->mGroupedAffineTransform.c = v8;
  *&self->mGroupedAffineTransform.tx = *&CGAffineTransformIdentity.tx;
  self->mGroupedAffineTransformNestedCount = 0;
  self->mViewBoxFound = 0;
  size = CGRectZero.size;
  self->mViewBox.origin = CGRectZero.origin;
  self->mViewBox.size = size;
  self->mUsesEvenOdd = 0;
  v10 = [[NSXMLParser alloc] initWithData:v4];

  [v10 setDelegate:self];
  if ([v10 parse] && (objc_msgSend(v10, "parserError"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    if (!self->mViewBoxFound)
    {
      goto LABEL_13;
    }

    v20 = CGPathCreateWithRect(self->mViewBox, 0);
    v16 = [CRLBezierPath bezierPathWithCGPath:v20];
    CGPathRelease(v20);
    v24[0] = self->mFileBezierPath;
    v24[1] = v16;
    v21 = [NSArray arrayWithObjects:v24 count:2];
    v22 = [CRLBezierPath intersectBezierPaths:v21];

    v23 = self->mFileBezierPath;
    self->mFileBezierPath = v22;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013907B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013907C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101390854();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138DF74(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter bezierPathFromSVGData:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:62 isFatal:0 description:"Unable to Parse SVG File"];

    v15 = objc_alloc_init(CRLBezierPath);
    v16 = self->mFileBezierPath;
    self->mFileBezierPath = v15;
  }

LABEL_13:
  v17 = self->mFileBezierPath;
  v18 = v17;

  return v17;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v179 = a3;
  v12 = a4;
  v178 = a5;
  v177 = a6;
  v13 = a7;
  v14 = [v13 objectForKeyedSubscript:@"style"];
  v180 = v14;
  if (v14)
  {
    v15 = v14;
    v174 = v12;
    v175 = self;
    v181 = v13;
    v16 = [v13 mutableCopy];
    [v15 componentsSeparatedByString:@";"];
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v17 = v191 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v188 objects:v194 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v189;
      do
      {
        v21 = 0;
        do
        {
          if (*v189 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v188 + 1) + 8 * v21);
          if ([v22 length])
          {
            v23 = [v22 componentsSeparatedByString:@":"];
            if ([v23 count] != 2)
            {
              v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10139087C();
              }

              v25 = off_1019EDA68;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.a) = 67109890;
                HIDWORD(buf.a) = v24;
                LOWORD(buf.b) = 2082;
                *(&buf.b + 2) = "[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]";
                WORD1(buf.c) = 2082;
                *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m";
                WORD2(buf.d) = 1024;
                *(&buf.d + 6) = 90;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Style components in SVG <style> tag should have one key and one value.", &buf, 0x22u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_1013908A4();
              }

              v26 = off_1019EDA68;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v34 = +[CRLAssertionHandler packedBacktraceString];
                LODWORD(buf.a) = 67109378;
                HIDWORD(buf.a) = v24;
                LOWORD(buf.b) = 2114;
                *(&buf.b + 2) = v34;
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
              }

              v27 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
              v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
              [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:90 isFatal:0 description:"Style components in SVG <style> tag should have one key and one value."];
            }

            v29 = +[NSCharacterSet whitespaceCharacterSet];
            v30 = [v23 objectAtIndexedSubscript:0];
            v31 = [v30 stringByTrimmingCharactersInSet:v29];

            v32 = [v23 objectAtIndexedSubscript:1];
            v33 = [v32 stringByTrimmingCharactersInSet:v29];

            [v16 setObject:v33 forKeyedSubscript:v31];
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v188 objects:v194 count:16];
      }

      while (v19);
    }

    v35 = v16;
    v13 = v35;
    v12 = v174;
    self = v175;
  }

  if ([v12 isEqualToString:@"svg"])
  {
    v36 = [v13 objectForKeyedSubscript:@"preserveAspectRatio"];
    v37 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v38 = [v36 componentsSeparatedByCharactersInSet:v37];

    v182 = v13;
    if (![v38 count])
    {
LABEL_58:
      v52 = [v13 objectForKeyedSubscript:@"viewBox"];
      v53 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v45 = [v52 componentsSeparatedByCharactersInSet:v53];

      if ([v45 count] == 4)
      {
        self->mViewBoxFound = 1;
        v54 = [v45 objectAtIndexedSubscript:0];
        [v54 doubleValue];
        v56 = v55;
        v57 = [v45 objectAtIndexedSubscript:1];
        [v57 doubleValue];
        v59 = v58;
        v60 = [v45 objectAtIndexedSubscript:2];
        [v60 doubleValue];
        v62 = v61;
        v63 = [v45 objectAtIndexedSubscript:3];
        [v63 doubleValue];
        self->mViewBox.origin.x = v56;
        self->mViewBox.origin.y = v59;
        self->mViewBox.size.width = v62;
        self->mViewBox.size.height = v64;
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101390B7C();
        }

        v65 = off_1019EDA68;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_101390BA4(v45);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101390C48();
        }

        v66 = off_1019EDA68;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_1013817A0();
        }

        v54 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
        v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
        +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v54, v57, 132, 0, "Unexpected number of viewBox components! (%zu)", [v45 count]);
      }

      goto LABEL_70;
    }

    v39 = [v38 objectAtIndexedSubscript:0];
    v40 = [v39 isEqualToString:@"defer"];

    if (v40)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013908CC();
      }

      v41 = off_1019EDA68;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1013908F4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101390980();
      }

      v42 = off_1019EDA68;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1013817A0();
      }

      v43 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
      v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
      [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:111 isFatal:0 description:"Unexpected 'defer' component"];
    }

    if ([v38 count] == 1)
    {
      goto LABEL_71;
    }

    if ([v38 count] == 2)
    {
      v45 = [v38 objectAtIndexedSubscript:1];
      if ([v45 isEqualToString:@"meet"])
      {
LABEL_70:

        v13 = v182;
LABEL_71:
        v67 = [v13 objectForKeyedSubscript:@"style"];
        if (v67)
        {
          v187 = 0;
          v68 = [NSRegularExpression regularExpressionWithPattern:@"fill-rule:[ \t]*evenodd" options:1 error:&v187];
          v69 = v187;
          v70 = [v68 matchesInString:v67 options:0 range:{0, objc_msgSend(v67, "length")}];
          if ([v70 count])
          {
            self->mUsesEvenOdd = 1;
          }
        }

        goto LABEL_76;
      }

      if ([v45 isEqualToString:@"slice"])
      {
        goto LABEL_57;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101390A9C();
      }

      v46 = off_1019EDA68;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_101390AC4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101390B54();
      }

      v47 = off_1019EDA68;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1013817A0();
      }

      v48 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
      v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
      [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:119 isFatal:0 description:"Unknown component %@", v45];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013909A8();
      }

      v50 = off_1019EDA68;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_1013909D0(v38);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101390A74();
      }

      v51 = off_1019EDA68;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_1013817A0();
      }

      v45 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
      v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v45, v48, 122, 0, "Unexpected number of preserveAspectRatio components! (%zu)", [v38 count]);
    }

LABEL_57:
    v13 = v182;
    goto LABEL_58;
  }

LABEL_76:
  v71 = v180;
  if ([(NSString *)self->mHiddenOnTag isEqualToString:v12])
  {
    ++self->mHiddenOnTagNestedCount;
  }

  if (!self->mHiddenOnTag)
  {
    v72 = [v13 objectForKeyedSubscript:@"display"];
    if ([v72 isEqualToString:@"none"])
    {

LABEL_82:
      v74 = [v12 copy];
      mHiddenOnTag = self->mHiddenOnTag;
      self->mHiddenOnTag = v74;

      goto LABEL_121;
    }

    v73 = [v12 isEqualToString:@"pattern"];

    if (v73)
    {
      goto LABEL_82;
    }

    if ([v12 isEqualToString:@"g"])
    {
      v76 = *&self->mGroupedAffineTransform.c;
      *&buf.a = *&self->mGroupedAffineTransform.a;
      *&buf.c = v76;
      *&buf.tx = *&self->mGroupedAffineTransform.tx;
      v77 = *&CGAffineTransformIdentity.c;
      *&t2.a = *&CGAffineTransformIdentity.a;
      *&t2.c = v77;
      *&t2.tx = *&CGAffineTransformIdentity.tx;
      if (CGAffineTransformEqualToTransform(&buf, &t2))
      {
        v78 = [v13 objectForKeyedSubscript:@"transform"];

        if (v78)
        {
          v79 = [v13 objectForKeyedSubscript:@"transform"];
          [CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:v79];
          v80 = *&buf.c;
          *&self->mGroupedAffineTransform.a = *&buf.a;
          *&self->mGroupedAffineTransform.c = v80;
          *&self->mGroupedAffineTransform.tx = *&buf.tx;
        }
      }

      else
      {
        ++self->mGroupedAffineTransformNestedCount;
      }
    }

    v81 = [v12 isEqualToString:@"line"];
    if ([v12 isEqualToString:@"path"])
    {
      v82 = [v13 objectForKeyedSubscript:@"d"];
      v83 = [CRLSVGToBezierPathConverter newPathFromSVGPathString:v82 shouldClosePathAtEnd:v81 ^ 1];
    }

    else
    {
      if (![v12 isEqualToString:@"polyline"])
      {
        if ([v12 isEqualToString:@"polygon"])
        {
          v111 = [v13 objectForKeyedSubscript:@"points"];
          Mutable = [CRLSVGToBezierPathConverter newPathFromSVGPolygonString:v111];

          if (!v81)
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (!v81)
          {
            if ([v12 isEqualToString:@"rect"])
            {
              v122 = [v13 objectForKeyedSubscript:@"width"];
              [v122 floatValue];
              v123 = [v13 objectForKeyedSubscript:@"height"];
              [v123 floatValue];

              memset(&buf, 0, sizeof(buf));
              v124 = [v13 objectForKeyedSubscript:@"x"];
              [v124 floatValue];
              v126 = v125;
              v127 = [v13 objectForKeyedSubscript:@"y"];
              [v127 floatValue];
              CGAffineTransformMakeTranslation(&buf, v126, v128);

              v129 = sub_10011ECB4();
              v131 = v130;
              v133 = v132;
              v135 = v134;
              v136 = [v13 objectForKeyedSubscript:@"rx"];
              [v136 crl_CGFloatValue];
              v138 = [CRLBezierPath bezierPathWithLegacyRoundedRect:v129 cornerRadius:v131, v133, v135, v137];
              v139 = CGPathRetain([v138 CGPath]);

              Mutable = CGPathCreateCopyByTransformingPath(v139, &buf);
              CGPathRelease(v139);
              goto LABEL_108;
            }

            if ([v12 isEqualToString:@"circle"])
            {
              v140 = [v13 objectForKeyedSubscript:@"r"];
              [v140 floatValue];
              v142 = v141;

              v143 = [v13 objectForKeyedSubscript:@"cx"];
              [v143 floatValue];
              v145 = v144 - v142;

              v146 = [v13 objectForKeyedSubscript:@"cy"];
              [v146 floatValue];
              v148 = v147 - v142;

              v149 = v142 + v142;
              v150 = v145;
              v151 = v148;
              v152 = v142 + v142;
            }

            else
            {
              if (![v12 isEqualToString:@"ellipse"])
              {
                Mutable = CGPathCreateMutable();
                goto LABEL_108;
              }

              v161 = [v13 objectForKeyedSubscript:@"rx"];
              [v161 floatValue];
              v163 = v162;

              v164 = [v13 objectForKeyedSubscript:@"ry"];
              [v164 floatValue];
              v166 = v165;

              v167 = [v13 objectForKeyedSubscript:@"cx"];
              [v167 floatValue];
              v169 = v168 - v163;

              v170 = [v13 objectForKeyedSubscript:@"cy"];
              [v170 floatValue];
              v172 = v171 - v166;

              v149 = v163 + v163;
              v152 = v166 + v166;
              v150 = v169;
              v151 = v172;
            }

            v173 = [CRLBezierPath bezierPathWithOvalInRect:v150, v151, v149, v152];
            Mutable = [v173 CGPath];

            CGPathRetain(Mutable);
            goto LABEL_108;
          }

          Mutable = CGPathCreateMutable();
          v112 = [v13 objectForKeyedSubscript:@"x1"];
          [v112 floatValue];
          v114 = v113;
          v115 = [v13 objectForKeyedSubscript:@"y1"];
          [v115 floatValue];
          CGPathMoveToPoint(Mutable, 0, v114, v116);

          v117 = [v13 objectForKeyedSubscript:@"x2"];
          [v117 floatValue];
          v119 = v118;
          v120 = [v13 objectForKeyedSubscript:@"y2"];
          [v120 floatValue];
          CGPathAddLineToPoint(Mutable, 0, v119, v121);
        }

LABEL_93:
        v176 = self;
        v85 = [v13 objectForKeyedSubscript:@"stroke-width"];
        v86 = [v13 objectForKeyedSubscript:@"stroke-linecap"];
        v87 = [v13 objectForKeyedSubscript:@"stroke-linejoin"];
        v183 = v13;
        v88 = [v13 objectForKeyedSubscript:@"stroke-miterlimit"];
        v89 = 1.0;
        if (v85 && ([v85 isEqualToString:&stru_1018BCA28] & 1) == 0)
        {
          [v85 floatValue];
          v89 = v90;
        }

        if (v86 && ([v86 isEqualToString:&stru_1018BCA28] & 1) == 0 && (objc_msgSend(v86, "isEqualToString:", @"butt") & 1) == 0)
        {
          if ([v86 isEqualToString:@"round"])
          {
            v91 = 1;
            goto LABEL_100;
          }

          if ([v86 isEqualToString:@"square"])
          {
            v91 = 2;
            goto LABEL_100;
          }

          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101390C70();
          }

          v153 = off_1019EDA68;
          if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
          {
            sub_101390C98();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101390D28();
          }

          v154 = off_1019EDA68;
          if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
          {
            sub_1013817A0();
          }

          v155 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
          v156 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
          [CRLAssertionHandler handleFailureInFunction:v155 file:v156 lineNumber:242 isFatal:0 description:"Unexpected Line Cap Style: %@", v86];
        }

        v91 = 0;
LABEL_100:
        if (!v87 || ([v87 isEqualToString:&stru_1018BCA28] & 1) != 0 || (objc_msgSend(v87, "isEqualToString:", @"miter") & 1) != 0)
        {
LABEL_103:
          v92 = 0;
          goto LABEL_104;
        }

        if ([v86 isEqualToString:@"round"])
        {
          v92 = 1;
        }

        else
        {
          if (([v86 isEqualToString:@"bevel"] & 1) == 0)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101390D50();
            }

            v157 = off_1019EDA68;
            if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
            {
              sub_101390D78();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101390E08();
            }

            v158 = off_1019EDA68;
            if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              sub_1013817A0();
            }

            v159 = [NSString stringWithUTF8String:"[CRLSVGToBezierPathConverter parser:didStartElement:namespaceURI:qualifiedName:attributes:]"];
            v160 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
            [CRLAssertionHandler handleFailureInFunction:v159 file:v160 lineNumber:254 isFatal:0 description:"Unexpected Line Join Style: %@", v87];

            goto LABEL_103;
          }

          v92 = 2;
        }

LABEL_104:
        v93 = [CRLBezierPath bezierPathWithCGPath:Mutable];
        [v93 setLineWidth:v89];
        [v93 setLineCapStyle:v91];
        [v93 setLineJoinStyle:v92];
        if (v88 && ([v88 isEqualToString:&stru_1018BCA28] & 1) == 0)
        {
          [v88 floatValue];
          [v93 setMiterLimit:v94];
        }

        v95 = [v93 strokedCopy];
        Mutable = [v95 CGPath];

        CGPathRetain(Mutable);
        self = v176;
        v71 = v180;
        v13 = v183;
LABEL_108:
        v96 = *&self->mGroupedAffineTransform.c;
        *&buf.a = *&self->mGroupedAffineTransform.a;
        *&buf.c = v96;
        *&buf.tx = *&self->mGroupedAffineTransform.tx;
        v97 = [v13 objectForKeyedSubscript:@"transform"];

        if (v97)
        {
          memset(&t2, 0, sizeof(t2));
          v98 = [v13 objectForKeyedSubscript:@"transform"];
          [CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:v98];

          t1 = buf;
          v184 = t2;
          CGAffineTransformConcat(&buf, &t1, &v184);
        }

        t2 = buf;
        v99 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v99;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        if (!CGAffineTransformEqualToTransform(&t2, &t1))
        {
          v100 = CGPathCreateCopyByTransformingPath(Mutable, &buf);
          CGPathRelease(Mutable);
          Mutable = v100;
        }

        v101 = [CRLBezierPath bezierPathWithCGPath:Mutable];
        [v101 setWindingRule:self->mUsesEvenOdd];
        CGPathRelease(Mutable);
        mFileBezierPath = self->mFileBezierPath;
        p_mFileBezierPath = &self->mFileBezierPath;
        v192[0] = mFileBezierPath;
        v192[1] = v101;
        v104 = [NSArray arrayWithObjects:v192 count:2];
        v105 = [CRLBezierPath uniteBezierPaths:v104];

        if ([v105 isEmpty])
        {
          if ([v101 isEmpty])
          {
            goto LABEL_120;
          }

          [v101 controlPointBounds];
          if (v107 <= 1.0)
          {
            goto LABEL_120;
          }

          v108 = v101;
          if (v106 <= 1.0)
          {
            goto LABEL_120;
          }
        }

        else
        {
          [v105 controlPointBounds];
          if (v110 <= 1.0)
          {
            goto LABEL_120;
          }

          v108 = v105;
          if (v109 <= 1.0)
          {
            goto LABEL_120;
          }
        }

        objc_storeStrong(p_mFileBezierPath, v108);
LABEL_120:

        goto LABEL_121;
      }

      v82 = [v13 objectForKeyedSubscript:@"points"];
      v83 = [CRLSVGToBezierPathConverter newPathFromSVGPolylineString:v82];
    }

    Mutable = v83;

    if ((v81 & 1) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_93;
  }

LABEL_121:
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v7 = a4;
  if ([(NSString *)self->mHiddenOnTag isEqualToString:v7])
  {
    mHiddenOnTagNestedCount = self->mHiddenOnTagNestedCount;
    if (mHiddenOnTagNestedCount)
    {
      self->mHiddenOnTagNestedCount = mHiddenOnTagNestedCount - 1;
    }

    else
    {
      mHiddenOnTag = self->mHiddenOnTag;
      self->mHiddenOnTag = 0;
    }
  }

  if ([v7 isEqualToString:@"g"])
  {
    v10 = *&self->mGroupedAffineTransform.c;
    *&t1.a = *&self->mGroupedAffineTransform.a;
    *&t1.c = v10;
    *&t1.tx = *&self->mGroupedAffineTransform.tx;
    v11 = *&CGAffineTransformIdentity.c;
    v15 = *&CGAffineTransformIdentity.a;
    *&t2.a = *&CGAffineTransformIdentity.a;
    v13 = *&CGAffineTransformIdentity.tx;
    v14 = v11;
    *&t2.c = v11;
    *&t2.tx = v13;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      mGroupedAffineTransformNestedCount = self->mGroupedAffineTransformNestedCount;
      if (mGroupedAffineTransformNestedCount)
      {
        self->mGroupedAffineTransformNestedCount = mGroupedAffineTransformNestedCount - 1;
      }

      else
      {
        *&self->mGroupedAffineTransform.a = v15;
        *&self->mGroupedAffineTransform.c = v14;
        *&self->mGroupedAffineTransform.tx = v13;
      }
    }
  }
}

+ (CGPath)newPathFromSVGPathString:(id)a3 shouldClosePathAtEnd:(BOOL)a4
{
  v52 = a4;
  v4 = a3;
  Mutable = CGPathCreateMutable();
  v56 = CGPointZero;
  *y = CGPointZero;
  v53 = v4;
  v6 = [NSScanner scannerWithString:v4];
  v72 = *asc_101466690;
  v73 = 2883717;
  v7 = [NSString stringWithCharacters:&v72 length:6];
  v8 = [NSCharacterSet characterSetWithCharactersInString:v7];
  [v6 setCharactersToBeSkipped:v8];

  if ([v6 isAtEnd])
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_3;
  }

  v17 = 0;
  v10 = 0;
  v18 = CGPointZero.y;
  v54 = v18;
  x = CGPointZero.x;
  v19 = CGPointZero.x;
  v20 = v18;
  while (1)
  {
    v21 = v10;
    v22 = +[NSCharacterSet letterCharacterSet];
    v63 = v10;
    v23 = [v6 scanCharactersFromSet:v22 intoString:&v63];
    v10 = v63;

    if (v23)
    {
      [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") - objc_msgSend(v10, "length") + 1}];
    }

    v11 = [v10 characterAtIndex:0];
    v24 = v18;
    v25 = CGPointZero.x;
    if (!CGPathIsEmpty(Mutable))
    {
      CurrentPoint = CGPathGetCurrentPoint(Mutable);
      v25 = CurrentPoint.x;
      v24 = CurrentPoint.y;
    }

    v27 = +[NSCharacterSet lowercaseLetterCharacterSet];
    v28 = [v27 characterIsMember:v11];

    v29 = v18;
    v30 = CGPointZero.x;
    if (v28)
    {
      v31 = CGPathGetCurrentPoint(Mutable);
      v30 = v31.x;
      v29 = v31.y;
    }

    if (v11 > 96)
    {
      break;
    }

    if (v11 <= 80)
    {
      if (v11 > 71)
      {
        if (v11 != 72)
        {
          if (v11 != 76)
          {
            if (v11 != 77)
            {
              goto LABEL_123;
            }

LABEL_36:
            if ([v6 crl_scanCGFloat:y])
            {
              v32 = [v6 crl_scanCGFloat:&y[1]];
            }

            else
            {
              v32 = 0;
            }

            v41 = sub_1000717B4(Mutable);
            v42 = y[0];
            if (v41 < 1)
            {
              v43 = y[1];
            }

            else
            {
              v42 = v30 + y[0];
              v43 = v29 + y[1];
            }

            CGPathMoveToPoint(Mutable, 0, v42, v43);
            if ([v6 crl_scanCGFloat:y])
            {
              do
              {
                v32 = [v6 crl_scanCGFloat:&y[1]];
                if (v28)
                {
                  v44 = CGPathGetCurrentPoint(Mutable);
                  v30 = v44.x;
                  v29 = v44.y;
                }

                CGPathAddLineToPoint(Mutable, 0, v30 + y[0], v29 + y[1]);
              }

              while (([v6 crl_scanCGFloat:y] & 1) != 0);
            }

            v9 = v32 ^ 1;
            goto LABEL_119;
          }

LABEL_81:
          if ([v6 crl_scanCGFloat:y])
          {
            v9 = [v6 crl_scanCGFloat:&y[1]] ^ 1;
          }

          else
          {
            v9 = 1;
          }

          if (v28)
          {
            if (y[0] == CGPointZero.x && y[1] == v18)
            {
              goto LABEL_119;
            }
          }

          else if (y[0] == v25 && y[1] == v24)
          {
            goto LABEL_119;
          }

          v35 = v30 + y[0];
          v33 = v29 + y[1];
          v34 = Mutable;
          goto LABEL_107;
        }

LABEL_84:
        v9 = [v6 crl_scanCGFloat:y] ^ 1;
        v35 = v30 + y[0];
        v34 = Mutable;
        v33 = v24;
        goto LABEL_107;
      }

      if (v11 == 65)
      {
        goto LABEL_70;
      }

      if (v11 != 67)
      {
        goto LABEL_123;
      }

      goto LABEL_53;
    }

    if (v11 <= 83)
    {
      if (v11 == 81)
      {
        goto LABEL_77;
      }

      if (v11 != 83)
      {
        goto LABEL_123;
      }

      goto LABEL_64;
    }

    if (v11 == 84)
    {
      goto LABEL_85;
    }

    if (v11 != 86)
    {
      if (v11 != 90)
      {
        goto LABEL_123;
      }

LABEL_47:
      CGPathCloseSubpath(Mutable);
      v9 = 0;
      goto LABEL_119;
    }

LABEL_83:
    v9 = [v6 crl_scanCGFloat:&y[1]] ^ 1;
    v33 = v29 + y[1];
    v34 = Mutable;
    v35 = v25;
LABEL_107:
    CGPathAddLineToPoint(v34, 0, v35, v33);
LABEL_119:
    if (([v6 isAtEnd] & 1) == 0)
    {
      v17 = v11;
      if (!v9)
      {
        continue;
      }
    }

    goto LABEL_3;
  }

  if (v11 <= 112)
  {
    if (v11 > 103)
    {
      if (v11 != 104)
      {
        if (v11 != 108)
        {
          if (v11 != 109)
          {
            goto LABEL_123;
          }

          goto LABEL_36;
        }

        goto LABEL_81;
      }

      goto LABEL_84;
    }

    if (v11 == 97)
    {
LABEL_70:
      *buf = 0;
      v58.x = 0.0;
      v57.x = 0.0;
      v61 = 0;
      v62 = 0;
      v59 = 0.0;
      v60 = 0.0;
      if ([v6 crl_scanCGFloat:buf] && objc_msgSend(v6, "crl_scanCGFloat:", &v58) && objc_msgSend(v6, "crl_scanCGFloat:", &v57) && objc_msgSend(v6, "scanInteger:", &v62) && objc_msgSend(v6, "scanInteger:", &v61) && objc_msgSend(v6, "crl_scanCGFloat:", &v60))
      {
        v9 = [v6 crl_scanCGFloat:&v59] ^ 1;
      }

      else
      {
        v9 = 1;
      }

      v59 = v29 + v59;
      v60 = v30 + v60;
      v36 = sub_10018EE34(v62 != 0, v61 != 0, v25, v24, *buf, v58.x, v57.x, v60, v59);
      v37 = sub_1000717B4(v36);
      v38 = sub_10018F158(Mutable, v36, 1, v37);
      CGPathRelease(v36);
      CGPathRelease(Mutable);
      Mutable = CGPathCreateMutableCopy(v38);
      CGPathRelease(v38);
      goto LABEL_119;
    }

    if (v11 != 99)
    {
      goto LABEL_123;
    }

LABEL_53:
    *buf = v56;
    v57 = v56;
    v58 = v56;
    if ([v6 crl_scanCGFloat:buf] && objc_msgSend(v6, "crl_scanCGFloat:", &buf[8]) && objc_msgSend(v6, "crl_scanCGFloat:", &v58) && objc_msgSend(v6, "crl_scanCGFloat:", &v58.y) && objc_msgSend(v6, "crl_scanCGFloat:", &v57))
    {
      v9 = [v6 crl_scanCGFloat:&v57.y] ^ 1;
    }

    else
    {
      v9 = 1;
    }

    *buf = v30 + *buf;
    *&buf[8] = v29 + *&buf[8];
    v58.x = v30 + v58.x;
    v58.y = v29 + v58.y;
    v57.x = v30 + v57.x;
    v57.y = v29 + v57.y;
    CGPathAddCurveToPoint(Mutable, 0, *buf, *&buf[8], v58.x, v58.y, v57.x, v57.y);
    v39 = v58.y;
    v40 = v58.x;
LABEL_98:
    v54 = v39;
    x = v40;
    goto LABEL_119;
  }

  if (v11 > 115)
  {
    if (v11 == 116)
    {
LABEL_85:
      if (v17 - 81 <= 0x23 && ((1 << (v17 - 81)) & 0x900000009) != 0)
      {
        v19 = v25 + v25 - v19;
        v20 = v24 + v24 - v20;
      }

      else
      {
        v19 = v25;
        v20 = v24;
      }

      *buf = 0;
      *&buf[8] = 0;
      if ([v6 crl_scanCGFloat:buf])
      {
        v9 = [v6 crl_scanCGFloat:&buf[8]] ^ 1;
      }

      else
      {
        v9 = 1;
      }

      *buf = v30 + *buf;
      *&buf[8] = v29 + *&buf[8];
      CGPathAddQuadCurveToPoint(Mutable, 0, v19, v20, *buf, *&buf[8]);
      goto LABEL_119;
    }

    if (v11 != 118)
    {
      if (v11 != 122)
      {
        goto LABEL_123;
      }

      goto LABEL_47;
    }

    goto LABEL_83;
  }

  if (v11 == 113)
  {
LABEL_77:
    *buf = v56;
    v58 = v56;
    if ([v6 crl_scanCGFloat:buf] && objc_msgSend(v6, "crl_scanCGFloat:", &buf[8]) && objc_msgSend(v6, "crl_scanCGFloat:", &v58))
    {
      v9 = [v6 crl_scanCGFloat:&v58.y] ^ 1;
    }

    else
    {
      v9 = 1;
    }

    *buf = v30 + *buf;
    *&buf[8] = v29 + *&buf[8];
    v58.x = v30 + v58.x;
    v58.y = v29 + v58.y;
    CGPathAddQuadCurveToPoint(Mutable, 0, *buf, *&buf[8], v58.x, v58.y);
    v19 = *buf;
    v20 = *&buf[8];
    goto LABEL_119;
  }

  if (v11 == 115)
  {
LABEL_64:
    if ((((v17 - 67) >> 4) | ((v17 - 67) << 12)) < 4u)
    {
      v25 = v25 + v25 - x;
      v24 = v24 + v24 - v54;
    }

    *buf = v56;
    v58 = v56;
    if ([v6 crl_scanCGFloat:buf] && objc_msgSend(v6, "crl_scanCGFloat:", &buf[8]) && objc_msgSend(v6, "crl_scanCGFloat:", &v58))
    {
      v9 = [v6 crl_scanCGFloat:&v58.y] ^ 1;
    }

    else
    {
      v9 = 1;
    }

    *buf = v30 + *buf;
    *&buf[8] = v29 + *&buf[8];
    v58.x = v30 + v58.x;
    v58.y = v29 + v58.y;
    CGPathAddCurveToPoint(Mutable, 0, v25, v24, *buf, *&buf[8], v58.x, v58.y);
    v40 = *buf;
    v39 = *&buf[8];
    goto LABEL_98;
  }

LABEL_123:
  v45 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101390E30();
  }

  v46 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67110146;
    *&buf[4] = v45;
    *&buf[8] = 2082;
    *&buf[10] = "+[CRLSVGToBezierPathConverter newPathFromSVGPathString:shouldClosePathAtEnd:]";
    v66 = 2082;
    v67 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m";
    v68 = 1024;
    v69 = 570;
    v70 = 2112;
    v71 = v10;
    _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot process path of type %@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101390E58();
  }

  v47 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v50 = v47;
    v51 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    *&buf[4] = v45;
    *&buf[8] = 2114;
    *&buf[10] = v51;
    _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v48 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSVGToBezierPathConverter newPathFromSVGPathString:shouldClosePathAtEnd:]");
  v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
  [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:570 isFatal:0 description:"Cannot process path of type %@", v10];

  [v6 isAtEnd];
  v9 = 1;
LABEL_3:
  if (v52 && (v11 & 0xFFDF) != 0x5A)
  {
    MutableCopy = CGPathCreateMutableCopy(Mutable);
    CGPathRelease(Mutable);
    CGPathCloseSubpath(MutableCopy);
    Mutable = MutableCopy;
  }

  if (v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101390E80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101390EA8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101390F44();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138DF74(v13);
    }

    v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSVGToBezierPathConverter newPathFromSVGPathString:shouldClosePathAtEnd:]");
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:590 isFatal:0 description:"Bailing on operation %c", v11];
  }

  return Mutable;
}

+ (CGPath)newPathFromSVGPolylineString:(id)a3
{
  v3 = a3;
  Mutable = CGPathCreateMutable();
  v12 = CGPointZero;
  v5 = [NSScanner scannerWithString:v3];
  v13 = *asc_101466690;
  v14 = 2883717;
  v6 = [NSString stringWithCharacters:&v13 length:6];
  v7 = [NSCharacterSet characterSetWithCharactersInString:v6];
  [v5 setCharactersToBeSkipped:v7];

  if ([v5 crl_scanCGFloat:&v12] && (objc_msgSend(v5, "crl_scanCGFloat:", &v12.y) & 1) != 0)
  {
    CGPathMoveToPoint(Mutable, 0, v12.x, v12.y);
    if (([v5 isAtEnd] & 1) == 0)
    {
      while ([v5 crl_scanCGFloat:&v12] && (objc_msgSend(v5, "crl_scanCGFloat:", &v12.y) & 1) != 0)
      {
        CGPathAddLineToPoint(Mutable, 0, v12.x, v12.y);
        if ([v5 isAtEnd])
        {
          goto LABEL_18;
        }
      }

      [v5 isAtEnd];
    }

LABEL_18:
    CGPathCloseSubpath(Mutable);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101390F6C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101390F94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101391020();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138DF74(v8);
    }

    v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSVGToBezierPathConverter newPathFromSVGPolylineString:]");
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:607 isFatal:0 description:"No value for initial polyline point!"];
  }

  return Mutable;
}

+ (CGPath)newPathFromSVGPolygonString:(id)a3
{
  v3 = [CRLSVGToBezierPathConverter newPathFromSVGPolylineString:a3];
  MutableCopy = CGPathCreateMutableCopy(v3);
  CGPathRelease(v3);
  CGPathCloseSubpath(MutableCopy);
  return MutableCopy;
}

+ (CGAffineTransform)transformFromSVGTransformAttributeString:(SEL)a3
{
  v5 = a4;
  v103 = 0;
  v6 = [NSRegularExpression regularExpressionWithPattern:@"(matrix|translate|scale|rotate)\\((.*?)\\)" options:1 error:&v103];
  v83 = v103;
  v84 = v6;
  v7 = [v6 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  v87 = *&CGAffineTransformIdentity.c;
  v88 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v87;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v90 = [v7 countByEnumeratingWithState:&v99 objects:v107 count:16];
  if (v90)
  {
    tx = CGAffineTransformIdentity.tx;
    ty = CGAffineTransformIdentity.ty;
    v89 = *v100;
    do
    {
      v10 = 0;
      do
      {
        if (*v100 != v89)
        {
          objc_enumerationMutation(v7);
        }

        v96 = v10;
        v11 = *(*(&v99 + 1) + 8 * v10);
        v12 = [v11 rangeAtIndex:1];
        v97 = [v5 substringWithRange:{v12, v13}];
        v14 = [v11 rangeAtIndex:2];
        v95 = [v5 substringWithRange:{v14, v15}];
        v16 = [NSScanner scannerWithString:?];
        v105 = *asc_101466690;
        v106 = 2883717;
        v17 = [NSString stringWithCharacters:&v105 length:6];
        v18 = [NSCharacterSet characterSetWithCharactersInString:v17];
        [v16 setCharactersToBeSkipped:v18];

        v19 = +[NSMutableArray array];
        if (([v16 isAtEnd] & 1) == 0)
        {
          v37 = 1;
          do
          {
            t2.a = 0.0;
            v38 = [v16 crl_scanCGFloat:&t2];
            HIDWORD(v39) = HIDWORD(t2.a);
            *&v39 = t2.a;
            v40 = [NSNumber numberWithFloat:v39];
            [v19 addObject:v40];
            if (v37 >= 7)
            {
              v41 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101391048();
              }

              v42 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.a) = 67110146;
                HIDWORD(buf.a) = v41;
                LOWORD(buf.b) = 2082;
                *(&buf.b + 2) = "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]";
                WORD1(buf.c) = 2082;
                *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m";
                WORD2(buf.d) = 1024;
                *(&buf.d + 6) = 676;
                WORD1(buf.tx) = 2112;
                *(&buf.tx + 4) = v5;
                _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Too many numbers for transform %@", &buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101391070();
              }

              v43 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v46 = v43;
                v47 = +[CRLAssertionHandler packedBacktraceString];
                LODWORD(buf.a) = 67109378;
                HIDWORD(buf.a) = v41;
                LOWORD(buf.b) = 2114;
                *(&buf.b + 2) = v47;
                _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
              }

              v44 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
              v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
              [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:676 isFatal:0 description:"Too many numbers for transform %@", v5];

              v38 = 0;
            }

            if ([v16 isAtEnd])
            {
              break;
            }

            ++v37;
          }

          while ((v38 & 1) != 0);
        }

        v20 = v97;
        if ([v97 isEqualToString:@"matrix"])
        {
          if ([v19 count] == 6)
          {
            v21 = [v19 objectAtIndexedSubscript:0];
            [v21 floatValue];
            v93 = v22;
            v86 = [v19 objectAtIndexedSubscript:1];
            [v86 floatValue];
            v91 = v23;
            v24 = [v19 objectAtIndexedSubscript:2];
            [v24 floatValue];
            v85 = v25;
            v26 = [v19 objectAtIndexedSubscript:3];
            [v26 floatValue];
            v27 = vcvtq_f64_f32(__PAIR64__(v91, v93));
            v92 = vcvtq_f64_f32(__PAIR64__(v28, v85));
            v94 = v27;
            v29 = [v19 objectAtIndexedSubscript:4];
            [v29 floatValue];
            v31 = v30;
            [v19 objectAtIndexedSubscript:5];
            v32 = v7;
            v34 = v33 = retstr;
            [v34 floatValue];
            v36 = v35;

            retstr = v33;
            v7 = v32;

            v20 = v97;
LABEL_42:
            v53 = v96;
            goto LABEL_43;
          }

          v52 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101391138();
          }

          v53 = v96;
          v54 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.a) = 67110146;
            HIDWORD(buf.a) = v52;
            LOWORD(buf.b) = 2082;
            *(&buf.b + 2) = "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]";
            WORD1(buf.c) = 2082;
            *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m";
            WORD2(buf.d) = 1024;
            *(&buf.d + 6) = 694;
            WORD1(buf.tx) = 2112;
            *(&buf.tx + 4) = v5;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Not enough numbers for matrix transform! %@", &buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101391160();
          }

          v55 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v75 = v55;
            v76 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(buf.a) = 67109378;
            HIDWORD(buf.a) = v52;
            LOWORD(buf.b) = 2114;
            *(&buf.b + 2) = v76;
            _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
          }

          v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
          v56 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v56 lineNumber:694 isFatal:0 description:"Not enough numbers for matrix transform! %@", v5];
        }

        else if ([v97 isEqualToString:@"translate"])
        {
          if ([v19 count] == 2)
          {
            v21 = [v19 objectAtIndexedSubscript:0];
            [v21 floatValue];
            v49 = v48;
            v50 = [v19 objectAtIndexedSubscript:1];
            [v50 floatValue];
            CGAffineTransformMakeTranslation(&buf, v49, v51);
            v92 = *&buf.c;
            v94 = *&buf.a;
            v31 = buf.tx;
            v36 = buf.ty;

            goto LABEL_42;
          }

          if ([v19 count] == 1)
          {
            v21 = [v19 objectAtIndexedSubscript:0];
            [v21 floatValue];
            CGAffineTransformMakeTranslation(&buf, v64, 0.0);
            v92 = *&buf.c;
            v94 = *&buf.a;
            v31 = buf.tx;
            v36 = buf.ty;
            goto LABEL_42;
          }

          v69 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          v53 = v96;
          if (qword_101AD5A10 != -1)
          {
            sub_1013910E8();
          }

          v70 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.a) = 67110146;
            HIDWORD(buf.a) = v69;
            LOWORD(buf.b) = 2082;
            *(&buf.b + 2) = "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]";
            WORD1(buf.c) = 2082;
            *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m";
            WORD2(buf.d) = 1024;
            *(&buf.d + 6) = 705;
            WORD1(buf.tx) = 2112;
            *(&buf.tx + 4) = v5;
            _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Wrong number of numbers for translate transform! %@", &buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101391110();
          }

          v71 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v77 = v71;
            v78 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(buf.a) = 67109378;
            HIDWORD(buf.a) = v69;
            LOWORD(buf.b) = 2114;
            *(&buf.b + 2) = v78;
            _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
          }

          v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
          v56 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v56 lineNumber:705 isFatal:0 description:"Wrong number of numbers for translate transform! %@", v5];
        }

        else
        {
          v57 = [v97 isEqualToString:@"scale"];
          v36 = ty;
          v31 = tx;
          v59 = v87;
          v58 = v88;
          v53 = v96;
          if (!v57)
          {
            goto LABEL_44;
          }

          if ([v19 count] == 2)
          {
            v21 = [v19 objectAtIndexedSubscript:0];
            [v21 floatValue];
            v61 = v60;
            v62 = v19;
            v63 = 1;
LABEL_48:
            v67 = [v62 objectAtIndexedSubscript:v63];
            [v67 floatValue];
            CGAffineTransformMakeScale(&buf, v61, v68);
            v92 = *&buf.c;
            v94 = *&buf.a;
            v31 = buf.tx;
            v36 = buf.ty;

            goto LABEL_43;
          }

          if ([v19 count] == 1)
          {
            v21 = [v19 objectAtIndexedSubscript:0];
            [v21 floatValue];
            v61 = v66;
            v62 = v19;
            v63 = 0;
            goto LABEL_48;
          }

          v72 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101391098();
          }

          v73 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.a) = 67110146;
            HIDWORD(buf.a) = v72;
            LOWORD(buf.b) = 2082;
            *(&buf.b + 2) = "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]";
            WORD1(buf.c) = 2082;
            *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m";
            WORD2(buf.d) = 1024;
            *(&buf.d + 6) = 715;
            WORD1(buf.tx) = 2112;
            *(&buf.tx + 4) = v5;
            _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Wrong number of numbers for scale transform! %@", &buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013910C0();
          }

          v74 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v79 = v74;
            v80 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(buf.a) = 67109378;
            HIDWORD(buf.a) = v72;
            LOWORD(buf.b) = 2114;
            *(&buf.b + 2) = v80;
            _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
          }

          v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLSVGToBezierPathConverter transformFromSVGTransformAttributeString:]");
          v56 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSVGToBezierPathConverter.m"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v56 lineNumber:715 isFatal:0 description:"Wrong number of numbers for scale transform! %@", v5];
        }

        v36 = ty;
        v31 = tx;
        v92 = v87;
        v94 = v88;
        v20 = v97;
LABEL_43:

        v59 = v92;
        v58 = v94;
LABEL_44:
        v65 = *&retstr->c;
        *&buf.a = *&retstr->a;
        *&buf.c = v65;
        *&buf.tx = *&retstr->tx;
        *&t2.a = v58;
        *&t2.c = v59;
        t2.tx = v31;
        t2.ty = v36;
        CGAffineTransformConcat(retstr, &buf, &t2);

        v10 = v53 + 1;
      }

      while (v10 != v90);
      v81 = [v7 countByEnumeratingWithState:&v99 objects:v107 count:16];
      v90 = v81;
    }

    while (v81);
  }

  return result;
}

@end