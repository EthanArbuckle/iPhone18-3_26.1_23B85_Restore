@interface CHFriendDetailCompetitionGraphCell
- (CHFriendDetailCompetitionGraphCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCompetition:(id)a3;
@end

@implementation CHFriendDetailCompetitionGraphCell

- (CHFriendDetailCompetitionGraphCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CHFriendDetailCompetitionGraphCell;
  v3 = [(CHFriendDetailCompetitionGraphCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setCompetition:(id)a3
{
  [(ASCompetitionGraphView *)self->_graphView setCompetition:a3];

  [(CHFriendDetailCompetitionGraphCell *)self setNeedsLayout];
}

@end