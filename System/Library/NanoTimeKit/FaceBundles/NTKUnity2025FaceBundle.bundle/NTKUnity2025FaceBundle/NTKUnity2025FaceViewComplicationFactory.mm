@interface NTKUnity2025FaceViewComplicationFactory
- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position;
- (CGPoint)_circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds;
- (CGPoint)circularComplicationDistanceFromCenter;
- (NTKFaceView)faceView;
- (id)initForDevice:(id)device;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)view;
@end

@implementation NTKUnity2025FaceViewComplicationFactory

- (id)initForDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = NTKUnity2025FaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v9 initForDevice:device];
  v4 = v3;
  if (v3)
  {
    v5 = v3 + 10;
    device = [v3 device];
    *v5 = sub_23C09C5B4(device, device);
    *(v4 + 11) = v7;
  }

  return v4;
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  v3 = MEMORY[0x277D2C0D0];
  device = [(NTKFaceViewComplicationFactory *)self device];
  v5 = [v3 keylineViewForDevice:device wide:0 expanded:1];

  return v5;
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  [(NTKFaceViewComplicationFactory *)self device];
  v8 = v7 = viewCopy;
  v5 = v8;
  v6 = viewCopy;
  NTKEnumerateComplicationStates();
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  v8 = MEMORY[0x277D2C0D0];
  viewCopy = view;
  slotCopy = slot;
  v11 = [v8 viewWithLegacyComplicationType:{objc_msgSend(complication, "complicationType")}];
  [viewCopy _configureComplicationView:v11 forSlot:slotCopy];

  return v11;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  slotCopy = slot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
    v10 = 0;
    if ([(NTKUnity2025FaceViewComplicationFactory *)self _convertCircularSlot:slotCopy toPosition:&v10])
    {
      [v9 setPosition:v10];
    }

    [(NTKFaceViewComplicationFactory *)self alpha];
    [v9 setAlpha:?];
  }
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  faceView = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  [(NTKUnity2025FaceViewComplicationFactory *)self configureComplicationView:viewCopy forSlot:slotCopy faceView:faceView];
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  slotCopy = slot;
  faceView = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  v8 = [(NTKFaceViewComplicationFactory *)self legacyLayoutOverrideforComplicationType:type slot:slotCopy faceView:faceView];

  return v8;
}

- (void)loadLayoutRules
{
  faceView = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  [(NTKUnity2025FaceViewComplicationFactory *)self loadLayoutRulesForFaceView:faceView];
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  complicationCopy = complication;
  faceView = [(NTKUnity2025FaceViewComplicationFactory *)self faceView];
  v11 = [(NTKUnity2025FaceViewComplicationFactory *)self newLegacyViewForComplication:complicationCopy family:family slot:slotCopy faceView:faceView];

  return v11;
}

- (CGPoint)_circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  slotCopy = slot;
  v10 = MEMORY[0x23EEC6400](x, y, width, height);
  v12 = v11;
  if ([slotCopy isEqualToString:*MEMORY[0x277D2BF08]])
  {
    v10 = v10 - self->_circularComplicationDistanceFromCenter.x;
    v12 = v12 - self->_circularComplicationDistanceFromCenter.y;
  }

  else if ([slotCopy isEqualToString:*MEMORY[0x277D2BEE8]])
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

- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:*MEMORY[0x277D2BF08]])
  {
    v6 = 0;
  }

  else
  {
    if (![slotCopy isEqualToString:*MEMORY[0x277D2BEE8]])
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = 1;
  }

  *position = v6;
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