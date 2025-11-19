@interface _MoreEventsView
- (BOOL)isNarrow;
- (_MoreEventsView)init;
- (double)pillInset;
- (id)stringAttributes;
- (void)_updateString;
- (void)draw;
- (void)loadViewsIfNeeded;
- (void)setFrame:(CGRect)a3;
- (void)setIsCompact:(BOOL)a3;
- (void)update;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation _MoreEventsView

- (_MoreEventsView)init
{
  v6.receiver = self;
  v6.super_class = _MoreEventsView;
  v2 = [(_MoreEventsView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfEvents = 0;
    string = v2->_string;
    v2->_string = &stru_1002133B8;
  }

  return v3;
}

- (void)loadViewsIfNeeded
{
  if (!self->_label)
  {
    v3 = objc_opt_new();
    label = self->_label;
    self->_label = v3;

    [(UILabel *)self->_label setClipsToBounds:0];
    v5 = [NSAttributedString alloc];
    string = self->_string;
    v7 = [(_MoreEventsView *)self stringAttributes];
    v8 = [v5 initWithString:string attributes:v7];
    [(UILabel *)self->_label setAttributedText:v8];

    v9 = self->_label;

    [(_MoreEventsView *)self addSubview:v9];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  if (a3)
  {
    [(_MoreEventsView *)self loadViewsIfNeeded];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_renderFrame = &self->_renderFrame;
  v9 = self->_renderFrame.size.width == a3.size.width && self->_renderFrame.size.height == a3.size.height;
  if (v9 && ((v10 = self->_label) == 0 || (([(UILabel *)v10 frame], v12 == width) ? (v13 = v11 == height) : (v13 = 0), v13)))
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MidX = CGRectGetMidX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MidY = CGRectGetMidY(v20);
    v18.receiver = self;
    v18.super_class = _MoreEventsView;
    [(_MoreEventsView *)&v18 setCenter:MidX, MidY];
  }

  else
  {
    label = self->_label;
    if (label)
    {
      [(UILabel *)label setFrame:0.0, 0.0, p_renderFrame->size.width, p_renderFrame->size.height];
    }

    p_renderFrame->origin.x = x;
    p_renderFrame->origin.y = y;
    p_renderFrame->size.width = width;
    p_renderFrame->size.height = height;
    v17.receiver = self;
    v17.super_class = _MoreEventsView;
    [(_MoreEventsView *)&v17 setFrame:x, y, width, height];
  }

  p_renderFrame->origin.x = x;
  p_renderFrame->origin.y = y;
  p_renderFrame->size.width = width;
  p_renderFrame->size.height = height;
}

- (void)setIsCompact:(BOOL)a3
{
  if (self->_isCompact != a3)
  {
    self->_isCompact = a3;
    [(_MoreEventsView *)self _updateString];
  }
}

- (void)update
{
  [(_MoreEventsView *)self _updateString];

  [(_MoreEventsView *)self setNeedsLayout];
}

- (void)_updateString
{
  if (self->_isCompact)
  {
    if (qword_1002518F0 != -1)
    {
      sub_10016FE04();
    }

    v13 = [NSNumber numberWithInteger:self->_numberOfEvents];
    v3 = [qword_1002518E8 objectForKey:?];
    if (!v3)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"+%ld" value:&stru_1002133B8 table:0];
      v3 = [NSString localizedStringWithFormat:v5, self->_numberOfEvents];

      [qword_1002518E8 setObject:v3 forKey:v13];
    }

    if (![(NSString *)self->_string isEqualToString:v3])
    {
      objc_storeStrong(&self->_string, v3);
      if (self->_label)
      {
        v6 = [NSAttributedString alloc];
        string = self->_string;
        v8 = [(_MoreEventsView *)self stringAttributes];
        v9 = [v6 initWithString:string attributes:v8];
        [(UILabel *)self->_label setAttributedText:v9];
      }
    }
  }

  else
  {
    if (qword_100251900 != -1)
    {
      sub_10016FDF0();
    }

    v13 = [NSNumber numberWithInteger:self->_numberOfEvents];
    v10 = [qword_1002518F8 objectForKey:?];
    if (!v10)
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"+%ld more" value:&stru_1002133B8 table:0];
      v10 = [NSString localizedStringWithFormat:v12, self->_numberOfEvents];

      [qword_1002518F8 setObject:v10 forKey:v13];
    }

    v3 = self->_string;
    self->_string = v10;
  }
}

- (BOOL)isNarrow
{
  if (!self->_isCompact)
  {
    return 0;
  }

  height = self->_renderFrame.size.height;
  +[MonthViewOccurrence occurrenceHeight];
  return height < v3;
}

- (double)pillInset
{
  [(_MoreEventsView *)self isNarrow];

  CalRoundToScreenScale();
  return result;
}

- (id)stringAttributes
{
  isCompact = self->_isCompact;
  height = self->_renderFrame.size.height;
  +[MonthViewOccurrence occurrenceHeight];

  return [MonthWeekOccurrencesView xMoreStringAttributesCompact:isCompact narrow:height < v4];
}

- (void)draw
{
  x = self->_renderFrame.origin.x;
  y = self->_renderFrame.origin.y;
  width = self->_renderFrame.size.width;
  height = self->_renderFrame.size.height;
  if (!self->_isCompact)
  {
    CalRoundToScreenScale();
    v8 = v7;
    CalRoundToScreenScale();
    x = x + v8;
    y = y + 0.0;
    width = width - (v8 + v9);
  }

  v10 = [NSAttributedString alloc];
  string = self->_string;
  v12 = [(_MoreEventsView *)self stringAttributes];
  v16 = [v10 initWithString:string attributes:v12];

  [v16 size];
  CalRoundToScreenScale();
  v14 = v13;
  CalRoundToScreenScale();
  [v16 drawWithRect:33 options:0 context:{x + 0.0, y + v14, width, height - (v14 + v15)}];
}

@end