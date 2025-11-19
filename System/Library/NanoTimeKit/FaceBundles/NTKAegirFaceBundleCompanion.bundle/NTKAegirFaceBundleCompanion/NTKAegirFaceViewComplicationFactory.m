@interface NTKAegirFaceViewComplicationFactory
- (CGRect)topComplicationFrame;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation NTKAegirFaceViewComplicationFactory

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11.receiver = self;
  v11.super_class = NTKAegirFaceViewComplicationFactory;
  [(NTKAegirFaceViewComplicationFactory *)&v11 configureComplicationView:v8 forSlot:v9 faceView:a5];
  if ([v9 isEqualToString:NTKComplicationSlotTopRight] && (objc_msgSend(v8, "conformsToProtocol:", &OBJC_PROTOCOL___NTKUtilityComplicationView) & 1) != 0)
  {
    v10 = 0;
LABEL_6:
    [v8 setPlacement:v10];
    goto LABEL_7;
  }

  if ([v9 isEqualToString:NTKComplicationSlotBottom])
  {
    v10 = 4;
    goto LABEL_6;
  }

LABEL_7:
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NTKAegirFaceViewComplicationFactory;
  [(NTKAegirFaceViewComplicationFactory *)&v25 loadLayoutRulesForFaceView:v4];
  v5 = [(NTKAegirFaceViewComplicationFactory *)self device];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NTKAegirFaceViewComplicationFactory *)self supportedComplicationSlots];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = NTKComplicationSlotTopRight;
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
          v14 = [NTKComplicationLayoutRule layoutRuleForDevice:v5 withReferenceFrame:3 horizontalLayout:3 verticalLayout:1 clip:self->_topComplicationFrame.origin.x, self->_topComplicationFrame.origin.y, self->_topComplicationFrame.size.width, self->_topComplicationFrame.size.height];
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

- (CGRect)topComplicationFrame
{
  x = self->_topComplicationFrame.origin.x;
  y = self->_topComplicationFrame.origin.y;
  width = self->_topComplicationFrame.size.width;
  height = self->_topComplicationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end