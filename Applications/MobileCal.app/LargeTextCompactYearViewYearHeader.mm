@interface LargeTextCompactYearViewYearHeader
+ (double)headerDaySpacingForWindowSize:(CGSize)size;
+ (double)headerYInsetForWindowSize:(CGSize)size;
+ (double)middleHeightForWindowSize:(CGSize)size;
- (double)heightBetweenLineAndNumber;
- (double)overlayLegendLineLength;
- (double)overlayLegendMonthBaseline;
- (double)overlayLegendYearBaseline;
- (id)overlayLegendFont;
- (id)yearNumberFont;
@end

@implementation LargeTextCompactYearViewYearHeader

+ (double)headerYInsetForWindowSize:(CGSize)size
{
  width = size.width;
  if (qword_100251DA0 != -1)
  {
    sub_100170D3C();
  }

  v4 = qword_100251D98;

  [v4 valueForSize:width];
  return result;
}

+ (double)middleHeightForWindowSize:(CGSize)size
{
  width = size.width;
  if (qword_100251DB0 != -1)
  {
    sub_100170D50();
  }

  v4 = qword_100251DA8;

  [v4 valueForSize:width];
  return result;
}

+ (double)headerDaySpacingForWindowSize:(CGSize)size
{
  width = size.width;
  if (qword_100251DC0 != -1)
  {
    sub_100170D64();
  }

  v4 = qword_100251DB8;

  [v4 valueForSize:width];
  return result;
}

- (double)heightBetweenLineAndNumber
{
  if (qword_100251DD0 != -1)
  {
    sub_100170D78();
  }

  v3 = qword_100251DC8;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (id)yearNumberFont
{
  if (qword_100251DE0 != -1)
  {
    sub_100170D8C();
  }

  v3 = qword_100251DD8;
  AnchoredValueCurrentWindowWidth(self);
  [v3 valueForSize:?];
  v5 = qword_100251DE8;
  if (!qword_100251DE8)
  {
    goto LABEL_7;
  }

  v6 = v4 - *&qword_100250C30;
  if (v4 - *&qword_100250C30 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.0001)
  {
LABEL_7:
    qword_100250C30 = *&v4;
    v7 = [UIFont boldSystemFontOfSize:?];
    v8 = qword_100251DE8;
    qword_100251DE8 = v7;

    v5 = qword_100251DE8;
  }

  return v5;
}

- (id)overlayLegendFont
{
  if (qword_100251DF8 != -1)
  {
    sub_100170DA0();
  }

  v3 = qword_100251DF0;
  AnchoredValueCurrentWindowWidth(self);
  [v3 valueForSize:?];

  return [UIFont systemFontOfSize:?];
}

- (double)overlayLegendYearBaseline
{
  [(LargeTextCompactYearViewYearHeader *)self overlayLegendMonthBaseline];
  overlayLegendFont = [(LargeTextCompactYearViewYearHeader *)self overlayLegendFont];
  [overlayLegendFont _bodyLeading];
  CalRoundToScreenScale();
  v5 = v4;

  return v5;
}

- (double)overlayLegendMonthBaseline
{
  if (qword_100251E08 != -1)
  {
    sub_100170DB4();
  }

  v3 = qword_100251E00;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)overlayLegendLineLength
{
  if (qword_100251E18 != -1)
  {
    sub_100170DC8();
  }

  v3 = qword_100251E10;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

@end