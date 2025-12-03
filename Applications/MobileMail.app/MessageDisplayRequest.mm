@interface MessageDisplayRequest
- (MessageDisplayRequest)initWithMessage:(id)message completion:(id)completion firstPaintCompletion:(id)paintCompletion;
- (void)_messageViewDidFinishFirstPaint:(id)paint;
- (void)didBeginProcessingRequest;
- (void)requestAbortedWithError:(id)error;
@end

@implementation MessageDisplayRequest

- (MessageDisplayRequest)initWithMessage:(id)message completion:(id)completion firstPaintCompletion:(id)paintCompletion
{
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = MessageDisplayRequest;
  v8 = [(MessageDisplayRequest *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, message);
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

- (void)requestAbortedWithError:(id)error
{
  errorCopy = error;
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
    [(EFPromise *)self->_startPromise finishWithError:errorCopy];
  }

  if (!hasFinished)
  {
    [(EFPromise *)self->_finishPromise finishWithError:errorCopy];
  }
}

- (void)_messageViewDidFinishFirstPaint:(id)paint
{
  paintCopy = paint;
  os_unfair_lock_lock(&self->_lock);
  hasFinished = self->_hasFinished;
  os_unfair_lock_unlock(&self->_lock);
  v5 = paintCopy;
  if (!hasFinished)
  {
    userInfo = [paintCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:MFMessageContentViewDidFinishFirstPaintMessageKey];
    itemID = [v7 itemID];
    message = [(MessageDisplayRequest *)self message];
    itemID2 = [message itemID];
    v11 = [itemID isEqual:itemID2];

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

        v13 = [userInfo objectForKeyedSubscript:MFMessageContentViewDidFinishFirstPaintErrorKey];
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

    v5 = paintCopy;
  }
}

@end