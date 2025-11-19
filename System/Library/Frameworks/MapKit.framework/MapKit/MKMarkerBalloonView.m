@interface MKMarkerBalloonView
- (MKMarkerBalloonView)initWithMarkerStyle:(id)a3;
- (void)_setupContentViewWithMarkerStyle:(id)a3;
- (void)updateWithMarkerStyle:(id)a3;
@end

@implementation MKMarkerBalloonView

- (void)updateWithMarkerStyle:(id)a3
{
  v14.receiver = self;
  v14.super_class = MKMarkerBalloonView;
  v4 = a3;
  [(MKMarkerView *)&v14 updateWithMarkerStyle:v4];
  v5 = [v4 balloonImage];
  [(MKMarkerView *)self _updateWithImage:v5];

  [v4 contentRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(MKMarkerContentView *)self->_contentView setFrame:v7, v9, v11, v13];
}

- (void)_setupContentViewWithMarkerStyle:(id)a3
{
  v4 = a3;
  v5 = [MKMarkerContentView alloc];
  [v4 contentRect];
  v6 = [(MKMarkerContentView *)v5 initWithFrame:?];
  contentView = self->_contentView;
  self->_contentView = v6;

  v8 = [v4 configuration];

  v9 = [v8 selected];
  v10 = 32.0;
  if (!v9)
  {
    v10 = 16.0;
  }

  [(MKMarkerContentView *)self->_contentView setGlyphFontSize:v10];

  v11 = self->_contentView;

  [(MKMarkerBalloonView *)self addSubview:v11];
}

- (MKMarkerBalloonView)initWithMarkerStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 balloonImage];
  v8.receiver = self;
  v8.super_class = MKMarkerBalloonView;
  v6 = [(MKMarkerView *)&v8 initWithImage:v5];

  if (v6)
  {
    [(MKMarkerBalloonView *)v6 updateWithMarkerStyle:v4];
    [(MKMarkerBalloonView *)v6 _setupContentViewWithMarkerStyle:v4];
  }

  return v6;
}

@end