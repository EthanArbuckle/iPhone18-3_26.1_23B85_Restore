@interface VNCServer
- (VNCServer)init;
- (void)consumeMessage;
- (void)dealloc;
- (void)handleIncomingData:(char *)a3 dataSize:(unsigned int)a4;
- (void)handleTouchEventUpdate;
- (void)notificationHandler:(id)a3;
- (void)sendPauseMessage:(unint64_t)a3;
- (void)sendScreenLockChangeMessage:(unint64_t)a3;
- (void)stopUDPSend;
- (void)termsAndConditionsAccepted;
- (void)userRequestResult:(int)a3 senderToken:(unsigned int)a4;
@end

@implementation VNCServer

- (VNCServer)init
{
  v4.receiver = self;
  v4.super_class = VNCServer;
  v2 = [(VNCServer *)&v4 init];
  if (v2)
  {
    objc_storeStrong(&qword_100070AA0, v2);
  }

  return v2;
}

- (void)dealloc
{
  [(VNCServer *)self setMachineName:0];
  [(VNCServer *)self setSessionController:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  xpc_transaction_end();
  free(self->_lastTouchInfo);
  v4.receiver = self;
  v4.super_class = VNCServer;
  [(VNCServer *)&v4 dealloc];
}

- (void)handleIncomingData:(char *)a3 dataSize:(unsigned int)a4
{
  v4 = a4;
  if ([(VNCServer *)self sessionType]== 1)
  {
    sub_1000341D0(self->viewer.receiveInfo, a3, v4);
  }

  if (sub_10003ABCC(self->viewer.ndata))
  {

    [(VNCServer *)self consumeMessage];
  }
}

- (void)stopUDPSend
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[VNCServer stopUDPSend]";
      v10 = 1024;
      v11 = 217;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop UDP send thread", &v8, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 217, "[VNCServer stopUDPSend]", 7, 0, "stop UDP send thread");
  sub_10002442C(self->viewer.sendInfo);
  monitoringTouchEvents = self->viewer.monitoringTouchEvents;
  v5 = sub_1000423E0();
  if (monitoringTouchEvents)
  {
    if (v5)
    {
      v6 = sub_100042E68();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[VNCServer stopUDPSend]";
        v10 = 1024;
        v11 = 221;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop monitoring touch events", &v8, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 221, "[VNCServer stopUDPSend]", 7, 0, "stop monitoring touch events");
    self->viewer.monitoringTouchEvents = 0;
    sub_100033D2C();
  }

  else
  {
    if (v5)
    {
      v7 = sub_100042E68();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[VNCServer stopUDPSend]";
        v10 = 1024;
        v11 = 226;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] was not monitoring touch events", &v8, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 226, "[VNCServer stopUDPSend]", 7, 0, "was not monitoring touch events");
  }
}

- (void)sendPauseMessage:(unint64_t)a3
{
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = "[VNCServer sendPauseMessage:]";
      v10 = 1024;
      v11 = 232;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] video is paused %llu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 232, "[VNCServer sendPauseMessage:]", 7, 0, "video is paused %llu", a3);
  sub_100040350(a3 != 0);
  if (a3)
  {
    sub_1000430F0(0, 0, 0.0, 0.0);
  }

  if (self->viewer.info.viewerInfoSet && (self->viewer.info.supportedCommands[2] & 8) != 0)
  {
    v6 = malloc_type_calloc(1uLL, 0x16uLL, 0x108004043D1B9D8uLL);
    v6[6] = 0;
    *(v6 + 2) = 8;
    *(v6 + 14) = 20;
    *(v6 + 4) = 16778240;
    if (a3)
    {
      v7 = 1792;
    }

    else
    {
      v7 = 2048;
    }

    v6[10] = v7;
    sub_10002E738(&self->viewer, v6);
  }
}

- (void)sendScreenLockChangeMessage:(unint64_t)a3
{
  if (sub_1000423E0())
  {
    v5 = sub_100042E68();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = "[VNCServer sendScreenLockChangeMessage:]";
      v10 = 1024;
      v11 = 265;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is locked %llu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 265, "[VNCServer sendScreenLockChangeMessage:]", 7, 0, "screen is locked %llu", a3);
  [(VNCServer *)self setScreenLocked:a3 != 0];
  if (self->viewer.info.viewerInfoSet && (self->viewer.info.supportedCommands[2] & 8) != 0)
  {
    v6 = malloc_type_calloc(1uLL, 0x16uLL, 0x108004043D1B9D8uLL);
    v6[6] = 0;
    *(v6 + 2) = 8;
    *(v6 + 14) = 20;
    *(v6 + 4) = 16778240;
    if (a3)
    {
      v7 = 3840;
    }

    else
    {
      v7 = 4096;
    }

    v6[10] = v7;
    sub_10002E738(&self->viewer, v6);
  }
}

- (void)termsAndConditionsAccepted
{
  if (sub_1000423E0())
  {
    v3 = sub_100042E68();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v8 = "[VNCServer termsAndConditionsAccepted]";
      v9 = 1024;
      v10 = 294;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions accepted", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 294, "[VNCServer termsAndConditionsAccepted]", 7, 0, "terms and conditions accepted");
  readyToAuthSemaphore = self->_readyToAuthSemaphore;
  if (readyToAuthSemaphore)
  {
    v5 = dispatch_semaphore_signal(readyToAuthSemaphore);
  }

  else
  {
    v5 = 2;
  }

  if (sub_1000423E0())
  {
    v6 = sub_100042E68();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "[VNCServer termsAndConditionsAccepted]";
      v9 = 1024;
      v10 = 296;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] t&C accepted thrad woke %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 296, "[VNCServer termsAndConditionsAccepted]", 7, 0, "t&C accepted thrad woke %ld", v5);
}

- (void)userRequestResult:(int)a3 senderToken:(unsigned int)a4
{
  if (sub_1000423E0())
  {
    v7 = sub_100042E68();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v13 = "[VNCServer userRequestResult:senderToken:]";
      v14 = 1024;
      v15 = 303;
      v16 = 1024;
      v17 = a3;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] ***user request result %d  senderToken %u", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 303, "[VNCServer userRequestResult:senderToken:]", 7, 0, "***user request result %d  senderToken %u", a3, a4);
  if (a3 >= 4)
  {
    if (sub_1000423E0())
    {
      v9 = sub_100042E68();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[VNCServer userRequestResult:senderToken:]";
        v14 = 1024;
        v15 = 324;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown response - assuem deny", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 324, "[VNCServer userRequestResult:senderToken:]", 7, 0, "unknown response - assuem deny");
    v8 = 0;
  }

  else
  {
    v8 = dword_10004AA60[a3];
  }

  if (self->viewer.info.viewerInfoSet && (self->viewer.info.supportedCommands[4] & 0x10) != 0)
  {
    v11 = malloc_type_calloc(1uLL, 0x20uLL, 0x108004043D1B9D8uLL);
    v11[6] = 0;
    *(v11 + 2) = 18;
    *(v11 + 14) = 35;
    *(v11 + 4) = 16780800;
    *(v11 + 5) = bswap32(a4);
    *(v11 + 6) = 0x2000000;
    *(v11 + 7) = v8;
    sub_10002E738(&self->viewer, v11);
  }

  else
  {
    if (sub_1000423E0())
    {
      v10 = sub_100042E68();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[VNCServer userRequestResult:senderToken:]";
        v14 = 1024;
        v15 = 347;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] cmd not supported", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 347, "[VNCServer userRequestResult:senderToken:]", 7, 0, "cmd not supported");
  }
}

- (void)consumeMessage
{
  state = self->state;
  if (state <= 3)
  {
    if (state != 1)
    {
      if (state == 3)
      {
        if (sub_1000423E0())
        {
          v4 = sub_100042E68();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v113 = "[VNCServer consumeMessage]";
            v114 = 1024;
            v115 = 469;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] sent security challenge", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 469, "[VNCServer consumeMessage]", 7, 0, "sent security challenge");
        if (sub_1000423E0())
        {
          v5 = sub_100042E68();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            authState = self->viewer.authState;
            *buf = 136315650;
            v113 = "HandleViewerAuthenticationMessages";
            v114 = 1024;
            v115 = 763;
            v116 = 1024;
            *v117 = authState;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleViewerAuthenticationMessages %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 763, "HandleViewerAuthenticationMessages", 7, "AuthTheViewer", "HandleViewerAuthenticationMessages %d", self->viewer.authState);
        v7 = self->viewer.authState;
        if (v7 > 3)
        {
          if (v7 - 4 < 4)
          {
            goto LABEL_176;
          }

          if (v7 == 8)
          {
            if (sub_1000423E0())
            {
              v8 = sub_100042E68();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v113 = "HandlePreAuthorizedPasswordMessage";
                v114 = 1024;
                v115 = 895;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandlePreAuthorizedPasswordMessage", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 895, "HandlePreAuthorizedPasswordMessage", 7, 0, "HandlePreAuthorizedPasswordMessage");
            if (sub_10003ABCC(self->viewer.ndata) < 0x10)
            {
              goto LABEL_176;
            }

            v108 = 0;
            sub_100039EA8(self->viewer.ndata, 0x10u, dataOut);
            v9 = sub_100032608(self->viewer.AESKeyECB, self->viewer.pwChallenge, dataOut, &v108);
            if (sub_1000423E0())
            {
              v10 = sub_100042E68();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v113 = "HandlePreAuthorizedPasswordMessage";
                v114 = 1024;
                v115 = 908;
                v116 = 1024;
                *v117 = v108;
                *&v117[4] = 1024;
                *&v117[6] = v9;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] validKey %d error %d", buf, 0x1Eu);
              }
            }

            v11 = v108;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 908, "HandlePreAuthorizedPasswordMessage", 7, "AuthTheViewer", "validKey %d error %d", v108, v9);
            if (v9)
            {
              v12 = 1;
            }

            else
            {
              v12 = v11 == 0;
            }

            v13 = v12;
            if (v12)
            {
              dataOutMoved[0] = 0;
              dataOutMoved[1] = 0;
              v14 = 0x1000000;
              goto LABEL_194;
            }

            self->viewer.state = 2;
            *&self->viewer.observeFlag = 0;
            self->viewer.askFlag = 0;
            if (!sub_100032794(self->viewer.AESKeyECB, self->viewer.AESKeyECBSend, dataOut, 0, dataOutMoved))
            {
              v14 = 0;
LABEL_194:
              if (!sub_10002DA9C(&self->viewer, dataOutMoved, 0x10u))
              {
                LODWORD(v107) = v14;
                v82 = v13 ^ 1;
                if (self->viewer.viewerMinorVersion != 8)
                {
                  v82 = 1;
                }

                if (v82)
                {
                  sub_10002DA9C(&self->viewer, &v107, 4u);
                }

                else
                {
                  if (sub_1000423E0())
                  {
                    v83 = sub_100042E68();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      v113 = "SendAuthenticationResultToViewer";
                      v114 = 1024;
                      v115 = 1012;
                      v116 = 1024;
                      *v117 = HIBYTE(v14);
                      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "[%s:%d] send vers 8 response authresult %d", buf, 0x18u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1012, "SendAuthenticationResultToViewer", 7, 0, "send vers 8 response authresult %d", HIBYTE(v14));
                  v84 = strlen(off_100070650);
                  v85 = malloc_type_malloc((v84 + 9), 0x100004000313F17uLL);
                  *v85 = v14;
                  v85[1] = bswap32(v84);
                  memcpy(v85 + 2, off_100070650, v84);
                  sub_10002DA9C(&self->viewer, v85, (v84 + 9));
                  free(v85);
                  sleep(1u);
                }
              }
            }

LABEL_176:
            if (self->viewer.state != 2)
            {
              return;
            }

            if (sub_1000423E0())
            {
              v78 = sub_100042E68();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v113 = "[VNCServer consumeMessage]";
                v114 = 1024;
                v115 = 473;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%s:%d] set state to sent security result", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 473, "[VNCServer consumeMessage]", 7, 0, "set state to sent security result");
            goto LABEL_182;
          }

          goto LABEL_169;
        }

        if (v7 == 1)
        {
          goto LABEL_176;
        }

        if (v7 != 2)
        {
          if (v7 == 3)
          {
            if (sub_1000423E0())
            {
              v45 = sub_100042E68();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v113 = "HandleViewerAuthenticationMessages";
                v114 = 1024;
                v115 = 775;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer send during auth waiting", buf, 0x12u);
              }
            }

            v46 = "HandleViewerAuthenticationMessages";
            v47 = "viewer send during auth waiting";
            v48 = 775;
            goto LABEL_174;
          }

LABEL_169:
          if (sub_1000423E0())
          {
            v76 = sub_100042E68();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v113 = "HandleViewerAuthenticationMessages";
              v114 = 1024;
              v115 = 794;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad viewer auth state", buf, 0x12u);
            }
          }

          v46 = "HandleViewerAuthenticationMessages";
          v47 = "bad viewer auth state";
          v48 = 794;
LABEL_174:
          v77 = 7;
LABEL_175:
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, v48, v46, v77, "AuthTheViewer", v47, v104);
          goto LABEL_176;
        }

        v108 = 0;
        dataOutMoved[0] = 0;
        v107 = 0;
        sub_1000402B4(&v107);
        v79 = v107;
        if ((v107 - self->viewer.lastCommunicationTimeLo) <= 0x2710)
        {
          self->viewer.lowLatencyConnectionFlag = 1;
        }

        self->viewer.lastCommunicationTimeLo = v79;
        sub_100039EA8(self->viewer.ndata, 1u, &v108);
        if (self->viewer.VersionRFB3dot888Viewer)
        {
          switch(v108)
          {
            case 5u:
              v80 = 32;
              break;
            case 4u:
              v80 = 31;
              break;
            case 3u:
              v80 = 30;
              break;
            default:
              goto LABEL_206;
          }

          v108 = v80;
        }

LABEL_206:
        if (sub_1000423E0())
        {
          v86 = sub_100042E68();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v113 = "HandleAuthTypeMessage";
            v114 = 1024;
            v115 = 833;
            v116 = 1024;
            *v117 = v108;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleAuthTypeMessage %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 833, "HandleAuthTypeMessage", 7, "AuthTheViewer", "HandleAuthTypeMessage %d", v108);
        if (v108 != 34)
        {
          goto LABEL_176;
        }

        if (sub_1000423E0())
        {
          v87 = sub_100042E68();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v113 = "HandleAuthTypeMessage";
            v114 = 1024;
            v115 = 838;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%s:%d] pre-auth", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 838, "HandleAuthTypeMessage", 7, 0, "pre-auth");
        if (!self->viewer.preauthorizedFlag)
        {
          if (sub_1000423E0())
          {
            v91 = sub_100042E68();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v113 = "HandleAuthTypeMessage";
              v114 = 1024;
              v115 = 875;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer attempted to use preauthorized connection", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 875, "HandleAuthTypeMessage", 1, "AuthTheViewer", "viewer attempted to use preauthorized connection", v105);
          goto LABEL_176;
        }

        *dataOut = 0;
        v111 = 0;
        v88 = CCCryptorCreate(0, 0, 2u, self->viewer.encryptionKey, 0x10uLL, 0, &self->viewer.AESKeyECBSend);
        if (v88)
        {
          v89 = v88;
          if (sub_1000423E0())
          {
            v90 = sub_100042E68();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v113 = "HandleAuthTypeMessage";
              v114 = 1024;
              v115 = 845;
              v116 = 1024;
              *v117 = v89;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorCreate viewer->AESKeyECB %d", buf, 0x18u);
            }
          }

          v46 = "HandleAuthTypeMessage";
          v104 = v89;
          v47 = "CCCryptorCreate viewer->AESKeyECB %d";
          v48 = 845;
        }

        else
        {
          v92 = CCCryptorCreate(1u, 0, 2u, self->viewer.encryptionKey, 0x10uLL, 0, &self->viewer.AESKeyECB);
          if (v92)
          {
            v93 = v92;
            if (sub_1000423E0())
            {
              v94 = sub_100042E68();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v113 = "HandleAuthTypeMessage";
                v114 = 1024;
                v115 = 851;
                v116 = 1024;
                *v117 = v93;
                _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorCreate %d", buf, 0x18u);
              }
            }

            v46 = "HandleAuthTypeMessage";
            v104 = v93;
            v47 = "CCCryptorCreate %d";
            v48 = 851;
          }

          else
          {
            v95 = CCCryptorUpdate(self->viewer.AESKeyECBSend, self->viewer.pwChallenge, 0x10uLL, dataOut, 0x10uLL, dataOutMoved);
            if (!v95)
            {
              v98 = CCCryptorCreate(1u, 0, 0, self->viewer.newAESkey, 0x10uLL, 0, self->viewer.receiveInfo + 173);
              if (v98)
              {
                v99 = v98;
                if (sub_1000423E0())
                {
                  v100 = sub_100042E68();
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v113 = "HandleAuthTypeMessage";
                    v114 = 1024;
                    v115 = 865;
                    v116 = 1024;
                    *v117 = v99;
                    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorCreate %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 865, "HandleAuthTypeMessage", 5, 0, "CCCryptorCreate %d", v99);
              }

              v101 = sub_10002DA9C(&self->viewer, dataOut, 0x10u);
              self->viewer.authState = 8;
              if (!v101)
              {
                goto LABEL_176;
              }

              v102 = v101;
              if (sub_1000423E0())
              {
                v103 = sub_100042E68();
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v113 = "HandleAuthTypeMessage";
                  v114 = 1024;
                  v115 = 870;
                  v116 = 1024;
                  *v117 = v102;
                  _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "[%s:%d] kViewerAuthPreAuthorizedResponse error = %d", buf, 0x18u);
                }
              }

              v46 = "HandleAuthTypeMessage";
              v104 = v102;
              v47 = "kViewerAuthPreAuthorizedResponse error = %d";
              v48 = 870;
              goto LABEL_174;
            }

            v96 = v95;
            if (sub_1000423E0())
            {
              v97 = sub_100042E68();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v113 = "HandleAuthTypeMessage";
                v114 = 1024;
                v115 = 858;
                v116 = 1024;
                *v117 = v96;
                _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
              }
            }

            v46 = "HandleAuthTypeMessage";
            v104 = v96;
            v47 = "CCCryptorUpdate %d";
            v48 = 858;
          }
        }

        v77 = 5;
        goto LABEL_175;
      }

      goto LABEL_42;
    }

    dataOutMoved[0] = 0;
    if (sub_1000423E0())
    {
      v19 = sub_100042E68();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v113 = "ReadViewerProtocolVersion";
        v114 = 1024;
        v115 = 1254;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] read viewer version", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1254, "ReadViewerProtocolVersion", 7, 0, "read viewer version");
    if (sub_10003ABCC(self->viewer.ndata) >= 0xC)
    {
      sub_1000402B4(dataOutMoved);
      if (LODWORD(dataOutMoved[0]) - self->viewer.lastCommunicationTimeLo <= 0x2710)
      {
        self->viewer.lowLatencyConnectionFlag = 1;
      }

      if (sub_1000423E0())
      {
        v32 = sub_100042E68();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = LODWORD(dataOutMoved[0]) - self->viewer.lastCommunicationTimeLo;
          *buf = 136315650;
          v113 = "ReadViewerProtocolVersion";
          v114 = 1024;
          v115 = 1266;
          v116 = 1024;
          *v117 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] got viewer version: time = %u", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1266, "ReadViewerProtocolVersion", 7, 0, "got viewer version: time = %u", LODWORD(dataOutMoved[0]) - self->viewer.lastCommunicationTimeLo);
      self->viewer.lastCommunicationTimeLo = dataOutMoved[0];
      sub_100039EA8(self->viewer.ndata, 0xCu, dataOut);
      p_viewerMinorVersion = &self->viewer.viewerMinorVersion;
      if (sscanf(dataOut, "RFB %3u.%3u\n", &self->viewer.viewerMajorVersion, &self->viewer.viewerMinorVersion) == 2)
      {
        if (sub_1000423E0())
        {
          v35 = sub_100042E68();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            viewerMajorVersion = self->viewer.viewerMajorVersion;
            v37 = *p_viewerMinorVersion;
            *buf = 136315906;
            v113 = "ReadViewerProtocolVersion";
            v114 = 1024;
            v115 = 1277;
            v116 = 1024;
            *v117 = viewerMajorVersion;
            *&v117[4] = 1024;
            *&v117[6] = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] RFB viewer version: %u.%u", buf, 0x1Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1277, "ReadViewerProtocolVersion", 7, 0, "RFB viewer version: %u.%u", self->viewer.viewerMajorVersion, self->viewer.viewerMinorVersion);
        self->viewer.VersionRFB3dot888Viewer = 0;
        self->viewer.enhancedViewer = 0;
        if (self->viewer.viewerMajorVersion == 3)
        {
          v38 = *p_viewerMinorVersion;
          if ((*p_viewerMinorVersion & 0xFFFFFFFE) == 0x378)
          {
            self->viewer.enhancedViewer = 1;
            if (v38 == 888)
            {
              self->viewer.VersionRFB3dot888Viewer = 1;
            }
          }
        }

        if ([qword_100070AA0 sessionType] == 1)
        {
          self->viewer.state = 1;
        }
      }

      if ([(VNCServer *)self sessionType]== 1)
      {
        readyToAuthSemaphore = self->_readyToAuthSemaphore;
        v40 = dispatch_time(0, 600000000000);
        dispatch_semaphore_wait(readyToAuthSemaphore, v40);
        if (sub_1000423E0())
        {
          v41 = sub_100042E68();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v113 = "[VNCServer consumeMessage]";
            v114 = 1024;
            v115 = 459;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] done waiting", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 459, "[VNCServer consumeMessage]", 7, 0, "done waiting");
        if (sub_1000423E0())
        {
          v42 = sub_100042E68();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v113 = "SendAuthenticationInfoMessage";
            v114 = 1024;
            v115 = 1320;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] SendAuthenticationInfoMessage", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1320, "SendAuthenticationInfoMessage", 7, 0, "SendAuthenticationInfoMessage");
        if (sub_1000423E0())
        {
          v43 = sub_100042E68();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v113 = "SendAuthenticationInfoMessage";
            v114 = 1024;
            v115 = 1323;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer is pre-authorized", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1323, "SendAuthenticationInfoMessage", 7, 0, "viewer is pre-authorized");
        self->viewer.preauthorizedFlag = 1;
        *buf = 8705;
        sub_10002DA9C(&self->viewer, buf, 2u);
        self->viewer.state = 1;
        self->viewer.authState = 2;
        v44 = 3;
        goto LABEL_183;
      }

LABEL_182:
      v44 = 4;
LABEL_183:
      self->state = v44;
      return;
    }

    if (sub_1000423E0())
    {
      v20 = sub_100042E68();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v113 = "[VNCServer consumeMessage]";
        v114 = 1024;
        v115 = 453;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer version not available yet", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 453, "[VNCServer consumeMessage]", 7, 0, "viewer version not available yet");
    return;
  }

  if (state == 4)
  {
    if (sub_1000423E0())
    {
      v21 = sub_100042E68();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v113 = "[VNCServer consumeMessage]";
        v114 = 1024;
        v115 = 481;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] security result", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 481, "[VNCServer consumeMessage]", 7, 0, "security result");
    sub_100039EA8(self->viewer.ndata, 1u, &self->viewer.viewerInitializationFlags);
    self->viewer.viewerWantsExtendedServerInfo = 0;
    if (self->viewer.enhancedViewer && self->viewer.viewerInitializationFlags < 0)
    {
      self->viewer.viewerWantsExtendedServerInfo = 1;
    }

    if (sub_1000423E0())
    {
      v22 = sub_100042E68();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        viewerInitializationFlags = self->viewer.viewerInitializationFlags;
        *buf = 136315650;
        v113 = "HandleViewerInitialization";
        v114 = 1024;
        v115 = 1114;
        v116 = 1024;
        *v117 = viewerInitializationFlags;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewerInitializationFlags 0x%x", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1114, "HandleViewerInitialization", 7, 0, "viewerInitializationFlags 0x%x", self->viewer.viewerInitializationFlags);
    HIDWORD(xmmword_100070B00) = 0;
    *(&xmmword_100070B00 + 5) = 0;
    BYTE4(xmmword_100070B00) = 80;
    LODWORD(xmmword_100070B00) = -1073553232;
    v24 = [qword_100070AA0 machineName];
    v25 = [v24 UTF8String];

    v26 = strlen(v25);
    if (sub_1000423E0())
    {
      v27 = sub_100042E68();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v113 = "SendServerInitialiation";
        v114 = 1024;
        v115 = 1159;
        v116 = 1024;
        *v117 = v26;
        *&v117[4] = 2080;
        *&v117[6] = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] machineNameLen %d  machine name %s", buf, 0x22u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1159, "SendServerInitialiation", 7, 0, "machineNameLen %d  machine name %s", v26, v25);
    if (self->viewer.viewerWantsExtendedServerInfo)
    {
      v28 = malloc_type_calloc(1uLL, v26 + 46, 0xB4FDD7C6uLL);
      if (v28)
      {
        v29 = v28;
        v30 = v26 + 22;
        *(v28 + 12) = 0;
        v31 = self->viewer.observeFlag != 0;
        *(v28 + 26) = v31;
        if (self->viewer.absControlFlag)
        {
          v31 |= 2u;
          *(v28 + 26) = v31;
        }

        *(v28 + 30) = xmmword_100070B00;
        v28[31] |= 8u;
        memcpy(v28 + 46, v25, v26);
        v29[5] = bswap32(v30);
        *(v29 + 26) = bswap32(v31);
        v106 = v26 + 46;
        goto LABEL_122;
      }
    }

    else
    {
      v49 = malloc_type_calloc(1uLL, v26 + 24, 0x557101CDuLL);
      if (v49)
      {
        v29 = v49;
        memcpy(v49 + 24, v25, v26);
        v29[5] = bswap32(v26);
        if (sub_1000423E0())
        {
          v50 = sub_100042E68();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v113 = "SendServerInitialiation";
            v114 = 1024;
            v115 = 1205;
            v116 = 1024;
            *v117 = v26;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%s:%d] normal server init length = %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1205, "SendServerInitialiation", 7, 0, "normal server init length = %d", v26);
        v106 = v26 + 24;
        v30 = v26;
LABEL_122:
        v51 = +[UIScreen mainScreen];
        [v51 nativeBounds];
        v53 = v52;

        v54 = v53 >> 1;
        v55 = +[UIScreen mainScreen];
        [v55 nativeBounds];
        v57 = v56;

        v58 = v57 >> 1;
        if (sub_1000423E0())
        {
          v59 = sub_100042E68();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v113 = "SendServerInitialiation";
            v114 = 1024;
            v115 = 1222;
            v116 = 1024;
            *v117 = v53 >> 1;
            *&v117[4] = 1024;
            *&v117[6] = v57 >> 1;
            *&v117[10] = 2048;
            *&v117[12] = 0x3FF0000000000000;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[%s:%d] at init pixel width %u pixel height %u  scale factor %f", buf, 0x28u);
          }
        }

        v60 = v30;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1222, "SendServerInitialiation", 7, 0, "at init pixel width %u pixel height %u  scale factor %f", v53 >> 1, v57 >> 1, 1.0);
        v61 = (v53 >> 1);
        v62 = (v57 >> 1);
        if (sub_1000423E0())
        {
          v63 = sub_100042E68();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v113 = "SendServerInitialiation";
            v114 = 1024;
            v115 = 1224;
            v116 = 1024;
            *v117 = v61;
            *&v117[4] = 1024;
            *&v117[6] = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] width = %d  height = %d", buf, 0x1Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1224, "SendServerInitialiation", 7, 0, "width = %d  height = %d", v61, v62);
        self->viewer.lastWidth = v54;
        self->viewer.lastHeight = v58;
        *&self->viewer.lastGlobalOriginX = 0;
        *v29 = bswap32(v54) >> 16;
        *(v29 + 1) = bswap32(v58) >> 16;
        if (sub_1000423E0())
        {
          v64 = sub_100042E68();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v113 = "SendServerInitialiation";
            v114 = 1024;
            v115 = 1238;
            v116 = 1024;
            *v117 = v106;
            *&v117[4] = 1024;
            *&v117[6] = v60;
            *&v117[10] = 1024;
            *&v117[12] = v26;
            *&v117[16] = 2048;
            *&v117[18] = 46;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[%s:%d] server init size %d extralen %d machineNamelen %d RFBServerInfo2 %lu", buf, 0x2Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1238, "SendServerInitialiation", 7, 0, "server init size %d extralen %d machineNamelen %d RFBServerInfo2 %lu", v106, v60, v26, 46);
        v65 = sub_10002DA9C(&self->viewer, v29, v106);
        free(v29);
        if (sub_1000423E0())
        {
          v66 = sub_100042E68();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            translatedPixelSize = self->viewer.translatedPixelSize;
            trans_func = self->viewer.trans_func;
            *buf = 136315906;
            v113 = "SendServerInitialiation";
            v114 = 1024;
            v115 = 1242;
            v116 = 1024;
            *v117 = translatedPixelSize;
            *&v117[4] = 2048;
            *&v117[6] = trans_func;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer->translatedPixelSize %d  viewer->trans_func %p", buf, 0x22u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1242, "SendServerInitialiation", 7, 0, "viewer->translatedPixelSize %d  viewer->trans_func %p", self->viewer.translatedPixelSize, self->viewer.trans_func);
        self->viewer.lastDepth = 32;
        if (!v65)
        {
          self->viewer.state = 4;
LABEL_146:
          if (sub_1000423E0())
          {
            v70 = sub_100042E68();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = self->viewer.state;
              *buf = 136315650;
              v113 = "HandleViewerInitialization";
              v114 = 1024;
              v115 = 1124;
              v116 = 1024;
              *v117 = v71;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[%s:%d] sent server initialization viewer state %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1124, "HandleViewerInitialization", 7, 0, "sent server initialization viewer state %d", self->viewer.state);
          v44 = 6;
          goto LABEL_183;
        }

LABEL_141:
        if (sub_1000423E0())
        {
          v69 = sub_100042E68();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v113 = "HandleViewerInitialization";
            v114 = 1024;
            v115 = 1122;
            v116 = 1024;
            *v117 = v65;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "[%s:%d] error in initialization %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1122, "HandleViewerInitialization", 3, 0, "error in initialization %d", v65);
        goto LABEL_146;
      }
    }

    v65 = -2;
    goto LABEL_141;
  }

  if (state != 6)
  {
LABEL_42:
    if (sub_1000423E0())
    {
      v16 = sub_100042E68();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = self->state;
        *buf = 136315650;
        v113 = "[VNCServer consumeMessage]";
        v114 = 1024;
        v115 = 507;
        v116 = 1024;
        *v117 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%s:%d] unknown state: %d ", buf, 0x18u);
      }
    }

    v18 = self->state;
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 507, "[VNCServer consumeMessage]", 3, 0, "unknown state: %d ");
    return;
  }

  sub_1000361DC(&self->viewer, self);
  if (self->viewer.updateDisplayInfoFlag)
  {
    self->viewer.updateDisplayInfoFlag = 0;
    if (sub_1000423E0())
    {
      v15 = sub_100042E68();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v113 = "CheckToSendDisplayInfo";
        v114 = 1024;
        v115 = 379;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] updateDisplayInfoFlag set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 379, "CheckToSendDisplayInfo", 7, 0, "updateDisplayInfoFlag set");
    if (self->viewer.sendDisplayInfoFlag)
    {
      sub_100030E90(&self->viewer);
    }

    else if (self->viewer.sendDesktopSizeFlag)
    {
      if (sub_1000423E0())
      {
        v72 = sub_100042E68();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v113 = "CheckToSendDisplayInfo";
          v114 = 1024;
          v115 = 388;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%s:%d] EncodeDesktopSize", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 388, "CheckToSendDisplayInfo", 7, 0, "EncodeDesktopSize");
    }
  }

  if (self->viewer.sendResolutionChange)
  {
    if (sub_1000423E0())
    {
      v73 = sub_100042E68();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        screenScaleFactor = self->viewer.screenScaleFactor;
        *buf = 136315650;
        v113 = "[VNCServer consumeMessage]";
        v114 = 1024;
        v115 = 494;
        v116 = 2048;
        *v117 = screenScaleFactor;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[%s:%d] send resolution changed  scale factor %f", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 494, "[VNCServer consumeMessage]", 7, 0, "send resolution changed  scale factor %f", self->viewer.screenScaleFactor);
    sub_100030E90(&self->viewer);
    self->viewer.sendResolutionChange = 0;
  }

  if (self->viewer.viewerFrameUpdateRequest == 2)
  {
    if (sub_1000423E0())
    {
      v75 = sub_100042E68();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v113 = "[VNCServer consumeMessage]";
        v114 = 1024;
        v115 = 500;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%s:%d] got frame update request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 500, "[VNCServer consumeMessage]", 7, 0, "got frame update request");
    self->viewer.viewerFrameUpdateRequest = 0;
  }
}

- (void)notificationHandler:(id)a3
{
  v4 = [a3 name];
  v5 = [v4 isEqualToString:@"TouchEventUpdate"];

  if (v5)
  {

    [(VNCServer *)self handleTouchEventUpdate];
  }
}

- (void)handleTouchEventUpdate
{
  if (sub_100040464())
  {
    if (sub_1000423E0())
    {
      v3 = sub_100042E68();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[VNCServer handleTouchEventUpdate]";
        v23 = 1024;
        v24 = 534;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen sharing is paused", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 534, "[VNCServer handleTouchEventUpdate]", 7, 0, "screen sharing is paused");
LABEL_13:
    +[TouchEventMonitor removeAllTouchPositions];
    v5 = 0;
    goto LABEL_14;
  }

  if ([(VNCServer *)self screenLocked])
  {
    if (sub_1000423E0())
    {
      v4 = sub_100042E68();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[VNCServer handleTouchEventUpdate]";
        v23 = 1024;
        v24 = 541;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is locked", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 541, "[VNCServer handleTouchEventUpdate]", 7, 0, "screen is locked");
    goto LABEL_13;
  }

  v5 = +[TouchEventMonitor copyCurrentTouchPositions];
  if (v5)
  {
    v6 = malloc_type_calloc(1uLL, 0x206uLL, 0x108004043D1B9D8uLL);
    v7 = 0;
    v8 = 0;
    *(v6 + 8) = 256;
    *(v6 + 18) = 0;
    *(v6 + 26) = 1375993856;
    *(v6 + 3) = 32;
    *(v6 + 16) = 256;
    v9 = v6 + 38;
    v10 = v6 + 38;
    do
    {
      v11 = &v5[v7];
      if (v5[v7].var3)
      {
        *v10 = bswap64(*v11);
        v10[1] = bswap64(v11[1]);
        v10[2] = bswap64(v11[2]);
        v10 += 3;
        ++v8;
      }

      ++v7;
    }

    while ((v7 * 32) != 640);
    if (sub_1000423E0())
    {
      v12 = sub_100042E68();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = "[VNCServer handleTouchEventUpdate]";
        v23 = 1024;
        v24 = 581;
        v25 = 1024;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] touchcount %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 581, "[VNCServer handleTouchEventUpdate]", 7, 0, "touchcount %d", v8);
    *(v6 + 18) = v8 << 8;
    v13 = 24 * v8;
    *(v6 + 15) = __rev16(v13 | 6);
    v14 = (v13 + 24);
    *(v6 + 2) = v14;
    if (self->_lastTouchInfoSize == v14 && !bcmp(self->_lastTouchInfo, v9, v14))
    {
      if (sub_1000423E0())
      {
        v19 = sub_100042E68();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v22 = "[VNCServer handleTouchEventUpdate]";
          v23 = 1024;
          v24 = 592;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] touch data is the same - ignore", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 592, "[VNCServer handleTouchEventUpdate]", 7, 0, "touch data is the same - ignore");
      if (sub_1000423E0())
      {
        v20 = sub_100042E68();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v22 = "[VNCServer handleTouchEventUpdate]";
          v23 = 1024;
          v24 = 648;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] duplicate", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 648, "[VNCServer handleTouchEventUpdate]", 7, 0, "duplicate");
LABEL_40:
      free(v6);
    }

    else
    {
      free(self->_lastTouchInfo);
      self->_lastTouchInfoSize = v13;
      v15 = malloc_type_malloc(v13, 0x29AF84BFuLL);
      self->_lastTouchInfo = v15;
      memcpy(v15, v9, self->_lastTouchInfoSize);
      sendInfo = self->viewer.sendInfo;
      [0 lock];
      [*(sendInfo + 4) lock];
      v17 = sendInfo + 8;
      while (1)
      {
        v17 = *v17;
        if (!v17)
        {
          break;
        }

        if ((*(v17 + 6) & 0x20) != 0)
        {
          memcpy(v17 + 14, v6 + 14, *(v6 + 2));
          v18 = *(v6 + 2);
          *(sendInfo + 399) = *(sendInfo + 399) - *(v17 + 2) + v18;
          *(v17 + 2) = v18;
          [*(sendInfo + 4) unlock];
          [0 unlock];
          goto LABEL_40;
        }
      }

      [*(sendInfo + 4) unlock];
      [0 unlock];
      sub_10002E738(&self->viewer, v6);
    }
  }

LABEL_14:
  free(v5);
}

@end