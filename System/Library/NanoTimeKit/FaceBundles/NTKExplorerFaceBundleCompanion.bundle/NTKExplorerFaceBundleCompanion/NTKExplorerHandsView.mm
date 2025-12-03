@interface NTKExplorerHandsView
- (CGPoint)secondHandCenter;
- (id)initForDevice:(id)device;
- (id)secondHandConfiguration;
- (void)applyColorPalette:(id)palette;
- (void)layoutSubviews;
- (void)setInlayColor:(id)color;
- (void)setSecondHandDotColor:(id)color;
@end

@implementation NTKExplorerHandsView

- (id)initForDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = NTKExplorerHandsView;
  v3 = [(NTKExplorerHandsView *)&v9 initForDevice:device];
  v4 = v3;
  if (v3)
  {
    secondHandView = [v3 secondHandView];
    [v4 insertSubview:secondHandView atIndex:0];

    secondHandView2 = [v4 secondHandView];
    v7 = +[UIColor whiteColor];
    [secondHandView2 setHandDotColor:v7];
  }

  return v4;
}

- (id)secondHandConfiguration
{
  device = [(NTKExplorerHandsView *)self device];
  v4 = sub_3DE0(device, device);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  device2 = [(NTKExplorerHandsView *)self device];
  v12 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:device2];

  [v12 setHandWidth:v4];
  [v12 setHandLength:v6];
  [v12 setTailLength:v8];
  [v12 setPegStrokeWidth:v10];
  [v12 setPegRadius:0.0];
  [v12 setRoundedSecondHand:1];

  return v12;
}

- (void)setInlayColor:(id)color
{
  v6.receiver = self;
  v6.super_class = NTKExplorerHandsView;
  colorCopy = color;
  [(NTKExplorerHandsView *)&v6 setInlayColor:colorCopy];
  v5 = [(NTKExplorerHandsView *)self secondHandView:v6.receiver];
  [v5 setHandDotColor:colorCopy];
}

- (void)setSecondHandDotColor:(id)color
{
  colorCopy = color;
  if (self->_secondHandDotColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_secondHandDotColor, color);
    secondHandView = [(NTKExplorerHandsView *)self secondHandView];
    [secondHandView setHandDotColor:v7];

    colorCopy = v7;
  }
}

- (void)applyColorPalette:(id)palette
{
  paletteCopy = palette;
  minuteHandView = [(NTKExplorerHandsView *)self minuteHandView];
  hands = [paletteCopy hands];
  [minuteHandView setColor:hands];

  hourHandView = [(NTKExplorerHandsView *)self hourHandView];
  hands2 = [paletteCopy hands];
  [hourHandView setColor:hands2];

  hourHandView2 = [(NTKExplorerHandsView *)self hourHandView];
  handsInlay = [paletteCopy handsInlay];
  [hourHandView2 setInlayColor:handsInlay];

  minuteHandView2 = [(NTKExplorerHandsView *)self minuteHandView];
  handsInlay2 = [paletteCopy handsInlay];
  [minuteHandView2 setInlayColor:handsInlay2];

  secondHandView = [(NTKExplorerHandsView *)self secondHandView];
  secondHand = [paletteCopy secondHand];
  [secondHandView setColor:secondHand];

  secondHandInlay = [paletteCopy secondHandInlay];

  [(NTKExplorerHandsView *)self setSecondHandDotColor:secondHandInlay];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKExplorerHandsView;
  [(NTKExplorerHandsView *)&v4 layoutSubviews];
  secondHandView = [(NTKExplorerHandsView *)self secondHandView];
  [secondHandView setCenter:{self->_secondHandCenter.x, self->_secondHandCenter.y}];
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