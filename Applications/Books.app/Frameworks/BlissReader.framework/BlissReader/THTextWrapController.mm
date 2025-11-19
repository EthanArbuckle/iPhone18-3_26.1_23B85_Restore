@interface THTextWrapController
- (id)beginWrappingToColumn:(id)a3 target:(id)a4 hasWrapables:(BOOL *)a5;
- (unsigned)p_splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] wrappable:(id)a5;
- (unsigned)splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 floatingCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9;
@end

@implementation THTextWrapController

- (id)beginWrappingToColumn:(id)a3 target:(id)a4 hasWrapables:(BOOL *)a5
{
  v9 = objc_alloc_init(THTextWrapCookie);
  [(THTextWrapCookie *)v9 setColumn:a3];
  [(THTextWrapCookie *)v9 setTarget:a4];
  v24 = -[THTextWrapController zOrderOfDrawable:forTarget:](self, "zOrderOfDrawable:forTarget:", [a4 info], a4);
  v25 = self;
  v26 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(THTextWrapController *)self floatingDrawableLayoutsForTarget:a4];
  v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        if (v24 < -[THTextWrapController zOrderOfDrawable:forTarget:](v25, "zOrderOfDrawable:forTarget:", [*(*(&v31 + 1) + 8 * v13) info], v26))
        {
          v14 = TSUProtocolCast();
          if (v14 && (v15 = v14, ![v14 wrapContainerMode]))
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v17 = [v15 descendentWrappables];
            v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v28;
              do
              {
                v21 = 0;
                do
                {
                  if (*v28 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  [(THTextWrapCookie *)v9 addFloatingWrappable:*(*(&v27 + 1) + 8 * v21)];
                  *a5 = 1;
                  v21 = v21 + 1;
                }

                while (v19 != v21);
                v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
              }

              while (v19);
            }
          }

          else
          {
            v16 = TSUProtocolCast();
            if (v16)
            {
              [(THTextWrapCookie *)v9 addFloatingWrappable:v16];
              *a5 = 1;
            }
          }
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  return v9;
}

- (unsigned)splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] wrappableAttachments:(id)a5 ignoreFloatingGraphics:(BOOL)a6 floatingCausedWrap:(BOOL *)a7 skipHint:(double *)a8 userInfo:(id)a9
{
  v9 = __chkstk_darwin(self, a2, a4, a5, a6, a7, a8, a9, a3.origin, *&a3.origin.y, a3.size, *&a3.size.height);
  v11 = v10;
  v13 = v12;
  v135 = v9;
  v136 = v14;
  v16 = v15;
  __dst = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  v26 = TSUDynamicCast();
  v27 = [v26 column];
  v28 = [v26 target];
  v29 = v28;
  v130 = v13;
  v134 = v27;
  if (v27)
  {
    if (v28)
    {
      goto LABEL_3;
    }

LABEL_30:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!v29)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v13)
  {
LABEL_4:
    *v13 = 1.0;
  }

LABEL_5:
  [v29 rectInRoot:{v25, v23, v21, v19}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [v27 frameBounds];
  [v29 rectInRoot:?];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  if (([v29 autosizeFlags] & 3) != 0)
  {
    [v29 maxSize];
    v45 = v46;
  }

  v162.origin.x = v31;
  v162.origin.y = v33;
  v162.size.width = v35;
  v162.size.height = v37;
  v198.origin.x = v39;
  v198.origin.y = v41;
  v198.size.width = v43;
  v198.size.height = v45;
  if (!CGRectIntersectsRect(v162, v198))
  {
    LODWORD(v62) = 0;
    return v62;
  }

  v133 = v29;
  *__dst = v31;
  __dst[1] = v33;
  __dst[2] = v35;
  __dst[3] = v37;
  v47 = [v11 floatingWrappables];
  v131 = v47;
  if ([v16 count])
  {
    v47 = [v47 mutableCopy];
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v48 = [v16 countByEnumeratingWithState:&v153 objects:v160 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v154;
      do
      {
        v51 = v16;
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v154 != v50)
          {
            objc_enumerationMutation(v51);
          }

          v53 = v26;
          [objc_msgSend(v26 "target")];
          v54 = TSUProtocolCast();
          if (v54 && (v55 = v54, ![v54 wrapContainerMode]))
          {
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v57 = [v55 descendentWrappables];
            v58 = [v57 countByEnumeratingWithState:&v149 objects:v159 count:16];
            if (v58)
            {
              v59 = v58;
              v60 = *v150;
              do
              {
                for (j = 0; j != v59; j = j + 1)
                {
                  if (*v150 != v60)
                  {
                    objc_enumerationMutation(v57);
                  }

                  [v47 addObject:*(*(&v149 + 1) + 8 * j)];
                }

                v59 = [v57 countByEnumeratingWithState:&v149 objects:v159 count:16];
              }

              while (v59);
            }
          }

          else
          {
            v56 = TSUProtocolCast();
            if (v56)
            {
              [v47 addObject:v56];
            }
          }

          v26 = v53;
        }

        v16 = v51;
        v49 = [v51 countByEnumeratingWithState:&v153 objects:v160 count:16];
      }

      while (v49);
    }
  }

  else
  {
    v63 = v47;
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v142 = [v47 countByEnumeratingWithState:&v145 objects:v158 count:16];
  if (!v142)
  {
    v83 = 1;
LABEL_119:

    v62 = v83;
    goto LABEL_120;
  }

  v141 = *v146;
  v62 = 1;
  v132 = v31;
  v137 = v33;
  v129 = v35;
  do
  {
    v64 = 0;
    do
    {
      if (*v146 != v141)
      {
        objc_enumerationMutation(v47);
      }

      v143 = v64;
      v65 = *(*(&v145 + 1) + 8 * v64);
      v66 = [v65 wrapDirection];
      v67 = [v65 wrapFitType];
      v68 = [v65 wrapType];
      if (!v68)
      {
        goto LABEL_78;
      }

      v69 = v68;
      if (v68 == 4)
      {
        v70 = [v135 p_shouldTextFlowAroundWrappable:v65 inTarget:v133 inColumn:v134];
        v69 = v70 ? 1 : 2;
        if (v70)
        {
          v66 = 2;
        }
      }

      [v65 boundsInfluencingExteriorWrap];
      x = v163.origin.x;
      rect = v163.origin.y;
      width = v163.size.width;
      height = v163.size.height;
      v199.origin.x = v31;
      v199.origin.y = v33;
      v199.size.width = v35;
      v74 = v31;
      v199.size.height = v37;
      if (CGRectIntersectsRect(v163, v199))
      {
        if (v136 && [v131 indexOfObject:v65] != 0x7FFFFFFFFFFFFFFFLL)
        {
          *v136 = 1;
        }

        if (v69 == 2)
        {
          if (!v130)
          {
            goto LABEL_61;
          }

          v75 = *v130;
          v164.origin.x = x;
          v164.origin.y = rect;
          v164.size.width = width;
          v164.size.height = height;
          MaxY = CGRectGetMaxY(v164);
          v165.origin.x = v132;
          v33 = v137;
          v165.origin.y = v137;
          v165.size.width = v35;
          v165.size.height = v37;
          v77 = 0;
          v78 = MaxY - CGRectGetMinY(v165);
          v79 = vcvtps_u32_f32(v78);
          if (v75 >= v79)
          {
            v79 = v75;
          }

          v31 = v132;
          *v130 = v79;
        }

        else if (v67)
        {
          if (v67 != 1)
          {
LABEL_61:
            v77 = 0;
LABEL_62:
            v33 = v137;
            goto LABEL_63;
          }

          v77 = [v135 p_splitLine:v157 lineSegmentRects:v65 wrappable:{v31, v137, v35, v37}];
          if (!v77)
          {
            goto LABEL_62;
          }

          if (v69 == 3)
          {
            v166.origin.x = x;
            v166.origin.y = rect;
            v166.size.width = width;
            v166.size.height = height;
            MinX = CGRectGetMinX(v166);
            v167.origin.x = v31;
            v167.origin.y = v137;
            v167.size.width = v35;
            v167.size.height = v37;
            v125 = MinX - CGRectGetMinX(v167);
            v168.origin.x = v132;
            v168.origin.y = v137;
            v168.size.width = v35;
            v168.size.height = v37;
            MaxX = CGRectGetMaxX(v168);
            v169.origin.x = x;
            v169.origin.y = rect;
            v169.size.width = width;
            v169.size.height = height;
            v81 = MaxX - CGRectGetMaxX(v169);
            v31 = v132;
            if (v125 < v81)
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v66 == 1)
            {
LABEL_97:
              v103 = &v157[v77 - 1];
              v104 = CGRectGetMaxX(*v103);
              v192.origin.x = x;
              v192.origin.y = rect;
              v192.size.width = width;
              v192.size.height = height;
              v105 = CGRectGetMaxX(v192);
              v33 = v137;
              if (v77 == 1 || v104 < v105)
              {
                goto LABEL_63;
              }

              size = v103->size;
              v157[0].origin = v103->origin;
              v157[0].size = size;
LABEL_100:
              v77 = 1;
              goto LABEL_63;
            }

            if (v66)
            {
              goto LABEL_62;
            }
          }

          v101 = CGRectGetMinX(v157[0]);
          v191.origin.x = x;
          v191.origin.y = rect;
          v191.size.width = width;
          v191.size.height = height;
          v102 = v101 > CGRectGetMinX(v191);
          v33 = v137;
          if (!v102)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v171.origin.x = v31;
          v171.origin.y = v137;
          v171.size.width = v35;
          v171.size.height = v37;
          v92 = CGRectGetMaxX(v171);
          v172.origin.x = x;
          v172.origin.y = rect;
          v172.size.width = width;
          v172.size.height = height;
          if (v92 <= CGRectGetMaxX(v172) || (v173.origin.x = v74, v173.origin.y = v137, v173.size.width = v129, v173.size.height = v37, v93 = CGRectGetMinX(v173), v174.origin.x = x, v174.origin.y = rect, v174.size.width = width, v174.size.height = height, v93 >= CGRectGetMinX(v174)))
          {
            v186.origin.x = x;
            v186.origin.y = rect;
            v186.size.width = width;
            v186.size.height = height;
            v200.origin.x = v74;
            v200.origin.y = v137;
            v200.size.width = v129;
            v200.size.height = v37;
            v187 = CGRectIntersection(v186, v200);
            v96 = v187.size.width;
            v97 = v187.size.height;
            rectb = v187.origin.x;
            y = v187.origin.y;
            v98 = CGRectGetMaxX(v187);
            v188.origin.x = v74;
            v188.origin.y = v137;
            v188.size.width = v129;
            v188.size.height = v37;
            if (v98 >= CGRectGetMaxX(v188))
            {
              v100 = 0;
              v99 = v74;
            }

            else
            {
              v189.origin.x = rectb;
              v189.origin.y = y;
              v189.size.width = v96;
              v189.size.height = v97;
              v99 = CGRectGetMaxX(v189);
              v100 = 1;
            }

            v31 = v74;
            v35 = v129;
            v190.origin.x = v99;
            v33 = v137;
            v190.origin.y = v137;
            v190.size.width = v129 - v96;
            v190.size.height = v37;
            if (CGRectGetWidth(v190) >= 20.0 && (v66 == 2 || v69 == 3 || v100 != (v66 == 0)))
            {
              v157[0].origin.x = v99;
              v157[0].origin.y = v137;
              v77 = 1;
              v157[0].size.width = v129 - v96;
              v157[0].size.height = v37;
            }

            else
            {
              v77 = 0;
            }
          }

          else
          {
            v175.origin.x = v74;
            v175.origin.y = v137;
            v175.size.width = v129;
            v175.size.height = v37;
            v120.x = CGRectGetMinX(v175);
            v176.origin.x = v74;
            v176.origin.y = v137;
            v176.size.width = v129;
            v176.size.height = v37;
            v120.y = CGRectGetMinY(v176);
            v177.origin.x = x;
            v177.origin.y = rect;
            v177.size.width = width;
            v177.size.height = height;
            v126 = CGRectGetMinX(v177);
            v178.origin.x = v74;
            v178.origin.y = v137;
            v178.size.width = v129;
            v178.size.height = v37;
            v122 = v126 - CGRectGetMinX(v178);
            v179.origin.x = v74;
            v179.origin.y = v137;
            v179.size.width = v129;
            v179.size.height = v37;
            v121 = CGRectGetHeight(v179);
            v180.origin.x = x;
            v180.origin.y = rect;
            v180.size.width = width;
            v180.size.height = height;
            v127 = CGRectGetMaxX(v180);
            v181.origin.x = v132;
            v181.origin.y = v137;
            v181.size.width = v129;
            v181.size.height = v37;
            MinY = CGRectGetMinY(v181);
            v182.origin.x = v132;
            v182.origin.y = v137;
            v182.size.width = v129;
            v182.size.height = v37;
            v119 = CGRectGetMaxX(v182);
            v183.origin.x = x;
            v183.origin.y = rect;
            v183.size.width = width;
            v183.size.height = height;
            recta = v119 - CGRectGetMaxX(v183);
            v184.origin.x = v132;
            v184.origin.y = v137;
            v184.size.width = v129;
            v184.size.height = v37;
            v94 = CGRectGetHeight(v184);
            v185.origin = v120;
            v185.size.height = v121;
            v185.size.width = v122;
            v31 = v132;
            if (CGRectGetWidth(v185) >= 20.0)
            {
              v33 = v137;
              v95 = recta;
              v35 = v129;
              if ((v66 & 0xFFFFFFFD) != 0 && (v69 != 3 || (v193.origin = v120, v193.size.height = v121, v193.size.width = v122, v107 = CGRectGetWidth(v193), v194.origin.y = MinY, v194.origin.x = v127, v194.size.width = recta, v194.size.height = v94, v108 = v107 < CGRectGetWidth(v194), v31 = v132, v108)))
              {
                v77 = 0;
              }

              else
              {
                v157[0].origin = v120;
                v77 = 1;
                v157[0].size.width = v122;
                v157[0].size.height = v121;
              }
            }

            else
            {
              v77 = 0;
              v33 = v137;
              v95 = recta;
              v35 = v129;
            }

            v195.origin.y = MinY;
            v195.origin.x = v127;
            v195.size.width = v95;
            v195.size.height = v94;
            if (CGRectGetWidth(v195) >= 20.0)
            {
              if (v66 - 1 < 2 || v69 == 3 && (v196.origin = v120, v196.size.height = v121, v196.size.width = v122, v110 = CGRectGetWidth(v196), v197.origin.y = MinY, v197.origin.x = v127, v197.size.width = v95, v197.size.height = v94, v108 = v110 < CGRectGetWidth(v197), v31 = v132, v108))
              {
                v109 = &v157[v77];
                v109->origin.x = v127;
                v109->origin.y = MinY;
                ++v77;
                v109->size.width = v95;
                v109->size.height = v94;
              }
            }
          }
        }
      }

      else
      {
        v157[0].origin.x = v31;
        v157[0].origin.y = v33;
        v77 = 1;
        v157[0].size.width = v35;
        v157[0].size.height = v37;
      }

      if (!v62)
      {
        goto LABEL_64;
      }

LABEL_63:
      v82 = 0;
      v83 = 0;
      v84 = v62;
      do
      {
        if (v77 && v83 <= 0x80)
        {
          p_size = &v157[0].size;
          v86 = 1;
          do
          {
            v170 = CGRectIntersection(*&__dst[4 * v82], *&p_size[-1].width);
            v87 = v170.origin.x;
            v88 = v170.origin.y;
            v89 = v170.size.width;
            v90 = v170.size.height;
            if (!CGRectIsEmpty(v170) && v89 >= 20.0)
            {
              v91 = &v161[2 * v83];
              *v91 = v87;
              v91[1] = v88;
              ++v83;
              v91[2] = v89;
              v91[3] = v90;
            }

            if (v86 >= v77)
            {
              break;
            }

            ++v86;
            p_size += 2;
          }

          while (v83 < 0x81);
        }

        ++v82;
      }

      while (v82 != v84);
      if (v83)
      {
        memcpy(__dst, v161, 32 * v83);
        if (v83 > 0x7F)
        {
          goto LABEL_119;
        }

        v62 = v83;
      }

      else
      {
LABEL_64:
        v62 = 0;
      }

LABEL_78:
      v64 = v143 + 1;
    }

    while ((v143 + 1) != v142);
    v111 = [v47 countByEnumeratingWithState:&v145 objects:v158 count:16];
    v142 = v111;
  }

  while (v111);

  if (!v62)
  {
    return v62;
  }

LABEL_120:
  v112 = __dst + 2;
  v113 = v62;
  do
  {
    [objc_msgSend(v26 "target")];
    *(v112 - 2) = v114;
    *(v112 - 1) = v115;
    *v112 = v116;
    *(v112 + 1) = v117;
    v112 += 4;
    --v113;
  }

  while (v113);
  return v62;
}

- (unsigned)p_splitLine:(CGRect)a3 lineSegmentRects:(CGRect)a4[128] wrappable:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = [a5 wrapPolygon];
  if (!v11)
  {
    [a5 frameInRoot];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v53.origin.x = v13;
    v53.origin.y = v15;
    v53.size.width = v17;
    v53.size.height = v19;
    if (CGRectIntersectsRect(v39, v53))
    {
      v40.origin.x = v13;
      v40.origin.y = v15;
      v40.size.width = v17;
      v40.size.height = v19;
      MinX = CGRectGetMinX(v40);
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      v20 = CGRectGetMinX(v41);
      v42.size.height = v19;
      v21 = v20;
      v42.origin.x = v13;
      v42.origin.y = v15;
      v42.size.width = v17;
      rect = v42.size.height;
      MaxX = CGRectGetMaxX(v42);
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v22 = CGRectGetMaxX(v43);
      if (MinX > v21)
      {
        v44.origin.x = x;
        v33 = v22;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        v31 = CGRectGetMinX(v44);
        v45.origin.x = v13;
        v45.origin.y = v15;
        v45.size.width = v17;
        v45.size.height = rect;
        v23 = CGRectGetMinX(v45);
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        v24 = CGRectGetMinX(v46);
        a4->origin.x = v31;
        a4->origin.y = y;
        a4->size.width = v23 - v24;
        a4->size.height = height;
        if (MaxX >= v33)
        {
          return 1;
        }

        v47.origin.x = v13;
        v47.origin.y = v15;
        v47.size.width = v17;
        v47.size.height = rect;
        v35 = CGRectGetMaxX(v47);
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v25 = CGRectGetMaxX(v48);
        v49.origin.x = v13;
        v49.origin.y = v15;
        v49.size.width = v17;
        v49.size.height = rect;
        width = v25 - CGRectGetMaxX(v49);
        a4[1].origin.x = v35;
        result = 2;
        v26 = 56;
        v27 = 48;
        v28 = 40;
LABEL_11:
        *(&a4->origin.x + v28) = y;
        *(&a4->origin.x + v27) = width;
        *(&a4->origin.x + v26) = height;
        return result;
      }

      if (MaxX > v22)
      {
        return 0;
      }

      v50.origin.x = v13;
      v50.origin.y = v15;
      v50.size.width = v17;
      v50.size.height = rect;
      v36 = CGRectGetMaxX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v29 = CGRectGetMaxX(v51);
      v52.origin.x = v13;
      v52.origin.y = v15;
      v52.size.width = v17;
      v52.size.height = rect;
      width = v29 - CGRectGetMaxX(v52);
      a4->origin.x = v36;
    }

    else
    {
      a4->origin.x = x;
    }

    result = 1;
    v26 = 24;
    v27 = 16;
    v28 = 8;
    goto LABEL_11;
  }

  return [TSWPTextWrapper splitLine:a4 lineSegmentRects:v11 polygon:1 type:0 skipHint:x, y, width, height];
}

@end