@interface CPParagraphMaker
- (BOOL)firstWordOf:(id)of fits:(id)fits indent:(double)indent;
- (BOOL)fitsBelow:(id)below alignment:(unint64_t)alignment spacing:(double)spacing from:(int)from;
- (BOOL)isGraphicBetween:(id)between and:(id)and;
- (BOOL)line:(id)line isAlignedWith:(id)with;
- (BOOL)line:(id)line isBelow:(id)below;
- (BOOL)line:(id)line isDirectlyBelow:(id)below;
- (BOOL)spacingOf:(id)of and:(id)and and:(id)a5 is:(double *)is;
- (BOOL)styleOf:(id)of differsFromStyleOf:(id)styleOf;
- (id)newInitialParagraphIn:(id)in;
- (int)indexOfUniqueLineBelow:(id)below from:(int)from;
- (int)linesThatOverlapLineAt:(int)at between:(double)between and:(double)and from:(int)from;
- (unint64_t)alignmentOf:(id)of and:(id)and;
- (unint64_t)alignmentOf:(id)of and:(id)and and:(id)a5;
- (void)addCompoundedShapesOn:(id)on to:(id)to;
- (void)addIntersectingParagraph:(id)paragraph;
- (void)addLinesTo:(id)to;
- (void)dealloc;
- (void)makeParagraphsIn:(id)in;
@end

@implementation CPParagraphMaker

- (void)makeParagraphsIn:(id)in
{
  textLinesInZone = [in textLinesInZone];
  v6 = [textLinesInZone count];
  if (v6)
  {
    self->parent = in;
    self->page = [in page];
    self->avail = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:textLinesInZone];

    self->paragraphs = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v6 == 1)
    {
      v10 = objc_alloc_init(CPParagraph);
      [(CPParagraph *)v10 setAlignment:1];
      [(CPChunk *)v10 add:[(NSMutableArray *)self->avail objectAtIndex:0]];
      [(NSMutableArray *)self->paragraphs addObject:v10];
    }

    else
    {
      self->compoundedShapesOnPage = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      -[CPParagraphMaker addCompoundedShapesOn:to:](self, "addCompoundedShapesOn:to:", [in page], self->compoundedShapesOnPage);
      hasRotatedCharacters = [in hasRotatedCharacters];
      v8 = &selRef_baseLineDescendingApprox_;
      if (!hasRotatedCharacters)
      {
        v8 = &selRef_baseLineDescending_;
      }

      [(NSMutableArray *)self->avail sortUsingSelector:*v8];
      while ([(NSMutableArray *)self->avail count])
      {
        self->spacingSet = 0;
        v9 = [(CPParagraphMaker *)self newInitialParagraphIn:in];
        if ([in hasRotatedCharacters])
        {
          [(CPParagraphMaker *)self addIntersectingParagraph:v9];
        }

        else
        {
          [(NSMutableArray *)self->paragraphs addObject:v9];
        }

        if ([v9 count] == 3)
        {
          [(CPParagraphMaker *)self addLinesTo:v9];
        }
      }

      self->avail = 0;
    }
  }
}

- (void)addIntersectingParagraph:(id)paragraph
{
  v37 = *MEMORY[0x1E69E9840];
  [objc_msgSend(paragraph "page")];
  v6 = v5;
  v8 = v7;
  [paragraph bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  paragraphs = self->paragraphs;
  v18 = [(NSMutableArray *)paragraphs countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v38.origin.x = v10;
    v38.origin.y = v12;
    v38.size.width = v14;
    v38.size.height = v16;
    v39 = CGRectInset(v38, v6 * -0.02, v8 * -0.01);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v24 = *v33;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(paragraphs);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        [v26 bounds];
        v41.origin.x = v27;
        v41.origin.y = v28;
        v41.size.width = v29;
        v41.size.height = v30;
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        if (CGRectIntersectsRect(v40, v41))
        {
          [v26 addChildrenOf:paragraph];
          [v26 sortUsingSelector:sel_baseLineDescendingApprox_];
          v31 = v26;
          [(NSMutableArray *)self->paragraphs removeObject:v26];
          [(CPParagraphMaker *)self addIntersectingParagraph:v26];

          return;
        }
      }

      v19 = [(NSMutableArray *)paragraphs countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableArray *)self->paragraphs addObject:paragraph];
}

- (void)addCompoundedShapesOn:(id)on to:(id)to
{
  v7 = [on count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [on childAtIndex:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CPParagraphMaker *)self addCompoundedShapesOn:v10 to:to];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [to addObject:v10];
        }
      }

      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }
}

- (void)addLinesTo:(id)to
{
  alignment = [to alignment];
  v6 = [to childAtIndex:1];
  v7 = [to childAtIndex:2];
  [v6 bounds];
  v12 = v8;
  if (v10 < 0.0 || v11 < 0.0)
  {
    *&v12 = CGRectStandardize(*&v8);
  }

  [to bounds];
  v17 = v13;
  if (v15 < 0.0 || v16 < 0.0)
  {
    *&v17 = CGRectStandardize(*&v13);
  }

  [v6 baseline];
  v19 = v18;
  [v7 baseline];
  v21 = v19 - v20;
  self->spacingSet = 1;
  self->currentSpacing = v21;
  v22 = [(NSMutableArray *)self->avail count];
  [v7 baseline];
  v24 = v23;
  if (v22 < 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    while (1)
    {
      [-[NSMutableArray objectAtIndex:](self->avail objectAtIndex:{v25), "baseline"}];
      if (v26 < v24)
      {
        break;
      }

      if ((v22 & 0x7FFFFFFF) == ++v25)
      {
        return;
      }
    }
  }

  if (v25 != v22)
  {
    v27 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:v7 from:v25];
    if ((v27 & 0x80000000) == 0)
    {
      v28 = v27;
      if ([(NSMutableArray *)self->avail count])
      {
        v74 = 0;
        v29 = v12 - v17;
        while (1)
        {
          v30 = [(NSMutableArray *)self->avail objectAtIndex:v28];
          if ([(CPParagraphMaker *)self isGraphicBetween:v7 and:v30])
          {
            goto LABEL_45;
          }

          [v30 baseline];
          v32 = v24 - v31;
          if (vabdd_f64(v32, v21) > 2.0)
          {
            if (v32 < v21)
            {
              [to bounds];
              v43 = v42;
              rect = v44;
              v46 = v45;
              v48 = v47;
              [v30 bounds];
              v50 = v49;
              v52 = v51;
              v54 = v53;
              v56 = v55;
              v57 = [to childAtIndex:{objc_msgSend(to, "count") - 2}];
              lastChild = [to lastChild];
              [lastChild rotationAngle];
              v60 = v59;
              [v57 rotationAngle];
              if (vabdd_f64(v60, v61) <= 0.00872664626)
              {
                if (v54 < 0.0 || v56 < 0.0)
                {
                  v76.origin.x = v50;
                  v76.origin.y = v52;
                  v76.size.width = v54;
                  v76.size.height = v56;
                  *&v50 = CGRectStandardize(v76);
                }

                if (v46 < 0.0 || v48 < 0.0)
                {
                  v77.origin.x = v43;
                  v77.origin.y = rect;
                  v77.size.width = v46;
                  v77.size.height = v48;
                  *&v43 = CGRectStandardize(v77);
                }

                v62 = vabdd_f64(v43, v50);
                [to bounds];
                if (v65 < 0.0 || v66 < 0.0)
                {
                  *(&v65 - 2) = CGRectStandardize(*&v63);
                }

                if (v62 < v65 * 0.25 || [(CPParagraphMaker *)self styleOf:lastChild differsFromStyleOf:v30])
                {
                  v67 = [to count];
                  toCopy = to;
                  [(NSMutableArray *)self->paragraphs removeLastObject];
                  v69 = v67 - 1;
                  if (v67 != 1)
                  {
                    do
                    {
                      v70 = [to childAtIndex:0];
                      v71 = objc_alloc_init(CPParagraph);
                      [(CPChunk *)v71 add:v70];
                      [(NSMutableArray *)self->paragraphs addObject:v71];

                      --v69;
                    }

                    while (v69);
                  }

                  v72 = [to childAtIndex:0];

                  [(NSMutableArray *)self->avail insertObject:v72 atIndex:0];
                }
              }
            }

            goto LABEL_45;
          }

          if ([(CPParagraphMaker *)self line:v30 isAlignedWith:to])
          {
            goto LABEL_25;
          }

          v33 = [(CPParagraphMaker *)self paragraph:to splits:v30];
          if (v33 > 0)
          {
            break;
          }

          if (([to alignment] & 8) == 0)
          {
            goto LABEL_45;
          }

          if ((-[CPParagraphMaker alignmentOf:and:](self, "alignmentOf:and:", [to childAtIndex:1], v30) & 1) == 0)
          {
            goto LABEL_45;
          }

          [to add:v30];
          [(NSMutableArray *)self->avail removeObjectAtIndex:v28];
          v38 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:v7 from:v28];
          if ((v38 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }

          v28 = v38;
          [v30 baseline];
          v40 = v39;
          v7 = [(NSMutableArray *)self->avail objectAtIndex:v28];
          [v7 baseline];
          if (vabdd_f64(v40 - v41, v21) > 2.0 || (-[CPParagraphMaker alignmentOf:and:](self, "alignmentOf:and:", [to childAtIndex:1], v7) & 1) == 0)
          {
            goto LABEL_45;
          }

          [to setAlignment:1];
LABEL_26:
          if ([(CPParagraphMaker *)self fitsBelow:v7 alignment:alignment spacing:v28 from:v21])
          {
            goto LABEL_45;
          }

          [to add:v7];
          [(NSMutableArray *)self->avail removeObjectAtIndex:v28];
          [v7 baseline];
          v24 = v35;
          if (v74)
          {
            [(NSMutableArray *)self->avail addObject:?];
            [(NSMutableArray *)self->avail sortUsingSelector:sel_baseLineDescending_];
          }

          v28 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:v7 from:v28];
          alignment2 = [to alignment];
          if ((v28 & 0x80000000) != 0 || (alignment2 & 0x10) != 0)
          {
            if ((v28 & 0x80000000) != 0)
            {
              goto LABEL_45;
            }
          }

          else if ([to alignment])
          {
            v37 = [(NSMutableArray *)self->avail objectAtIndex:v28];
            if ([v37 wordCount])
            {
              if ([(CPParagraphMaker *)self firstWordOf:v37 fits:v7 indent:v29])
              {
                goto LABEL_45;
              }
            }
          }

          if (![(NSMutableArray *)self->avail count])
          {
            goto LABEL_45;
          }
        }

        v34 = v33;
        if (v74)
        {
        }

        v74 = objc_alloc_init(CPTextLine);
        do
        {
          -[CPChunk add:](v74, "add:", [v30 childAtIndex:0]);
          --v34;
        }

        while (v34);
LABEL_25:
        v7 = v30;
        goto LABEL_26;
      }
    }

    v74 = 0;
LABEL_45:
  }
}

- (id)newInitialParagraphIn:(id)in
{
  v5 = objc_alloc_init(CPParagraph);
  v6 = [(NSMutableArray *)self->avail objectAtIndex:0];
  v7 = v6;
  [(NSMutableArray *)self->avail removeObjectAtIndex:0];
  [(CPParagraph *)v5 setAlignment:1];
  [(CPChunk *)v5 add:v6];

  if ([in hasRotatedCharacters] && -[NSMutableArray count](self->avail, "count"))
  {
    do
    {
      v8 = [(NSMutableArray *)self->avail objectAtIndex:0];
      [(CPChunk *)self->page bounds];
      v10 = v9;
      [(CPChunk *)self->page bounds];
      v12 = v11;
      [v8 normalizedBounds];
      v17 = v13;
      if (v15 < 0.0 || v16 < 0.0)
      {
        *&v17 = CGRectStandardize(*&v13);
      }

      [v6 normalizedBounds];
      x = v18;
      width = v20;
      if (v20 < 0.0 || v21 < 0.0)
      {
        v128 = CGRectStandardize(*&v18);
        x = v128.origin.x;
        width = v128.size.width;
      }

      [v6 baseline];
      v25 = v24;
      [v8 baseline];
      if (vabdd_f64(v25, v26) >= v12 * 0.01)
      {
        break;
      }

      v27 = v17 - (x + width);
      if (v27 <= 0.0 || v27 >= v10 * 0.02)
      {
        break;
      }

      [(CPChunk *)v5 add:v8];
      [(NSMutableArray *)self->avail removeObjectAtIndex:0];
      v6 = v8;
    }

    while ([(NSMutableArray *)self->avail count]);
  }

  v29 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:v6 from:0];
  if ((v29 & 0x80000000) == 0)
  {
    v30 = v29;
    [v6 bounds];
    v35 = v31;
    if (v33 < 0.0 || v34 < 0.0)
    {
      *&v35 = CGRectStandardize(*&v31);
    }

    [v6 bounds];
    if (v38 < 0.0 || v39 < 0.0)
    {
      *&v36 = CGRectStandardize(*&v36);
    }

    v40 = [(CPParagraphMaker *)self linesThatOverlapLineAt:v30 between:0 and:v35 from:v36 + v38];
    v41 = v40 > 0 ? 0xFFFFFFFFLL : v30;
    if (v40 <= 0)
    {
      v42 = v30;
      v43 = [(NSMutableArray *)self->avail objectAtIndex:v30];
      [v6 baseline];
      v45 = v44;
      [v43 baseline];
      v127 = v45 - v46;
      [v6 bounds];
      if (v127 < v47 * 4.0)
      {
        v126 = 0;
        if (![v6 styleIsUniform:&v126 styleFlags:63487] || !objc_msgSend(objc_msgSend(v43, "charSequence"), "length"))
        {
          goto LABEL_35;
        }

        charSequence = [v43 charSequence];
        v49 = [charSequence length];
        v50 = 0;
        if (v49)
        {
          do
          {
            v51 = [charSequence charAtIndex:v50];
            if (CPPDFStyleEqual(v126, *(v51 + 160), 63487))
            {
              break;
            }

            v50 = (v50 + 1);
          }

          while (v49 != v50);
        }

        if (v50 != v49)
        {
LABEL_35:
          if (![(CPParagraphMaker *)self isGraphicBetween:v6 and:v43])
          {
            v52 = [(CPParagraphMaker *)self alignmentOf:v6 and:v43];
            if (![(CPParagraphMaker *)self fitsBelow:v43 alignment:v52 spacing:v41 from:v127])
            {
              v53 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:v43 from:(v41 + 1)];
              if ((v53 & 0x80000000) != 0)
              {
                v74 = 0;
                goto LABEL_54;
              }

              [v43 bounds];
              v58 = v54;
              if (v56 < 0.0 || v57 < 0.0)
              {
                *&v58 = CGRectStandardize(*&v54);
              }

              [v6 bounds];
              v63 = v59;
              if (v61 < 0.0 || v62 < 0.0)
              {
                *&v63 = CGRectStandardize(*&v59);
              }

              [v6 bounds];
              if (v66 < 0.0 || v67 < 0.0)
              {
                *&v64 = CGRectStandardize(*&v64);
              }

              v68 = fmin(v58, v63);
              v69 = v64 + v66;
              [v43 bounds];
              if (v72 < 0.0 || v73 < 0.0)
              {
                *&v70 = CGRectStandardize(*&v70);
              }

              if ([(CPParagraphMaker *)self linesThatOverlapLineAt:v53 between:(v41 + 1) and:v68 from:fmax(v69, v70 + v72)]> 0)
              {
                v74 = 0;
                LODWORD(v53) = -1;
LABEL_54:
                v75 = 0;
                v76 = v52 != 0;
LABEL_55:
                [(CPParagraph *)v5 setAlignment:v52];
                v77 = v127;
                if (v127 > 0.0)
                {
                  [(CPParagraph *)v5 setAlignment:v52, v127];
                  [(CPChunk *)v5 add:v43];
                  if ((v76 & v75) == 1)
                  {
                    [(CPChunk *)v5 add:v74];
                    [(NSMutableArray *)self->avail removeObjectAtIndex:v53];
                  }

                  [(NSMutableArray *)self->avail removeObjectAtIndex:v42];
                }

                v78 = [(CPObject *)v5 count];
                v79 = v78;
                if (v78 < 2 || (v52 & 4) != 0 && v78 == 2)
                {
                  [(CPParagraph *)v5 setAlignment:1];
                }

                if ([v6 hasDropCap])
                {
                  [(CPParagraph *)v5 setHasDropCap:1];
                }

                if (v79 == 3)
                {
                  [v6 bounds];
                  v84 = v82;
                  if (v82 < 0.0 || v83 < 0.0)
                  {
                    *&v80 = CGRectStandardize(*&v80);
                    v84 = v85;
                  }

                  [v43 bounds];
                  if (v88 < 0.0 || v89 < 0.0)
                  {
                    *(&v87 - 1) = CGRectStandardize(*&v86);
                  }

                  v90 = v84 - v88;
                  v91 = [(CPParagraphMaker *)self firstWordOf:v43 fits:v6 indent:v90, v87];
                  v92 = [(CPParagraphMaker *)self firstWordOf:v74 fits:v43 indent:v90];
                  if (v91 || v92)
                  {
                    [(CPParagraph *)v5 setAlignment:[(CPParagraph *)v5 alignment]| 0x10];
                  }
                }

                return v5;
              }

              v74 = [(NSMutableArray *)self->avail objectAtIndex:v53];
              if ([(CPParagraphMaker *)self isGraphicBetween:v43 and:v74])
              {
                goto LABEL_54;
              }

              if (![(CPParagraphMaker *)self spacingOf:v6 and:v43 and:v74 is:&v127])
              {
                if (![(CPParagraphMaker *)self styleOf:v6 differsFromStyleOf:v74])
                {
                  [v6 baseline];
                  v116 = v115;
                  [v43 baseline];
                  v118 = v116 - v117;
                  [v43 baseline];
                  v120 = v119;
                  [v74 baseline];
                  if (v118 > v120 - v121 + 1.0)
                  {
                    v127 = 0.0;
                  }
                }

                goto LABEL_54;
              }

              [v6 bounds];
              v98 = v94;
              if (v96 < 0.0 || v97 < 0.0)
              {
                *&v98 = CGRectStandardize(*&v94);
              }

              [v43 bounds];
              v103 = v99;
              if (v101 < 0.0 || v102 < 0.0)
              {
                *&v103 = CGRectStandardize(*&v99);
              }

              [v74 bounds];
              if (v106 < 0.0 || v107 < 0.0)
              {
                *&v104 = CGRectStandardize(*&v104);
              }

              if (vabdd_f64(v98, v103) >= 0.9 || (v104 = v98 - v104, v104 <= 1.9))
              {
                v104 = [(CPParagraphMaker *)self alignmentOf:v6 and:v43 and:v74, v104];
                v75 = v104 != 0;
                if (v104)
                {
                  v52 = v104;
                }

                v76 = v52 != 0;
                if (v104 && v52)
                {
                  v122 = v104;
                  v109 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:v74 from:(v53 + 1)];
                  if ((v109 & 0x80000000) != 0 || (v110 = -[NSMutableArray objectAtIndex:](self->avail, "objectAtIndex:", v109), v111 = -[CPParagraphMaker alignmentOf:and:](self, "alignmentOf:and:", v74, v110), [v74 baseline], v113 = v112, objc_msgSend(v110, "baseline"), v111 != v122) || v113 - v114 + 1.0 >= v127)
                  {
                    v76 = 1;
                    v75 = 1;
                  }

                  else
                  {
                    v124 = 0;
                    v125 = 0;
                    v123 = 0;
                    if ([v43 styleIsUniform:&v125 styleFlags:0xFFFFLL] && objc_msgSend(v74, "styleIsUniform:styleFlags:", &v124, 0xFFFFLL))
                    {
                      if ([v110 styleIsUniform:&v123 styleFlags:0xFFFFLL] && CPPDFStyleEqual(v125, v124, 0xFFFF))
                      {
                        v75 = CPPDFStyleEqual(v124, v123, 0xFFFF) ^ 1;
                      }

                      else
                      {
                        v75 = 1;
                      }
                    }

                    else
                    {
                      v75 = 0;
                    }

                    v76 = 1;
                  }
                }

                goto LABEL_55;
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)fitsBelow:(id)below alignment:(unint64_t)alignment spacing:(double)spacing from:(int)from
{
  v10 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:below from:(from + 1)];
  if ((v10 & 0x80000000) != 0)
  {
    return 0;
  }

  v11 = v10;
  spacingCopy = spacing;
  v12 = [(NSMutableArray *)self->avail objectAtIndex:v10];
  [below bounds];
  x = v13;
  rect = v15;
  width = v16;
  v19 = v18;
  [v12 bounds];
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = fmin(v22, v23) < 0.0;
  v29 = v28;
  if (v28)
  {
    *&v20 = CGRectStandardize(*&v20);
  }

  v30 = v20 + v22;
  v28 = fmin(width, v19) < 0.0;
  v31 = v28;
  v32 = x;
  if (v28)
  {
    v52.origin.x = x;
    v52.origin.y = rect;
    v52.size.width = width;
    v52.size.height = v19;
    *&v32 = CGRectStandardize(v52);
  }

  if (v30 < v32)
  {
    return 0;
  }

  if (v29)
  {
    v53.origin.x = v24;
    v53.origin.y = v25;
    v53.size.width = v26;
    v53.size.height = v27;
    *&v24 = CGRectStandardize(v53);
  }

  if (v31)
  {
    v54.origin.x = x;
    v54.origin.y = rect;
    v54.size.width = width;
    v54.size.height = v19;
    v55 = CGRectStandardize(v54);
    x = v55.origin.x;
    width = v55.size.width;
  }

  if (v24 > x + width)
  {
    return 0;
  }

  if (v11 <= from + 2)
  {
    v33 = (v11 + 1);
  }

  else
  {
    v33 = (from + 2);
  }

  v34 = [(CPParagraphMaker *)self indexOfUniqueLineBelow:v12 from:v33];
  if ((v34 & 0x80000000) != 0)
  {
    [below baseline];
    v47 = v46;
    [v12 baseline];
    return v47 - v48 < spacingCopy * 0.9;
  }

  else
  {
    v35 = [(NSMutableArray *)self->avail objectAtIndex:v34];
    [below baseline];
    v37 = v36;
    [v12 baseline];
    v39 = v37 - v38;
    [v12 baseline];
    v41 = v40;
    [v35 baseline];
    v43 = v42;
    [below bounds];
    if (v39 > v44 * 3.0 || vabdd_f64(v39, spacingCopy) < 2.0)
    {
      return 0;
    }

    v49 = vabdd_f64(v39, v41 - v43) < 2.0;
    return v39 + 2.0 < spacingCopy && v49;
  }
}

- (BOOL)line:(id)line isAlignedWith:(id)with
{
  alignment = [with alignment];
  [line anchor];
  v8 = v7;
  [line center];
  v10 = v9;
  [line bounds];
  x = v11;
  width = v13;
  if (v13 < 0.0 || v14 < 0.0)
  {
    v39 = CGRectStandardize(*&v11);
    x = v39.origin.x;
    width = v39.size.width;
    if ((alignment & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((alignment & 1) == 0)
  {
LABEL_4:
    v17 = 0;
    goto LABEL_10;
  }

  if ([with hasDropCap])
  {
    v18 = [with childAtIndex:0];
    v19 = [with childAtIndex:1];
    [v18 anchor];
    v21 = vabdd_f64(v8, v20);
    [v19 anchor];
    v23 = fmin(v21, vabdd_f64(v8, v22));
  }

  else
  {
    [objc_msgSend(with childAtIndex:{1), "anchor"}];
    v23 = vabdd_f64(v8, v24);
  }

  v17 = v23 <= 1.0;
LABEL_10:
  v25 = x + width;
  if ((alignment & 2) == 0)
  {
    v26 = 0;
    if ((alignment & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v28 = 0;
    if ((alignment & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  [objc_msgSend(with childAtIndex:{1), "right"}];
  v26 = vabdd_f64(v25, v29) <= 1.0;
  if ((alignment & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  [objc_msgSend(with childAtIndex:{1), "center"}];
  v28 = vabdd_f64(v10, v27) <= 1.0;
  if ((alignment & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v30 = [with childAtIndex:1];
  [v30 anchor];
  v32 = v31;
  [v30 right];
  if (v8 >= v32 + -5.0 && v25 <= v33 + 10.0)
  {
    if (vabdd_f64(v32, v8) > 1.0 || vabdd_f64(v33, v25) > 3.0)
    {
      [objc_msgSend(with childAtIndex:{1), "right"}];
      v35 = 0;
      v26 |= vabdd_f64(v25, v38) < 1.0;
    }

    else
    {
      v35 = 1;
    }

    goto LABEL_21;
  }

LABEL_20:
  v35 = 0;
LABEL_21:
  v36 = v17 | v26 | v28 | v35;
  if (alignment & !v17)
  {
    v36 = v28;
  }

  return v36 & 1;
}

- (unint64_t)alignmentOf:(id)of and:(id)and and:(id)a5
{
  [of anchor];
  v73 = v8;
  [and anchor];
  v81 = v9;
  [a5 anchor];
  v80 = v10;
  [of bounds];
  if (v13 < 0.0 || v14 < 0.0)
  {
    *&v11 = CGRectStandardize(*&v11);
  }

  v78 = v13;
  v79 = v11;
  [and bounds];
  if (v17 < 0.0 || v18 < 0.0)
  {
    *&v15 = CGRectStandardize(*&v15);
  }

  v76 = v17;
  v77 = v15;
  [a5 bounds];
  width = v21;
  if (v21 < 0.0 || v22 < 0.0)
  {
    v82 = CGRectStandardize(*&v19);
    x = v82.origin.x;
    width = v82.size.width;
  }

  else
  {
    x = v19;
  }

  [and bounds];
  v28 = v26;
  if (v26 < 0.0 || v27 < 0.0)
  {
    *&v24 = CGRectStandardize(*&v24);
    v28 = v29;
  }

  [of bounds];
  if (v32 < 0.0 || v33 < 0.0)
  {
    v30 = CGRectStandardize(*&v30);
  }

  v74 = *&v30;
  [of bounds];
  v38 = v36;
  if (v36 < 0.0 || v37 < 0.0)
  {
    *&v34 = CGRectStandardize(*&v34);
    v38 = v39;
  }

  [and bounds];
  v44 = v40;
  if (v42 < 0.0 || v43 < 0.0)
  {
    *&v44 = CGRectStandardize(*&v40);
  }

  [and bounds];
  v49 = v47;
  if (v47 < 0.0 || v48 < 0.0)
  {
    *&v45 = CGRectStandardize(*&v45);
    v49 = v50;
  }

  [a5 bounds];
  v55 = v51;
  if (v53 < 0.0 || v54 < 0.0)
  {
    *&v55 = CGRectStandardize(*&v51);
  }

  v56 = v49 * 0.5;
  v57 = v77 + v76;
  [a5 bounds];
  if (v60 < 0.0 || v61 < 0.0)
  {
    *(&v60 - 2) = CGRectStandardize(*&v58);
  }

  v62 = v44 + v56;
  v63 = v55 + v60 * 0.5;
  v64 = vabdd_f64(v79 + v78, v57);
  v65 = v28 * 0.25;
  v66 = vabdd_f64(v81, v80) < 1.0 && vabdd_f64(v73, v81) < v65;
  v67 = vabdd_f64(v57, x + width);
  if (v64 < v65 && v67 < 2.0)
  {
    v66 |= 2uLL;
  }

  v69 = vabdd_f64(v74 + v38 * 0.5, v62);
  v70 = v66 | 4;
  if (vabdd_f64(v62, v63) >= 2.0)
  {
    v70 = v66;
  }

  if (v69 >= 2.0)
  {
    v70 = v66;
  }

  if (a5)
  {
    v66 = v70;
  }

  if ((~v66 & 3) != 0)
  {
    v71 = v66;
  }

  else
  {
    v71 = v66 | 8;
  }

  return v71 | [of hasDropCap];
}

- (BOOL)styleOf:(id)of differsFromStyleOf:(id)styleOf
{
  v6 = 0;
  v7 = 0;
  if ([of styleIsUniform:&v7 styleFlags:63487] && objc_msgSend(styleOf, "styleIsUniform:styleFlags:", &v6, 63487))
  {
    return CPPDFStyleEqual(v7, v6, 63487) ^ 1;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)alignmentOf:(id)of and:(id)and
{
  [of anchor];
  v48 = v6;
  [and anchor];
  v8 = v7;
  [of bounds];
  x = v9;
  width = v11;
  if (v11 < 0.0 || v12 < 0.0)
  {
    v49 = CGRectStandardize(*&v9);
    x = v49.origin.x;
    width = v49.size.width;
  }

  [and bounds];
  v19 = v15;
  v20 = v17;
  if (v17 < 0.0 || v18 < 0.0)
  {
    v50 = CGRectStandardize(*&v15);
    v19 = v50.origin.x;
    v20 = v50.size.width;
  }

  [of bounds];
  v25 = v21;
  if (v23 < 0.0 || v24 < 0.0)
  {
    *&v25 = CGRectStandardize(*&v21);
  }

  [of bounds];
  v30 = v28;
  if (v28 < 0.0 || v29 < 0.0)
  {
    *&v26 = CGRectStandardize(*&v26);
    v30 = v31;
  }

  [and bounds];
  v36 = v32;
  if (v34 < 0.0 || v35 < 0.0)
  {
    *&v36 = CGRectStandardize(*&v32);
  }

  [and bounds];
  if (v39 < 0.0 || v40 < 0.0)
  {
    *(&v39 - 2) = CGRectStandardize(*&v37);
  }

  v41 = vabdd_f64(x + width, v19 + v20);
  v42 = vabdd_f64(v48, v8);
  v43 = v42 < 1.0;
  v44 = 2;
  if (v42 >= 1.0)
  {
    v45 = 2;
  }

  else
  {
    v45 = 3;
  }

  if (v41 >= 2.0)
  {
    v45 = v42 < 1.0;
  }

  v46 = v45 | 8;
  if (v42 < 1.0)
  {
    v44 = v46;
  }

  if (v41 < 2.0)
  {
    v43 = v44;
  }

  if (vabdd_f64(v25 + v30 * 0.5, v36 + v39 * 0.5) >= 2.0)
  {
    return v43;
  }

  else
  {
    return v43 | 4;
  }
}

- (BOOL)spacingOf:(id)of and:(id)and and:(id)a5 is:(double *)is
{
  [of baseline];
  v10 = v9;
  [and baseline];
  v12 = v10 - v11;
  [and baseline];
  v14 = v13;
  [a5 baseline];
  v16 = vabdd_f64(v12, v14 - v15);
  if (v16 < 2.0)
  {
    *is = v12;
  }

  return v16 < 2.0;
}

- (int)indexOfUniqueLineBelow:(id)below from:(int)from
{
  LODWORD(v4) = from;
  v7 = [(NSMutableArray *)self->avail count];
  v8 = v7 - v4;
  if (v7 <= v4)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v4 = v4;
    while (1)
    {
      v9 = [(NSMutableArray *)self->avail objectAtIndex:v4];
      v10 = [(CPParagraphMaker *)self line:v9 isDirectlyBelow:below];
      if (v10 || [(CPParagraphMaker *)self line:v9 isBelow:below])
      {
        break;
      }

      ++v4;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 == v7)
  {
LABEL_9:
    LODWORD(v4) = -1;
    return v4;
  }

  if (v4 != v7 - 1)
  {
    [v9 baseline];
    v12 = v4 + 1;
    if (v4 + 1 < v7)
    {
      v13 = v11;
      v14 = v12;
      do
      {
        v15 = [(NSMutableArray *)self->avail objectAtIndex:v14];
        [v15 baseline];
        if (vabdd_f64(v13, v16) >= 0.1)
        {
          [v15 bounds];
          if (v19 < 0.0 || v20 < 0.0)
          {
            *(&v18 - 1) = CGRectStandardize(*&v17);
          }

          if (v18 + v20 < v13)
          {
            return v4;
          }

          if (v10)
          {
            goto LABEL_25;
          }

          if (![(CPParagraphMaker *)self line:v15 isDirectlyBelow:below, v18 + v20])
          {
            v10 = 0;
            goto LABEL_29;
          }
        }

        else
        {
          if (![(CPParagraphMaker *)self line:v15 isDirectlyBelow:below])
          {
            if (!v10)
            {
              v10 = 0;
              if ([(CPParagraphMaker *)self line:v15 isBelow:below])
              {
                LODWORD(v4) = -1;
              }

              goto LABEL_29;
            }

LABEL_25:
            v10 = 1;
            goto LABEL_29;
          }

          if (v10)
          {
            goto LABEL_9;
          }
        }

        [v15 baseline];
        v13 = v21;
        v10 = 1;
        LODWORD(v4) = v12;
LABEL_29:
        ++v14;
        ++v12;
      }

      while (v7 != v12);
    }
  }

  return v4;
}

- (int)linesThatOverlapLineAt:(int)at between:(double)between and:(double)and from:(int)from
{
  LODWORD(i) = from;
  v11 = [(NSMutableArray *)self->avail count];
  v12 = [(NSMutableArray *)self->avail objectAtIndex:at];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 bounds];
  v25 = v22;
  if (v23 < 0.0 || v24 < 0.0)
  {
    *&v21 = CGRectStandardize(*&v21);
    v25 = v26;
  }

  [v12 bounds];
  if (v29 < 0.0 || v30 < 0.0)
  {
    *&v27 = CGRectStandardize(*&v27);
  }

  v31 = v11 - i;
  if (v11 > i)
  {
    v32 = 0;
    v33 = v28 + v30;
    for (i = i; ; ++i)
    {
      if (at != i)
      {
        v34 = [(NSMutableArray *)self->avail objectAtIndex:i, v27];
        [v34 bounds];
        if (v37 < 0.0 || v38 < 0.0)
        {
          *(&v36 - 1) = CGRectStandardize(*&v35);
        }

        if (v36 + v38 <= v25)
        {
          return v32;
        }

        [v34 bounds];
        v64.origin.x = v39;
        v64.origin.y = v40;
        v64.size.width = v41;
        v64.size.height = v42;
        v63.origin.x = v14;
        v63.origin.y = v16;
        v63.size.width = v18;
        v63.size.height = v20;
        if (!CGRectIntersectsRect(v63, v64))
        {
          [v34 bounds];
          if (v45 < 0.0 || v46 < 0.0)
          {
            *&v43 = CGRectStandardize(*&v43);
          }

          if (v43 > between)
          {
            [v34 bounds];
            if (v49 < 0.0 || v50 < 0.0)
            {
              *&v47 = CGRectStandardize(*&v47);
            }

            if (v47 < and)
            {
              goto LABEL_31;
            }
          }

          [v34 bounds];
          if (v53 < 0.0 || v54 < 0.0)
          {
            *&v51 = CGRectStandardize(*&v51);
          }

          v27 = v51 + v53;
          if (v27 > between)
          {
            [v34 bounds];
            if (v57 < 0.0 || v58 < 0.0)
            {
              *&v55 = CGRectStandardize(*&v55);
            }

            v27 = v55 + v57;
            if (v27 < and)
            {
LABEL_31:
              [v34 bounds];
              if (v60 < 0.0 || v61 < 0.0)
              {
                *&v27 = CGRectStandardize(*&v27);
              }

              if (v59 < v33)
              {
                ++v32;
              }
            }
          }
        }
      }

      if (!--v31)
      {
        return v32;
      }
    }
  }

  return 0;
}

- (BOOL)line:(id)line isBelow:(id)below
{
  leftSpacerIndex = [line leftSpacerIndex];
  if (leftSpacerIndex != [below leftSpacerIndex])
  {
    return 0;
  }

  rightSpacerIndex = [line rightSpacerIndex];
  if (rightSpacerIndex != [below rightSpacerIndex])
  {
    return 0;
  }

  [line bounds];
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (v10 < 0.0 || v11 < 0.0)
  {
    *&v8 = CGRectStandardize(*&v8);
  }

  v16 = v9 + v11;
  [below baseline];
  if (v16 >= v17)
  {
    return 0;
  }

  [below bounds];
  v21 = v20;
  v23 = v22;
  v24 = v15 * 6.0;
  v25 = v22 * 6.0;
  v26 = v19 < v25 || v14 < v24;
  if (!v26)
  {
    return 0;
  }

  v27 = v19 < v25;
  if (v19 >= v25)
  {
    width = v19;
  }

  else
  {
    width = v25;
  }

  v29 = v18 - (v25 - v19) * 0.5;
  if (v27)
  {
    x = v29;
  }

  else
  {
    x = v18;
  }

  if (v14 >= v24)
  {
    v31 = v14;
  }

  else
  {
    v31 = v15 * 6.0;
  }

  if (v14 < v24)
  {
    v12 = v12 - (v24 - v14) * 0.5;
  }

  v26 = fmin(v31, v15) < 0.0;
  v32 = v26;
  v33 = v12;
  v34 = v31;
  if (v26)
  {
    v46.origin.x = v12;
    v46.origin.y = v13;
    v46.size.width = v31;
    v46.size.height = v15;
    v35 = v21;
    *&v33 = CGRectStandardize(v46);
    v21 = v35;
  }

  v36 = v33 + v34;
  v26 = fmin(width, v23) < 0.0;
  v37 = v26;
  v38 = x;
  if (v26)
  {
    v47.origin.x = x;
    v47.origin.y = v21;
    v47.size.width = width;
    v47.size.height = v23;
    v45 = v12;
    v39 = x;
    v40 = width;
    v41 = v21;
    *&v38 = CGRectStandardize(v47);
    v21 = v41;
    width = v40;
    x = v39;
    v12 = v45;
  }

  if (v36 < v38)
  {
    return 0;
  }

  if (v32)
  {
    v48.origin.x = v12;
    v48.origin.y = v13;
    v48.size.width = v31;
    v48.size.height = v15;
    v42 = v21;
    v43 = CGRectStandardize(v48);
    v21 = v42;
    v12 = *&v43;
  }

  if (v37)
  {
    v49.origin.x = x;
    v49.origin.y = v21;
    v49.size.width = width;
    v49.size.height = v23;
    v50 = CGRectStandardize(v49);
    x = v50.origin.x;
    width = v50.size.width;
  }

  return v12 <= x + width;
}

- (BOOL)line:(id)line isDirectlyBelow:(id)below
{
  [line bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [below bounds];
  x = v13;
  rect = v15;
  width = v16;
  v19 = v18;
  v20 = fmin(v10, v12) < 0.0;
  v21 = v20;
  v22 = v6;
  v23 = v10;
  if (v20)
  {
    v29.origin.x = v6;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    *&v22 = CGRectStandardize(v29);
  }

  v24 = v22 + v23;
  v20 = fmin(width, v19) < 0.0;
  v25 = v20;
  v26 = x;
  if (v20)
  {
    v30.origin.x = x;
    v30.origin.y = rect;
    v30.size.width = width;
    v30.size.height = v19;
    *&v26 = CGRectStandardize(v30);
  }

  if (v24 < v26)
  {
    return 0;
  }

  if (v21)
  {
    v31.origin.x = v6;
    v31.origin.y = v8;
    v31.size.width = v10;
    v31.size.height = v12;
    *&v6 = CGRectStandardize(v31);
  }

  if (v25)
  {
    v32.origin.x = x;
    v32.origin.y = rect;
    v32.size.width = width;
    v32.size.height = v19;
    v33 = CGRectStandardize(v32);
    x = v33.origin.x;
    width = v33.size.width;
  }

  return v6 <= x + width;
}

- (BOOL)isGraphicBetween:(id)between and:(id)and
{
  if (!self->parent)
  {
    return 0;
  }

  compoundedShapesOnPage = self->compoundedShapesOnPage;
  v7 = [(NSMutableArray *)compoundedShapesOnPage count];
  [between bounds];
  v12 = v9;
  if (v10 < 0.0 || v11 < 0.0)
  {
    *&v8 = CGRectStandardize(*&v8);
    v12 = v13;
  }

  [and bounds];
  v18 = v15;
  v19 = v17;
  if (v16 < 0.0 || v17 < 0.0)
  {
    *&v14 = CGRectStandardize(*&v14);
    v18 = v20;
    v19 = v21;
  }

  [between bounds];
  v26 = v22;
  if (v24 < 0.0 || v25 < 0.0)
  {
    *&v26 = CGRectStandardize(*&v22);
  }

  [between bounds];
  x = v27;
  width = v29;
  if (v29 < 0.0 || v30 < 0.0)
  {
    v56 = CGRectStandardize(*&v27);
    x = v56.origin.x;
    width = v56.size.width;
  }

  [and bounds];
  v37 = v33;
  if (v35 < 0.0 || v36 < 0.0)
  {
    *&v37 = CGRectStandardize(*&v33);
  }

  v38 = x + width;
  [and bounds];
  if (v41 < 0.0 || v42 < 0.0)
  {
    *&v39 = CGRectStandardize(*&v39);
  }

  v43 = v39 + v41;
  if (v26 >= v37)
  {
    v26 = v37;
  }

  if (v38 <= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v38;
  }

  if (v7 < 1)
  {
    return 0;
  }

  v45 = 0;
  v46 = v18 + v19;
  v47 = v7 & 0x7FFFFFFF;
  while (1)
  {
    v48 = [(NSMutableArray *)compoundedShapesOnPage objectAtIndex:v45];
    [v48 right];
    if (v49 >= v26)
    {
      [v48 left];
      if (v50 <= v44)
      {
        [v48 bottom];
        if (v51 <= v12)
        {
          [v48 top];
          if (v52 >= v46)
          {
            [v48 bottom];
            if (v53 >= v46)
            {
              [v48 top];
              if (v54 <= v12)
              {
                break;
              }
            }
          }
        }
      }
    }

    if (v47 == ++v45)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)firstWordOf:(id)of fits:(id)fits indent:(double)indent
{
  wordCount = [of wordCount];
  if (wordCount)
  {
    [objc_msgSend(fits "parent")];
    if (v11 < 0.0 || v12 < 0.0)
    {
      *&v9 = CGRectStandardize(*&v9);
    }

    v13 = v11 - indent;
    [fits bounds];
    if (v16 < 0.0 || v17 < 0.0)
    {
      *&v14 = CGRectStandardize(*&v14);
    }

    v18 = v13 - v16;
    v19 = [of wordAtIndex:{0, v14, v15}];
    v20 = *(*([objc_msgSend(of "charSequence")] + 160) + 64);
    v21 = *(*([objc_msgSend(of "charSequence")] + 160) + 72);
    [v20 spaceWidth];
    v23 = v21 * v22;
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    if (v24 < 0.0 || v25 < 0.0)
    {
      v26 = *(v19 + 16);
      v27 = *(v19 + 24);
      *(&v24 - 2) = CGRectStandardize(*(&v24 - 2));
    }

    LOBYTE(wordCount) = v18 > v23 + v24;
  }

  return wordCount;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPParagraphMaker;
  [(CPParagraphMaker *)&v3 dealloc];
}

@end