@interface EKEventDetailAttendeesListView
- (BOOL)_haveInviteesToDraw;
- (BOOL)_shouldAlwaysDrawSingleColumn;
- (CGSize)intrinsicContentSize;
- (EKEventDetailAttendeesListView)initWithFrame:(CGRect)frame;
- (double)_calculateHeightForItemCounts:(int64_t)counts[4];
- (double)_calculateHeightForSpinnerDisplayMode;
- (double)calculatedHeight;
- (id)generateAttributedStringsFromDisplayParticipants:(id)participants glyph:(id)glyph displayCount:(int64_t)count;
- (void)_createSpinnerViewIfNeeded;
- (void)_layoutSpinner;
- (void)_setShowingSpinner:(BOOL)spinner;
- (void)contentSizeCategoryChanged;
- (void)dealloc;
- (void)drawNames:(id)names;
- (void)drawRect:(CGRect)rect;
- (void)finalizeInviteNames;
- (void)layoutSubviews;
- (void)refreshNames;
- (void)setInvitees:(id)invitees forStatus:(int64_t)status;
@end

@implementation EKEventDetailAttendeesListView

- (EKEventDetailAttendeesListView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = EKEventDetailAttendeesListView;
  v3 = [(EKEventDetailAttendeesListView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F4F321D0];
    inviteeNames = v3->_inviteeNames;
    v3->_inviteeNames = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_contentSizeCategoryChanged name:*MEMORY[0x1E69DDC48] object:0];

    layer = [(EKEventDetailAttendeesListView *)v3 layer];
    [layer setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [layer setNeedsDisplay];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = EKEventDetailAttendeesListView;
  [(EKEventDetailAttendeesListView *)&v4 dealloc];
}

- (void)contentSizeCategoryChanged
{
  finalizedNames = self->_finalizedNames;
  self->_finalizedNames = 0;
}

- (void)setInvitees:(id)invitees forStatus:(int64_t)status
{
  inviteesCopy = invitees;
  _haveInviteesToDraw = [(EKEventDetailAttendeesListView *)self _haveInviteesToDraw];
  [(NSMutableArray *)self->_inviteeNames setObject:inviteesCopy atIndexedSubscript:status];
  v8 = [inviteesCopy count];

  if (v8 && !_haveInviteesToDraw)
  {
    self->_actualHeight = 0.0;
    [(EKEventDetailAttendeesListView *)self invalidateIntrinsicContentSize];
    [(EKEventDetailAttendeesListView *)self _setShowingSpinner:0];

    [(EKEventDetailAttendeesListView *)self setNeedsDisplay];
  }
}

- (BOOL)_haveInviteesToDraw
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_inviteeNames;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) count])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)layoutSubviews
{
  if (self->_spinnerView)
  {
    [(EKEventDetailAttendeesListView *)self _layoutSpinner];
  }
}

- (void)refreshNames
{
  finalizedNames = self->_finalizedNames;
  self->_finalizedNames = 0;

  [(EKEventDetailAttendeesListView *)self setNeedsDisplay];
}

- (CGSize)intrinsicContentSize
{
  [(EKEventDetailAttendeesListView *)self calculatedHeight];
  v3 = v2;
  v4 = 260.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (BOOL)_shouldAlwaysDrawSingleColumn
{
  traitCollection = [(EKEventDetailAttendeesListView *)self traitCollection];
  v3 = EKUIPrefersLargerTextThanDefault(traitCollection);

  return v3;
}

- (double)_calculateHeightForItemCounts:(int64_t)counts[4]
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = counts[v5];
    v6 += v9;
    if (v9)
    {
      v8 = v5;
      ++v7;
    }

    ++v5;
  }

  while (v5 != 4);
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  columnBItems = v10 + v6 - 1;
  if ([(EKEventDetailAttendeesListView *)self _shouldAlwaysDrawSingleColumn])
  {
    self->_columnAItems = columnBItems;
    self->_columnBItems = 0;
    goto LABEL_48;
  }

  v12 = llroundf((columnBItems + 1.0) * 0.5);
  self->_columnAItems = 0;
  self->_columnBItems = 0;
  if (v7 == 1)
  {
    self->_columnAItems = v12;
    self->_columnBItems = columnBItems - v12;
    self->_firstColumnBType = v8;
    if (self->_columnAItems <= self->_columnBItems)
    {
      columnBItems = self->_columnBItems;
    }

    else
    {
      columnBItems = self->_columnAItems;
    }

    goto LABEL_48;
  }

  v13 = 0;
  v14 = 0;
  self->_firstColumnBType = 4;
  do
  {
    v15 = counts[v13];
    if (!v15)
    {
      goto LABEL_44;
    }

    columnAItems = self->_columnAItems;
    v17 = v12 - columnAItems;
    if (v12 - columnAItems < 1 || (v15 >= 3 ? (v18 = v17 == 1) : (v18 = 0), v18 || self->_firstColumnBType != 4))
    {
      self->_columnBItems += v15 + 1;
      if (self->_firstColumnBType == 4)
      {
        self->_firstColumnBType = v13;
      }

      if (v14)
      {
LABEL_34:
        v14 = 0;
        --self->_columnAItems;
        goto LABEL_44;
      }
    }

    else
    {
      v19 = columnAItems + v15;
      if (columnAItems + v15 <= v12)
      {
        self->_columnAItems = v19;
        if (v19 < v12)
        {
          self->_columnAItems = v19 + 1;
          v14 = 1;
          goto LABEL_44;
        }
      }

      else if (v15 <= v17 || v17 == 1)
      {
        if (v19 <= columnBItems - columnAItems)
        {
          v14 = 0;
          self->_columnAItems = v19;
          goto LABEL_44;
        }

        self->_firstColumnBType = v13;
        self->_columnBItems += v15 + 1;
        if (v14)
        {
          goto LABEL_34;
        }
      }

      else
      {
        self->_columnAItems = v12;
        if (v15 == v17 + 1)
        {
          self->_columnAItems = v12 - 1;
          v21 = self->_columnBItems + 1;
        }

        else
        {
          v21 = self->_columnBItems;
        }

        self->_columnBItems = v15 - v17 + v21 + 1;
        if (self->_firstColumnBType == 4)
        {
          v14 = 0;
          self->_firstColumnBType = v13;
          goto LABEL_44;
        }
      }
    }

    v14 = 0;
LABEL_44:
    ++v13;
  }

  while (v13 != 4);
  v22 = self->_columnBItems - 1;
  self->_columnBItems = v22;
  if (self->_columnAItems <= v22)
  {
    columnBItems = v22;
  }

  else
  {
    columnBItems = self->_columnAItems;
  }

LABEL_48:
  v23 = *MEMORY[0x1E69DDD08];
  v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v24 lineHeight];
  v26 = v25;
  v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v23];
  [v27 _leading];
  CalRoundToScreenScale(v26 + v28);
  v30 = v29 * columnBItems;

  return v30;
}

- (double)calculatedHeight
{
  if ([(EKEventDetailAttendeesListView *)self _haveContentToDraw])
  {
    actualHeight = self->_actualHeight;
    if (actualHeight <= 0.0)
    {
      for (i = 0; i != 4; ++i)
      {
        v5 = [(NSMutableArray *)self->_inviteeNames objectAtIndexedSubscript:i];
        statusCounts = self->_statusCounts;
        self->_statusCounts[i] = [v5 count];
      }

      [(EKEventDetailAttendeesListView *)self _calculateHeightForItemCounts:self->_statusCounts];
      actualHeight = v7;
      [(EKEventDetailAttendeesListView *)self maxHeight];
      if (actualHeight > v8)
      {
        v9 = self->_statusCounts;
        v10 = 1;
        v11 = 1;
        do
        {
          do
          {
            v12 = [(NSMutableArray *)self->_inviteeNames objectAtIndexedSubscript:v10];
            if ([v12 count])
            {
              v13 = statusCounts[v10];
              v14 = [(NSMutableArray *)self->_inviteeNames objectAtIndexedSubscript:v10];
              LOBYTE(v13) = v13 != [v14 count];

              v15 = v13 & v11;
              v11 &= v13;
            }

            else
            {

              v15 = v11;
            }

            ++v10;
          }

          while (v10 != 4);
          v16 = 0;
          if (v15)
          {
            v17 = 0;
            do
            {
              v18 = *(v9 + v16);
              v19 = v18 < 1;
              v20 = v18 - 1;
              if (!v19)
              {
                if (!v17)
                {
                  v17 = v20;
                }

                *(v9 + v16) = v17;
              }

              v16 += 8;
            }

            while (v16 != 32);
          }

          else
          {
            for (j = 1; j != 4; ++j)
            {
              if (v9[j] >= statusCounts[v16])
              {
                v16 = j;
              }
            }

            --statusCounts[v16];
          }

          [(EKEventDetailAttendeesListView *)self _calculateHeightForItemCounts:self->_statusCounts];
          actualHeight = v22;
          [(EKEventDetailAttendeesListView *)self maxHeight];
          v10 = 1;
          v11 = 1;
        }

        while (actualHeight > v23);
        if ((v15 & 1) == 0 && ![(EKEventDetailAttendeesListView *)self _shouldAlwaysDrawSingleColumn])
        {
          columnAItems = self->_columnAItems;
          columnBItems = self->_columnBItems;
          v27 = columnAItems - columnBItems;
          if (columnAItems <= columnBItems)
          {
            v33 = columnBItems == columnAItems;
            v19 = columnBItems <= columnAItems;
            v34 = columnBItems - columnAItems;
            if (!v19 && !v33)
            {
              do
              {
                if (self->_firstColumnBType < 1)
                {
                  break;
                }

                v41 = v34;
                v35 = 0;
                v36 = 0;
                v37 = 0;
                do
                {
                  v38 = [(NSMutableArray *)self->_inviteeNames objectAtIndexedSubscript:v35, v41];
                  v39 = [v38 count] - self->_statusCounts[v35];

                  if (v39 > v37)
                  {
                    v37 = v39;
                    v36 = v35;
                  }

                  ++v35;
                }

                while (self->_firstColumnBType > v35);
                if (v37 <= 0)
                {
                  break;
                }

                ++statusCounts[v36];
                v34 = v41 - 1;
                if (v41 == 1)
                {
                  break;
                }
              }

              while (v37 != 1);
            }
          }

          else
          {
            v40 = 456;
            do
            {
              v28 = *(&self->super.super.super.isa + v40);
              if (v28 > 3)
              {
                break;
              }

              v29 = 0;
              v30 = 0;
              do
              {
                v31 = [(NSMutableArray *)self->_inviteeNames objectAtIndexedSubscript:v28, v40];
                v32 = [v31 count] - self->_statusCounts[v28];

                if (v32 > v30)
                {
                  v30 = v32;
                  v29 = v28;
                }

                ++v28;
              }

              while (v28 != 4);
              if (v30 > 0)
              {
                ++statusCounts[v29];
                --v27;
              }
            }

            while (v27 && v30);
          }
        }
      }

      self->_actualHeight = actualHeight;
    }

    return actualHeight;
  }

  else
  {

    [(EKEventDetailAttendeesListView *)self _calculateHeightForSpinnerDisplayMode];
  }

  return result;
}

- (double)_calculateHeightForSpinnerDisplayMode
{
  [(EKEventDetailAttendeesListView *)self _createSpinnerViewIfNeeded];
  [(UIActivityIndicatorView *)self->_spinnerView frame];
  v4 = v3;
  [(EKEventDetailAttendeesListView *)self bottomSpacingForSpinner];
  return v5 + v4;
}

- (void)finalizeInviteNames
{
  v3 = objc_opt_new();
  for (i = 0; i != 4; ++i)
  {
    v5 = [(NSMutableArray *)self->_inviteeNames objectAtIndexedSubscript:i];
    v6 = +[EKUISemiConstantCache sharedInstance];
    v7 = [v6 statusGlyphForStatusType:i];
    v8 = [(EKEventDetailAttendeesListView *)self generateAttributedStringsFromDisplayParticipants:v5 glyph:v7 displayCount:self->_statusCounts[i]];
    [(NSArray *)v3 addObjectsFromArray:v8];
  }

  finalizedNames = self->_finalizedNames;
  self->_finalizedNames = v3;
}

- (id)generateAttributedStringsFromDisplayParticipants:(id)participants glyph:(id)glyph displayCount:(int64_t)count
{
  participantsCopy = participants;
  glyphCopy = glyph;
  v9 = objc_opt_new();
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __102__EKEventDetailAttendeesListView_generateAttributedStringsFromDisplayParticipants_glyph_displayCount___block_invoke;
  v20 = &unk_1E84410F0;
  v10 = participantsCopy;
  v21 = v10;
  countCopy = count;
  v11 = glyphCopy;
  v22 = v11;
  v12 = v9;
  v23 = v12;
  [v10 enumerateObjectsUsingBlock:&v17];
  if ([v10 count])
  {
    v13 = objc_opt_new();
    [v12 addObject:v13];
  }

  v14 = v23;
  v15 = v12;

  return v12;
}

void __102__EKEventDetailAttendeesListView_generateAttributedStringsFromDisplayParticipants_glyph_displayCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [*(a1 + 32) count];
  v11 = *(a1 + 56);
  if (v10 > v11 && v11 - 1 == a3)
  {
    v23 = [*(a1 + 32) count] - *(a1 + 56);
    v24 = MEMORY[0x1E696AEC0];
    v25 = EventKitUIBundle();
    v26 = [v25 localizedStringForKey:@" %d more…" value:&stru_1F4EF6790 table:0];
    v27 = [v24 localizedStringWithFormat:v26, (v23 + 1)];

    v28 = objc_alloc(MEMORY[0x1E696AAB0]);
    v36[0] = *MEMORY[0x1E69DB648];
    v29 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    v37[0] = v29;
    v36[1] = *MEMORY[0x1E69DB650];
    v30 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v37[1] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
    v32 = [v28 initWithString:v27 attributes:v31];

    [v9 appendAttributedString:v32];
    [v8 setXMore:1];
    *a4 = 1;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    if (CalInterfaceIsLeftToRight())
    {
      v14 = &unk_1F4F321E8;
    }

    else
    {
      v14 = &unk_1F4F32200;
    }

    v15 = objc_alloc(MEMORY[0x1E696AD40]);
    v16 = [v7 displayString];
    v17 = [v15 initWithAttributedString:v16];

    v18 = *MEMORY[0x1E69DB648];
    v19 = *MEMORY[0x1E69DDD08];
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v17 addAttribute:v18 value:v20 range:{0, objc_msgSend(v17, "length")}];

    v21 = [v7 isOptionalParticipant];
    v22 = *MEMORY[0x1E69DB650];
    if (v21)
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v33 = ;
    [v17 addAttribute:v22 value:v33 range:{0, objc_msgSend(v17, "length")}];

    [v9 appendAttributedString:*(a1 + 40)];
    [v9 appendAttributedString:v13];
    if ([v7 blocked] == 1)
    {
      v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v19];
      v35 = attributedStateGlyph();
      [v9 appendAttributedString:v35];
      [v9 appendAttributedString:v13];
    }

    [v9 appendAttributedString:v17];
    [v9 addAttribute:*MEMORY[0x1E69DB778] value:v14 range:{0, objc_msgSend(v9, "length")}];
  }

  [v8 setString:v9];
  [*(a1 + 48) addObject:v8];
}

- (void)drawRect:(CGRect)rect
{
  if ([(EKEventDetailAttendeesListView *)self _haveContentToDraw:rect.origin.x])
  {
    if (![(NSArray *)self->_finalizedNames count])
    {
      [(EKEventDetailAttendeesListView *)self finalizeInviteNames];
    }

    finalizedNames = self->_finalizedNames;

    [(EKEventDetailAttendeesListView *)self drawNames:finalizedNames];
  }
}

- (void)drawNames:(id)names
{
  namesCopy = names;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = "";
  v20 = *MEMORY[0x1E695EFF8];
  [(EKEventDetailAttendeesListView *)self frame];
  v6 = v5;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    v17[4] = v6 + v17[4];
  }

  if ([(EKEventDetailAttendeesListView *)self _shouldAlwaysDrawSingleColumn])
  {
    v7 = v6 + -20.0;
  }

  else
  {
    v7 = (v6 + -20.0) * 0.5;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  v15 = objc_opt_new();
  if (CalInterfaceIsLeftToRight())
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  [v11[5] setAlignment:v8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EKEventDetailAttendeesListView_drawNames___block_invoke;
  v9[3] = &unk_1E8441118;
  v9[4] = self;
  v9[5] = &v16;
  *&v9[7] = v7;
  v9[6] = &v10;
  [namesCopy enumerateObjectsUsingBlock:v9];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
}

void __44__EKEventDetailAttendeesListView_drawNames___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v38 = v5;
  if (*(*(a1 + 32) + 440) == a3)
  {
    v6 = CalInterfaceIsLeftToRight() == 0;
    v5 = v38;
    v7 = -1.0;
    if (!v6)
    {
      v7 = 1.0;
    }

    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 40) + 8) + 32) + v7 * (*(a1 + 56) + 20.0);
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  v8 = [v5 string];

  if (v8)
  {
    v9 = [v38 string];
    v10 = objc_opt_new();
    v11 = *(*(*(a1 + 40) + 8) + 32);
    if ([v38 xMore])
    {
      if (CalInterfaceIsLeftToRight())
      {
        v12 = 1.0;
      }

      else
      {
        v12 = -1.0;
      }

      v13 = +[EKUISemiConstantCache sharedInstance];
      v14 = [v13 statusGlyphForStatusType:0];
      [v14 size];
      v11 = v11 + v12 * v15;
    }

    IsLeftToRight = CalInterfaceIsLeftToRight();
    v17 = *(a1 + 56);
    if (!IsLeftToRight)
    {
      v11 = v11 - v17;
    }

    v18 = *(*(*(a1 + 40) + 8) + 40);
    v19 = *MEMORY[0x1E69DDD08];
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v20 lineHeight];
    v22 = v21;
    v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v19];
    [v23 _leading];
    CalRoundToScreenScale(v22 + v24);
    v26 = v25 + 3.0;

    [v9 addAttribute:*MEMORY[0x1E69DB688] value:*(*(*(a1 + 48) + 8) + 40) range:{0, objc_msgSend(v9, "length")}];
    [v9 drawWithRect:33 options:v10 context:{v11, v18, v17, v26}];
    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v19];
    [v27 lineHeight];
    v29 = v28;
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v19];
    [v30 _leading];
    CalRoundToScreenScale(v29 + v31);
    *(*(*(a1 + 40) + 8) + 40) = v32 + *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    if (*(*(*(a1 + 40) + 8) + 40) <= 0.0)
    {
      goto LABEL_17;
    }

    v33 = *MEMORY[0x1E69DDD08];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [v9 lineHeight];
    v35 = v34;
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v33];
    [v10 _leading];
    CalRoundToScreenScale(v35 + v36);
    *(*(*(a1 + 40) + 8) + 40) = v37 + *(*(*(a1 + 40) + 8) + 40);
  }

LABEL_17:
}

- (void)_createSpinnerViewIfNeeded
{
  if (!self->_spinnerView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DC638]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    spinnerView = self->_spinnerView;
    self->_spinnerView = v4;

    [(UIActivityIndicatorView *)self->_spinnerView sizeToFit];
    [(UIActivityIndicatorView *)self->_spinnerView setActivityIndicatorViewStyle:100];
    v6 = self->_spinnerView;

    [(UIActivityIndicatorView *)v6 setAutoresizingMask:45];
  }
}

- (void)_layoutSpinner
{
  [(UIActivityIndicatorView *)self->_spinnerView frame];
  v4 = v3;
  [(EKEventDetailAttendeesListView *)self frame];
  CalRoundToScreenScale((v5 - v4) * 0.5);
  spinnerView = self->_spinnerView;

  [(UIActivityIndicatorView *)spinnerView setFrame:?];
}

- (void)_setShowingSpinner:(BOOL)spinner
{
  if (spinner)
  {
    [(EKEventDetailAttendeesListView *)self _createSpinnerViewIfNeeded];
    superview = [(UIActivityIndicatorView *)self->_spinnerView superview];

    if (!superview)
    {
      [(EKEventDetailAttendeesListView *)self addSubview:self->_spinnerView];
      [(EKEventDetailAttendeesListView *)self _layoutSpinner];
    }

    [(UIActivityIndicatorView *)self->_spinnerView setHidden:0];
    [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinnerView stopAnimating];
    [(UIActivityIndicatorView *)self->_spinnerView setHidden:1];
    [(UIActivityIndicatorView *)self->_spinnerView removeFromSuperview];
  }

  self->_showingSpinner = spinner;
}

@end