@interface RCWaveformContainerArray
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedTimeRange;
- (RCWaveformContainerArray)init;
- (RCWaveformContainerArrayDelegate)delegate;
- (double)currentTime;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (void)addContainer:(id)a3;
- (void)enableWaveformScrolling:(BOOL)a3;
- (void)reloadWaveformDataSource:(id)a3 withActiveTimeController:(id)a4;
- (void)removeContainer:(id)a3;
- (void)removeContainerAtIndex:(unint64_t)a3;
- (void)setActiveTimeController:(id)a3;
- (void)setCurrentTime:(double)a3;
- (void)setIsCompactView:(BOOL)a3;
- (void)setIsEditMode:(BOOL)a3;
- (void)setIsOverview:(BOOL)a3;
- (void)setIsPlayback:(BOOL)a3;
- (void)setSelectedTimeRange:(id)a3 animationDuration:(double)a4;
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

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_waveformViewControllers count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_waveformViewControllers objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)addContainer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containersWillUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];

  [(NSMutableArray *)self->_waveformViewControllers addObject:v4];
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 containersDidUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];
}

- (void)removeContainer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containersWillUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];

  [(NSMutableArray *)self->_waveformViewControllers removeObject:v4];
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 containersDidUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];
}

- (void)removeContainerAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained containersWillUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];

  [(NSMutableArray *)self->_waveformViewControllers removeObjectAtIndex:a3];
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 containersDidUpdate:{-[NSMutableArray count](self->_waveformViewControllers, "count")}];
}

- (void)setActiveTimeController:(id)a3
{
  v4 = a3;
  waveformViewControllers = self->_waveformViewControllers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003AE00;
  v7[3] = &unk_10028A6D0;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v7];
}

- (void)setIsPlayback:(BOOL)a3
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003AED0;
  v4[3] = &unk_10028A730;
  v5 = a3;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (void)setIsEditMode:(BOOL)a3
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003AF94;
  v4[3] = &unk_10028A730;
  v5 = a3;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (void)setIsOverview:(BOOL)a3
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B010;
  v4[3] = &unk_10028A730;
  v5 = a3;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (void)setIsCompactView:(BOOL)a3
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B0D4;
  v4[3] = &unk_10028A730;
  v5 = a3;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (double)currentTime
{
  v2 = [(RCWaveformContainerArray *)self objectAtIndexedSubscript:0];
  [v2 currentTime];
  v4 = v3;

  return v4;
}

- (void)setCurrentTime:(double)a3
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B1DC;
  v4[3] = &unk_10028A750;
  *&v4[4] = a3;
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

- (void)setSelectedTimeRange:(id)a3 animationDuration:(double)a4
{
  waveformViewControllers = self->_waveformViewControllers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003B2A8;
  v5[3] = &unk_10028A770;
  v6 = a3;
  v7 = a4;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v5];
}

- (void)reloadWaveformDataSource:(id)a3 withActiveTimeController:(id)a4
{
  v6 = a3;
  v7 = a4;
  waveformViewControllers = self->_waveformViewControllers;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003B378;
  v11[3] = &unk_10028A798;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v11];
}

- (void)enableWaveformScrolling:(BOOL)a3
{
  waveformViewControllers = self->_waveformViewControllers;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B4B8;
  v4[3] = &unk_10028A730;
  v5 = a3;
  [(NSMutableArray *)waveformViewControllers enumerateObjectsUsingBlock:v4];
}

- (RCWaveformContainerArrayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end