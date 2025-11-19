@interface CPTableMaker
+ (BOOL)isTable:(id)a3;
+ (void)makeTableFrom:(id)a3;
+ (void)makeTablesInPage:(id)a3;
+ (void)makeTablesInZone:(id)a3;
- (CPTableMaker)initWithZone:(id)a3;
- (id)newBackgroundGraphicArrayFromRectangularZone:(id)a3;
- (id)newTableCellFromZone:(id)a3;
- (void)dealloc;
- (void)determineRowsAndColumns:(BOOL)a3;
- (void)makeTable;
@end

@implementation CPTableMaker

- (void)makeTable
{
  v3 = [(CPObject *)self->tableZone parent];
  if (v3)
  {
    v4 = v3;
    v5 = [CPTable alloc];
    [(CPZone *)self->tableZone zoneBounds];
    self->table = [(CPTable *)v5 initWithBounds:?];
    v6 = [(CPTableMaker *)self newBackgroundGraphicArrayFromRectangularZone:self->tableZone];
    [(CPTable *)self->table setBackgroundGraphics:v6];

    self->cellIndex = 0;
    v7 = [(CPObject *)self->tableZone count];
    self->rowYIntervals = malloc_type_malloc(32 * v7, 0x1000040451B5BE8uLL);
    self->columnXIntervals = malloc_type_malloc(32 * v7, 0x1000040451B5BE8uLL);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [(CPObject *)self->tableZone childAtIndex:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [CPTableMaker makeTablesInZone:v9];
          v10 = [(CPTableMaker *)self newTableCellFromZone:v9];
          v11 = [v9 zOrder];
          v12 = [v9 newTakeChildren];
          [v10 setChildren:v12];
          [v10 setZOrder:v11];

          [(CPChunk *)self->table add:v10];
          ++self->cellIndex;
        }

        v8 = (v8 + 1);
      }

      while (v7 != v8);
    }

    [(CPTableMaker *)self determineRowsAndColumns:1];
    [(CPTableMaker *)self determineRowsAndColumns:0];
    free(self->columnXIntervals);
    self->columnXIntervals = 0;
    free(self->rowYIntervals);
    self->rowYIntervals = 0;
    [(CPChunk *)self->table sortUsingSelector:sel_compareCellOrdinal_];
    v13 = [v4 indexOf:self->tableZone];
    [(CPObject *)self->tableZone remove];
    table = self->table;

    [v4 add:table atIndex:v13];
  }
}

- (void)determineRowsAndColumns:(BOOL)a3
{
  v3 = a3;
  v5 = 40;
  if (a3)
  {
    v5 = 32;
  }

  v6 = *(&self->super.isa + v5);
  v7 = 2 * [(CPObject *)self->table count];
  if (v7)
  {
    v8 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    v9 = v8;
    v10 = 0;
    v11 = vdupq_n_s64(v7 - 1);
    v12 = v8 + 2;
    v13 = xmmword_18439C760;
    v14 = xmmword_18439C670;
    v15 = vdupq_n_s64(4uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v11, v14));
      if (vuzp1_s16(v16, *v11.i8).u8[0])
      {
        *(v12 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v11).i8[2])
      {
        *(v12 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v13))).i32[1])
      {
        *v12 = v10 + 2;
        v12[1] = v10 + 3;
      }

      v10 += 4;
      v13 = vaddq_s64(v13, v15);
      v14 = vaddq_s64(v14, v15);
      v12 += 4;
    }

    while (((v7 + 3) & 0x1FFFFFFFCLL) != v10);
    qsort_r(v8, v7, 4uLL, v6, compareIntervalIndirect);
    v17 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
    *v17 = 0;
    v18 = &v6[16 * *v9];
    v19 = *v18;
    v20 = v18[1];
    v21 = *v18 + v20 * 0.5;
    v22 = 1;
    v23 = 1;
    v76 = v7;
    v77 = v17;
    do
    {
      v24 = &v6[16 * v9[v22]];
      v25 = *v24;
      v26 = v24[1];
      v19 = CGIntervalIntersection(v19, v20, *v24, v26);
      if (fabs(v19) == INFINITY || (v27 = v22 + 1, v22 + 1 == v7) && v23 == 1)
      {
        v28 = v25 + v26 * 0.5;
        v29 = v17[v23 - 1];
        if (v22 - 1 <= v29)
        {
          v32 = v22;
        }

        else
        {
          v30 = v22 - 2;
          if (v29 < v22 - 2)
          {
            v30 = v17[v23 - 1];
          }

          v31 = v30 + 1;
          v32 = v22;
          v33 = v25 + v26 * 0.5;
          do
          {
            v34 = &v6[16 * v9[v32 - 1]];
            v35 = *v34;
            v36 = v34[1];
            v37 = CGIntervalIntersection(v25, v26, *v34, v36);
            if (fabs(v37) == INFINITY || v35 + v36 * 0.5 - v21 <= v28 - (v35 + v36 * 0.5))
            {
              v28 = v33;
              goto LABEL_28;
            }

            v40 = v32 - 2;
            --v32;
            v26 = v38;
            v25 = v37;
            v33 = v35 + v36 * 0.5;
          }

          while (v40 > v29);
          v28 = v35 + v36 * 0.5;
          v25 = v37;
          v26 = v38;
          v32 = v31;
LABEL_28:
          v7 = v76;
          v17 = v77;
        }

        v17[v23++] = v32;
        v27 = v22 + 1;
        v21 = v28;
        v20 = v26;
        v19 = v25;
      }

      v22 = v27;
    }

    while (v27 != v7);
    table = self->table;
    v42 = v23 - 1;
    if (v3)
    {
      [(CPTable *)table setRowCount:v42, v19, v20];
      v43 = [(CPTable *)self->table rowY];
    }

    else
    {
      [(CPTable *)table setColumnCount:v42, v19, v20];
      v43 = [(CPTable *)self->table columnX];
    }

    v75 = v43;
    v74 = v23;
    if (v23)
    {
      v44 = 0;
      v45 = v74;
      do
      {
        v46 = v44 + 1;
        v47 = v7;
        if (v44 + 1 < v45)
        {
          v47 = v17[v46];
        }

        v48 = v17[v44];
        v49 = &v6[16 * v9[v48]];
        v50 = *v49;
        v51 = v49[1];
        v52 = (v48 + 1);
        do
        {
          v53 = v51;
          v54 = v50;
          if (v52 >= v47)
          {
            break;
          }

          v55 = &v6[16 * v9[v52]];
          v50 = CGIntervalIntersection(v50, v51, *v55, v55[1]);
          ++v52;
        }

        while (fabs(v50) != INFINITY);
        v75[v44++] = v54 + v53 * 0.5;
        v45 = v74;
        v17 = v77;
      }

      while (v46 != v74);
      v56 = 0;
      do
      {
        v57 = v56++;
        v58 = v7;
        if (v56 < v45)
        {
          v58 = v17[v56];
        }

        v59 = v17[v57];
        if (v58 > v59)
        {
          v60 = v58 - v59;
          v61 = &v9[v59];
          do
          {
            v63 = *v61++;
            v62 = v63;
            v64 = [(CPObject *)self->table childAtIndex:v63 >> 1];
            v65 = v64;
            if (v3)
            {
              v66 = [v64 rowSpan];
              if (v62)
              {
                v68 = v74 + ~v57;
              }

              else
              {
                v68 = v57;
              }

              if (v62)
              {
                v69 = v57 - v66;
              }

              else
              {
                v69 = v67;
              }

              [v65 setRowSpan:{v68, v69}];
            }

            else
            {
              v70 = [v64 columnSpan];
              if (v62)
              {
                v72 = v70;
              }

              else
              {
                v72 = v57;
              }

              if (v62)
              {
                v73 = v57 - v70;
              }

              else
              {
                v73 = v71;
              }

              [v65 setColumnSpan:{v72, v73}];
            }

            --v60;
          }

          while (v60);
        }

        LODWORD(v7) = v76;
        v45 = v74;
        v17 = v77;
      }

      while (v56 != v74);
    }

    free(v17);

    free(v9);
  }
}

- (id)newTableCellFromZone:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = [CPTableCell alloc];
  [a3 zoneBounds];
  v6 = [(CPTableCell *)v5 initWithBounds:?];
  v7 = [(CPTableMaker *)self newBackgroundGraphicArrayFromRectangularZone:a3];
  v34 = v6;
  [(CPTableCell *)v6 setBackgroundGraphics:v7];

  if ([a3 rectangleBordersAtLeft:v38 top:v35 right:&v36 bottom:&v37])
  {
    for (i = 0; i != 4; ++i)
    {
      [*&v35[8 * i] bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [*&v35[8 * i] graphicObjects];
      -[CPTableCell setBorder:bounds:graphics:](v34, "setBorder:bounds:graphics:", i, [v17 sortedArrayUsingSelector:sel_compareZ_], v10, v12, v14, v16);
      v18 = 2 * self->cellIndex;
      if (i == 2)
      {
        p_rowYIntervals = &self->rowYIntervals;
      }

      else
      {
        p_rowYIntervals = &self->columnXIntervals;
      }

      if (i == 2)
      {
        v20 = v12;
      }

      else
      {
        v20 = v10;
      }

      if (i == 2)
      {
        v21 = v16;
      }

      else
      {
        v21 = v14;
      }

      if (i)
      {
        p_columnXIntervals = &self->columnXIntervals;
      }

      else
      {
        p_columnXIntervals = &self->rowYIntervals;
      }

      if (i)
      {
        v23 = v10;
      }

      else
      {
        v23 = v12;
      }

      if (i)
      {
        v24 = v14;
      }

      else
      {
        v24 = v16;
      }

      if (i <= 1)
      {
        v18 |= 1u;
        p_rowYIntervals = p_columnXIntervals;
        v20 = v23;
        v21 = v24;
      }

      p_var0 = &(*p_rowYIntervals)[v18].var0;
      *p_var0 = v20 + -2.0;
      p_var0[1] = v21 + 4.0;
      v26 = [v17 count];
      v27 = v26;
      if (v26)
      {
        v28 = 0;
        do
        {
          v29 = [v17 objectAtIndex:v28];
          if ([v29 parent])
          {
            [v29 setUser:self->table];
          }

          ++v28;
        }

        while (v27 != v28);
      }

      v30 = [*&v35[8 * i] neighborCount];
      if (v30)
      {
        v31 = v30;
        v32 = 0;
        do
        {
          [objc_msgSend(objc_msgSend(*&v35[8 * i] neighborAtIndex:{v32), "neighborShape"), "setUser:", self->table}];
          v32 = (v32 + 1);
        }

        while (v31 != v32);
      }
    }
  }

  else
  {
    self->rowYIntervals[2 * self->cellIndex] = CGIntervalNull;
    self->rowYIntervals[(2 * self->cellIndex) | 1] = CGIntervalNull;
    self->columnXIntervals[2 * self->cellIndex] = CGIntervalNull;
    self->columnXIntervals[(2 * self->cellIndex) | 1] = CGIntervalNull;
  }

  return v34;
}

- (id)newBackgroundGraphicArrayFromRectangularZone:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  if ([a3 rectangleBordersAtLeft:&v45 top:&v44 right:&v43 bottom:&v42])
  {
    v5 = [v45 neighborCount];
    v6 = [v44 neighborCount];
    v7 = [v43 neighborCount];
    v8 = [v42 neighborCount];
    if (v5)
    {
      if (v6)
      {
        if (v7)
        {
          v9 = v8;
          if (v8)
          {
            v41 = v4;
            [a3 zoneBounds];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;
            v18 = 0;
            do
            {
              v19 = [v45 neighborAtIndex:v18];
              v20 = [v19 neighborShape];
              v21 = [v20 fillColor];
              if (v21)
              {
                v29 = (v21 & 0x8000000000000000) != 0 ? CGTaggedColorGetAlpha(v21, v22, v23, v24, v25, v26, v27, v28) : *(v21 + 8 * *(v21 + 56) + 64);
                if (v29 != 0.0)
                {
                  [v20 renderedBounds];
                  v47.origin.x = v30;
                  v47.origin.y = v31;
                  v47.size.width = v32;
                  v47.size.height = v33;
                  v46.origin.x = v11;
                  v46.origin.y = v13;
                  v46.size.width = v15;
                  v46.size.height = v17;
                  if (CGRectIntersectsRect(v46, v47) && [v19 shapeSide] == 2)
                  {
                    v34 = 0;
                    while (1)
                    {
                      v35 = [v44 neighborAtIndex:v34];
                      if ([v35 neighborShape] == v20 && objc_msgSend(v35, "shapeSide") == 3)
                      {
                        break;
                      }

LABEL_25:
                      v34 = (v34 + 1);
                      if (v34 == v6)
                      {
                        goto LABEL_28;
                      }
                    }

                    v36 = 0;
                    while (1)
                    {
                      v37 = [v43 neighborAtIndex:v36];
                      if ([v37 neighborShape] == v20 && objc_msgSend(v37, "shapeSide") == 4)
                      {
                        break;
                      }

LABEL_24:
                      v36 = (v36 + 1);
                      if (v36 >= v7)
                      {
                        goto LABEL_25;
                      }
                    }

                    v38 = 0;
                    while (1)
                    {
                      v39 = [v42 neighborAtIndex:v38];
                      if ([v39 neighborShape] == v20 && objc_msgSend(v39, "shapeSide") == 1)
                      {
                        break;
                      }

                      v38 = (v38 + 1);
                      if (v9 == v38)
                      {
                        goto LABEL_24;
                      }
                    }

                    [v41 addObject:v20];
                  }
                }
              }

LABEL_28:
              v18 = (v18 + 1);
            }

            while (v18 != v5);
            v4 = v41;
            [v41 sortUsingSelector:sel_compareZ_];
          }
        }
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPTableMaker;
  [(CPTableMaker *)&v3 dealloc];
}

- (CPTableMaker)initWithZone:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPTableMaker;
  v4 = [(CPTableMaker *)&v6 init];
  if (v4)
  {
    v4->tableZone = a3;
  }

  return v4;
}

+ (void)makeTablesInPage:(id)a3
{
  v3 = [a3 firstDescendantOfClass:objc_opt_class()];
  if (v3)
  {

    [CPTableMaker makeTablesInZone:v3];
  }
}

+ (void)makeTablesInZone:(id)a3
{
  v4 = [a3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [a3 childAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([CPTableMaker isTable:v7])
        {
          [CPTableMaker makeTableFrom:v7];
        }

        else
        {
          [CPTableMaker makeTablesInZone:v7];
        }
      }

      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }
}

+ (void)makeTableFrom:(id)a3
{
  v3 = [[CPTableMaker alloc] initWithZone:a3];
  [(CPTableMaker *)v3 makeTable];
}

+ (BOOL)isTable:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_4:
    LOBYTE(v4) = 0;
    return v4;
  }

  v4 = [a3 isRectangular];
  if (v4)
  {
    v5 = [a3 count];
    if (v5 >= 2)
    {
      v6 = v5;
      v7 = 0;
      while (1)
      {
        v8 = [a3 childAtIndex:v7];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || ([v8 isRectangular] & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1);
        if (v6 == v7)
        {
          LOBYTE(v4) = [a3 firstDescendantOfClass:objc_opt_class()] != 0;
          return v4;
        }
      }
    }

    goto LABEL_4;
  }

  return v4;
}

@end