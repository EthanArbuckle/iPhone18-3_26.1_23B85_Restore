@interface NTKUpNextRichFaceView
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
@end

@implementation NTKUpNextRichFaceView

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12.receiver = self;
  v12.super_class = NTKUpNextRichFaceView;
  v10 = [(NTKUpNextFaceView *)&v12 _newLegacyViewForComplication:v8 family:a4 slot:v9];
  if (!v10)
  {
    if ([v9 isEqualToString:NTKComplicationSlotTopLeft])
    {
      v10 = +[NTKRichComplicationCircularBaseView viewWithLegacyComplicationType:](NTKRichComplicationCircularBaseView, "viewWithLegacyComplicationType:", [v8 complicationType]);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = NTKUpNextRichFaceView;
  [(NTKUpNextFaceView *)&v9 _configureComplicationView:v6 forSlot:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 transitionToMonochromeWithFraction:0.0];
  }

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    v7 = v6;
    v8 = +[UIColor clearColor];
    [v7 setPlatterColor:v8];
  }
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotTopLeft])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKUpNextRichFaceView;
    v5 = [(NTKUpNextRichFaceView *)&v7 _keylineStyleForComplicationSlot:v4];
  }

  return v5;
}

@end