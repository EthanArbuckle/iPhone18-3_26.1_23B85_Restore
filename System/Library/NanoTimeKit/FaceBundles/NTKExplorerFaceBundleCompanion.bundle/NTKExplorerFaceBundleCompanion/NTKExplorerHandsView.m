@interface NTKExplorerHandsView
- (CGPoint)secondHandCenter;
- (id)initForDevice:(id)a3;
- (id)secondHandConfiguration;
- (void)applyColorPalette:(id)a3;
- (void)layoutSubviews;
- (void)setInlayColor:(id)a3;
- (void)setSecondHandDotColor:(id)a3;
@end

@implementation NTKExplorerHandsView

- (id)initForDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = NTKExplorerHandsView;
  v3 = [(NTKExplorerHandsView *)&v9 initForDevice:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 secondHandView];
    [v4 insertSubview:v5 atIndex:0];

    v6 = [v4 secondHandView];
    v7 = +[UIColor whiteColor];
    [v6 setHandDotColor:v7];
  }

  return v4;
}

- (id)secondHandConfiguration
{
  v3 = [(NTKExplorerHandsView *)self device];
  v4 = sub_3DE0(v3, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(NTKExplorerHandsView *)self device];
  v12 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v11];

  [v12 setHandWidth:v4];
  [v12 setHandLength:v6];
  [v12 setTailLength:v8];
  [v12 setPegStrokeWidth:v10];
  [v12 setPegRadius:0.0];
  [v12 setRoundedSecondHand:1];

  return v12;
}

- (void)setInlayColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKExplorerHandsView;
  v4 = a3;
  [(NTKExplorerHandsView *)&v6 setInlayColor:v4];
  v5 = [(NTKExplorerHandsView *)self secondHandView:v6.receiver];
  [v5 setHandDotColor:v4];
}

- (void)setSecondHandDotColor:(id)a3
{
  v5 = a3;
  if (self->_secondHandDotColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_secondHandDotColor, a3);
    v6 = [(NTKExplorerHandsView *)self secondHandView];
    [v6 setHandDotColor:v7];

    v5 = v7;
  }
}

- (void)applyColorPalette:(id)a3
{
  v4 = a3;
  v5 = [(NTKExplorerHandsView *)self minuteHandView];
  v6 = [v4 hands];
  [v5 setColor:v6];

  v7 = [(NTKExplorerHandsView *)self hourHandView];
  v8 = [v4 hands];
  [v7 setColor:v8];

  v9 = [(NTKExplorerHandsView *)self hourHandView];
  v10 = [v4 handsInlay];
  [v9 setInlayColor:v10];

  v11 = [(NTKExplorerHandsView *)self minuteHandView];
  v12 = [v4 handsInlay];
  [v11 setInlayColor:v12];

  v13 = [(NTKExplorerHandsView *)self secondHandView];
  v14 = [v4 secondHand];
  [v13 setColor:v14];

  v15 = [v4 secondHandInlay];

  [(NTKExplorerHandsView *)self setSecondHandDotColor:v15];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKExplorerHandsView;
  [(NTKExplorerHandsView *)&v4 layoutSubviews];
  v3 = [(NTKExplorerHandsView *)self secondHandView];
  [v3 setCenter:{self->_secondHandCenter.x, self->_secondHandCenter.y}];
}

- (CGPoint)secondHandCenter
{
  x = self->_secondHandCenter.x;
  y = self->_secondHandCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end