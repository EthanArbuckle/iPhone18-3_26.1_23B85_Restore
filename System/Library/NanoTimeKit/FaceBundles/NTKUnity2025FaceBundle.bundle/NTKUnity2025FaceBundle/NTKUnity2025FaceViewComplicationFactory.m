@interface NTKUnity2025FaceViewComplicationFactory
- (BOOL)_convertCircularSlot:(id)a3 toPosition:(int64_t *)a4;
- (CGPoint)_circularComplicationCenterForSlot:(id)a3 inFaceBounds:(CGRect)a4;
- (CGPoint)circularComplicationDistanceFromCenter;
- (NTKFaceView)faceView;
- (id)initForDevice:(id)a3;
- (id)keylineViewForComplicationSlot:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation NTKUnity2025FaceViewComplicationFactory

- (id)initForDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = NTKUnity2025FaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v9 initForDevice:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3 + 10;
    v6 = [v3 device];
    *v5 = sub_23C09C5B4(v6, v6);
    *(v4 + 11) = v7;
  }

  return v4;
}

- (id)keylineViewForComplicationSlot:(id)a3
{
  v3 = MEMORY[0x277D2C0D0];
  v4 = [(NTKFaceViewComplicationFactory *)self device];
  v5 = [v3 keylineViewForDevice:v4 wide:0 expanded:1];

  return v5;
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [(NTKFaceViewComplicationFactory *)self device];
  v8 = v7 = v4;
  v5 = v8;
  v6 = v4;
  NTKEnumerateComplicationStates();
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v8 = MEMORY[0x277D2C0D0];
  v9 = a6;
  v10 = a5;
  v11 = [v8 viewWithLegacyComplicationType:{objc_msgSend(a3, "complicationType")}];
  [v9 _configureComplicationView:v11 forSlot:v10];

  return v11;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = 0;
    if ([(NTKUnity2025FaceViewComplicationFactory *)self _convertCircularSlot:v8 toPosition:&v10])
    {
      [v9 setPosition:v10];
    }

    [(NTKFaceViewComplicationFactory *)self alpha];
    [v9 setAlpha:?];
  }
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  [(NTKUnity2025FaceViewComplicationFactory *)self configureComplicationView:v7 forSlot:v6 faceView:v8];
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  v8 = [(NTKFaceViewComplicationFactory *)self legacyLayoutOverrideforComplicationType:a3 slot:v6 faceView:v7];

  return v8;
}

- (void)loadLayoutRules
{
  v3 = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  [(NTKUnity2025FaceViewComplicationFactory *)self loadLayoutRulesForFaceView:v3];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  v11 = [(NTKUnity2025FaceViewComplicationFactory *)self newLegacyViewForComplication:v9 family:a4 slot:v8 faceView:v10];

  return v11;
}

- (CGPoint)_circularComplicationCenterForSlot:(id)a3 inFaceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = MEMORY[0x23EEC6400](x, y, width, height);
  v12 = v11;
  if ([v9 isEqualToString:*MEMORY[0x277D2BF08]])
  {
    v10 = v10 - self->_circularComplicationDistanceFromCenter.x;
    v12 = v12 - self->_circularComplicationDistanceFromCenter.y;
  }

  else if ([v9 isEqualToString:*MEMORY[0x277D2BEE8]])
  {
    v10 = v10 + self->_circularComplicationDistanceFromCenter.x;
    v12 = v12 + self->_circularComplicationDistanceFromCenter.y;
  }

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)_convertCircularSlot:(id)a3 toPosition:(int64_t *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:*MEMORY[0x277D2BF08]])
  {
    v6 = 0;
  }

  else
  {
    if (![v5 isEqualToString:*MEMORY[0x277D2BEE8]])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = 1;
  }

  *a4 = v6;
  v7 = 1;
LABEL_7:

  return v7;
}

- (CGPoint)circularComplicationDistanceFromCenter
{
  x = self->_circularComplicationDistanceFromCenter.x;
  y = self->_circularComplicationDistanceFromCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end