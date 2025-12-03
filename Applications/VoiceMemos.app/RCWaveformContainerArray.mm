@interface RCWaveformContainerArray
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- (RCWaveformContainerArray)init;
- (RCWaveformContainerArrayDelegate)delegate;
- (double)currentTime;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)addContainer:(id)container;
- (void)enableWaveformScrolling:(BOOL)scrolling;
- (void)reloadWaveformDataSource:(id)source withActiveTimeController:(id)controller;
- (void)removeContainer:(id)container;
- (void)removeContainerAtIndex:(unint64_t)index;
- (void)setActiveTimeController:(id)controller;
- (void)setCurrentTime:(double)time;
- (void)setIsCompactView:(BOOL)view;
- (void)setIsEditMode:(BOOL)mode;
- (void)setIsOverview:(BOOL)overview;
- (void)setIsPlayback:(BOOL)playback;
- (void)setSelectedTimeRange:(id)range animationDuration:(double)duration;
@end

@implementation RCWaveformContainerArray

- (RCWaveformContainerArray)init
{
  v6.receiver = self;
  v6.super_class = RCWaveformContainerArray;
  v2 = [(RCWaveformContainerArray *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    waveformViewControllers = v2->_waveformViewControllers;
    v2->_waveformViewControllers = v3;
  }

  return v2;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if ([(NSMutableArray *)self->_waveformViewControllers count]<= subscript)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_waveformViewControllers objectAtIndexedSubscript:subscript];
  }

  return v5;
}

- (void)addContainer:(id)container
{
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containersWillUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];

  [(NSMutableArray *)self->_waveformViewControllers addObject:containerCopy];
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 containersDidUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];
}

- (void)removeContainer:(id)container
{
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containersWillUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];

  [(NSMutableArray *)self->_waveformViewControllers removeObject:containerCopy];
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 containersDidUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];
}

- (void)removeContainerAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containersWillUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];

  [(NSMutableArray *)self->_waveformViewControllers removeObjectAtIndex:index];
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 containersDidUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];
}

- (void)setActiveTimeController:(id)controller
{
  controllerCopy = controller;
  waveformViewControllers = self->_waveformViewControllers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003AE00;
  v7[3] = &unk_10028A6D0;
  v8 = controllerCopy;
  v6 = controllerCopy;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v7];
}

- (void)setIsPlayback:(BOOL)playback
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003AED0;
  v4[3] = &unk_10028A730;
  playbackCopy = playback;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (void)setIsEditMode:(BOOL)mode
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003AF94;
  v4[3] = &unk_10028A730;
  modeCopy = mode;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (void)setIsOverview:(BOOL)overview
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B010;
  v4[3] = &unk_10028A730;
  overviewCopy = overview;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (void)setIsCompactView:(BOOL)view
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B0D4;
  v4[3] = &unk_10028A730;
  viewCopy = view;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (double)currentTime
{
  v2 = [(RCWaveformContainerArray *)self objectAtIndexedSubscript:0];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (void)setCurrentTime:(double)time
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B1DC;
  v4[3] = &unk_10028A750;
  *&v4[4] = time;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange
{
  v2 = [(RCWaveformContainerArray *)self objectAtIndexedSubscript:0];
  [v2 selectedTimeRange];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)setSelectedTimeRange:(id)range animationDuration:(double)duration
{
  waveformViewControllers = self->_waveformViewControllers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B2A8;
  v5[3] = &unk_10028A770;
  rangeCopy = range;
  durationCopy = duration;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v5];
}

- (void)reloadWaveformDataSource:(id)source withActiveTimeController:(id)controller
{
  sourceCopy = source;
  controllerCopy = controller;
  waveformViewControllers = self->_waveformViewControllers;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003B378;
  v11[3] = &unk_10028A798;
  v12 = sourceCopy;
  v13 = controllerCopy;
  v9 = controllerCopy;
  v10 = sourceCopy;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v11];
}

- (void)enableWaveformScrolling:(BOOL)scrolling
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B4B8;
  v4[3] = &unk_10028A730;
  scrollingCopy = scrolling;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (RCWaveformContainerArrayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end