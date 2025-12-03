@interface PushTypesTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation PushTypesTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self || !*(&self->_responseType + 2))
  {
    objc_opt_self();
    v7 = ASDErrorWithDescription();
    if (v7)
    {
      goto LABEL_13;
    }

    if (!self)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  if (!*(&self->_environment + 2))
  {
    v8 = *(&self->_responseType + 2);
LABEL_9:
    if (([v8 isActive] & 1) != 0 || (objc_opt_self(), ASDErrorWithDescription(), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (self && (*(&self->_environment + 2) || *(&self->_requestType + 2)))
      {
        goto LABEL_4;
      }

      v7 = ASDErrorWithDescription();
      if (!v7)
      {
        goto LABEL_4;
      }
    }

LABEL_13:
    v6 = v7;
    handlerCopy[2](handlerCopy, v7);
    goto LABEL_14;
  }

LABEL_4:
  v5 = *(&self->_logKey + 2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002BF478;
  v9[3] = &unk_10051D998;
  v9[4] = self;
  v10 = handlerCopy;
  [v5 recentBagWithCompletionHandler:v9];
  v6 = v10;
LABEL_14:
}

@end