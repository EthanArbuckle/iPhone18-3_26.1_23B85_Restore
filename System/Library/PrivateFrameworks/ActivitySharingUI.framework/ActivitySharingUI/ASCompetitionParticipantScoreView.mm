@interface ASCompetitionParticipantScoreView
- (ASCompetitionParticipantScoreView)initWithConfiguration:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_computeFontSizeReductionForLabel:(id)a3 width:(double)a4 maxReduction:(double)a5 updateBlock:(id)a6;
- (double)computeNameFontSizeReductionForWidth:(double)a3;
- (double)computePrimaryScoreFontSizeReductionForWidth:(double)a3;
- (void)_updateNameLabelWithFontSizeReduction:(double)a3;
- (void)_updatePrimaryScoreLabelWithFontSizeReduction:(double)a3;
- (void)_updateSecondaryScoreLabel;
- (void)layoutForWidth:(double)a3;
- (void)layoutSubviews;
- (void)setName:(id)a3;
- (void)setNameFontSizeReduction:(double)a3;
- (void)setPrimaryScore:(unint64_t)a3;
- (void)setPrimaryScoreFontSizeReduction:(double)a3;
- (void)setScoreColor:(id)a3;
- (void)setSecondaryScoreEnabled:(BOOL)a3;
@end

@implementation ASCompetitionParticipantScoreView

- (ASCompetitionParticipantScoreView)initWithConfiguration:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = ASCompetitionParticipantScoreView;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(ASCompetitionParticipantScoreView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_configuration, a3);
    if ([v5 showsNames])
    {
      v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
      nameLabel = v11->_nameLabel;
      v11->_nameLabel = v12;

      v14 = [v5 nameFont];
      [(UILabel *)v11->_nameLabel setFont:v14];

      v15 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)v11->_nameLabel setTextColor:v15];

      [(UILabel *)v11->_nameLabel setLineBreakMode:4];
      [(UILabel *)v11->_nameLabel setAllowsDefaultTighteningForTruncation:1];
      if ([v5 alignment] == 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = 4;
      }

      [(UILabel *)v11->_nameLabel setTextAlignment:v16];
      [(ASCompetitionParticipantScoreView *)v11 addSubview:v11->_nameLabel];
    }

    v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    primaryScoreLabel = v11->_primaryScoreLabel;
    v11->_primaryScoreLabel = v17;

    [(UILabel *)v11->_primaryScoreLabel setLineBreakMode:4];
    if ([v5 alignment] == 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 4;
    }

    [(UILabel *)v11->_primaryScoreLabel setTextAlignment:v19];
    [(ASCompetitionParticipantScoreView *)v11 addSubview:v11->_primaryScoreLabel];
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(ASCompetitionParticipantScoreView *)self layoutForWidth:a3.width, a3.height];
  secondaryScoreLabel = self->_secondaryScoreLabel;
  if (!secondaryScoreLabel)
  {
    secondaryScoreLabel = self->_primaryScoreLabel;
  }

  [(UILabel *)secondaryScoreLabel _lastLineBaselineFrameOriginY];
  v7 = v6;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ASCompetitionParticipantScoreView;
  [(ASCompetitionParticipantScoreView *)&v4 layoutSubviews];
  [(ASCompetitionParticipantScoreView *)self bounds];
  [(ASCompetitionParticipantScoreView *)self layoutForWidth:v3];
}

- (void)layoutForWidth:(double)a3
{
  previousLayoutWidth = self->_previousLayoutWidth;
  if (!previousLayoutWidth || ([(NSNumber *)previousLayoutWidth floatValue], vabdd_f64(v6, a3) >= 0.00000011920929))
  {
    [(UILabel *)self->_nameLabel sizeToFit];
    [(UILabel *)self->_primaryScoreLabel sizeToFit];
    [(UILabel *)self->_secondaryScoreLabel sizeToFit];
    if (self->_nameLabel)
    {
      [(ASCompetitionScoreViewConfiguration *)self->_configuration nameBaselineOffset];
      v8 = v7;
      if ([(ASCompetitionScoreViewConfiguration *)self->_configuration wantsScaledBaselineAlignment])
      {
        v9 = [(UILabel *)self->_nameLabel font];
        [(ASCompetitionScoreViewConfiguration *)self->_configuration nameBaselineOffset];
        [v9 _scaledValueForValue:?];
        v8 = v10;
      }

      [(UILabel *)self->_nameLabel bounds];
      [(UILabel *)self->_nameLabel setFrame:0.0, 0.0, a3, CGRectGetHeight(v29)];
      [(UILabel *)self->_nameLabel _setFirstLineBaselineFrameOriginY:v8];
    }

    else
    {
      v8 = 0.0;
    }

    [(ASCompetitionScoreViewConfiguration *)self->_configuration primaryScoreBaselineOffset];
    v12 = v11;
    if ([(ASCompetitionScoreViewConfiguration *)self->_configuration wantsScaledBaselineAlignment])
    {
      v13 = [(UILabel *)self->_primaryScoreLabel font];
      [(ASCompetitionScoreViewConfiguration *)self->_configuration primaryScoreBaselineOffset];
      [v13 _scaledValueForValue:?];
      v12 = v14;
    }

    [(UILabel *)self->_primaryScoreLabel bounds];
    Width = CGRectGetWidth(v30);
    scoreLeftMargin = self->_scoreLeftMargin;
    v17 = scoreLeftMargin;
    scoreRightMargin = self->_scoreRightMargin;
    v19 = fmaxf(v17, scoreRightMargin);
    v20 = v19 + (a3 - Width) * -0.5 + v19 + (a3 - Width) * -0.5;
    if (v20 <= 0.0)
    {
      v21 = a3;
    }

    else
    {
      v21 = a3 - v20;
    }

    if (scoreLeftMargin <= 0.0 || v20 <= 0.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v20;
    }

    v24 = v8 + v12;
    [(UILabel *)self->_primaryScoreLabel bounds];
    [(UILabel *)self->_primaryScoreLabel setFrame:v23, 0.0, v21, CGRectGetHeight(v31)];
    [(UILabel *)self->_primaryScoreLabel _setFirstLineBaselineFrameOriginY:v24];
    if (self->_secondaryScoreLabel)
    {
      [(ASCompetitionScoreViewConfiguration *)self->_configuration secondaryScoreBaselineOffset];
      v26 = v24 + v25;
      v27 = self->_scoreLeftMargin;
      [(UILabel *)self->_secondaryScoreLabel bounds];
      [(UILabel *)self->_secondaryScoreLabel setFrame:v27, 0.0, v21, CGRectGetHeight(v32)];
      [(UILabel *)self->_secondaryScoreLabel _setFirstLineBaselineFrameOriginY:v26];
    }

    self->_previousLayoutWidth = [MEMORY[0x277CCABB0] numberWithDouble:a3];

    MEMORY[0x2821F96F8]();
  }
}

- (void)setName:(id)a3
{
  [(UILabel *)self->_nameLabel setText:a3];
  previousLayoutWidth = self->_previousLayoutWidth;
  self->_previousLayoutWidth = 0;

  [(ASCompetitionParticipantScoreView *)self setNeedsLayout];
}

- (void)setNameFontSizeReduction:(double)a3
{
  if (vabdd_f64(self->_nameFontSizeReduction, a3) > 0.00000011920929)
  {
    [(ASCompetitionParticipantScoreView *)self _updateNameLabelWithFontSizeReduction:?];
    previousLayoutWidth = self->_previousLayoutWidth;
    self->_previousLayoutWidth = 0;

    [(ASCompetitionParticipantScoreView *)self setNeedsLayout];
  }
}

- (void)setPrimaryScore:(unint64_t)a3
{
  self->_primaryScore = a3;
  [(ASCompetitionParticipantScoreView *)self _updatePrimaryScoreLabelWithFontSizeReduction:self->_primaryScoreFontSizeReduction];
  previousLayoutWidth = self->_previousLayoutWidth;
  self->_previousLayoutWidth = 0;

  [(ASCompetitionParticipantScoreView *)self setNeedsLayout];
}

- (void)setPrimaryScoreFontSizeReduction:(double)a3
{
  if (vabdd_f64(self->_primaryScoreFontSizeReduction, a3) > 0.00000011920929)
  {
    [(ASCompetitionParticipantScoreView *)self _updatePrimaryScoreLabelWithFontSizeReduction:?];
    previousLayoutWidth = self->_previousLayoutWidth;
    self->_previousLayoutWidth = 0;

    [(ASCompetitionParticipantScoreView *)self setNeedsLayout];
  }
}

- (void)setScoreColor:(id)a3
{
  objc_storeStrong(&self->_scoreColor, a3);
  v5 = a3;
  [(UILabel *)self->_secondaryScoreLabel setTextColor:self->_scoreColor];
}

- (void)setSecondaryScoreEnabled:(BOOL)a3
{
  if (self->_secondaryScoreEnabled != a3)
  {
    v18 = v3;
    self->_secondaryScoreEnabled = a3;
    secondaryScoreLabel = self->_secondaryScoreLabel;
    if (a3)
    {
      if (!secondaryScoreLabel)
      {
        v11 = objc_alloc(MEMORY[0x277D756B8]);
        v12 = [v11 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v13 = self->_secondaryScoreLabel;
        self->_secondaryScoreLabel = v12;

        [(UILabel *)self->_secondaryScoreLabel setLineBreakMode:4];
        if ([(ASCompetitionScoreViewConfiguration *)self->_configuration alignment]== 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = 4;
        }

        [(UILabel *)self->_secondaryScoreLabel setTextAlignment:v14, v6, v5, v4, v18, v7];
        v15 = [(ASCompetitionScoreViewConfiguration *)self->_configuration secondaryScoreFont];
        [(UILabel *)self->_secondaryScoreLabel setFont:v15];

        [(UILabel *)self->_secondaryScoreLabel setTextColor:self->_scoreColor];
        [(ASCompetitionParticipantScoreView *)self addSubview:self->_secondaryScoreLabel];
        [(ASCompetitionParticipantScoreView *)self _updateSecondaryScoreLabel];
      }
    }

    else if (secondaryScoreLabel)
    {
      [(UILabel *)secondaryScoreLabel removeFromSuperview];
      v16 = self->_secondaryScoreLabel;
      self->_secondaryScoreLabel = 0;
    }

    previousLayoutWidth = self->_previousLayoutWidth;
    self->_previousLayoutWidth = 0;

    [(ASCompetitionParticipantScoreView *)self setNeedsLayout];
  }
}

- (double)computePrimaryScoreFontSizeReductionForWidth:(double)a3
{
  [(ASCompetitionParticipantScoreView *)self _availableScoreWidthForWidth:a3];
  v5 = v4;
  v6 = [(ASCompetitionScoreViewConfiguration *)self->_configuration primaryScoreFont];
  [v6 pointSize];
  v8 = v7 * 0.3;

  primaryScoreLabel = self->_primaryScoreLabel;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__ASCompetitionParticipantScoreView_computePrimaryScoreFontSizeReductionForWidth___block_invoke;
  v11[3] = &unk_278C52ED0;
  v11[4] = self;
  [(ASCompetitionParticipantScoreView *)self _computeFontSizeReductionForLabel:primaryScoreLabel width:v11 maxReduction:v5 updateBlock:v8];
  return result;
}

- (double)computeNameFontSizeReductionForWidth:(double)a3
{
  v5 = [(ASCompetitionScoreViewConfiguration *)self->_configuration showsNames];
  result = 0.0;
  if (v5)
  {
    v7 = [(ASCompetitionScoreViewConfiguration *)self->_configuration nameFont];
    [v7 pointSize];
    v9 = v8 * 0.3;

    nameLabel = self->_nameLabel;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__ASCompetitionParticipantScoreView_computeNameFontSizeReductionForWidth___block_invoke;
    v11[3] = &unk_278C52ED0;
    v11[4] = self;
    [(ASCompetitionParticipantScoreView *)self _computeFontSizeReductionForLabel:nameLabel width:v11 maxReduction:a3 updateBlock:v9];
  }

  return result;
}

- (double)_computeFontSizeReductionForLabel:(id)a3 width:(double)a4 maxReduction:(double)a5 updateBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = 0.0;
  if (a4 > 1.0)
  {
    v11 = -1.0;
    if (a5 >= -1.0)
    {
      do
      {
        v11 = v11 + 1.0;
        v10[2](v10, v11);
        [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      }

      while (v11 <= a5 && v12 > a4);
    }
  }

  return v11;
}

- (void)_updateNameLabelWithFontSizeReduction:(double)a3
{
  v5 = [(ASCompetitionScoreViewConfiguration *)self->_configuration nameFont];
  v6 = v5;
  if (fabs(a3) > 0.00000011920929)
  {
    v9 = v5;
    [v5 pointSize];
    v8 = [v9 fontWithSize:v7 - a3];

    v6 = v8;
  }

  v10 = v6;
  [(UILabel *)self->_nameLabel setFont:v6];
  self->_nameFontSizeReduction = a3;
}

- (void)_updatePrimaryScoreLabelWithFontSizeReduction:(double)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = [(ASCompetitionScoreViewConfiguration *)self->_configuration primaryScoreFont];
  v6 = [(ASCompetitionScoreViewConfiguration *)self->_configuration primaryScoreUnitFont];
  if (fabs(a3) > 0.00000011920929)
  {
    [v5 pointSize];
    v8 = v7;
    [v6 pointSize];
    v10 = v9;
    v11 = [v5 fontWithSize:v8 - a3];

    v12 = [v6 fontWithSize:v10 - a3];

    v6 = v12;
    v5 = v11;
  }

  if ([(ASCompetitionScoreViewConfiguration *)self->_configuration showsPrimaryScoreUnits])
  {
    v13 = ASPointsStringWithScore(self->_primaryScore, v5, v6, self->_scoreColor);
    [(UILabel *)self->_primaryScoreLabel setAttributedText:v13];
  }

  else
  {
    if ([(ASCompetitionScoreViewConfiguration *)self->_configuration zeroPadPrimaryScore])
    {
      v13 = ASCompetitionZeroPaddedScoreString(self->_primaryScore);
    }

    else
    {
      v14 = MEMORY[0x277D0A7E8];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_primaryScore];
      v13 = [v14 stringWithNumber:v15 decimalPrecision:1];
    }

    v16 = objc_alloc(MEMORY[0x277CCA898]);
    scoreColor = self->_scoreColor;
    v18 = *MEMORY[0x277D740A8];
    v21[0] = *MEMORY[0x277D740C0];
    v21[1] = v18;
    v22[0] = scoreColor;
    v22[1] = v5;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v20 = [v16 initWithString:v13 attributes:v19];
    [(UILabel *)self->_primaryScoreLabel setAttributedText:v20];
  }

  self->_primaryScoreFontSizeReduction = a3;
}

- (void)_updateSecondaryScoreLabel
{
  v3 = MEMORY[0x277D0A7E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_secondaryScore];
  v9 = [v3 stringWithNumber:v4 decimalPrecision:1];

  v5 = MEMORY[0x277CCACA8];
  v6 = ActivitySharingBundle();
  v7 = [v6 localizedStringForKey:@"COMPETITION_TODAY_SCORE_SUBTEXT" value:&stru_2850F6650 table:@"Localizable"];
  v8 = [v5 stringWithFormat:v7, v9];
  [(UILabel *)self->_secondaryScoreLabel setText:v8];
}

@end