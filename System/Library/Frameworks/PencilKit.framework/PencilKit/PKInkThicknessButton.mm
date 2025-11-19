@interface PKInkThicknessButton
@end

@implementation PKInkThicknessButton

void __46___PKInkThicknessButton_setSelected_animated___block_invoke(uint64_t a1)
{
  v2 = [(_PKInkThicknessButton *)*(a1 + 32) backgroundColorForIsSelected:0 highlighted:?];
  [*(a1 + 32) setBackgroundColor:v2];

  v3 = [(_PKInkThicknessButton *)*(a1 + 32) imageTintColorForIsSelected:0 highlighted:?];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 760);
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  [v5 setTintColor:v3];
}

void __52___PKInkThicknessButton__animateToHighlightedState___block_invoke(uint64_t a1)
{
  v2 = -[_PKInkThicknessButton backgroundColorForIsSelected:highlighted:](*(a1 + 32), [*(a1 + 32) isSelected], *(a1 + 40));
  [*(a1 + 32) setBackgroundColor:v2];

  v3 = -[_PKInkThicknessButton imageTintColorForIsSelected:highlighted:](*(a1 + 32), [*(a1 + 32) isSelected], *(a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 760);
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  [v5 setTintColor:v3];
}

@end