@interface LookAroundPIPStateMachine
- (BOOL)canSetStateTo:(unint64_t)a3;
- (void)setStateTo:(unint64_t)a3;
@end

@implementation LookAroundPIPStateMachine

- (void)setStateTo:(unint64_t)a3
{
  if ([(LookAroundPIPStateMachine *)self canSetStateTo:?])
  {
    if (a3 && self->_showStateChanges)
    {
      v5 = sub_100798614();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        state = self->_state;
        if (state > 7)
        {
          v7 = &stru_1016631F0;
        }

        else
        {
          v7 = off_101656310[state];
        }

        v8 = v7;
        if (a3 > 7)
        {
          v9 = &stru_1016631F0;
        }

        else
        {
          v9 = off_101656310[a3];
        }

        v10 = v9;
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "State: %@ -> %@", &v11, 0x16u);
      }
    }

    self->_state = a3;
  }
}

- (BOOL)canSetStateTo:(unint64_t)a3
{
  LOBYTE(v3) = 0;
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return v3 & 1;
        }

        v4 = self->_state == 3;
        goto LABEL_19;
      }

LABEL_14:
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

    if (a3 == 2)
    {
      goto LABEL_14;
    }

    state = self->_state;
    v4 = state == 2 || state == 4;
LABEL_19:
    LOBYTE(v3) = v4;
    return v3 & 1;
  }

  if (a3 - 4 >= 2)
  {
    if (a3 == 6)
    {
      v4 = self->_state == 5;
    }

    else
    {
      if (a3 != 7)
      {
        return v3 & 1;
      }

      v4 = self->_state == 6;
    }

    goto LABEL_19;
  }

  v6 = self->_state;
  v7 = v6 >= 7;
  v3 = 0x46u >> v6;
  if (v7)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

@end