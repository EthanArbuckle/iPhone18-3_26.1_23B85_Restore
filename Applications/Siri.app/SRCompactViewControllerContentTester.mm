@interface SRCompactViewControllerContentTester
- (BOOL)hasContentForState:(id)state;
@end

@implementation SRCompactViewControllerContentTester

- (BOOL)hasContentForState:(id)state
{
  stateCopy = state;
  if ([stateCopy keyboardHasContent])
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
      v5 = "%s #compact:Returning YES because the keyboard has content";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, &v12, 0xCu);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if ([stateCopy navigationStackIsPopping] && ((objc_msgSend(stateCopy, "deviceIsPad") & 1) != 0 || objc_msgSend(stateCopy, "navigationBarHasContent")))
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
      v5 = "%s #compact:Returning YES because snippet is being popped from the view stack";
      goto LABEL_29;
    }

LABEL_30:
    multiLevelViewHasContent2 = 1;
    goto LABEL_31;
  }

  if ([stateCopy navigationStackSize] < 2)
  {
    if ([stateCopy editableUtteranceViewHasContent])
    {
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because point is in tap2edit view";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if ([stateCopy compactViewHasContent])
    {
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because point is in Compact View";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if ([stateCopy siriViewControllerIsEditing])
    {
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because a siri view controller is editing";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    contextMenuIsPresented = [stateCopy contextMenuIsPresented];
    v4 = AFSiriLogContextConnection;
    v10 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (contextMenuIsPresented)
    {
      if (v10)
      {
        v12 = 136315138;
        v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because a UIContextMenu is currently present";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (v10)
    {
      v12 = 136315138;
      v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #compact:Returning NO because point is outside Siri content", &v12, 0xCu);
    }

    multiLevelViewHasContent2 = 0;
  }

  else
  {
    if (([stateCopy deviceIsPad] & 1) == 0 && objc_msgSend(stateCopy, "navigationBarHasContent"))
    {
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
        v5 = "%s #compact:Returning YES because point is in the navigation bar for multilevel content in phone";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v12 = 136315394;
      v13 = "[SRCompactViewControllerContentTester hasContentForState:]";
      v14 = 1024;
      multiLevelViewHasContent = [stateCopy multiLevelViewHasContent];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #compact:Returning %d because pointis in multi level card", &v12, 0x12u);
    }

    multiLevelViewHasContent2 = [stateCopy multiLevelViewHasContent];
  }

LABEL_31:

  return multiLevelViewHasContent2;
}

@end