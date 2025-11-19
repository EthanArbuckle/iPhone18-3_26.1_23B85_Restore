@interface ASCompetitionGraphView
+ (id)companionGraph;
+ (id)gizmoGraph;
- (ASCompetitionGraphView)initWithFrame:(CGRect)a3;
- (double)_firstBarOriginXForDateLabelOriginX:(double)result dateLabelWidth:(double)a4;
- (double)_percentForScoreAtIndex:(unint64_t)a3 scores:(id)a4 maxScore:(unint64_t)a5;
- (double)lastBaselineY;
- (id)_allScores;
- (id)_attributesForDateLabelWithDate:(id)a3;
- (unint64_t)_maxDailyScore;
- (unint64_t)_minDailyScore;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCompetition:(id)a3;
- (void)setDateFormat:(id)a3;
@end

@implementation ASCompetitionGraphView

+ (id)companionGraph
{
  v2 = [ASCompetitionGraphView alloc];
  v3 = [(ASCompetitionGraphView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = [MEMORY[0x277D75348] clearColor];
  [(ASCompetitionGraphView *)v3 setBackgroundColor:v4];

  [(ASCompetitionGraphView *)v3 setAlignment:1];
  [(ASCompetitionGraphView *)v3 setDateFormat:@"EEE"];
  [(ASCompetitionGraphView *)v3 setHorizontalInset:0.0];
  [(ASCompetitionGraphView *)v3 setBarWidth:5.0];
  [(ASCompetitionGraphView *)v3 setSpaceBetweenBars:1.0];
  [(ASCompetitionGraphView *)v3 setMaxBarHeight:76.0];
  [(ASCompetitionGraphView *)v3 setBottomPadding:1.0];
  [(ASCompetitionGraphView *)v3 setHighlightsCurrentDay:0];
  [(ASCompetitionGraphView *)v3 setShowsBackgroundDateGuide:1];
  [(ASCompetitionGraphView *)v3 setShowsBackgroundScoreGuide:1];
  [(ASCompetitionGraphView *)v3 setDrawsDailyScoreLabels:1];
  [(ASCompetitionGraphView *)v3 setDrawsFutureScoreDots:1];
  v5 = *MEMORY[0x277D76938];
  v6 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76938]];
  [(ASCompetitionGraphView *)v3 setCurrentDateFont:v6];

  v7 = [MEMORY[0x277D74300] defaultFontForTextStyle:v5];
  [(ASCompetitionGraphView *)v3 setDateFont:v7];

  v8 = [(ASCompetitionGraphView *)v3 currentDateFont];
  [v8 _scaledValueForValue:13.0];
  [(ASCompetitionGraphView *)v3 setDayLabelBaselineOffset:?];

  v9 = [MEMORY[0x277D75348] fu_systemTextGreyColor];
  [(ASCompetitionGraphView *)v3 setDateColor:v9];

  return v3;
}

+ (id)gizmoGraph
{
  v2 = [ASCompetitionGraphView alloc];
  v3 = [(ASCompetitionGraphView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(ASCompetitionGraphView *)v3 setAlignment:0];
  [(ASCompetitionGraphView *)v3 setDateFormat:@"EEEEE"];
  [(ASCompetitionGraphView *)v3 setHorizontalInset:0.0];
  [(ASCompetitionGraphView *)v3 setBarWidth:5.0];
  [(ASCompetitionGraphView *)v3 setSpaceBetweenBars:1.0];
  [(ASCompetitionGraphView *)v3 setMaxBarHeight:28.5];
  [(ASCompetitionGraphView *)v3 setDayLabelBaselineOffset:14.0];
  [(ASCompetitionGraphView *)v3 setHighlightsCurrentDay:1];
  v4 = [MEMORY[0x277D74300] fu_heavySausageFontOfSize:9.5];
  [(ASCompetitionGraphView *)v3 setCurrentDateFont:v4];

  v5 = [MEMORY[0x277D74300] fu_mediumSausageFontOfSize:11.0];
  [(ASCompetitionGraphView *)v3 setDateFont:v5];

  v6 = [MEMORY[0x277D75348] whiteColor];
  [(ASCompetitionGraphView *)v3 setDateColor:v6];

  v7 = [MEMORY[0x277D75348] blackColor];
  [(ASCompetitionGraphView *)v3 setHighlightedDateColor:v7];

  [(ASCompetitionGraphView *)v3 setBottomPadding:5.0];

  return v3;
}

- (ASCompetitionGraphView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ASCompetitionGraphView;
  v3 = [(ASCompetitionGraphView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v3->_dateFormatter;
    v3->_dateFormatter = v4;

    [(ASCompetitionGraphView *)v3 setClearsContextBeforeDrawing:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ASCompetitionGraphView;
  [(ASCompetitionGraphView *)&v4 layoutSubviews];
  v3 = [(ASCompetitionGraphView *)self layer];
  [v3 setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v149 = *MEMORY[0x277D85DE8];
  v8 = [(ASCompetition *)self->_competition durationDateComponents];
  v9 = [v8 day];

  if ([(ASCompetition *)self->_competition isDailyScoreCapped])
  {
    v134 = [(ASCompetition *)self->_competition maximumNumberOfPointsPerDay];
  }

  else
  {
    v10 = [(ASCompetitionGraphView *)self _maxDailyScore];
    v11 = 100;
    if (v10 > 0x64)
    {
      v11 = v10;
    }

    v134 = v11;
  }

  barWidth = self->_barWidth;
  v13 = 0.5;
  [(ASCompetitionGraphView *)self bounds];
  v14 = CGRectGetWidth(v152) + self->_horizontalInset * -2.0;
  Mutable = CGPathCreateMutable();
  v130 = CGPathCreateMutable();
  path = CGPathCreateMutable();
  v15 = CGPathCreateMutable();
  v129 = CGPathCreateMutable();
  v123 = CGPathCreateMutable();
  v136 = CGPathCreateMutable();
  v122 = [MEMORY[0x277D75348] as_competitionGraphBackgroundGold];
  v137 = [MEMORY[0x277D75348] as_colorForParticipant:0 competition:self->_competition];
  v121 = [v137 colorWithAlphaComponent:0.5];
  v135 = [MEMORY[0x277D75348] as_colorForParticipant:1 competition:self->_competition];
  v119 = [v135 colorWithAlphaComponent:0.5];
  CurrentContext = UIGraphicsGetCurrentContext();
  UIGraphicsPushContext(CurrentContext);
  v153.origin.x = x;
  v153.origin.y = y;
  v153.size.width = width;
  v153.size.height = height;
  CGContextClearRect(CurrentContext, v153);
  CGContextSetLineWidth(CurrentContext, self->_barWidth);
  c = CurrentContext;
  CGContextSetLineCap(CurrentContext, kCGLineCapButt);
  v17 = [(ASCompetition *)self->_competition startDate];
  v18 = v17;
  v118 = v14;
  if (v9)
  {
    v19 = 0;
    v131 = v14 / v9;
    v132 = barWidth * 0.5;
    v125 = *MEMORY[0x277D740A8];
    v126 = *MEMORY[0x277D740C0];
    v20 = 0x27E34E000uLL;
    v21 = v17;
    v127 = v15;
    v133 = v9;
    do
    {
      v22 = [MEMORY[0x277CBEAA8] date];
      v140 = [v21 hk_isAfterDate:v22];

      v23 = self->_horizontalInset + v19 * v131;
      v24 = [(ASCompetitionGraphView *)self _attributesForDateLabelWithDate:v21];
      v141 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v21];
      [v141 sizeWithAttributes:v24];
      v26 = v25;
      v28 = v27;
      v29 = v23 + (v131 - v25) * v13;
      if (self->_alignment)
      {
        v30 = v23;
      }

      else
      {
        v30 = v29;
      }

      if (self->_highlightsCurrentDay)
      {
        v31 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        v32 = [v31 isDateInToday:v21];

        v33 = &OBJC_IVAR___ASCompetitionGraphView__dateFont;
        if (v32)
        {
          v33 = &OBJC_IVAR___ASCompetitionGraphView__currentDateFont;
        }
      }

      else
      {
        v32 = 0;
        v33 = &OBJC_IVAR___ASCompetitionGraphView__dateFont;
      }

      v34 = *(&self->super.super.super.isa + *v33);
      maxBarHeight = self->_maxBarHeight;
      if (self->_showsBackgroundScoreGuide)
      {
        maxBarHeight = maxBarHeight + 5.0;
      }

      v36 = maxBarHeight + self->_dayLabelBaselineOffset;
      v138 = v34;
      [v34 ascender];
      v38 = v36 - v37;
      if (v32)
      {
        v39 = v137;
        v40 = v135;
        v154.origin.x = v30;
        v154.origin.y = v38;
        v154.size.width = v26;
        v154.size.height = v28;
        v41 = CGRectGetMidX(v154) + -6.5;
        v155.origin.x = v30;
        v155.origin.y = v38;
        v155.size.width = v26;
        v155.size.height = v28;
        v139 = v38;
        v42 = CGRectGetMidY(v155) + -6.5;
        v43 = [v39 CGColor];

        v147 = v43;
        v44 = [v40 CGColor];

        v148 = v44;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:2];
        v46 = CGGradientCreateWithColors(0, v45, 0);

        CGContextSaveGState(c);
        v156.size.width = 13.0;
        v156.size.height = 13.0;
        v156.origin.x = v41;
        v156.origin.y = v42;
        CGContextAddEllipseInRect(c, v156);
        CGContextClip(c);
        v157.size.width = 13.0;
        v157.size.height = 13.0;
        v157.origin.x = v41;
        v157.origin.y = v42;
        MinX = CGRectGetMinX(v157);
        v158.size.width = 13.0;
        v158.size.height = 13.0;
        v158.origin.x = v41;
        v158.origin.y = v42;
        MidY = CGRectGetMidY(v158);
        v159.size.width = 13.0;
        v159.size.height = 13.0;
        v159.origin.x = v41;
        v159.origin.y = v42;
        MaxX = CGRectGetMaxX(v159);
        v160.size.width = 13.0;
        v160.size.height = 13.0;
        v160.origin.x = v41;
        v160.origin.y = v42;
        v38 = v139;
        v151.y = CGRectGetMidY(v160);
        v150.x = MinX;
        v13 = 0.5;
        v150.y = MidY;
        v151.x = MaxX;
        CGContextDrawLinearGradient(c, v46, v150, v151, 0);
        CGGradientRelease(v46);
        CGContextRestoreGState(c);
      }

      [v141 drawInRect:v24 withAttributes:{v30, v38, v26, v28}];
      if (*(&self->super.super.super.isa + *(v20 + 244)) == 1)
      {
        v50 = [(ASCompetition *)self->_competition dailyScoreForParticipant:0 onDate:v21];
        v51 = [(ASCompetition *)self->_competition dailyScoreForParticipant:1 onDate:v21];
        if (v140)
        {
          v52 = ActivitySharingBundle();
          v53 = [v52 localizedStringForKey:@"COMPETITION_FUTURE_EMPTY_POINTS" value:&stru_2850F6650 table:@"Localizable"];

          v54 = ActivitySharingBundle();
          v55 = [v54 localizedStringForKey:@"COMPETITION_FUTURE_EMPTY_POINTS" value:&stru_2850F6650 table:@"Localizable"];
        }

        else
        {
          v56 = v51;
          v53 = ASCompetitionZeroPaddedScoreString(v50);
          v55 = ASCompetitionZeroPaddedScoreString(v56);
        }

        v144[0] = v126;
        v144[1] = v125;
        dateFont = self->_dateFont;
        v145[0] = v137;
        v145[1] = dateFont;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];
        v142[0] = v126;
        v142[1] = v125;
        v59 = self->_dateFont;
        v143[0] = v135;
        v143[1] = v59;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];
        [v53 sizeWithAttributes:v58];
        v62 = v61;
        v64 = v63;
        [v55 sizeWithAttributes:v60];
        v66 = v65;
        v68 = v67;
        [(UIFont *)self->_dateFont _scaledValueForValue:13.0];
        v70 = v38 + v69;
        [(UIFont *)self->_dateFont _scaledValueForValue:13.0];
        [v53 drawInRect:v58 withAttributes:{v30, v70 + v71, v62, v64}];
        [v55 drawInRect:v60 withAttributes:{v30, v70, v66, v68}];

        v15 = v127;
        v20 = 0x27E34E000;
      }

      [(ASCompetitionGraphView *)self _firstBarOriginXForDateLabelOriginX:v30 dateLabelWidth:v26];
      v73 = v72;
      if (self->_showsBackgroundScoreGuide)
      {
        v74 = 2.5;
      }

      else
      {
        v74 = 0.0;
      }

      v75 = self->_maxBarHeight + v74;
      v76 = v72 + self->_barWidth + self->_spaceBetweenBars;
      v77 = [(ASCompetition *)self->_competition opponentScores];
      [(ASCompetitionGraphView *)self _percentForScoreAtIndex:v19 scores:v77 maxScore:v134];
      v79 = v78;

      v80 = [(ASCompetition *)self->_competition scores];
      [(ASCompetitionGraphView *)self _percentForScoreAtIndex:v19 scores:v80 maxScore:v134];
      v82 = v81;

      v83 = v79 * self->_maxBarHeight;
      v84 = self->_barWidth;
      *&v79 = fmaxf(v83, v84);
      [(ASCompetitionGraphView *)self maxBarHeight];
      *&v85 = v85;
      v86 = fminf(*&v79, *&v85);
      *&v85 = v82 * self->_maxBarHeight;
      v87 = self->_barWidth;
      *&v79 = fmaxf(*&v85, v87);
      [(ASCompetitionGraphView *)self maxBarHeight];
      *&v88 = v88;
      v89 = fminf(*&v79, *&v88);
      v90 = v75 - v86;
      v91 = v75 - v89;
      v92 = self->_barWidth;
      if (v140)
      {
        if (!self->_drawsFutureScoreDots)
        {
          v99 = v132;
          goto LABEL_34;
        }

        v93 = v76;
        v94 = self->_barWidth;
        v95 = v132;
        CGPathAddRoundedRect(path, 0, *(&v91 - 1), v132, v132);
        v96 = v123;
      }

      else
      {
        v97 = v76;
        v98 = self->_barWidth;
        v95 = v132;
        CGPathAddRoundedRect(v130, 0, *(&v91 - 1), v132, v132);
        v96 = v129;
      }

      v161.origin.x = v73;
      v161.origin.y = v90;
      v161.size.width = v92;
      v99 = v95;
      v161.size.height = v86;
      CGPathAddRoundedRect(v96, 0, v161, v95, v95);
LABEL_34:
      v100 = self->_barWidth;
      v101 = self->_maxBarHeight;
      v162.origin.x = v76;
      v162.origin.y = v74;
      v162.size.width = v100;
      v162.size.height = v101;
      CGPathAddRoundedRect(v15, 0, v162, v99, v99);
      v163.origin.x = v73;
      v163.origin.y = v74;
      v163.size.width = v100;
      v163.size.height = v101;
      CGPathAddRoundedRect(v136, 0, v163, v99, v99);
      v102 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
      v18 = [v102 dateByAddingUnit:16 value:1 toDate:v21 options:0];

      ++v19;
      v21 = v18;
    }

    while (v133 != v19);
  }

  if (self->_showsBackgroundScoreGuide)
  {
    [(ASCompetitionGraphView *)self maxBarHeight];
    v103 = 0;
    v105 = 0.0;
    v106 = (v104 + 3.5) / 3.0;
    do
    {
      if (v118 > 0.0)
      {
        v107 = 0.0;
        do
        {
          v164.size.width = 1.5;
          v164.size.height = 1.5;
          v164.origin.x = v107;
          v164.origin.y = v105;
          CGPathAddEllipseInRect(Mutable, 0, v164);
          v107 = v107 + 3.5;
        }

        while (v107 < v118);
      }

      v105 = v106 + v105;
      ++v103;
    }

    while (v103 != 4);
    [(ASCompetitionGraphView *)self maxBarHeight];
    v108 = MEMORY[0x277D74300];
    v109 = v122;
    v110 = [v108 fu_sausageFontOfSize:13.0];
    v111 = ASCompetitionZeroPaddedScoreString(v134);
    v112 = objc_alloc(MEMORY[0x277CCA898]);
    v113 = *MEMORY[0x277D740C0];
    v146[0] = *MEMORY[0x277D740A8];
    v146[1] = v113;
    v147 = v110;
    v148 = v109;
    v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:v146 count:2];

    v115 = [v112 initWithString:v111 attributes:v114];
    [v115 size];
    [v115 drawInRect:{v118 - v116 + -1.0, 0.0, v116, v117}];
  }

  _DrawPathWithColor(c, Mutable, v122);
  _DrawPathWithColor(c, v15, v122);
  _DrawPathWithColor(c, v136, v122);
  _DrawPathWithColor(c, v130, v137);
  _DrawPathWithColor(c, path, v121);
  _DrawPathWithColor(c, v129, v135);
  _DrawPathWithColor(c, v123, v119);
  CGPathRelease(Mutable);
  CGPathRelease(v130);
  CGPathRelease(v129);
  CGPathRelease(path);
  CGPathRelease(v123);
  CGPathRelease(v15);
  CGPathRelease(v136);
  UIGraphicsPopContext();
}

- (void)setCompetition:(id)a3
{
  objc_storeStrong(&self->_competition, a3);

  [(ASCompetitionGraphView *)self setNeedsLayout];
}

- (void)setDateFormat:(id)a3
{
  [(NSDateFormatter *)self->_dateFormatter setDateFormat:a3];

  [(ASCompetitionGraphView *)self setNeedsLayout];
}

- (double)lastBaselineY
{
  v3 = 0.0;
  v4 = 0.0;
  if ([(ASCompetitionGraphView *)self drawsDailyScoreLabels])
  {
    [(UIFont *)self->_dateFont _scaledValueForValue:13.0];
    v4 = v5 + v5;
  }

  if ([(ASCompetitionGraphView *)self showsBackgroundScoreGuide])
  {
    v3 = 5.0;
  }

  maxBarHeight = self->_maxBarHeight;
  [(UIFont *)self->_dateFont _scaledValueForValue:self->_dayLabelBaselineOffset];
  return v3 + v4 + maxBarHeight + v7;
}

- (id)_attributesForDateLabelWithDate:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = &OBJC_IVAR___ASCompetitionGraphView__dateFont;
  v5 = &OBJC_IVAR___ASCompetitionGraphView__dateColor;
  if (self->_highlightsCurrentDay)
  {
    v6 = MEMORY[0x277CBEA80];
    v7 = a3;
    v8 = [v6 hk_gregorianCalendar];
    v9 = [v8 isDateInToday:v7];

    if (v9)
    {
      v5 = &OBJC_IVAR___ASCompetitionGraphView__highlightedDateColor;
      v4 = &OBJC_IVAR___ASCompetitionGraphView__currentDateFont;
    }
  }

  v10 = *(&self->super.super.super.isa + *v5);
  v11 = *(&self->super.super.super.isa + *v4);
  v12 = *MEMORY[0x277D740A8];
  v17[0] = *MEMORY[0x277D740C0];
  v17[1] = v12;
  v18[0] = v10;
  v18[1] = v11;
  v13 = MEMORY[0x277CBEAC0];
  v14 = v11;
  v15 = [v13 dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v15;
}

- (double)_firstBarOriginXForDateLabelOriginX:(double)result dateLabelWidth:(double)a4
{
  if (!self->_alignment)
  {
    result = a4 * 0.5 + result - self->_barWidth - self->_spaceBetweenBars * 0.5;
  }

  if (self->_showsBackgroundDateGuide)
  {
    return result + 1.0 + 1.0;
  }

  return result;
}

- (unint64_t)_maxDailyScore
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(ASCompetitionGraphView *)self _allScores];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) unsignedIntegerValue];
        if (v5 <= v8)
        {
          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_minDailyScore
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(ASCompetitionGraphView *)self _allScores];
  if ([v2 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = -1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue];
          if (v7 >= v9)
          {
            v7 = v9;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_allScores
{
  v3 = [(ASCompetition *)self->_competition scores];
  v4 = [(ASCompetition *)self->_competition opponentScores];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (double)_percentForScoreAtIndex:(unint64_t)a3 scores:(id)a4 maxScore:(unint64_t)a5
{
  v7 = a4;
  v8 = 0.0;
  if ([v7 count] > a3)
  {
    v9 = [v7 objectAtIndexedSubscript:a3];
    v10 = [v9 unsignedIntegerValue];

    if (v10)
    {
      v8 = v10 / a5;
    }
  }

  return v8;
}

@end