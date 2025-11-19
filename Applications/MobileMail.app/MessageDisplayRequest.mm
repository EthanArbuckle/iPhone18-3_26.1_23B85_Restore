@interface MessageDisplayRequest
- (MessageDisplayRequest)initWithMessage:(id)a3 completion:(id)a4 firstPaintCompletion:(id)a5;
- (void)_messageViewDidFinishFirstPaint:(id)a3;
- (void)didBeginProcessingRequest;
- (void)requestAbortedWithError:(id)a3;
@end

@implementation MessageDisplayRequest

- (MessageDisplayRequest)initWithMessage:(id)a3 completion:(id)a4 firstPaintCompletion:(id)a5
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = MessageDisplayRequest;
  v8 = [(MessageDisplayRequest *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, a3);
    v10 = objc_alloc_init(EFPromise);
    startPromise = v9->_startPromise;
    v9->_startPromise = v10;

    v12 = objc_alloc_init(EFPromise);
    finishPromise = v9->_finishPromise;
    v9->_finishPromise = v12;

    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)didBeginProcessingRequest
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_hasStarted)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_hasStarted = 1;
    os_unfair_lock_unlock(&self->_lock);
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_messageViewDidFinishFirstPaint:" name:MFMessageContentViewDidFinishFirstPaint object:0];

    startPromise = self->_startPromise;
    v5 = +[NSNull null];
    [(EFPromise *)startPromise finishWithResult:?];
  }
}

- (void)requestAbortedWithError:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  hasStarted = self->_hasStarted;
  if (!hasStarted)
  {
    self->_hasStarted = 1;
  }

  hasFinished = self->_hasFinished;
  if (!hasFinished)
  {
    self->_hasFinished = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (!hasStarted)
  {
    [(EFPromise *)self->_startPromise finishWithError:v6];
  }

  if (!hasFinished)
  {
    [(EFPromise *)self->_finishPromise finishWithError:v6];
  }
}

- (void)_messageViewDidFinishFirstPaint:(id)a3
{
  v16 = a3;
  os_unfair_lock_lock(&self->_lock);
  hasFinished = self->_hasFinished;
  os_unfair_lock_unlock(&self->_lock);
  v5 = v16;
  if (!hasFinished)
  {
    v6 = [v16 userInfo];
    v7 = [v6 objectForKeyedSubscript:MFMessageContentViewDidFinishFirstPaintMessageKey];
    v8 = [v7 itemID];
    v9 = [(MessageDisplayRequest *)self message];
    v10 = [v9 itemID];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      os_unfair_lock_lock(&self->_lock);
      if (self->_hasFinished)
      {
        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        self->_hasFinished = 1;
        os_unfair_lock_unlock(&self->_lock);
        v12 = +[NSNotificationCenter defaultCenter];
        [v12 removeObserver:self name:MFMessageContentViewDidFinishFirstPaint object:0];

        v13 = [v6 objectForKeyedSubscript:MFMessageContentViewDidFinishFirstPaintErrorKey];
        finishPromise = self->_finishPromise;
        if (v13)
        {
          [(EFPromise *)finishPromise finishWithError:v13];
        }

        else
        {
          v15 = +[NSNull null];
          [(EFPromise *)finishPromise finishWithResult:v15];
        }
      }
    }

    v5 = v16;
  }
}

@end