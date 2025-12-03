@interface NTKUltraCubeFaceViewComplicationFactory
- (CGRect)dateComplicationFrame;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRulesForFaceView:(id)view;
@end

@implementation NTKUltraCubeFaceViewComplicationFactory

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = NTKUltraCubeFaceViewComplicationFactory;
  slotCopy = slot;
  v12 = [(NTKUltraCubeFaceViewComplicationFactory *)&v15 newLegacyViewForComplication:complication family:family slot:slotCopy faceView:viewCopy];
  LODWORD(family) = [slotCopy isEqualToString:{NTKComplicationSlotDate, v15.receiver, v15.super_class}];

  if (family)
  {
    dateComplicationFont = [viewCopy dateComplicationFont];
    [v12 setFont:dateComplicationFont];
  }

  return v12;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = NTKUltraCubeFaceViewComplicationFactory;
  slotCopy = slot;
  [(NTKUltraCubeFaceViewComplicationFactory *)&v10 configureComplicationView:viewCopy forSlot:slotCopy faceView:faceView];
  LODWORD(faceView) = [slotCopy isEqualToString:{NTKComplicationSlotBottom, v10.receiver, v10.super_class}];

  if (faceView)
  {
    [viewCopy setPlacement:4];
  }
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  viewCopy = view;
  v25.receiver = self;
  v25.super_class = NTKUltraCubeFaceViewComplicationFactory;
  [(NTKUltraCubeFaceViewComplicationFactory *)&v25 loadLayoutRulesForFaceView:viewCopy];
  device = [(NTKUltraCubeFaceViewComplicationFactory *)self device];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NTKUltraCubeFaceViewComplicationFactory *)self supportedComplicationSlots];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = NTKComplicationSlotDate;
    v10 = NTKComplicationSlotBottom;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [viewCopy complicationLayoutforSlot:v12];
        if ([v12 isEqualToString:v9])
        {
          [(NTKUltraCubeFaceViewComplicationFactory *)self dateComplicationFrame];
          v14 = [NTKComplicationLayoutRule layoutRuleForDevice:device withReferenceFrame:3 horizontalLayout:3 verticalLayout:?];
          v19 = v13;
          v20 = v14;
          v15 = v14;
          NTKEnumerateComplicationStates();
        }

        else
        {
          if (![v12 isEqualToString:v10])
          {
            goto LABEL_11;
          }

          [device screenBounds];
          v17 = v13;
          v18 = device;
          NTKEnumerateComplicationStates();

          v15 = v17;
        }

LABEL_11:
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }
}

- (CGRect)dateComplicationFrame
{
  x = self->_dateComplicationFrame.origin.x;
  y = self->_dateComplicationFrame.origin.y;
  width = self->_dateComplicationFrame.size.width;
  height = self->_dateComplicationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end