@interface MotionActivityQuery
- (MotionActivityQuery)init;
- (void)fetchMotionActivityBetweenStartDate:(id)a3 endDate:(id)a4 toQueue:(id)a5 handler:(id)a6;
@end

@implementation MotionActivityQuery

- (MotionActivityQuery)init
{
  v6.receiver = self;
  v6.super_class = MotionActivityQuery;
  v2 = [(MotionActivityQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CMMotionActivityManager);
    motionActivityManager = v2->_motionActivityManager;
    v2->_motionActivityManager = v3;
  }

  return v2;
}

- (void)fetchMotionActivityBetweenStartDate:(id)a3 endDate:(id)a4 toQueue:(id)a5 handler:(id)a6
{
  v10 = a6;
  motionActivityManager = self->_motionActivityManager;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __83__MotionActivityQuery_fetchMotionActivityBetweenStartDate_endDate_toQueue_handler___block_invoke;
  v13[3] = &unk_1003097C8;
  v14 = v10;
  v12 = v10;
  [(CMMotionActivityManager *)motionActivityManager queryActivityWithAttribute:1 fromDate:a3 toDate:a4 toQueue:a5 withHandler:v13];
}

@end