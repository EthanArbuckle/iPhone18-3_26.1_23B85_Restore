@interface NTKUltraCubeFaceViewComplicationFactory
- (CGRect)dateComplicationFrame;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation NTKUltraCubeFaceViewComplicationFactory

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = NTKUltraCubeFaceViewComplicationFactory;
  v11 = a5;
  v12 = [(NTKUltraCubeFaceViewComplicationFactory *)&v15 newLegacyViewForComplication:a3 family:a4 slot:v11 faceView:v10];
  LODWORD(a4) = [v11 isEqualToString:{NTKComplicationSlotDate, v15.receiver, v15.super_class}];

  if (a4)
  {
    v13 = [v10 dateComplicationFont];
    [v12 setFont:v13];
  }

  return v12;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = NTKUltraCubeFaceViewComplicationFactory;
  v9 = a4;
  [(NTKUltraCubeFaceViewComplicationFactory *)&v10 configureComplicationView:v8 forSlot:v9 faceView:a5];
  LODWORD(a5) = [v9 isEqualToString:{NTKComplicationSlotBottom, v10.receiver, v10.super_class}];

  if (a5)
  {
    [v8 setPlacement:4];
  }
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NTKUltraCubeFaceViewComplicationFactory;
  [(NTKUltraCubeFaceViewComplicationFactory *)&v25 loadLayoutRulesForFaceView:v4];
  v5 = [(NTKUltraCubeFaceViewComplicationFactory *)self device];
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
        v13 = [v4 complicationLayoutforSlot:v12];
        if ([v12 isEqualToString:v9])
        {
          [(NTKUltraCubeFaceViewComplicationFactory *)self dateComplicationFrame];
          v14 = [NTKComplicationLayoutRule layoutRuleForDevice:v5 withReferenceFrame:3 horizontalLayout:3 verticalLayout:?];
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

          [v5 screenBounds];
          v17 = v13;
          v18 = v5;
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