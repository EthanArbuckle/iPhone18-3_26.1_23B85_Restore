@interface MFConversationPreviewState
+ (OS_os_log)log;
- (MFConversationPreviewState)initWithBackgroundUpdater:(id)a3;
- (NSString)description;
- (void)previewCancelled;
- (void)previewDidCommit:(BOOL)a3;
- (void)setBeingPreviewed:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)transitionAfterChangingSources;
- (void)transitionAfterScrollingToReferenceMessage;
- (void)transitionAfterViewDidAppear;
- (void)transitionAfterViewDidDisappear;
@end

@implementation MFConversationPreviewState

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C3830;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD4B0 != -1)
  {
    dispatch_once(&qword_1006DD4B0, block);
  }

  v2 = qword_1006DD4A8;

  return v2;
}

- (MFConversationPreviewState)initWithBackgroundUpdater:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MFConversationPreviewState;
  v5 = [(MFConversationPreviewState *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_state = 0;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = &stru_100653E00;
    }

    v8 = objc_retainBlock(v7);
    backgroundUpdater = v6->_backgroundUpdater;
    v6->_backgroundUpdater = v8;
  }

  return v6;
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    v5 = +[MFConversationPreviewState log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_state - 1;
      if (v6 > 3)
      {
        v7 = @"_MFConversationPreviewStateInvisible";
      }

      else
      {
        v7 = *(&off_100653E20 + v6);
      }

      if ((a3 - 1) > 3)
      {
        v8 = @"_MFConversationPreviewStateInvisible";
      }

      else
      {
        v8 = *(&off_100653E20 + a3 - 1);
      }

      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ -> %{public}@", &v10, 0x16u);
    }

    self->_state = a3;
    if (a3)
    {
      v9 = [(MFConversationPreviewState *)self backgroundUpdater];
      v9[2]();
    }
  }
}

- (NSString)description
{
  v2 = [(MFConversationPreviewState *)self state];
  if ((v2 - 1) > 3)
  {
    return @"_MFConversationPreviewStateInvisible";
  }

  else
  {
    return *(&off_100653E20 + v2 - 1);
  }
}

- (void)transitionAfterViewDidAppear
{
  v3 = +[MFConversationPreviewState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[state transitionAfterViewDidAppear]", v6, 2u);
  }

  v4 = [(MFConversationPreviewState *)self state];
  v5 = 4;
  if (v4 && v4 != 3)
  {
    if (v4 != 1)
    {
      return;
    }

    v5 = 2;
  }

  [(MFConversationPreviewState *)self setState:v5];
}

- (void)transitionAfterViewDidDisappear
{
  v3 = +[MFConversationPreviewState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[state transitionAfterViewDidDisappear]", v4, 2u);
  }

  [(MFConversationPreviewState *)self setState:0];
  [(MFConversationPreviewState *)self setDidScrollToReferenceMessage:0];
}

- (void)transitionAfterScrollingToReferenceMessage
{
  v3 = +[MFConversationPreviewState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[state transitionAfterScrollingToReferenceMessage]", v4, 2u);
  }

  [(MFConversationPreviewState *)self setDidScrollToReferenceMessage:1];
}

- (void)transitionAfterChangingSources
{
  v3 = +[MFConversationPreviewState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[state transitionAfterChangingSources]", v4, 2u);
  }

  [(MFConversationPreviewState *)self setDidScrollToReferenceMessage:0];
}

- (void)setBeingPreviewed:(BOOL)a3
{
  v3 = a3;
  v5 = +[MFConversationPreviewState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[state setBeingPreviewed: %@]", &v7, 0xCu);
  }

  if (v3)
  {
    [(MFConversationPreviewState *)self setState:1];
  }
}

- (void)previewDidCommit:(BOOL)a3
{
  v3 = a3;
  v5 = +[MFConversationPreviewState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[state previewDidCommit: %@]", &v8, 0xCu);
  }

  if (v3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [(MFConversationPreviewState *)self setState:v7];
}

- (void)previewCancelled
{
  v3 = +[MFConversationPreviewState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[state previewCancelled]", v4, 2u);
  }

  [(MFConversationPreviewState *)self setState:0];
}

@end