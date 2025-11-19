@interface MTMediaTask
- (MTMediaTask)initWithType:(int64_t)a3;
- (void)perform:(id)a3;
- (void)setCharts:(BOOL)a3;
@end

@implementation MTMediaTask

- (MTMediaTask)initWithType:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = MTMediaTask;
  v4 = [(MTMediaTask *)&v13 init];
  if (v4)
  {
    if (a3)
    {
      v5 = 301;
    }

    else
    {
      v5 = 300;
    }

    v6 = [AMSMediaTask alloc];
    v7 = +[PFClientUtil mediaApiClientIdentifier];
    v8 = +[PFClientUtil mediaApiClientVersion];
    v9 = +[IMURLBag sharedInstance];
    v10 = [v6 initWithType:v5 clientIdentifier:v7 clientVersion:v8 bag:v9];
    mediaTask = v4->_mediaTask;
    v4->_mediaTask = v10;

    if (a3)
    {
      [(AMSMediaTask *)v4->_mediaTask setIncludedResultKeys:&off_1005023E0];
    }
  }

  return v4;
}

- (void)setCharts:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    mediaTask = self->_mediaTask;

    [(AMSMediaTask *)mediaTask setCharts:v3];
  }
}

- (void)perform:(id)a3
{
  v4 = a3;
  v5 = [(AMSMediaTask *)self->_mediaTask perform];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CA980;
  v7[3] = &unk_1004DB690;
  v8 = v4;
  v6 = v4;
  [v5 addFinishBlock:v7];
}

@end