@interface CLBRingerManager
- (CLBRingerManager)init;
- (void)_updateAVSystemController;
- (void)setIsMuted:(BOOL)a3;
@end

@implementation CLBRingerManager

- (CLBRingerManager)init
{
  v16.receiver = self;
  v16.super_class = CLBRingerManager;
  v2 = [(CLBRingerManager *)&v16 init];
  if (v2)
  {
    v3 = +[CLFSettings sharedInstance];
    v4 = [v3 silentModeToggleEnabled];

    if (v4)
    {
      if (AXDeviceIsRingerSwitchAvailable())
      {
        v2->_isMuted = BKSHIDServicesGetRingerState() == 0;
        v5 = +[CLFLog commonLog];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          isMuted = v2->_isMuted;
          *buf = 67109120;
          v18 = isMuted;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initial ringer switch state is muted: %i", buf, 8u);
        }

LABEL_18:

        goto LABEL_19;
      }

      if (AXDeviceHasStaccato())
      {
        v9 = +[AVSystemController sharedAVSystemController];
        v15 = 0;
        v10 = [v9 getSilentMode:&v2->_isMuted error:&v15];
        v5 = v15;

        if ((v10 & 1) == 0)
        {
          v11 = +[CLFLog commonLog];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100284C84(v5, v11);
          }

          v2->_isMuted = 0;
        }

        v12 = +[CLFLog commonLog];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v2->_isMuted;
          *buf = 67109120;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initial silent mode state (for action button) is muted: %i", buf, 8u);
        }

        goto LABEL_18;
      }

      v7 = +[CLFLog commonLog];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "No ringer switch or action button. Unmuting.";
        goto LABEL_8;
      }
    }

    else
    {
      v7 = +[CLFLog commonLog];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Toggling Silent Mode is not allowed. Unmuting.";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      }
    }

    v2->_isMuted = 0;
LABEL_19:
    [(CLBRingerManager *)v2 _updateAVSystemController];
  }

  return v2;
}

- (void)setIsMuted:(BOOL)a3
{
  v3 = a3;
  v5 = +[CLFSettings sharedInstance];
  v6 = [v5 silentModeToggleEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = +[CLFLog commonLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100284CFC(v7);
    }
  }

  if (self->_isMuted != v3)
  {
    self->_isMuted = v3;
    [(CLBRingerManager *)self _updateAVSystemController];
  }
}

- (void)_updateAVSystemController
{
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 setSilentMode:self->_isMuted untilTime:0 reason:@"ClarityBoard-CLBRingerManager" clientType:4];
}

@end