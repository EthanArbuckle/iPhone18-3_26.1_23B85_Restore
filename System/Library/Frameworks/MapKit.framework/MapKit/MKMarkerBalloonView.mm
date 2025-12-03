@interface MKMarkerBalloonView
- (MKMarkerBalloonView)initWithMarkerStyle:(id)style;
- (void)_setupContentViewWithMarkerStyle:(id)style;
- (void)updateWithMarkerStyle:(id)style;
@end

@implementation MKMarkerBalloonView

- (void)updateWithMarkerStyle:(id)style
{
  v14.receiver = self;
  v14.super_class = MKMarkerBalloonView;
  styleCopy = style;
  [(MKMarkerView *)&v14 updateWithMarkerStyle:styleCopy];
  balloonImage = [styleCopy balloonImage];
  [(MKMarkerView *)self _updateWithImage:balloonImage];

  [styleCopy contentRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(MKMarkerContentView *)self->_contentView setFrame:v7, v9, v11, v13];
}

- (void)_setupContentViewWithMarkerStyle:(id)style
{
  styleCopy = style;
  v5 = [MKMarkerContentView alloc];
  [styleCopy contentRect];
  v6 = [(MKMarkerContentView *)v5 initWithFrame:?];
  contentView = self->_contentView;
  self->_contentView = v6;

  configuration = [styleCopy configuration];

  selected = [configuration selected];
  v10 = 32.0;
  if (!selected)
  {
    v10 = 16.0;
  }

  [(MKMarkerContentView *)self->_contentView setGlyphFontSize:v10];

  v11 = self->_contentView;

  [(MKMarkerBalloonView *)self addSubview:v11];
}

- (MKMarkerBalloonView)initWithMarkerStyle:(id)style
{
  styleCopy = style;
  balloonImage = [styleCopy balloonImage];
  v8.receiver = self;
  v8.super_class = MKMarkerBalloonView;
  v6 = [(MKMarkerView *)&v8 initWithImage:balloonImage];

  if (v6)
  {
    [(MKMarkerBalloonView *)v6 updateWithMarkerStyle:styleCopy];
    [(MKMarkerBalloonView *)v6 _setupContentViewWithMarkerStyle:styleCopy];
  }

  return v6;
}

@end