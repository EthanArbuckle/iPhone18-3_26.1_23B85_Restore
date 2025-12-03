@interface NTKUpNextRichFaceView
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
@end

@implementation NTKUpNextRichFaceView

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  v12.receiver = self;
  v12.super_class = NTKUpNextRichFaceView;
  v10 = [(NTKUpNextFaceView *)&v12 _newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
  if (!v10)
  {
    if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
    {
      v10 = +[NTKRichComplicationCircularBaseView viewWithLegacyComplicationType:](NTKRichComplicationCircularBaseView, "viewWithLegacyComplicationType:", [complicationCopy complicationType]);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = NTKUpNextRichFaceView;
  [(NTKUpNextFaceView *)&v9 _configureComplicationView:viewCopy forSlot:slot];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy transitionToMonochromeWithFraction:0.0];
  }

  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    v7 = viewCopy;
    v8 = +[UIColor clearColor];
    [v7 setPlatterColor:v8];
  }
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKUpNextRichFaceView;
    v5 = [(NTKUpNextRichFaceView *)&v7 _keylineStyleForComplicationSlot:slotCopy];
  }

  return v5;
}

@end