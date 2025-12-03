@interface CHFriendDetailCompetitionGraphCell
- (CHFriendDetailCompetitionGraphCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCompetition:(id)competition;
@end

@implementation CHFriendDetailCompetitionGraphCell

- (CHFriendDetailCompetitionGraphCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CHFriendDetailCompetitionGraphCell;
  v3 = [(CHFriendDetailCompetitionGraphCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[ASCompetitionGraphView companionGraph];
    graphView = v3->_graphView;
    v3->_graphView = v4;

    [(CHFriendDetailCompetitionGraphCell *)v3 addSubview:v3->_graphView];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(CHFriendDetailCompetitionGraphCell *)self bounds];
  Width = CGRectGetWidth(v7);
  [(ASCompetitionGraphView *)self->_graphView preferredHeight];
  [(ASCompetitionGraphView *)self->_graphView setFrame:0.0, 0.0, Width, v4];
  graphView = self->_graphView;

  [(ASCompetitionGraphView *)graphView setNeedsLayout];
}

- (void)setCompetition:(id)competition
{
  [(ASCompetitionGraphView *)self->_graphView setCompetition:competition];

  [(CHFriendDetailCompetitionGraphCell *)self setNeedsLayout];
}

@end