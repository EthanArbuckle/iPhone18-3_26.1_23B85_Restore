@interface CPSpacerFinder
- (CPSpacerFinder)initWithContentZone:(id)a3;
- (id)spacers;
- (void)assessQuality;
- (void)dealloc;
- (void)determineValidity;
- (void)dispose;
- (void)finalize;
- (void)findSpacers;
- (void)initializeJunctions;
- (void)initializeSegmentations;
- (void)splitTextLines;
@end

@implementation CPSpacerFinder

- (id)spacers
{
  result = self->spacers;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->spacers = result;
    count = self->spacerSequence.count;
    if (count)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = self->spacerSequence.ordered[v5];
        if (*(v7 + 56) == 1)
        {
          v8 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v7 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [(NSMutableArray *)self->spacers addObject:v8];

          *(v7 + 15) = v6++;
          count = self->spacerSequence.count;
        }

        ++v5;
      }

      while (v5 < count);
      return self->spacers;
    }
  }

  return result;
}

- (void)splitTextLines
{
  [(CPSpacerFinder *)self spacers];
  [(CPSpacerFinder *)self assessQuality];
  [(CPSpacerFinder *)self determineValidity];
  v3 = [(CPZone *)self->contentZone textLinesInZone];
  v15 = [(NSMutableArray *)self->spacers count];
  if (!self->segmentationCount)
  {
    return;
  }

  v4 = 0;
  v14 = v3;
  do
  {
    v5 = &self->segmentations[v4];
    if (!v5->var1)
    {
      goto LABEL_17;
    }

    v6 = 0;
    do
    {
      v7 = v5->var2 + 72 * v6;
      v8 = *(v7 + 40);
      if (!v8)
      {
        goto LABEL_16;
      }

      while (1)
      {
        v9 = *(v8 + 48);
        if (v9)
        {
          if (*(v9 + 170) == 1)
          {
            break;
          }
        }

LABEL_13:
        v8 = *(v8 + 40);
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      if (!CGRectIntersectsRect(*(v7 + 8), *v8))
      {
        if (*(v9 + 168) == 1 && *(v8 + 56) == 1)
        {
          v16 = CGRectNull;
          [-[NSMutableArray objectAtIndex:](self->spacers objectAtIndex:{*(v8 + 60)), "getValue:", &v16}];
          if (CGRectIntersectsRect(*(v7 + 8), v16))
          {
            *(v7 + 48) = 1;
            *(v7 + 52) = *(v8 + 60);
          }
        }

        goto LABEL_13;
      }

      *(v7 + 64) = 1;
      *(v7 + 48) = 0;
      *(v7 + 52) = *(v8 + 60);
LABEL_16:
      ++v6;
    }

    while (v6 < v5->var1);
LABEL_17:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(&v16, 0, sizeof(v16));
    *&v16.origin.y = v5->var2;
    HIDWORD(v16.size.width) = v5->var1;
    BYTE8(v17) = 0;
    v16.size.height = 0.0;
    *&v17 = 0;
    *&v18 = v14;
    *(&v18 + 1) = v5->var0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    [*(&v18 + 1) removeTextLines:v14 whereTrue:isSplitBySpacer passing:&v16];
    v10 = [v14 count];
    v11 = v10;
    if (BYTE8(v17) == 1 && v10 >= 2)
    {
      *(&v18 + 1) = [v14 objectAtIndex:v10 - 2];
    }

    *&v12 = recordPreviousInlineInfo(&v16).n128_u64[0];
    if (*&v16.size.height && v11)
    {
      *(&v18 + 1) = [v14 objectAtIndex:{v11 - 1, v12}];
    }

    *&v13 = recordPreviousInlineInfo(&v16).n128_u64[0];
    if (v15)
    {
      [*(&v18 + 1) setRightSpacerIndex:{(v15 - 1), v13}];
    }

    ++v4;
  }

  while (v4 < self->segmentationCount);
}

- (void)determineValidity
{
  if (self->segmentationCount)
  {
    v2 = self;
    v3 = 0;
    allocator = *MEMORY[0x1E695E480];
    do
    {
      v104 = v3;
      v4 = &v2->segmentations[v3];
      v110 = [*v4 wordArray];
      v5 = *(v4 + 8);
      if (!v5)
      {
        goto LABEL_144;
      }

      v6 = 0;
      LODWORD(v7) = 0;
      v113 = 0;
      v8 = 0;
      v9 = **(v4 + 16) + 1;
      v10 = 1;
      v117 = v4;
      do
      {
        v112 = v10;
        v11 = (*(v4 + 16) + 72 * v6);
        v118 = v6 + 1;
        v109 = v6;
        if (v6 + 1 >= v5)
        {
          v116 = [*v4 wordCount];
        }

        else
        {
          v116 = v11[18] + 1;
        }

        v115 = v9;
        v111 = v110 + 48 * *v11;
        v12 = *(v11 + 5);
        if (!v12)
        {
          if (v9 - v8 == 1)
          {
            v4 = v117;
            [*v117 charSequence];
            LODWORD(v7) = 0;
            v13 = 0;
          }

          else
          {
            LODWORD(v7) = 0;
            v13 = 0;
LABEL_72:
            v4 = v117;
          }

          v64 = v115;
          v9 = v116;
          goto LABEL_74;
        }

        v114 = v9 - v8;
        v108 = v7;
        v13 = 0;
        v7 = 0;
        do
        {
          v14 = *(v12 + 48);
          if (v14 && *(v14 + 170) == 1)
          {
            v126 = CGRectIntersection(*(v11 + 2), *v12);
            x = v126.origin.x;
            if (v126.origin.x != INFINITY && v126.origin.y != INFINITY)
            {
              y = v126.origin.y;
              width = v126.size.width;
              height = v126.size.height;
              v20 = v7;
              v21 = v13;
              v22 = [(CPZone *)v2->contentZone graphicsInZone];
              v23 = [v22 count];
              v24 = v23;
              if (v23)
              {
                v25 = 0;
                v26 = height * 0.05;
                r1 = height * 0.01;
                v27 = 1;
                do
                {
                  v28 = [v22 objectAtIndex:v25];
                  [v28 renderedBounds];
                  if (v32 < height + height)
                  {
                    v133.origin.x = v29;
                    v133.origin.y = v30;
                    v33 = v31;
                    v34 = v32;
                    v127.origin.x = x;
                    v127.origin.y = y;
                    v127.size.width = width;
                    v127.size.height = height;
                    v133.size.width = v33;
                    v133.size.height = v34;
                    v128 = CGRectIntersection(v127, v133);
                    if (v128.origin.x != INFINITY && v128.origin.y != INFINITY && (v34 <= v26 || v128.size.height > v26))
                    {
                      v37 = v33 > r1 && v128.size.width <= r1;
                      v38 = v33 * 0.5;
                      v39 = v37 || v128.size.width < v38;
                      if (!v39 && ([v28 isVisible] & 1) != 0)
                      {
                        break;
                      }
                    }
                  }

                  v27 = ++v25 < v24;
                }

                while (v24 != v25);
                v2 = self;
                if (v27)
                {
                  [*v117 maximumWordGap];
                  v41 = v40;
                  [*v117 medianFontSize];
                  if (*(v11 + 7))
                  {
                    goto LABEL_38;
                  }

                  v106 = v42;
                  v107 = v41;
                  v43 = *(v11 + 1);
                  v44 = *(v11 + 2);
                  v45 = *(v11 + 4);
                  r1a = *(v11 + 3);
                  v46 = [(CPZone *)self->contentZone graphicsInZone];
                  v47 = [v46 count];
                  v48 = v47;
                  if (v47)
                  {
                    v49 = 0;
                    v120 = 0.0;
                    v122 = 0.0;
                    v123 = INFINITY;
                    v119 = INFINITY;
                    do
                    {
                      v50 = [v46 objectAtIndex:v49];
                      [v50 renderedBounds];
                      if (v54 < v45 + v45)
                      {
                        v134.origin.x = v51;
                        v134.origin.y = v52;
                        v134.size.width = v53;
                        v134.size.height = v54;
                        v129.origin.x = v43;
                        v129.origin.y = v44;
                        v129.size.width = r1a;
                        v129.size.height = v45;
                        v130 = CGRectIntersection(v129, v134);
                        v55 = v130.origin.x;
                        if (v130.origin.x != INFINITY && v130.origin.y != INFINITY)
                        {
                          v57 = v130.origin.y;
                          v58 = v130.size.width;
                          v59 = v130.size.height;
                          if ([v50 isVisible])
                          {
                            Mutable = *(v11 + 7);
                            if (!Mutable)
                            {
                              Mutable = CFArrayCreateMutable(allocator, 0, 0);
                              *(v11 + 7) = Mutable;
                            }

                            CFArrayAppendValue(Mutable, v50);
                            v131.size.width = v122;
                            v131.origin.x = v123;
                            v131.origin.y = v119;
                            v131.size.height = v120;
                            v135.origin.x = v55;
                            v135.origin.y = v57;
                            v135.size.width = v58;
                            v135.size.height = v59;
                            v132 = CGRectUnion(v131, v135);
                            v122 = v132.size.width;
                            v123 = v132.origin.x;
                            v119 = v132.origin.y;
                            v120 = v132.size.height;
                          }
                        }
                      }

                      ++v49;
                    }

                    while (v48 != v49);
                  }

                  else
                  {
                    v122 = 0.0;
                    v123 = INFINITY;
                  }

                  v61 = *(v11 + 7);
                  v2 = self;
                  if (v61)
                  {
                    v62 = v106 * v107 + v106 * v107;
                    if (v123 <= v62 + v43 && v122 + v123 >= v43 + r1a - v62)
                    {
LABEL_38:
                      excludeSpacerFromBounds(&v2->spacerSequence, v12, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 4));
                      v13 = v21;
                      v7 = v20;
                      goto LABEL_58;
                    }

                    CFRelease(v61);
                    *(v11 + 7) = 0;
                  }
                }
              }

              v7 = (v20 + 1);
              v13 = preferredSpacer(v21, v12);
            }
          }

LABEL_58:
          v12 = *(v12 + 40);
        }

        while (v12);
        if (v114 != 1)
        {
          goto LABEL_72;
        }

        v4 = v117;
        v63 = [*v117 charSequence];
        v64 = v115;
        v9 = v116;
        if (!v13)
        {
          goto LABEL_74;
        }

        v65 = v7;
        v66 = *(v13 + 48);
        if (!v66)
        {
          goto LABEL_68;
        }

        if (!*(v66 + 44))
        {
          goto LABEL_68;
        }

        v67 = v63;
        v68 = *(v66 + 88);
        v69 = *(v66 + 96);
        v70 = *(v66 + 104);
        v71 = *(v66 + 112);
        if (fabs(CGIntervalIntersection(v68, v69, v70, v71)) != INFINITY)
        {
          goto LABEL_68;
        }

        v72 = *(v66 + 152);
        if (v72 >= v70 + v71)
        {
          goto LABEL_68;
        }

        v73 = *(v111 + 4);
        if (v73 >= 5)
        {
          if (v73 <= 7)
          {
            v88 = v73 - 1;
            while (v88 != -1)
            {
              v89 = [v67 charAtIndex:v88 + *v111];
              --v88;
              if (*(v89 + 72) <= 0x30u)
              {
                goto LABEL_115;
              }
            }
          }

          if (!isConsistentWithNarrowWordsCommon(v111, v68, v69, v70, v71))
          {
LABEL_68:
            LODWORD(v7) = v65;
            goto LABEL_74;
          }
        }

LABEL_115:
        if (v65 == 1)
        {
          v90 = *(v13 + 48);
          LODWORD(v72) = *(v90 + 44);
          v91 = *&v72;
          v92 = *(v90 + 36);
          if (vcvtd_n_f64_u32(v92, 1uLL) <= v91)
          {
            v96 = *(v90 + 80) + v92;
            v97 = *(v90 + 32);
            v87 = v96 >= v97;
            v95 = v108;
            if (v87)
            {
              LODWORD(v91) = *(v90 + 76);
              v91 = *&v91;
              v93 = v97 * 0.75 > v91;
            }

            else
            {
              v93 = 1;
            }

            v94 = v113;
          }

          else
          {
            v93 = 1;
            v94 = v113;
            v95 = v108;
          }

          if (v95 == 1)
          {
            if (v93)
            {
              if (canSeparateWordRight(v94, v91))
              {
                goto LABEL_143;
              }

              if (preferredSpacer(v94, v13) == v13)
              {
LABEL_142:
                excludeSpacerFromBounds(&v2->spacerSequence, v94, *v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));
                goto LABEL_143;
              }
            }

            else
            {
              if (preferredSpacer(v94, v13) == v13)
              {
                goto LABEL_142;
              }

              *(v90 + 168) = 1;
            }

            v98 = *v94;
            v99 = v94[1];
            v100 = v94[2];
            v101 = v94[3];
LABEL_141:
            excludeSpacerFromBounds(&v2->spacerSequence, v13, v98, v99, v100, v101);
            LODWORD(v7) = 0;
            v13 = 0;
          }

          else
          {
            if (v109)
            {
              v102 = v95 == 0;
            }

            else
            {
              v102 = 0;
            }

            v103 = v102;
            if (((v103 | v93) & 1) == 0)
            {
              *(v90 + 168) = 1;
              v98 = *(v11 + 1);
              v99 = *(v11 + 2);
              v100 = *(v11 + 3);
              v101 = *(v11 + 4);
              goto LABEL_141;
            }

LABEL_143:
            LODWORD(v7) = 1;
          }
        }

        else
        {
          LODWORD(v7) = v65;
          if (v65 && v108 == 1)
          {
            excludeSpacerFromBounds(&v2->spacerSequence, v113, *v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));
          }
        }

LABEL_74:
        if (v9 - v64 != 1)
        {
          if (!v13)
          {
LABEL_93:
            v10 = 0;
            goto LABEL_110;
          }

LABEL_87:
          if (v7 == 1)
          {
            v74 = *(v13 + 48);
            if (!v74)
            {
              __assert_rtn("canSplitJunctionWithSpacer", "CPSpacerFinder.m", 741, "stats->quality");
            }

            goto LABEL_89;
          }

          goto LABEL_109;
        }

        if (!v13)
        {
          goto LABEL_93;
        }

        v74 = *(v13 + 48);
        if (!v74)
        {
          goto LABEL_87;
        }

        if (!*(v74 + 56))
        {
          goto LABEL_87;
        }

        v75 = *(v74 + 120);
        v76 = *(v74 + 128);
        v77 = *(v74 + 136);
        v78 = *(v74 + 144);
        if (fabs(CGIntervalIntersection(v75, v76, v77, v78)) != INFINITY)
        {
          goto LABEL_87;
        }

        v79 = *(v74 + 160);
        if (v79 <= v75 || *(v111 + 52) >= 5u && !isConsistentWithNarrowWordsCommon((v111 + 48), v75, v76, v77, v78))
        {
          goto LABEL_87;
        }

        if (v118 != *(v4 + 8) || v7 != 1)
        {
          goto LABEL_87;
        }

        if ((canSeparateWordRight(v13, v79) & 1) == 0)
        {
          excludeSpacerFromBounds(&v2->spacerSequence, v13, *(v11 + 1), *(v11 + 2), *(v11 + 3), *(v11 + 4));
          v13 = 0;
          LODWORD(v7) = 0;
          goto LABEL_93;
        }

LABEL_89:
        v80 = *(v74 + 32);
        if (v80 < 4)
        {
          v82 = (v11 + 6);
          v83 = *(v11 + 4);
          v84 = 1.0;
          v81 = 0.0;
          if (v83 > 0.0)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v81 = (v80 + -3.0) / 5.0;
          v82 = (v11 + 6);
          v83 = *(v11 + 4);
          v84 = 1.0;
          if (v83 > 0.0)
          {
            if (v81 >= 1.0)
            {
              v85 = *(v13 + 16);
              goto LABEL_96;
            }

LABEL_95:
            v85 = v81 * *(v13 + 16) + (v84 - v81) * *v82;
LABEL_96:
            v84 = v85 / (v83 * 0.5);
          }
        }

        v86 = *(v13 + 32);
        if ((v86 < 2 || (v86 < 6 ? (v87 = v80 >= 3) : (v87 = 1), !v87 || v81 + v84 < 1.0 || *(v13 + 24) < v83 + v83)) && *v82 < v83 * 100.0 || (LODWORD(v7) = 1, !(v112 & 1 | (v113 == 0))) && v80 == 1)
        {
          v10 = 0;
          *(v74 + 170) = 0;
          LODWORD(v7) = 1;
          goto LABEL_110;
        }

LABEL_109:
        v10 = 1;
LABEL_110:
        v6 = v118;
        v5 = *(v4 + 8);
        v113 = v13;
        v8 = v64;
      }

      while (v118 < v5);
LABEL_144:
      v3 = v104 + 1;
    }

    while (v104 + 1 < v2->segmentationCount);
  }
}

- (void)assessQuality
{
  count = self->spacerSequence.count;
  if (count)
  {
    v3 = self;
    self->qualityEntries = malloc_type_malloc(176 * count, 0x10000401EC9425BuLL);
    if (v3->segmentationCount)
    {
      v4 = 0;
      v86 = 0;
      v82 = v3;
      while (1)
      {
        v5 = &v3->segmentations[v4];
        v78 = [*v5 wordArray];
        v6 = *(v5 + 8);
        if (v6)
        {
          break;
        }

LABEL_119:
        v4 = v76 + 1;
        v3 = v82;
        if (v76 + 1 >= v82->segmentationCount)
        {
          return;
        }
      }

      v7 = 0;
      v8 = 0;
      v9 = **(v5 + 16) + 1;
      v77 = v5;
      while (1)
      {
        v10 = *(v5 + 16) + 72 * v7;
        v11 = *v10;
        v12 = v7 + 1;
        v13 = v12 >= v6 ? [*v5 wordCount] : *(v10 + 72) + 1;
        v81 = v12;
        v14 = v78 + 48 * v11;
        v15 = v9 - v8;
        if (v9 - v8 != 1)
        {
          break;
        }

        v16 = [*v5 charSequence];
        v17 = *(v14 + 4);
        if (v17 < 5)
        {
LABEL_16:
          v18 = 1;
        }

        else
        {
          if (v17 > 7)
          {
            break;
          }

          v19 = v16;
          v20 = v17 - 1;
          while (1)
          {
            v18 = v20 != -1;
            if (v20 == -1)
            {
              break;
            }

            v21 = [v19 charAtIndex:v20 + *v14];
            --v20;
            if (*(v21 + 72) <= 0x30u)
            {
              goto LABEL_16;
            }
          }
        }

LABEL_17:
        v22 = v13 - v9;
        LOBYTE(v23) = v13 - v9 == 1 && *(v14 + 52) < 5u;
        v79 = v13;
        v80 = v9;
        v24 = *(v10 + 40);
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          v88 = *(v14 + 12) & 0xA;
          v87 = *(v14 + 60) & 5;
          v27 = *(v14 + 16);
          v28 = v27 + *(v14 + 32);
          v29 = *(v14 + 64);
          v30 = v29 + *(v14 + 80);
          v84 = *(v14 + 56) > 1;
          v85 = *(v14 + 56);
          if (v15 == 1)
          {
            v31 = *(v14 + 16);
          }

          else
          {
            v31 = v27 + *(v14 + 32);
          }

          v83 = v31;
          if (v22 == 1)
          {
            v32 = v29 + *(v14 + 80);
          }

          else
          {
            v32 = *(v14 + 64);
          }

          while (1)
          {
            v33 = *(v10 + 8);
            v34 = *(v10 + 16);
            v91.size.width = *(v10 + 24);
            v91.size.height = *(v10 + 32);
            v91.origin.x = v33;
            v91.origin.y = v34;
            height = v91.size.height;
            width = v91.size.width;
            if (CGRectIntersectsRect(v91, *v24))
            {
              break;
            }

LABEL_117:
            v24 = *(v24 + 40);
            if (!v24)
            {
              goto LABEL_118;
            }
          }

          v35 = *(v24 + 48);
          if (v35)
          {
            if (v22 != 1 || *(v14 + 52) > 4u)
            {
              goto LABEL_31;
            }

            v53 = *(v24 + 40);
            if (v53)
            {
              while (1)
              {
                v92.origin.x = v33;
                v92.origin.y = v34;
                v92.size.height = height;
                v92.size.width = width;
                if (CGRectIntersectsRect(v92, *v53))
                {
                  if (*(v53 + 48))
                  {
                    break;
                  }
                }

                v53 = *(v53 + 40);
                if (!v53)
                {
                  goto LABEL_51;
                }
              }

LABEL_31:
              v23 = 0;
            }

            else
            {
LABEL_51:
              v23 = 1;
            }

            v36.f64[0] = *(v10 + 8);
            v36.f64[1] = *(v35 + 8);
            v37.f64[0] = width;
            v37.f64[1] = *(v35 + 24);
            v38.f64[0] = *(v35 + 16);
            v39.f64[0] = *v35;
            v39.f64[1] = *(v10 + 16);
            v38.f64[1] = height;
            v40 = vaddq_f64(v36, v37);
            v41 = vaddq_f64(v39, v38);
            v42 = vbslq_s8(vcgtq_f64(v36, v39), *(v10 + 8), *v35);
            v43 = vcgtq_f64(v41, v40);
            v36.f64[0] = v40.f64[0];
            v36.f64[1] = v41.f64[1];
            v41.f64[1] = v40.f64[1];
            *v35 = v42;
            *(v35 + 16) = vsubq_f64(vbslq_s8(v43, v36, v41), v42);
            v44 = *(v35 + 32);
            v45 = v44 + 1;
            *(v35 + 32) = v44 + 1;
            if (v15 == 1)
            {
              ++*(v35 + 36);
            }

            if (v22 == 1)
            {
              ++*(v35 + 40);
            }

            v18 &= v25 ^ 1;
            if (v18)
            {
              ++*(v35 + 44);
              if (*(v35 + 52))
              {
                v46 = v45 - *(v35 + 48);
              }

              else
              {
                *(v35 + 48) = v44;
                v46 = 1;
              }

              *(v35 + 52) = v46;
              v55 = *(v35 + 88);
              v56 = 0.0;
              v57 = v27;
              v58 = 0.0;
              if (fabs(v55) != INFINITY)
              {
                v58 = *(v35 + 96);
                v59 = v58 + v55;
                if (v58 >= 0.0)
                {
                  v57 = *(v35 + 88);
                }

                else
                {
                  v58 = -v58;
                  v57 = v59;
                }

                v60 = v57 + v58;
                if (v57 <= v27)
                {
                  if (v60 < v27)
                  {
                    v58 = v27 - v57;
                  }
                }

                else
                {
                  v58 = v60 - v27;
                  v57 = v27;
                }
              }

              *(v35 + 88) = v57;
              *(v35 + 96) = v58;
              v61 = *(v35 + 104);
              v62 = v28;
              if (fabs(v61) != INFINITY)
              {
                v56 = *(v35 + 112);
                v63 = v56 + v61;
                if (v56 >= 0.0)
                {
                  v62 = *(v35 + 104);
                }

                else
                {
                  v56 = -v56;
                  v62 = v63;
                }

                v64 = v62 + v56;
                if (v62 <= v28)
                {
                  if (v64 < v28)
                  {
                    v56 = v28 - v62;
                  }
                }

                else
                {
                  v56 = v64 - v28;
                  v62 = v28;
                }
              }

              *(v35 + 104) = v62;
              *(v35 + 112) = v56;
            }

            if (v23)
            {
              ++*(v35 + 56);
              if (*(v35 + 64))
              {
                v65 = v45 - *(v35 + 60);
              }

              else
              {
                *(v35 + 60) = v44;
                v65 = 1;
              }

              *(v35 + 64) = v65;
              v66 = *(v35 + 120);
              v67 = 0.0;
              v68 = v29;
              v69 = 0.0;
              if (fabs(v66) != INFINITY)
              {
                v69 = *(v35 + 128);
                v70 = v69 + v66;
                if (v69 >= 0.0)
                {
                  v68 = *(v35 + 120);
                }

                else
                {
                  v69 = -v69;
                  v68 = v70;
                }

                v71 = v68 + v69;
                if (v68 <= v29)
                {
                  if (v71 < v29)
                  {
                    v69 = v29 - v68;
                  }
                }

                else
                {
                  v69 = v71 - v29;
                  v68 = v29;
                }
              }

              *(v35 + 120) = v68;
              *(v35 + 128) = v69;
              v72 = *(v35 + 136);
              v73 = v30;
              if (fabs(v72) != INFINITY)
              {
                v67 = *(v35 + 144);
                v74 = v67 + v72;
                if (v67 >= 0.0)
                {
                  v73 = *(v35 + 136);
                }

                else
                {
                  v67 = -v67;
                  v73 = v74;
                }

                v75 = v73 + v67;
                if (v73 <= v30)
                {
                  if (v75 < v30)
                  {
                    v67 = v30 - v73;
                  }
                }

                else
                {
                  v67 = v75 - v30;
                  v73 = v30;
                }
              }

              *(v35 + 136) = v73;
              *(v35 + 144) = v67;
            }

            if (v15 != 1 && *(v35 + 152) < v28)
            {
              *(v35 + 152) = v28;
            }

            if (v22 != 1 && *(v35 + 160) > v29)
            {
              *(v35 + 160) = v29;
            }

            if (v85 >= 2)
            {
              ++*(v35 + 68);
            }

            if (v88 || *v24 - v28 <= *(v14 + 40) * 0.1)
            {
              ++*(v35 + 72);
            }

            if (v87 || v29 - (*v24 + *(v24 + 16)) <= *(v14 + 88) * 0.1)
            {
              ++*(v35 + 76);
            }

            if ((v25 & 1) == 0)
            {
LABEL_115:
              v26 = (v35 + 80);
LABEL_116:
              v25 = 1;
              goto LABEL_117;
            }

            ++*(v35 + 80);
            if (!v26)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v35 = &v82->qualityEntries[v86];
            *(v24 + 48) = v35;
            v47 = *(v10 + 24);
            *v35 = *(v10 + 8);
            *(v35 + 16) = v47;
            *(v35 + 32) = 1;
            *(v35 + 36) = v15 == 1;
            *(v35 + 40) = v22 == 1;
            if (v18)
            {
              *(v35 + 88) = v27;
              *(v35 + 96) = 0;
              *(v35 + 104) = v28;
              v48 = 1;
              v49 = 1;
              *(v35 + 112) = 0;
            }

            else
            {
              v48 = 0;
              *(v35 + 88) = CGIntervalNull;
              *(v35 + 104) = CGIntervalNull;
              v49 = 0;
            }

            *(v35 + 44) = v49;
            *(v35 + 52) = v48;
            if (v23)
            {
              *(v35 + 120) = v29;
              *(v35 + 128) = 0;
              *(v35 + 136) = v30;
              v50 = 1;
              v51 = 1;
              *(v35 + 144) = 0;
            }

            else
            {
              v50 = 0;
              *(v35 + 120) = CGIntervalNull;
              *(v35 + 136) = CGIntervalNull;
              v51 = 0;
            }

            *(v35 + 56) = v51;
            *(v35 + 152) = v83;
            *(v35 + 160) = v32;
            *(v35 + 64) = v50;
            *(v35 + 68) = v84;
            if (v88)
            {
              v52 = 1;
            }

            else
            {
              v52 = *v24 - v28 <= *(v14 + 40) * 0.1;
            }

            *(v35 + 72) = v52;
            if (v87)
            {
              v54 = 1;
            }

            else
            {
              v54 = v29 - (*v24 + *(v24 + 16)) <= *(v14 + 88) * 0.1;
            }

            ++v86;
            *(v35 + 76) = v54;
            *(v35 + 80) = v25 & 1;
            *(v35 + 168) = 0;
            *(v35 + 170) = 1;
            if ((v25 & 1) == 0)
            {
              goto LABEL_115;
            }

            if (!v26)
            {
              goto LABEL_116;
            }
          }

          ++*v26;
          v25 = 1;
          v26 = 0;
          goto LABEL_117;
        }

LABEL_118:
        v5 = v77;
        v6 = *(v77 + 8);
        v9 = v79;
        v8 = v80;
        v7 = v81;
        if (v81 >= v6)
        {
          goto LABEL_119;
        }
      }

      v18 = 0;
      goto LABEL_17;
    }
  }
}

- (void)findSpacers
{
  [(CPSpacerFinder *)self initializeSegmentations];
  [(CPSpacerFinder *)self initializeJunctions];
  x = self->textBounds.origin.x;
  y = self->textBounds.origin.y;
  v5 = x == INFINITY || y == INFINITY;
  if (v5 || ((v6 = self->zoneBounds.origin.x, v6 != INFINITY) ? (v7 = self->zoneBounds.origin.y == INFINITY) : (v7 = 1), v7))
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    height = self->textBounds.size.height;
    v11 = fmax(x - v6, 0.0);
    v43[27] = 0;
    *&v43[25] = 0;
    if (x - v6 > 0.0)
    {
      x = v6;
    }

    segmentationCount = self->segmentationCount;
    *&v40 = x;
    *(&v40 + 1) = y;
    v41 = v11;
    p_spacerSequence = *&height;
    *v43 = segmentationCount;
    memset(&v43[4], 0, 20);
    v8 = 1;
    v43[24] = 1;
    *&v43[28] = 0;
    addSpacer(&self->spacerSequence, 0, &v40);
    v9 = 1;
  }

  if (self->segmentationCount)
  {
    v13 = 0;
    do
    {
      v14 = &self->segmentations[v13];
      if ([v14->var0 wordCount])
      {
        v15 = [v14->var0 firstWord];
        v16 = *(v15 + 32);
        v45 = *(v15 + 16);
        v46 = v16;
        v41 = 0.0;
        *&v43[8] = 0;
        *&v40 = v13;
        *(&v40 + 1) = v14;
        p_spacerSequence = &self->spacerSequence;
        *v43 = v9;
        *&v43[16] = v45;
        v44 = v16;
        v17 = [v14->var0 wordCount];
        var0 = v14->var0;
        if (v17 == 1)
        {
          v19 = [var0 firstWord];
          [v14->var0 charSequence];
          segmentTextLine(0, v19, 0, v20, &v40);
        }

        else
        {
          [var0 mapToWordPairsWithIndex:segmentTextLine passing:&v40];
        }

        count = self->spacerSequence.count;
        if (*v43 < count)
        {
          v22 = count - *v43;
          v23 = &self->spacerSequence.ordered[*v43];
          do
          {
            if ((*(*v23 + 56) & 1) == 0)
            {
              ++*(*v23 + 8);
            }

            ++v23;
            --v22;
          }

          while (v22);
        }
      }

      ++v13;
    }

    while (v13 < self->segmentationCount);
    [v14->var0 bounds];
    v26 = self->spacerSequence.count;
    if (v26)
    {
      v27 = v24 + v25;
      ordered = self->spacerSequence.ordered;
      do
      {
        v29 = *ordered;
        if (*ordered && (*(v29 + 56) & 1) == 0)
        {
          v30 = v27 - *(v29 + 1);
          if (*(v29 + 3) < v30)
          {
            *(v29 + 3) = v30;
          }

          *(v29 + 56) = 1;
        }

        ++ordered;
        --v26;
      }

      while (v26);
    }
  }

  if (v8)
  {
    v31 = self->spacerSequence.count;
    v32 = self->textBounds.origin.y;
    v33 = self->textBounds.size.height;
    v34 = self->textBounds.origin.x + self->textBounds.size.width;
    v35 = fmax(self->zoneBounds.origin.x + self->zoneBounds.size.width - v34, 0.0);
    v43[27] = 0;
    *&v43[25] = 0;
    v36 = self->segmentationCount;
    *&v40 = v34;
    *(&v40 + 1) = v32;
    v41 = v35;
    p_spacerSequence = *&v33;
    *v43 = v36;
    memset(&v43[4], 0, 20);
    v43[24] = 1;
    *&v43[28] = 0;
    addSpacer(&self->spacerSequence, v31, &v40);
    if (self->segmentationCount)
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = self->segmentations[v37].var0;
        [v39 setLeftSpacerIndex:0];
        [v39 setRightSpacerIndex:v31];
        ++v38;
        ++v37;
      }

      while (v38 < self->segmentationCount);
    }
  }
}

- (void)initializeJunctions
{
  segmentationCount = self->segmentationCount;
  self->spacerSequence.allocatedSize = segmentationCount;
  if (segmentationCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      segmentations = self->segmentations;
      if ([segmentations[v4].var0 isMonospaced])
      {
        p_var1 = &segmentations[v4].var1;
        v19 = 0;
        [segmentations[v4].var0 monospaceWidth];
        v19 = v7;
        var0 = segmentations[v4].var0;
        v9 = countJunctionsMonospaced;
        p_p_var1 = &p_var1;
      }

      else
      {
        p_p_var1 = &segmentations[v4].var1;
        var0 = segmentations[v4].var0;
        v9 = countJunctions;
      }

      [var0 mapToWordPairs:v9 passing:p_p_var1];
      v11 = &segmentations[v4];
      var1 = v11->var1;
      if (var1)
      {
        v13 = malloc_type_calloc(var1, 0x48uLL, 0x102004029F24FBBuLL);
        v14 = v11->var1;
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      v11->var2 = v13;
      segmentationCount = self->spacerSequence.allocatedSize + v14;
      self->spacerSequence.allocatedSize = segmentationCount;
      ++v5;
      ++v4;
    }

    while (v5 < self->segmentationCount);
  }

  if (self->textBounds.origin.x != INFINITY && self->textBounds.origin.y != INFINITY && self->zoneBounds.origin.x != INFINITY && self->zoneBounds.origin.y != INFINITY)
  {
    self->spacerSequence.allocatedSize = ++segmentationCount;
  }

  if (segmentationCount)
  {
    v17 = 2 * segmentationCount;
    self->spacerSequence.allocatedSize = v17;
    self->spacerSequence.stats = malloc_type_malloc(v17 << 6, 0x10A00403DB86E81uLL);
    self->spacerSequence.ordered = malloc_type_calloc(self->spacerSequence.allocatedSize, 8uLL, 0x2004093837F09uLL);
  }
}

- (void)initializeSegmentations
{
  v3 = [(CPZone *)self->contentZone textLinesInZone];
  v4 = [v3 count];
  self->segmentationCount = v4;
  if (v4)
  {
    segmentations = malloc_type_calloc(v4, 0x18uLL, 0x10A00406B6A53AFuLL);
    self->segmentations = segmentations;
    if (self->segmentationCount)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v3 objectAtIndex:v7];
        self->segmentations[v6].var0 = v8;
        [v8 bounds];
        v15.origin.x = v9;
        v15.origin.y = v10;
        v15.size.width = v11;
        v15.size.height = v12;
        self->textBounds = CGRectUnion(self->textBounds, v15);
        ++v7;
        segmentationCount = self->segmentationCount;
        ++v6;
      }

      while (v7 < segmentationCount);
      segmentations = self->segmentations;
    }

    else
    {
      segmentationCount = 0;
    }

    qsort(segmentations, segmentationCount, 0x18uLL, compareSegmentationsBottomAscendingLeftDescending);
  }
}

- (void)dealloc
{
  [(CPSpacerFinder *)self dispose];

  v3.receiver = self;
  v3.super_class = CPSpacerFinder;
  [(CPSpacerFinder *)&v3 dealloc];
}

- (void)finalize
{
  [(CPSpacerFinder *)self dispose];
  v3.receiver = self;
  v3.super_class = CPSpacerFinder;
  [(CPSpacerFinder *)&v3 finalize];
}

- (void)dispose
{
  if (self->contentZone)
  {
    free(self->qualityEntries);
    if (self->segmentationCount)
    {
      v3 = 0;
      do
      {
        segmentations = self->segmentations;
        var1 = segmentations[v3].var1;
        if (var1)
        {
          v6 = 56;
          do
          {
            v7 = *(self->segmentations[v3].var2 + v6);
            if (v7)
            {
              CFRelease(v7);
            }

            v6 += 72;
            --var1;
          }

          while (var1);
          segmentations = self->segmentations;
        }

        free(segmentations[v3++].var2);
      }

      while (v3 < self->segmentationCount);
    }

    free(self->segmentations);
    free(self->spacerSequence.ordered);
    free(self->spacerSequence.stats);
    self->contentZone = 0;
  }
}

- (CPSpacerFinder)initWithContentZone:(id)a3
{
  v15.receiver = self;
  v15.super_class = CPSpacerFinder;
  v4 = [(CPSpacerFinder *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->contentZone = a3;
    [a3 zoneBounds];
    v5->zoneBounds.origin.x = v6;
    v5->zoneBounds.origin.y = v7;
    v5->zoneBounds.size.width = v8;
    v5->zoneBounds.size.height = v9;
    if (([a3 hasBorders] & 1) == 0)
    {
      [objc_msgSend(a3 "charactersInZone")];
      v16.origin.x = v10;
      v16.origin.y = v11;
      v16.size.width = v12;
      v16.size.height = v13;
      v5->zoneBounds = CGRectUnion(v5->zoneBounds, v16);
    }

    v5->textBounds = CGRectNull;
  }

  return v5;
}

@end