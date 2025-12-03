@interface CLKeyboardMotionAdapter
- (void)eventUpdateForDevice:(id)device event:(id)event;
- (void)inputReportForDevice:(id)device report:(char *)report length:(int64_t)length;
- (void)monitorUpdateForDevice:(id)device added:(BOOL)added;
- (void)smartCoverStateDidChange:(int64_t)change;
@end

@implementation CLKeyboardMotionAdapter

- (void)inputReportForDevice:(id)device report:(char *)report length:(int64_t)length
{
  v46 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v8 = qword_1ED71D2A8;
  if (*(qword_1ED71D2A8 + 48) == device)
  {
    if (length == 30)
    {
      v11 = *(report + 7);
      v12 = report[17];
      v13 = *(report + 26);
      *buf = *(report + 9);
      *&buf[20] = v11;
      v45 = v12;
      *&buf[8] = *(report + 18);
      *&buf[16] = v13;
      sub_19B41E070(*buf);
      v14 = buf;
      v15 = v8;
      v16 = 0;
      v17 = 23;
LABEL_17:
      sub_19B41DF08(v15, v16, v14, v17);
      goto LABEL_92;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v20 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      *&buf[4] = length;
      *&buf[12] = 2048;
      *&buf[14] = 30;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Bad motion report input %ld, expected %lu", buf, 0x16u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) != 0 && (*(v21 + 164) & 0x80000000) != 0 && (*(v21 + 168) & 0x80000000) != 0 && !*(v21 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
LABEL_35:
      v40 = 134218240;
      lengthCopy2 = length;
      v42 = 2048;
      v43 = 30;
LABEL_90:
      v36 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLKeyboardMotionNotifier::onIoHidReportBounce(CLHidDevice *, uint8_t *, CFIndex)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }

      goto LABEL_92;
    }

LABEL_105:
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    goto LABEL_35;
  }

  if (*(qword_1ED71D2A8 + 40) == device)
  {
    if (!length)
    {
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
      }

      v22 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Empty keyboard device report input", buf, 2u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
        }

        LOWORD(v40) = 0;
        goto LABEL_90;
      }

      goto LABEL_92;
    }

    v18 = *report;
    if (v18 == 196)
    {
      if (length == 3)
      {
        v24 = report[1] & 2;
        if (*(qword_1ED71D2A8 + 88) != v24 >> 1)
        {
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
          }

          v25 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
          {
            if (v24)
            {
              v26 = "entered";
            }

            else
            {
              v26 = "dismissed";
            }

            *buf = 136315138;
            *&buf[4] = v26;
            _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_INFO, "Accessory Hall Effect sensor detected tablet mode %s", buf, 0xCu);
          }

          v27 = sub_19B420058();
          if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
            }

            if (v24)
            {
              v28 = "entered";
            }

            else
            {
              v28 = "dismissed";
            }

            v40 = 136315138;
            lengthCopy2 = v28;
            v29 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::onIoHidReportBounce(CLHidDevice *, uint8_t *, CFIndex)", "CoreLocation: %s\n", v29);
            if (v29 != buf)
            {
              free(v29);
            }
          }

          if (v24)
          {
            v30 = 3;
          }

          else
          {
            v30 = 4;
          }

          LOBYTE(v40) = v30;
          v31 = mach_absolute_time();
          sub_19B41E070(v31);
          sub_19B41DF08(v8, 4, &v40, 1);
        }

        *(v8 + 88) = v24 >> 1;
      }

      else
      {
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
        }

        v34 = qword_1ED71C7C8;
        if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218240;
          *&buf[4] = length;
          *&buf[12] = 2048;
          *&buf[14] = 3;
          _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_FAULT, "Bad motion report input state %ld, expected %lu", buf, 0x16u);
        }

        v35 = sub_19B420058();
        if ((*(v35 + 160) & 0x80000000) == 0 || (*(v35 + 164) & 0x80000000) == 0 || (*(v35 + 168) & 0x80000000) == 0 || *(v35 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
          }

          v40 = 134218240;
          lengthCopy2 = length;
          v42 = 2048;
          v43 = 3;
          goto LABEL_90;
        }
      }

      goto LABEL_92;
    }

    if (v18 != 1)
    {
      goto LABEL_92;
    }

    if (length == 30)
    {
      *buf = *report;
      *&buf[8] = *(report + 4);
      v19 = 1;
      if (buf[0] == 1 && !buf[1] && !buf[2])
      {
        if (*&buf[3] | *&buf[7])
        {
          v19 = 1;
        }

        else
        {
          v19 = buf[9] != 0;
        }
      }

      v39 = v19;
      v38 = mach_absolute_time();
      sub_19B41E070(v38);
      v14 = &v39;
      v15 = v8;
      v16 = 1;
      v17 = 1;
      goto LABEL_17;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v32 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      *&buf[4] = length;
      *&buf[12] = 2048;
      *&buf[14] = 30;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_FAULT, "Bad motion report input %ld, expected %lu", buf, 0x16u);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      goto LABEL_92;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_105;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
  }

  v9 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "received bad hid report", buf, 2u);
  }

  v10 = sub_19B420058();
  if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    LOWORD(v40) = 0;
    goto LABEL_90;
  }

LABEL_92:
  v37 = *MEMORY[0x1E69E9840];
}

- (void)monitorUpdateForDevice:(id)device added:(BOOL)added
{
  addedCopy = added;
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v6 = qword_1ED71D2A8;
  if (*(qword_1ED71D2A8 + 40) == device)
  {
    v14 = addedCopy;
    v10 = mach_absolute_time();
    sub_19B41E070(v10);
    sub_19B41DF08(v6, 2, &v14, 1);
    *(v6 + 91) = v14;
    if (addedCopy)
    {
      v11 = sub_19B677F14();
      if (*(v6 + 89) != v11)
      {
        v13 = v11;
        v15[0] = -60;
        v15[1] = v11;
        if (objc_msgSend_setReport_payload_length_(*(v6 + 40), v12, 196, v15, 2))
        {
          *(v6 + 89) = v13;
        }
      }
    }

    else
    {
      *(v6 + 89) = 0;
    }
  }

  else if (*(qword_1ED71D2A8 + 48) == device)
  {
    if (addedCopy)
    {
      v7 = sub_19B677C18();
      if (*(v6 + 90) != v7)
      {
        v9 = v7;
        v16[0] = 105;
        v16[1] = v7;
        if (objc_msgSend_setReport_payload_length_(*(v6 + 48), v8, 105, v16, 2))
        {
          *(v6 + 90) = v9;
        }
      }
    }

    else
    {
      *(qword_1ED71D2A8 + 90) = 0;
    }
  }
}

- (void)eventUpdateForDevice:(id)device event:(id)event
{
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v4 = qword_1ED71D2A8;
  if (IOHIDEventConformsTo())
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v6 = Children;
      Count = CFArrayGetCount(Children);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          CFArrayGetValueAtIndex(v6, i);
          if (IOHIDEventGetType() == 11)
          {
            v10 = IOHIDEventGetIntegerValue() == 1;
            if (*(v4 + 72) != v10)
            {
              v11 = v10;
              sub_19B4455DC(v4, 3, &v11, 1);
              *(v4 + 72) = v10;
            }
          }
        }
      }
    }
  }
}

- (void)smartCoverStateDidChange:(int64_t)change
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D2B0 != -1)
  {
    dispatch_once(&qword_1ED71D2B0, &unk_1F0E295E0);
  }

  v4 = qword_1ED71D2A8;
  if (*(qword_1ED71D2A8 + 91) == 1)
  {
    if (change == 1)
    {
      v5 = 2;
    }

    else
    {
      if (change != 3)
      {
        goto LABEL_21;
      }

      v5 = 1;
    }

    v11 = v5;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = (off_1EE5DEA18[0])(change);
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "iPad Hall Effect sensor detected the cover was, %@", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A40);
      }

      v12 = 138412290;
      v13 = (off_1EE5DEA18[0])(change);
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLKeyboardMotionNotifier::onSmartCoverOpened(SBSSmartCoverState)", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = mach_absolute_time();
    sub_19B41E070(v9);
    sub_19B41DF08(v4, 4, &v11, 1);
  }

LABEL_21:
  v10 = *MEMORY[0x1E69E9840];
}

@end