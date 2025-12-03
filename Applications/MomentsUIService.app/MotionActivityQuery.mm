@interface MotionActivityQuery
- (MotionActivityQuery)init;
- (void)fetchMotionActivityBetweenStartDate:(id)date endDate:(id)endDate toQueue:(id)queue handler:(id)handler;
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

- (void)fetchMotionActivityBetweenStartDate:(id)date endDate:(id)endDate toQueue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  motionActivityManager = self->_motionActivityManager;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __83__MotionActivityQuery_fetchMotionActivityBetweenStartDate_endDate_toQueue_handler___block_invoke;
  v13[3] = &unk_1003097C8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(CMMotionActivityManager *)motionActivityManager queryActivityWithAttribute:1 fromDate:date toDate:endDate toQueue:queue withHandler:v13];
}

@end