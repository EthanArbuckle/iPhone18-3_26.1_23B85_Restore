@interface NTKKaleidoscopeRichFaceView
- (id)_newComplicationFactoryForDevice:(id)device;
- (void)_updateComplicationColors;
@end

@implementation NTKKaleidoscopeRichFaceView

- (id)_newComplicationFactoryForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initWithFaceView:self device:deviceCopy graphicCornerComplications:1];

  [v5 setFaceView:self];
  return v5;
}

- (void)_updateComplicationColors
{
  v4.receiver = self;
  v4.super_class = NTKKaleidoscopeRichFaceView;
  [(NTKKaleidoscopeFaceView *)&v4 _updateComplicationColors];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_119C8;
  v3[3] = &unk_24DA0;
  v3[4] = self;
  [(NTKKaleidoscopeRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v3];
}

@end