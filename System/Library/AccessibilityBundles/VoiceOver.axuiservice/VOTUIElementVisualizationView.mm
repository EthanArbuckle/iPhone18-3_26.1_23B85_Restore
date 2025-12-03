@interface VOTUIElementVisualizationView
- (VOTUIElementVisualizationView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setElementFrames:(id)frames labels:(id)labels uiClasses:(id)classes;
@end

@implementation VOTUIElementVisualizationView

- (VOTUIElementVisualizationView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = VOTUIElementVisualizationView;
  v3 = [(VOTUIElementVisualizationView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = +[UIColor clearColor];
  [(VOTUIElementVisualizationView *)v3 setBackgroundColor:v4];

  [(VOTUIElementVisualizationView *)v3 setOpaque:0];
  v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  numberLabel = v3->_numberLabel;
  v3->_numberLabel = v5;

  v7 = v3->_numberLabel;
  v8 = [UIColor colorWithRed:0.0 green:255.0 blue:0.0 alpha:0.8];
  [(UILabel *)v3->_numberLabel setTextColor:v8];
  [(UILabel *)v7 setTextColor:v8];

  v9 = v3->_numberLabel;
  v10 = +[UIColor blackColor];
  [(UILabel *)v9 setShadowColor:v10];

  v11 = v3->_numberLabel;
  v12 = [UIFont systemFontOfSize:18.0];
  [(UILabel *)v11 setFont:v12];

  return v3;
}

- (void)setElementFrames:(id)frames labels:(id)labels uiClasses:(id)classes
{
  framesCopy = frames;
  labelsCopy = labels;
  classesCopy = classes;
  frames = self->_frames;
  self->_frames = framesCopy;
  v12 = framesCopy;

  labels = self->_labels;
  self->_labels = labelsCopy;
  v14 = labelsCopy;

  uiClasses = self->_uiClasses;
  self->_uiClasses = classesCopy;

  [(VOTUIElementVisualizationView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [UIColor colorWithWhite:0.0 alpha:0.0];
  [v8 set];

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  UIRectFill(v24);
  if ([(NSArray *)self->_frames count])
  {
    v9 = 0;
    v17 = v19;
    do
    {
      if (v9 >= [(NSArray *)self->_labels count]|| v9 >= [(NSArray *)self->_uiClasses count])
      {
        break;
      }

      v10 = [(NSArray *)self->_frames objectAtIndexedSubscript:v9];
      CGRectFromString(v10);
      v11 = [UIBezierPath bezierPathWithRect:?];
      [v11 setLineWidth:2.0];
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v12 = qword_4B318;
      v23 = qword_4B318;
      if (!qword_4B318)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v19[0] = sub_C238;
        v19[1] = &unk_3D1A0;
        v19[2] = &v20;
        sub_C238(v18);
        v12 = v21[3];
      }

      v13 = v12;
      _Block_object_dispose(&v20, 8);
      v14 = [(NSArray *)self->_uiClasses objectAtIndexedSubscript:v9];
      v15 = [v12 uiClassForName:v14];

      v16 = [UIColor colorWithHue:v15 * 3.05263158 saturation:1.0 brightness:1.0 alpha:0.8];
      [v16 set];
      [v11 stroke];
      [(UILabel *)self->_numberLabel sizeToFit];
      [(UILabel *)self->_numberLabel frame];
      UIRectCenteredIntegralRect();
      [(UILabel *)self->_numberLabel drawTextInRect:?];

      ++v9;
    }

    while (v9 < [(NSArray *)self->_frames count]);
  }
}

@end