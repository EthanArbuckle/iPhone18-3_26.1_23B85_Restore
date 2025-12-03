@interface ASCompetitionGizmoDetailView
- (ASCompetitionGizmoDetailView)initWithDetailViewType:(int64_t)type;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutForWidth:(double)width;
- (void)layoutSubviews;
- (void)setFriend:(id)friend competition:(id)competition;
@end

@implementation ASCompetitionGizmoDetailView

- (ASCompetitionGizmoDetailView)initWithDetailViewType:(int64_t)type
{
  v31.receiver = self;
  v31.super_class = ASCompetitionGizmoDetailView;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(ASCompetitionGizmoDetailView *)&v31 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  if (!v8)
  {
    return v8;
  }

  v9 = _BackgroundColorForDetailViewType(type);
  [(ASCompetitionGizmoDetailView *)v8 setBackgroundColor:v9];

  layer = [(ASCompetitionGizmoDetailView *)v8 layer];
  [layer setCornerRadius:6.0];

  v8->_type = type;
  modules = _ViewModulesForDetailViewType(type);
  v8->_modules = modules;
  if (modules)
  {
    v15 = +[ASCompetitionScoreViewConfiguration gizmoTotalScoreConfiguration];
    v16 = [[ASCompetitionScoreView alloc] initWithConfiguration:v15];
    totalScoreView = v8->_totalScoreView;
    v8->_totalScoreView = v16;

    [(ASCompetitionGizmoDetailView *)v8 addSubview:v8->_totalScoreView];
    modules = v8->_modules;
    if ((modules & 2) == 0)
    {
LABEL_4:
      if ((modules & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((modules & 2) == 0)
  {
    goto LABEL_4;
  }

  v18 = +[ASCompetitionGraphView gizmoGraph];
  graphView = v8->_graphView;
  v8->_graphView = v18;

  v20 = v8->_graphView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ASCompetitionGraphView *)v20 setBackgroundColor:clearColor];

  [(ASCompetitionGizmoDetailView *)v8 addSubview:v8->_graphView];
  modules = v8->_modules;
  if ((modules & 4) == 0)
  {
LABEL_5:
    if ((modules & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if ((modules & 4) != 0)
    {
      v27 = _CreateSeparatorView();
      timeRemainingSeparator = v8->_timeRemainingSeparator;
      v8->_timeRemainingSeparator = v27;

      [(ASCompetitionGizmoDetailView *)v8 addSubview:v8->_timeRemainingSeparator];
    }

    v29 = [[ASCompetitionTimeRemainingLabel alloc] initWithFrame:v4, v5, v6, v7];
    timeRemainingLabel = v8->_timeRemainingLabel;
    v8->_timeRemainingLabel = v29;

    [(ASCompetitionGizmoDetailView *)v8 addSubview:v8->_timeRemainingLabel];
    if ((v8->_modules & 0x10) != 0)
    {
      goto LABEL_7;
    }

    return v8;
  }

LABEL_11:
  v22 = _CreateSeparatorView();
  totalWinsSeparator = v8->_totalWinsSeparator;
  v8->_totalWinsSeparator = v22;

  [(ASCompetitionGizmoDetailView *)v8 addSubview:v8->_totalWinsSeparator];
  v24 = +[ASCompetitionScoreViewConfiguration gizmoTotalWinsConfiguration];
  v25 = [[ASCompetitionScoreView alloc] initWithConfiguration:v24];
  totalWinsScoreView = v8->_totalWinsScoreView;
  v8->_totalWinsScoreView = v25;

  [(ASCompetitionGizmoDetailView *)v8 addSubview:v8->_totalWinsScoreView];
  modules = v8->_modules;
  if ((modules & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((modules & 0x10) != 0)
  {
LABEL_7:
    v12 = [[ASCompetitionMessageBubbleView alloc] initWithFrame:v4, v5, v6, v7];
    messageBubbleView = v8->_messageBubbleView;
    v8->_messageBubbleView = v12;

    [(ASCompetitionGizmoDetailView *)v8 addSubview:v8->_messageBubbleView];
  }

  return v8;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ASCompetitionGizmoDetailView;
  [(ASCompetitionGizmoDetailView *)&v4 layoutSubviews];
  [(ASCompetitionGizmoDetailView *)self bounds];
  [(ASCompetitionGizmoDetailView *)self layoutForWidth:v3];
}

- (void)layoutForWidth:(double)width
{
  v45 = *MEMORY[0x277D85DE8];
  previousLayoutWidth = self->_previousLayoutWidth;
  if (!previousLayoutWidth || ([(NSNumber *)previousLayoutWidth floatValue], vabdd_f64(v6, width) >= 0.00000011920929))
  {
    [(ASCompetitionScoreView *)self->_totalScoreView sizeToFit];
    [(ASCompetitionScoreView *)self->_totalWinsScoreView sizeToFit];
    [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel sizeToFit];
    [(ASCompetitionMessageBubbleView *)self->_messageBubbleView sizeToFit];
    [(ASCompetitionScoreView *)self->_totalWinsScoreView sizeToFit];
    [(ASCompetitionScoreView *)self->_totalScoreView bounds];
    [(ASCompetitionScoreView *)self->_totalScoreView setFrame:0.0, 0.0, width, CGRectGetHeight(v46)];
    [(ASCompetitionScoreView *)self->_totalScoreView lastBaselineY];
    graphView = self->_graphView;
    if (graphView)
    {
      v9 = v7 + 10.0;
      [(ASCompetitionGraphView *)graphView preferredHeight];
      [(ASCompetitionGraphView *)self->_graphView setFrame:0.0, v9, width, v10];
      [(ASCompetitionGraphView *)self->_graphView frame];
      MinY = CGRectGetMinY(v47);
      [(ASCompetitionGraphView *)self->_graphView lastBaselineY];
      v7 = MinY + v12;
    }

    if (self->_totalWinsScoreView)
    {
      v13 = 6.5;
      if (!self->_graphView)
      {
        v13 = 10.0;
      }

      [(UIView *)self->_totalWinsSeparator setFrame:2.0, v7 + v13, width + -4.0, 1.5];
      [(UIView *)self->_totalWinsSeparator frame];
      MaxY = CGRectGetMaxY(v48);
      [(ASCompetitionScoreView *)self->_totalWinsScoreView bounds];
      [(ASCompetitionScoreView *)self->_totalWinsScoreView setFrame:0.0, MaxY, width, CGRectGetHeight(v49)];
      [(ASCompetitionScoreView *)self->_totalWinsScoreView frame];
      v15 = CGRectGetMinY(v50);
      [(ASCompetitionScoreView *)self->_totalWinsScoreView lastBaselineY];
      v7 = v15 + v16;
    }

    timeRemainingSeparator = self->_timeRemainingSeparator;
    if (timeRemainingSeparator)
    {
      v18 = 10.0;
      if (!self->_totalWinsScoreView)
      {
        v18 = 6.5;
      }

      [(UIView *)timeRemainingSeparator setFrame:2.0, v7 + v18, width + -4.0, 1.5];
      [(UIView *)self->_timeRemainingSeparator frame];
      v7 = CGRectGetMaxY(v51);
    }

    if (self->_timeRemainingLabel)
    {
      messageBubbleView = self->_messageBubbleView;
      if (messageBubbleView)
      {
        v20 = 5.0;
        if (!self->_timeRemainingSeparator)
        {
          v20 = 13.0;
        }

        [(ASCompetitionMessageBubbleView *)messageBubbleView setFrame:width + -5.0 + -30.0, v7 + v20, 30.0, 30.0];
        [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel bounds];
        Height = CGRectGetHeight(v52);
        [(ASCompetitionMessageBubbleView *)self->_messageBubbleView frame];
        v22 = CGRectGetMidY(v53) + Height * -0.5;
        [(ASCompetitionMessageBubbleView *)self->_messageBubbleView frame];
        v23 = CGRectGetMinX(v54) + -5.0 + -4.0;
        [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel frame];
        [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel setFrame:5.0, v22, fmin(CGRectGetWidth(v55), v23), Height];
        if ([MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1)
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          timeRemainingLabel = self->_timeRemainingLabel;
          v43[0] = self->_messageBubbleView;
          v43[1] = timeRemainingLabel;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:{2, 0}];
          v26 = [v25 countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v40;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v39 + 1) + 8 * i);
                [v30 frame];
                v31 = width - CGRectGetWidth(v56);
                [v30 frame];
                v32 = v31 - CGRectGetMinX(v57);
                [v30 frame];
                v33 = CGRectGetMinY(v58);
                [v30 frame];
                Width = CGRectGetWidth(v59);
                [v30 frame];
                [v30 setFrame:{v32, v33, Width, CGRectGetHeight(v60)}];
              }

              v27 = [v25 countByEnumeratingWithState:&v39 objects:v44 count:16];
            }

            while (v27);
          }
        }
      }

      else
      {
        v35 = 18.5;
        if (self->_graphView)
        {
          v35 = 19.0;
        }

        v36 = v7 + v35;
        [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel bounds];
        [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel setFrame:5.0, 0.0, width + -10.0, CGRectGetHeight(v61)];
        [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel _setLastLineBaselineFrameOriginY:v36];
      }
    }

    v37 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    v38 = self->_previousLayoutWidth;
    self->_previousLayoutWidth = v37;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(ASCompetitionGizmoDetailView *)self layoutForWidth:fits.width, fits.height];
  timeRemainingLabel = self->_timeRemainingLabel;
  if (timeRemainingLabel)
  {
    if (self->_messageBubbleView)
    {
      [(ASCompetitionMessageBubbleView *)self->_messageBubbleView frame];
      MaxY = CGRectGetMaxY(v16);
      v7 = 5.0;
    }

    else
    {
      [(ASCompetitionTimeRemainingLabel *)timeRemainingLabel _lastLineBaselineFrameOriginY];
      v7 = 10.5;
    }
  }

  else
  {
    v8 = 416;
    totalWinsScoreView = self->_totalWinsScoreView;
    if (!totalWinsScoreView)
    {
      graphView = self->_graphView;
      if (graphView)
      {
        [(ASCompetitionGraphView *)graphView frame];
        v12 = CGRectGetMaxY(v18);
        goto LABEL_8;
      }

      v8 = 408;
      totalWinsScoreView = self->_totalScoreView;
    }

    [(ASCompetitionScoreView *)totalWinsScoreView frame];
    MinY = CGRectGetMinY(v17);
    [*(&self->super.super.super.isa + v8) lastBaselineY];
    MaxY = MinY + v11;
    v7 = 10.0;
  }

  v12 = MaxY + v7;
LABEL_8:
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setFriend:(id)friend competition:(id)competition
{
  friendCopy = friend;
  totalScoreView = self->_totalScoreView;
  competitionCopy = competition;
  [(ASCompetitionScoreView *)totalScoreView setFriend:friendCopy competition:competitionCopy];
  [(ASCompetitionScoreView *)self->_totalWinsScoreView setFriend:friendCopy competition:competitionCopy];
  [(ASCompetitionGraphView *)self->_graphView setCompetition:competitionCopy];

  if (self->_timeRemainingLabel)
  {
    as_competitionStageString = [friendCopy as_competitionStageString];
    localizedUppercaseString = [as_competitionStageString localizedUppercaseString];
    [(ASCompetitionTimeRemainingLabel *)self->_timeRemainingLabel setText:localizedUppercaseString];
  }

  [(ASCompetitionGizmoDetailView *)self setNeedsLayout];
}

@end