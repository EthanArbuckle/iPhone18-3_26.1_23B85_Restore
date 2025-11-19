@interface ASCompetitionTimeRemainingLabel
- (ASCompetitionTimeRemainingLabel)initWithFrame:(CGRect)a3;
@end

@implementation ASCompetitionTimeRemainingLabel

- (ASCompetitionTimeRemainingLabel)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = ASCompetitionTimeRemainingLabel;
  v3 = [(ASCompetitionTimeRemainingLabel *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCompetitionTimeRemainingLabel *)v3 setTextAlignment:1];
    v5 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(ASCompetitionTimeRemainingLabel *)v4 setFont:v5];

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(ASCompetitionTimeRemainingLabel *)v4 setTextColor:v6];

    [(ASCompetitionTimeRemainingLabel *)v4 setAllowsDefaultTighteningForTruncation:1];
    [(ASCompetitionTimeRemainingLabel *)v4 setNumberOfLines:0];
  }

  return v4;
}

@end