@interface NTKStopwatchComplicationController
- (void)_deactivate;
- (void)_handleStopwatchChange;
- (void)performTapActionForDisplayWrapper:(id)wrapper;
- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
@end

@implementation NTKStopwatchComplicationController

- (void)_deactivate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)performTapActionForDisplayWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v5 = [NSURL URLWithString:@"nanostopwatch://"];
  [(NTKStopwatchComplicationController *)self _openAppWithURL:v5 forDisplayWrapper:wrapperCopy];
}

- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper
{
  v6.receiver = self;
  v6.super_class = NTKStopwatchComplicationController;
  [(NTKStopwatchComplicationController *)&v6 setDisplayProperties:properties forDisplayWrapper:wrapper];
  legacyDisplay = [(NTKStopwatchComplicationController *)self legacyDisplay];
  [(NTKStopwatchComplicationController *)self _configureForLegacyDisplay:legacyDisplay];
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

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  objc_storeStrong(&self->_timeTravelDate, date);

  [(NTKStopwatchComplicationController *)self _updateDisplay];
}

@end