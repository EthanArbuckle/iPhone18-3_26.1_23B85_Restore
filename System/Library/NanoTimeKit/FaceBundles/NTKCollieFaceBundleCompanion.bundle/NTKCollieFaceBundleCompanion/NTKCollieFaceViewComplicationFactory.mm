@interface NTKCollieFaceViewComplicationFactory
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRulesForFaceView:(id)view;
@end

@implementation NTKCollieFaceViewComplicationFactory

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = NTKCollieFaceViewComplicationFactory;
  slotCopy = slot;
  v12 = [(NTKCollieFaceViewComplicationFactory *)&v15 newLegacyViewForComplication:complication family:family slot:slotCopy faceView:viewCopy];
  LODWORD(family) = [slotCopy isEqualToString:{NTKComplicationSlotDate, v15.receiver, v15.super_class}];

  if (family)
  {
    _dateComplicationFont = [viewCopy _dateComplicationFont];
    [v12 setFont:_dateComplicationFont];
  }

  return v12;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = NTKCollieFaceViewComplicationFactory;
  slotCopy = slot;
  [(NTKCollieFaceViewComplicationFactory *)&v10 configureComplicationView:viewCopy forSlot:slotCopy faceView:faceView];
  LODWORD(faceView) = [slotCopy isEqualToString:{NTKComplicationSlotBottom, v10.receiver, v10.super_class}];

  if (faceView)
  {
    [viewCopy setPlacement:4];
  }
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  viewCopy = view;
  v43.receiver = self;
  v43.super_class = NTKCollieFaceViewComplicationFactory;
  [(NTKCollieFaceViewComplicationFactory *)&v43 loadLayoutRulesForFaceView:viewCopy];
  device = [(NTKCollieFaceViewComplicationFactory *)self device];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(NTKCollieFaceViewComplicationFactory *)self supportedComplicationSlots];
  v6 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    v9 = NTKComplicationSlotDate;
    v10 = NTKComplicationSlotBottom;
    v24 = v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [viewCopy complicationLayoutforSlot:{v12, v24}];
        if ([v12 isEqualToString:v9])
        {
          [viewCopy _dateComplicationFrame];
          v14 = [NTKComplicationLayoutRule layoutRuleForDevice:device withReferenceFrame:3 horizontalLayout:3 verticalLayout:?];
          v33 = _NSConcreteStackBlock;
          v34 = 3221225472;
          v35 = sub_12410;
          v36 = &unk_2D028;
          v37 = v13;
          v38 = v14;
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
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v26[0] = sub_12420;
          v26[1] = &unk_2D050;
          v27 = v13;
          v29 = v17;
          v30 = v19;
          v31 = v21;
          v32 = v23;
          v28 = device;
          NTKEnumerateComplicationStates();

          v15 = v27;
        }

LABEL_11:
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }
}

@end