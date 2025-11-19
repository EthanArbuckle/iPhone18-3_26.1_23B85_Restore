@interface NTKAlaskanChronographStyleController
- (BOOL)wantsStatusBarHidden;
- (NTKAlaskanChronographStyleController)initWithContentView:(id)a3 crownInputHandler:(id)a4;
- (NTKAlaskanChronographView)view;
- (NTKAnalogFaceView)faceView;
- (void)_handleFaceViewWantsStatusBarHidden:(BOOL)a3;
- (void)alaskanChronographViewDidEnterChronometerMode:(id)a3 completionBlock:(id)a4;
- (void)alaskanChronographViewDidExitChronometerMode:(id)a3 completionBlock:(id)a4 animated:(BOOL)a5;
- (void)applyVisibilityWithFraction:(double)a3;
- (void)cleanupAfterEditing;
- (void)dealloc;
- (void)prepareForEditing;
- (void)setFaceView:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKAlaskanChronographStyleController

- (NTKAlaskanChronographStyleController)initWithContentView:(id)a3 crownInputHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NTKAlaskanChronographStyleController;
  v8 = [(NTKAlaskanChronographStyleController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_view, v6);
    [v6 setDelegate:v9];

    objc_storeStrong(&v9->_crownInputHandler, a4);
    [(NTKCrownInputHandler *)v9->_crownInputHandler setOffsetPerRevolution:2.4];
    [(NTKCrownInputHandler *)v9->_crownInputHandler setUseWideIdleCheck:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(NTKAlaskanChronographStyleController *)self faceView];
  v4 = [v3 timeView];
  v5 = [v4 secondHandView];
  [v5 setAlpha:1.0];

  v6.receiver = self;
  v6.super_class = NTKAlaskanChronographStyleController;
  [(NTKAlaskanChronographStyleController *)&v6 dealloc];
}

- (void)setFaceView:(id)a3
{
  v10 = a3;
  v4 = objc_storeWeak(&self->_faceView, v10);
  v5 = [v10 timeView];

  v6 = [v5 secondHandView];
  [v6 setAlpha:0.0];

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v8 = objc_loadWeakRetained(&self->_faceView);
  v9 = [v8 timeView];
  [WeakRetained setChronometerHandsParentView:v9];
}

- (void)applyVisibilityWithFraction:(double)a3
{
  v5 = [(NTKAlaskanChronographStyleController *)self view];
  v6 = [v5 primaryHandView];
  [v6 setAlpha:a3];

  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  v7 = [WeakRetained timeView];
  v8 = [v7 secondHandView];
  [v8 setAlpha:1.0 - a3];
}

- (void)prepareForEditing
{
  self->_isEditing = 1;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained setIsEditing:1];
}

- (void)cleanupAfterEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained setIsEditing:0];

  self->_isEditing = 0;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained setClockOverrideDate:v5];

  v7 = objc_loadWeakRetained(&self->_view);
  [v7 setStopwatchOverrideDate:v5];
}

- (BOOL)wantsStatusBarHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v3 = [WeakRetained isChronoMode];

  return v3;
}

- (void)alaskanChronographViewDidEnterChronometerMode:(id)a3 completionBlock:(id)a4
{
  v7 = a4;
  v5 = [(NTKAlaskanChronographStyleController *)self faceView];
  [v5 enumerateComplicationDisplayWrappersWithBlock:&stru_38AA8];

  if (![(NTKAlaskanChronographStyleController *)self isEditing])
  {
    [(NTKAlaskanChronographStyleController *)self _handleFaceViewWantsStatusBarHidden:1];
  }

  v6 = [(NTKAlaskanChronographStyleController *)self shouldAnimateTimescaleTransition];
  if (v7 && (v6 & 1) == 0)
  {
    v6 = v7[2](v7);
  }

  _objc_release_x1(v6);
}

- (void)_handleFaceViewWantsStatusBarHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKAlaskanChronographStyleController *)self faceView];
  v4 = [v5 delegate];
  [v4 faceViewWantsStatusBarHidden:v3 animated:0];
}

- (void)alaskanChronographViewDidExitChronometerMode:(id)a3 completionBlock:(id)a4 animated:(BOOL)a5
{
  v6 = [(NTKAlaskanChronographStyleController *)self faceView:a3];
  [v6 enumerateComplicationDisplayWrappersWithBlock:&stru_38AC8];

  if (![(NTKAlaskanChronographStyleController *)self isEditing])
  {

    [(NTKAlaskanChronographStyleController *)self _handleFaceViewWantsStatusBarHidden:0];
  }
}

- (NTKAnalogFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

- (NTKAlaskanChronographView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end