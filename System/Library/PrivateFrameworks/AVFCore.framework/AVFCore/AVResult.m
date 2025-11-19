@interface AVResult
- (AVResult)init;
- (BOOL)isFailed;
- (void)dealloc;
- (void)getStatus:(int64_t *)a3 error:(id *)a4;
- (void)markAsCompleted;
- (void)markAsFailedWithError:(id)a3;
@end

@implementation AVResult

- (AVResult)init
{
  v6.receiver = self;
  v6.super_class = AVResult;
  v2 = [(AVResult *)&v6 init];
  if (v2)
  {
    v3 = FigSimpleMutexCreate();
    v2->_status = 0;
    v2->_error = 0;
    v2->_ivarAccessLock = v3;
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFailed
{
  v3 = 0;
  [(AVResult *)self getStatus:&v3 error:0];
  return v3 == 2;
}

- (void)markAsCompleted
{
  FigSimpleMutexLock();
  self->_status = 1;

  FigSimpleMutexUnlock();
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVResult;
  [(AVResult *)&v3 dealloc];
}

- (void)markAsFailedWithError:(id)a3
{
  FigSimpleMutexLock();
  self->_status = 2;
  self->_error = [a3 copy];

  FigSimpleMutexUnlock();
}

- (void)getStatus:(int64_t *)a3 error:(id *)a4
{
  FigSimpleMutexLock();
  if (a3)
  {
    *a3 = self->_status;
  }

  if (a4)
  {
    *a4 = [(NSError *)self->_error copy];
  }

  FigSimpleMutexUnlock();
}

@end