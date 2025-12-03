@interface ASCompetitionTimeRemainingLabel
- (ASCompetitionTimeRemainingLabel)initWithFrame:(CGRect)frame;
@end

@implementation ASCompetitionTimeRemainingLabel

- (ASCompetitionTimeRemainingLabel)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = ASCompetitionTimeRemainingLabel;
  v3 = [(ASCompetitionTimeRemainingLabel *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCompetitionTimeRemainingLabel *)v3 setTextAlignment:1];
    v5 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(ASCompetitionTimeRemainingLabel *)v4 setFont:v5];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(ASCompetitionTimeRemainingLabel *)v4 setTextColor:whiteColor];

    [(ASCompetitionTimeRemainingLabel *)v4 setAllowsDefaultTighteningForTruncation:1];
    [(ASCompetitionTimeRemainingLabel *)v4 setNumberOfLines:0];
  }

  return v4;
}

@end