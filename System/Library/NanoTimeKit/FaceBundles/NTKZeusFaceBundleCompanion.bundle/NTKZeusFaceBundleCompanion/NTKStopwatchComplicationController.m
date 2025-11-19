@interface NTKStopwatchComplicationController
- (void)_deactivate;
- (void)_handleStopwatchChange;
- (void)performTapActionForDisplayWrapper:(id)a3;
- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
@end

@implementation NTKStopwatchComplicationController

- (void)_deactivate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)performTapActionForDisplayWrapper:(id)a3
{
  v4 = a3;
  v5 = [NSURL URLWithString:@"nanostopwatch://"];
  [(NTKStopwatchComplicationController *)self _openAppWithURL:v5 forDisplayWrapper:v4];
}

- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4
{
  v6.receiver = self;
  v6.super_class = NTKStopwatchComplicationController;
  [(NTKStopwatchComplicationController *)&v6 setDisplayProperties:a3 forDisplayWrapper:a4];
  v5 = [(NTKStopwatchComplicationController *)self legacyDisplay];
  [(NTKStopwatchComplicationController *)self _configureForLegacyDisplay:v5];
}

- (void)_handleStopwatchChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E5F8;
  block[3] = &unk_44E50;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  objc_storeStrong(&self->_timeTravelDate, a3);

  [(NTKStopwatchComplicationController *)self _updateDisplay];
}

@end