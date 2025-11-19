@interface BuddyTableViewCell
- (void)layoutSubviews;
- (void)resizeCellLabelAndFieldIfOverlap;
@end

@implementation BuddyTableViewCell

- (void)resizeCellLabelAndFieldIfOverlap
{
  if ([(BuddyTableViewCell *)self style]== 1000)
  {
    v2 = [(BuddyTableViewCell *)self editableTextField];
    [v2 frame];
    *&v18[8] = v3;
    *v18 = v4;
    *&v18[24] = v5;
    *&v18[16] = v6;

    if (!CGRectIsEmpty(*v18))
    {
      v7 = [(BuddyTableViewCell *)self textLabel];
      [v7 frame];
      r2_8 = v8;
      r2 = v9;
      r2_24 = v10;
      r2_16 = v11;

      v21.size.height = r2_24;
      v21.size.width = r2_16 + 10.0;
      v21.origin.y = r2_8;
      v21.origin.x = r2;
      v20 = CGRectIntersection(*v18, v21);
      rect_16 = v20.size.width;
      if (!CGRectIsNull(v20))
      {
        v12 = [(BuddyTableViewCell *)self editableTextField];
        [v12 setFrame:{*v18 + rect_16, *&v18[8], *&v18[16] - rect_16, *&v18[24], *v18 + rect_16, *&v18[8], *&v18[16] - rect_16, *&v18[24]}];
      }
    }
  }
}

- (void)layoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = BuddyTableViewCell;
  [(BuddyTableViewCell *)&v2 layoutSubviews];
  [(BuddyTableViewCell *)v4 resizeCellLabelAndFieldIfOverlap];
}

@end