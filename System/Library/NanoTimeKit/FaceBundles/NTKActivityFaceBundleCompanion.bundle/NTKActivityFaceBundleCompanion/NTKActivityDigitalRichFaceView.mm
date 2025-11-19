@interface NTKActivityDigitalRichFaceView
- ($0133E12197E66152D7F90595F26F386E)_layoutConstants;
- (id)_newFaceViewFactoryForDevice:(id)a3;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
@end

@implementation NTKActivityDigitalRichFaceView

- ($0133E12197E66152D7F90595F26F386E)_layoutConstants
{
  v4 = [(NTKActivityDigitalRichFaceView *)self device];
  *&retstr->var15.diameter = 0u;
  *&retstr->var15.bottomEdgeInset = 0u;
  *&retstr->var14.thickness = 0u;
  *&retstr->var14.leftEdgeInset = 0u;
  *&retstr->var13 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var7 = 0u;
  retstr->var6 = 0u;
  *&retstr->var5.bottom = 0u;
  *&retstr->var5.top = 0u;
  *&retstr->var4.bottom = 0u;
  *&retstr->var4.top = 0u;
  *&retstr->var3.bottom = 0u;
  *&retstr->var3.top = 0u;
  *&retstr->var1 = 0u;
  *&retstr->var16.leftEdgeInset = 0u;
  *&retstr->var16.thickness = 0u;
  *&retstr->var15.interspacing = 0u;
  v5 = v4;
  sub_1034C(v5, retstr);
  v6 = [CLKDeviceMetrics metricsWithDevice:v5 identitySizeClass:2];

  v15[0] = &off_217F0;
  v15[1] = &off_21808;
  v16[0] = &off_22208;
  v16[1] = &off_22218;
  v15[2] = &off_21820;
  v15[3] = &off_21838;
  v16[2] = &off_22228;
  v16[3] = &off_22238;
  v15[4] = &off_21850;
  v15[5] = &off_21868;
  v16[4] = &off_22248;
  v16[5] = &off_22258;
  v15[6] = &off_21880;
  v16[6] = &off_22268;
  v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:7];
  [v6 scaledValue:v7 withOverrides:70.5];
  retstr->var0 = v8;

  v13[0] = &off_217F0;
  v13[1] = &off_21808;
  v14[0] = &off_22278;
  v14[1] = &off_22288;
  v13[2] = &off_21820;
  v13[3] = &off_21838;
  v14[2] = &off_22298;
  v14[3] = &off_222A8;
  v13[4] = &off_21850;
  v13[5] = &off_21868;
  v14[4] = &off_220F8;
  v14[5] = &off_22108;
  v13[6] = &off_21880;
  v14[6] = &off_22118;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];
  [v6 scaledValue:v9 withOverrides:29.0];
  v11 = v10;

  retstr->var14.bottomEdgeInset = v11;
  retstr->var15.bottomEdgeInset = v11;
  retstr->var16.bottomEdgeInset = v11;

  return result;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = NTKActivityDigitalRichFaceView;
  [(NTKActivityDigitalRichFaceView *)&v7 _configureComplicationView:v6 forSlot:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 transitionToMonochromeWithFraction:0.0];
  }
}

- (id)_newFaceViewFactoryForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKActivityFaceViewFactory alloc] initForAnalog:0 richComplications:1 forDevice:v3];

  return v4;
}

@end